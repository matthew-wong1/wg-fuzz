struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(32805i, -1i, i32(-2147483648), -1i);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, arg_1.b.a, 1822f))), false, -14580i, Struct_1(1518f, arg_1.a.b, ~min(vec2<u32>(arg_1.b.c.x, 1u) << (vec2<u32>(94138u, 72258u) % vec2<u32>(32u)), vec2<u32>(arg_0.a.c.x, 124466u))));
    let var_1 = true;
    var var_2 = Struct_2(_wgslsmith_div_vec3_f32(var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1482f), _wgslsmith_f_op_f32(f32(-1f) * -1590f), -488f) * vec3<f32>(_wgslsmith_f_op_f32(round(arg_0.b.x)), 1411f, 1f))), !var_1, ~(-38359i), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(2178f, arg_1.b.a))))), select(!vec2<bool>(arg_0.a.b.x, true), var_0.d.b, !(!vec2<bool>(false, var_1))), var_0.d.c));
    let var_3 = arg_0.a;
    var var_4 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-arg_1.a.a), vec2<bool>(var_1, var_1), (max(vec2<u32>(0u, 0u), u_input.d.zz) | _wgslsmith_div_vec2_u32(var_3.c, var_3.c)) >> (_wgslsmith_add_vec2_u32(~vec2<u32>(arg_1.a.c.x, 39889u), _wgslsmith_clamp_vec2_u32(var_3.c, arg_1.a.c, vec2<u32>(4294967295u, 27411u))) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(427f)), arg_1.a.a)));
    return -2147483647i | global0.x;
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    global0 = vec4<i32>(u_input.e, ~(-func_3(Struct_4(Struct_1(arg_0.x, vec2<bool>(false, false), u_input.d.yz), arg_0.xx), Struct_3(Struct_1(-104f, vec2<bool>(false, true), u_input.d.yz), Struct_1(arg_0.x, vec2<bool>(false, true), vec2<u32>(u_input.c, 1u))))), ~(-(-782i << (u_input.d.x % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.d.x), vec4<u32>(24948u, u_input.c, 68045u, u_input.c) | vec4<u32>(1u, 1u, u_input.d.x, 4294967295u)) % 32u)), i32(-1i) * -32972i);
    global0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.a.x, _wgslsmith_sub_i32(abs(-u_input.a.x), _wgslsmith_clamp_i32(abs(u_input.a.x), global0.x >> (u_input.d.x % 32u), global0.x & 30751i)), abs(u_input.e), ~41047i), u_input.a, u_input.a);
    global0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(u_input.a, _wgslsmith_sub_vec4_i32(u_input.a, -u_input.a)), vec4<i32>(2147483647i, -1i, -28320i, ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a.x, -26271i), global0.xzz))), vec4<i32>(-_wgslsmith_clamp_i32(~8256i, -1i, _wgslsmith_dot_vec3_i32(u_input.a.xxy, global0.xzx)), abs(_wgslsmith_mult_i32(abs(global0.x), _wgslsmith_clamp_i32(-2147483647i, u_input.e, u_input.e))), global0.x, -4236i));
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(arg_0.wyx)), _wgslsmith_f_op_vec3_f32(-arg_0.xxw), all(vec2<bool>(true, true)))), ((arg_0.x <= _wgslsmith_f_op_f32(sign(145f))) & true) & !(!(arg_0.x > -2033f)), global0.x, Struct_1(601f, !vec2<bool>(any(vec4<bool>(false, true, false, true)), true), abs(u_input.d.xy)));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.a.x, arg_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(336f - arg_0.x), -427f, arg_0.x))), select(true, all(!select(vec4<bool>(true, var_0.d.b.x, false, var_0.b), vec4<bool>(true, true, true, false), vec4<bool>(var_0.d.b.x, var_0.d.b.x, var_0.d.b.x, false))), (4294967295u >= u_input.d.x) == all(select(vec3<bool>(var_0.d.b.x, var_0.d.b.x, false), vec3<bool>(var_0.b, false, true), true))), u_input.a.x, var_0.d);
    return var_0.d.a;
}

fn func_1() -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2226f, 879f, -1290f))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-600f, 1758f, -1691f), vec3<f32>(-727f, -754f, 1274f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(550f, -763f, -970f) - vec3<f32>(-1554f, -174f, 1731f))) * vec3<f32>(_wgslsmith_f_op_f32(func_2(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1442f + 1151f), -1013f)), _wgslsmith_f_op_f32(f32(-1f) * -169f))), any(vec3<bool>(true, true, true)), select(_wgslsmith_mult_i32(-(1i >> (u_input.d.x % 32u)), -(~u_input.e)), -global0.x & firstTrailingBit(select(-2147483647i, u_input.e, true)), any(vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), 1057u > u_input.d.x))), Struct_1(-378f, vec2<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true))), true), select(firstTrailingBit(vec2<u32>(42595u, 27538u)), _wgslsmith_clamp_vec2_u32(reverseBits(u_input.d.zy), vec2<u32>(u_input.d.x, 56206u), _wgslsmith_add_vec2_u32(vec2<u32>(2651u, 10659u), vec2<u32>(1u, u_input.c))), true)));
    var var_1 = ~vec2<u32>(_wgslsmith_mult_u32(17780u, u_input.c), reverseBits(~var_0.d.c.x));
    global0 = u_input.a;
    var var_2 = ~_wgslsmith_mult_vec3_i32(-global0.yxy, firstTrailingBit(vec3<i32>(global0.x, 1i, _wgslsmith_mult_i32(1i, var_0.c))));
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.d.a)) * var_0.d.a), select(select(!vec2<bool>(false, var_0.b), select(vec2<bool>(true, var_0.b), var_0.d.b, var_0.b), var_0.d.b), select(select(vec2<bool>(true, var_0.b), var_0.d.b, vec2<bool>(false, var_0.d.b.x)), vec2<bool>(false, false), false), var_0.d.b), var_0.d.c), vec2<f32>(_wgslsmith_f_op_f32(224f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.a) * var_0.a.x)), var_0.d.a));
    return 12403i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    var var_1 = 1646f;
    var var_2 = vec3<i32>(-2147483647i, ~(~countOneBits(global0.x)), func_1());
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1120f, -701f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1043f, -1435f)))) + vec2<f32>(_wgslsmith_f_op_f32(round(-567f)), _wgslsmith_f_op_f32(-185f * _wgslsmith_f_op_f32(f32(-1f) * -1593f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1185f, -271f))))) - vec2<f32>(-497f, 1f)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1592f, -802f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(522f, -1490f))))))));
    var var_4 = ~u_input.c >= 65467u;
    let x = u_input.a;
    s_output = StorageBuffer(global0.xz, abs(firstLeadingBit(abs(~vec3<u32>(u_input.c, 4294967295u, u_input.c)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(444f, var_3.x) * var_3)))))), var_3.x, vec2<i32>(select(global0.x, u_input.b, true), 2512i));
}

