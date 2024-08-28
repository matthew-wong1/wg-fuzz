struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 21>;

var<private> global1: array<vec4<f32>, 8>;

var<private> global2: i32;

var<private> global3: vec3<bool>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<u32>) -> vec4<u32> {
    global2 = (max(_wgslsmith_div_i32(abs(20526i), ~(-2968i)), 2147483647i) >> (~u_input.c % 32u)) << (28184u % 32u);
    global1 = array<vec4<f32>, 8>();
    var var_0 = Struct_3(vec3<u32>(u_input.e.x ^ u_input.e.x, 19759u, ~u_input.a), ~vec4<i32>(-select(29461i, -1i, true), -1i, reverseBits(_wgslsmith_clamp_i32(1i, -47293i, 2147483647i)), ~0i));
    global1 = array<vec4<f32>, 8>();
    var var_1 = select(select(vec3<bool>(true, true, any(!global3.xy)), vec3<bool>(true, true, false), false == ((-1i != var_0.b.x) & all(vec3<bool>(true, global3.x, true)))), !vec3<bool>(!(global3.x && global3.x), any(vec2<bool>(true, true)), !global3.x), vec3<bool>(!(!any(vec4<bool>(true, true, false, global3.x))), true, any(select(select(vec4<bool>(false, false, global3.x, true), vec4<bool>(global3.x, false, global3.x, global3.x), false), select(vec4<bool>(global3.x, global3.x, global3.x, true), vec4<bool>(global3.x, true, global3.x, global3.x), global3.x), !vec4<bool>(global3.x, global3.x, global3.x, true)))));
    return ~min(vec4<u32>(arg_0.x >> (1u % 32u), 39393u, arg_0.x, max(_wgslsmith_div_u32(var_0.a.x, 4294967295u), firstTrailingBit(arg_0.x))), global0[_wgslsmith_index_u32(~63692u, 21u)]);
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> f32 {
    let var_0 = ~select(vec4<u32>(~_wgslsmith_mod_u32(11070u, u_input.d), 116207u, arg_1.a.x, ~36763u ^ u_input.e.x), min(~global0[_wgslsmith_index_u32(arg_1.a.x, 21u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e.x, arg_1.a.x, 14589u), 21u)]) << (_wgslsmith_div_vec4_u32(func_3(arg_1.a), vec4<u32>(57182u, 1u, arg_1.a.x, 27833u)) % vec4<u32>(32u)), !select(!vec4<bool>(false, false, global3.x, true), vec4<bool>(global3.x, false, false, global3.x), global3.x));
    global3 = select(vec3<bool>(true, false, all(vec2<bool>(global3.x, global3.x))), select(select(!vec3<bool>(global3.x, true, global3.x), select(select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(false, false, false), true), select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(false, global3.x, global3.x), global3.x), vec3<bool>(global3.x, false, global3.x)), !vec3<bool>(global3.x, false, global3.x)), select(vec3<bool>(all(vec2<bool>(global3.x, false)), false, false), !vec3<bool>(global3.x, true, false), global3.x), vec3<bool>(true, true, any(!vec3<bool>(true, true, global3.x)))), global3.x);
    global2 = max(arg_1.b.x, _wgslsmith_add_i32(arg_1.b.x, 24227i));
    let var_1 = Struct_3(~reverseBits(var_0.xww & vec3<u32>(1u, arg_1.a.x, 4294967295u)), -reverseBits(countOneBits(vec4<i32>(-2147483647i, arg_0, 12225i, arg_1.b.x))));
    global3 = !(!select(select(vec3<bool>(false, global3.x, global3.x), select(vec3<bool>(false, global3.x, false), vec3<bool>(false, global3.x, false), false), global3.x), vec3<bool>(global3.x, false, select(global3.x, true, false)), !select(vec3<bool>(global3.x, false, false), vec3<bool>(global3.x, false, true), global3.x)));
    return -978f;
}

fn func_1() -> Struct_2 {
    var var_0 = vec4<f32>(-850f, -516f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1267f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-694f, 1027f) * _wgslsmith_f_op_f32(func_2(-1i, Struct_3(u_input.e, vec4<i32>(1i, 1i, -1i, -2147483647i))))))))), 1f);
    let var_1 = Struct_1(var_0.x, global0[_wgslsmith_index_u32(u_input.c, 21u)], 624f);
    var var_2 = any(select(!(!vec3<bool>(false, global3.x, global3.x)), vec3<bool>(true, global3.x, global3.x & global3.x), global3.x)) & true;
    let var_3 = u_input.d;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(969f, _wgslsmith_f_op_f32(f32(-1f) * -475f))), _wgslsmith_f_op_f32(-var_1.a))), var_1.a, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(_wgslsmith_sub_i32(1i, 9012i >> (1u % 32u)), Struct_3(var_1.b.zwz, ~vec4<i32>(-33111i, -9341i, -6199i, 2147483647i)))), var_1.a, !(!global3.x))));
    return Struct_2(var_1, global1[_wgslsmith_index_u32(abs(0u), 8u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-833f))), _wgslsmith_div_vec4_u32(global0[_wgslsmith_index_u32(1u >> ((var_3 | 0u) % 32u), 21u)], global0[_wgslsmith_index_u32(firstTrailingBit(17302u) >> (abs(u_input.c) % 32u), 21u)]), -495f), select(~u_input.e >> (_wgslsmith_div_vec3_u32(~vec3<u32>(var_3, 0u, u_input.a), ~u_input.e) % vec3<u32>(32u)), abs(max(vec3<u32>(55116u, 1u, 1u) | var_1.b.xxx, ~var_1.b.xzy)), any(vec4<bool>(false && global3.x, select(global3.x, false, global3.x), all(vec2<bool>(false, false)), global3.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-1944f * var_0.x))), ~_wgslsmith_clamp_vec4_u32(func_3(u_input.e), func_3(var_1.b.yzx), ~global0[_wgslsmith_index_u32(76000u, 21u)]), var_0.x));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> Struct_3 {
    global0 = array<vec4<u32>, 21>();
    global0 = array<vec4<u32>, 21>();
    let var_0 = Struct_3(func_1().e.b.wxy, _wgslsmith_add_vec4_i32(~_wgslsmith_clamp_vec4_i32(min(vec4<i32>(1i, 6561i, 11101i, -1i), vec4<i32>(2147483647i, 14701i, -30843i, -35302i)), vec4<i32>(-1i, 7489i, -34080i, -2147483647i), vec4<i32>(1i, 0i, -1i, 1i)), ((vec4<i32>(2147483647i, 0i, 2147483647i, 33269i) << (vec4<u32>(4294967295u, 0u, 4294967295u, arg_1.c.b.x) % vec4<u32>(32u))) & vec4<i32>(1i, 1i, 1i, 1i)) | -firstLeadingBit(vec4<i32>(-19986i, 1i, 37781i, -2147483647i))));
    global1 = array<vec4<f32>, 8>();
    global2 = var_0.b.x;
    return var_0;
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    var var_0 = !(!(!(!(!global3.x))));
    let var_1 = arg_0.a.x;
    var var_2 = vec4<bool>(true, global3.x, true, any(!vec3<bool>(true, any(vec3<bool>(global3.x, false, global3.x)), true)));
    let var_3 = func_1().c;
    global3 = vec3<bool>(func_1().a.b.x <= u_input.e.x, global3.x, true);
    return Struct_1(var_3.a, _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(var_3.b, var_3.b), vec4<u32>(arg_0.a.x, firstTrailingBit(15697u), ~(~36077u), u_input.a), global0[_wgslsmith_index_u32(~var_1, 21u)]), var_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.x;
    var_0 = all(select(vec4<bool>(true, global3.x, all(!vec4<bool>(true, true, false, global3.x)), !global3.x), vec4<bool>(true, true, true, (u_input.d >= 0u) | false), true));
    let var_1 = func_5(func_4(vec2<bool>(false, !all(vec4<bool>(true, true, true, false))), func_1(), func_1().c, u_input.d));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.c, func_1().c.c)), vec3<f32>(-438f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.c)), _wgslsmith_f_op_f32(round(186f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + _wgslsmith_div_f32(270f, var_1.c))))));
    let var_3 = vec4<i32>(-11364i, ~abs(reverseBits(_wgslsmith_div_i32(11790i, 1i))), ~_wgslsmith_dot_vec4_i32(min(vec4<i32>(-11616i, 37099i, 1i, 24599i), select(vec4<i32>(28161i, 19514i, -2147483647i, -22773i), vec4<i32>(-22521i, 0i, 0i, 37427i), false)), vec4<i32>(i32(-1i) * -2147483647i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -84484i), vec2<i32>(0i, -14846i)), -30467i)), -(~firstTrailingBit(11801i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -423f), _wgslsmith_f_op_f32(1531f - var_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(170f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1559f), _wgslsmith_f_op_f32(round(-278f))))), -776f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(func_1().e.c)) + var_2.x), _wgslsmith_f_op_f32(727f + var_2.x), ~0u);
}

