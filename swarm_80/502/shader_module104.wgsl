struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, 5469i, i32(-2147483648), -1i);

var<private> global1: array<Struct_2, 19>;

var<private> global2: Struct_3;

var<private> global3: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(global2.a);
    var var_1 = var_0;
    global1 = array<Struct_2, 19>();
    global2 = Struct_3(Struct_1(_wgslsmith_mod_u32(min(var_1.a.e, 0u), ~u_input.b) == (~var_0.a.d << (~1u % 32u)), global2.a.b, all(vec4<bool>(u_input.c.x != global0.x, false, !var_0.a.c, global2.a.c)), select(~u_input.b, countOneBits(8761u), true), 45897u));
    var var_2 = var_0;
    return var_0;
}

fn func_3() -> Struct_1 {
    global1 = array<Struct_2, 19>();
    var var_0 = vec4<bool>(!(global2.a.a != true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.b.x) - func_2().a.b.x)) > 993f, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, global2.a.b.x))) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.a.b.x * -496f), _wgslsmith_f_op_f32(ceil(global2.a.b.x)), !global2.a.c))) == false, true);
    let var_1 = ~max(-max(-2473i, -17145i), _wgslsmith_dot_vec2_i32(u_input.d, countOneBits(global0.xw))) >> (u_input.b % 32u);
    global1 = array<Struct_2, 19>();
    let var_2 = ~vec4<u32>(reverseBits(_wgslsmith_div_u32(u_input.b, 100960u)), 4294967295u, ~_wgslsmith_sub_u32(19073u, global2.a.d) << (~global2.a.e % 32u), 25707u);
    return func_2().a;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> vec4<u32> {
    var var_0 = -1i;
    global2 = Struct_3(global2.a);
    global2 = func_2();
    let var_1 = func_3();
    var var_2 = func_2().a;
    return firstTrailingBit(vec4<u32>(53115u, u_input.b, abs(73154u | ~var_1.e), firstLeadingBit(var_1.e ^ 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = true;
    global3 = _wgslsmith_div_u32(_wgslsmith_add_u32(global2.a.e, 12585u), _wgslsmith_dot_vec4_u32(~vec4<u32>(global2.a.d, u_input.b, u_input.b, 0u) | func_1(vec3<f32>(-661f, global2.a.b.x, global2.a.b.x), vec2<i32>(20180i, global0.x)), ~vec4<u32>(u_input.b, global2.a.d, u_input.b, 12776u))) <= _wgslsmith_mult_u32(global2.a.e, _wgslsmith_dot_vec4_u32(vec4<u32>(18170u, _wgslsmith_mod_u32(u_input.b, 0u), 33072u, global2.a.d), firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, 15639u, 75175u)) ^ vec4<u32>(17488u, global2.a.d, 4294967295u, global2.a.d)));
    let var_0 = Struct_3(global2.a);
    let var_1 = Struct_2(global0.xx);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(global2.a.e, 10922u) >> (~var_0.a.d % 32u), 33098u), _wgslsmith_add_u32(48616u, reverseBits(var_0.a.d) << (_wgslsmith_mult_u32(24962u, 29101u) % 32u)), reverseBits(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.a.d, global2.a.d, 11982u), vec4<u32>(0u, u_input.b, 62544u, global2.a.e)))), 78077u), u_input.b, var_1.a.x, 341f, vec3<i32>(var_1.a.x, var_1.a.x, countOneBits(_wgslsmith_dot_vec2_i32(global0.xz, global0.zw)) << (abs(global2.a.d) % 32u)));
}

