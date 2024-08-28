struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_2,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: vec4<f32> = vec4<f32>(453f, -847f, -753f, -1230f);

var<private> global2: Struct_4 = Struct_4(-1231f, vec4<i32>(67511i, -1i, 0i, 25419i), Struct_1(true, 4294967295u, 13801u, vec2<i32>(2147483647i, i32(-2147483648))), vec2<bool>(false, false));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = reverseBits(min(4294967295u, 4294967295u));
    let var_1 = true;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(492f, global2.a, global1.x, 179f)))) * vec4<f32>(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(163f)) - 192f), 2097f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(143f, -1314f)))))));
    var var_2 = -u_input.a.yw;
    global1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(176f, global2.a, _wgslsmith_f_op_f32(floor(global2.a)), _wgslsmith_f_op_f32(ceil(global2.a))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -844f), _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-551f + -208f), global2.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -469f, global2.a) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1347f, global1.x, -507f) * vec4<f32>(447f, -520f, global2.a, global1.x))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -723f), -2033f, global2.a, global1.x)))));
    return _wgslsmith_f_op_f32(exp2(global2.a));
}

fn func_2() -> vec4<f32> {
    let var_0 = vec4<f32>(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(1i)))), -819f, -696f);
    let var_1 = vec4<bool>(true, global2.c.a, false, global2.d.x);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))))), -404f, _wgslsmith_f_op_f32(f32(-1f) * -901f));
    global2 = Struct_4(_wgslsmith_f_op_f32(-var_0.x), countOneBits(max(vec4<i32>(1i, abs(global2.b.x), global2.c.d.x, ~global2.c.d.x), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.a.x, 1i, 16822i), vec4<i32>(-2511i, u_input.a.x, 70442i, global2.c.d.x), vec4<i32>(u_input.b, u_input.b, 0i, 21812i)), min(vec4<i32>(-2147483647i, u_input.b, global2.c.d.x, u_input.a.x), vec4<i32>(u_input.a.x, global2.b.x, global2.b.x, -20643i))))), Struct_1(!global2.c.a, 24362u, 40253u, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.wy ^ vec2<i32>(1i, global2.c.d.x), vec2<i32>(1i, global2.c.d.x)), _wgslsmith_clamp_vec2_i32(countOneBits(u_input.a.wy), ~vec2<i32>(-1i, global2.b.x), -global2.b.yz))), select(vec2<bool>(all(select(vec4<bool>(var_1.x, false, true, global2.d.x), var_1, var_1)), var_1.x), var_1.xz, _wgslsmith_f_op_f32(-1857f * _wgslsmith_f_op_f32(-var_2.x)) == -504f));
    let var_3 = ~(~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(50282u, 41688u, global2.c.c), countOneBits(vec3<u32>(global2.c.b, 84u, 1u))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.c.b, global2.c.c, global2.c.b), vec3<u32>(27965u, global2.c.b, global2.c.c), vec3<u32>(global2.c.c, 5087u, global2.c.c))));
    return var_0;
}

fn func_1(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_2());
    let var_1 = abs(global2.b.x);
    let var_2 = _wgslsmith_mult_u32(global2.c.b, ~_wgslsmith_div_u32(0u, ~1u)) <= ~12613u;
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_0.zw);
    global1 = var_0;
    return 826f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_5 {
    let var_0 = global1.x;
    global2 = Struct_4(1f, global2.b, Struct_1(false, global2.c.b, 6136u, (vec2<i32>(-1i) * -vec2<i32>(-18098i, arg_1.d.x)) & ~_wgslsmith_sub_vec2_i32(vec2<i32>(-17569i, -2147483647i), u_input.a.xz)), !global2.d);
    global0 = array<Struct_1, 28>();
    global2 = Struct_4(_wgslsmith_f_op_f32(-global1.x), vec4<i32>(_wgslsmith_dot_vec2_i32(-global2.b.wy, vec2<i32>(34652i, 1i)), -15237i, 0i & ~arg_1.d.x, arg_1.d.x) ^ global2.b, Struct_1(true, 1u, ~21892u, max(_wgslsmith_mult_vec2_i32(u_input.a.zw, vec2<i32>(global2.c.d.x, arg_1.d.x)), min(global2.b.wz | vec2<i32>(arg_1.d.x, 18531i), global2.c.d & arg_1.d))), !vec2<bool>(true, !(global2.c.a | false)));
    let var_1 = true;
    return Struct_5(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.c, arg_1.c, 105599u), vec3<u32>(arg_1.b, 4294967295u, global2.c.c)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 40761u, 1u), vec3<u32>(4294967295u, global2.c.b, 83963u)) << (vec3<u32>(arg_1.c, 0u, 1u) % vec3<u32>(32u))), firstLeadingBit(global2.c.c) >> (~min(global2.c.c, arg_1.c) % 32u), reverseBits(global2.c.c), 47250u), Struct_2(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u >> (arg_1.b % 32u), 11444u, max(4294967295u, global2.c.c)), ~global2.c.c), vec2<u32>(23061u, arg_1.b), select(vec2<bool>(global2.c.a, select(var_1, var_1, arg_1.a)), select(select(global2.d, global2.d, false), vec2<bool>(true, true), select(global2.d, global2.d, vec2<bool>(arg_1.a, false))), var_1), !(firstTrailingBit(2147483647i) < (i32(-1i) * -2147483647i)), Struct_1(false, _wgslsmith_mod_u32(~1u, _wgslsmith_div_u32(global2.c.c, 1u)), _wgslsmith_mod_u32(~36478u, max(arg_1.c, arg_1.b)), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zz, global2.b.wz), ~u_input.b))), -arg_1.d.x, Struct_3(_wgslsmith_sub_vec3_u32(~(vec3<u32>(5230u, 47581u, arg_1.c) | vec3<u32>(arg_1.c, 1u, 4294967295u)), ~vec3<u32>(14064u, global2.c.b, global2.c.c)), Struct_2(0u & _wgslsmith_add_u32(global2.c.b, 12168u), vec2<u32>(33754u, arg_1.b) & ~vec2<u32>(30124u, arg_1.b), vec2<bool>(false, false), false || !arg_1.a, arg_1)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: Struct_5, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = arg_1.zwy;
    var_0 = _wgslsmith_f_op_vec3_f32(round(global1.zyy));
    var var_1 = arg_0.x;
    var var_2 = func_4(global1.x, global0[_wgslsmith_index_u32(arg_2.a.x, 28u)], _wgslsmith_f_op_vec4_f32(arg_1 - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(613f, global1.x, arg_1.x, -309f), arg_1) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.a, 474f, arg_1.x, arg_1.x))))))).d;
    let var_3 = Struct_2(abs(~(~(arg_2.b.b.x ^ global2.c.c))), vec2<u32>(select(min(arg_2.b.b.x, var_2.b.b.x) | firstLeadingBit(arg_2.d.b.a), 0u, true), ~(~var_2.b.a)), func_4(_wgslsmith_f_op_f32(trunc(var_0.x)), func_4(1482f, Struct_1(all(vec4<bool>(false, false, var_2.b.c.x, arg_3.a)), arg_2.a.x ^ arg_3.c, _wgslsmith_div_u32(var_2.a.x, 76449u), arg_3.d), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, global2.a, -388f))))).d.b.e, arg_1).b.c, ~_wgslsmith_div_u32(arg_2.a.x, firstLeadingBit(global2.c.b)) > 4294967295u, func_4(-256f, arg_3, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -417f), -1050f, _wgslsmith_f_op_f32(-1651f * -814f), _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_1)))))).d.b.e);
    return !vec2<bool>(func_4(_wgslsmith_f_op_f32(func_1(func_4(arg_1.x, Struct_1(false, var_2.b.a, var_3.a, vec2<i32>(0i, var_3.e.d.x)), arg_1), select(arg_2.a.xzw, arg_2.a.xyy, var_2.b.d), func_4(arg_1.x, global0[_wgslsmith_index_u32(global2.c.b, 28u)], vec4<f32>(-1000f, global1.x, global2.a, -1928f)).d, select(vec2<bool>(false, true), arg_2.b.c, var_3.c))), var_3.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1))).d.b.c.x, true && (69446u <= var_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -14129i;
    global1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, global2.a, 580f, global1.x) - vec4<f32>(global1.x, global2.a, 739f, -343f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.a, -443f, -2121f, global1.x), vec4<f32>(global1.x, global2.a, 672f, -181f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1875f, -393f, global1.x, global2.a), vec4<f32>(global1.x, global2.a, global1.x, global2.a)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.a, -1000f, global1.x, global1.x)))))), vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-399f)) * 304f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1121f))), 622f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1221f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -739f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(529f, global1.x))))));
    let var_1 = Struct_2(~4294967295u, vec2<u32>(4294967295u, _wgslsmith_mod_u32(global2.c.c, ~abs(global2.c.c))), func_5(~_wgslsmith_div_vec4_i32(-global2.b, vec4<i32>(2147483647i, 10611i, global2.c.d.x, -2147483647i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(612f, -428f, -1451f, -269f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(581f, 1939f, global2.a, global2.a) * vec4<f32>(global1.x, global1.x, -1000f, -1848f)))), func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(Struct_5(vec4<u32>(global2.c.b, global2.c.c, global2.c.c, global2.c.b), Struct_2(global2.c.c, vec2<u32>(global2.c.c, 45308u), vec2<bool>(global2.c.a, false), global2.c.a, Struct_1(true, 0u, 4294967295u, vec2<i32>(global2.b.x, 1i))), global2.b.x, Struct_3(vec3<u32>(0u, 27844u, global2.c.c), Struct_2(41779u, vec2<u32>(global2.c.b, 54291u), global2.d, false, global0[_wgslsmith_index_u32(global2.c.b, 28u)]))), vec3<u32>(global2.c.b, global2.c.b, global2.c.b), Struct_3(vec3<u32>(1u, 38080u, global2.c.b), Struct_2(7928u, vec2<u32>(0u, global2.c.b), global2.d, true, Struct_1(global2.d.x, 10330u, 32461u, u_input.a.xy))), vec2<bool>(global2.c.a, global2.c.a))))), global0[_wgslsmith_index_u32(76032u, 28u)], vec4<f32>(-1000f, global2.a, global1.x, _wgslsmith_f_op_f32(747f * -1000f))), global2.c), global2.c.a, global0[_wgslsmith_index_u32(1u, 28u)]);
    global1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global2.a, -1498f, -1595f), vec4<f32>(global2.a, 455f, global2.a, global2.a), false)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1075f, 251f, global2.a, 1088f) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(160f, 842f, global2.a, 802f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, 932f, global2.a, -1156f)), global2.c.a)))));
    global0 = array<Struct_1, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.d.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(44433i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a * global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a * 847f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2.a, global2.a), -548f, func_5(u_input.a, vec4<f32>(-678f, global2.a, global1.x, global1.x), Struct_5(vec4<u32>(1u, 3472u, 4294967295u, var_1.e.b), var_1, var_0, Struct_3(vec3<u32>(global2.c.c, var_1.b.x, 10850u), var_1)), global2.c).x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * 489f) + _wgslsmith_f_op_f32(-1539f + _wgslsmith_f_op_f32(global1.x + 1059f)))));
}

