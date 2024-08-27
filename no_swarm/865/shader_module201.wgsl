struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24>;

var<private> global1: array<i32, 14>;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<f32>(-2206f, -918f), false, vec4<bool>(true, true, false, true), -1i), Struct_1(vec2<f32>(1000f, -1069f), true, vec4<bool>(false, false, false, true), -1i), Struct_1(vec2<f32>(499f, -114f), false, vec4<bool>(false, false, false, false), 1i), Struct_1(vec2<f32>(-883f, 454f), false, vec4<bool>(false, true, true, true), -1i), Struct_1(vec2<f32>(105f, 1000f), false, vec4<bool>(true, false, true, true), 1i), Struct_1(vec2<f32>(1000f, 1183f), true, vec4<bool>(true, false, false, true), 0i), Struct_1(vec2<f32>(-323f, -217f), false, vec4<bool>(false, true, false, true), 19437i), Struct_1(vec2<f32>(811f, 670f), false, vec4<bool>(true, true, true, true), 1i), Struct_1(vec2<f32>(639f, 134f), false, vec4<bool>(false, true, true, false), 6310i), Struct_1(vec2<f32>(789f, -149f), true, vec4<bool>(true, false, true, true), -1i), Struct_1(vec2<f32>(-1004f, 429f), true, vec4<bool>(false, true, true, false), 0i), Struct_1(vec2<f32>(-181f, 1132f), true, vec4<bool>(true, false, true, false), 0i), Struct_1(vec2<f32>(611f, 241f), false, vec4<bool>(true, false, false, true), 2147483647i), Struct_1(vec2<f32>(1632f, -1454f), true, vec4<bool>(false, false, false, false), 3610i), Struct_1(vec2<f32>(717f, 455f), false, vec4<bool>(false, true, false, true), 22026i), Struct_1(vec2<f32>(2555f, 1931f), true, vec4<bool>(false, false, true, false), 1i), Struct_1(vec2<f32>(-1167f, 1405f), true, vec4<bool>(false, false, true, false), -25802i), Struct_1(vec2<f32>(-847f, 304f), false, vec4<bool>(true, true, true, true), -5582i), Struct_1(vec2<f32>(544f, 851f), false, vec4<bool>(true, false, false, false), i32(-2147483648)), Struct_1(vec2<f32>(-146f, -1165f), true, vec4<bool>(true, false, false, false), -1i), Struct_1(vec2<f32>(-142f, -487f), true, vec4<bool>(true, false, false, true), -3202i), Struct_1(vec2<f32>(-422f, -553f), true, vec4<bool>(false, false, false, true), 1i));

var<private> global3: f32;

var<private> global4: array<Struct_3, 23>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: i32) -> f32 {
    global3 = arg_2.a.x;
    let var_0 = global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~select(1u, 1u, arg_2.b) & ~_wgslsmith_div_u32(53827u, 4294967295u), ~(~4294967295u)), 23u)];
    var var_1 = ~(-abs(arg_1.x));
    global0 = array<vec4<f32>, 24>();
    global1 = array<i32, 14>();
    return -1000f;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: i32) -> f32 {
    let var_0 = true;
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~(~3811u << (0u % 32u))), 22u)];
    let var_2 = !var_1.c.zzx;
    var var_3 = Struct_3(true, global2[_wgslsmith_index_u32(21984u, 22u)], ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 59520u), vec2<u32>(0u, 44796u)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, 28564u, abs(18108u << (0u % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(62384u, 0u), vec2<u32>(0u, 0u))), abs(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(37347u, 1u, 21163u)), 1u, firstLeadingBit(77227u), _wgslsmith_mod_u32(7023u, 1u))), -350f);
    let var_4 = vec2<u32>(53425u, var_3.c) & vec2<u32>(abs(1u), 1u);
    return _wgslsmith_f_op_f32(sign(-283f));
}

fn func_2() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, 315f)));
    let var_1 = any(vec4<bool>(true, true, any(vec2<bool>(false, false)), true)) & (_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-957f, -792f)) - _wgslsmith_f_op_f32(max(-263f, 146f))), 1000f) >= _wgslsmith_f_op_f32(sign(-151f)));
    global1 = array<i32, 14>();
    return vec3<f32>(_wgslsmith_f_op_f32(func_4(u_input.b.x, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(-1369f, vec4<i32>(-2147483647i, 0i, u_input.b.x, u_input.b.x), Struct_1(vec2<f32>(-661f, 394f), var_1, vec4<bool>(true, var_1, var_1, false), 2147483647i), global1[_wgslsmith_index_u32(2953u, 14u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(263f, vec4<i32>(u_input.b.x, global1[_wgslsmith_index_u32(1411u, 14u)], 2147483647i, global1[_wgslsmith_index_u32(0u, 14u)]), Struct_1(vec2<f32>(1383f, 550f), var_1, vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(10426u, 14u)]), global1[_wgslsmith_index_u32(41147u, 14u)])) * _wgslsmith_f_op_f32(-1823f + 563f)), _wgslsmith_f_op_f32(-1576f + _wgslsmith_f_op_f32(sign(1561f)))), _wgslsmith_dot_vec3_i32(reverseBits(firstTrailingBit(vec3<i32>(global1[_wgslsmith_index_u32(1u, 14u)], u_input.b.x, u_input.a.x))), u_input.a ^ u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -921f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(412f)) * _wgslsmith_f_op_f32(min(809f, 1808f))), var_1))), _wgslsmith_f_op_f32(f32(-1f) * -222f));
}

fn func_5(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(arg_0, 22u)];
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(round(-2157f)), countOneBits(select(vec4<i32>(arg_2.b.d, var_0.d, var_0.d, 66265i), vec4<i32>(13571i, u_input.a.x, -28546i, var_0.d), arg_2.b.c.x)), arg_2.b, ~1i)), _wgslsmith_f_op_f32(865f * arg_1.x))) < _wgslsmith_f_op_f32(func_4(-36449i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_1)) + arg_1), ~u_input.a.x));
    global3 = _wgslsmith_f_op_f32(func_3(1f, countOneBits(_wgslsmith_sub_vec4_i32(min(vec4<i32>(76569i, 2147483647i, -13379i, u_input.b.x), vec4<i32>(27542i, var_0.d, global1[_wgslsmith_index_u32(118689u, 14u)], arg_2.b.d)), vec4<i32>(var_0.d & 0i, -15926i, var_0.d, 0i))), global2[_wgslsmith_index_u32(~67107u, 22u)], ~(-33977i)));
    global0 = array<vec4<f32>, 24>();
    let var_2 = true;
    return Struct_2(arg_2.b, _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(abs(~31893u), 24u)]), vec3<bool>(select(any(vec3<bool>(true, var_0.b, true)), var_0.a.x != 565f, true), var_1, any(var_0.c)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(_wgslsmith_mult_u32(firstLeadingBit(firstTrailingBit(reverseBits(4294967295u))), 4294967295u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) - vec3<f32>(_wgslsmith_div_f32(-342f, 323f), _wgslsmith_f_op_f32(select(-1122f, 2406f, true)), _wgslsmith_f_op_f32(step(744f, -111f)))))), Struct_3(true, global2[_wgslsmith_index_u32(firstTrailingBit(~41290u), 22u)], ~(~(~4294967295u)), vec4<u32>(max(0u, ~28124u), 1u, ~(~97820u), firstTrailingBit(1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-579f * _wgslsmith_f_op_f32(func_4(10525i, vec3<f32>(1148f, -291f, -1000f), -18162i))))));
    global2 = array<Struct_1, 22>();
    global4 = array<Struct_3, 23>();
    let var_1 = var_0.c;
    global4 = array<Struct_3, 23>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.a), _wgslsmith_f_op_vec2_f32(select(var_0.a.a, var_0.a.a, var_0.c.x))))), true, vec4<bool>(!var_0.c.x, false, var_1.x, var_0.c.x && false), -_wgslsmith_sub_i32(_wgslsmith_clamp_i32(2147483647i, abs(u_input.a.x), 2147483647i), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b.x;
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -1527f);
    let var_1 = Struct_3(all(vec3<bool>(true, true, true)), func_1(), 4294967295u, vec4<u32>(reverseBits(min(min(17240u, 46178u), 39381u)), _wgslsmith_div_u32(42892u, 1u), ~1u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 17113u), 56559u)), func_1().a.x);
    let var_2 = _wgslsmith_mod_u32(var_1.d.x, max(~var_1.c, _wgslsmith_mult_u32(firstTrailingBit(var_1.d.x), 1u))) << (var_1.d.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.a.x, _wgslsmith_f_op_vec2_f32(round(var_1.b.a)), 1u, 51153u);
}

