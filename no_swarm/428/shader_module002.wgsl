struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(-1i, -57020i, 2147483647i), vec3<i32>(i32(-2147483648), 1i, 3109i), vec3<i32>(-43807i, -1i, -1i), vec3<i32>(2147483647i, -52333i, -36332i), vec3<i32>(1i, -24642i, 0i), vec3<i32>(-23159i, 0i, 2147483647i), vec3<i32>(-23627i, 59158i, 18889i), vec3<i32>(16139i, -32657i, 448i), vec3<i32>(-85664i, 15043i, 2147483647i), vec3<i32>(1i, 22701i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(-1i, -1i, -16951i), vec3<i32>(-1014i, -1i, i32(-2147483648)), vec3<i32>(1133i, 2147483647i, 19483i), vec3<i32>(21675i, -1i, -610i), vec3<i32>(-22528i, 1i, -14155i), vec3<i32>(1i, 2147483647i, 2147483647i), vec3<i32>(-48125i, -1424i, -10927i), vec3<i32>(0i, -25065i, 2147483647i), vec3<i32>(51434i, -42846i, 0i), vec3<i32>(26045i, 1i, -1i), vec3<i32>(-18627i, 2147483647i, -1i), vec3<i32>(-1i, 14490i, -28112i), vec3<i32>(22271i, 32939i, 26206i), vec3<i32>(-1i, -22559i, -1i), vec3<i32>(-1i, 2147483647i, -60825i), vec3<i32>(21105i, -7443i, 0i), vec3<i32>(-14902i, -14415i, 0i), vec3<i32>(-31640i, -20152i, i32(-2147483648)), vec3<i32>(14724i, -1i, 0i), vec3<i32>(18806i, 19442i, 2147483647i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = select(select(vec3<bool>(firstLeadingBit(u_input.c.x) >= ~u_input.c.x, arg_2.a.a.x || false, false), !(!select(vec3<bool>(arg_2.d.a.x, arg_2.d.a.x, arg_2.a.a.x), vec3<bool>(arg_2.a.a.x, false, arg_2.d.a.x), arg_2.d.a.x)), true), select(vec3<bool>(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(abs(arg_0)) > -300f, arg_2.d.a.x), !select(select(vec3<bool>(arg_2.a.a.x, arg_2.d.a.x, true), vec3<bool>(true, arg_2.d.a.x, arg_2.a.a.x), vec3<bool>(false, false, arg_2.a.a.x)), select(vec3<bool>(arg_2.d.a.x, false, arg_2.d.a.x), vec3<bool>(arg_2.d.a.x, true, true), vec3<bool>(false, arg_2.d.a.x, true)), vec3<bool>(false, arg_2.d.a.x, true)), arg_2.d.a.x), false);
    global0 = array<vec3<i32>, 31>();
    let var_1 = arg_2.d;
    let var_2 = Struct_2(var_1, arg_2.c.x, countOneBits(global0[_wgslsmith_index_u32(~u_input.c.x, 31u)]) << ((vec3<u32>(1u, ~9854u, 1u) ^ max(max(vec3<u32>(75172u, arg_1.x, u_input.c.x), vec3<u32>(u_input.c.x, 68409u, arg_1.x)), countOneBits(vec3<u32>(arg_1.x, 1u, arg_1.x)))) % vec3<u32>(32u)), Struct_1(select(select(select(arg_2.d.a, vec2<bool>(true, var_0.x), vec2<bool>(false, var_0.x)), !arg_2.d.a, all(vec2<bool>(true, true))), vec2<bool>(var_1.a.x, !var_0.x), var_1.a)));
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)));
    return vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - var_3), -781f) < _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-628f + _wgslsmith_f_op_f32(step(1000f, arg_0)))), !(arg_2.b >= max(min(u_input.a.x, -1i), max(u_input.a.x, -46547i))));
}

fn func_2() -> Struct_1 {
    var var_0 = !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true)));
    var var_1 = select(!(!func_3(_wgslsmith_f_op_f32(1049f + 953f), u_input.c, Struct_2(Struct_1(var_0.yz), u_input.b.x, u_input.b.xxy, Struct_1(var_0.wx)))), var_0.xz, !(!all(vec2<bool>(false, false))));
    var var_2 = Struct_1(vec2<bool>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b.wzx, vec3<i32>(-14858i, 2147483647i, -2147483647i), vec3<i32>(2147483647i, u_input.a.x, u_input.b.x)), select(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], vec3<i32>(u_input.b.x, u_input.b.x, u_input.a.x), true)) == ~(-u_input.b.x), false));
    var_2 = Struct_1(!vec2<bool>(select(u_input.c.x >= 0u, !var_0.x, true), !any(vec4<bool>(var_0.x, true, var_0.x, var_2.a.x))));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(351f)), _wgslsmith_f_op_f32(f32(-1f) * -2046f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(523f + -532f) * -852f)), _wgslsmith_f_op_f32(sign(691f)))) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-216f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(691f * -1129f) * _wgslsmith_f_op_f32(sign(-1316f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -117f))));
    return Struct_1(var_2.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_2 {
    global0 = array<vec3<i32>, 31>();
    var var_0 = select(select(select(vec3<bool>(all(vec4<bool>(arg_3.a.x, true, arg_0.a.x, arg_1.a.a.x)), func_3(arg_2.x, vec2<u32>(18939u, u_input.c.x), Struct_2(Struct_1(arg_0.a), -37772i, arg_1.c, arg_0)).x, u_input.c.x > u_input.c.x), !vec3<bool>(arg_1.a.a.x, true, true), vec3<bool>(true, false && arg_1.d.a.x, u_input.c.x == u_input.c.x)), vec3<bool>(select(arg_3.a.x, true, false) | (arg_2.x < -706f), true, !(-58602i <= u_input.a.x)), ~1u < firstTrailingBit(_wgslsmith_sub_u32(4294967295u, 0u))), !select(select(select(vec3<bool>(true, true, arg_1.d.a.x), vec3<bool>(true, true, arg_3.a.x), vec3<bool>(arg_3.a.x, arg_1.d.a.x, false)), select(vec3<bool>(arg_3.a.x, arg_3.a.x, true), vec3<bool>(true, arg_1.a.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, true, arg_0.a.x)), func_3(-116f, vec2<u32>(u_input.c.x, 0u), arg_1).x), !(!vec3<bool>(arg_1.d.a.x, arg_0.a.x, true)), true), !(!select(any(vec3<bool>(arg_0.a.x, arg_3.a.x, arg_3.a.x)), true, arg_3.a.x)));
    global0 = array<vec3<i32>, 31>();
    let var_1 = ~u_input.a.x;
    let var_2 = ~(~(-arg_1.c));
    return Struct_2(func_2(), u_input.a.x, vec3<i32>(-42105i >> (u_input.c.x % 32u), reverseBits(u_input.b.x), select(-4069i, var_2.x, _wgslsmith_div_u32(u_input.c.x, 83107u) < ~u_input.c.x)), arg_3);
}

fn func_1(arg_0: vec4<bool>) -> vec3<bool> {
    global0 = array<vec3<i32>, 31>();
    var var_0 = func_4(func_2(), Struct_2(Struct_1(func_3(-1000f, abs(vec2<u32>(u_input.c.x, 0u)), Struct_2(Struct_1(vec2<bool>(arg_0.x, true)), -2406i, vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), Struct_1(arg_0.zw)))), ~abs(-u_input.a.x), u_input.b.xzz, func_2()), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1469f - 302f), -605f, _wgslsmith_div_f32(2785f, -1714f), _wgslsmith_f_op_f32(-844f + 261f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(191f, 689f, 744f, 1137f) - vec4<f32>(474f, -1197f, 1006f, -866f))), select(arg_0, !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), arg_0.x & false))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1095f, 316f)) + -582f), _wgslsmith_f_op_f32(floor(-592f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2095f - -675f), _wgslsmith_f_op_f32(1263f * 123f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(852f))))), Struct_1(select(vec2<bool>(false, all(vec2<bool>(false, arg_0.x))), !arg_0.xz, arg_0.x)));
    global0 = array<vec3<i32>, 31>();
    var var_1 = max(abs(~min(vec3<u32>(u_input.c.x, 20871u, 40178u), countOneBits(vec3<u32>(u_input.c.x, 28598u, u_input.c.x)))), _wgslsmith_sub_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(83081u, 0u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(10098u, u_input.c.x, u_input.c.x))), select(~abs(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), ~vec3<u32>(u_input.c.x, 6313u, u_input.c.x), arg_0.zww)));
    let var_2 = var_0.d;
    return select(arg_0.xyy, arg_0.yxy, arg_0.wzy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 31>();
    global0 = array<vec3<i32>, 31>();
    let var_0 = select(select(vec2<bool>(true, true), vec2<bool>(!all(vec3<bool>(false, true, true)), true), true), select(!vec2<bool>(true, u_input.b.x > u_input.a.x), select(vec2<bool>(true, any(vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), false), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(!any(vec3<bool>(true, false, false)), true)), false);
    let var_1 = ~(((vec3<i32>(u_input.a.x, u_input.a.x, u_input.b.x) << (vec3<u32>(0u, 1u, 43877u) % vec3<u32>(32u))) & ~vec3<i32>(-1i, u_input.a.x, u_input.b.x)) & ~(~vec3<i32>(u_input.a.x, u_input.b.x, 2147483647i)));
    var var_2 = reverseBits(vec4<u32>(u_input.c.x, 0u & ~_wgslsmith_mult_u32(0u, u_input.c.x), ~(~4294967295u), ~countOneBits(~u_input.c.x)));
    let var_3 = func_1(!vec4<bool>(!var_0.x | !var_0.x, true, var_0.x, !all(vec3<bool>(var_0.x, var_0.x, var_0.x))));
    let var_4 = ~(~var_2.wzw);
    let x = u_input.a;
    s_output = StorageBuffer(max(~(-firstLeadingBit(global0[_wgslsmith_index_u32(var_2.x, 31u)])), ~_wgslsmith_mult_vec3_i32(-u_input.b.zzx, global0[_wgslsmith_index_u32(~4294967295u, 31u)])));
}

