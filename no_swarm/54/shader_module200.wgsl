struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec4<bool>,
    d: vec2<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(13877u, 1u, 29736u, 28096u), vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(0u, 27122u, 0u, 41916u), vec4<u32>(26209u, 0u, 47023u, 4294967295u), vec4<u32>(0u, 34900u, 18217u, 5976u));

var<private> global1: f32;

var<private> global2: array<bool, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    global2 = array<bool, 2>();
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, (_wgslsmith_div_i32(u_input.a, u_input.a) & ~u_input.a) >> (0u % 32u), -5987i & firstTrailingBit(u_input.a | 31628i), -(~(~u_input.a))), vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(-vec4<i32>(11042i, u_input.a, 17258i, u_input.a), vec4<i32>(7760i, u_input.a, u_input.a, 22288i) << (global0[_wgslsmith_index_u32(51676u, 5u)] % vec4<u32>(32u))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-1245f, 159f)), 1f, 1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(616f, -529f, -275f), vec3<f32>(-344f, 1426f, 1000f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(473f, -1148f, 1435f), vec3<f32>(-903f, -1169f, -109f))), select(vec3<bool>(global2[_wgslsmith_index_u32(13799u, 2u)], false, global2[_wgslsmith_index_u32(1u, 2u)]), vec3<bool>(true, true, global2[_wgslsmith_index_u32(4709u, 2u)]), global2[_wgslsmith_index_u32(0u, 2u)]))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-105f, 584f, -907f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(754f, -217f, -1140f)), global2[_wgslsmith_index_u32(~44256u, 2u)]))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(449f, -198f, -1000f), vec3<f32>(-1937f, -402f, -313f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(530f, -1623f, -765f))), select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(60835u, 2u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 2u)], false, false), global2[_wgslsmith_index_u32(94611u, 2u)])))))));
    var var_2 = !(!(!(!all(vec2<bool>(true, global2[_wgslsmith_index_u32(13140u, 2u)])))));
    let var_3 = ~1u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-425f, -1000f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) - 1151f)))));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-584f + _wgslsmith_f_op_f32(f32(-1f) * -1437f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1458f, 145f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1659f)));
    global2 = array<bool, 2>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(func_3()), Struct_1(1u, 1u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -445f)), 921f, 901f, 486f), true && !any(vec2<bool>(global2[_wgslsmith_index_u32(52703u, 2u)], false))), Struct_1(reverseBits(_wgslsmith_mult_u32(69493u, _wgslsmith_div_u32(1u, 1u))), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(select(vec2<u32>(1u, 0u), vec2<u32>(1u, 0u), true), vec2<u32>(353u, 41537u)), abs(vec2<u32>(34067u, 45232u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-762f, 269f, -325f, -1000f), vec4<f32>(1693f, -1568f, -865f, 1000f), global2[_wgslsmith_index_u32(4294967295u, 2u)])) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1244f, -1397f, -885f, -2336f), vec4<f32>(-1081f, -2267f, 819f, 2498f), vec4<bool>(global2[_wgslsmith_index_u32(44005u, 2u)], global2[_wgslsmith_index_u32(24406u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)], true)))))), false), Struct_1(82837u, min(1u, ~6692u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-542f, 744f, 351f, -1356f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -271f, -464f, 234f), vec4<f32>(-1051f, 2453f, -504f, -1963f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(487f, -160f, 156f, -334f) + vec4<f32>(-418f, -1154f, -1000f, -965f))))), true), ~(~73258u));
    let var_2 = _wgslsmith_clamp_i32(~_wgslsmith_dot_vec4_i32(firstLeadingBit(select(vec4<i32>(u_input.a, u_input.a, -15524i, 2147483647i), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), vec4<bool>(var_1.d.d, false, false, false))), ~vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)), u_input.a, ~(-1i));
    let var_3 = global0[_wgslsmith_index_u32(84202u, 5u)];
    return var_1.e;
}

fn func_4(arg_0: vec4<u32>) -> bool {
    global0 = array<vec4<u32>, 5>();
    let var_0 = 44988i;
    var var_1 = vec3<bool>(global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~(~32066u), arg_0.x, 1u), 2u)], true, !(_wgslsmith_f_op_f32(round(-1618f)) <= _wgslsmith_f_op_f32(780f * 327f)));
    var var_2 = vec2<u32>(~1u, 11157u);
    let var_3 = Struct_3(i32(-1i) * -(-u_input.a << (select(4294967295u, var_2.x, true) % 32u)), ~(~(~var_0)), select(!vec4<bool>(true, !global2[_wgslsmith_index_u32(82881u, 2u)], u_input.a < var_0, var_1.x), select(select(!vec4<bool>(var_1.x, var_1.x, global2[_wgslsmith_index_u32(79944u, 2u)], true), select(vec4<bool>(var_1.x, var_1.x, global2[_wgslsmith_index_u32(var_2.x, 2u)], global2[_wgslsmith_index_u32(9198u, 2u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(arg_0.x, 2u)], var_1.x, false), vec4<bool>(true, var_1.x, global2[_wgslsmith_index_u32(arg_0.x, 2u)], false)), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 2u)], true, true, global2[_wgslsmith_index_u32(var_2.x, 2u)])), select(!vec4<bool>(true, global2[_wgslsmith_index_u32(28640u, 2u)], global2[_wgslsmith_index_u32(arg_0.x, 2u)], false), select(vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 2u)], true, global2[_wgslsmith_index_u32(arg_0.x, 2u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 2u)], var_1.x, var_1.x, global2[_wgslsmith_index_u32(24319u, 2u)])), true), vec4<bool>(var_1.x, any(vec3<bool>(false, false, global2[_wgslsmith_index_u32(arg_0.x, 2u)])), any(vec4<bool>(true, global2[_wgslsmith_index_u32(48958u, 2u)], false, global2[_wgslsmith_index_u32(4294967295u, 2u)])), false)), false), vec2<i32>(min(u_input.a, -min(u_input.a, u_input.a)), 1i), Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1190f * 320f)), _wgslsmith_f_op_f32(-797f - 673f), true)), Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.x, arg_0.x), arg_0.yxw), var_2.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-357f, -264f, 2009f, 794f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-677f, -767f, -278f, -1000f) * vec4<f32>(661f, 1028f, 356f, 1370f)))), global2[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 33067u, var_2.x, var_2.x), global0[_wgslsmith_index_u32(var_2.x, 5u)]), 4294967295u, var_2.x < 13004u), 2u)]), Struct_1(abs(_wgslsmith_dot_vec3_u32(arg_0.yzy, arg_0.wzz)), select(arg_0.x, 4294967295u, any(vec4<bool>(true, var_1.x, global2[_wgslsmith_index_u32(var_2.x, 2u)], var_1.x))), vec4<f32>(1f, 1f, 1f, 1f), select(all(vec2<bool>(false, var_1.x)), select(false, var_1.x, true), var_1.x | false)), Struct_1(arg_0.x, 79623u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1176f, -1859f, -997f, -619f), vec4<f32>(-107f, -480f, -405f, -979f))), true), _wgslsmith_dot_vec4_u32(vec4<u32>(5190u, ~1694u, arg_0.x, 49615u), vec4<u32>(arg_0.x, 11810u, arg_0.x, 1u))));
    return false;
}

fn func_1(arg_0: u32, arg_1: f32) -> vec4<f32> {
    let var_0 = countOneBits(arg_0);
    var var_1 = !all(!select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(39380u, 2u)], global2[_wgslsmith_index_u32(22939u, 2u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(var_0, 2u)]))) == func_4(vec4<u32>(func_2() ^ ~arg_0, arg_0 | var_0, reverseBits(min(arg_0, 43201u)), 24621u));
    global2 = array<bool, 2>();
    let var_2 = Struct_3(abs(0i | _wgslsmith_dot_vec4_i32(-vec4<i32>(46982i, 48490i, u_input.a, -1i), abs(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a)))), u_input.a, !select(vec4<bool>(true, !global2[_wgslsmith_index_u32(28304u, 2u)], u_input.a != u_input.a, true), vec4<bool>(false & global2[_wgslsmith_index_u32(arg_0, 2u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(104736u, arg_0), 2u)], false, true), !vec4<bool>(global2[_wgslsmith_index_u32(1u, 2u)], true, false, false)), select(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(2147483647i, u_input.a)), _wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.a, -7341i)), reverseBits(vec2<i32>(u_input.a, -1i)))), -(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -24080i), vec2<i32>(u_input.a, u_input.a)) >> ((vec2<u32>(0u, var_0) ^ vec2<u32>(var_0, 101060u)) % vec2<u32>(32u))), true), Struct_2(_wgslsmith_f_op_f32(-arg_1), Struct_1(38528u, arg_0, _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(arg_1, arg_1, -346f, -1000f)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, var_0), vec3<u32>(arg_0, 13769u, var_0)) << (_wgslsmith_mod_u32(4294967295u, var_0) % 32u), 2u)]), Struct_1(abs(~7461u), abs(~1u), vec4<f32>(_wgslsmith_f_op_f32(-arg_1), -609f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -669f)), !(1i < u_input.a)), Struct_1(~61325u | var_0, abs(0u), vec4<f32>(1424f, -631f, arg_1, _wgslsmith_f_op_f32(arg_1 - -727f)), true), var_0));
    global2 = array<bool, 2>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.e.d.c.x + 165f), var_2.e.b.c.x, 1444f, 132f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 2>();
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1(min(~48983u, 81891u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f) + _wgslsmith_f_op_f32(-1238f + 951f))))));
    var var_1 = Struct_1(0u, select(~(~(~1u)), 1u, !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, 1u), ~31923u), 2u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_div_f32(205f, var_0.x), _wgslsmith_f_op_f32(floor(var_0.x)), -830f))), true);
    global2 = array<bool, 2>();
    let var_2 = Struct_1(~min(18791u, _wgslsmith_add_u32(func_2(), 0u)), abs(~countOneBits(~48960u)), _wgslsmith_f_op_vec4_f32(select(var_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_1.c)) + var_0)), vec4<bool>(global2[_wgslsmith_index_u32(~4294967295u, 2u)], max(4294967295u, 1u) != var_1.b, any(!vec3<bool>(false, global2[_wgslsmith_index_u32(var_1.a, 2u)], true)), global2[_wgslsmith_index_u32(15923u, 2u)]))), false);
    let var_3 = Struct_3(-_wgslsmith_mult_i32(select(u_input.a, max(u_input.a, 33953i), true), firstTrailingBit(0i)), u_input.a, select(vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(13205u, 2u)], false), select(!vec4<bool>(global2[_wgslsmith_index_u32(var_1.b, 2u)], true, false, var_1.d), vec4<bool>(true, true, true, any(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 2u)]))), select(select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(0u, 2u)], var_2.d), vec4<bool>(false, var_2.d, global2[_wgslsmith_index_u32(var_1.a, 2u)], true), global2[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<bool>(var_1.d, true, global2[_wgslsmith_index_u32(var_2.b, 2u)], var_1.d), var_1.d)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.b << ((var_1.b >> (var_2.a % 32u)) % 32u), 38854u), 2u)]), _wgslsmith_div_vec2_i32(vec2<i32>(-select(-40708i, -31215i, false), -55569i), -_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(2147483647i, u_input.a)), vec2<i32>(19418i, -1i))), Struct_2(_wgslsmith_f_op_f32(-556f - _wgslsmith_f_op_f32(-659f * _wgslsmith_f_op_f32(min(var_2.c.x, 768f)))), Struct_1(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(65971u, 81835u), vec2<u32>(var_2.a, 1u)), _wgslsmith_f_op_vec4_f32(-var_2.c), 2147483647i < select(u_input.a, -40096i, global2[_wgslsmith_index_u32(24180u, 2u)])), var_2, Struct_1(82910u, 4294967295u, var_1.c, all(select(vec3<bool>(var_1.d, global2[_wgslsmith_index_u32(62996u, 2u)], false), vec3<bool>(false, true, var_1.d), vec3<bool>(var_1.d, var_2.d, true)))), _wgslsmith_mod_u32(select(var_1.b, ~var_1.a, !var_2.d), max(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(53600u, 4294967295u, var_1.a), vec3<u32>(var_1.a, var_1.a, 533u))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(486f + 2051f), _wgslsmith_f_op_f32(-var_2.c.x)), var_2.c.x))));
}

