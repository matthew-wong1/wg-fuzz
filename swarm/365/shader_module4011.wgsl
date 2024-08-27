struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false));

var<private> global1: vec3<f32>;

var<private> global2: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 6367u), vec2<u32>(94588u, 16552u), vec2<u32>(0u, 0u), vec2<u32>(106958u, 42202u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(32288u, 22141u), vec2<u32>(1u, 1u));

var<private> global3: vec3<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))))));
    global2 = array<vec2<u32>, 9>();
    var var_1 = Struct_4(Struct_1(1i, u_input.a.x, (reverseBits(u_input.a.x) ^ abs(1u)) > countOneBits(u_input.d.x), select(select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), vec2<bool>(true, arg_1)), select(vec2<bool>(false, arg_1), vec2<bool>(false, false), true), true), !(!vec2<bool>(arg_1, arg_1)), vec2<bool>(-423f > global1.x, !arg_1))), true);
    let var_2 = vec2<u32>(u_input.d.x, u_input.a.x);
    var var_3 = Struct_4(Struct_1(-1i << (_wgslsmith_add_u32(45141u, max(59759u, var_1.a.b)) % 32u), abs(40306u), all(select(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], arg_1)) & (-2147483647i >= u_input.b.x), !var_1.a.d), true);
    return _wgslsmith_f_op_f32(f32(-1f) * -1014f);
}

fn func_2() -> Struct_1 {
    let var_0 = 0i;
    var var_1 = vec3<bool>(true, true, true);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global1.x, 347f, 183f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(245f, global1.x, global1.x, 1012f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(473f, global1.x, global1.x, -1902f)))), select(vec4<bool>(var_1.x, var_1.x, true, false), select(global0[_wgslsmith_index_u32(u_input.d.x, 15u)], global0[_wgslsmith_index_u32(u_input.d.x, 15u)], global0[_wgslsmith_index_u32(92319u, 15u)]), vec4<bool>(true, false, false, true)))), vec4<f32>(global1.x, global3.x, 1000f, _wgslsmith_f_op_f32(-global1.x)))), vec4<f32>(_wgslsmith_f_op_f32(global1.x - global3.x), -204f, -1000f, -207f));
    let var_3 = Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, u_input.c.x, u_input.b.x), ~u_input.c.xyz) ^ reverseBits(firstLeadingBit(~vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-435f * -1267f), global1.x)), ~u_input.a.x != (u_input.a.x >> (u_input.a.x % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(785f, _wgslsmith_f_op_f32(-var_2.x)))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x * 1481f), _wgslsmith_f_op_f32(var_2.x * 917f)))))));
    return Struct_1(8909i, u_input.a.x, false, vec2<bool>(var_1.x, true));
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: u32) -> Struct_4 {
    global2 = array<vec2<u32>, 9>();
    let var_0 = func_2();
    let var_1 = abs(select(vec4<u32>(~arg_3, var_0.b & ~18083u, func_2().b, _wgslsmith_mod_u32(arg_2.b, u_input.d.x) ^ arg_2.b), ~_wgslsmith_mult_vec4_u32(vec4<u32>(7190u, 61326u, u_input.d.x, var_0.b), abs(vec4<u32>(var_0.b, 74636u, arg_2.b, var_0.b))), false));
    global1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.x, global3.x, global1.x))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1755f, 1175f, global1.x))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -316f, global1.x) - vec3<f32>(global3.x, 765f, global1.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2308f, global3.x, global3.x)))))));
    let var_2 = ~vec3<i32>(var_0.a, _wgslsmith_sub_i32(-21415i, abs(_wgslsmith_mult_i32(1i, u_input.c.x))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.b, ~u_input.c.wx), arg_2.a));
    return Struct_4(func_2(), !(!all(global0[_wgslsmith_index_u32(min(arg_1.x, arg_1.x), 15u)])));
}

fn func_1() -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 15u)];
    let var_1 = global3.x;
    let var_2 = 37757i;
    global2 = array<vec2<u32>, 9>();
    let var_3 = func_4(false || !any(vec3<bool>(false, true, var_0.x)), ~vec2<u32>(u_input.a.x, select(1u, u_input.d.x, var_0.x)) | ~u_input.a, func_2(), ~u_input.a.x);
    return Struct_3(_wgslsmith_sub_i32(firstTrailingBit(~abs(u_input.b.x)), u_input.c.x | u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(16258u >> (u_input.a.x % 32u), firstTrailingBit(u_input.d.x), ~113550u, u_input.a.x), firstLeadingBit(max(vec4<u32>(u_input.a.x, u_input.d.x, 48327u, 54908u), vec4<u32>(u_input.a.x, u_input.a.x, 8055u, u_input.d.x)))));
    let var_2 = Struct_3(var_0.a);
    global3 = vec3<f32>(-811f, global3.x, global3.x);
    let var_3 = _wgslsmith_sub_u32(max(u_input.d.x, 4294967295u), countOneBits(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(5672u, 4294967295u, u_input.a.x, 45932u), vec4<u32>(var_1.x, 124662u, u_input.d.x, u_input.a.x)))));
    global0 = array<vec4<bool>, 15>();
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1f + global3.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-1344f)), _wgslsmith_f_op_f32(-global3.x)))), global3.x, ~countOneBits(u_input.c.yww ^ (u_input.c.zzz >> (var_4.yxz % vec3<u32>(32u)))));
}

