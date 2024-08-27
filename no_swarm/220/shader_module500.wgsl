struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_3) -> vec4<u32> {
    let var_0 = Struct_4(arg_2.c.c, _wgslsmith_f_op_vec4_f32(trunc(arg_2.b)), arg_2.c);
    var var_1 = false;
    var var_2 = Struct_4(arg_2.c.c, _wgslsmith_f_op_vec4_f32(floor(var_0.b)), var_0.c);
    let var_3 = arg_3.a | !(var_2.b.x <= arg_2.c.a.b);
    var_2 = arg_2;
    return var_2.a.a;
}

fn func_2(arg_0: f32) -> Struct_4 {
    return Struct_4(Struct_1(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b.x, u_input.a, 16326u, u_input.c.x) ^ vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.c.x), _wgslsmith_div_vec4_u32(abs(vec4<u32>(0u, u_input.a, u_input.b.x, 4294967295u)), ~vec4<u32>(2908u, 1u, u_input.b.x, 68185u)), func_3(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 0u, 34415u), vec3<u32>(46183u, u_input.c.x, 22704u)), Struct_3(true, vec3<i32>(1i, 2147483647i, -12928i)), Struct_4(Struct_1(vec4<u32>(u_input.b.x, u_input.c.x, u_input.b.x, 36377u), -1465f, vec2<bool>(false, false)), vec4<f32>(arg_0, arg_0, arg_0, 1000f), Struct_2(Struct_1(vec4<u32>(u_input.b.x, u_input.c.x, 0u, 25852u), arg_0, vec2<bool>(false, true)), vec3<bool>(false, false, false), Struct_1(vec4<u32>(u_input.b.x, u_input.a, 44121u, u_input.c.x), arg_0, vec2<bool>(true, true)), u_input.c.xy)), Struct_3(true, vec3<i32>(-1i, 1i, 2147483647i)))), _wgslsmith_f_op_f32(min(1142f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -2043f), any(vec2<bool>(false, false)))))), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), false))), vec4<f32>(-256f, arg_0, _wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(sign(arg_0))), Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 80134u, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, 81443u, u_input.c.x), vec4<u32>(u_input.b.x, 0u, 62931u, 4294967295u)), vec4<u32>(4294967295u, u_input.c.x, u_input.a, 38675u)), _wgslsmith_f_op_f32(ceil(arg_0)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), all(vec4<bool>(true, false, true, false)))), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), any(vec3<bool>(false, true, false))), vec3<bool>(u_input.a > 0u, any(vec3<bool>(true, false, false)), all(vec3<bool>(true, true, true))), select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), true)), Struct_1(vec4<u32>(~36329u, firstTrailingBit(u_input.c.x), u_input.c.x, 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(850f * -124f)), vec2<bool>(true, true)), ~vec2<u32>(58305u, firstLeadingBit(u_input.a))));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4) -> bool {
    var var_0 = func_2(arg_2.c.c.b).c;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * arg_2.c.a.b)).c.a.b)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x * 910f));
    var var_2 = _wgslsmith_f_op_f32(arg_1.a.b + -3214f);
    let var_3 = 18127i;
    return _wgslsmith_mod_u32(u_input.a, 49210u) != ~14023u;
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_3(select(func_4(select(true, true, true), func_2(-723f), Struct_4(Struct_1(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 1u), -854f, vec2<bool>(false, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1380f, 2414f, 875f, 540f) * vec4<f32>(233f, 1542f, -766f, -869f)), func_2(-538f).c)), true, true), vec3<i32>(-19465i, -1i, _wgslsmith_div_i32(-1i, _wgslsmith_sub_i32(1i, countOneBits(2147483647i)))));
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 93023u), select(_wgslsmith_mult_vec2_u32(u_input.b.xx, _wgslsmith_add_vec2_u32(u_input.b.yz, vec2<u32>(25939u, 1u))) ^ ~u_input.c.xz, vec2<u32>(~u_input.a, ~(u_input.a ^ 17554u)), var_0.a));
    var_0 = Struct_3(true, vec3<i32>(30794i, abs(var_0.b.x), countOneBits(var_0.b.x)) | firstTrailingBit(select(-var_0.b, vec3<i32>(0i, var_0.b.x, var_0.b.x), vec3<bool>(false, false, true))));
    var_0 = Struct_3(true, vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-777i, var_0.b.x, 1i), vec3<i32>(var_0.b.x, 1675i, -8678i)) ^ 0i, _wgslsmith_div_i32(var_0.b.x, -var_0.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_0.b.x, _wgslsmith_clamp_i32(var_0.b.x, -2147483647i, -17963i)), vec3<i32>(var_0.b.x >> (u_input.b.x % 32u), -1i, 1i)), -firstTrailingBit(-var_0.b.x)));
    var_0 = Struct_3(all(vec4<bool>(!(!var_0.a), false, true, true)), reverseBits(-reverseBits(var_0.b)));
    return Struct_3(all(!(!vec4<bool>(false, true, var_0.a, true))), vec3<i32>(~(~2147483647i), 0i, -82946i));
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_3) -> bool {
    var var_0 = select(-25890i, ~func_1().b.x, true);
    var_0 = 0i;
    var var_1 = arg_2;
    let var_2 = func_2(-1386f);
    var var_3 = !(!(!((var_1.b.x == -34543i) & func_2(arg_1.x).a.c.x)));
    return !all(select(!vec3<bool>(true, true, arg_2.a), !(!var_2.c.b), var_2.c.a.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<u32>(u_input.a, ~_wgslsmith_sub_u32(u_input.a, ~1u), 4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, u_input.b.x), firstLeadingBit(u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(-3093f, -1907f))))), vec2<bool>(false, func_5(min(max(-2147483647i, -1i), ~(-14229i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(483f, -797f, -450f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1203f, 253f, -334f) + vec3<f32>(1405f, 1915f, -522f))), func_1())));
    var var_1 = vec2<u32>(1u, countOneBits(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(31972u, 31490u, 0u, u_input.c.x)), vec4<u32>(u_input.c.x, u_input.a, _wgslsmith_dot_vec2_u32(u_input.c.zy, vec2<u32>(4294967295u, var_0.a.x)), _wgslsmith_div_u32(4294967295u, 31622u)))));
    let var_2 = func_2(_wgslsmith_f_op_f32(1855f + 1297f)).c.a;
    var_1 = u_input.c.xz;
    var_1 = _wgslsmith_sub_vec2_u32(~min(vec2<u32>(var_2.a.x, 18523u), var_0.a.zx), var_0.a.zx);
    var var_3 = func_2(_wgslsmith_f_op_f32(min(-622f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, -352f) + _wgslsmith_f_op_f32(max(var_0.b, var_2.b))))))).c.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-900f, var_2.b)), -252f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(186f, var_2.b)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1370f, var_0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(188f, var_3.b)))));
}

