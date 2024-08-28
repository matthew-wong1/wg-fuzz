struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 2>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-861f)))) * -688f));
    global0 = array<vec3<f32>, 2>();
    let var_1 = vec3<bool>(any(arg_1), arg_1.x, arg_1.x);
    let var_2 = Struct_3(Struct_1(max(-vec4<i32>(2637i, 1i, 22441i, 0i) << (~vec4<u32>(u_input.a.x, 68696u, 35008u, 65803u) % vec4<u32>(32u)), min(vec4<i32>(arg_0.x, u_input.b.x, arg_0.x, u_input.b.x), vec4<i32>(-24091i, arg_0.x, arg_0.x, u_input.b.x)) ^ abs(vec4<i32>(u_input.b.x, 89009i, -22762i, arg_0.x)))), u_input.a.x, Struct_1(reverseBits(select(~vec4<i32>(u_input.b.x, arg_0.x, arg_0.x, arg_0.x), countOneBits(vec4<i32>(-1i, -2147483647i, arg_0.x, 1i)), arg_1.x))), Struct_2(select(vec2<bool>(true, true & arg_1.x), var_1.yz, var_1.x), firstTrailingBit(u_input.b.x) | _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.x, arg_0.x, -65186i, 2147483647i), -vec4<i32>(-9090i, -2147483647i, arg_0.x, 17022i)), Struct_1(min(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i), vec4<i32>(-2147483647i, u_input.b.x, -1i, u_input.b.x)) ^ max(vec4<i32>(-48665i, arg_0.x, u_input.b.x, -38238i), vec4<i32>(u_input.b.x, 15320i, 15567i, arg_0.x))), Struct_1(~vec4<i32>(arg_0.x, -1i, -1i, -2147483647i)), ~(~(~vec3<u32>(u_input.a.x, 40029u, u_input.a.x)))), Struct_1(select(vec4<i32>(reverseBits(37310i), arg_0.x, arg_0.x, -34453i >> (u_input.a.x % 32u)), vec4<i32>(-9924i, -1i, -1i, -arg_0.x), vec4<bool>(!var_1.x, var_1.x, var_1.x, true))));
    global0 = array<vec3<f32>, 2>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(759f, -1158f)) * -1854f) - _wgslsmith_f_op_f32(f32(-1f) * -1030f))), 331f, true));
}

fn func_2() -> vec3<bool> {
    global0 = array<vec3<f32>, 2>();
    let var_0 = false;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(-vec3<i32>(-64715i, 1i, -7060i), !vec4<bool>(true, true, var_0, var_0))), 284f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(108f, -530f)))));
    var var_2 = ~(~(~26091u) | u_input.a.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -140f, var_1.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 197f, var_1.x) + vec4<f32>(var_1.x, -232f, 596f, var_1.x)))))))));
    return vec3<bool>(115343u >= u_input.a.x, var_0, !(firstTrailingBit(abs(-2147483647i)) == -1i));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>) -> Struct_4 {
    let var_0 = vec4<bool>(!arg_1.x, any(!vec2<bool>(true, arg_1.x)), true, select(!any(arg_1.xx), true, all(vec3<bool>(!arg_1.x, true, false))));
    let var_1 = countOneBits(abs(vec2<i32>(~u_input.b.x, 2147483647i))) >> (u_input.a % vec2<u32>(32u));
    global0 = array<vec3<f32>, 2>();
    return Struct_4(~u_input.a, firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_sub_i32(var_1.x, -60781i), var_1.x)), Struct_2(arg_1.xz, -21887i, Struct_1(vec4<i32>(-1i, arg_0.x, countOneBits(-1i), -20002i)), Struct_1(-countOneBits(arg_0)), vec3<u32>(7148u, ~u_input.a.x, u_input.a.x)));
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-903f * arg_0), arg_0) + global0[_wgslsmith_index_u32(min(4294967295u, arg_1.c.e.x << (u_input.a.x % 32u)), 2u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, arg_0, arg_0))))) * vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2017f))), 609f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0)))))));
    var var_1 = Struct_3(func_4(_wgslsmith_mod_vec4_i32(-(~arg_1.c.d.a), _wgslsmith_mod_vec4_i32(max(arg_1.c.c.a, vec4<i32>(u_input.b.x, 1i, -19792i, u_input.b.x)), arg_1.c.d.a)), !(!(!vec3<bool>(true, true, arg_2.x)))).c.c, _wgslsmith_mod_u32(84923u, u_input.a.x), Struct_1(vec4<i32>(1i, ~(-1i), abs(_wgslsmith_clamp_i32(2147483647i, -1i, -18734i)), i32(-1i) * -17800i)), Struct_2(arg_2.wy, -u_input.b.x | arg_1.c.c.a.x, arg_1.c.c, func_4(~arg_1.c.c.a, vec3<bool>(arg_2.x, false, true)).c.c, vec3<u32>(_wgslsmith_mult_u32(abs(u_input.a.x), arg_1.c.e.x), ~u_input.a.x, func_4(abs(arg_1.c.d.a), arg_2.xwz).a.x)), arg_1.c.c);
    let var_2 = ~vec4<u32>(_wgslsmith_mult_u32(max(64735u, u_input.a.x >> (1u % 32u)), ~(~arg_1.c.e.x)), firstTrailingBit(102405u), _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, select(0u, arg_1.c.e.x, arg_2.x), var_1.d.e.x, 1u), _wgslsmith_div_vec4_u32(select(vec4<u32>(arg_1.a.x, var_1.b, var_1.b, 0u), vec4<u32>(u_input.a.x, 0u, arg_1.c.e.x, 4294967295u), var_1.d.a.x), ~vec4<u32>(u_input.a.x, arg_1.c.e.x, 1u, 0u))), _wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(1u, ~44775u, ~22264u)));
    global0 = array<vec3<f32>, 2>();
    let var_3 = arg_0;
    return arg_0;
}

fn func_1() -> vec4<i32> {
    global0 = array<vec3<f32>, 2>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(390f * 116f), _wgslsmith_div_f32(952f, -206f))), func_4(min(vec4<i32>(1i, -29856i, u_input.b.x, u_input.b.x), vec4<i32>(-2147483647i, -2147483647i, -35907i, 8823i)), func_2()), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-353f)), _wgslsmith_f_op_f32(max(140f, 2368f))))), -1575f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - _wgslsmith_f_op_f32(-536f - 1000f)) - -777f)));
    var var_1 = select(func_4(-abs(vec4<i32>(10727i, 2147483647i, -20841i, u_input.b.x) & vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x)), vec3<bool>(true, true, true)).c.a, vec2<bool>(true, true), true);
    var_1 = select(select(!(!select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, false), var_1.x)), !select(vec2<bool>(var_1.x, true), select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, var_1.x), var_1.x), vec2<bool>(true, true)), !(!vec2<bool>(var_1.x, false))), vec2<bool>(any(vec2<bool>(var_1.x, var_1.x & var_1.x)), all(select(vec3<bool>(var_1.x, false, true), !vec3<bool>(true, true, var_1.x), any(vec4<bool>(var_1.x, false, false, var_1.x))))), var_1.x);
    global0 = array<vec3<f32>, 2>();
    return vec4<i32>(~u_input.b.x | u_input.b.x, u_input.b.x, i32(-1i) * -(-2147483647i >> (0u % 32u)), 1i) & vec4<i32>(select(-22351i, u_input.b.x, var_1.x), min(abs(_wgslsmith_add_i32(-2147483647i, u_input.b.x)), abs(select(11299i, 58971i, var_1.x))), u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, -44438i & func_4(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, -27346i), vec3<bool>(var_1.x, var_1.x, var_1.x)).c.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec3_u32(min(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~vec3<u32>(u_input.a.x, u_input.a.x, 56474u)), ~min(vec3<u32>(u_input.a.x, 29153u, 40663u), vec3<u32>(34841u, 4294967295u, 0u)), ~(~vec3<u32>(12205u, 0u, 5177u))), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 42364u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), firstLeadingBit(~vec3<u32>(u_input.a.x, 0u, 4294967295u)))), firstTrailingBit(~abs(vec3<u32>(u_input.a.x, 1u, u_input.a.x) ^ vec3<u32>(14250u, 45298u, 1u))), vec3<u32>(~u_input.a.x, u_input.a.x, ~63942u) ^ vec3<u32>(u_input.a.x, ~u_input.a.x, ~_wgslsmith_add_u32(u_input.a.x, 4294967295u)));
    let var_1 = Struct_1(vec4<i32>(reverseBits(-u_input.b.x), -2147483647i & (u_input.b.x >> (var_0.x % 32u)), 0i, u_input.b.x) ^ func_1());
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1515f, 366f) - vec2<f32>(1000f, 1433f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1086f, 733f), vec2<f32>(1058f, 1586f), true))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-420f, -1684f), _wgslsmith_div_vec2_f32(vec2<f32>(2040f, -1000f), vec2<f32>(1000f, 1427f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(954f, 260f)) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1212f, 2943f)))))));
    global0 = array<vec3<f32>, 2>();
    var_0 = reverseBits(_wgslsmith_sub_vec3_u32(countOneBits(firstTrailingBit(vec3<u32>(var_0.x, u_input.a.x, u_input.a.x))) << (vec3<u32>(min(var_0.x, var_0.x), var_0.x, 13032u) % vec3<u32>(32u)), firstTrailingBit(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 1020u, 49501u), vec3<u32>(u_input.a.x, var_0.x, u_input.a.x))))));
    let var_3 = var_1;
    var var_4 = vec2<u32>(~var_0.x, ~firstLeadingBit(_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, var_0.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))));
    var var_5 = abs(_wgslsmith_mod_vec4_u32(~select(vec4<u32>(13649u, var_0.x, var_0.x, var_0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(3027u, var_4.x, var_4.x, u_input.a.x), vec4<u32>(var_4.x, 7744u, var_0.x, 0u)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), vec4<u32>(countOneBits(0u), ~(~33676u), 4294967295u, firstTrailingBit(0u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1184f + var_2.x)));
}

