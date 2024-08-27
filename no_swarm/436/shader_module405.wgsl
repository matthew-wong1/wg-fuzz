struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<bool, 20> = array<bool, 20>(false, false, true, false, true, false, true, true, false, true, true, true, false, true, false, true, false, true, false, true);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(!vec3<bool>(u_input.a.x <= u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 20u)] & global1[_wgslsmith_index_u32(0u, 20u)], false), vec3<bool>(any(vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(62261u, 20u)])), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(u_input.a.x, 85209u)), 20u)], all(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(22303u, 20u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], false), false))), vec3<bool>(select(global1[_wgslsmith_index_u32(~44099u, 20u)], false || global1[_wgslsmith_index_u32(u_input.a.x, 20u)], !global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), global1[_wgslsmith_index_u32(~(~60592u), 20u)], true & any(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(31217u, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)])))));
    let var_1 = true;
    var var_2 = vec2<i32>(u_input.b.x, _wgslsmith_mult_i32(u_input.b.x >> (~(~4294967295u) % 32u), ~u_input.b.x & ~countOneBits(u_input.b.x)));
    var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 20u)];
    global0 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1191f, 104f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(792f, -150f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(202f, 1288f)))), vec2<f32>(-877f, -2298f)), vec2<bool>(abs(66968i) > _wgslsmith_mod_i32(var_2.x, var_2.x), false))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1021f, 1246f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, abs(max(~u_input.a, vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x))), u_input.b.x, _wgslsmith_f_op_f32(-var_3.x));
}

