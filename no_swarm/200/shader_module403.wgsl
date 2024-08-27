struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 22>;

var<private> global1: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(4294967295u, 0u, 2627u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(0u, 23946u, 1u), vec3<u32>(2787u, 1u, 4294967295u), vec3<u32>(1u, 16719u, 54074u), vec3<u32>(1u, 92749u, 0u));

var<private> global2: array<i32, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> u32 {
    global0 = array<vec4<u32>, 22>();
    var var_0 = global2[_wgslsmith_index_u32(u_input.c.x, 21u)];
    var_0 = -global2[_wgslsmith_index_u32(u_input.c.x, 21u)];
    let var_1 = false;
    var var_2 = Struct_1(select(vec4<u32>(21999u, 1u, 46032u, 58874u), global0[_wgslsmith_index_u32(0u, 22u)], any(!select(vec3<bool>(true, false, var_1), vec3<bool>(false, var_1, var_1), var_1))));
    return var_2.a.x;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_sub_u32(~(~(~4294967295u & func_3(-306f))), ~_wgslsmith_sub_u32(u_input.c.x, 0u));
    global0 = array<vec4<u32>, 22>();
    global1 = array<vec3<u32>, 6>();
    let var_1 = 1u;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(230f))))) + -1000f);
    return ~(~(-u_input.b.x ^ min(0i, u_input.b.x))) > _wgslsmith_add_i32(u_input.a, ~u_input.a);
}

fn func_1() -> vec4<bool> {
    let var_0 = u_input.c.x;
    let var_1 = firstLeadingBit(u_input.c.yz);
    global1 = array<vec3<u32>, 6>();
    let var_2 = (u_input.a ^ -_wgslsmith_sub_i32(min(global2[_wgslsmith_index_u32(51114u, 21u)], 0i), _wgslsmith_mod_i32(26043i, 2147483647i))) > _wgslsmith_add_i32(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(72339u, 21u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(22747u), var_1.x), 21u)]), ~_wgslsmith_add_i32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0, u_input.c.x), 21u)], _wgslsmith_dot_vec2_i32(u_input.b.zy, vec2<i32>(global2[_wgslsmith_index_u32(8574u, 21u)], global2[_wgslsmith_index_u32(var_0, 21u)]))));
    global1 = array<vec3<u32>, 6>();
    return vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1011f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-237f)))), true, all(vec2<bool>(any(vec4<bool>(var_2, false, var_2, true)) && var_2, !var_2)), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(1775f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2105f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-748f + -1519f) + _wgslsmith_f_op_f32(step(-150f, -1249f))))));
    let var_1 = !func_1();
    global1 = array<vec3<u32>, 6>();
    let var_2 = Struct_1(~global0[_wgslsmith_index_u32(min(_wgslsmith_add_u32(~70603u, 0u), ~1u), 22u)]);
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(344f * 713f)));
    var var_4 = ~(~select(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], u_input.c.wzy, true));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, _wgslsmith_div_i32(-2147483647i, -_wgslsmith_add_i32(_wgslsmith_mod_i32(8240i, global2[_wgslsmith_index_u32(var_4.x, 21u)]), global2[_wgslsmith_index_u32(1u, 21u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-342f, 892f, 1224f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_3, var_3)))))));
}

