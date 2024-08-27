struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: i32,
    d: vec4<f32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_4;

var<private> global1: array<vec2<i32>, 30>;

var<private> global2: bool;

var<private> global3: array<u32, 22>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<f32> {
    var var_0 = Struct_1(arg_1.a, global0.b.a, vec3<u32>(~u_input.a, firstLeadingBit(global3[_wgslsmith_index_u32(min(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4603u, 22u)], 22u)] & 15429u, 1u), 22u)]), u_input.a));
    var var_1 = arg_1.b;
    var var_2 = arg_1;
    let var_3 = ~(~arg_0);
    var var_4 = Struct_5(-590f);
    return global0.d;
}

fn func_2() -> vec3<u32> {
    global0 = Struct_4(-854f, global0.b, 0i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global0.a - 647f), -189f, global0.d.x, global0.d.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global0.d.x + global0.d.x), global0.a, _wgslsmith_f_op_f32(global0.d.x * -1098f), _wgslsmith_f_op_f32(global0.d.x * global0.d.x)), _wgslsmith_f_op_vec4_f32(step(global0.d, _wgslsmith_f_op_vec4_f32(func_3(global0.c, Struct_1(vec2<u32>(1u, 59290u), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(45920u, 22u)], 22u)], vec3<u32>(u_input.a, 1478u, 1u)), vec3<i32>(-9560i, -1i, 3309i))))), false)), false)));
    let var_0 = Struct_1(countOneBits(_wgslsmith_div_vec2_u32(abs(vec2<u32>(1u, u_input.a) & vec2<u32>(global3[_wgslsmith_index_u32(u_input.a, 22u)], 4294967295u)), vec2<u32>(global0.b.a, 3256u) << (abs(vec2<u32>(0u, global3[_wgslsmith_index_u32(44475u, 22u)])) % vec2<u32>(32u)))), 4294967295u, reverseBits(_wgslsmith_div_vec3_u32(~select(vec3<u32>(85684u, global3[_wgslsmith_index_u32(0u, 22u)], global0.b.a), vec3<u32>(global3[_wgslsmith_index_u32(global0.b.a, 22u)], global0.b.a, global0.b.a), global0.b.b.xyz), vec3<u32>(global3[_wgslsmith_index_u32(0u, 22u)], 4294967295u, 1u) >> ((vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(1u, global3[_wgslsmith_index_u32(50121u, 22u)], 0u) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    global1 = array<vec2<i32>, 30>();
    var var_1 = _wgslsmith_f_op_f32(ceil(805f));
    global1 = array<vec2<i32>, 30>();
    return (~(~(vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 22u)], var_0.b, 1u) ^ var_0.c)) & ~(~vec3<u32>(0u, 0u, 35961u))) | vec3<u32>(u_input.a, 4294967295u, ~(~66785u));
}

fn func_1() -> u32 {
    let var_0 = Struct_1(_wgslsmith_mod_vec2_u32(~(vec2<u32>(global3[_wgslsmith_index_u32(32783u, 22u)], global0.b.a) >> (vec2<u32>(1u, global0.b.a) % vec2<u32>(32u))) << (~(~vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(1u, 22u)])) % vec2<u32>(32u)), firstLeadingBit(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.a, global3[_wgslsmith_index_u32(3730u, 22u)])), ~vec2<u32>(u_input.a, u_input.a)))), ~global3[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(0u, 22u)], 4294967295u), ~14853u)), 22u)], ~min(func_2(), max(vec3<u32>(42826u, 33128u, global3[_wgslsmith_index_u32(123598u, 22u)]), ~vec3<u32>(1759u, 41669u, 4294967295u))));
    return select(_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, 45086u), firstLeadingBit(22658u) ^ abs(global0.b.a)), abs(~35234u), global0.b.b.x | !global0.b.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_u32(~global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 22u)], 22u)], global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(307u | _wgslsmith_mult_u32(global0.b.a, 22622u), ~(global3[_wgslsmith_index_u32(global0.b.a, 22u)] | 7900u), 37998u), 22u)]);
    var var_1 = global0.b.b.xzy;
    var_0 = _wgslsmith_add_u32(~func_1(), reverseBits(max(12717u, global0.b.a)));
    global2 = false;
    var_0 = select(4952u, ~abs(_wgslsmith_clamp_u32(~global0.b.a, ~4294967295u, abs(21310u))), all(!vec4<bool>(global0.b.b.x, true, true, select(var_1.x, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.a & min(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.b.a, global0.b.a, global3[_wgslsmith_index_u32(45232u, 22u)], global0.b.a), vec4<u32>(50412u, 35773u, 4294967295u, u_input.a)), _wgslsmith_mod_u32(u_input.a, _wgslsmith_div_u32(64474u, global0.b.a))));
}

