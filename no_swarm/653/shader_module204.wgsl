struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32>;

var<private> global1: array<f32, 24>;

var<private> global2: vec2<bool>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    let var_0 = Struct_2(Struct_1(firstLeadingBit(min(vec3<i32>(u_input.c, -2147483647i, 45239i), vec3<i32>(u_input.c, u_input.c, u_input.c))) | select(vec3<i32>(-23899i, -3707i, u_input.c), abs(vec3<i32>(u_input.c, 2147483647i, u_input.c)), select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, false, false), global2.x)), any(select(select(vec4<bool>(global2.x, false, false, global2.x), global0[_wgslsmith_index_u32(23093u, 32u)], vec4<bool>(true, global2.x, global2.x, global2.x)), vec4<bool>(global2.x, true, false, global2.x), select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), global0[_wgslsmith_index_u32(u_input.b, 32u)], vec4<bool>(global2.x, global2.x, false, global2.x)))), 2147483647i, u_input.a.xxz), Struct_1(~firstTrailingBit(vec3<i32>(u_input.c, u_input.c, 53529i)) << (vec3<u32>(firstTrailingBit(u_input.a.x), countOneBits(0u), 1u & u_input.a.x) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(34832u, 24u)], 1413f)) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 24u)] + -172f))), firstTrailingBit(-(~u_input.c)), ~(~(~u_input.a.yww))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.a.x, 24u)])) - _wgslsmith_f_op_f32(f32(-1f) * -666f)), global1[_wgslsmith_index_u32(26319u, 24u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(7695u, 24u)]))), 1f) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(31951u, 24u)], 184f, 531f, -2295f) * vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(61952u, 24u)], global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(13571u, 24u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1134f, 503f, global1[_wgslsmith_index_u32(29431u, 24u)], 1254f)))))), Struct_1(-(vec3<i32>(u_input.c, u_input.c, 0i) << (~vec3<u32>(u_input.b, 34174u, 124877u) % vec3<u32>(32u))), false, select(24486i, -37418i, true), vec3<u32>(u_input.b & 11001u, ~0u, _wgslsmith_add_u32(53406u, u_input.a.x)) & vec3<u32>(u_input.b, u_input.a.x, 1u)), Struct_1(~(~(~vec3<i32>(2147483647i, 2147483647i, u_input.c))), global2.x, _wgslsmith_add_i32(-49768i, _wgslsmith_mod_i32(-u_input.c, u_input.c)), vec3<u32>(u_input.b, _wgslsmith_div_u32(max(4294967295u, u_input.b), firstLeadingBit(u_input.a.x)), ~u_input.b)));
    let var_1 = Struct_1(var_0.d.a, true, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.b.a.zy, vec2<i32>(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-48323i, -1i), var_0.a.a.zx))), var_0.a.a.yz), vec3<u32>(68088u, _wgslsmith_mod_u32(1u, 1u), _wgslsmith_clamp_u32(~1u, 4294967295u, ~(~0u))));
    let var_2 = select(vec2<bool>(true, true), vec2<bool>(var_0.b.b, true), var_0.b.b);
    global1 = array<f32, 24>();
    let var_3 = var_1.d;
    return all(vec3<bool>(select(global1[_wgslsmith_index_u32(1u, 24u)] > -543f, any(vec4<bool>(false, false, false, global2.x)), all(vec4<bool>(global2.x, true, global2.x, var_0.d.b))), false, true)) && true;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = ~vec2<u32>(~25962u, arg_2.d.x);
    var var_1 = Struct_2(arg_2, arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(22052u, 24u)], global1[_wgslsmith_index_u32(11660u, 24u)], 147f, 251f), vec4<f32>(global1[_wgslsmith_index_u32(57893u, 24u)], global1[_wgslsmith_index_u32(var_0.x, 24u)], -739f, -1793f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-563f, 1032f, global1[_wgslsmith_index_u32(u_input.b, 24u)], 667f)), func_3())), vec4<f32>(_wgslsmith_f_op_f32(-602f * global1[_wgslsmith_index_u32(0u, 24u)]), -396f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_2.d.x, 24u)] - global1[_wgslsmith_index_u32(33168u, 24u)]), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(arg_2.d.x, 24u)])))), Struct_1(vec3<i32>(u_input.c | ~2147483647i, arg_2.a.x, -1i), ~38510u < arg_2.d.x, (u_input.c ^ select(-2147483647i, u_input.c, false)) >> (u_input.a.x % 32u), ~vec3<u32>(select(u_input.a.x, 24818u, true), 0u, countOneBits(arg_2.d.x))), Struct_1(vec3<i32>(-9048i, reverseBits(firstLeadingBit(u_input.c)), u_input.c), true, abs(~(i32(-1i) * -11186i)), ~abs(_wgslsmith_mod_vec3_u32(u_input.a.wxy, arg_2.d))));
    let var_2 = max(23196u, 0u);
    let var_3 = Struct_2(Struct_1(-firstTrailingBit(vec3<i32>(66113i, -21355i, u_input.c)), any(select(select(vec3<bool>(false, false, global2.x), vec3<bool>(false, var_1.d.b, false), vec3<bool>(arg_0.x, false, var_1.b.b)), select(vec3<bool>(arg_0.x, arg_0.x, global2.x), vec3<bool>(arg_2.b, false, false), true), vec3<bool>(false, arg_2.b, false))), arg_2.a.x, vec3<u32>(~4294967295u, 4294967295u, 1u)), Struct_1(vec3<i32>(~1i >> (var_0.x % 32u), ~_wgslsmith_div_i32(-14855i, var_1.a.c), ~_wgslsmith_add_i32(-5031i, 0i)), global2.x, 13303i, ~(vec3<u32>(var_2, var_1.d.d.x, var_0.x) << ((var_1.d.d >> (arg_2.d % vec3<u32>(32u))) % vec3<u32>(32u)))), var_1.c, Struct_1(var_1.e.a, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 5554u) ^ vec3<u32>(1u, arg_2.d.x, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a.x, 29177u), arg_2.d, arg_2.d)), 24u)] != _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(49024u, 24u)], 119f)), -2147483647i, abs(min(~u_input.a.zww, ~vec3<u32>(5369u, var_1.e.d.x, var_2)))), arg_2);
    let var_4 = var_1.e;
    return _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - var_3.c.x))), -294f, -298f), vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~firstTrailingBit(var_2), 24u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1730f))) + -194f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(var_3.a.d.x, 24u)])), _wgslsmith_f_op_f32(sign(var_3.c.x))))))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(arg_3.d.x, 24u)];
    let var_1 = arg_3;
    global1 = array<f32, 24>();
    var var_2 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_3 = _wgslsmith_f_op_f32(-120f - _wgslsmith_f_op_vec3_f32(func_2(arg_0.yy, reverseBits(-(~vec2<i32>(u_input.c, 0i))), arg_3)).x);
    return Struct_1(-vec3<i32>(-33980i, -arg_2, arg_3.a.x), true, i32(-1i) * -var_1.c, ~vec3<u32>(abs(u_input.b), _wgslsmith_clamp_u32(u_input.b >> (59441u % 32u), var_1.d.x, 1u << (arg_3.d.x % 32u)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b, var_1.d.x), ~2832u)));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = ~(~vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.b), 845u)) << (~(~u_input.a.zz) % vec2<u32>(32u));
    global0 = array<vec4<bool>, 32>();
    let var_1 = arg_0.b;
    let var_2 = ~countOneBits(arg_0.b.d.yy);
    let var_3 = select(abs(min(_wgslsmith_clamp_vec3_u32(arg_0.e.d, ~vec3<u32>(94577u, u_input.b, var_1.d.x), vec3<u32>(10263u, 1u, u_input.b)), vec3<u32>(var_2.x, 1u, func_4(vec3<bool>(var_1.b, true, var_1.b), arg_0.c.wwz, 2147483647i, Struct_1(vec3<i32>(arg_0.e.a.x, var_1.a.x, var_1.c), arg_0.b.b, var_1.c, u_input.a.yzz)).d.x))), ~vec3<u32>(45901u, var_0.x, 0u) | ~vec3<u32>(1u, var_0.x, max(1u, var_1.d.x)), true);
    return Struct_2(Struct_1(var_1.a, all(vec4<bool>(any(vec4<bool>(false, global2.x, true, true)), false, arg_0.a.b, false)), -arg_0.b.a.x, countOneBits(vec3<u32>(_wgslsmith_mod_u32(4294967295u, var_1.d.x), var_2.x, abs(var_2.x)))), func_4(vec3<bool>(true, arg_0.b.b, false), arg_0.c.xww, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.d.a.x, 13787i), _wgslsmith_div_vec2_i32(vec2<i32>(-15102i, 24481i) & arg_0.e.a.zy, min(vec2<i32>(2147483647i, var_1.c), var_1.a.zz))), func_4(vec3<bool>(all(global0[_wgslsmith_index_u32(1u, 32u)]), var_1.b, !global2.x), _wgslsmith_f_op_vec3_f32(round(arg_0.c.wyy)), -(~0i), Struct_1(vec3<i32>(-1i, 0i, -1i), arg_0.b.b && true, 1i, countOneBits(vec3<u32>(0u, 5757u, 56447u))))), arg_0.c, var_1, func_4(vec3<bool>(global2.x, (global2.x && true) || true, false), vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x + 2152f)), global1[_wgslsmith_index_u32(abs(countOneBits(0u)), 24u)]), _wgslsmith_dot_vec2_i32(~arg_0.a.a.yx, func_4(vec3<bool>(false, arg_0.a.b, arg_0.b.b), arg_0.c.zwx, _wgslsmith_sub_i32(-1i, u_input.c), func_4(vec3<bool>(arg_0.e.b, true, true), vec3<f32>(443f, -492f, -275f), -31773i, arg_0.e)).a.xx), Struct_1(~firstLeadingBit(vec3<i32>(-27981i, arg_0.a.c, arg_0.b.c)), !global2.x, select(_wgslsmith_div_i32(-2147483647i, u_input.c), var_1.c, arg_0.d.a.x < var_1.c), reverseBits(vec3<u32>(38103u, 4294967295u, 20464u)))));
}

fn func_1() -> Struct_1 {
    global2 = !vec2<bool>(!global2.x, ~u_input.b <= select(~25599u, u_input.b | u_input.a.x, true));
    let var_0 = func_5(Struct_2(func_4(!select(vec3<bool>(false, false, global2.x), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(false, global2.x, global2.x)), _wgslsmith_f_op_vec3_f32(func_2(select(vec2<bool>(global2.x, global2.x), vec2<bool>(false, false), vec2<bool>(global2.x, global2.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, 27695i), vec2<i32>(-10126i, -61907i)), Struct_1(vec3<i32>(u_input.c, -962i, 1i), false, 0i, u_input.a.yyz))), ~min(u_input.c, u_input.c), Struct_1(~vec3<i32>(u_input.c, 21495i, -37703i), global2.x, u_input.c << (4294967295u % 32u), vec3<u32>(2316u, u_input.b, u_input.b) << (vec3<u32>(50923u, u_input.b, u_input.b) % vec3<u32>(32u)))), func_4(vec3<bool>(true, func_3(), global2.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-507f, -431f, 436f) - vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], -1570f, global1[_wgslsmith_index_u32(u_input.a.x, 24u)])) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], 663f, 353f)))), u_input.c, func_4(select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(global2.x, global2.x, true), vec3<bool>(true, global2.x, global2.x)), _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(79393u, 24u)], -1733f, -2518f), vec3<f32>(global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(46502u, 24u)], global1[_wgslsmith_index_u32(76391u, 24u)])), 38767i, Struct_1(vec3<i32>(1i, u_input.c, u_input.c), global2.x, 32018i, u_input.a.zxw))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(45697u, 24u)], global1[_wgslsmith_index_u32(23893u, 24u)], global1[_wgslsmith_index_u32(0u, 24u)], 1575f)))) - vec4<f32>(-199f, _wgslsmith_div_f32(-463f, 2164f), -399f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(67437u, 24u)]))), func_4(select(select(vec3<bool>(false, global2.x, true), vec3<bool>(true, global2.x, false), true), vec3<bool>(global2.x, global2.x, global2.x), !vec3<bool>(true, global2.x, global2.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(4896u, 24u)], global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(39180u, 24u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 24u)], -671f, 885f)), any(vec2<bool>(false, false)))), u_input.c, func_4(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(35535u, 24u)], global1[_wgslsmith_index_u32(u_input.b, 24u)], 451f)), -34673i, func_4(vec3<bool>(global2.x, global2.x, global2.x), vec3<f32>(-1283f, -1856f, global1[_wgslsmith_index_u32(4294967295u, 24u)]), u_input.c, Struct_1(vec3<i32>(38283i, -15245i, u_input.c), true, -2147483647i, u_input.a.yyx)))), func_4(vec3<bool>(!global2.x, all(vec2<bool>(global2.x, true)), false), vec3<f32>(-713f, 454f, -238f), min(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 25244i, 0i, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, 2147483647i))), func_4(select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(true, global2.x, true), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(20624u, 24u)], global1[_wgslsmith_index_u32(866u, 24u)], global1[_wgslsmith_index_u32(0u, 24u)])), ~(-5442i), Struct_1(vec3<i32>(u_input.c, 1i, 26030i), true, 60609i, u_input.a.yww)))));
    global1 = array<f32, 24>();
    var var_1 = true;
    var_1 = false;
    return func_5(func_5(var_0)).d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(), func_4(select(!select(vec3<bool>(global2.x, false, false), vec3<bool>(global2.x, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, global2.x, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(global2.x, global2.x, false)), !vec3<bool>(global2.x, global2.x, global2.x)), !select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(global2.x, true, global2.x), vec3<bool>(true, false, global2.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(u_input.a.x, 24u)], 1272f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], 1274f, global1[_wgslsmith_index_u32(u_input.b, 24u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 24u)], 1535f, 1577f), vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], -359f, global1[_wgslsmith_index_u32(u_input.a.x, 24u)]))))), firstLeadingBit(_wgslsmith_div_i32(-53695i, -1i)), Struct_1(firstLeadingBit(vec3<i32>(u_input.c, u_input.c, -2147483647i)), global2.x, _wgslsmith_sub_i32(u_input.c | -36888i, u_input.c), u_input.a.xxx)), vec4<f32>(-1402f, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x | u_input.b), 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 24u)]))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(38305u, 24u)] * 1023f), -564f))), _wgslsmith_f_op_f32(trunc(296f))), func_5(Struct_2(Struct_1(~vec3<i32>(1i, -16361i, -2147483647i), global2.x, u_input.c, vec3<u32>(u_input.b, u_input.b, u_input.b)), func_4(select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, false, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(921f, -305f, global1[_wgslsmith_index_u32(u_input.a.x, 24u)]) - vec3<f32>(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(1u, 24u)], 197f)), select(-9743i, u_input.c, global2.x), func_1()), func_5(Struct_2(Struct_1(vec3<i32>(u_input.c, 1i, 2147483647i), global2.x, -2147483647i, u_input.a.xww), Struct_1(vec3<i32>(u_input.c, u_input.c, u_input.c), global2.x, u_input.c, u_input.a.zyy), vec4<f32>(657f, 1745f, -398f, global1[_wgslsmith_index_u32(u_input.a.x, 24u)]), Struct_1(vec3<i32>(u_input.c, u_input.c, -14691i), false, u_input.c, u_input.a.wzw), Struct_1(vec3<i32>(-1i, -5644i, 2147483647i), false, 0i, vec3<u32>(u_input.b, u_input.a.x, u_input.b)))).c, func_4(vec3<bool>(global2.x, global2.x, global2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(18220u, 24u)], 1000f, global1[_wgslsmith_index_u32(45278u, 24u)])), ~u_input.c, func_1()), func_4(!vec3<bool>(false, global2.x, global2.x), vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], 1293f, -1774f), reverseBits(-2147483647i), Struct_1(vec3<i32>(u_input.c, -1i, u_input.c), global2.x, -2147483647i, u_input.a.yyz)))).b, func_4(vec3<bool>(global2.x, (global2.x & global2.x) || select(false, global2.x, true), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 24u)], global1[_wgslsmith_index_u32(u_input.a.x, 24u)], 447f))), func_5(func_5(func_5(Struct_2(Struct_1(vec3<i32>(u_input.c, u_input.c, u_input.c), false, u_input.c, u_input.a.wzz), Struct_1(vec3<i32>(-1i, 2147483647i, u_input.c), false, u_input.c, vec3<u32>(33523u, 36797u, u_input.a.x)), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(u_input.b, 24u)], global1[_wgslsmith_index_u32(u_input.b, 24u)], 1079f), Struct_1(vec3<i32>(u_input.c, u_input.c, u_input.c), false, -2147483647i, vec3<u32>(2803u, u_input.a.x, 67003u)), Struct_1(vec3<i32>(0i, u_input.c, 27800i), false, 2147483647i, vec3<u32>(12635u, u_input.a.x, 17573u)))))).a.c, Struct_1(vec3<i32>(min(1i, u_input.c), u_input.c, _wgslsmith_mod_i32(u_input.c, 2147483647i)), func_3() & select(global2.x, global2.x, global2.x), abs(_wgslsmith_clamp_i32(-64875i, -38557i, u_input.c)), vec3<u32>(_wgslsmith_div_u32(4294967295u, u_input.a.x), ~1u, _wgslsmith_add_u32(u_input.b, u_input.b)))));
    let var_1 = !var_0.e.b;
    let var_2 = (-firstLeadingBit(abs(var_0.b.a)) | var_0.b.a) & vec3<i32>(select(abs(~var_0.e.a.x), var_0.b.a.x, all(!vec3<bool>(global2.x, var_0.e.b, false))), _wgslsmith_sub_i32(-1i << (reverseBits(u_input.a.x) % 32u), -1i), _wgslsmith_div_i32(abs(_wgslsmith_mult_i32(7879i, var_0.d.a.x)), u_input.c));
    let var_3 = !any(vec2<bool>(true, true));
    var_0 = Struct_2(var_0.a, Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(var_2, ~vec3<i32>(var_0.a.a.x, 28081i, u_input.c)), vec3<i32>(0i, var_0.e.c, i32(-1i) * -8250i)), true, ~func_5(Struct_2(Struct_1(vec3<i32>(u_input.c, -10433i, u_input.c), true, 0i, vec3<u32>(0u, u_input.a.x, 56550u)), Struct_1(vec3<i32>(-2147483647i, u_input.c, 0i), true, 0i, u_input.a.wyz), var_0.c, Struct_1(var_0.d.a, true, u_input.c, vec3<u32>(4294967295u, 37818u, var_0.a.d.x)), Struct_1(var_2, false, var_0.e.c, var_0.b.d))).a.c, _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) | firstLeadingBit(var_0.e.d), var_0.d.d & (vec3<u32>(var_0.b.d.x, u_input.a.x, 1003u) >> (var_0.e.d % vec3<u32>(32u))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], -270f, 578f, 1962f)))))), var_0.e, func_5(Struct_2(var_0.d, var_0.a, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c.x, 685f, -1203f, -615f), vec4<f32>(547f, var_0.c.x, 1710f, var_0.c.x))), func_1(), var_0.d)).a);
    let x = u_input.a;
    s_output = StorageBuffer(~15295i, ~(-35184i));
}

