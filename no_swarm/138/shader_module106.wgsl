struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec2<u32>, 10>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec3<bool>) -> vec3<f32> {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1, -1099f);
    let var_0 = arg_0;
    global1 = array<vec2<u32>, 10>();
    let var_1 = Struct_1(arg_0.c, ~(arg_0.c.x << (firstTrailingBit(~1947u) % 32u)), vec4<u32>(_wgslsmith_mult_u32(~(~35874u), 4294967295u >> (u_input.a.x % 32u)), u_input.a.x, ~(var_0.a.x << (var_0.c.x % 32u)), 4294967295u), global0.x, select(arg_0.e, select(arg_0.e, arg_0.e, false), arg_0.e));
    var var_2 = vec2<bool>(var_1.e.x, false);
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.d, -509f, var_1.d)));
}

fn func_2(arg_0: u32) -> vec2<i32> {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(u_input.a, arg_0, vec4<u32>(u_input.a.x, 72847u, arg_0, u_input.a.x), global0.x, vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(1000f - -968f), _wgslsmith_f_op_f32(ceil(global0.x)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)))))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(618f, global0.x), _wgslsmith_f_op_f32(-global0.x), -911f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(322f, -933f, global0.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -821f) + vec3<f32>(1000f, global0.x, -1000f)) * vec3<f32>(global0.x, global0.x, -1039f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1643f, global0.x)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-366f, global0.x, 1180f), vec3<f32>(global0.x, global0.x, global0.x))))))));
    var var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(select(~u_input.a.zyx, u_input.a.wzw, select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), abs(max(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.ywy) & ~u_input.a.zzy)), u_input.a.xwz);
    var_0 = vec3<u32>(~(~(~27788u)), abs(arg_0), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u ^ arg_0, var_0.x, 4294967295u), vec3<u32>(var_0.x, u_input.a.x & u_input.a.x, arg_0))));
    var var_1 = _wgslsmith_mult_u32(min(abs(_wgslsmith_mod_u32(4294967295u, 1u)), 1u), ~41742u);
    var var_2 = -833f;
    return u_input.b;
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: i32) -> Struct_1 {
    var var_0 = u_input.a.wyy;
    var var_1 = _wgslsmith_dot_vec2_i32(func_2(~(~var_0.x)), max(u_input.b, u_input.b));
    var var_2 = Struct_1(min(vec4<u32>(var_0.x, var_0.x, 37275u, countOneBits(u_input.a.x)) >> (vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(4294967295u, 1u), ~var_0.x, arg_0) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(u_input.a.x & 7466u, ~28869u), _wgslsmith_dot_vec3_u32(u_input.a.yzz, vec3<u32>(arg_0, var_0.x, var_0.x) << (u_input.a.zww % vec3<u32>(32u))), var_0.x, abs(var_0.x >> (u_input.a.x % 32u)))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a.x, 60771u) & 12927u, _wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0, _wgslsmith_sub_u32(495u, var_0.x)), arg_0)), ~u_input.a, global0.x, select(!(!arg_1), select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), !(!arg_1), !(!vec4<bool>(true, arg_1.x, arg_1.x, false))), !arg_1.x));
    var var_3 = ~u_input.a.xz;
    let var_4 = -3024i;
    return Struct_1(vec4<u32>(~60074u, ~1u, u_input.a.x, max(firstTrailingBit(22333u), var_3.x)), 0u, _wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(var_2.c, u_input.a, u_input.a), ~vec4<u32>(var_2.b, var_3.x, 12925u, u_input.a.x)), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(var_2.c ^ u_input.a, var_2.c), var_3.x, var_2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -652f), select(!arg_1, !vec4<bool>(all(var_2.e.ww), true, global0.x <= 492f, true), ((1i == arg_2) & all(var_2.e.wy)) & var_2.e.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_1);
    let var_1 = vec4<bool>(!arg_0.x, true, true, _wgslsmith_mult_i32(u_input.b.x ^ u_input.b.x, u_input.b.x) != firstLeadingBit(-2147483647i));
    global1 = array<vec2<u32>, 10>();
    var var_2 = _wgslsmith_f_op_f32(-global0.x);
    global1 = array<vec2<u32>, 10>();
    return _wgslsmith_add_u32(u_input.a.x, 26713u);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = firstTrailingBit(21114u);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d)))), _wgslsmith_f_op_f32(max(arg_2, global0.x)), global0.x);
    var var_1 = any(arg_3.e.xw);
    let var_2 = func_1(~func_1(~(~63065u), !vec4<bool>(arg_3.e.x, false, true, arg_3.e.x), min(u_input.b.x, ~u_input.b.x)).a.x, !vec4<bool>(arg_1.e.x, u_input.b.x < firstTrailingBit(38014i), arg_1.e.x, arg_1.e.x), ~u_input.b.x);
    let var_3 = max(select(~vec4<u32>(13315u, reverseBits(0u), 1u, ~u_input.a.x), ~abs(~var_2.c), ~50800u < ~var_2.a.x), u_input.a);
    return arg_3;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-func_5(-244f, arg_0, _wgslsmith_f_op_f32(trunc(global0.x)), Struct_1(vec4<u32>(arg_0.b, 0u, arg_0.b, 1u), arg_0.b, u_input.a, arg_0.d, arg_0.e)).d), _wgslsmith_f_op_f32(abs(arg_0.d)), arg_0.d, _wgslsmith_f_op_f32(abs(func_5(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 4294967295u), u_input.a.x, vec4<u32>(arg_0.b, 11855u, 36909u, 4294967295u), -123f, arg_0.e), -364f, arg_0.d, arg_0.e.xwx)).x, func_1(0u, arg_0.e, 1i), arg_0.d, func_1(u_input.a.x, arg_0.e, u_input.b.x)).d))));
    let var_1 = arg_0;
    let var_2 = arg_0;
    let var_3 = arg_0.e.xxy;
    var var_4 = ~_wgslsmith_mult_vec2_u32((abs(arg_0.c.wx) & _wgslsmith_sub_vec2_u32(var_1.a.zy, var_2.c.wy)) >> (var_2.c.yz % vec2<u32>(32u)), ~(~var_2.c.zz));
    return Struct_1(firstLeadingBit(vec4<u32>(~17598u, ~var_2.c.x, _wgslsmith_mult_u32(var_1.c.x, var_1.b), _wgslsmith_div_u32(var_2.b, u_input.a.x))) << (countOneBits(vec4<u32>(var_2.b ^ arg_0.c.x, var_2.c.x, _wgslsmith_sub_u32(11641u, u_input.a.x), u_input.a.x)) % vec4<u32>(32u)), abs(var_1.c.x), var_2.a, -1469f, var_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(821f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), -913f))), Struct_1(vec4<u32>(max(0u, 1u), _wgslsmith_div_u32(0u, u_input.a.x), u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(19617u, 19335u))), func_4(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-191f, global0.x, 173f)), func_1(16724u, vec4<bool>(true, false, true, false), -5323i)), u_input.a, 281f, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true), vec4<bool>(false, false, true, true))), global0.x, func_1(~u_input.a.x, select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, true, false)), _wgslsmith_mult_i32(4843i, 0i))));
    let var_1 = func_5(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(func_5(-150f, func_5(-1000f, Struct_1(u_input.a, 70475u, vec4<u32>(u_input.a.x, u_input.a.x, var_0.a.x, var_0.c.x), var_0.d, vec4<bool>(var_0.e.x, var_0.e.x, true, var_0.e.x)), 1341f, Struct_1(u_input.a, u_input.a.x, vec4<u32>(var_0.c.x, var_0.b, 1u, u_input.a.x), 537f, vec4<bool>(var_0.e.x, var_0.e.x, true, true))), _wgslsmith_f_op_f32(f32(-1f) * -642f), Struct_1(var_0.a, var_0.b, vec4<u32>(var_0.c.x, 4294967295u, u_input.a.x, 25633u), var_0.d, vec4<bool>(true, true, var_0.e.x, var_0.e.x))).d, -657f), 825f)), func_6(Struct_1(_wgslsmith_add_vec4_u32(func_6(Struct_1(u_input.a, 0u, var_0.c, var_0.d, vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, var_0.e.x))).c, ~vec4<u32>(4294967295u, var_0.c.x, var_0.b, var_0.c.x)), u_input.a.x >> ((0u & var_0.b) % 32u), abs(~vec4<u32>(var_0.b, 30619u, 36741u, var_0.b)), var_0.d, select(!vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, false), var_0.e, !var_0.e.x))), _wgslsmith_f_op_f32(-global0.x), func_5(443f, func_5(-426f, Struct_1(max(var_0.c, vec4<u32>(var_0.b, u_input.a.x, 0u, var_0.c.x)), abs(1u), var_0.c & u_input.a, _wgslsmith_f_op_f32(-var_0.d), !var_0.e), 975f, func_6(func_5(global0.x, Struct_1(vec4<u32>(u_input.a.x, 18881u, u_input.a.x, 10800u), 38112u, u_input.a, var_0.d, var_0.e), var_0.d, Struct_1(vec4<u32>(4144u, u_input.a.x, 20021u, var_0.a.x), 0u, var_0.c, -1284f, vec4<bool>(var_0.e.x, false, false, false))))), 418f, func_1(~countOneBits(1u), func_5(-1258f, Struct_1(vec4<u32>(var_0.c.x, var_0.a.x, 0u, var_0.b), 1u, u_input.a, var_0.d, var_0.e), _wgslsmith_f_op_f32(var_0.d - -968f), func_5(216f, Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 38495u), var_0.b, vec4<u32>(0u, 45117u, 4294967295u, 50904u), var_0.d, var_0.e), global0.x, Struct_1(u_input.a, u_input.a.x, vec4<u32>(4294967295u, 4294967295u, 14127u, 0u), 286f, var_0.e))).e, reverseBits(u_input.b.x << (4294967295u % 32u)))));
    let var_2 = !func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * var_1.d))), Struct_1(~vec4<u32>(1u, 31976u, 36762u, 54930u) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_clamp_u32(var_1.a.x, u_input.a.x, ~0u), ~(~vec4<u32>(1u, 11753u, var_1.b, 28894u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d + var_1.d)), func_1(var_1.a.x, var_0.e, reverseBits(u_input.b.x)).e), var_0.d, Struct_1(~_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, var_0.b, var_0.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 0u)), 2217u, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(7802u, u_input.a.x, u_input.a.x), u_input.a.xzz), var_1.c.x, u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(var_0.d * -605f), select(!vec4<bool>(var_1.e.x, var_1.e.x, false, var_1.e.x), vec4<bool>(var_1.e.x, var_1.e.x, var_0.e.x, false), var_0.c.x != 77932u))).e;
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, var_0.d, global0.x))))), vec3<f32>(1704f, global0.x, var_0.d), vec3<bool>(any(!var_0.e), any(var_2.xw) == false, 47483u != max(1u, u_input.a.x))));
    var var_3 = ~71744u;
    var var_4 = vec3<bool>(false, var_0.e.x, !var_1.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_div_vec2_u32(~abs(select(u_input.a.yx, u_input.a.xx, vec2<bool>(var_2.x, true))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a.x, min(14010u, 92344u), 88092u ^ var_0.c.x), ~1u), 10u)]), u_input.b.x, 22741u, u_input.b.x);
}

