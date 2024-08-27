struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: bool,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: f32,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    var var_0 = Struct_2(_wgslsmith_mod_vec4_i32(arg_0 & _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -17096i, 20164i, 14329i) & arg_0, vec4<i32>(-50988i, 1i, arg_0.x, u_input.c.x)), vec4<i32>(1i, _wgslsmith_dot_vec4_i32(arg_0, firstLeadingBit(vec4<i32>(2147483647i, u_input.e, -1i, -3651i))), max(_wgslsmith_mult_i32(u_input.c.x, -11538i), arg_0.x), min(2147483647i, u_input.c.x) | _wgslsmith_clamp_i32(arg_0.x, arg_0.x, 2716i))));
    var var_1 = _wgslsmith_add_vec2_u32(max(~u_input.b.xz, vec2<u32>(53613u, reverseBits(u_input.b.x))) << (u_input.b.wx % vec2<u32>(32u)), vec2<u32>(~abs(u_input.b.x) >> (min(1u, u_input.d) % 32u), u_input.b.x));
    var var_2 = max(var_0.a.yzz, ~_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, var_0.a.x, 36386i) & vec3<i32>(u_input.e, 2147483647i, -51036i), ~vec3<i32>(-1i, arg_0.x, -2147483647i)) & vec3<i32>(7950i, u_input.c.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-5742i, 0i, -5578i), vec3<i32>(var_0.a.x, 32672i, 0i))));
    var_2 = _wgslsmith_sub_vec3_i32(reverseBits(~_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(var_2.x, -1i, var_2.x)), _wgslsmith_div_vec3_i32(vec3<i32>(16501i, -7959i, 0i), vec3<i32>(arg_0.x, 0i, u_input.e)))), vec3<i32>(17650i, -51366i, max(var_2.x, ~var_2.x)));
    var var_3 = 1u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(761f, 2039f)))), 160f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-300f))))))) <= _wgslsmith_f_op_f32(-1427f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-426f - -624f))), 2121f)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> bool {
    var var_0 = 1i;
    var_0 = ~(~u_input.a.x);
    var var_1 = arg_1;
    var_1 = Struct_2(_wgslsmith_mod_vec4_i32(-(vec4<i32>(-1i) * -u_input.c), _wgslsmith_mult_vec4_i32(u_input.c, arg_0.d.a)));
    var var_2 = Struct_5(~(~u_input.d));
    return !arg_0.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec4<u32>) -> vec2<i32> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.e), arg_0.a.xy ^ ~vec2<i32>(u_input.e, u_input.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1245f, 378f, 356f) + vec3<f32>(1441f, 2564f, -826f)))), !func_4(Struct_4(vec4<bool>(false, false, true, false), u_input.e, -1000f, Struct_2(arg_0.a)), arg_0, func_3(vec4<i32>(-1i, u_input.c.x, -1i, 9994i)), 0u << (arg_2.x % 32u)), ~countOneBits(arg_2.xx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 1769f) * -626f)), Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0.a.yw << (u_input.b.xx % vec2<u32>(32u)), vec2<i32>(u_input.a.x, arg_0.a.x), select(vec2<i32>(u_input.a.x, -32942i), vec2<i32>(-36389i, 1i), false)), arg_0.a.zz), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-263f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -677f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2850f * 1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -498f)))), true, vec2<u32>(arg_1, arg_2.x), _wgslsmith_div_f32(-946f, 1f)), vec2<i32>(0i, abs(_wgslsmith_dot_vec2_i32(countOneBits(arg_0.a.xw), ~vec2<i32>(arg_0.a.x, u_input.e)))), abs(max(abs(vec4<u32>(4294967295u, 12282u, u_input.d, arg_1)) | arg_2, ~vec4<u32>(69973u, 37047u, u_input.d, 28454u))));
    var var_1 = !(!vec2<bool>(var_0.a.c, true));
    var var_2 = ~vec3<i32>(var_0.c.x, firstLeadingBit(0i), ~33154i);
    var var_3 = !(!vec2<bool>(var_1.x | (var_0.a.c & true), func_4(Struct_4(vec4<bool>(var_0.a.c, var_0.b.c, var_1.x, var_1.x), 4630i, -240f, arg_0), Struct_2(u_input.c), true, ~0u)));
    var_0 = Struct_3(Struct_1(_wgslsmith_add_vec2_i32(arg_0.a.zw, var_2.zz & var_0.a.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_0.a.e)), 840f, -402f)), !var_3.x, ~(arg_2.zw << (_wgslsmith_add_vec2_u32(vec2<u32>(arg_1, arg_1), arg_2.yy) % vec2<u32>(32u))), var_0.b.e), Struct_1(abs(-u_input.a.yy >> (u_input.b.ww % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_0.a.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b.x, -549f, var_0.a.b.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.e, var_0.b.e, -639f) + vec3<f32>(var_0.a.e, var_0.b.e, var_0.b.e)))), true)), true, vec2<u32>((u_input.b.x & arg_1) | u_input.b.x, arg_2.x), 2647f), firstTrailingBit(arg_0.a.zx), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.d.ywz, var_0.d.yzz), vec3<u32>(1u, ~5053u, ~u_input.d)), countOneBits(4294967295u), abs(firstLeadingBit(arg_1)), ~_wgslsmith_add_u32(arg_1, 0u)));
    return var_2.xy;
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1168f, arg_0.x) - -914f))) * arg_0.x));
    let var_1 = 1u;
    let var_2 = Struct_2(vec4<i32>(0i, 1i, firstTrailingBit(~(-u_input.a.x)), ~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.c.x, u_input.a.x), ~2147483647i, min(u_input.c.x, u_input.c.x))));
    let var_3 = Struct_3(Struct_1(_wgslsmith_mult_vec2_i32(var_2.a.xw, func_2(Struct_2(u_input.c), ~var_1, select(vec4<u32>(var_1, 1u, var_1, 1u), u_input.b, false))), arg_0.xxy, true, select(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1, var_1), u_input.b.yz), vec2<u32>(59301u, 56303u), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-590f - _wgslsmith_f_op_f32(f32(-1f) * -458f)), -255f))), Struct_1(-_wgslsmith_clamp_vec2_i32(max(u_input.a.yy, u_input.c.ww), var_2.a.xx, var_2.a.zz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, var_0), arg_0.yxx), vec3<f32>(var_0, 633f, -1696f))), true, _wgslsmith_mod_vec2_u32(u_input.b.wx, reverseBits(_wgslsmith_mod_vec2_u32(u_input.b.zz, u_input.b.yy))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) + _wgslsmith_f_op_f32(-1000f - -2172f))))), u_input.a.xy, u_input.b);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_0.ywy))));
    return Struct_3(var_3.b, Struct_1(_wgslsmith_add_vec2_i32(var_2.a.zx, -var_2.a.xw) & max(vec2<i32>(21793i, u_input.a.x), vec2<i32>(var_3.a.a.x, -3520i)), var_3.a.b, true, u_input.b.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1084f)))))), var_2.a.yz, vec4<u32>(~var_1, 4294967295u, var_3.a.d.x, countOneBits(_wgslsmith_add_u32(~u_input.b.x, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<f32>(-377f, -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(745f)), _wgslsmith_f_op_f32(ceil(-1601f)))), 643f)), _wgslsmith_f_op_f32(-1231f - 264f)));
    var var_1 = func_1(vec4<f32>(1094f, var_0.a.e, _wgslsmith_f_op_f32(select(var_0.b.e, 867f, !(var_0.b.c && var_0.b.c))), 206f));
    var_1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2271f, var_1.a.b.x, -981f, 804f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.a.e, 1203f, var_0.b.e, var_0.b.b.x), vec4<f32>(-1431f, var_1.a.e, var_1.b.e, var_0.b.b.x)))))));
    var var_2 = any(!vec3<bool>(!(!var_1.a.c), any(select(vec2<bool>(true, var_1.b.c), vec2<bool>(var_1.b.c, var_1.b.c), false)), var_1.a.c));
    var var_3 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.e - _wgslsmith_f_op_f32(floor(-1369f)))) < var_0.a.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.xz, vec2<i32>(select(min(u_input.e, -2147483647i) >> (_wgslsmith_dot_vec3_u32(var_0.d.yzz, vec3<u32>(u_input.d, var_0.d.x, 0u)) % 32u), 1i, !(var_1.c.x <= var_1.c.x)), 1i), vec2<i32>(-32414i, var_1.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-760f))) + -920f));
}

