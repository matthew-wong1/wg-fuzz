struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 61388u;

var<private> global1: bool = false;

var<private> global2: array<u32, 17>;

var<private> global3: array<vec4<f32>, 21>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec2<i32>) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, ~(~(~14392u))), 17u)];
    let var_1 = Struct_2(Struct_1(select(vec3<bool>(false, any(vec2<bool>(false, true)), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), -firstTrailingBit(-arg_2.x), ~_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(11622u, arg_1, u_input.a.x)), ~vec3<u32>(0u, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(332f + 350f), arg_0))));
    let var_2 = var_1.a;
    var var_3 = Struct_3(Struct_2(Struct_1(select(!var_1.a.a, !var_2.a, !vec3<bool>(true, var_2.a.x, false)), -5404i, abs(vec3<u32>(global2[_wgslsmith_index_u32(var_2.c.x, 17u)], global2[_wgslsmith_index_u32(39518u, 17u)], 4294967295u)), _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_div_f32(var_2.d, var_2.d))))), vec4<u32>(u_input.a.x, ~reverseBits(~38842u), ~(~_wgslsmith_mod_u32(65181u, var_1.a.c.x)), 43245u), var_2.b >> (~(~_wgslsmith_mod_u32(var_1.a.c.x, 4294967295u)) % 32u));
    let var_4 = Struct_4(var_2);
    return all(var_1.a.a);
}

fn func_4(arg_0: bool, arg_1: vec4<bool>) -> vec2<bool> {
    let var_0 = 252f;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 * var_0)))));
    var var_2 = global2[_wgslsmith_index_u32(~(~(~((u_input.a.x ^ 12445u) >> (75300u % 32u)))), 17u)];
    let var_3 = any(vec4<bool>(false, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -468f)), global2[_wgslsmith_index_u32(countOneBits(55786u), 17u)], vec2<i32>(~(-2147483647i), countOneBits(9433i))), true, true));
    let var_4 = vec3<u32>(66510u, 4294967295u, 1u);
    return vec2<bool>(true, 937i == _wgslsmith_mod_i32((0i << (0u % 32u)) >> (1u % 32u), ~select(-2147483647i, -20841i, var_3)));
}

fn func_2(arg_0: Struct_5) -> bool {
    var var_0 = Struct_5(-8385i, !(!(arg_0.a == -29969i)), 1512f, _wgslsmith_f_op_vec3_f32(arg_0.d - vec3<f32>(arg_0.d.x, _wgslsmith_f_op_f32(-arg_0.c), -205f)), -arg_0.a);
    return any(select(select(vec2<bool>(true, all(vec4<bool>(true, var_0.b, true, false))), select(vec2<bool>(arg_0.b, false), !vec2<bool>(arg_0.b, var_0.b), !arg_0.b), !vec2<bool>(arg_0.b, true)), func_4(true, vec4<bool>(func_3(-1166f, 1u, vec2<i32>(-1i, arg_0.a)), var_0.b, arg_0.b && true, true)), global2[_wgslsmith_index_u32(1u, 17u)] <= 4294967295u));
}

fn func_1() -> bool {
    global2 = array<u32, 17>();
    global2 = array<u32, 17>();
    global2 = array<u32, 17>();
    var var_0 = vec4<bool>(true, false, true, all(vec2<bool>(true, all(vec3<bool>(true, false, false)))));
    let var_1 = select(!(!vec4<bool>(true, false && var_0.x, false, var_0.x)), !select(vec4<bool>(!var_0.x, false, var_0.x, true), vec4<bool>(func_2(Struct_5(-1i, false, -769f, vec3<f32>(569f, -1000f, -1047f), 26015i)), true, true, var_0.x), select(!vec4<bool>(var_0.x, false, false, false), select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, true), false), select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(false, false, var_0.x, true), vec4<bool>(true, var_0.x, false, false)))), select(!vec4<bool>(var_0.x, true, var_0.x, all(vec2<bool>(var_0.x, var_0.x))), select(!vec4<bool>(var_0.x, true, false, var_0.x), !(!vec4<bool>(true, true, var_0.x, var_0.x)), func_2(Struct_5(-1i, var_0.x, 1191f, vec3<f32>(-240f, 1477f, -546f), 2147483647i))), vec4<bool>(true, true, true, all(var_0.xzz))));
    return any(vec3<bool>(true, var_1.x, _wgslsmith_f_op_f32(round(-505f)) >= 1628f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-27227i, 34216i, -50550i, 63709i)), vec4<i32>(-1i, -24176i, 15060i, -9686i))) >= _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(2147483647i, -1i), min(~vec2<i32>(26000i, -2147483647i), vec2<i32>(1i, 1i)), select(countOneBits(vec2<i32>(-1i, -2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(-30634i, -1i), vec2<i32>(-2147483647i, 2147483647i)), true)), -(~vec2<i32>(1i, 1i)));
    global1 = !select(true, true, !func_1());
    global3 = array<vec4<f32>, 21>();
    global2 = array<u32, 17>();
    global0 = ~(~69581u);
    let x = u_input.a;
    s_output = StorageBuffer(127997u);
}

