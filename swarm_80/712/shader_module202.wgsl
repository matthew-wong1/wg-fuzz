struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(false));

var<private> global2: array<vec3<bool>, 23>;

var<private> global3: vec2<f32>;

var<private> global4: f32 = 841f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: vec4<i32>) -> vec4<bool> {
    let var_0 = global3.x;
    var var_1 = u_input.d;
    global0 = array<Struct_1, 15>();
    let var_2 = !(~_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), countOneBits(1u)) >= abs(u_input.d));
    var var_3 = ~firstTrailingBit(u_input.a.x);
    return select(!(!select(vec4<bool>(var_2, true, var_2, true), select(vec4<bool>(var_2, false, var_2, var_2), vec4<bool>(var_2, var_2, var_2, true), var_2), vec4<bool>(true, true, true, true))), !(!(!vec4<bool>(false, var_2, var_2, true))), true);
}

fn func_3() -> vec3<bool> {
    let var_0 = vec2<bool>(true, false);
    let var_1 = -2147483647i;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(round(global3.x))))))), 1580f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.x)))));
    let var_3 = Struct_2(!(!(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, false)))), Struct_1(vec2<bool>(var_0.x, var_0.x), abs(firstTrailingBit(max(vec3<i32>(3569i, 1i, -1i), vec3<i32>(u_input.c, -15818i, -45171i)))), select(select(func_1(vec4<i32>(6393i, var_1, 15679i, -23518i)), select(vec4<bool>(false, true, true, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, false, true, false)), true), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), select(var_0.x & var_0.x, var_0.x, true))), ~(~vec3<u32>(countOneBits(u_input.d), ~4294967295u, 4294967295u)));
    var var_4 = true;
    return var_3.a.yww;
}

fn func_2() -> StorageBuffer {
    var var_0 = select(func_3(), select(!(!func_3()), func_1(reverseBits(vec4<i32>(u_input.c, u_input.b, 59186i, -13686i))).wxz, !vec3<bool>(true, func_1(vec4<i32>(u_input.b, 1i, -1i, u_input.c)).x, true)), true);
    var var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(abs(vec4<i32>(0i, u_input.b, 2147483647i, u_input.b))), _wgslsmith_mult_vec4_i32(select(vec4<i32>(89573i, u_input.b, -14315i, 0i), vec4<i32>(u_input.c, 0i, u_input.b, u_input.b), var_0.x), firstLeadingBit(vec4<i32>(0i, 1i, 0i, 17183i)))), 2147483647i, _wgslsmith_sub_i32(u_input.b, _wgslsmith_mod_i32(u_input.b, firstLeadingBit(-9095i)))) & ~min(vec3<i32>(~u_input.b, 1i, u_input.b), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(u_input.c, 31994i, -87255i)), min(vec3<i32>(2147483647i, u_input.b, -26164i), vec3<i32>(u_input.c, 26705i, 2147483647i))));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.x)) + _wgslsmith_f_op_f32(-global3.x)))), 105f), -404f, true));
    let var_3 = !var_0.zy;
    let var_4 = 33555u;
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1875f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, 732f)) - vec2<f32>(global3.x, -886f)) - vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, global3.x) - vec2<f32>(789f, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-188f, 341f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-406f, 485f)))))), global3.x, ~reverseBits(vec2<u32>(var_4 << (1u % 32u), _wgslsmith_sub_u32(71829u, u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 9>();
    global2 = array<vec3<bool>, 23>();
    var var_0 = abs(-vec3<i32>(-52362i, u_input.b, -1i));
    var var_1 = Struct_2(!select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), func_1(vec4<i32>(38i, u_input.c, -31332i, -1i) >> (vec4<u32>(85156u, u_input.d, u_input.a.x, 0u) % vec4<u32>(32u)))), Struct_1(vec2<bool>(!(u_input.a.x < 11272u), all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))), _wgslsmith_div_vec3_i32(max(vec3<i32>(629i, u_input.b, -1i), vec3<i32>(u_input.b, var_0.x, 33574i)) & -vec3<i32>(-21316i, -1589i, -1i), abs(vec3<i32>(1i, -2147483647i, var_0.x))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true))), u_input.a ^ ~vec3<u32>(min(33565u, u_input.d), _wgslsmith_clamp_u32(u_input.a.x, 52667u, 60920u), countOneBits(u_input.a.x)));
    global2 = array<vec3<bool>, 23>();
    let x = u_input.a;
    s_output = func_2();
}

