struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 15>;

var<private> global1: vec3<f32> = vec3<f32>(1395f, -1163f, 417f);

var<private> global2: vec2<f32>;

var<private> global3: Struct_1 = Struct_1(vec2<f32>(-1000f, -1578f), vec3<f32>(1000f, -1520f, 651f), vec4<bool>(true, false, true, false));

var<private> global4: u32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a)) - _wgslsmith_div_vec2_f32(vec2<f32>(-2374f, 542f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(691f, global2.x), global1.xy)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, 1457f, _wgslsmith_f_op_f32(f32(-1f) * -1139f)), _wgslsmith_f_op_vec3_f32(-global3.b))), global3.c);
    global2 = vec2<f32>(_wgslsmith_f_op_f32(global3.b.x + -552f), _wgslsmith_f_op_f32(step(global2.x, -744f)));
    global2 = _wgslsmith_f_op_vec2_f32(max(global3.b.xx, vec2<f32>(1685f, global2.x)));
    var var_0 = reverseBits(~_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.a, u_input.c.x, 12178u, u_input.c.x)), ~select(vec4<u32>(46501u, 1u, 4294967295u, u_input.c.x), vec4<u32>(u_input.a, u_input.c.x, u_input.a, 29144u), global3.c)));
    var var_1 = Struct_3(global3.b.zy, !vec4<bool>((u_input.e ^ 1i) > min(u_input.e, u_input.b.x), global3.c.x, _wgslsmith_div_f32(400f, 627f) >= global2.x, global3.c.x), global3.c.zy);
    return countOneBits(4294967295u);
}

fn func_2() -> bool {
    let var_0 = global3.c.wzz;
    var var_1 = var_0.x;
    var var_2 = u_input.c;
    global3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), 986f), _wgslsmith_f_op_vec3_f32(step(global3.b, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), global3.b.x))), !(!vec4<bool>(u_input.e < u_input.b.x, all(var_0.yx), true, true)));
    global4 = abs(abs(_wgslsmith_mod_u32(func_3(), 1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 39334u), u_input.c) % 32u))));
    return any(vec2<bool>(true, -1122f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + -947f) + 919f)));
}

fn func_1() -> f32 {
    global1 = global3.b;
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global3.b.yz * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1476f, global2.x)))))), global3.b, vec4<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global2.x)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x))), -(~(-77252i)) > ~u_input.d, any(!global0[_wgslsmith_index_u32(u_input.a, 15u)]) | global3.c.x, global3.c.x | global3.c.x));
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global1.zx))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b.x, 558f) * vec2<f32>(global3.b.x, global1.x)) + _wgslsmith_f_op_vec2_f32(-global3.a)))), vec4<bool>(true, func_2() | true, !global3.c.x, ~(~9676u) > (u_input.c.x << (u_input.a % 32u))), !select(vec2<bool>(global1.x <= global1.x, all(vec4<bool>(false, global3.c.x, global3.c.x, true))), select(global3.c.wz, global3.c.yy, true), vec2<bool>(global2.x == global1.x, all(vec3<bool>(true, global3.c.x, global3.c.x)))));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x * -769f) + global2.x), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1925f - global2.x) * _wgslsmith_f_op_f32(round(-625f)))), _wgslsmith_f_op_vec3_f32(abs(global3.b))) * global3.b);
    let var_1 = abs(2147483647i);
    return global1.x;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_4 {
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-964f, -1327f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.c.x, global1.x), vec2<f32>(arg_0.c.x, global2.x))), _wgslsmith_f_op_vec2_f32(select(arg_1.c.yy, vec2<f32>(1021f, global1.x), global3.c.x)))), arg_1.c.xy, global3.c.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global3.b), vec3<f32>(_wgslsmith_f_op_f32(243f * arg_0.a), _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-global3.b.x)))))), !(!select(global3.c, select(vec4<bool>(false, global3.c.x, global3.c.x, global3.c.x), vec4<bool>(false, true, true, global3.c.x), vec4<bool>(false, true, global3.c.x, true)), global3.c.x & false)));
    global0 = array<vec4<bool>, 15>();
    var var_0 = Struct_3(global1.xz, vec4<bool>(global3.c.x, 75490u < u_input.a, !global3.c.x, false), !(!global3.c.xx));
    let var_1 = u_input.b;
    global1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) * _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(914f - _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(global3.a.x + var_0.a.x))))), -412f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1676f - 1464f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(579f, arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1157f)) * global1.x)));
    return Struct_4(-835f, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global3.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.a)), arg_1.c.x), _wgslsmith_f_op_f32(select(1000f, -847f, global3.c.x))))), Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_0.a - arg_0.c.xy), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.c.x, arg_0.a))))))), select(vec4<bool>(global1.x <= 504f, true, true, arg_1.b <= arg_1.b), !var_0.b, true), select(!select(var_0.c, vec2<bool>(true, global3.c.x), vec2<bool>(true, true)), !(!vec2<bool>(var_0.c.x, true)), func_2())), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 15>();
    let var_0 = func_4(Struct_2(_wgslsmith_f_op_f32(global2.x - -1405f), i32(-1i) * -32932i, vec4<f32>(_wgslsmith_f_op_f32(select(global2.x, -1331f, false || global3.c.x)), 2202f, _wgslsmith_f_op_f32(global1.x + 231f), _wgslsmith_f_op_f32(-665f * _wgslsmith_f_op_f32(func_1())))), Struct_2(-258f, select(u_input.d, 2147483647i, true), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(-global2.x)), global3.b.x, -899f, global1.x)));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-692f, -1120f, var_0.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.x, global2.x, -339f) + global3.b)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(549f, 3033f, -1031f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.a.x, -380f, global3.b.x)))))), _wgslsmith_f_op_vec3_f32(-var_0.b)));
    let var_1 = global3.c;
    let var_2 = u_input.b.xw;
    let var_3 = -var_2.x;
    global2 = _wgslsmith_f_op_vec2_f32(-global3.a);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.b), 2570u);
}

