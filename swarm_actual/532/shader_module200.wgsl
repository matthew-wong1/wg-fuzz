struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true));

var<private> global1: u32;

var<private> global2: array<u32, 13> = array<u32, 13>(1u, 61632u, 0u, 51341u, 121053u, 4294967295u, 27331u, 23424u, 1u, 30091u, 3061u, 80971u, 30852u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> Struct_1 {
    global2 = array<u32, 13>();
    global1 = max(~(~34758u), 2027u);
    let var_0 = vec4<f32>(1000f, -483f, -141f, arg_0.x);
    global0 = array<Struct_1, 24>();
    let var_1 = Struct_1(false);
    return Struct_1(!all(select(select(vec2<bool>(var_1.a, false), vec2<bool>(var_1.a, false), true), !vec2<bool>(true, var_1.a), any(vec2<bool>(var_1.a, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~reverseBits(17217u), 13u)];
    var var_1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -122f), 1f, _wgslsmith_f_op_f32(ceil(-828f)), _wgslsmith_f_op_f32(977f - -267f)))), ~_wgslsmith_mult_i32(u_input.c.x, 56262i));
    var var_2 = u_input.e;
    var var_3 = 389f;
    var_2 = 4294967295u << (abs(min(_wgslsmith_add_u32(0u, global2[_wgslsmith_index_u32(u_input.e, 13u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.d.x, 13u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 13u)], 13u)], 28118u, u_input.d.x), vec4<u32>(145213u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e, 13u)], 13u)], 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43579u, 13u)], 13u)]))) >> (~(global2[_wgslsmith_index_u32(4294967295u, 13u)] ^ 26300u) % 32u)) % 32u);
    let var_4 = _wgslsmith_f_op_f32(select(-1583f, 1f, var_1.a));
    global1 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -698f) * 1000f), -1836f, var_4) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(389f, 1118f, var_4, var_4) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, var_4, 2499f, -198f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, var_4, 1386f, -1000f))))));
}

