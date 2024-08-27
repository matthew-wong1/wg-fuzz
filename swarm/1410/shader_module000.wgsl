struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(-2271i, 18921i, 26074i, i32(-2147483648)), vec4<i32>(1i, i32(-2147483648), 7198i, 6824i), vec4<i32>(11422i, 2147483647i, 2147483647i, 4644i), vec4<i32>(-57620i, 4914i, 4770i, 2147483647i), vec4<i32>(-1i, -1i, -1i, -15834i), vec4<i32>(-25972i, -26252i, i32(-2147483648), i32(-2147483648)), vec4<i32>(i32(-2147483648), 0i, -10870i, -28408i), vec4<i32>(1i, 1i, 2147483647i, -1i), vec4<i32>(5093i, 2147483647i, -1i, -1i), vec4<i32>(1i, i32(-2147483648), 0i, -74411i), vec4<i32>(-20851i, 6212i, 6428i, 2147483647i), vec4<i32>(2192i, -12829i, 41094i, -17697i), vec4<i32>(11166i, 1i, 2147483647i, 2147483647i), vec4<i32>(0i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(-21682i, 16387i, 16443i, 37814i), vec4<i32>(-32954i, -27536i, 52753i, -18381i), vec4<i32>(-15757i, 13079i, 7759i, -553i), vec4<i32>(1i, -18114i, 0i, 0i), vec4<i32>(26891i, 0i, -36533i, 27998i), vec4<i32>(2147483647i, 11006i, 11624i, i32(-2147483648)), vec4<i32>(13452i, -53968i, -55223i, 0i), vec4<i32>(-26519i, 1i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, 1i, i32(-2147483648), 1i), vec4<i32>(i32(-2147483648), -19658i, 0i, 0i));

var<private> global1: vec3<f32>;

var<private> global2: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(1u, 91365u), vec2<u32>(77492u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(2681u, 1u), vec2<u32>(72592u, 20465u));

var<private> global3: array<Struct_2, 31>;

var<private> global4: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(129712u, 46296u, 0u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(6157u, 1u, 1u), vec3<u32>(24566u, 11614u, 1965u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(65986u, 1u, 18987u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(14212u, 60825u, 1u), vec3<u32>(19299u, 62536u, 4294967295u), vec3<u32>(0u, 0u, 1u), vec3<u32>(0u, 4294967295u, 12507u), vec3<u32>(1u, 25374u, 45557u), vec3<u32>(12892u, 52693u, 37695u), vec3<u32>(0u, 33198u, 47054u), vec3<u32>(18762u, 9294u, 36334u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(0u, 0u, 1u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = Struct_3(global3[_wgslsmith_index_u32(4294967295u, 31u)], arg_1, ~vec3<i32>(min(2147483647i, 0i), arg_1.a.x, -1i), arg_0.b);
    let var_1 = var_0.a;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2757f, -1256f)))), _wgslsmith_f_op_f32(1105f + 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a.a.x), arg_0.a.a.x)), _wgslsmith_div_f32(511f, _wgslsmith_f_op_f32(global1.x + global1.x)), firstLeadingBit(-1i) < -var_0.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * arg_0.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1173f, var_0.a.a.x)))));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -195f))), 246f), _wgslsmith_f_op_f32(ceil(var_2.x)), -1000f));
    global2 = array<vec2<u32>, 5>();
    return reverseBits(countOneBits(var_0.c.xx));
}

fn func_2() -> i32 {
    global0 = array<vec4<i32>, 24>();
    global2 = array<vec2<u32>, 5>();
    let var_0 = Struct_1(-func_3(Struct_3(global3[_wgslsmith_index_u32(1u, 31u)], Struct_1(u_input.a.xw), firstTrailingBit(u_input.a.zyw), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x))), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x))));
    var var_1 = 1788f;
    global1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1534f, -1545f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, -1043f) * vec3<f32>(global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -1721f)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 535f, global1.x) * vec3<f32>(795f, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(236f, global1.x, 210f))))))), true))));
    return ~_wgslsmith_mult_i32(_wgslsmith_div_i32(var_0.a.x, ~reverseBits(u_input.a.x)), min(var_0.a.x, var_0.a.x));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: bool, arg_3: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global1.xz);
    var var_1 = arg_0.x;
    global4 = array<vec3<u32>, 17>();
    global0 = array<vec4<i32>, 24>();
    let var_2 = Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.c.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(~3865u, u_input.e.x >> (49152u % 32u)), countOneBits(_wgslsmith_clamp_u32(u_input.e.x, 1u, u_input.d)))), 31u)], Struct_1(max(vec2<i32>(_wgslsmith_mod_i32(arg_0.x, arg_0.x), arg_0.x), countOneBits(_wgslsmith_mod_vec2_i32(arg_0.xx, vec2<i32>(2770i, u_input.a.x))))), vec3<i32>(-40482i, arg_3, -17770i) | abs(vec3<i32>(i32(-1i) * -58334i, arg_0.x, max(1i, arg_3))), Struct_1(~arg_0.yy));
    return var_2.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: i32) -> Struct_2 {
    global3 = array<Struct_2, 31>();
    let var_0 = Struct_4(~(~30151u), arg_0.a.x != -478f, Struct_1(arg_2.xx), Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.zx, u_input.a.yx), vec2<i32>(1i, 1i))));
    global2 = array<vec2<u32>, 5>();
    var var_1 = false;
    global4 = array<vec3<u32>, 17>();
    return global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c.x, ~(~(~var_0.a))), ~global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(var_0.a, 77422u, true), _wgslsmith_div_u32(u_input.e.x, u_input.e.x), ~64952u), 17u)] ^ _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a, 794u, 7444u), vec3<u32>(31391u, 0u, var_0.a), vec3<u32>(var_0.a, 4294967295u, 13958u)), global4[_wgslsmith_index_u32(~4294967295u, 17u)]), global4[_wgslsmith_index_u32(firstTrailingBit(var_0.a << (1u % 32u)), 17u)])), 31u)];
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_4, arg_3: f32) -> vec4<f32> {
    global4 = array<vec3<u32>, 17>();
    var var_0 = func_5(func_4(-u_input.a.yyx, arg_3, false, ~func_2()), arg_0, abs(select(abs(vec3<i32>(-7610i, 43520i, arg_2.c.a.x) & vec3<i32>(arg_2.d.a.x, -2147483647i, 1i)), u_input.a.yxw, vec3<bool>(all(vec4<bool>(arg_2.b, false, arg_2.b, false)), false, arg_2.b))), -abs(~reverseBits(u_input.a.x)));
    global4 = array<vec3<u32>, 17>();
    let var_1 = u_input.a.xyy;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-245f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-181f - var_0.a.x))))))) - 347f);
    return _wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 975f, 2435f)), arg_0)), vec4<f32>(_wgslsmith_f_op_f32(step(-751f, global1.x)), -213f, -1000f, _wgslsmith_f_op_f32(max(123f, var_0.a.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(125f - 1000f)) - 135f)));
    var var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(i32(-1i) * -u_input.a.x, _wgslsmith_mult_i32(46468i, u_input.a.x) << (firstTrailingBit(u_input.d) % 32u)), countOneBits(firstTrailingBit(vec2<i32>(-31651i, u_input.a.x))), abs(u_input.a.yx)));
    var var_2 = abs(_wgslsmith_div_i32(~firstTrailingBit(24770i) & (~var_1.a.x & (2147483647i << (u_input.b.x % 32u))), var_1.a.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.zx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.x, -2095f))) - _wgslsmith_f_op_vec2_f32(-global1.zx)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global1.x) - vec2<f32>(global1.x, global1.x))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.x, 738f, 435f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1373f + 315f), _wgslsmith_f_op_f32(f32(-1f) * -931f), _wgslsmith_f_op_f32(f32(-1f) * -1032f), _wgslsmith_f_op_f32(-2206f - global1.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec4<f32>(1273f, var_3.x, global1.x, global1.x), 1040f, Struct_4(0u, true, Struct_1(var_1.a), Struct_1(vec2<i32>(-21797i, 1i))), 347f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-205f, _wgslsmith_f_op_f32(-345f - global1.x), _wgslsmith_f_op_f32(min(-1248f, -1507f)), -995f))));
    global4 = array<vec3<u32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2584f, 801f, global1.x, -920f), vec4<f32>(var_4.x, 1611f, 1461f, 813f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-260f, 752f, -437f, var_3.x))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_1(vec4<f32>(global1.x, 508f, 550f, 697f), var_3.x, Struct_4(4294967295u, true, Struct_1(vec2<i32>(-18325i, 7065i)), Struct_1(var_1.a)), -1116f)).x, var_3.x)), var_3.x, 1000f))), ~(~(~(~u_input.c.x))), var_1.a.x << (abs(~_wgslsmith_clamp_u32(u_input.b.x, u_input.d, 74597u)) % 32u), ~(_wgslsmith_add_u32(countOneBits(u_input.b.x), u_input.d) << ((u_input.d | (1u << (u_input.b.x % 32u))) % 32u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_4.wyz * vec3<f32>(-629f, -405f, 486f)) - vec3<f32>(var_4.x, -1143f, -709f)), _wgslsmith_f_op_vec3_f32(-var_4.xxz)))));
}

