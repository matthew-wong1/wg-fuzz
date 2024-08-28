struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(2147483647i, -6507i, 18378i, 0i, -23151i, -1i, 31054i, 37160i, -24085i, 28784i, 0i, 11623i, -36223i, 21224i, 3837i, -63433i, -8679i, 1i, 0i, -5506i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    var var_0 = !vec4<bool>(any(vec2<bool>(true, true)), true, true, !any(vec4<bool>(true, false, true, false)));
    let var_1 = -1i;
    var var_2 = Struct_3(Struct_1(select(var_0.wy, var_0.xx, select(vec2<bool>(var_0.x, false), select(vec2<bool>(var_0.x, false), vec2<bool>(true, false), true), var_0.x | var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -786f), _wgslsmith_f_op_f32(f32(-1f) * -1184f), 1f)));
    var var_3 = -1671f;
    var var_4 = Struct_3(Struct_1(var_2.a.a, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.a.b.x, var_2.a.b.x), var_2.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, 190f)) - _wgslsmith_f_op_f32(max(var_2.a.b.x, -772f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(926f * 1349f))))));
    return u_input.b;
}

fn func_2() -> vec4<i32> {
    let var_0 = vec4<i32>(global0[_wgslsmith_index_u32(~7498u, 20u)], (18386i | global0[_wgslsmith_index_u32(u_input.b, 20u)]) >> (u_input.b % 32u), _wgslsmith_add_i32(~(i32(-1i) * -11908i), _wgslsmith_add_i32(_wgslsmith_mult_i32(1i, global0[_wgslsmith_index_u32(4294967295u, 20u)]), -u_input.c.x)), u_input.a.x);
    var var_1 = Struct_4(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), true))), _wgslsmith_dot_vec2_u32(vec2<u32>(~func_3(), select(reverseBits(u_input.b), 1u, true)), abs(vec2<u32>(1u, 1u))), ~(~var_0.wyz));
    let var_2 = Struct_3(Struct_1(select(select(select(var_1.a.ww, var_1.a.zy, var_1.a.xw), vec2<bool>(var_1.a.x, true), true), !var_1.a.wz, !var_1.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1045f, -2068f, 286f)))))));
    var var_3 = Struct_4(var_1.a, ~reverseBits(1u), vec3<i32>(var_0.x, _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_mult_i32(var_0.x, max(var_0.x, 0i))), abs(~0i)));
    let var_4 = -(~_wgslsmith_add_vec3_i32((vec3<i32>(var_0.x, var_0.x, -56085i) >> (vec3<u32>(4294967295u, 0u, 0u) % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_i32(var_1.c, var_0.wxx), firstTrailingBit(countOneBits(vec3<i32>(var_3.c.x, 2147483647i, var_1.c.x)))));
    return vec4<i32>(48137i, -19106i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 33285i, _wgslsmith_sub_i32(~(-2147483647i), 16502i), ~65263i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_1.c.x), var_3.c.yx), i32(-1i) * -1i, _wgslsmith_add_i32(0i, 0i), 31218i)), var_1.c.x);
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: f32) -> vec2<i32> {
    var var_0 = Struct_1(vec2<bool>(u_input.c.x > 10995i, !all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -199f, arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_0, arg_2))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(3276f, 1869f, -440f)))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * arg_2)), arg_2))));
    let var_1 = Struct_4(vec4<bool>(all(vec3<bool>(true, false, !var_0.a.x)), false, var_0.a.x, !var_0.a.x), 1u, _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(select(~arg_1.xxw, arg_1.zyx | vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)]), select(false, true, var_0.a.x)), arg_1.zxy), ~arg_1.wxx));
    var var_2 = var_0.a.x;
    var_0 = Struct_1(!select(vec2<bool>(!var_1.a.x, false), vec2<bool>(all(vec2<bool>(true, var_1.a.x)), true), vec2<bool>(true, any(var_1.a.zz))), vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(sign(-234f)), _wgslsmith_f_op_f32(exp2(var_0.b.x))));
    let var_3 = Struct_2(Struct_1(vec2<bool>(var_1.a.x, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(840f, arg_2, 458f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)))));
    return vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 51644u), 20u)], -func_2().x);
}

fn func_1(arg_0: Struct_4) -> vec3<i32> {
    global0 = array<i32, 20>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1340f, -1577f, 1925f, 868f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1593f, -1000f, 1711f, 209f) - vec4<f32>(-566f, -504f, 365f, -1621f)))), vec4<f32>(-1100f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -781f) * _wgslsmith_f_op_f32(-1540f + -754f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(398f, -536f), 2229f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-398f - 464f))))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -214f), 1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1401f + _wgslsmith_f_op_f32(473f * 690f)), -969f)), _wgslsmith_f_op_f32(min(1f, -326f)), -483f));
    let var_1 = _wgslsmith_div_vec2_u32(~(~(vec2<u32>(81318u, 20675u) ^ ~vec2<u32>(0u, arg_0.b))), ~vec2<u32>(1u | ~u_input.b, _wgslsmith_div_u32(1u, 43541u) | _wgslsmith_mod_u32(1u, u_input.b)));
    var var_2 = func_4(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1750f + _wgslsmith_f_op_f32(var_0.x - var_0.x)), var_0.x)), func_2(), _wgslsmith_f_op_f32(700f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 994f)))));
    global0 = array<i32, 20>();
    return -firstTrailingBit(vec3<i32>(_wgslsmith_clamp_i32(~2147483647i, i32(-1i) * -14705i, 1i), -3442i, -(~global0[_wgslsmith_index_u32(var_1.x, 20u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(-_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.c.x, -1i, 8024i) & func_1(Struct_4(vec4<bool>(true, true, true, false), 4294967295u, vec3<i32>(global0[_wgslsmith_index_u32(1u, 20u)], u_input.c.x, -13428i))), reverseBits(max(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 20u)], -2147483647i, u_input.a.x), vec3<i32>(38250i, 1i, global0[_wgslsmith_index_u32(53381u, 20u)])))));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-412f - -1420f), _wgslsmith_f_op_f32(-1251f * 727f)))))), _wgslsmith_f_op_f32(f32(-1f) * -790f), true));
    var var_2 = min(vec3<u32>(min(~1u, firstTrailingBit(u_input.b)), u_input.b, ~(1u << (countOneBits(u_input.b) % 32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 0u, 1u), select(vec3<u32>(0u, u_input.b, 4294967295u), ~vec3<u32>(92888u, u_input.b, u_input.b), vec3<bool>(true, true, true))) ^ ((vec3<u32>(115955u, 8820u, u_input.b) << (abs(vec3<u32>(52123u, u_input.b, 22092u)) % vec3<u32>(32u))) >> (~(~vec3<u32>(u_input.b, u_input.b, u_input.b)) % vec3<u32>(32u))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1123f + _wgslsmith_f_op_f32(-2581f * -1617f)), -2828f, false)) + _wgslsmith_f_op_f32(trunc(972f))) * 310f);
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-230f, 128f))) * 2156f))));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(211f)), _wgslsmith_f_op_f32(169f + -1537f))))));
    let var_4 = Struct_2(Struct_1(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(false, true, any(vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(375f, 250f, -1444f) + vec3<f32>(706f, 1227f, -866f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(401f, -224f, -1263f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -2233f, -1762f), vec3<f32>(522f, -133f, -788f))), !(1i > var_0.x)))));
    var_0 = vec3<i32>(-64861i, u_input.c.x >> ((~func_3() >> (~var_2.x % 32u)) % 32u), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 20u)]);
    let x = u_input.a;
    s_output = StorageBuffer(select(var_2.x, ~1u, (1f == var_4.a.b.x) && false));
}

