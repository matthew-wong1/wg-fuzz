struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 4>;

var<private> global1: vec2<f32> = vec2<f32>(1151f, 417f);

var<private> global2: array<bool, 10>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.b.x, global1.x, -1046f))), vec3<f32>(404f, _wgslsmith_f_op_f32(f32(-1f) * -1198f), _wgslsmith_f_op_f32(-arg_1)), any(select(vec3<bool>(arg_0.c, false, global2[_wgslsmith_index_u32(28163u, 10u)]), vec3<bool>(true, arg_0.d, arg_0.c), arg_0.d))))), vec3<f32>(global1.x, _wgslsmith_f_op_f32(round(arg_0.b.x)), 1234f)));
    global0 = array<vec4<f32>, 4>();
    global1 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(2078f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-998f + global1.x))))));
    let var_1 = arg_0;
    let var_2 = select(vec2<i32>(~u_input.d, u_input.c.x), ~u_input.c, !(!vec2<bool>(var_1.d, var_1.d)));
    return var_0.xy;
}

fn func_2(arg_0: i32) -> vec4<f32> {
    let var_0 = Struct_1(countOneBits(vec3<u32>(14655u, u_input.a.x, abs(0u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-690f, 1029f))) + _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec3<u32>(4294967295u, 45460u, 50233u), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, global1.x), vec2<f32>(global1.x, global1.x), true)), true, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1955f))))), any(!select(select(vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], false), global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), true), any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)])))), all(select(vec3<bool>(global2[_wgslsmith_index_u32(countOneBits(7847u), 10u)], global2[_wgslsmith_index_u32(~u_input.a.x, 10u)], !global2[_wgslsmith_index_u32(38885u, 10u)]), vec3<bool>(global2[_wgslsmith_index_u32(~1u, 10u)], true, any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(38039u, 10u)]))), global1.x > -182f)));
    let var_1 = vec2<bool>(select(!all(!vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(5305u, 10u)])), select(true, !var_0.c, all(!vec4<bool>(true, global2[_wgslsmith_index_u32(19009u, 10u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 10u)]))), all(select(vec3<bool>(var_0.c, var_0.d, false), !vec3<bool>(global2[_wgslsmith_index_u32(22242u, 10u)], false, false), !vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a.x, 10u)])))), var_0.d);
    let var_2 = firstTrailingBit(_wgslsmith_div_u32(5120u, var_0.a.x));
    let var_3 = all(!vec2<bool>(global1.x < _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec3<u32>(var_2, u_input.a.x, var_2), var_0.b, false, var_0.c), 1054f)).x, !all(vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 10u)], var_0.d, var_0.d))));
    var var_4 = Struct_1(firstLeadingBit(~_wgslsmith_sub_vec3_u32(~var_0.a, ~vec3<u32>(49462u, 60275u, 39765u))), vec2<f32>(global1.x, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.x))))), select(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, u_input.a), select(vec2<u32>(var_0.a.x, 50288u), var_0.a.yz, var_3)) <= 1u, false && any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, var_3, false, false), vec4<bool>(true, var_1.x, var_0.c, true))), false), !global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(var_2, u_input.a.x)) ^ (var_2 | ~0u), 10u)]);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_4.b.x, 1000f, 263f)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, -1207f, -299f, var_4.b.x))))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(~min(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(8375u, 29063u, 53560u)) << (~vec3<u32>(721u, 695u, 9904u) % vec3<u32>(32u)), vec3<u32>(~43487u, 0u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-532f, 859f), vec2<f32>(-1495f, global1.x))), _wgslsmith_div_vec2_f32(arg_1.yy, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, 1294f), vec2<f32>(355f, -204f))))))), global2[_wgslsmith_index_u32(~u_input.a.x, 10u)] && (global2[_wgslsmith_index_u32(~50579u >> (u_input.a.x % 32u), 10u)] != true), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(84540u, _wgslsmith_div_u32(1u, u_input.a.x)), firstLeadingBit(select(reverseBits(u_input.a), vec2<u32>(14989u, 42291u), false))), 10u)]);
    var var_1 = var_0.b.x;
    var var_2 = ~_wgslsmith_sub_i32(arg_2.x, -(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 15599i, -6835i), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)) >> (61811u % 32u)));
    var_2 = -1i;
    let var_3 = var_0.a;
    return Struct_1(~vec3<u32>(abs(~4294967295u), 3113u, _wgslsmith_dot_vec2_u32(~var_3.yy, reverseBits(var_0.a.xx))), var_0.b, true, !(!var_0.c) || true);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = vec3<i32>((_wgslsmith_mult_i32(-1i, arg_3) ^ ~_wgslsmith_add_i32(9242i, -28730i)) | _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.c.x, -31674i), vec4<i32>(1i, -37579i, -16048i, 0i), vec4<i32>(u_input.b, 1i, -1i, arg_3)), vec4<i32>(u_input.d, 47350i, arg_0.x, 1819i) >> ((vec4<u32>(1u, u_input.a.x, u_input.a.x, arg_1.a.x) & vec4<u32>(u_input.a.x, 48054u, 4294967295u, u_input.a.x)) % vec4<u32>(32u))), abs(u_input.b), _wgslsmith_mult_i32(-40210i, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-24302i, -1i), _wgslsmith_sub_vec2_i32(arg_0, arg_0)))));
    global0 = array<vec4<f32>, 4>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1483f, 1330f, 424f) - vec3<f32>(1450f, 629f, arg_2.b.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-434f, -187f, arg_1.b.x)))))) - vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -410f), _wgslsmith_f_op_f32(-1000f + 166f))), _wgslsmith_f_op_f32(f32(-1f) * -1276f), 762f)));
    var var_2 = arg_1.a.zz;
    let var_3 = 0i << (arg_1.a.x % 32u);
    return func_4(min(_wgslsmith_mult_vec3_i32(~vec3<i32>(arg_0.x, -85459i, -80635i), _wgslsmith_sub_vec3_i32(~vec3<i32>(var_0.x, 79247i, arg_0.x), vec3<i32>(1i, var_3, var_0.x))), abs(select(~vec3<i32>(u_input.b, var_0.x, -20883i), vec3<i32>(0i, 0i, var_3), select(vec3<bool>(true, arg_2.d, global2[_wgslsmith_index_u32(arg_1.a.x, 10u)]), vec3<bool>(arg_1.c, global2[_wgslsmith_index_u32(arg_1.a.x, 10u)], true), arg_1.d)))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~0u), 4u)], var_0.zz);
}

fn func_1() -> vec3<i32> {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(2084f, -1201f), vec2<f32>(global1.x, -245f))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, global1.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))))))));
    var var_0 = firstTrailingBit(vec3<i32>(1i, u_input.b & 21023i, _wgslsmith_clamp_i32(min(1i, _wgslsmith_mult_i32(2147483647i, u_input.b)), 1i, 42894i)));
    global0 = array<vec4<f32>, 4>();
    var var_1 = func_5(u_input.c, func_4(~reverseBits(-vec3<i32>(-30308i, var_0.x, 7351i)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(var_0.x)) * _wgslsmith_f_op_vec4_f32(func_2(-2147483647i))))), vec2<i32>(var_0.x, firstTrailingBit(-6175i)) << (vec2<u32>(countOneBits(81006u), u_input.a.x) % vec2<u32>(32u))), Struct_1(vec3<u32>(_wgslsmith_add_u32(u_input.a.x, 10569u) ^ u_input.a.x, ~u_input.a.x, ~u_input.a.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 518f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1191f, -1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) * vec2<f32>(global1.x, global1.x)) * vec2<f32>(-1046f, global1.x)), all(select(vec2<bool>(global2[_wgslsmith_index_u32(37866u, 10u)], true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], true), true)))), all(select(select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(65777u, 10u)], false, false), vec4<bool>(global2[_wgslsmith_index_u32(7823u, 10u)], true, false, false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(38895u, 10u)])), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], true, global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(68571u, 10u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(0u, 10u)], false)), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(3838u, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, _wgslsmith_mult_u32(~u_input.a.x, 29047u)), 10u)]), -_wgslsmith_add_i32(u_input.d, 2147483647i));
    var var_2 = func_5(vec2<i32>(-var_0.x, ~28671i) << (_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(var_1.a.xy, vec2<u32>(var_1.a.x, var_1.a.x)), ~select(var_1.a.zy, vec2<u32>(9501u, u_input.a.x), vec2<bool>(true, false))) % vec2<u32>(32u)), Struct_1(firstLeadingBit(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(var_1.a, vec3<u32>(1u, var_1.a.x, 61502u), vec3<u32>(68757u, 4925u, 55074u)), vec3<u32>(var_1.a.x, 4294967295u, 4294967295u))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b), vec2<f32>(-461f, global1.x)))), var_1.c, !global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 1u), 10u)] | global2[_wgslsmith_index_u32(var_1.a.x, 10u)]), func_5(~var_0.yz, func_5(vec2<i32>(8037i, i32(-1i) * -51286i), Struct_1(reverseBits(vec3<u32>(var_1.a.x, u_input.a.x, 23773u)), vec2<f32>(-1153f, -152f), global2[_wgslsmith_index_u32(68429u, 10u)] || global2[_wgslsmith_index_u32(u_input.a.x, 10u)], !var_1.c), func_5(u_input.c, Struct_1(var_1.a, var_1.b, false, false), Struct_1(var_1.a, var_1.b, false, false), -1i), _wgslsmith_add_i32(u_input.d ^ 0i, max(u_input.d, 2147483647i))), Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1647f, 940f) - vec2<f32>(global1.x, 810f)))), true, global2[_wgslsmith_index_u32(u_input.a.x | 1u, 10u)]), u_input.d), 1i);
    return vec3<i32>(u_input.b, _wgslsmith_mod_i32(firstLeadingBit(-u_input.d), ~(~_wgslsmith_sub_i32(u_input.d, u_input.b))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(select(-vec3<i32>(-1i, u_input.b, 0i), max(vec3<i32>(-2671i, -10845i, u_input.b), vec3<i32>(var_0.x, u_input.c.x, -12272i)), select(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 10u)], true), vec3<bool>(global2[_wgslsmith_index_u32(12756u, 10u)], var_2.c, true), var_2.c)), vec3<i32>(-u_input.b, i32(-1i) * -28275i, _wgslsmith_mod_i32(u_input.c.x, 1i))), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(var_0.x, u_input.d, u_input.c.x)), ~vec3<i32>(-21393i, var_0.x, u_input.c.x)), select(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 1i, -48648i), vec3<i32>(var_0.x, u_input.b, var_0.x)), select(vec3<i32>(-59i, -12577i, u_input.c.x), vec3<i32>(-2147483647i, u_input.b, u_input.b), true), !vec3<bool>(var_1.c, true, true)))));
}

fn func_6(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<f32> {
    return vec2<f32>(arg_2.b.x, _wgslsmith_f_op_f32(round(arg_2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -818f;
    var var_1 = 4659u;
    var var_2 = Struct_1(vec3<u32>(4294967295u, 5884u, u_input.a.x), _wgslsmith_f_op_vec2_f32(func_6(func_1(), select(vec4<bool>(func_4(vec3<i32>(u_input.c.x, u_input.b, 1i), vec4<f32>(global1.x, -1325f, var_0, -1361f), u_input.c).c, global2[_wgslsmith_index_u32(4294967295u, 10u)], select(global2[_wgslsmith_index_u32(49141u, 10u)], true, true), true), vec4<bool>(true, true, all(vec4<bool>(true, global2[_wgslsmith_index_u32(4919u, 10u)], true, false)), global2[_wgslsmith_index_u32(~19660u, 10u)]), !vec4<bool>(false, global2[_wgslsmith_index_u32(47573u, 10u)], true, false)), Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 69991u, u_input.a.x), vec3<u32>(4294967295u, 4294967295u, 15362u)) | firstTrailingBit(vec3<u32>(32353u, u_input.a.x, 8163u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, 109f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, 807f))), any(vec4<bool>(global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(44144u, 10u)], false, global2[_wgslsmith_index_u32(0u, 10u)])))), true, global2[_wgslsmith_index_u32(~u_input.a.x, 10u)]))), false, global2[_wgslsmith_index_u32(42734u, 10u)]);
    global1 = vec2<f32>(global1.x, global1.x);
    var var_3 = 0i;
    var var_4 = Struct_1(var_2.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(289f + 607f), _wgslsmith_f_op_f32(min(-267f, global1.x)))), !func_4(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(7673i, u_input.b, 0i)), vec3<i32>(1i, u_input.d, 13572i)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_5(u_input.c, Struct_1(vec3<u32>(30619u, u_input.a.x, u_input.a.x), vec2<f32>(817f, var_2.b.x), global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(var_2.a.x, 10u)]), Struct_1(vec3<u32>(var_2.a.x, u_input.a.x, u_input.a.x), vec2<f32>(var_0, global1.x), var_2.c, var_2.d), u_input.c.x).a.x, ~u_input.a.x, u_input.a.x), 4u)], -u_input.c).d, func_5(~u_input.c, func_4(-vec3<i32>(u_input.b, u_input.c.x, u_input.b), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.x, 1u), vec2<u32>(69297u, 70202u)), 4u)], firstTrailingBit(firstTrailingBit(u_input.c))), func_4(~select(vec3<i32>(u_input.b, u_input.c.x, 0i), vec3<i32>(u_input.d, u_input.c.x, -2147483647i), true), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-721f, global1.x, 172f, -677f), global0[_wgslsmith_index_u32(var_2.a.x, 4u)]), global0[_wgslsmith_index_u32(4294967295u, 4u)]), -vec2<i32>(0i, u_input.b)), countOneBits(-1i >> (var_2.a.x % 32u))).c);
    let var_5 = 1u;
    global1 = vec2<f32>(255f, _wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(ceil(-1261f))));
    var var_6 = firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~39659u, min(u_input.a.x, var_2.a.x)), 16727u, var_2.a.x, 49777u >> (_wgslsmith_sub_u32(var_2.a.x, 4294967295u) % 32u)), _wgslsmith_add_vec4_u32(vec4<u32>(~22285u, ~u_input.a.x, _wgslsmith_add_u32(88387u, 1u), 4294967295u), firstTrailingBit(firstLeadingBit(vec4<u32>(4294967295u, var_4.a.x, 1u, var_5))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.a.x, (u_input.a.x & 22827u) | 34728u, max(_wgslsmith_mod_u32(var_6.x, 4294967295u), var_6.x & 3665u), _wgslsmith_clamp_u32(firstTrailingBit(var_4.a.x), var_4.a.x & 1u, 1u)) & select(firstTrailingBit(vec4<u32>(var_6.x, 46190u, var_2.a.x, var_6.x)), vec4<u32>(u_input.a.x, var_5, ~u_input.a.x, var_2.a.x), select(!vec4<bool>(false, true, var_4.d, false), select(vec4<bool>(var_4.c, var_4.c, global2[_wgslsmith_index_u32(var_4.a.x, 10u)], global2[_wgslsmith_index_u32(27404u, 10u)]), vec4<bool>(false, var_2.c, true, global2[_wgslsmith_index_u32(var_2.a.x, 10u)]), vec4<bool>(false, var_4.c, global2[_wgslsmith_index_u32(0u, 10u)], true)), !vec4<bool>(false, var_4.d, global2[_wgslsmith_index_u32(10698u, 10u)], false))), u_input.a.x, abs(max(25541i, _wgslsmith_div_i32(u_input.c.x, abs(-65560i)))), ~(_wgslsmith_mult_vec3_i32(-vec3<i32>(-33587i, u_input.c.x, -1021i), vec3<i32>(0i, 2147483647i, -1i)) >> (vec3<u32>(26695u | var_6.x, 0u, ~48935u) % vec3<u32>(32u))));
}

