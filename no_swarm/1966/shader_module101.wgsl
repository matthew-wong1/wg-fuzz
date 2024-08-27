struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: bool,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(264f, -277f, 427f, -1119f, 1165f, -1000f, -1543f, -915f, -596f, 1585f, 2085f, 1000f, 401f, -345f, 1163f, -1110f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>) -> u32 {
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * global0[_wgslsmith_index_u32(0u, 16u)]), -468f))) - arg_1.x) + -1000f);
    let var_1 = vec4<bool>(!arg_0.x, global0[_wgslsmith_index_u32(~88330u, 16u)] <= _wgslsmith_f_op_f32(arg_1.x + global0[_wgslsmith_index_u32(firstLeadingBit(~u_input.b.x), 16u)]), arg_0.x, arg_0.x);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1539f), global0[_wgslsmith_index_u32(~(~6141u), 16u)])));
    return 17626u;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1430f, -1000f, global0[_wgslsmith_index_u32(u_input.b.x, 16u)]))), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)])))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1116f, global0[_wgslsmith_index_u32(66363u, 16u)], 456f) - vec3<f32>(1524f, 110f, global0[_wgslsmith_index_u32(u_input.b.x, 16u)]))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(func_3(vec4<bool>(false, true, false, true), vec2<f32>(global0[_wgslsmith_index_u32(20823u, 16u)], -341f)), 16u)], _wgslsmith_f_op_f32(min(803f, -1000f)), global0[_wgslsmith_index_u32(5328u, 16u)])))));
    return 0u;
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<u32>) -> u32 {
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(~(~arg_2.x), 16u)], Struct_1(_wgslsmith_mod_vec4_i32(firstLeadingBit(abs(u_input.c)), arg_1)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(arg_2, vec3<u32>(1u, 0u, 13877u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, arg_0, 1u), u_input.b.ywy)), 16u)], 943f))), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true)), vec4<bool>(true, true, true, true))));
    global0 = array<f32, 16>();
    let var_1 = !(!vec4<bool>(all(vec4<bool>(true, false, false, true)) && (u_input.c.x >= arg_1.x), all(!vec3<bool>(var_0.d, true, false)), false, true));
    let var_2 = _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-1i) * -max(firstTrailingBit(var_0.b.a), vec4<i32>(var_0.b.a.x, 0i, 2147483647i, -62637i)));
    var_0 = Struct_4(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 16u)] * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 54839u) >> (vec4<u32>(arg_2.x, 4739u, 0u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(1u, arg_2.x, 0u, u_input.b.x)), reverseBits(abs(vec4<u32>(10509u, 1u, 21943u, 4294967295u)))), 16u)]), var_0.b, var_0.c, !var_1.x);
    return arg_2.x;
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(func_4(func_2(max(max(u_input.a, u_input.a), max(~u_input.a, ~u_input.a)), Struct_1(select(vec4<i32>(0i, -15819i, u_input.c.x, arg_0), vec4<i32>(arg_0, arg_0, -37543i, u_input.c.x), -2147483647i >= arg_0))), _wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(-u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -2147483647i), vec2<i32>(-1i, 1i)) & max(arg_0, -1i), select(2147483647i, -30026i, false) | arg_0, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.c, u_input.c, u_input.c), -u_input.c))), vec3<u32>(~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.b.x, 38459u)) & select(u_input.b.x, select(u_input.d, u_input.a.x, true), true), 4294967295u, ~u_input.d)), 16u)];
    var var_1 = u_input.c.x;
    var_1 = _wgslsmith_div_i32(1i, 6966i << (u_input.a.x % 32u));
    var var_2 = Struct_3(all(vec2<bool>(true, true)) || !all(vec2<bool>(true, true)), all(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), true, u_input.c, Struct_2(~(~vec2<u32>(u_input.a.x, 1u)), Struct_1(u_input.c)));
    var var_3 = 146f;
    return Struct_3(true, var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-449f * global0[_wgslsmith_index_u32(var_2.e.a.x, 16u)]) - -1019f)) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.e.a.x, 16u)]) - -1000f))), vec4<i32>(~max(var_2.e.b.a.x, -var_2.e.b.a.x), u_input.c.x, ~29615i, -71344i), var_2.e);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    let var_0 = Struct_4(-1000f, arg_2.e.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 16u)])), global0[_wgslsmith_index_u32(u_input.d, 16u)])))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(~arg_2.e.a.x), 10492u), 16u)] < 936f);
    global0 = array<f32, 16>();
    let var_1 = arg_1;
    global0 = array<f32, 16>();
    let var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1752f * -1038f))))) + _wgslsmith_f_op_f32(ceil(452f))), arg_1.e.b, vec2<f32>(476f, 1020f), var_1.a);
    return Struct_1(vec4<i32>(-1i) * -var_0.b.a);
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> Struct_3 {
    let var_0 = vec2<i32>(-u_input.c.x, ~(-1i));
    let var_1 = select(vec4<bool>(any(vec2<bool>(true, true)), 9037u >= arg_1, false, true), vec4<bool>(global0[_wgslsmith_index_u32(38524u, 16u)] != _wgslsmith_f_op_f32(1096f + -1506f), func_1(7949i).b, false, !(!all(vec2<bool>(false, true)))), vec4<bool>(true, select(any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), false, select(false, false, false) | true), true, true));
    global0 = array<f32, 16>();
    var var_2 = -_wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(arg_0.b.a.yz, var_0) & -_wgslsmith_add_vec2_i32(u_input.c.xz, var_0), vec2<i32>(firstTrailingBit(~var_0.x), 1i));
    var var_3 = ~_wgslsmith_div_u32(select(func_2(vec3<u32>(0u, arg_2, u_input.d), arg_0.b), arg_0.a.x, true), 1u) >> (abs(arg_0.a.x << (~(~51576u) % 32u)) % 32u);
    return Struct_3(_wgslsmith_mod_i32(-var_0.x, -4783i) > _wgslsmith_mod_i32(-1i, firstTrailingBit(arg_0.b.a.x)), true, var_1.x, vec4<i32>(1i, select(_wgslsmith_dot_vec2_i32(arg_0.b.a.zx, abs(vec2<i32>(-21317i, u_input.c.x))), _wgslsmith_add_i32(firstLeadingBit(u_input.c.x), arg_0.b.a.x), (arg_0.b.a.x == var_0.x) == true), 31209i, func_5(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), Struct_3(true, true, true, u_input.c, Struct_2(arg_0.a, arg_0.b)), Struct_3(false & var_1.x, var_1.x || var_1.x, true, abs(vec4<i32>(var_2.x, var_2.x, var_0.x, -1i)), arg_0)).a.x), Struct_2(_wgslsmith_sub_vec2_u32(~arg_0.a, vec2<u32>(u_input.a.x, u_input.b.x)) >> (_wgslsmith_clamp_vec2_u32(func_1(var_0.x).e.a, _wgslsmith_mult_vec2_u32(vec2<u32>(0u, arg_1), u_input.b.wx), ~u_input.b.xw) % vec2<u32>(32u)), func_1(~(~var_2.x)).e.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_2(select(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(56353u, u_input.b.x)), ~u_input.a.yy, false), func_5(vec4<bool>(true, u_input.c.x >= u_input.c.x, true, u_input.a.x > 36411u), func_1(u_input.c.x), Struct_3(true, u_input.a.x >= 118359u, select(false, false, false), max(vec4<i32>(1i, 2147483647i, 2147483647i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, -42882i, u_input.c.x)), Struct_2(vec2<u32>(u_input.b.x, u_input.d), Struct_1(vec4<i32>(1i, -19786i, u_input.c.x, u_input.c.x)))))), ~u_input.a.x, min(4294967295u, 57990u));
    var var_1 = 42492u;
    var var_2 = var_0.e.a.x;
    global0 = array<f32, 16>();
    let var_3 = select(select(!(!select(vec3<bool>(true, var_0.c, var_0.b), vec3<bool>(var_0.a, false, var_0.c), false)), !select(!vec3<bool>(var_0.b, false, true), !vec3<bool>(var_0.b, true, var_0.a), select(vec3<bool>(var_0.c, var_0.c, false), vec3<bool>(true, false, var_0.c), vec3<bool>(false, var_0.c, false))), func_6(func_6(Struct_2(var_0.e.a, Struct_1(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, u_input.c.x))), var_0.e.a.x, var_0.e.a.x).e, 1u, 18674u).a | true), !vec3<bool>(func_6(var_0.e, 4294967295u, var_0.e.a.x).a && false, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_0.e.a.x, 16u)])) == global0[_wgslsmith_index_u32(16732u, 16u)], select(false, true, true | var_0.c)), vec3<bool>(any(!select(vec2<bool>(true, var_0.b), vec2<bool>(var_0.c, false), vec2<bool>(true, var_0.c))), var_0.b, any(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 16u)], 121f, _wgslsmith_f_op_f32(-1753f * global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), global0[_wgslsmith_index_u32(1u ^ var_0.e.a.x, 16u)]))), min(~var_0.e.a.x, u_input.d | ~_wgslsmith_mod_u32(u_input.d, 37014u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)])), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_0.e.a.x, 16u)], 937f, false)), global0[_wgslsmith_index_u32(u_input.a.x, 16u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 16u)]))) * vec4<f32>(1f, 1f, 1f, 1f)));
}

