struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec3<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global0.e.a.b)), _wgslsmith_f_op_f32(ceil(-612f)))), _wgslsmith_f_op_f32(ceil(1313f))), _wgslsmith_f_op_f32(-global0.e.a.b), 1257f)));
    global0 = Struct_4(global0.a, global0.b, u_input.b.wxz << (_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 15582u, 527u), u_input.b.yzz), u_input.d) % vec3<u32>(32u)), Struct_2(global0.d.a), global0.d);
    global0 = Struct_4(Struct_3(Struct_1(~vec4<i32>(global0.a.a.a.x, u_input.e.x, global0.d.a.a.x, global0.d.a.a.x), var_0.x, vec4<u32>(~u_input.c, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, global0.c.x), vec3<u32>(1u, global0.c.x, u_input.d.x)), ~u_input.c)), Struct_1(global0.d.a.a, var_0.x, countOneBits(u_input.b)), global0.e), select(vec4<bool>(any(!vec2<bool>(true, global0.b.x)), all(!global0.b.wwz), true, true), global0.b, !global0.b), select(vec3<u32>(min(min(22280u, u_input.a), 7783u), ~97172u, _wgslsmith_mult_u32(~4294967295u, _wgslsmith_mod_u32(45007u, global0.c.x))), ~firstTrailingBit(vec3<u32>(6192u, 1679u, global0.a.b.c.x) & u_input.d), select(global0.b.xzx, !select(global0.b.ywx, global0.b.zyz, vec3<bool>(global0.b.x, global0.b.x, true)), true)), global0.a.c, global0.e);
    global0 = Struct_4(global0.a, global0.b, ~select(vec3<u32>(global0.e.a.c.x, global0.d.a.c.x, 1u) << (vec3<u32>(u_input.b.x, 0u, 138290u) % vec3<u32>(32u)), ~global0.a.b.c.wzz, true) ^ abs(min(firstLeadingBit(vec3<u32>(8432u, u_input.d.x, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, global0.c.x, 1u), vec3<u32>(4294967295u, 1u, 3855u)))), Struct_2(Struct_1(vec4<i32>(u_input.e.x, -u_input.e.x, -2147483647i, _wgslsmith_clamp_i32(12748i, -2147483647i, u_input.e.x)), 137f, ~(~global0.d.a.c))), global0.a.c);
    var var_1 = -1055f;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(global0.d.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(var_0.x + var_0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.a.b) - var_0.x))) + vec2<f32>(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(116f, -2344f)) * global0.d.a.b), !(u_input.e.x != 9225i))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.e.a.b * _wgslsmith_f_op_f32(f32(-1f) * -1325f))))));
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.b, global0.a.c.a.b), vec2<f32>(global0.e.a.b, global0.d.a.b)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1542f, arg_0.a.b)), -1616f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 188f))))) * vec2<f32>(global0.d.a.b, -130f));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1065f, var_0.x)))));
    var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, -414f), vec2<f32>(1491f, 2819f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -809f) + vec2<f32>(var_1.x, var_1.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-713f, -961f), vec2<f32>(1143f, arg_0.a.b))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, -1969f))), !vec2<bool>(global0.b.x, true))), ~(-32642i) != _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, -33945i, 2147483647i), vec3<i32>(-8032i, -1i, 16992i)))))), _wgslsmith_f_op_vec2_f32(func_3())));
    var var_2 = _wgslsmith_f_op_f32(-arg_0.a.b);
    return !global0.b;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_4) -> Struct_1 {
    let var_0 = select(!global0.b.yy, arg_3.b.wx, true);
    let var_1 = max(min(_wgslsmith_clamp_i32(-1i, u_input.e.x | select(arg_1.a.x, -1i, true), -global0.d.a.a.x), global0.d.a.a.x), arg_1.a.x);
    let var_2 = _wgslsmith_div_vec3_u32(global0.c, vec3<u32>(max(reverseBits(_wgslsmith_div_u32(arg_2, 1u)), ~abs(arg_2)), _wgslsmith_sub_u32(~arg_0, reverseBits(arg_0)), max(arg_0 >> (global0.c.x % 32u), reverseBits(arg_1.c.x)) << (1u % 32u)));
    let var_3 = Struct_3(arg_1, Struct_1(vec4<i32>(u_input.e.x, -arg_1.a.x ^ arg_1.a.x, ~var_1 >> ((0u | arg_0) % 32u), -_wgslsmith_mod_i32(arg_3.a.b.a.x, 11572i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, arg_1.c.x, u_input.a), ~u_input.b) ^ vec4<u32>(4294967295u, reverseBits(arg_0), _wgslsmith_dot_vec4_u32(global0.d.a.c, vec4<u32>(1u, u_input.d.x, var_2.x, 17335u)), ~arg_2)), global0.a.c);
    let var_4 = min(_wgslsmith_mult_i32(-12395i & var_1, abs(select(u_input.e.x, 6176i, !arg_3.b.x))), global0.d.a.a.x);
    return arg_3.d.a;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>) -> Struct_4 {
    let var_0 = firstLeadingBit((global0.e.a.a.x << (~min(global0.e.a.c.x, 4294967295u) % 32u)) << ((~_wgslsmith_mult_u32(0u, global0.a.b.c.x) | ~(~u_input.d.x)) % 32u));
    var var_1 = Struct_2(global0.e.a);
    let var_2 = func_4(34570u, Struct_1(select(global0.a.c.a.a, vec4<i32>(_wgslsmith_sub_i32(35471i, 586i), -arg_1.x, ~0i, global0.d.a.a.x), func_2(global0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.b + global0.d.a.b) + _wgslsmith_f_op_f32(-global0.d.a.b))), global0.d.a.c >> (global0.e.a.c % vec4<u32>(32u))), 1u, Struct_4(global0.a, global0.b, reverseBits(select(u_input.d ^ vec3<u32>(u_input.a, u_input.b.x, global0.d.a.c.x), min(vec3<u32>(var_1.a.c.x, 1u, u_input.a), global0.d.a.c.yzz), true)), global0.a.c, Struct_2(Struct_1(-global0.d.a.a, _wgslsmith_f_op_f32(floor(global0.e.a.b)), select(vec4<u32>(4294967295u, 52150u, 7135u, 74564u), u_input.b, vec4<bool>(global0.b.x, true, false, global0.b.x))))));
    var_1 = global0.d;
    var var_3 = 1u;
    return Struct_4(Struct_3(Struct_1(_wgslsmith_div_vec4_i32(global0.e.a.a, vec4<i32>(33361i, var_0, -4084i, 0i) ^ var_1.a.a), 160f, select(_wgslsmith_clamp_vec4_u32(u_input.b, var_1.a.c, vec4<u32>(global0.c.x, 0u, var_2.c.x, 4294967295u)), ~global0.d.a.c, false)), Struct_1(-var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), vec4<u32>(_wgslsmith_mult_u32(1u, 7244u), _wgslsmith_sub_u32(global0.d.a.c.x, u_input.a), 4294967295u, _wgslsmith_mult_u32(global0.d.a.c.x, 19467u))), global0.d), !global0.b, var_1.a.c.yww, global0.a.c, global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(-global0.a.c.a.a.yz, -(~select(-global0.a.c.a.a, global0.a.a.a, true)));
    let var_0 = _wgslsmith_f_op_f32(global0.a.a.b - 175f);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.a.b) * global0.e.a.b);
    var var_2 = u_input.b;
    global0 = Struct_4(Struct_3(Struct_1(-(~vec4<i32>(0i, global0.a.a.a.x, 7772i, 10223i)), _wgslsmith_f_op_f32(-global0.d.a.b), ~func_4(55004u, Struct_1(vec4<i32>(-2147483647i, 8223i, 1i, 0i), -1112f, vec4<u32>(21351u, global0.e.a.c.x, 1u, 43694u)), 30679u, Struct_4(Struct_3(global0.d.a, global0.e.a, global0.e), global0.b, var_2.zyw, global0.e, Struct_2(global0.a.b))).c), global0.d.a, global0.d), global0.b, vec3<u32>(~_wgslsmith_add_u32(firstLeadingBit(u_input.c), 1u), countOneBits(~(~global0.c.x)), global0.a.a.c.x), global0.d, func_1(vec2<i32>(global0.e.a.a.x, countOneBits(global0.a.c.a.a.x ^ 2147483647i)), func_1(-select(u_input.e, u_input.e, false), -vec4<i32>(-1i, u_input.e.x, -28547i, u_input.e.x)).d.a.a).e);
    var var_3 = global0.d;
    let var_4 = ~var_3.a.a;
    let var_5 = func_4(53453u, Struct_1(-(~vec4<i32>(var_3.a.a.x, var_4.x, 44957i, 2147483647i)), var_0, var_3.a.c), firstLeadingBit(countOneBits(global0.a.c.a.c.x)), func_1(vec2<i32>(var_4.x, -select(var_3.a.a.x, 1i, global0.b.x)), reverseBits(global0.e.a.a)));
    global0 = Struct_4(global0.a, !func_2(Struct_2(var_3.a)), var_3.a.c.wwz, Struct_2(Struct_1(max(~vec4<i32>(var_3.a.a.x, global0.a.a.a.x, 7861i, 12913i), firstTrailingBit(global0.e.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2049f * 556f) + _wgslsmith_div_f32(var_5.b, global0.e.a.b)), global0.e.a.c)), global0.a.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2049f, _wgslsmith_f_op_f32(-var_0))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-422f, var_5.b)) - _wgslsmith_f_op_f32(-global0.a.a.b)))), vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_mult_i32(-15054i, 1i), 4298i), _wgslsmith_mult_i32(7713i, _wgslsmith_div_i32(global0.d.a.a.x, ~global0.a.b.a.x)));
}

