struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2 = Struct_2(Struct_1(1u, vec4<bool>(false, true, true, false), 50417u), vec2<bool>(true, true), true);

var<private> global2: vec3<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: bool) -> f32 {
    global0 = min(_wgslsmith_mod_i32(_wgslsmith_mod_i32(select(2147483647i, ~u_input.b.x, global1.b.x && false), i32(-1i) * -1255i), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 24764i, -8415i, u_input.b.x), vec4<i32>(-1i, -2147483647i, -47808i, 57096i)))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(u_input.b.x, u_input.c.x, -7229i, u_input.c.x), vec4<i32>(47029i, 1i, u_input.b.x, u_input.b.x)) << (~vec4<u32>(global1.a.c, u_input.d.x, global1.a.c, 4294967295u) % vec4<u32>(32u)), -(vec4<i32>(-2147483647i, u_input.c.x, 44530i, 46695i) | vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, u_input.b.x)), ~(~vec4<i32>(u_input.c.x, u_input.c.x, u_input.b.x, -1i))), ~(~(vec4<i32>(u_input.b.x, -12392i, -2147483647i, 1i) ^ vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, -6069i)))));
    let var_0 = u_input.b.yz;
    global1 = Struct_2(global1.a, global2.yz, global1.b.x);
    global1 = Struct_2(Struct_1(66418u, vec4<bool>(!(!global1.c), select(true, false, global2.x), (global1.a.a >= 61567u) | !global1.a.b.x, true), min(u_input.a.x, 4294967295u)), select(global1.a.b.ww, !vec2<bool>(true, any(global1.a.b.zxy)), false), !global2.x);
    var var_1 = Struct_2(global1.a, global1.b, true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(778f - 1060f)))))));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_1(~_wgslsmith_add_u32((global1.a.a | global1.a.a) & ~global1.a.a, global1.a.a), vec4<bool>(global2.x, true, true, global2.x), global1.a.a);
    let var_1 = Struct_2(Struct_1(~1u, vec4<bool>(select(any(global1.a.b), any(var_0.b.xx), true), false, !any(var_0.b.wz), false), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(67553u, global1.a.c)), countOneBits(vec2<u32>(4294967295u, global1.a.c)), ~u_input.d.xy), ~(~vec2<u32>(var_0.c, 4294967295u)))), global1.a.b.yw, global1.c);
    var var_2 = vec2<i32>(u_input.b.x, _wgslsmith_add_i32(select(-_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), _wgslsmith_div_i32(19863i, 1i), false), u_input.b.x << (_wgslsmith_div_u32(abs(global1.a.c), reverseBits(global1.a.a)) % 32u)));
    let var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.x, max(_wgslsmith_add_i32(u_input.c.x & var_2.x, u_input.b.x), -2147483647i), -1i), _wgslsmith_mod_vec3_i32(u_input.b, _wgslsmith_mod_vec3_i32(-_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(var_2.x, u_input.c.x, u_input.c.x)), vec3<i32>(55940i, countOneBits(var_2.x), var_2.x))));
    let var_4 = true;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(349f, 1204f)))), 2600f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -911f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(646f, -1086f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -829f), 212f)), vec2<f32>(-1892f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1064f), _wgslsmith_f_op_f32(ceil(146f))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> f32 {
    global0 = 936i;
    global0 = ~(~arg_0.x);
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_1)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(2144f, _wgslsmith_f_op_f32(arg_1 - -1000f)) - vec2<f32>(1196f, arg_1))));
    var var_1 = -vec3<i32>(_wgslsmith_dot_vec3_i32(max(u_input.b, arg_0), ~(~arg_0)), 10040i, -27419i);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-1623f * var_0.x)), _wgslsmith_f_op_f32(-var_0.x)) * vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(var_0.x - 260f)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, var_0.x)))), _wgslsmith_f_op_vec2_f32(func_3()))))));
    return 1118f;
}

fn func_4(arg_0: u32, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(0u, select(vec4<bool>(true, false, global1.a.b.x, any(vec2<bool>(global1.a.b.x, global2.x))), !global1.a.b, select(!global1.b.x, false, true)), u_input.d.x), !select(global2.xx, global2.yz, global2.zz), global2.x);
    var var_1 = true;
    return Struct_2(Struct_1(4294967295u, select(vec4<bool>(arg_0 >= global1.a.a, true, u_input.b.x != 37782i, !var_0.a.b.x), select(select(global1.a.b, var_0.a.b, true), select(global1.a.b, vec4<bool>(global2.x, true, global1.b.x, global2.x), var_0.b.x), !global1.b.x), global2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(~6346u, ~var_0.a.a, reverseBits(21854u), ~42965u), vec4<u32>(0u, 27772u, var_0.a.c, var_0.a.c))), vec2<bool>(all(select(select(global2.yy, vec2<bool>(true, var_0.b.x), global2.x), select(global2.xx, vec2<bool>(var_0.b.x, global2.x), global2.x), false)), true), any(!select(var_0.a.b.wzw, vec3<bool>(false, var_0.a.b.x, var_0.b.x), false)) & global1.c);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global2 = !(!select(!select(vec3<bool>(arg_3.b.x, arg_0.b.x, false), arg_3.b.xww, true), !vec3<bool>(global2.x, global2.x, arg_0.b.x), true));
    var var_0 = ~(firstTrailingBit(~vec4<u32>(13939u, 4294967295u, arg_2.a, arg_1.a.a)) & max(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, global1.a.c, 49815u), vec4<u32>(u_input.d.x, global1.a.a, arg_0.a, 15672u)), ~0u, reverseBits(10250u), abs(17808u)), ~(~vec4<u32>(26502u, arg_0.a, arg_0.c, arg_2.c))));
    var_0 = reverseBits(_wgslsmith_div_vec4_u32(~vec4<u32>(0u | arg_1.a.c, 0u, abs(arg_3.a), ~7298u), countOneBits(~(~vec4<u32>(arg_3.c, 14472u, arg_1.a.c, 55157u)))));
    let var_1 = 0i;
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f)))));
    return !all(vec2<bool>(func_4(arg_1.a.c, -369f).b.x, select(false, arg_3.b.x, true))) | arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(global1.a, func_4(global1.a.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.c.x, u_input.b.x, -2147483647i), -1558f)))), _wgslsmith_f_op_f32(step(-864f, 430f))))), func_4(~(~43248u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<i32>(2147483647i, u_input.b.x, u_input.c.x), 1390f)))))).a, global1.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_0)) * _wgslsmith_f_op_f32(385f + 1747f)), -594f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1526f - -621f), _wgslsmith_f_op_f32(842f - 669f)))) + vec3<f32>(-493f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1889f * 1000f), _wgslsmith_div_f32(-314f, 1724f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-576f, -162f) - -879f) * _wgslsmith_f_op_f32(f32(-1f) * -1947f))));
    global0 = u_input.c.x;
    let var_2 = max(-(~vec2<i32>(u_input.c.x, -11489i)) << (_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, global1.a.a), vec2<u32>(7795u, 4294967295u)) % vec2<u32>(32u)), select(u_input.b.zy, _wgslsmith_add_vec2_i32(vec2<i32>(16378i, -1i), u_input.c), select(global2.x, global2.x, global1.a.b.x)) << (_wgslsmith_sub_vec2_u32(u_input.a.zx, u_input.a.xx >> (vec2<u32>(32770u, global1.a.a) % vec2<u32>(32u))) % vec2<u32>(32u))) & (_wgslsmith_div_vec2_i32(vec2<i32>(1i, _wgslsmith_div_i32(0i, u_input.c.x)), vec2<i32>(u_input.c.x, _wgslsmith_div_i32(u_input.c.x, u_input.b.x))) & -firstLeadingBit(u_input.c));
    let var_3 = func_4(u_input.a.x, var_1.x).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + var_1.x) * _wgslsmith_f_op_f32(step(var_1.x, -429f))))));
}

