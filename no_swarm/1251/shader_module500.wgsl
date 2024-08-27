struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec2<bool>, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> bool {
    let var_0 = true;
    global1 = array<vec2<bool>, 5>();
    let var_1 = -(u_input.a ^ reverseBits(u_input.a));
    let var_2 = Struct_3(true, firstTrailingBit(~(~(vec3<u32>(28726u, 1u, global0.x) | vec3<u32>(global0.x, global0.x, 105919u)))), _wgslsmith_sub_u32(~_wgslsmith_sub_u32(0u, global0.x), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(58931u, 0u, global0.x), ~vec3<u32>(global0.x, 51612u, 14346u)), vec3<u32>(global0.x, 4294967295u, global0.x) | ~vec3<u32>(0u, global0.x, 38975u))));
    let var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(~var_2.b.xz, select(var_2.b.xx, vec2<u32>(global0.x, var_2.b.x), false)), global0.x | _wgslsmith_sub_u32(var_2.c, 4294967295u), abs(global0.x), global0.x) << ((~(vec4<u32>(0u, global0.x, 0u, var_2.c) << (vec4<u32>(4294967295u, global0.x, var_2.b.x, 4294967295u) % vec4<u32>(32u))) >> (~(~vec4<u32>(global0.x, 108289u, global0.x, 11246u)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~(~(vec4<u32>(1u, 24969u, 77502u, global0.x) & vec4<u32>(4294967295u, 5253u, 7666u, global0.x))), _wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(30214u, global0.x, global0.x, 1u), vec4<u32>(0u, var_2.c, var_2.c, var_2.b.x)), vec4<u32>(~var_2.b.x, ~global0.x, global0.x, global0.x))));
    return var_2.a && false;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec3<f32>) -> f32 {
    var var_0 = Struct_2(arg_1.a);
    var var_1 = func_3(!select(vec3<bool>(all(vec4<bool>(arg_0, false, true, true)), arg_0, all(vec4<bool>(arg_0, false, true, false))), !vec3<bool>(true, arg_0, arg_0), all(vec2<bool>(false, false))), var_0.a.a);
    var var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(-1335f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_0.a.b.x)))));
    global1 = array<vec2<bool>, 5>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-253f)) * -1015f);
}

fn func_1() -> Struct_3 {
    global0 = ~_wgslsmith_add_vec2_u32(~vec2<u32>(global0.x, global0.x) ^ (vec2<u32>(4294967295u, 801u) | vec2<u32>(global0.x, 0u)), vec2<u32>(1u, 4294967295u) << (~vec2<u32>(0u, global0.x) % vec2<u32>(32u))) ^ ~select(vec2<u32>(global0.x, _wgslsmith_sub_u32(global0.x, 4294967295u)), select(vec2<u32>(39964u, global0.x) | vec2<u32>(global0.x, 58259u), vec2<u32>(4294967295u, global0.x) | vec2<u32>(global0.x, global0.x), true), true);
    var var_0 = _wgslsmith_f_op_f32(-1197f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true, Struct_2(Struct_1(u_input.a.x, vec3<f32>(1667f, 507f, -364f), vec4<i32>(u_input.a.x, 0i, u_input.a.x, 12593i))), vec3<f32>(1138f, 1100f, -558f)))))) > 1639f;
    var var_1 = vec2<u32>(1013u, 0u);
    let var_2 = Struct_3(true, select(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_1.x, 4294967295u), ~vec3<u32>(var_1.x, global0.x, var_1.x))), ((vec3<u32>(var_1.x, global0.x, 4294967295u) >> (vec3<u32>(14623u, 0u, global0.x) % vec3<u32>(32u))) ^ (vec3<u32>(global0.x, var_1.x, var_1.x) & vec3<u32>(0u, var_1.x, 76200u))) & select(vec3<u32>(0u, 1u, var_1.x), countOneBits(vec3<u32>(var_1.x, 83283u, var_1.x)), vec3<bool>(true, true, true)), select(vec3<bool>(true, any(global1[_wgslsmith_index_u32(global0.x, 5u)]), true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.x ^ 4294967295u, var_1.x), ~vec3<u32>(global0.x, 4294967295u, var_1.x)), 34722u));
    global1 = array<vec2<bool>, 5>();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = ~(~var_0.b.x & (0u >> (select(~0u, firstLeadingBit(global0.x), global0.x <= global0.x) % 32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-334f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -949f))));
    let var_3 = Struct_1(_wgslsmith_div_i32(~1i, u_input.a.x), vec3<f32>(_wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_f_op_f32(979f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), -1140f), -vec4<i32>(u_input.a.x, -9840i, min(u_input.a.x, u_input.a.x), firstLeadingBit(~21289i)));
    global1 = array<vec2<bool>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.ywy);
}

