struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(-1i, -38688i, -9386i), vec3<i32>(-27553i, 1i, -1i), vec3<i32>(-82063i, 1i, 0i), vec3<i32>(-72465i, i32(-2147483648), 1i), vec3<i32>(1i, -9063i, 0i), vec3<i32>(-9965i, 1i, -12718i), vec3<i32>(i32(-2147483648), 17349i, i32(-2147483648)), vec3<i32>(-6656i, i32(-2147483648), 33588i), vec3<i32>(0i, 21747i, -6186i), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec3<i32>(-11792i, 22797i, 24201i), vec3<i32>(27527i, 0i, -10394i), vec3<i32>(28647i, -47579i, -40159i), vec3<i32>(19793i, 0i, -3983i), vec3<i32>(23449i, -25632i, -3281i), vec3<i32>(-1i, -3018i, 5767i), vec3<i32>(-22002i, 0i, 25452i), vec3<i32>(0i, 21874i, 2147483647i));

var<private> global2: vec3<u32>;

var<private> global3: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(-1027f, 1687f), vec2<f32>(-120f, 1600f), vec2<f32>(1808f, 118f), vec2<f32>(-1157f, 327f), vec2<f32>(-1489f, 510f), vec2<f32>(-1116f, 516f), vec2<f32>(-128f, -1165f), vec2<f32>(514f, 1000f), vec2<f32>(-584f, 1597f), vec2<f32>(1285f, 269f), vec2<f32>(1000f, 1338f), vec2<f32>(624f, -938f), vec2<f32>(2567f, -1160f), vec2<f32>(1681f, 1268f), vec2<f32>(-1000f, 686f), vec2<f32>(-953f, 1058f), vec2<f32>(-208f, 1577f), vec2<f32>(-399f, -297f), vec2<f32>(-251f, 306f), vec2<f32>(367f, -808f), vec2<f32>(275f, -293f), vec2<f32>(289f, -630f), vec2<f32>(-1580f, -1230f), vec2<f32>(439f, -1000f), vec2<f32>(-1050f, 1037f));

var<private> global4: array<vec2<u32>, 17>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: bool) -> vec2<bool> {
    let var_0 = arg_1;
    var var_1 = true;
    let var_2 = Struct_2(~(~_wgslsmith_mult_vec3_u32(u_input.a, u_input.a)) | ~u_input.a);
    return vec2<bool>(any(vec4<bool>(arg_2, arg_2, false && any(arg_1.yy), _wgslsmith_sub_i32(u_input.b, arg_0.x) == -2147483647i)), true);
}

fn func_3() -> f32 {
    global4 = array<vec2<u32>, 17>();
    global4 = array<vec2<u32>, 17>();
    let var_0 = Struct_2(firstLeadingBit(_wgslsmith_add_vec3_u32(u_input.a >> (_wgslsmith_mod_vec3_u32(u_input.a, u_input.a) % vec3<u32>(32u)), min(u_input.a, _wgslsmith_mult_vec3_u32(vec3<u32>(5570u, 4294967295u, 0u), u_input.a)))));
    global0 = abs(vec2<i32>(-55968i, global0.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(global2.x, 25u)]);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x + var_1.x), var_1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 584f)))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1056f * -1000f), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(309f - -1000f), _wgslsmith_f_op_f32(239f * -623f)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-503f, -161f, -669f, -183f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(select(-734f, 385f, true)), _wgslsmith_f_op_f32(min(-140f, -516f)), -1600f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-993f, -1390f, false)), _wgslsmith_div_f32(-222f, 356f), -1373f, _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(242f, 1000f, -1544f, 439f)), vec4<f32>(392f, -992f, -1799f, 1000f), vec4<bool>(true, true, true, true))))));
    global3 = array<vec2<f32>, 25>();
    let var_1 = Struct_1(!(!vec4<bool>(var_0.x != var_0.x, true, any(vec3<bool>(true, false, false)), true)), max(firstLeadingBit(global1[_wgslsmith_index_u32(~0u, 18u)]), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.b, u_input.b, 32807i)) & abs(global1[_wgslsmith_index_u32(69807u, 18u)]), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(21431u, 18u)]), vec3<i32>(-31499i, 12630i, u_input.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1024f, 894f, 475f, var_0.x)), vec4<f32>(-458f, 214f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1706f, var_0.x, -343f, -478f)))), any(vec2<bool>(true, true)), select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true)), vec3<bool>(true, func_1(global1[_wgslsmith_index_u32(50674u, 18u)], vec3<bool>(false, true, true), true).x & true, true), vec3<bool>(true, true, true)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -844f) - _wgslsmith_f_op_f32(abs(var_1.c.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1110f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1000f, var_1.c.x)))) + var_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(967f + var_1.c.x)), _wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_f_op_f32(round(var_0.x))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(var_1.c, var_1.c, true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, 194f, -1046f, var_1.c.x)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-518f, 1365f, var_0.x, var_0.x), vec4<f32>(-1638f, -183f, var_0.x, 1336f)))))));
    return Struct_2(select(u_input.a, vec3<u32>(~(global2.x >> (u_input.a.x % 32u)), global2.x, min(54079u, ~u_input.a.x)), all(vec2<bool>(true, true))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<u32>) -> vec2<bool> {
    var var_0 = u_input.b;
    global3 = array<vec2<f32>, 25>();
    let var_1 = Struct_3(~arg_1.a, select(1i, select(-(i32(-1i) * -1i), 57063i, true), true), arg_1.c, Struct_2(vec3<u32>(global2.x, _wgslsmith_sub_u32(arg_0.a.x, _wgslsmith_mod_u32(35084u, arg_0.a.x)), abs(arg_1.c.a.x | 0u))));
    global3 = array<vec2<f32>, 25>();
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 4294967295u, arg_2.x), var_1.d.a), max(var_1.d.a.x, arg_0.a.x)) >> (4294967295u % 32u), 0u), 18u)];
    return select(select(vec2<bool>(true, true), select(func_1(~global1[_wgslsmith_index_u32(1u, 18u)], vec3<bool>(true, true, true), select(true, false, true)), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), true), true || select(false, false, false)), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)))), vec2<bool>(true, true), true || all(vec3<bool>(true, true, any(vec2<bool>(false, true)))));
}

fn func_5(arg_0: u32, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = ~1u;
    global2 = select(_wgslsmith_div_vec3_u32(~(~abs(vec3<u32>(0u, arg_0, 90449u))), ~(~(~u_input.a))), reverseBits(u_input.a), arg_1.x);
    var var_1 = u_input.a.yz;
    var var_2 = func_2();
    global2 = var_2.a & firstTrailingBit(_wgslsmith_clamp_vec3_u32(var_2.a, vec3<u32>(_wgslsmith_div_u32(0u, 1u), 11267u, 35373u), ~(vec3<u32>(1u, global2.x, u_input.a.x) << (vec3<u32>(108825u, var_0, 12287u) % vec3<u32>(32u)))));
    return Struct_1(select(select(!(!vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)), vec4<bool>(true, false, arg_1.x, 70478u > var_2.a.x), !(!arg_1.x)), !vec4<bool>(false, global2.x == 7935u, arg_1.x && false, select(arg_1.x, arg_1.x, arg_1.x)), select(vec4<bool>(false, func_4(Struct_2(vec3<u32>(972u, 4294967295u, u_input.a.x)), Struct_3(vec4<u32>(1u, var_2.a.x, u_input.a.x, 14659u), global0.x, Struct_2(var_2.a), Struct_2(vec3<u32>(32148u, 0u, 43317u))), vec3<u32>(4604u, var_2.a.x, global2.x)).x, var_2.a.x <= 4294967295u, false), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), !vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), !vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)), !(arg_1.x | false))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, var_0), 18u)], vec4<f32>(-1000f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1610f)) * 936f), _wgslsmith_f_op_f32(min(-1312f, _wgslsmith_f_op_f32(351f - _wgslsmith_f_op_f32(-1719f - -383f))))), -7158i >= _wgslsmith_dot_vec2_i32(abs(reverseBits(vec2<i32>(1i, u_input.b))), ~vec2<i32>(-38911i, 0i)), !(!select(select(vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(false, arg_1.x, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), !vec3<bool>(true, false, arg_1.x), !vec3<bool>(arg_1.x, true, arg_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.a.x, select(!select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), false), func_1(-global1[_wgslsmith_index_u32(~0u, 18u)], vec3<bool>(true, true, true), true), func_4(func_2(), Struct_3(vec4<u32>(u_input.a.x, 33912u, global2.x, 0u), 1i, Struct_2(vec3<u32>(4294967295u, global2.x, global2.x)), Struct_2(u_input.a)), u_input.a)));
    let var_1 = _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a.x, ~43755u ^ countOneBits(global2.x))), vec2<u32>(countOneBits(countOneBits(~u_input.a.x)), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a.x, 0u) & 10763u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, global2.x, 4294967295u) ^ vec4<u32>(60661u, global2.x, global2.x, global2.x), ~vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x)))));
    let var_2 = ~vec4<i32>(2147483647i, u_input.b >> (1u % 32u), 1i, ~firstTrailingBit(firstLeadingBit(var_0.b.x)));
    global4 = array<vec2<u32>, 17>();
    let var_3 = func_2();
    global4 = array<vec2<u32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 85832u, u_input.a.x, 0u), vec4<u32>(1u, 0u, 56543u, global2.x)) >> (select(~vec4<u32>(u_input.a.x, 37428u, var_3.a.x, 17219u), vec4<u32>(var_1, var_1, 1u, var_3.a.x) >> (vec4<u32>(var_1, var_3.a.x, 115647u, u_input.a.x) % vec4<u32>(32u)), vec4<bool>(var_0.d, true, var_0.e.x, false)) % vec4<u32>(32u))), 0i, vec4<f32>(-1480f, -1179f, _wgslsmith_f_op_f32(f32(-1f) * -1173f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))), vec3<u32>(_wgslsmith_sub_u32(~9249u, (var_3.a.x & global2.x) >> (global2.x % 32u)), ~var_1, 5989u), _wgslsmith_clamp_u32(var_1, global2.x, (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 1u, var_1), var_3.a) | 1u) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, var_3.a.x), vec4<u32>(0u, 0u, 8325u, u_input.a.x)) ^ 22649u) % 32u)));
}

