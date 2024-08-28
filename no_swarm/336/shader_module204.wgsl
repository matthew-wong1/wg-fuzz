struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 21>;

var<private> global2: bool = true;

var<private> global3: Struct_2 = Struct_2(0i, vec2<bool>(true, true), Struct_1(true, false), Struct_1(true, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: bool, arg_3: bool) -> vec2<bool> {
    global2 = false;
    global2 = arg_2;
    global3 = Struct_2(10155i, global3.b, Struct_1(!(38437u <= _wgslsmith_add_u32(u_input.d, 0u)), any(select(vec4<bool>(arg_3, false, global0.b.x, arg_3), select(vec4<bool>(arg_2, true, global0.d.b, global3.d.b), vec4<bool>(true, arg_3, arg_3, true), arg_3), arg_3))), global0.c);
    let var_0 = true;
    return !vec2<bool>(global0.c.a, ~countOneBits(63543u) < _wgslsmith_sub_u32(u_input.d, 0u));
}

fn func_2() -> Struct_2 {
    var var_0 = ~4294967295u;
    var var_1 = global1[_wgslsmith_index_u32(~84617u, 21u)];
    var var_2 = vec2<f32>(_wgslsmith_div_f32(1000f, -1395f), _wgslsmith_f_op_f32(f32(-1f) * -448f));
    let var_3 = global0.d;
    global0 = Struct_2(-1i, global0.b, global3.d, global0.c);
    return Struct_2(u_input.a, !(!vec2<bool>(!var_3.a, true | var_3.b)), Struct_1(global3.b.x, !all(func_3(0i, vec4<i32>(global0.a, 26563i, u_input.c.x, u_input.a), global3.c.b, var_3.a))), global0.d);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = Struct_1(true, false);
    let var_1 = func_2();
    let var_2 = !global3.d.a;
    let var_3 = var_1.d;
    let var_4 = u_input.c << (vec2<u32>(firstLeadingBit(_wgslsmith_sub_u32(~u_input.b.x, 1u)), _wgslsmith_mod_u32(abs(39672u), ~u_input.d) ^ ~1u) % vec2<u32>(32u));
    return ~_wgslsmith_sub_u32(4294967295u ^ ~(~u_input.d), 1u);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_2 {
    global3 = Struct_2(u_input.a, vec2<bool>(reverseBits(firstLeadingBit(u_input.b.x)) != ~(~1u), all(select(vec3<bool>(arg_1.a, false, false), !vec3<bool>(true, global0.b.x, false), true))), Struct_1(global1[_wgslsmith_index_u32(max(u_input.d, u_input.d) | 15332u, 21u)] < -819f, !all(!vec4<bool>(true, false, global3.c.b, false))), Struct_1(false, !global0.d.a));
    let var_0 = vec3<u32>(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(u_input.d, (u_input.d << (u_input.b.x % 32u)) & 97403u)), u_input.b.x >> (u_input.d % 32u), u_input.d);
    global0 = func_2();
    var var_1 = Struct_2(-2147483647i & (global3.a << (reverseBits(u_input.d) % 32u)), global3.b, global3.d, global3.d);
    let var_2 = arg_0.x;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global1 = array<f32, 21>();
    global1 = array<f32, 21>();
    global0 = func_4(vec2<f32>(288f, _wgslsmith_f_op_f32(select(-458f, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, func_1(global3.c, true)), 21u)], global3.b.x))), global0.d);
    let var_1 = global3.c;
    global1 = array<f32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.ww);
}

