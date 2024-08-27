struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(vec3<f32>(410f, 101f, -1057f), 2147483647i), Struct_4(vec3<f32>(985f, -554f, 1909f), 0i), Struct_4(vec3<f32>(-500f, -1681f, 2416f), -18154i), Struct_4(vec3<f32>(394f, -808f, 236f), 0i), Struct_4(vec3<f32>(-607f, 617f, 1146f), i32(-2147483648)), Struct_4(vec3<f32>(-169f, -1000f, 1000f), 1i), Struct_4(vec3<f32>(-1886f, -640f, 700f), 0i), Struct_4(vec3<f32>(673f, -466f, 1061f), -10068i), Struct_4(vec3<f32>(1537f, -398f, -758f), 14028i), Struct_4(vec3<f32>(-539f, -800f, -488f), -1i), Struct_4(vec3<f32>(674f, -1326f, 382f), 0i), Struct_4(vec3<f32>(-715f, -840f, -853f), 2147483647i), Struct_4(vec3<f32>(1571f, -692f, 439f), -11139i), Struct_4(vec3<f32>(-2664f, 1000f, 983f), -19972i), Struct_4(vec3<f32>(601f, -853f, 718f), 75625i), Struct_4(vec3<f32>(529f, 1869f, -1088f), -11441i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global0 = array<Struct_4, 16>();
    var var_0 = Struct_1(~select(firstLeadingBit(vec2<i32>(28229i, -2147483647i)) << (u_input.a.yx % vec2<u32>(32u)), -(~vec2<i32>(-37559i, 1i)), vec2<bool>(true, true)), select(vec2<bool>(any(vec3<bool>(false, false, true)), any(vec4<bool>(true, false, false, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), all(vec4<bool>(true, false, true, all(vec2<bool>(true, false))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1043f), _wgslsmith_f_op_f32(f32(-1f) * -1026f)), 1i);
    let var_1 = vec2<bool>(var_0.b.x, abs(u_input.a.x) < 4294967295u);
    var_0 = Struct_1(reverseBits(abs(-(var_0.a << (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))))), var_1, var_0.c, _wgslsmith_mod_i32(abs(-2147483647i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-27054i, 31547i, 1i), ~vec3<i32>(var_0.d, var_0.d, -5117i))));
    var_0 = Struct_1(min(var_0.a << ((_wgslsmith_mod_vec2_u32(u_input.a.xy, vec2<u32>(4294967295u, u_input.a.x)) >> (reverseBits(u_input.a.ww) % vec2<u32>(32u))) % vec2<u32>(32u)), var_0.a), !select(select(var_1, !vec2<bool>(var_0.b.x, false), vec2<bool>(var_0.b.x, var_1.x)), select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, false), var_1), var_0.b, select(vec2<bool>(true, false), vec2<bool>(true, var_0.b.x), var_1.x)), var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-253f, var_0.c)))))), var_0.d);
    return ~34560u;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = ~reverseBits(~(~(361u << (u_input.a.x % 32u))));
    var var_1 = global0[_wgslsmith_index_u32(~45964u & func_3(), 16u)];
    let var_2 = Struct_1(-min(arg_2.yx, arg_3.a), !vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, var_1.a.x, true)))), ~(-(i32(-1i) * -var_1.b)));
    var var_3 = select(vec3<bool>(false, !(all(vec4<bool>(var_2.b.x, var_2.b.x, true, true)) | !var_2.b.x), arg_0 < (func_3() | arg_0)), !vec3<bool>(true, true, var_2.b.x), true);
    let var_4 = vec2<bool>(!var_3.x, all(!var_2.b));
    return select(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - 1803f) < var_2.c, var_4.x, !all(vec2<bool>(var_2.b.x, true)), any(select(vec2<bool>(false, var_2.b.x), !var_2.b, !var_2.b.x))), !select(!select(vec4<bool>(var_3.x, var_4.x, var_4.x, false), vec4<bool>(false, var_2.b.x, false, var_2.b.x), true), !select(vec4<bool>(var_3.x, true, var_4.x, var_2.b.x), vec4<bool>(true, var_3.x, false, var_2.b.x), true), select(!vec4<bool>(false, var_2.b.x, false, var_4.x), select(vec4<bool>(true, var_4.x, true, false), vec4<bool>(var_4.x, true, var_4.x, true), var_4.x), select(vec4<bool>(var_4.x, true, true, true), vec4<bool>(false, var_2.b.x, var_4.x, false), vec4<bool>(var_2.b.x, true, false, var_3.x)))), !var_2.b.x);
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_f_op_f32(min(-1068f, arg_2.a.x)));
    global0 = array<Struct_4, 16>();
    let var_1 = _wgslsmith_clamp_vec3_u32(~(~u_input.a.xxw), reverseBits(u_input.a.xzy << (u_input.a.yxw % vec3<u32>(32u))), ~vec3<u32>(_wgslsmith_sub_u32(~1u, ~u_input.a.x), reverseBits(47871u), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x) >> (8575u % 32u)));
    var var_2 = arg_1.xxw;
    var var_3 = _wgslsmith_div_i32(arg_2.b, _wgslsmith_dot_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(arg_2.b, -2147483647i, arg_2.b, arg_2.b)) | (~vec4<i32>(49229i, arg_2.b, -85301i, 2147483647i) >> (vec4<u32>(1u, u_input.a.x, var_1.x, 4294967295u) % vec4<u32>(32u))), -vec4<i32>(arg_2.b, _wgslsmith_sub_i32(arg_2.b, arg_2.b), 17845i, arg_2.b)));
    return Struct_1(reverseBits(vec2<i32>(arg_2.b, select(arg_2.b, 0i, true))), select(!(!var_2.xx), !func_2(~0u, var_0, ~vec3<i32>(arg_2.b, 2147483647i, 10423i), Struct_3(vec2<i32>(11999i, -1i), u_input.a)).zw, true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1081f)), var_0)), _wgslsmith_dot_vec4_i32(reverseBits(-vec4<i32>(arg_2.b, 47207i, 15113i, 28491i)), vec4<i32>(arg_2.b, -arg_2.b, -arg_2.b, arg_2.b)));
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> Struct_3 {
    var var_0 = func_4(!any(select(vec2<bool>(true, true), vec2<bool>(true, arg_1), !arg_1)), select(!select(!vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1)), select(select(select(vec4<bool>(arg_1, false, false, false), vec4<bool>(false, arg_1, arg_1, false), arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1), !arg_1), !select(vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(false, arg_1, true, true)), all(select(vec3<bool>(true, arg_1, true), vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, arg_1, true)))), vec4<bool>(all(vec2<bool>(false, true)), false, all(func_2(u_input.a.x, 332f, vec3<i32>(arg_0.a.x, -84537i, arg_0.a.x), arg_0)), !any(vec4<bool>(arg_1, arg_1, false, arg_1)))), Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-855f, 256f, 468f) - vec3<f32>(-886f, -1103f, -989f)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-545f, -1034f, 1510f), vec3<f32>(527f, 851f, 447f))), _wgslsmith_div_vec3_f32(vec3<f32>(293f, -1080f, -213f), vec3<f32>(-2448f, 1686f, 1032f))))), _wgslsmith_mult_i32(arg_0.a.x, ~arg_0.a.x)));
    var var_1 = u_input.a.x;
    let var_2 = -61754i;
    var var_3 = Struct_2(!vec4<bool>(var_0.b.x, firstTrailingBit(4294967295u) == u_input.a.x, arg_0.a.x > -2147483647i, any(select(vec4<bool>(true, var_0.b.x, arg_1, true), vec4<bool>(var_0.b.x, false, true, true), true))), func_4(!var_0.b.x, vec4<bool>(arg_1, reverseBits(37438u) >= max(u_input.a.x, arg_0.b.x), true, _wgslsmith_div_i32(arg_0.a.x, -2147483647i) > 2147483647i), global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), arg_1, -621f, var_0.c);
    var_0 = func_4(true, var_3.a, global0[_wgslsmith_index_u32(reverseBits(39151u), 16u)]);
    return Struct_3(var_0.a, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 16>();
    global0 = array<Struct_4, 16>();
    global0 = array<Struct_4, 16>();
    var var_0 = Struct_3(vec2<i32>(-1i, 0i & (_wgslsmith_clamp_i32(298i, -19286i, -54684i) | 1i)), vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.a.x, 38314u, u_input.a.x, u_input.a.x)), u_input.a), 1u));
    var_0 = func_1(Struct_3(var_0.a, _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, ~vec4<u32>(1u, 0u, var_0.b.x, 4294967295u), min(var_0.b, var_0.b)), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.b.x, 0u, 1u), vec4<u32>(u_input.a.x, var_0.b.x, 62816u, var_0.b.x))))), _wgslsmith_mult_i32(~var_0.a.x, -2147483647i) >= ~19910i);
    global0 = array<Struct_4, 16>();
    let var_1 = -1176i;
    var_0 = Struct_3(firstLeadingBit(firstTrailingBit(select(~vec2<i32>(var_0.a.x, 8443i), ~vec2<i32>(var_0.a.x, var_0.a.x), vec2<bool>(true, true)))), vec4<u32>(~(~(~1u)), var_0.b.x, 5731u, u_input.a.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-495f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -562f), _wgslsmith_f_op_f32(floor(-894f)), any(vec3<bool>(false, false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1067f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-208f * 1f)), -1691f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(var_0.b.wz, vec2<u32>(~31190u, var_0.b.x), var_0.b.xz), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-576f)))), var_2.x)));
}

