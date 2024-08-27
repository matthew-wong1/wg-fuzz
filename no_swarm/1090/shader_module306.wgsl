struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1259f, -1563f, -1000f, 821f);

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(1065f, vec3<f32>(775f, 942f, 1088f)), Struct_1(112f, vec3<f32>(980f, 1148f, -1023f)), Struct_1(-1007f, vec3<f32>(688f, 579f, -389f)), Struct_1(-1000f, vec3<f32>(-1133f, 1659f, 1065f)), Struct_1(-397f, vec3<f32>(-187f, -709f, 903f)), Struct_1(1522f, vec3<f32>(-677f, -1030f, 645f)), Struct_1(729f, vec3<f32>(1219f, 736f, -712f)), Struct_1(838f, vec3<f32>(134f, -468f, -1963f)), Struct_1(1339f, vec3<f32>(-631f, 1000f, 1148f)), Struct_1(-530f, vec3<f32>(-351f, 979f, 643f)), Struct_1(-422f, vec3<f32>(-110f, 1000f, 720f)), Struct_1(-146f, vec3<f32>(1614f, 999f, 972f)), Struct_1(-238f, vec3<f32>(1727f, -177f, -700f)), Struct_1(-772f, vec3<f32>(-2012f, -398f, -710f)), Struct_1(-147f, vec3<f32>(1169f, -254f, 2473f)), Struct_1(1241f, vec3<f32>(-1382f, -860f, 305f)), Struct_1(452f, vec3<f32>(1174f, 1519f, -128f)));

var<private> global2: array<Struct_2, 32>;

var<private> global3: vec4<f32> = vec4<f32>(-762f, -565f, 695f, 372f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<u32>) -> u32 {
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -276f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.x * 957f))), _wgslsmith_f_op_f32(-467f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.x + global3.x))))));
    let var_0 = true;
    let var_1 = vec2<u32>(arg_2.a | _wgslsmith_sub_u32(arg_2.a, _wgslsmith_div_u32(_wgslsmith_sub_u32(arg_3.x, arg_3.x), 1u)), arg_3.x);
    global2 = array<Struct_2, 32>();
    global1 = array<Struct_1, 17>();
    return arg_1.a.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_2) -> u32 {
    global2 = array<Struct_2, 32>();
    global2 = array<Struct_2, 32>();
    let var_0 = 1i;
    let var_1 = arg_1;
    var var_2 = vec3<u32>(~arg_2, func_3(!(!vec3<bool>(arg_0.x, arg_0.x, false)), Struct_3(global2[_wgslsmith_index_u32(u_input.c.x, 32u)], u_input.c), Struct_2(u_input.b), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 67356u, u_input.a), vec3<u32>(arg_2, arg_3.a, 1u)), ~4294967295u, firstTrailingBit(arg_2))), arg_2);
    return 1u;
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: f32) -> Struct_3 {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(min(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2 + 123f), global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), global3.x, 874f, global3.x);
    var var_0 = _wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, ~max(2147483647i, firstTrailingBit(12344i))), (0i >> (~u_input.c.x % 32u)) >> (~1u % 32u));
    var var_1 = global0.wz;
    let var_2 = ~(~arg_1.yx);
    let var_3 = Struct_2(firstTrailingBit(select(~_wgslsmith_add_u32(28517u, 1u), 45620u, all(!vec4<bool>(arg_0, true, false, true)))));
    return Struct_3(var_3, arg_1.zy);
}

fn func_1(arg_0: Struct_2) -> vec4<i32> {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1444f), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-1000f + global3.x), global0.x, -336f);
    let var_0 = func_4(false, ~_wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(arg_0.a), 37414u, func_2(vec2<bool>(true, false), vec4<f32>(global0.x, -150f, global0.x, -2985f), 37751u, Struct_2(4180u)), 1u | arg_0.a), vec4<u32>(max(0u, 4638u), arg_0.a, arg_0.a, 1u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1000f, global0.x)))) - -248f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1243f) + _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(global3.x - global0.x)))), any(vec3<bool>(true, true, true)))));
    var var_1 = vec4<f32>(-503f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.x))) * -634f) + _wgslsmith_f_op_f32(select(-644f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.x)) * _wgslsmith_div_f32(2001f, global3.x)), (-2147483647i << (var_0.a.a % 32u)) >= _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -23148i), vec2<i32>(77246i, 1i))))), 751f, -1203f);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -631f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + global0.x))), -1063f)), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -566f), true)), -212f);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - -1298f) * _wgslsmith_f_op_f32(-global3.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2190f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x - var_1.x), _wgslsmith_f_op_f32(floor(-1274f))), _wgslsmith_f_op_f32(ceil(-973f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1449f, global0.x))))));
    return vec4<i32>(-(~23028i), min(firstLeadingBit(-1i), 1i), -1i, -13562i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(u_input.d.x, 17u)];
    let var_1 = global1[_wgslsmith_index_u32(50488u, 17u)];
    var var_2 = u_input.a;
    var_2 = u_input.d.x;
    global1 = array<Struct_1, 17>();
    let var_3 = !vec4<bool>(true & all(vec3<bool>(true, true, true)), true, _wgslsmith_dot_vec4_i32(vec4<i32>(17601i, 13358i, -41021i, -2147483647i), func_1(global2[_wgslsmith_index_u32(0u, 32u)])) <= (1i >> ((u_input.c.x << (1u % 32u)) % 32u)), false);
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-628f - -1000f), global0.x, global3.x, 459f)), vec4<f32>(_wgslsmith_f_op_f32(step(548f, 640f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_1.a)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a, -555f)) + var_0.b.x)), _wgslsmith_f_op_f32(sign(1460f)), _wgslsmith_f_op_f32(round(global3.x))));
    let var_4 = var_3.x && !(!((global0.x != global0.x) == true));
    global3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global3.x, 329f, 1850f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, var_0.a, global0.x))), vec4<f32>(400f, 354f, _wgslsmith_f_op_f32(f32(-1f) * -590f), global0.x))), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(910f + 1443f), _wgslsmith_div_f32(-666f, -620f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_1.b.x, var_1.b.x, -1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_clamp_vec2_i32(vec2<i32>(24248i, 24062i), vec2<i32>(0i, 1i), vec2<i32>(-25961i, 2147483647i)) & abs(vec2<i32>(-15813i, -41084i))) ^ vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -2147483647i, ~4675i), 2147483647i), _wgslsmith_clamp_i32(0i, firstTrailingBit(_wgslsmith_sub_i32(-34901i, 0i)) & _wgslsmith_mult_i32(-35601i, max(1557i, -8454i)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(min(-2147483647i, -29628i), 1i), ~1i)), 1361f);
}

