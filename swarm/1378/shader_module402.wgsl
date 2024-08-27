struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true));

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: bool) -> i32 {
    var var_0 = 857f;
    let var_1 = select(arg_0, select(vec2<bool>(_wgslsmith_div_u32(arg_2.a.x, arg_2.e.x) >= ~21706u, !arg_3), !vec2<bool>(true, arg_2.d.x <= 15232i), select(select(select(vec2<bool>(arg_2.c.b, global1.x), arg_0, arg_3), select(vec2<bool>(false, arg_2.c.b), arg_0, false), !arg_2.c.a.xy), arg_0, any(select(global0[_wgslsmith_index_u32(arg_2.e.x, 10u)], global0[_wgslsmith_index_u32(arg_2.e.x, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)])))), vec2<bool>(arg_0.x, arg_3 && arg_3));
    let var_2 = vec4<bool>(all(vec2<bool>(select(true, !global1.x, all(arg_0)), !arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b - arg_1.x)), arg_1.x) < 1000f, arg_0.x, arg_0.x);
    var var_3 = select(arg_2.c.a, !select(var_2.yyx, !vec3<bool>(arg_2.c.a.x, false, arg_0.x), var_1.x), true);
    var var_4 = arg_2;
    return 1i;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = u_input.b.zx;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(524f)), _wgslsmith_f_op_f32(-788f - 259f)), _wgslsmith_f_op_f32(f32(-1f) * -319f))))));
    var var_2 = ~_wgslsmith_mult_i32(_wgslsmith_div_i32(-7963i, abs(func_3(vec2<bool>(arg_0, true), vec2<f32>(var_1, 1613f), Struct_3(u_input.b.zz, var_1, Struct_1(vec3<bool>(false, global1.x, false), false), vec4<i32>(21837i, 1683i, -2147483647i, -1i), vec4<u32>(u_input.c, u_input.b.x, u_input.c, u_input.c)), false))), -43951i);
    let var_3 = Struct_2(max(24833u, ~4294967295u) >> (u_input.a % 32u), _wgslsmith_mult_vec2_i32(vec2<i32>(reverseBits(0i), -25192i), ~(vec2<i32>(-1698i, -1i) << (~u_input.b.zx % vec2<u32>(32u)))), ~(~(min(vec4<u32>(var_0.x, 9026u, u_input.c, var_0.x), vec4<u32>(u_input.c, var_0.x, var_0.x, 79009u)) ^ (vec4<u32>(38230u, 4294967295u, 4294967295u, u_input.a) >> (vec4<u32>(6766u, u_input.a, 1u, 1u) % vec4<u32>(32u))))), Struct_1(vec3<bool>(false, true, true), false));
    var_0 = u_input.b.xz;
    return Struct_2(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(select(u_input.b, vec3<u32>(0u, 1u, 0u), var_3.d.a), vec3<u32>(135u, 102376u, 11847u)), ~(var_3.c.yyw >> (var_3.c.zwy % vec3<u32>(32u)))), u_input.a), -(~abs(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), var_3.b))), countOneBits(~(~var_3.c)) >> (~reverseBits(_wgslsmith_div_vec4_u32(var_3.c, var_3.c)) % vec4<u32>(32u)), var_3.d);
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    return func_2(any(vec3<bool>(!all(vec3<bool>(global1.x, global1.x, arg_0.x)), true, any(vec2<bool>(false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 10>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1149f, -802f, true))));
    global1 = !vec2<bool>(firstTrailingBit(i32(-1i) * -2147483647i) == abs(firstTrailingBit(39071i)), reverseBits(~32421u) != ~max(u_input.b.x, u_input.c));
    var var_1 = func_1(!vec2<bool>(any(select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, global1.x), false)), true));
    global0 = array<vec4<bool>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(countOneBits(u_input.b.yy) | u_input.b.yy), vec2<i32>(-40984i, -(2147483647i & -var_1.b.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1275f, 376f, 1017f) + vec4<f32>(-1171f, -1705f, 1358f, 1372f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1108f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(122f * -385f) * _wgslsmith_div_f32(310f, 276f)), select(false, true, var_1.d.a.x && false)))));
}

