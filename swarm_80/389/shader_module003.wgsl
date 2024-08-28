struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(831f, -511f, -268f, 2898f, -1354f, 1376f, -417f, -103f, -238f, 583f, 1000f, 653f, 107f, -758f, -525f, 450f, 1059f, 484f, 600f, -1635f, 617f, -1000f, 372f, 427f, 698f, -1997f, -510f, -1741f, -1000f, -896f, 1000f, -337f);

var<private> global1: array<Struct_5, 14>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    var var_0 = any(arg_0.a);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(u_input.d.x, 32u)], arg_0.a.x)), global0[_wgslsmith_index_u32(~arg_1.x, 32u)])))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.x, 32u)] * global0[_wgslsmith_index_u32(u_input.c.x, 32u)]))))));
    var_0 = any(!arg_0.a.xx);
    global0 = array<f32, 32>();
    let var_2 = arg_0.a.yxz;
    return true;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec3<bool>) -> Struct_1 {
    global0 = array<f32, 32>();
    let var_0 = select(vec4<bool>(false, true, all(vec2<bool>(func_3(Struct_1(vec4<bool>(arg_1.b.a.a.x, arg_3.x, false, arg_2.b.a.d), arg_2.b.d, vec2<bool>(arg_2.d.a.a.x, arg_1.d.a.d), arg_2.b.a.c.x), vec4<u32>(arg_1.d.b.x, 0u, arg_1.a.x, u_input.e)), true)), all(vec4<bool>(true, true, select(arg_1.b.a.c.x, arg_3.x, false), false))), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(arg_2.b.b.x, 32u)], arg_1.d.c)) - _wgslsmith_f_op_f32(1190f - global0[_wgslsmith_index_u32(0u, 32u)])) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.c + arg_2.b.c)), arg_3.x, any(arg_3.yz), all(arg_1.b.a.c)), arg_2.b.a.d);
    let var_1 = any(!vec4<bool>(true | arg_2.b.a.a.x, false, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c) == 20599u, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, arg_0.x), arg_0.xxz) > _wgslsmith_dot_vec2_i32(vec2<i32>(38708i, -1i), vec2<i32>(30713i, -33818i))));
    var var_2 = arg_1.d.a.a.wyw;
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.d.c)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.d.c), 733f) + arg_2.b.c)), _wgslsmith_f_op_f32(arg_2.b.c * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(arg_2.d.b.x, arg_2.b.b.x)), ~firstLeadingBit(arg_2.b.b)), 32u)]), false));
    return Struct_1(select(arg_1.b.a.a, select(select(vec4<bool>(var_2.x, false, arg_3.x, var_1), vec4<bool>(true, true, true, true), arg_3.x), arg_1.b.a.a, _wgslsmith_div_f32(-1184f, 1675f) == _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(arg_1.d.b.x, 32u)], 1307f))), select(!select(vec4<bool>(arg_2.b.a.d, false, false, false), vec4<bool>(var_1, arg_1.b.a.d, false, arg_3.x), vec4<bool>(true, false, arg_1.d.a.a.x, arg_1.d.a.c.x)), var_0, false)), u_input.b, vec2<bool>(true, true), (arg_2.b.b.x > (~0u | select(57194u, arg_2.d.b.x, arg_2.b.a.a.x))) == !((arg_1.d.c != global0[_wgslsmith_index_u32(arg_2.d.b.x, 32u)]) || (var_0.x | var_1)));
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: vec3<u32>, arg_3: Struct_5) -> vec2<f32> {
    global1 = array<Struct_5, 14>();
    let var_0 = _wgslsmith_add_i32(abs(-_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, arg_1.a.b), vec2<i32>(2147483647i, -1i), vec2<i32>(5568i, arg_0)), ~vec2<i32>(5402i, 35806i))), ~1773i);
    let var_1 = global1[_wgslsmith_index_u32(u_input.d.x & ~4294967295u, 14u)];
    let var_2 = all(!(!arg_1.a.a.xxz));
    var var_3 = Struct_3(31340u, all(!arg_1.a.a.wxz));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.b, arg_1.b) * global0[_wgslsmith_index_u32(1u, 32u)]), -789f);
}

fn func_5(arg_0: i32, arg_1: vec2<f32>) -> Struct_4 {
    let var_0 = max(~(~1u) & u_input.c.x, u_input.c.x);
    var var_1 = _wgslsmith_sub_vec3_i32(firstTrailingBit(~_wgslsmith_div_vec3_i32(~vec3<i32>(arg_0, arg_0, 20244i), vec3<i32>(u_input.b, -49668i, arg_0))), ~min(vec3<i32>(15265i, -1i, arg_0), -vec3<i32>(arg_0, arg_0, u_input.b)) | -reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-8803i, arg_0, 21801i), vec3<i32>(u_input.b, 34090i, 1i))));
    let var_2 = -func_2(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -4437i, 10440i, 6829i), vec4<i32>(-17656i, -5425i, arg_0, var_1.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, arg_0, u_input.b, arg_0), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.b, u_input.b, 32651i), vec4<i32>(arg_0, -10613i, -2147483647i, u_input.b), vec4<i32>(arg_0, var_1.x, u_input.b, arg_0))), min(vec4<i32>(2147483647i, 49045i, -4238i, arg_0), vec4<i32>(-648i, u_input.b, -43613i, arg_0)) | -vec4<i32>(-2147483647i, -1i, -38354i, var_1.x)), Struct_4(_wgslsmith_sub_vec2_u32(~u_input.a, u_input.a & u_input.c.yz), Struct_2(func_2(vec4<i32>(9955i, 25501i, -37i, 2147483647i), Struct_4(vec2<u32>(40400u, var_0), Struct_2(Struct_1(vec4<bool>(true, false, true, true), u_input.b, vec2<bool>(true, true), false), u_input.d, global0[_wgslsmith_index_u32(u_input.d.x, 32u)], var_1.x), var_1.xx, Struct_2(Struct_1(vec4<bool>(false, true, true, true), -60137i, vec2<bool>(true, false), true), vec2<u32>(40940u, 0u), 1553f, arg_0)), Struct_4(u_input.a, Struct_2(Struct_1(vec4<bool>(false, true, true, true), -1i, vec2<bool>(false, false), true), u_input.a, -856f, var_1.x), var_1.yy, Struct_2(Struct_1(vec4<bool>(false, false, false, false), var_1.x, vec2<bool>(false, true), false), vec2<u32>(0u, 11575u), global0[_wgslsmith_index_u32(u_input.c.x, 32u)], arg_0)), vec3<bool>(false, false, true)), vec2<u32>(1u, 0u) >> (u_input.c.yx % vec2<u32>(32u)), global0[_wgslsmith_index_u32(u_input.e << (u_input.e % 32u), 32u)], _wgslsmith_add_i32(-19366i, 0i)), ~(~var_1.xx), Struct_2(Struct_1(vec4<bool>(true, true, false, true), arg_0, vec2<bool>(true, true), false), vec2<u32>(30481u, var_0), _wgslsmith_f_op_f32(f32(-1f) * -946f), -u_input.b)), Struct_4(vec2<u32>(38233u, u_input.e) & u_input.c.zy, Struct_2(Struct_1(vec4<bool>(false, true, true, true), -58732i, vec2<bool>(true, true), false), vec2<u32>(u_input.e, u_input.c.x), _wgslsmith_f_op_f32(459f - 1585f), -19604i), -vec2<i32>(u_input.b, arg_0) | var_1.xy, Struct_2(func_2(vec4<i32>(0i, u_input.b, u_input.b, var_1.x), Struct_4(u_input.c.zx, Struct_2(Struct_1(vec4<bool>(true, false, true, true), u_input.b, vec2<bool>(false, true), false), vec2<u32>(u_input.d.x, 23407u), arg_1.x, var_1.x), var_1.zz, Struct_2(Struct_1(vec4<bool>(true, true, true, true), 74121i, vec2<bool>(true, true), true), u_input.a, -1000f, 18173i)), Struct_4(u_input.a, Struct_2(Struct_1(vec4<bool>(true, false, true, true), u_input.b, vec2<bool>(false, false), false), u_input.c.yz, arg_1.x, -1i), var_1.zx, Struct_2(Struct_1(vec4<bool>(true, false, false, false), 24837i, vec2<bool>(false, false), false), u_input.a, arg_1.x, 1i)), vec3<bool>(true, true, false)), u_input.d, _wgslsmith_f_op_f32(1281f + -176f), 1i)), !vec3<bool>(select(false, true, true), true, 1u >= var_0)).b;
    let var_3 = _wgslsmith_mult_u32(var_0, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), u_input.a)) ^ (_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0, var_0), countOneBits(vec2<u32>(4294967295u, u_input.d.x))) | var_0));
    let var_4 = _wgslsmith_add_vec3_i32(vec3<i32>(arg_0, var_1.x, _wgslsmith_div_i32(8190i, var_2)), max(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(21831i, -2831i, u_input.b), ~vec3<i32>(var_2, var_1.x, -9449i))), firstTrailingBit(~firstTrailingBit(vec3<i32>(var_2, -7584i, u_input.b)))));
    return Struct_4(u_input.c.xy, Struct_2(Struct_1(vec4<bool>(true, select(true, false, false), global0[_wgslsmith_index_u32(83707u, 32u)] >= -933f, func_2(vec4<i32>(u_input.b, 14041i, arg_0, var_2), Struct_4(u_input.a, Struct_2(Struct_1(vec4<bool>(true, true, true, false), 20044i, vec2<bool>(true, true), false), u_input.a, arg_1.x, u_input.b), vec2<i32>(var_1.x, 12605i), Struct_2(Struct_1(vec4<bool>(true, true, true, true), 0i, vec2<bool>(true, true), true), u_input.a, arg_1.x, u_input.b)), Struct_4(vec2<u32>(0u, 38079u), Struct_2(Struct_1(vec4<bool>(true, true, true, true), var_4.x, vec2<bool>(false, false), false), u_input.d, -931f, var_4.x), vec2<i32>(var_2, var_1.x), Struct_2(Struct_1(vec4<bool>(false, false, false, false), 11190i, vec2<bool>(false, true), true), vec2<u32>(8136u, u_input.e), -1587f, arg_0)), vec3<bool>(true, false, true)).c.x), ~var_4.x, vec2<bool>(true, true), true), _wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.d), ~max(vec2<u32>(var_0, 1u), u_input.a)), 554f, _wgslsmith_div_i32(-14190i, -2147483647i)), firstLeadingBit(vec2<i32>(~(-2147483647i), 2147483647i) >> (vec2<u32>(abs(39061u), ~var_3) % vec2<u32>(32u))), Struct_2(func_2(~vec4<i32>(0i, -2147483647i, var_1.x, -2147483647i) >> ((vec4<u32>(var_3, u_input.e, var_3, 4294967295u) << (vec4<u32>(95046u, 7362u, 1u, 13635u) % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_4(u_input.d | u_input.d, Struct_2(Struct_1(vec4<bool>(false, false, false, true), arg_0, vec2<bool>(false, false), false), vec2<u32>(var_0, 1u), global0[_wgslsmith_index_u32(var_3, 32u)], -66i), -vec2<i32>(22133i, 2147483647i), Struct_2(Struct_1(vec4<bool>(true, false, false, true), 4937i, vec2<bool>(true, false), false), vec2<u32>(4294967295u, u_input.d.x), 141f, 2147483647i)), Struct_4(~u_input.a, Struct_2(Struct_1(vec4<bool>(true, true, true, true), 1i, vec2<bool>(true, false), true), u_input.a, -1944f, u_input.b), var_1.xy, Struct_2(Struct_1(vec4<bool>(true, false, true, true), 42602i, vec2<bool>(true, false), false), u_input.d, 104f, var_1.x)), !func_2(vec4<i32>(var_4.x, 22688i, 1i, var_2), Struct_4(vec2<u32>(14627u, 4294967295u), Struct_2(Struct_1(vec4<bool>(true, true, false, true), u_input.b, vec2<bool>(true, true), false), u_input.a, global0[_wgslsmith_index_u32(1u, 32u)], arg_0), var_1.zz, Struct_2(Struct_1(vec4<bool>(false, true, false, false), var_2, vec2<bool>(true, false), false), vec2<u32>(3318u, u_input.e), -1243f, -23655i)), Struct_4(u_input.a, Struct_2(Struct_1(vec4<bool>(true, false, true, true), var_2, vec2<bool>(true, false), false), u_input.d, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], var_1.x), var_1.yy, Struct_2(Struct_1(vec4<bool>(true, false, true, false), -1i, vec2<bool>(false, false), false), u_input.d, arg_1.x, arg_0)), vec3<bool>(true, true, true)).a.yyz), vec2<u32>(_wgslsmith_mod_u32(5253u, var_3), countOneBits(_wgslsmith_add_u32(1u, 1u))), -1008f, arg_0));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = arg_0.x != reverseBits(_wgslsmith_add_i32(u_input.b, firstLeadingBit(1i)));
    let var_1 = func_5(arg_2.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)]) - vec2<f32>(748f, global0[_wgslsmith_index_u32(u_input.c.x, 32u)]))), _wgslsmith_f_op_f32(max(-333f, global0[_wgslsmith_index_u32(100175u, 32u)])) < _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(23169u, 32u)]))) - _wgslsmith_f_op_vec2_f32(func_4(select(2147483647i, arg_0.x, true) << (_wgslsmith_mult_u32(14085u, 1u) % 32u), Struct_5(func_2(vec4<i32>(arg_2.b, arg_0.x, arg_2.b, u_input.b), Struct_4(u_input.c.xx, Struct_2(arg_2, vec2<u32>(u_input.e, u_input.c.x), global0[_wgslsmith_index_u32(u_input.a.x, 32u)], u_input.b), vec2<i32>(arg_0.x, -12978i), Struct_2(arg_2, u_input.a, global0[_wgslsmith_index_u32(1u, 32u)], -73087i)), Struct_4(u_input.d, Struct_2(Struct_1(vec4<bool>(false, arg_2.d, true, false), arg_0.x, arg_2.a.wy, true), vec2<u32>(7665u, u_input.d.x), global0[_wgslsmith_index_u32(u_input.c.x, 32u)], 12240i), arg_0.zx, Struct_2(arg_2, u_input.a, -669f, -20549i)), arg_2.a.xzx), -148f), firstLeadingBit(vec3<u32>(u_input.d.x, u_input.a.x, u_input.c.x)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, abs(0u)), 14u)]))));
    global1 = array<Struct_5, 14>();
    var var_2 = func_5(_wgslsmith_add_i32(u_input.b, -_wgslsmith_mult_i32(43600i, 1i)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1257f, -377f), -1166f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.c, var_1.b.c) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(646f, 756f))))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.d.c), _wgslsmith_f_op_f32(f32(-1f) * -1672f))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.c, var_2.b.c)))) - _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], var_2.b.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-271f, -1000f)))))));
    return ~abs(countOneBits(_wgslsmith_add_vec4_u32(min(vec4<u32>(4294967295u, var_2.d.b.x, u_input.e, var_1.a.x), vec4<u32>(4294967295u, 85607u, var_2.d.b.x, u_input.e)), ~vec4<u32>(16646u, var_1.d.b.x, u_input.a.x, var_1.b.b.x))));
}

fn func_6(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: Struct_4) -> Struct_5 {
    global1 = array<Struct_5, 14>();
    let var_0 = arg_2.b;
    var var_1 = Struct_4(abs(vec2<u32>(var_0.b.x, arg_2.b.b.x)), Struct_2(func_5(arg_2.d.d, vec2<f32>(_wgslsmith_f_op_f32(927f + 1000f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 32u)]))).b.a, u_input.c.xz, arg_1.x, arg_2.b.a.b), vec2<i32>(_wgslsmith_mult_i32(0i, max(u_input.b, -1i & u_input.b)), min(-1i, var_0.d)), func_5(_wgslsmith_sub_i32(1i, min(-arg_0.a.b, -2147483647i)), _wgslsmith_f_op_vec2_f32(-arg_1.yy)).d);
    var_1 = Struct_4(select(vec2<u32>(~abs(arg_2.a.x), var_1.d.b.x), _wgslsmith_mod_vec2_u32((var_0.b ^ vec2<u32>(3589u, var_0.b.x)) ^ ~vec2<u32>(4294967295u, 70600u), arg_2.d.b), vec2<bool>(!var_1.b.a.a.x, true)), arg_2.b, reverseBits(arg_2.c), func_5(var_0.a.b, arg_1.yy).d);
    var var_2 = _wgslsmith_f_op_f32(ceil(var_0.c));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    var var_0 = func_6(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e, _wgslsmith_dot_vec4_u32(func_1(vec3<i32>(-8820i, u_input.b, u_input.b), -35624i, Struct_1(vec4<bool>(true, false, true, false), u_input.b, vec2<bool>(true, false), false)) & select(vec4<u32>(66927u, u_input.c.x, 13649u, 1u), vec4<u32>(2698u, 54413u, 4294967295u, 55852u), vec4<bool>(true, false, true, true)), vec4<u32>(u_input.c.x, select(67188u, u_input.c.x, true), ~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.d, u_input.a)))), 14u)], vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1003f, -532f)), _wgslsmith_f_op_vec2_f32(func_4(2147483647i, global1[_wgslsmith_index_u32(0u, 14u)], vec3<u32>(8750u, 12238u, 60380u), Struct_5(Struct_1(vec4<bool>(true, true, true, false), u_input.b, vec2<bool>(true, false), true), -484f))).x) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -443f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(35757u, 32u)], global0[_wgslsmith_index_u32(103496u, 32u)], true)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 32u)]))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(18454u, 32u)]), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(u_input.e, 32u)])))), func_5(((u_input.b | -9538i) >> (_wgslsmith_div_u32(u_input.c.x, 36682u) % 32u)) ^ -10961i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(u_input.c.x, 32u)])) + vec2<f32>(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(u_input.e, 32u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(1110f, global0[_wgslsmith_index_u32(u_input.c.x, 32u)]) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(u_input.d.x, 32u)])))))));
    var var_1 = Struct_4(vec2<u32>(0u, _wgslsmith_sub_u32(u_input.c.x, u_input.a.x)), func_5(var_0.a.b, _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_mod_i32(13312i, reverseBits(1568i)), Struct_5(var_0.a, 245f), vec3<u32>(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x), u_input.c.x, u_input.e | 1u), Struct_5(Struct_1(vec4<bool>(var_0.a.a.x, false, var_0.a.a.x, false), -54128i, vec2<bool>(var_0.a.a.x, true), var_0.a.a.x), -261f)))).d, ~firstLeadingBit(min(vec2<i32>(-19005i, 1i), vec2<i32>(u_input.b, -1i)) >> (select(vec2<u32>(0u, u_input.c.x), vec2<u32>(u_input.d.x, u_input.c.x), var_0.a.c.x) % vec2<u32>(32u))), func_5(var_0.a.b, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(1u >> (0u % 32u), 32u)], _wgslsmith_f_op_f32(-var_0.b))))).b);
    global0 = array<f32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(4252u, 0u), u_input.c.x), ~_wgslsmith_mult_u32(~u_input.e, 4294967295u), var_1.b.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.b, 227f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.e, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)]))), any(var_0.a.a.xzx))), var_0.b)), 2147483647i);
}

