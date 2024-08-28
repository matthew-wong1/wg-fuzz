struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(false, false, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, true, true, true, false, true, true, true, true, false);

var<private> global1: bool;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<bool>(false, false, true, false), vec2<f32>(281f, 555f), 60442i), Struct_1(vec4<bool>(false, false, false, false), vec2<f32>(1116f, -1862f), -5014i), Struct_1(vec4<bool>(true, false, false, true), vec2<f32>(1115f, 1000f), -1i), Struct_1(vec4<bool>(true, true, false, false), vec2<f32>(1625f, 653f), 23025i), Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(-295f, 2567f), -18795i), Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(348f, -526f), 2147483647i), Struct_1(vec4<bool>(false, true, true, true), vec2<f32>(-315f, -456f), i32(-2147483648)), Struct_1(vec4<bool>(false, true, true, true), vec2<f32>(1000f, 1000f), 5600i), Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(-427f, 765f), -21051i), Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(-2081f, 1485f), -15150i), Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(1000f, -339f), -41672i), Struct_1(vec4<bool>(true, true, false, false), vec2<f32>(2398f, -548f), 1i), Struct_1(vec4<bool>(true, true, true, false), vec2<f32>(1828f, 1518f), 2147483647i), Struct_1(vec4<bool>(true, false, true, true), vec2<f32>(-104f, 219f), -19656i), Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(314f, -1271f), 2147483647i), Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(947f, -1940f), i32(-2147483648)), Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(1000f, -1749f), 32000i), Struct_1(vec4<bool>(true, false, false, true), vec2<f32>(234f, 374f), i32(-2147483648)), Struct_1(vec4<bool>(true, false, true, true), vec2<f32>(-1272f, 431f), 26502i), Struct_1(vec4<bool>(true, true, true, true), vec2<f32>(792f, 981f), 0i), Struct_1(vec4<bool>(true, true, false, true), vec2<f32>(-920f, -1000f), 27534i), Struct_1(vec4<bool>(false, false, true, false), vec2<f32>(1277f, 2017f), 12316i), Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(-585f, 1177f), 44916i), Struct_1(vec4<bool>(true, false, false, true), vec2<f32>(-1785f, -367f), 2147483647i), Struct_1(vec4<bool>(true, false, false, true), vec2<f32>(701f, 393f), i32(-2147483648)), Struct_1(vec4<bool>(false, false, true, true), vec2<f32>(882f, 118f), 34618i), Struct_1(vec4<bool>(true, false, false, true), vec2<f32>(-1181f, -1280f), 61259i), Struct_1(vec4<bool>(true, false, true, true), vec2<f32>(-1009f, 851f), 2147483647i), Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(-1867f, 734f), -13995i), Struct_1(vec4<bool>(true, true, true, true), vec2<f32>(-270f, 177f), 0i), Struct_1(vec4<bool>(false, false, true, false), vec2<f32>(1521f, 155f), -4204i), Struct_1(vec4<bool>(true, false, false, false), vec2<f32>(-1150f, 1328f), i32(-2147483648)));

var<private> global3: array<f32, 7> = array<f32, 7>(256f, 1488f, 514f, 1070f, -792f, -1051f, -542f);

var<private> global4: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> f32 {
    global0 = array<bool, 30>();
    global4 = global2[_wgslsmith_index_u32(u_input.a.x, 32u)];
    global2 = array<Struct_1, 32>();
    var var_0 = global4.a.zyw;
    var var_1 = -59324i;
    return _wgslsmith_f_op_f32(f32(-1f) * -524f);
}

fn func_1(arg_0: i32, arg_1: i32) -> f32 {
    var var_0 = 4294967295u << (_wgslsmith_add_u32(3003u, u_input.a.x) % 32u);
    global3 = array<f32, 7>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(-164f)), -762f, -775f);
    global2 = array<Struct_1, 32>();
    let var_2 = _wgslsmith_f_op_f32(func_2());
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-504f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) * _wgslsmith_f_op_f32(-global4.b.x))));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    let var_0 = all(select(!global4.a.wyx, select(vec3<bool>(all(global4.a), !global4.a.x, true), global4.a.ywy, all(!global4.a)), !all(global4.a)));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global4.b)));
    global3 = array<f32, 7>();
    var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3[_wgslsmith_index_u32(9127u, 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.x)))));
    global3 = array<f32, 7>();
    return select(select(global4.a.ww, !global4.a.zy, vec2<bool>(_wgslsmith_div_f32(765f, global3[_wgslsmith_index_u32(u_input.a.x, 7u)]) > _wgslsmith_f_op_f32(-1423f + -799f), false)), vec2<bool>(true, all(global4.a.zxz)), select(global4.a.xw, !(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], false)), global4.a.x));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>) -> i32 {
    let var_0 = select(vec4<bool>(all(global4.a), func_3(global4.c).x, !global4.a.x, any(vec3<bool>(global4.a.x, func_3(2147483647i).x, arg_1.x))), select(vec4<bool>(all(select(vec2<bool>(arg_0.x, arg_1.x), arg_1, global4.a.wz)), any(global4.a.wyx), select(u_input.b <= global4.c, true, true && arg_0.x), global4.a.x), global4.a, true), u_input.a.x >= firstLeadingBit(min(0u, firstLeadingBit(u_input.a.x))));
    var var_1 = global2[_wgslsmith_index_u32(~(~(min(u_input.a.x, 4294967295u) & u_input.a.x) << (~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x << (u_input.a.x % 32u), u_input.a.x) % 32u)), 32u)];
    global0 = array<bool, 30>();
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~u_input.a.x, u_input.a.x), 30u)], !any(vec2<bool>(all(vec4<bool>(true, true, global4.a.x, false)), global0[_wgslsmith_index_u32(0u, 30u)] && global4.a.x)));
    global2 = array<Struct_1, 32>();
    var var_1 = vec3<f32>(global4.b.x, _wgslsmith_f_op_f32(func_1(countOneBits(u_input.c), 9280i)), global4.b.x);
    var var_2 = _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(~u_input.a.x, u_input.a.x, 0u)), ~vec3<u32>(~8070u, 52907u, max(65672u, 88326u)) & vec3<u32>(1u, ~_wgslsmith_div_u32(13767u, 4294967295u), u_input.a.x), _wgslsmith_mod_vec3_u32(~abs(vec3<u32>(65410u, 1u, 4294967295u)), ~(~(vec3<u32>(u_input.a.x, u_input.a.x, 0u) << (vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))))));
    let var_3 = func_4(func_3(8649i), var_0);
    var_2 = vec3<u32>(~(~(~min(24667u, 0u))), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(abs(~u_input.a), ~vec2<u32>(u_input.a.x, var_2.x)), _wgslsmith_sub_u32(134445u, u_input.a.x)), ~var_2.x);
    var var_4 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-826f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1188f)) * _wgslsmith_f_op_f32(-410f + -1042f)) + _wgslsmith_div_f32(516f, -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.b.x))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 7u)])), 12792u, -u_input.b, 1i);
}

