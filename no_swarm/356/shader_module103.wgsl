struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
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

var<private> global0: array<u32, 17> = array<u32, 17>(4294967295u, 0u, 17285u, 0u, 97540u, 33889u, 49886u, 1273u, 1u, 0u, 1u, 38135u, 55311u, 4294967295u, 0u, 1u, 29071u);

var<private> global1: Struct_2 = Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), -599f, vec3<bool>(true, false, true));

var<private> global2: i32;

var<private> global3: array<f32, 8>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-233f, global1.b, 419f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, global3[_wgslsmith_index_u32(3322u, 8u)], global3[_wgslsmith_index_u32(0u, 8u)]) - vec3<f32>(1787f, 929f, 835f)))))))));
    return any(!select(vec4<bool>(any(vec2<bool>(false, global1.c.x)), global1.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)] == 22037u, global1.c.x), select(vec4<bool>(global1.c.x, global1.c.x, global1.c.x, false), vec4<bool>(global1.c.x, global1.c.x, global1.c.x, false), vec4<bool>(global1.c.x, true, false, false)), true));
}

fn func_1() -> vec3<u32> {
    var var_0 = !func_2(1186f);
    var var_1 = 1i;
    var_1 = 33357i;
    var var_2 = Struct_1(-min(min(-vec2<i32>(0i, global1.a.x), u_input.b.yy), vec2<i32>(~global1.a.x, ~1i)), firstLeadingBit(u_input.a.x) << (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(u_input.c.x, 17u)], 24211u), u_input.a.xzy) << (max(u_input.a.x, u_input.a.x) % 32u), 4294967295u) % 32u), 920f);
    var var_3 = true;
    return u_input.c.xyz;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<bool>) -> u32 {
    var var_0 = Struct_1(vec2<i32>(countOneBits(global1.a.x), select((1i << (global0[_wgslsmith_index_u32(0u, 17u)] % 32u)) & max(global1.a.x, 1i), 2147483647i, any(!vec4<bool>(arg_1.x, false, global1.c.x, false)))), ~4294967295u, _wgslsmith_f_op_f32(2169f - -1446f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1301f)) - _wgslsmith_f_op_f32(var_0.c + global3[_wgslsmith_index_u32(48196u, 8u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c + global3[_wgslsmith_index_u32(10238u, 8u)]))))));
    let var_2 = any(select(vec3<bool>(arg_1.x, !global1.c.x & (global0[_wgslsmith_index_u32(var_0.b, 17u)] <= u_input.a.x), arg_1.x), !vec3<bool>(false | arg_1.x, !global1.c.x, global1.c.x), arg_1));
    let var_3 = -1i;
    global0 = array<u32, 17>();
    return ~u_input.c.x;
}

fn func_4(arg_0: vec4<u32>) -> u32 {
    let var_0 = Struct_1(~_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(u_input.d, u_input.e)), min(select(vec2<i32>(3374i, 7139i), vec2<i32>(u_input.d, 2147483647i), global1.c.x), u_input.b.zx)), select(u_input.a.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25786u, 17u)], 17u)], global0[_wgslsmith_index_u32(11802u, 17u)]), ~vec2<u32>(u_input.c.x, 97189u)), true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b + global3[_wgslsmith_index_u32(0u, 8u)]) + _wgslsmith_div_f32(global1.b, global1.b)))), global3[_wgslsmith_index_u32(arg_0.x, 8u)])));
    let var_1 = select(select(global1.c, global1.c, global1.c.x), global1.c, 987f <= var_0.c);
    global1 = Struct_2(u_input.b.wy, global1.b, select(!global1.c, select(select(vec3<bool>(true, true, global1.c.x), select(global1.c, var_1, global1.c), false), var_1, any(vec3<bool>(global1.c.x, true, false))), true));
    let var_2 = Struct_2(~u_input.b.wz, -427f, global1.c);
    var var_3 = firstTrailingBit(~(~global1.a.x));
    return ~global0[_wgslsmith_index_u32(~(~var_0.b), 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(func_1(), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, u_input.a.x), u_input.c.wyw)), firstLeadingBit(0u));
    var var_1 = 1i;
    let var_2 = u_input.c;
    var_0 = func_4(vec4<u32>(~_wgslsmith_mod_u32(func_3(vec2<i32>(21302i, 1i), vec3<bool>(true, true, global1.c.x)), _wgslsmith_dot_vec2_u32(u_input.a.yw, u_input.c.ww)), var_2.x, 1u, max(firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], 17u)]), ~(~62536u))));
    var var_3 = Struct_1(vec2<i32>(u_input.b.x, global1.a.x), var_2.x, global1.b);
    var var_4 = vec3<u32>(_wgslsmith_mult_u32(func_4(~var_2), reverseBits(min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)], 0u))) ^ ~u_input.a.x, select(4294967295u, global0[_wgslsmith_index_u32(var_3.b, 17u)], global1.c.x), 21373u << (_wgslsmith_mult_u32(~var_3.b, ~(0u | var_2.x)) % 32u));
    let var_5 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-2441f, _wgslsmith_f_op_f32(-var_3.c))))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1000f)))))));
    global0 = array<u32, 17>();
    global2 = abs(22955i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c, global1.b, var_3.c, var_3.c) * vec4<f32>(-260f, var_3.c, 465f, global1.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-870f, -1008f, global3[_wgslsmith_index_u32(4294967295u, 8u)], 914f)))));
}

