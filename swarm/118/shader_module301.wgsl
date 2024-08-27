struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(-373f), Struct_4(1880f), Struct_4(1000f), Struct_4(-1591f), Struct_4(-493f));

var<private> global1: bool;

var<private> global2: Struct_4;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    global0 = array<Struct_4, 5>();
    global1 = u_input.b.x >= (u_input.b.x ^ u_input.a);
    let var_0 = global2.a;
    let var_1 = -948f;
    var var_2 = _wgslsmith_sub_vec2_i32(u_input.b.zy, -(~vec2<i32>(max(u_input.a, 13543i), -u_input.a)));
    return Struct_3(-abs(~vec2<i32>(u_input.a, 30619i)), vec3<u32>(63539u, ~1u, abs(firstTrailingBit(1u))), ~(~(~12873u ^ firstTrailingBit(22246u))), any(vec3<bool>(false, all(vec2<bool>(true, true)) || true, any(vec3<bool>(true, true, true)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>) -> f32 {
    global2 = global0[_wgslsmith_index_u32(~1u, 5u)];
    let var_0 = func_2(Struct_4(global2.a));
    let var_1 = !(!vec4<bool>(true, var_0.d, true, arg_0.x));
    let var_2 = Struct_3(_wgslsmith_div_vec2_i32(-(var_0.a ^ (var_0.a >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)))), vec2<i32>(-(u_input.a | -1i), u_input.a)), ~var_0.b, arg_1.x, true);
    global0 = array<Struct_4, 5>();
    return -877f;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: i32, arg_3: bool) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -770f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1505f * 884f), _wgslsmith_f_op_f32(697f - global2.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(682f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(112f * 1065f) - _wgslsmith_f_op_f32(select(702f, global2.a, arg_3)))))), global2.a);
    var var_1 = 1505f;
    let var_2 = Struct_1(!(!select(!vec4<bool>(arg_3, arg_3, arg_3, arg_3), !vec4<bool>(true, arg_3, arg_3, true), func_2(global0[_wgslsmith_index_u32(15924u, 5u)]).d)));
    let var_3 = ~arg_2;
    let var_4 = _wgslsmith_sub_i32(-select(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-10966i, 0i), vec2<i32>(u_input.b.x, var_3)), var_2.a.x) << ((((arg_0.x & 33550u) << (arg_0.x % 32u)) & abs(0u)) % 32u), 39724i);
    return !arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_4(-109f);
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(abs(_wgslsmith_sub_i32(-2147483647i, u_input.b.x)) >> (0u % 32u), u_input.a, _wgslsmith_mult_i32(u_input.a << (~4294967295u % 32u), -10617i)), u_input.b.yyz);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(740f, _wgslsmith_f_op_f32(exp2(global2.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), ~vec3<u32>(20463u, 46715u, 4294967295u))) * _wgslsmith_div_f32(_wgslsmith_div_f32(global2.a, 544f), 756f))), _wgslsmith_div_f32(-246f, global2.a));
    let var_2 = Struct_2(_wgslsmith_mult_vec3_u32(func_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_div_u32(1284u, 22828u)), 5u)]).b, min(~vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(4294967295u, 1u, 23300u)))), func_2(Struct_4(global2.a)).c, reverseBits(_wgslsmith_mod_vec4_i32(u_input.b << (~vec4<u32>(53636u, 22741u, 0u, 1u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, var_0, var_0, -62906i), reverseBits(vec4<i32>(var_0, -1i, 0i, -14505i))))), Struct_1(vec4<bool>(false, all(vec3<bool>(true, true, false)), any(vec3<bool>(true, true, true)), func_3(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), ~vec4<i32>(var_0, -2147483647i, 85937i, u_input.a), u_input.b.x, func_2(Struct_4(var_1)).d))));
    let var_3 = Struct_4(-921f);
    global0 = array<Struct_4, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_2.a.x, ((64519u | var_2.b) << (var_2.a.x % 32u)) | var_2.a.x, var_2.a.x | 15930u), ~(~vec2<u32>(_wgslsmith_mod_u32(var_2.a.x, var_2.b), ~4294967295u)), ~2147483647i);
}

