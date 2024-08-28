struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 22>;

var<private> global2: vec4<bool>;

var<private> global3: array<vec4<bool>, 5>;

var<private> global4: Struct_1 = Struct_1(696f, vec2<i32>(4450i, 1i), vec2<f32>(260f, 290f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<u32>) -> vec3<bool> {
    global2 = global3[_wgslsmith_index_u32(58951u, 5u)];
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(global4.c.x)), ~(~countOneBits(vec2<i32>(global4.b.x, global0.b.x))) >> (vec2<u32>(~min(arg_0.x, arg_0.x), arg_0.x) % vec2<u32>(32u)), _wgslsmith_div_vec2_f32(vec2<f32>(-536f, global0.c.x), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1741f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1065f)))));
    var var_1 = Struct_1(269f, ~var_0.b, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(3148f, global4.c.x)), var_0.c.x) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c + global0.c) * var_0.c)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(global0.c, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(585f, -1000f))), all(global2.www))))))));
    var var_2 = -(countOneBits(vec2<i32>(-11764i, reverseBits(u_input.a.x))) | abs(global4.b));
    let var_3 = !all(vec2<bool>(!(global2.x && global1[_wgslsmith_index_u32(arg_0.x, 22u)]), true));
    return select(!global2.yxw, global2.ywz, !(!any(!vec3<bool>(true, global2.x, true))));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3;
    let var_1 = arg_3;
    global3 = array<vec4<bool>, 5>();
    var var_2 = Struct_1(1455f, arg_3.b, vec2<f32>(global0.a, -727f));
    var var_3 = arg_3;
    return 71766u;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(global0.c.x, global4.c.x)), ~abs(select(global0.b, vec2<i32>(0i, 13559i) & vec2<i32>(u_input.a.x, -2147483647i), false)), arg_3.xz);
    var var_1 = select(global3[_wgslsmith_index_u32(func_4(!func_3(vec2<u32>(1u, 1u)), any(!global3[_wgslsmith_index_u32(33044u, 5u)]) && all(vec2<bool>(true, global2.x)), _wgslsmith_div_u32(0u, _wgslsmith_mult_u32(~4294967295u, select(1u, 1u, true))), arg_1), 5u)], select(vec4<bool>(global2.x, !any(global2.wzx), true, true), !global3[_wgslsmith_index_u32(min(1u, _wgslsmith_div_u32(47083u, 3564u)), 5u)], !(!any(vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(0u, 22u)])))), global3[_wgslsmith_index_u32(26004u << (0u % 32u), 5u)]);
    let var_2 = 33914u;
    let var_3 = arg_1;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, arg_3.x, -309f, arg_1.c.x) + vec4<f32>(814f, 403f, -841f, -682f)) * vec4<f32>(arg_3.x, 623f, var_0.a, -914f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1367f, 959f, 933f, global0.c.x), vec4<f32>(1012f, arg_3.x, -461f, global0.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(floor(477f)), 388f, arg_2.c.x, _wgslsmith_f_op_f32(floor(-115f))))));
    return select(vec4<bool>(any(vec2<bool>(!global1[_wgslsmith_index_u32(1u, 22u)], false)), true, true, all(global3[_wgslsmith_index_u32(abs(countOneBits(21643u)), 5u)])), vec4<bool>(false, true, 107086u > firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 0u, var_2), vec3<u32>(var_2, 14493u, 0u))), var_2 >= min(~7572u, ~1u)), (func_4(global2.xwz, global1[_wgslsmith_index_u32(func_4(var_1.xyz, global1[_wgslsmith_index_u32(4294967295u, 22u)], 88647u, Struct_1(global0.a, global0.b, var_3.c)), 22u)], var_2, arg_1) < 53903u) & (arg_0 == ~global0.b.x));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: i32) -> bool {
    let var_0 = vec2<bool>(true | (any(vec2<bool>(false, global2.x)) | any(func_2(arg_2, Struct_1(502f, u_input.a.xy, vec2<f32>(1601f, -1000f)), Struct_1(arg_0.x, vec2<i32>(global0.b.x, 53590i), arg_0), vec3<f32>(arg_0.x, global0.a, global4.c.x)))), !global2.x);
    global1 = array<bool, 22>();
    global1 = array<bool, 22>();
    let var_1 = vec3<u32>(22573u, _wgslsmith_clamp_u32(1u, 0u << (~_wgslsmith_dot_vec4_u32(vec4<u32>(280u, 5406u, 4294967295u, 60863u), vec4<u32>(1u, 2956u, 36237u, 1u)) % 32u), max(23875u, _wgslsmith_div_u32(54999u, 30495u))), (~(~62066u) << (_wgslsmith_mult_u32(~37957u, func_4(global2.wxw, true, 0u, Struct_1(-1842f, vec2<i32>(-16714i, global4.b.x), vec2<f32>(arg_1.x, 391f)))) % 32u)) >> (115893u % 32u));
    let var_2 = var_1.x ^ 38030u;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<bool>(true, func_1(global4.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.c * global4.c)), global0.c, !global2.xw)), _wgslsmith_clamp_i32(21362i, u_input.a.x, -16910i)), true, _wgslsmith_f_op_f32(-global0.c.x) > _wgslsmith_div_f32(617f, global0.c.x));
    let var_0 = Struct_1(global0.c.x, global4.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-346f, global4.c.x), vec2<f32>(global0.a, global0.c.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a, global4.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.c) * global4.c))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.a, global0.a) * vec2<f32>(global0.a, global4.a)))));
    let var_1 = var_0;
    global1 = array<bool, 22>();
    global4 = var_1;
    var var_2 = var_0;
    let var_3 = global4.b;
    var var_4 = (reverseBits(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(58741u, 1u, 4819u, 1u), vec4<u32>(35895u, 16811u, 7394u, 17031u), vec4<u32>(4294967295u, 1u, 0u, 17070u)), vec4<u32>(1u, 1u, 0u, 4294967295u))) << (~(~countOneBits(vec4<u32>(4294967295u, 25822u, 10678u, 37619u))) % vec4<u32>(32u))) << (reverseBits(vec4<u32>(45469u, ~1u, 0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(5773u, 0u, 1u), vec3<u32>(1u, 1u, 1u)))) % vec4<u32>(32u));
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.a, _wgslsmith_f_op_f32(ceil(-494f)), _wgslsmith_f_op_f32(trunc(var_5.c.x)))))));
}

