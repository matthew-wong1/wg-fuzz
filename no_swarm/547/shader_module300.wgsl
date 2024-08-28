struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(19979u, 34384u), vec2<u32>(4294967295u, 62432u), vec2<u32>(1u, 76777u), vec2<u32>(23365u, 18136u), vec2<u32>(0u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(70828u, 1619u), vec2<u32>(4294967295u, 5768u), vec2<u32>(1u, 1u), vec2<u32>(71987u, 4294967295u), vec2<u32>(29159u, 1u), vec2<u32>(0u, 6608u), vec2<u32>(18262u, 36551u), vec2<u32>(0u, 20988u), vec2<u32>(51661u, 0u));

var<private> global1: u32 = 4294967295u;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<i32>(0i, 0i), vec4<f32>(421f, -1398f, 1599f, 413f), true, vec2<i32>(1i, -562i)), 25626i, Struct_1(vec2<i32>(46528i, 18512i), vec4<f32>(-3371f, 1020f, -1190f, 522f), true, vec2<i32>(9227i, 7295i)), vec4<f32>(585f, -1287f, 1026f, 108f));

var<private> global3: array<i32, 7> = array<i32, 7>(0i, -1i, 1i, 6184i, 50697i, -1i, 1i);

var<private> global4: Struct_2 = Struct_2(Struct_1(vec2<i32>(0i, -5874i), vec4<f32>(1000f, -732f, 668f, -240f), true, vec2<i32>(i32(-2147483648), 26250i)), -100553i, Struct_1(vec2<i32>(0i, 2147483647i), vec4<f32>(1555f, -431f, -108f, 1000f), true, vec2<i32>(1i, 2147483647i)), vec4<f32>(1910f, 358f, 1058f, 302f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> i32 {
    global4 = Struct_2(global2.a, _wgslsmith_clamp_i32(1i, abs(arg_1.a.x), arg_1.d.x), global4.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4.a.b) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_1.b, _wgslsmith_f_op_vec4_f32(global2.c.b * vec4<f32>(arg_1.b.x, -962f, -1386f, global2.d.x)))))));
    global1 = ~1u << (_wgslsmith_dot_vec2_u32(firstLeadingBit(~global0[_wgslsmith_index_u32(1u, 15u)]), global0[_wgslsmith_index_u32(1u, 15u)]) % 32u);
    global0 = array<vec2<u32>, 15>();
    global0 = array<vec2<u32>, 15>();
    global0 = array<vec2<u32>, 15>();
    return -(~(-1i));
}

fn func_3() -> i32 {
    global0 = array<vec2<u32>, 15>();
    let var_0 = false;
    global1 = _wgslsmith_mult_u32(_wgslsmith_div_u32(countOneBits(countOneBits(firstTrailingBit(54035u))), ~4294967295u), ((min(1u, 1u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 9970u, 9509u), vec3<u32>(4294967295u, 1u, 16158u)) % 32u)) & ~(~3072u)) >> (4294967295u % 32u));
    let var_1 = Struct_2(global2.a, 1i, global2.c, _wgslsmith_f_op_vec4_f32(-global4.d));
    var var_2 = global4.c;
    return 4664i & ~global2.b;
}

fn func_1() -> vec2<f32> {
    global1 = 40221u;
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1461f - global2.d.x), _wgslsmith_f_op_f32(f32(-1f) * -489f), -1000f);
    let var_1 = Struct_1(~vec2<i32>(func_2(false, global4.a) ^ 1i, max(func_3(), -u_input.a)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.c.b))))), global2.c.c, -vec2<i32>(29276i, -51213i));
    var var_2 = var_1;
    let var_3 = any(vec4<bool>(global2.a.c, select(true, global2.a.c, select(select(false, var_2.c, var_2.c), true, var_2.a.x == var_1.d.x)), false, global4.c.c && any(vec2<bool>(false, false))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.wx) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(224f + -379f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, global4.d.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) - _wgslsmith_f_op_vec2_f32(-global4.a.b.zy));
    let var_1 = global2.a;
    global0 = array<vec2<u32>, 15>();
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, min(83949i, -22885i), -3813i), vec3<i32>(~var_1.d.x, global2.c.d.x, ~global4.c.a.x)), _wgslsmith_add_vec3_i32((vec3<i32>(global3[_wgslsmith_index_u32(2223u, 7u)], -1i, -552i) << (vec3<u32>(79506u, 0u, 0u) % vec3<u32>(32u))) | ~vec3<i32>(var_1.d.x, -10267i, -25763i), abs(vec3<i32>(global2.b, var_1.a.x, var_1.a.x)) & vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], 44306i, -2147483647i))) >= -18623i;
    var var_3 = Struct_1(-global4.a.a, _wgslsmith_f_op_vec4_f32(global2.d - vec4<f32>(-235f, global2.a.b.x, var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.b.x) + -1000f))), true, var_1.a >> (countOneBits(~vec2<u32>(0u, 21717u)) % vec2<u32>(32u)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global4.d.zwy), var_1.b.zyz)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.c.b.wzw), _wgslsmith_f_op_vec3_f32(max(var_3.b.zyz, vec3<f32>(-759f, var_0.x, -132f)))))));
    global2 = Struct_2(global2.a, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(var_3.a.x, var_3.a.x, -36909i, 1i)), ~vec4<i32>(-1i, 0i, global2.c.a.x, -1i)), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(global4.c.a.x, -27335i, 26369i, -1i), vec4<i32>(0i, u_input.a, var_1.a.x, -1i), vec4<i32>(2147483647i, var_1.d.x, -2147483647i, 30572i)), ~vec4<i32>(-13691i, -12724i, u_input.a, var_1.a.x))) | 2147483647i, global2.c, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_4.x)), _wgslsmith_div_f32(641f, global4.a.b.x), -133f, _wgslsmith_f_op_f32(trunc(var_3.b.x))))), _wgslsmith_f_op_vec4_f32(exp2(var_1.b)))));
    global3 = array<i32, 7>();
    var var_5 = Struct_2(global2.c, firstTrailingBit(~(~1i)), Struct_1(vec2<i32>((global2.c.a.x | 2147483647i) << (1u % 32u), global2.c.a.x), _wgslsmith_f_op_vec4_f32(ceil(global2.a.b)), !(-1069f > var_4.x) == all(select(vec3<bool>(global2.a.c, true, global2.c.c), vec3<bool>(global4.a.c, true, var_1.c), var_3.c)), global2.a.d), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, select(~(vec3<i32>(1i, global4.b, var_5.c.d.x) | vec3<i32>(0i, var_1.d.x, global4.c.a.x)) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(39681u, 71768u, 39378u), vec3<u32>(0u, 0u, 12328u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(~vec3<i32>(global4.b, global3[_wgslsmith_index_u32(42729u, 7u)], -31714i), ~reverseBits(vec3<i32>(global4.a.a.x, var_5.a.d.x, var_1.d.x))), vec3<bool>(true, true, select(any(vec2<bool>(var_3.c, var_2)), var_5.a.c, true))), ~77638u);
}

