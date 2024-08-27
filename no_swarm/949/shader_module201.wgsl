struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(2147483647i, 27603i, -56331i, 0i, i32(-2147483648));

var<private> global1: array<vec4<u32>, 5>;

var<private> global2: i32;

var<private> global3: Struct_1;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> vec3<f32> {
    global3 = arg_1;
    var var_0 = 0i;
    var var_1 = _wgslsmith_f_op_f32(min(arg_1.d.x, 1055f));
    global1 = array<vec4<u32>, 5>();
    var var_2 = vec4<i32>(arg_1.b.x, ~(~max(4404i, _wgslsmith_mult_i32(global3.c, arg_1.b.x))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b & 1u, _wgslsmith_sub_u32(1u, u_input.e)), 5u)], -18316i);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-488f, 213f, -995f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1134f, 1000f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.d + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-742f, arg_2.x, -131f))) + arg_1.d) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.d * vec3<f32>(1456f, arg_2.x, -406f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.d.x, arg_1.a, 893f))))))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: u32) -> vec3<f32> {
    var var_0 = Struct_2(!all(select(vec2<bool>(false, true), !vec2<bool>(false, arg_0), global3.d.x > global3.a)), ~(~(~abs(vec2<u32>(0u, 86839u)))), Struct_1(_wgslsmith_f_op_f32(trunc(global3.d.x)), countOneBits(~vec4<i32>(u_input.a, -6068i, -1i, global3.b.x)), global3.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-813f, 1000f, global3.d.x)) * _wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(false, arg_1, arg_0), Struct_1(-740f, u_input.d, 0i, vec3<f32>(global3.a, global3.a, 952f)), _wgslsmith_div_vec3_f32(global3.d, vec3<f32>(global3.a, global3.a, -665f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(global3.d.zz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(all(vec3<bool>(true, var_0.a, arg_1)), arg_0, arg_0), Struct_1(_wgslsmith_f_op_f32(-366f * 479f), global3.b, -14329i, _wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(var_0.a, var_0.a, false), var_0.c, vec3<f32>(global3.d.x, -815f, global3.a)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.a, 692f, global3.d.x), global3.d, vec3<bool>(arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global3.d.x, 314f)))))).zy));
    global1 = array<vec4<u32>, 5>();
    var var_2 = ~var_0.b;
    let var_3 = select(vec4<bool>(!arg_0, all(!select(vec2<bool>(var_0.a, false), vec2<bool>(false, false), arg_1)), true || arg_0, var_0.a), select(select(select(select(vec4<bool>(true, arg_1, false, var_0.a), vec4<bool>(arg_0, arg_1, arg_0, arg_1), false), vec4<bool>(true, var_0.a, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(arg_0, true, false, false), vec4<bool>(true, arg_0, false, true))), !(!vec4<bool>(arg_1, true, var_0.a, arg_0)), true), vec4<bool>(true, true, true && arg_1, true), !vec4<bool>(all(vec2<bool>(false, false)), arg_1, arg_1, !arg_0)), !vec4<bool>(!arg_0 | true, false, arg_1 && select(arg_0, true, false), false));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(226f, -1234f, true))), var_0.c.d.x, 1462f);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = vec4<bool>(all(!arg_2), (arg_0 ^ abs(arg_0 ^ u_input.e)) == min(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, u_input.e, 1u, 62887u), vec4<u32>(u_input.b, 1u, u_input.b, arg_0)), countOneBits(37327u)), true, false);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1394f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_1.d.x, 517f))))))), ~vec4<i32>(_wgslsmith_sub_i32(-1i, _wgslsmith_sub_i32(global3.c, u_input.d.x)), ~(u_input.c.x >> (4294967295u % 32u)), -global0[_wgslsmith_index_u32(countOneBits(arg_0), 5u)], _wgslsmith_clamp_i32(arg_1.c & 1i, global3.c, global3.c)), u_input.d.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_1.d))));
    let var_2 = !(firstTrailingBit(4294967295u) <= ~(~(~0u)));
    var var_3 = Struct_2(any(!var_0), min(~(abs(vec2<u32>(u_input.e, 42269u)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(23662u, 4294967295u), vec2<u32>(arg_0, u_input.e)) % vec2<u32>(32u))), ~vec2<u32>(1u, 32534u)), var_1);
    var var_4 = all(select(vec3<bool>(false == (var_3.c.c > 1i), var_0.x, countOneBits(global3.b.x) < -global3.c), select(select(vec3<bool>(true, true, false), vec3<bool>(var_2, var_3.a, var_0.x), select(var_0.xxz, var_0.wyy, vec3<bool>(true, var_2, true))), select(select(vec3<bool>(false, var_2, false), vec3<bool>(true, false, false), var_0.wxz), !vec3<bool>(arg_2.x, false, false), var_2), var_2 && var_0.x), var_2));
    return Struct_2(true, ~select(vec2<u32>(var_3.b.x, _wgslsmith_clamp_u32(arg_0, 0u, 4294967295u)), vec2<u32>(firstLeadingBit(0u), firstLeadingBit(var_3.b.x)), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a))), -_wgslsmith_div_vec4_i32(vec4<i32>(global3.b.x, u_input.c.x, var_3.c.c, global0[_wgslsmith_index_u32(4294967295u, 5u)]) | vec4<i32>(var_3.c.b.x, -2147483647i, 1i, 19311i), vec4<i32>(var_1.c, global0[_wgslsmith_index_u32(arg_0, 5u)], -73733i, var_1.b.x)), -_wgslsmith_mod_i32(-u_input.c.x, -1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2124f, -1537f, arg_1.d.x))))));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    global3 = func_4(0u, func_4(1u, arg_1.c, select(select(!vec2<bool>(arg_1.a, arg_1.a), select(vec2<bool>(false, var_0.a), vec2<bool>(false, true), false), select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(arg_1.a, false), vec2<bool>(var_0.a, false))), !select(vec2<bool>(true, false), vec2<bool>(true, var_0.a), var_0.a), select(select(vec2<bool>(false, false), vec2<bool>(var_0.a, false), true), select(vec2<bool>(arg_1.a, var_0.a), vec2<bool>(var_0.a, false), vec2<bool>(false, true)), true && arg_1.a))).c, vec2<bool>(_wgslsmith_f_op_f32(-var_0.c.a) == var_0.c.a, true)).c;
    let var_1 = func_4(5696u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.d.x)))), countOneBits(~vec4<i32>(global3.b.x, arg_3.c, 0i, var_0.c.b.x)), global0[_wgslsmith_index_u32(u_input.b, 5u)], global3.d), vec2<bool>(0i >= (i32(-1i) * -arg_3.c), var_0.a)).c;
    var var_2 = true;
    var_2 = arg_1.a;
    return func_4(65669u, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.d.x + _wgslsmith_f_op_f32(f32(-1f) * -843f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-836f * arg_2.a)))), max(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -17977i, u_input.c.x, arg_2.c), arg_2.b), _wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(173u, 5u)], 0i, var_0.c.b.x, -1i), arg_2.b)) & _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, arg_3.c, -33699i, var_0.c.b.x), reverseBits(arg_2.b)), -_wgslsmith_div_i32(arg_1.c.c >> (92514u % 32u), global0[_wgslsmith_index_u32(~1u, 5u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(719f, -1301f, _wgslsmith_f_op_f32(-232f - 918f)) - _wgslsmith_f_op_vec3_f32(select(arg_3.d, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.a, var_0.c.d.x, 981f), vec3<f32>(arg_2.d.x, 246f, var_0.c.a))), any(vec2<bool>(true, var_0.a)))))), !(!(!select(vec2<bool>(true, true), vec2<bool>(false, arg_1.a), var_0.a)))).c;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = arg_2.b.xyz;
    global1 = array<vec4<u32>, 5>();
    var_0 = vec3<i32>(1i, -16364i, global3.b.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_1.a, global3.d.x, arg_0.a) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1373f, -445f, arg_0.a, -467f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_1.d.x, -844f, 2953f)))))));
    var var_2 = vec2<u32>(firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u) | vec4<u32>(u_input.e, u_input.b, 0u, u_input.e), abs(vec4<u32>(1u, 1u, 34769u, 3443u))), u_input.e)), u_input.e);
    return 31123i;
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = countOneBits(~0i);
    global2 = func_6(func_5(abs(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(1374u, 5u)], global1[_wgslsmith_index_u32(u_input.e, 5u)])) >> (firstTrailingBit(_wgslsmith_div_u32(23055u, arg_0)) % 32u), func_4(0u >> (firstLeadingBit(arg_0) % 32u), Struct_1(_wgslsmith_f_op_f32(sign(-1960f)), u_input.d, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.e, 5u)], var_0), _wgslsmith_f_op_vec3_f32(func_2(true, false, 1876u))), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), Struct_1(_wgslsmith_f_op_f32(max(133f, 841f)), global3.b, 4484i, global3.d), func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(60563u, arg_0), vec2<u32>(u_input.e, arg_0))), Struct_1(1f, u_input.d >> (global1[_wgslsmith_index_u32(arg_0, 5u)] % vec4<u32>(32u)), abs(global3.c), _wgslsmith_f_op_vec3_f32(global3.d + global3.d)), vec2<bool>(true, true)).c), Struct_1(150f, _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -1i, -2147483647i, 0i) >> ((global1[_wgslsmith_index_u32(4294967295u, 5u)] ^ vec4<u32>(58818u, 12841u, 1u, u_input.e)) % vec4<u32>(32u)), vec4<i32>(2147483647i ^ global0[_wgslsmith_index_u32(arg_0, 5u)], 1i, 1i, _wgslsmith_div_i32(-26261i, u_input.a))), ~firstTrailingBit(_wgslsmith_mod_i32(-3541i, -3583i)), global3.d), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1004f))), _wgslsmith_mod_vec4_i32(min(vec4<i32>(-856i, 23833i, global0[_wgslsmith_index_u32(arg_0, 5u)], global3.b.x), func_4(arg_0, Struct_1(-289f, vec4<i32>(u_input.a, u_input.c.x, 0i, u_input.c.x), -17854i, global3.d), vec2<bool>(true, true)).c.b), -vec4<i32>(var_0, global0[_wgslsmith_index_u32(0u, 5u)], -45784i, -30428i)), _wgslsmith_mult_i32(i32(-1i) * -9168i, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(arg_0, 5u)], -2147483647i) >> (u_input.e % 32u)), global3.d));
    var var_1 = func_5(countOneBits(87827u | _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(22138u, u_input.e, arg_0)), vec3<u32>(65678u, u_input.b, u_input.e))), func_4(171864u, func_5(_wgslsmith_add_u32(100343u, ~4294967295u), Struct_2(any(vec4<bool>(false, true, false, true)), vec2<u32>(53128u, arg_0), Struct_1(393f, vec4<i32>(global3.c, 15676i, u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 5u)]), 5390i, vec3<f32>(global3.a, -1756f, global3.a))), func_5(~2913u, Struct_2(false, vec2<u32>(arg_0, 1u), Struct_1(-495f, vec4<i32>(55368i, global0[_wgslsmith_index_u32(arg_0, 5u)], u_input.c.x, -1i), 1i, vec3<f32>(603f, global3.a, 1000f))), Struct_1(global3.d.x, vec4<i32>(-2724i, global0[_wgslsmith_index_u32(0u, 5u)], u_input.a, global0[_wgslsmith_index_u32(67077u, 5u)]), -2147483647i, global3.d), Struct_1(-1587f, vec4<i32>(-11236i, 2147483647i, 5805i, 2147483647i), u_input.c.x, global3.d)), func_5(arg_0, Struct_2(false, vec2<u32>(u_input.e, 3971u), Struct_1(global3.a, u_input.d, -39622i, global3.d)), func_5(arg_0, Struct_2(false, vec2<u32>(4294967295u, u_input.b), Struct_1(154f, vec4<i32>(global0[_wgslsmith_index_u32(35307u, 5u)], 14743i, -2744i, global3.b.x), 29262i, vec3<f32>(global3.d.x, -984f, global3.d.x))), Struct_1(448f, global3.b, global0[_wgslsmith_index_u32(u_input.b, 5u)], vec3<f32>(-1045f, global3.d.x, -496f)), Struct_1(global3.a, u_input.d, 2147483647i, global3.d)), func_5(1u, Struct_2(true, vec2<u32>(0u, arg_0), Struct_1(335f, u_input.d, -2147483647i, global3.d)), Struct_1(888f, global3.b, global0[_wgslsmith_index_u32(4488u, 5u)], vec3<f32>(global3.d.x, -991f, global3.d.x)), Struct_1(1644f, vec4<i32>(2147483647i, u_input.d.x, global0[_wgslsmith_index_u32(4294967295u, 5u)], 1i), var_0, global3.d)))), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), false)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.a))))), vec4<i32>(u_input.c.x, -global3.b.x, -(~(-2147483647i)), -global3.c), reverseBits(9368i), _wgslsmith_f_op_vec3_f32(-global3.d)), func_5(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 8005u, 4294967295u, u_input.e), _wgslsmith_clamp_vec4_u32(vec4<u32>(80161u, u_input.e, 1894u, 4294967295u), vec4<u32>(arg_0, u_input.e, 0u, 4294967295u), vec4<u32>(u_input.b, arg_0, 0u, u_input.b))), firstTrailingBit(firstLeadingBit(vec4<u32>(u_input.e, 1u, 31643u, arg_0)))), func_4(_wgslsmith_add_u32(arg_0 | 26700u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.e, arg_0), vec3<u32>(0u, u_input.b, arg_0))), func_5(~arg_0, Struct_2(true, vec2<u32>(u_input.e, 11437u), Struct_1(global3.a, u_input.d, 2147483647i, vec3<f32>(-1000f, global3.a, global3.a))), Struct_1(-1766f, vec4<i32>(34176i, var_0, u_input.d.x, global3.b.x), -2147483647i, vec3<f32>(395f, 1305f, -480f)), func_4(0u, Struct_1(1809f, global3.b, global0[_wgslsmith_index_u32(98636u, 5u)], vec3<f32>(global3.d.x, -820f, global3.d.x)), vec2<bool>(true, false)).c), vec2<bool>(true, true)), Struct_1(global3.a, ~u_input.d, -_wgslsmith_dot_vec2_i32(vec2<i32>(27397i, var_0), global3.b.wx), global3.d), func_4(_wgslsmith_mult_u32(u_input.e, 4294967295u) >> (u_input.b % 32u), Struct_1(func_4(5881u, Struct_1(global3.a, u_input.d, u_input.c.x, global3.d), vec2<bool>(false, true)).c.a, -vec4<i32>(36115i, 15154i, 6701i, 0i), -2147483647i, vec3<f32>(global3.d.x, global3.d.x, -1192f)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(false, false))).c));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(true, true, 26372u)).x));
    var var_3 = func_4(~select(firstTrailingBit(4294967295u), _wgslsmith_div_u32(~u_input.b, arg_0), func_6(Struct_1(var_1.d.x, u_input.d, var_1.b.x, var_1.d), Struct_1(412f, global3.b, global3.c, global3.d), Struct_1(global3.d.x, var_1.b, -1i, vec3<f32>(2003f, -182f, global3.d.x))) <= var_1.c), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.x))), var_1.b, select(global3.b.x, _wgslsmith_mult_i32(-2147483647i ^ global3.c, -var_1.b.x), true), vec3<f32>(_wgslsmith_f_op_f32(-888f * _wgslsmith_f_op_f32(1562f - var_1.d.x)), _wgslsmith_f_op_f32(global3.d.x * _wgslsmith_f_op_vec3_f32(func_2(true, true, u_input.e)).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -444f)))), vec2<bool>((_wgslsmith_add_u32(u_input.b, 63462u) >= 4294967295u) || (643f > global3.a), all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(76274u >> (~_wgslsmith_clamp_u32(0u, u_input.b, u_input.b) % 32u), 14399u), vec2<u32>(~(~u_input.b), u_input.b));
    var var_1 = -639f;
    global1 = array<vec4<u32>, 5>();
    var var_2 = _wgslsmith_mod_vec4_u32(~(max(global1[_wgslsmith_index_u32(var_0.x, 5u)], vec4<u32>(1u, 16400u, 4294967295u, var_0.x)) << (_wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(39628u, 5u)], global1[_wgslsmith_index_u32(1u, 5u)]) % vec4<u32>(32u))), global1[_wgslsmith_index_u32(1u, 5u)]) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(u_input.b, 5u)] ^ global1[_wgslsmith_index_u32(var_0.x, 5u)], global1[_wgslsmith_index_u32(~u_input.b, 5u)]) & 4294967295u, 4294967295u | max(var_0.x, u_input.e), 1u, _wgslsmith_clamp_u32(u_input.e, select(u_input.b, 42873u, false) >> (_wgslsmith_add_u32(15273u, 0u) % 32u), func_1(var_0.x))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~66996u, 33598u << (_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.e, var_0.x), var_0.x) % 32u), ~min(~u_input.e, 4294967295u)), func_5(_wgslsmith_div_u32(_wgslsmith_sub_u32(countOneBits(59651u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, 0u), vec3<u32>(var_0.x, 87166u, 40536u))), 4294967295u), Struct_2(global0[_wgslsmith_index_u32(44819u << (0u % 32u), 5u)] == -2095i, countOneBits(var_2.xw), Struct_1(_wgslsmith_f_op_f32(floor(524f)), global3.b, -1i, global3.d)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1032f - global3.a))), vec4<i32>(global0[_wgslsmith_index_u32(func_4(var_0.x, Struct_1(global3.d.x, vec4<i32>(u_input.d.x, -1i, -1i, u_input.a), 25867i, vec3<f32>(-146f, 1618f, -667f)), vec2<bool>(true, false)).b.x, 5u)], 0i, 6380i, -4745i), 62082i, vec3<f32>(-1062f, -340f, global3.d.x)), Struct_1(_wgslsmith_f_op_vec3_f32(func_3(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), Struct_1(1000f, vec4<i32>(-12226i, -1i, 1i, -28977i), u_input.a, global3.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a, global3.a, 164f) - vec3<f32>(-1033f, -210f, global3.d.x)))).x, max(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(global3.b.x, global0[_wgslsmith_index_u32(4294967295u, 5u)], 26834i, global3.c), u_input.d, vec4<i32>(u_input.a, global3.b.x, global3.b.x, -1i))), 2147483647i, vec3<f32>(global3.a, 854f, _wgslsmith_f_op_f32(1284f * -777f)))).b.wx, func_5(countOneBits(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.e, 44508u), firstLeadingBit(var_0.x), var_2.x)), Struct_2(1i != firstTrailingBit(11231i), vec2<u32>(var_2.x ^ var_0.x, ~0u), func_5(79070u, Struct_2(false, var_2.xy, Struct_1(global3.d.x, vec4<i32>(global3.c, u_input.a, -1i, u_input.d.x), 69891i, global3.d)), Struct_1(global3.d.x, vec4<i32>(1i, 1i, global0[_wgslsmith_index_u32(var_2.x, 5u)], u_input.d.x), -2147483647i, vec3<f32>(global3.a, global3.a, -803f)), Struct_1(global3.d.x, u_input.d, -10643i, vec3<f32>(-273f, global3.a, 2198f)))), func_5(abs(~var_0.x), func_4(~1482u, Struct_1(global3.a, global3.b, -1i, vec3<f32>(-859f, 1221f, global3.d.x)), vec2<bool>(true, true)), func_4(4294967295u, Struct_1(485f, u_input.d, 69896i, global3.d), vec2<bool>(true, false)).c, func_4(42885u, Struct_1(-536f, u_input.d, -2147483647i, vec3<f32>(312f, global3.d.x, global3.d.x)), select(vec2<bool>(false, true), vec2<bool>(false, false), true)).c), func_5(~(~u_input.e), func_4(_wgslsmith_mod_u32(var_2.x, 0u), func_5(var_0.x, Struct_2(false, vec2<u32>(var_2.x, var_2.x), Struct_1(global3.d.x, vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 5u)], -450i, 19932i, 10177i), 0i, vec3<f32>(655f, global3.a, global3.d.x))), Struct_1(global3.d.x, vec4<i32>(global0[_wgslsmith_index_u32(var_2.x, 5u)], -37236i, global3.c, global3.b.x), global3.c, vec3<f32>(1349f, 1386f, global3.a)), Struct_1(global3.d.x, vec4<i32>(global0[_wgslsmith_index_u32(u_input.e, 5u)], global0[_wgslsmith_index_u32(u_input.e, 5u)], 2147483647i, 14580i), global0[_wgslsmith_index_u32(u_input.e, 5u)], vec3<f32>(global3.d.x, -719f, -265f))), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), Struct_1(global3.a, u_input.d, -2147483647i << (var_2.x % 32u), global3.d), Struct_1(global3.a, -vec4<i32>(global3.b.x, 7806i, 57499i, u_input.d.x), -u_input.d.x, vec3<f32>(global3.a, global3.a, global3.d.x)))).b.x, _wgslsmith_mult_vec2_u32(var_0, ~min(var_2.zz, vec2<u32>(var_2.x, var_2.x))));
}

