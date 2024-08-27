struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: array<vec2<u32>, 23>;

var<private> global2: u32 = 14772u;

var<private> global3: array<Struct_2, 26>;

var<private> global4: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec4<i32>(-23656i, -43605i, -5436i, 0i)), Struct_2(vec4<i32>(0i, 1i, i32(-2147483648), 54444i)), Struct_2(vec4<i32>(56258i, 4668i, 2147483647i, 16868i)), Struct_2(vec4<i32>(43181i, -1i, 70796i, -1i)), Struct_2(vec4<i32>(2147483647i, 0i, 1i, -10776i)), Struct_2(vec4<i32>(-13399i, 1i, -1i, 37199i)), Struct_2(vec4<i32>(48056i, 24940i, i32(-2147483648), 1i)), Struct_2(vec4<i32>(i32(-2147483648), -1i, -3010i, 2147483647i)), Struct_2(vec4<i32>(75867i, i32(-2147483648), -38244i, -50556i)), Struct_2(vec4<i32>(i32(-2147483648), 1i, 2147483647i, -13779i)), Struct_2(vec4<i32>(-3276i, 1i, 29208i, -1i)), Struct_2(vec4<i32>(-13814i, 8421i, 4674i, 50285i)), Struct_2(vec4<i32>(-4735i, 79117i, -14455i, 2147483647i)), Struct_2(vec4<i32>(2147483647i, 1i, -45256i, 6500i)), Struct_2(vec4<i32>(-43276i, -5965i, -33294i, i32(-2147483648))), Struct_2(vec4<i32>(14969i, i32(-2147483648), 2147483647i, 32497i)), Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, -22267i, -62683i)), Struct_2(vec4<i32>(1i, -50244i, -1i, 2147483647i)), Struct_2(vec4<i32>(i32(-2147483648), 39562i, 2147483647i, 1i)), Struct_2(vec4<i32>(23282i, -48792i, 0i, -83314i)), Struct_2(vec4<i32>(-1044i, i32(-2147483648), 0i, 29706i)), Struct_2(vec4<i32>(57i, -1i, -1i, -14222i)), Struct_2(vec4<i32>(-1i, 3272i, i32(-2147483648), 24819i)), Struct_2(vec4<i32>(0i, 2147483647i, -20677i, -2371i)));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    return 25885u;
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = ~(-(~vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.b.x))) ^ -vec4<i32>(abs(~62411i), ~u_input.b.x, 0i, u_input.b.x);
    global2 = 1u;
    var var_1 = !(!(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))));
    global4 = array<Struct_2, 24>();
    global0 = array<u32, 13>();
    return ~func_3();
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_4 {
    global4 = array<Struct_2, 24>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(292f))) * 1682f)) - _wgslsmith_f_op_f32(-1383f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1717f)))));
    let var_1 = _wgslsmith_mult_u32(63085u, (u_input.c.x | ~arg_1.x) << (select(u_input.a, func_2(-642f), true) % 32u));
    let var_2 = Struct_5(Struct_2(vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-31312i, -1i, 1i), arg_0.a.zzy), 1i, u_input.b.x)), Struct_2(_wgslsmith_mod_vec4_i32(countOneBits(arg_0.a >> (u_input.c % vec4<u32>(32u))), vec4<i32>(~u_input.b.x, 9816i >> (arg_1.x % 32u), -60715i, _wgslsmith_sub_i32(arg_0.a.x, u_input.b.x)))), vec2<u32>(11173u, _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(arg_1.x, 13u)], 58656u), ~22108u), 1u)));
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.yzz, countOneBits(~min(vec3<u32>(global0[_wgslsmith_index_u32(var_1, 13u)], 1u, 14173u), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, arg_1.x), vec3<u32>(245u, 4294967295u, 0u))))), 24u)];
    return Struct_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(2163f, var_0, -927f, 282f) * vec4<f32>(-1000f, -357f, var_0, var_0)))))))), Struct_3(Struct_2(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_3.a.x, -8131i, 13935i), arg_0.a))), u_input.b.x));
}

fn func_4(arg_0: Struct_4) -> vec3<bool> {
    global2 = 4294967295u;
    var var_0 = vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.yx) | abs(-335i)), _wgslsmith_dot_vec2_i32(arg_0.b.a.a.yy, arg_0.b.a.a.yx), 37834i, -(-(~5831i) | ~arg_0.b.a.a.x));
    var_0 = arg_0.b.a.a;
    var var_1 = vec2<bool>(any(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)), !(arg_0.a.x < _wgslsmith_f_op_f32(f32(-1f) * -1317f)));
    let var_2 = arg_0.b;
    return select(select(select(vec3<bool>(true, arg_0.a.x >= arg_0.a.x, true), vec3<bool>(false || var_1.x, false & var_1.x, var_1.x && true), vec3<bool>(var_1.x, true, var_1.x)), !select(select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(false, var_1.x, false), true), select(vec3<bool>(false, var_1.x, false), vec3<bool>(true, var_1.x, false), var_1.x), select(vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, var_1.x, true), false)), var_1.x), select(select(!(!vec3<bool>(false, var_1.x, var_1.x)), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, false, var_1.x), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(false, true, var_1.x), vec3<bool>(true, false, var_1.x))), select(vec3<bool>(true, true, true), !vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, var_1.x, var_1.x), var_1.x))), select(vec3<bool>(u_input.a <= 65636u, var_1.x, any(vec3<bool>(var_1.x, var_1.x, var_1.x))), select(vec3<bool>(true, false, var_1.x), !vec3<bool>(false, var_1.x, false), select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, true, false), var_1.x)), all(vec2<bool>(true, true))), true), !((true | var_1.x) || false) & (arg_0.a.x <= arg_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec3<bool>(true, false, any(vec2<bool>(true, true))), !func_4(func_1(Struct_2(vec4<i32>(0i, -1i, u_input.b.x, u_input.b.x)), firstTrailingBit(vec2<u32>(44590u, 4294967295u)))), !(!all(vec2<bool>(false, true))) || true);
    var var_1 = Struct_1(!var_0.x | !any(var_0.zy), vec2<u32>(0u, max(~u_input.a, ~u_input.c.x)) & ~vec2<u32>(~0u, 1u), !(!vec3<bool>(true, var_0.x, any(var_0.yy))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1809f, _wgslsmith_f_op_f32(f32(-1f) * -898f)), _wgslsmith_f_op_f32(-func_1(Struct_2(vec4<i32>(-2147483647i, -1343i, u_input.b.x, u_input.b.x)), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], u_input.a)).a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1888f + -1597f))), 555f)));
    let var_2 = func_1(Struct_2(abs(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 71431i), vec4<i32>(-1i, u_input.b.x, u_input.b.x, u_input.b.x)))), ~_wgslsmith_mult_vec2_u32(select(~global1[_wgslsmith_index_u32(1u, 23u)], ~u_input.c.yz, vec2<bool>(var_0.x, var_0.x)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u), reverseBits(vec2<u32>(48304u, 1u)))));
    global1 = array<vec2<u32>, 23>();
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-439f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1371f)), _wgslsmith_f_op_f32(exp2(var_2.a.x)), ~(_wgslsmith_dot_vec2_u32(var_1.b, vec2<u32>(4294967295u, var_1.b.x)) << ((global0[_wgslsmith_index_u32(0u, 13u)] >> (27395u % 32u)) % 32u)) >> (firstTrailingBit((global0[_wgslsmith_index_u32(var_1.b.x, 13u)] & 0u) ^ (global0[_wgslsmith_index_u32(var_1.b.x, 13u)] & var_1.b.x)) % 32u));
}

