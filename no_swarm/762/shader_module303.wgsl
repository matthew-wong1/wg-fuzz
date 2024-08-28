struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14>;

var<private> global1: Struct_2;

var<private> global2: array<bool, 22> = array<bool, 22>(false, true, true, true, false, true, false, true, false, true, false, false, true, false, false, true, true, false, true, false, true, true);

var<private> global3: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(1794f, 923f, 453f), vec3<f32>(-2311f, -102f, 171f), vec3<f32>(481f, -320f, -657f), vec3<f32>(-521f, -630f, 1987f), vec3<f32>(1258f, 1000f, -981f), vec3<f32>(414f, -620f, -120f), vec3<f32>(-1040f, 522f, -893f), vec3<f32>(-1090f, 990f, -1000f), vec3<f32>(-1000f, -639f, -1000f), vec3<f32>(1170f, -1000f, 1000f), vec3<f32>(-1852f, -107f, 1000f), vec3<f32>(733f, -1802f, 1080f), vec3<f32>(-2003f, -131f, 689f), vec3<f32>(-1179f, -1296f, -1477f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<bool>, arg_3: vec2<f32>) -> bool {
    var var_0 = vec2<i32>(reverseBits(firstLeadingBit(10453i)), ~(-global1.c.a.x));
    global2 = array<bool, 22>();
    let var_1 = global1.c;
    let var_2 = Struct_1(global1.c.a ^ var_1.a, var_1.b);
    let var_3 = 100241i > _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_1.a.x, i32(-1i) * -u_input.d.x), max(-2147483647i, ~firstLeadingBit(var_0.x)));
    return var_3;
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: vec4<bool>) -> Struct_2 {
    global1 = Struct_2(_wgslsmith_f_op_f32(max(global1.b.x, global1.c.b)), vec4<f32>(_wgslsmith_f_op_f32(max(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.x, 1511f)))), global1.c.b, _wgslsmith_f_op_f32(global1.c.b - -374f), _wgslsmith_f_op_f32(exp2(global1.c.b))), global1.c);
    var var_0 = false;
    var var_1 = vec3<u32>(u_input.c.x, _wgslsmith_sub_u32(~select(1u, u_input.c.x, arg_1.x) << (30483u % 32u), min(1u, 1u)), u_input.c.x);
    var var_2 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(357f)))));
    var var_3 = any(arg_3.wyy);
    return Struct_2(1337f, _wgslsmith_f_op_vec4_f32(step(global1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-294f, arg_0, -715f, global1.c.b), _wgslsmith_f_op_vec4_f32(exp2(global1.b))))))), global1.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    global0 = array<vec3<f32>, 14>();
    let var_0 = _wgslsmith_add_vec3_u32(select(u_input.c << (abs(vec3<u32>(4294967295u, u_input.c.x, 1u)) % vec3<u32>(32u)), u_input.c, !select(!vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 22u)], false), !vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 22u)], global2[_wgslsmith_index_u32(u_input.c.x, 22u)]), select(vec3<bool>(false, global2[_wgslsmith_index_u32(7511u, 22u)], true), vec3<bool>(false, true, global2[_wgslsmith_index_u32(u_input.c.x, 22u)]), global2[_wgslsmith_index_u32(98748u, 22u)]))), select(countOneBits(vec3<u32>(u_input.c.x, min(u_input.c.x, 0u), u_input.c.x)), u_input.c | u_input.c, !((arg_0.c.a.x >= arg_1.a.x) | any(vec4<bool>(true, true, false, true)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.b) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b, global1.a, -1354f, global1.a), arg_0.b, global2[_wgslsmith_index_u32(u_input.c.x, 22u)])))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global1.b)))));
    let var_2 = arg_2;
    var var_3 = ~u_input.c;
    return 21526i & ((i32(-1i) * -74178i) ^ _wgslsmith_div_i32(select(abs(2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c.a.x, -1i), vec2<i32>(arg_0.c.a.x, -2147483647i)), global2[_wgslsmith_index_u32(min(var_0.x, 58242u), 22u)]), -1i));
}

fn func_1() -> i32 {
    global2 = array<bool, 22>();
    return func_4(func_3(global1.c.b, select(vec2<bool>(true, true), !(!vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 22u)])), !vec2<bool>(global2[_wgslsmith_index_u32(0u, 22u)], false)), vec2<bool>(true, true), vec4<bool>(false, all(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], true)), any(vec2<bool>(global2[_wgslsmith_index_u32(0u, 22u)], true)) & func_2(u_input.c, u_input.c.x, vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 22u)], false, global2[_wgslsmith_index_u32(u_input.c.x, 22u)]), vec2<f32>(-233f, -1752f)), !global2[_wgslsmith_index_u32(~u_input.c.x, 22u)])), global1.c, Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1338f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b + global1.b) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-936f, global1.b.x, -436f, -563f), global1.b))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global1.c.b, 430f, -118f, -427f), vec4<f32>(global1.c.b, 600f, -699f, global1.c.b))))), global1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(-func_1());
    var var_1 = ~vec4<u32>(u_input.c.x << (0u % 32u), ~0u, countOneBits(1u), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(58945u, 33199u, 35609u), vec3<u32>(1u, u_input.c.x, u_input.c.x)) >> (45196u % 32u)));
    var var_2 = -abs(2147483647i) >> (var_1.x % 32u);
    var var_3 = !global2[_wgslsmith_index_u32(var_1.x, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(countOneBits(1u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.c.x, 47391u, var_1.x)), vec3<u32>(~0u, 4294967295u & u_input.c.x, firstLeadingBit(0u)))), vec2<u32>(_wgslsmith_div_u32(u_input.c.x, ~u_input.c.x), 26840u) ^ u_input.c.yy, vec3<i32>(global1.c.a.x, -select(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, u_input.d.x), vec3<i32>(-21319i, -28725i, var_0)), ~(-14851i), !global2[_wgslsmith_index_u32(0u, 22u)]), global1.c.a.x << (u_input.c.x % 32u)), -1i);
}

