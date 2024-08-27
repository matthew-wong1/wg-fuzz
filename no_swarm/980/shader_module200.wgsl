struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<bool>(false, false, true, false), vec2<f32>(556f, 116f));

var<private> global1: vec3<f32>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec4<f32> {
    let var_0 = _wgslsmith_div_f32(779f, global1.x);
    let var_1 = global0.a.x;
    let var_2 = arg_0.zxz;
    global0 = Struct_4(vec4<bool>(var_2.x == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.x + var_0), _wgslsmith_f_op_f32(f32(-1f) * -291f))), global0.a.x, _wgslsmith_dot_vec3_i32(-u_input.a, _wgslsmith_mult_vec3_i32(vec3<i32>(-6140i, 0i, 0i), u_input.a)) > u_input.b, global0.b.x != global0.b.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.wx - global0.b), global1.xy, global0.a.zy)));
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(sign(var_0))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(var_2.xy, global0.b))))))))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -658f, _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(sign(1000f)))), 1516f) + vec4<f32>(-2063f, -1771f, 1115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1390f, global0.b.x))))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_5(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global1.x, global1.x, 757f)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -2288f, global1.x, global0.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1366f, global1.x, global1.x, 211f))))), _wgslsmith_div_u32(~(u_input.d >> (u_input.e % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 1u, 1u), vec3<u32>(39673u, 1u, u_input.e))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1059f, 102f, -265f, global1.x) * vec4<f32>(693f, -478f, global1.x, global0.b.x))), -u_input.b), _wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-363f * global1.x)))));
    var var_1 = var_0.a.a.zxz;
    var_0 = Struct_5(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1149f, _wgslsmith_f_op_f32(f32(-1f) * -114f), var_1.x, 591f) * var_0.a.a), _wgslsmith_dot_vec3_u32(vec3<u32>(65740u, _wgslsmith_sub_u32(9660u, var_0.a.b), 4294967295u >> (var_0.a.b % 32u)), ~(vec3<u32>(var_0.a.b, var_0.a.b, u_input.d) << (vec3<u32>(4294967295u, 82060u, 19376u) % vec3<u32>(32u)))), Struct_1(_wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(global1.x, var_1.x, 1320f, 1162f))), -var_0.a.c.b), _wgslsmith_f_op_f32(f32(-1f) * -627f)));
    var var_2 = ~(~countOneBits(_wgslsmith_mod_u32(u_input.c, ~var_0.a.b)));
    global0 = Struct_4(select(select(vec4<bool>(all(vec2<bool>(global0.a.x, true)), !global0.a.x, all(global0.a.zxy), true), select(global0.a, global0.a, !global0.a.x), global0.a.x), global0.a, global0.a), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1342f, var_0.a.c.a.x)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-485f, global1.x))))))));
    return Struct_3(var_0.a, vec2<u32>(~31087u, firstTrailingBit(u_input.e) | ~(~1u)), select(_wgslsmith_sub_vec3_u32(vec3<u32>(reverseBits(45298u), var_0.a.b, 57026u), ~(vec3<u32>(var_0.a.b, 924u, var_0.a.b) ^ vec3<u32>(37404u, u_input.e, var_0.a.b))), ~vec3<u32>(select(4294967295u, u_input.e, true), u_input.c, 0u), 15292u < (var_0.a.b ^ select(var_0.a.b, 1u, global0.a.x))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3) -> u32 {
    global0 = Struct_4(vec4<bool>(!(!(!global0.a.x)), abs(arg_1.a.c.b) <= 2147483647i, false, any(vec2<bool>(global0.a.x, global0.a.x | false))), vec2<f32>(_wgslsmith_f_op_f32(-625f + global1.x), _wgslsmith_f_op_f32(arg_1.a.a.x * _wgslsmith_f_op_f32(-global1.x))));
    return u_input.d;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_5) -> bool {
    var var_0 = arg_2.a.a.xyy;
    let var_1 = arg_1.a.x;
    var var_2 = ~(~_wgslsmith_mod_u32(~(~49891u), ~25960u));
    let var_3 = ~vec2<u32>(_wgslsmith_add_u32(func_4(global0.a, func_2()), ~u_input.e), ~4294967295u);
    var_0 = _wgslsmith_f_op_vec3_f32(-arg_2.a.a.xxz);
    return u_input.d < ~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, u_input.c, 1u), firstLeadingBit(min(vec4<u32>(arg_2.a.b, 1u, var_3.x, arg_2.a.b), vec4<u32>(4294967295u, var_3.x, 60948u, 101822u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec2<bool>(!func_1(u_input.a.x, Struct_1(vec4<f32>(global1.x, 1372f, global0.b.x, -1000f), -7093i), Struct_5(Struct_2(vec4<f32>(-274f, global0.b.x, global0.b.x, global1.x), 1u, Struct_1(vec4<f32>(global0.b.x, 1185f, 823f, global0.b.x), u_input.a.x), global0.b.x))), any(global0.a)), global0.a.wz, global0.a.x);
    let var_1 = Struct_4(vec4<bool>(all(global0.a), any(!global0.a), select(!global0.a.x, all(!global0.a.yz), any(global0.a.ww) | (true == var_0.x)), !(!var_0.x | (global1.x == -336f))), global1.yz);
    let var_2 = ~4294967295u;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global1.x, 995f, 898f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1123f, var_1.b.x, -2072f, var_1.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -641f, global1.x, -366f) + vec4<f32>(142f, 522f, 257f, global0.b.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, global1.x, 134f, global0.b.x)))))), _wgslsmith_div_i32(~u_input.a.x, 1i));
    var var_4 = Struct_5(func_2().a);
    let var_5 = func_2();
    let var_6 = vec2<u32>(var_4.a.b << (1u % 32u), 5156u);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(~1i, 23251i), _wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(exp2(1f))), func_2().c.x);
}

