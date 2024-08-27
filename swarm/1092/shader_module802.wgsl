struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = arg_2.b.a;
    var var_1 = 421f;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~reverseBits(~vec4<u32>(arg_1.a, 35206u, 4294967295u, arg_3.a))), ~_wgslsmith_div_vec4_u32(~(~vec4<u32>(11891u, 80709u, arg_3.a, 4294967295u)), ~select(vec4<u32>(5512u, arg_3.a, 4294967295u, arg_1.a), vec4<u32>(4294967295u, 1999u, arg_3.a, 51516u), global0[_wgslsmith_index_u32(0u, 26u)]))), 26u)];
    var_0 = _wgslsmith_div_u32(_wgslsmith_sub_u32(~arg_2.b.a, 0u) >> (_wgslsmith_mod_u32(u_input.d, arg_0.b.a) % 32u), ~arg_2.b.a | ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_1.a, arg_2.b.a, 0u, 0u)), ~vec4<u32>(arg_2.b.a, 2064u, arg_0.b.a, arg_3.a)));
    global0 = array<vec4<bool>, 26>();
    return _wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(~min(vec4<i32>(-1i, arg_2.b.e, -12210i, u_input.b.x), vec4<i32>(25871i, arg_3.c, -1i, u_input.b.x)), _wgslsmith_add_vec4_i32(-vec4<i32>(0i, arg_0.a, 8575i, 8331i), vec4<i32>(arg_1.c, u_input.b.x, 2147483647i, arg_0.a))), ~_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(14481i, arg_1.c, -56987i, arg_0.b.c), vec4<i32>(arg_3.c, -10562i, 23057i, 8995i)) | (vec4<i32>(arg_2.a, arg_3.c, -1i, arg_1.e) << (vec4<u32>(62482u, arg_3.a, arg_1.a, 1u) % vec4<u32>(32u))), abs(-vec4<i32>(2147483647i, arg_0.a, 0i, 34621i))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = any(vec3<bool>(!(!arg_0.b), true, all(vec2<bool>(all(vec3<bool>(arg_0.b, arg_0.d, arg_0.b)), true))));
    let var_1 = true;
    let var_2 = _wgslsmith_add_vec4_i32(-func_3(Struct_2(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), Struct_1(u_input.d, var_1, 30590i, false, u_input.b.x)), arg_0, Struct_2(0i, arg_0), Struct_1(~24001u, var_0, ~arg_1, !var_1, arg_1)), _wgslsmith_sub_vec4_i32(-(func_3(Struct_2(u_input.b.x, arg_0), arg_0, Struct_2(1i, arg_0), Struct_1(32551u, true, -1i, true, arg_1)) | _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.b.x, arg_1, u_input.b.x), vec4<i32>(0i, arg_0.c, arg_1, -43528i))), countOneBits(vec4<i32>(i32(-1i) * -6571i, i32(-1i) * -1i, 0i, 1i))));
    var var_3 = -_wgslsmith_mod_vec4_i32(-vec4<i32>(1520i, countOneBits(12942i), -arg_1, arg_1), ~vec4<i32>(arg_1, var_2.x | -71757i, select(0i, -550i, false), arg_1));
    let var_4 = Struct_2(countOneBits(-(~var_2.x) ^ 1i), arg_0);
    return var_4;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> StorageBuffer {
    global0 = array<vec4<bool>, 26>();
    global0 = array<vec4<bool>, 26>();
    global0 = array<vec4<bool>, 26>();
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(206f * -224f) + _wgslsmith_f_op_f32(-196f + -534f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1438f, 1000f))))));
    return StorageBuffer(2147483647i);
}

fn func_1() -> StorageBuffer {
    global0 = array<vec4<bool>, 26>();
    global0 = array<vec4<bool>, 26>();
    let var_0 = false && !any(vec3<bool>(true, true, true));
    let var_1 = ~u_input.b;
    global0 = array<vec4<bool>, 26>();
    return func_4(func_2(Struct_1(~(4294967295u << (u_input.c % 32u)), !var_0, -var_1.x, !(var_0 == var_0), -29138i), _wgslsmith_mult_i32(u_input.b.x, var_1.x), ~_wgslsmith_mod_vec3_u32(max(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(2768u, u_input.a, u_input.a)), vec3<u32>(u_input.d, u_input.d, 38800u) ^ vec3<u32>(4294967295u, 4294967295u, u_input.c))), vec4<u32>(4294967295u, ~u_input.c, _wgslsmith_sub_u32(_wgslsmith_mod_u32(~u_input.c, 39809u), u_input.a), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

