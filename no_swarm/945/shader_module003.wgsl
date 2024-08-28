struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 37570i;

var<private> global1: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false));

var<private> global2: array<u32, 20> = array<u32, 20>(0u, 1u, 40851u, 90428u, 0u, 67948u, 0u, 15144u, 32981u, 4294967295u, 1577u, 4294967295u, 0u, 1u, 2957u, 6259u, 4294967295u, 32714u, 32181u, 79829u);

var<private> global3: Struct_3 = Struct_3(Struct_2(Struct_1(-1051f, true), Struct_1(212f, false), Struct_1(-340f, true), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(-860f, true), Struct_1(-211f, false), Struct_1(-272f, false), vec4<bool>(false, false, false, false)), true, 216f, -929f);

var<private> global4: i32 = -1i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b, _wgslsmith_mult_vec2_u32(u_input.b | u_input.b, ~vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 20u)], u_input.b.x))), reverseBits(u_input.b));
    var var_1 = u_input.b.x;
    let var_2 = u_input.c;
    let var_3 = global1[_wgslsmith_index_u32(~26578u, 20u)];
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-100f)) + _wgslsmith_div_f32(_wgslsmith_div_f32(global3.b.a.a, -757f), global3.d))), _wgslsmith_f_op_f32(max(-625f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.d)) + _wgslsmith_f_op_f32(-744f * global3.d)))))));
}

