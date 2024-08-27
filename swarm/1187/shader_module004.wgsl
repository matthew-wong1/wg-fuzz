struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = u_input.b.x;
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(663f)), _wgslsmith_f_op_f32(-1f)), abs(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(37128u, var_0, u_input.d.x)), vec3<u32>(var_0, 4294967295u << (var_0 % 32u), var_0))), abs(vec4<i32>(2704i, ~_wgslsmith_add_i32(-39568i, u_input.c), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, -68520i, u_input.c), vec4<i32>(31301i, 15110i, u_input.c, -5463i)), _wgslsmith_sub_i32(4240i, 0i))), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(var_0, 25137u), abs(u_input.d))));
    let var_2 = _wgslsmith_div_vec4_u32(max(u_input.b >> (vec4<u32>(0u, _wgslsmith_sub_u32(u_input.b.x, 4294967295u), firstLeadingBit(3093u), _wgslsmith_dot_vec3_u32(var_1.b, var_1.b)) % vec4<u32>(32u)), u_input.b), u_input.b);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(var_1.a - _wgslsmith_f_op_vec2_f32(ceil(var_1.a))), vec3<u32>(64983u, 1u, 101466u), vec4<i32>(_wgslsmith_div_i32(0i, firstLeadingBit(var_1.c.x)), -_wgslsmith_mod_i32(firstLeadingBit(3826i), max(1412i, var_1.c.x)), ~(-16268i), -(-9138i ^ _wgslsmith_div_i32(u_input.c, 3370i))), vec2<u32>(select(0u << (var_2.x % 32u), firstLeadingBit(var_1.d.x), true), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(39257u, 93640u, 0u, 73743u)), _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(u_input.a.x, 4294967295u, var_0, var_1.d.x)))) & ~vec2<u32>(firstLeadingBit(4294967295u), var_0 | 0u));
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.x, var_1.a.x) + var_1.a))), select(~var_1.b, vec3<u32>(var_2.x, ~1u ^ var_1.d.x, ~(~4294967295u)), any(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x))), vec4<i32>(_wgslsmith_add_i32(var_1.c.x >> (26200u % 32u), var_3.c.x >> (var_1.b.x % 32u)), _wgslsmith_dot_vec2_i32(var_1.c.yw, var_1.c.yy) ^ select(0i, -18166i, arg_0.x), 0i, var_3.c.x) | _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 0i, -1i, _wgslsmith_mod_i32(u_input.c, u_input.c)), countOneBits(_wgslsmith_mod_vec4_i32(var_3.c, vec4<i32>(0i, var_3.c.x, -13083i, -1i)))), _wgslsmith_mult_vec2_u32(vec2<u32>(firstLeadingBit(1558u), ~(~u_input.a.x)), vec2<u32>(~(~81549u), 12319u)));
    return ~(~_wgslsmith_mult_u32(min(_wgslsmith_div_u32(4386u, 23063u), ~var_4.d.x), var_2.x));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = ~79222u;
    return arg_3.a;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.a.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, arg_0.a.x) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.a.x, arg_0.a.x), arg_0.a))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a), vec2<f32>(arg_0.a.x, -123f)))) * _wgslsmith_f_op_vec2_f32(func_4(~(~arg_0.c.x | u_input.c), countOneBits(func_3(vec4<bool>(true, true, true, true))), arg_0.d.x, arg_0)));
    let var_2 = _wgslsmith_f_op_f32(-arg_0.a.x);
    var var_3 = Struct_1(arg_0.a, firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(1u, ~arg_0.d.x), _wgslsmith_add_u32(u_input.a.x, ~u_input.d.x), abs(u_input.b.x))), -_wgslsmith_add_vec4_i32(~(~arg_0.c), _wgslsmith_div_vec4_i32(vec4<i32>(1i, -11327i, -50436i, 0i), vec4<i32>(22264i, 0i, u_input.c, u_input.c))), arg_0.b.xz);
    var_0 = _wgslsmith_f_op_f32(floor(-1378f));
    return arg_0;
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(971f, 250f, arg_3.a.x, arg_2.a.x))))))));
    let var_1 = -20124i;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_2.a.x + 285f), -1266f))), abs((abs(vec3<u32>(u_input.a.x, arg_3.b.x, 1u)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.b.x, arg_0.x, u_input.a.x), arg_3.b) % vec3<u32>(32u))) ^ ~(~vec3<u32>(arg_0.x, 1u, 35819u))), min(func_2(arg_2, ~u_input.d.x | _wgslsmith_mod_u32(arg_2.b.x, arg_2.b.x)).c, arg_3.c), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(1u, ~1u), 14790u << (1u % 32u)), vec2<u32>(4294967295u, 72401u), vec2<u32>(u_input.a.x, u_input.a.x)));
    let var_3 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(~0u ^ _wgslsmith_dot_vec2_u32(arg_3.b.xx, arg_3.b.xz), u_input.b.x), _wgslsmith_dot_vec2_u32(~var_2.b.xy, vec2<u32>(u_input.a.x, var_2.d.x)) & 12463u, 0u), 93706u, _wgslsmith_dot_vec2_u32(vec2<u32>(~(~arg_2.b.x), arg_0.x), var_2.d), _wgslsmith_dot_vec3_u32(firstTrailingBit(~(u_input.b.xzz ^ arg_2.b)), vec3<u32>(1u, min(1u, u_input.a.x), 102696u)));
    var var_4 = _wgslsmith_f_op_vec4_f32(round(var_0));
    return _wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-arg_2.c, arg_2.c >> (u_input.b % vec4<u32>(32u))), -_wgslsmith_mod_vec4_i32(vec4<i32>(-21172i, -2147483647i, -36884i, u_input.c), vec4<i32>(-5056i, u_input.c, arg_3.c.x, 4916i))), vec4<i32>(arg_3.c.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(arg_2.c.yw, vec2<i32>(var_2.c.x, arg_3.c.x)), i32(-1i) * -1i) & max(_wgslsmith_sub_i32(-11549i, arg_3.c.x), -2147483647i), -var_1, 0i));
}

fn func_6(arg_0: i32) -> Struct_1 {
    var var_0 = vec4<i32>(-41930i, arg_0, arg_0, max(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(arg_0, arg_0, arg_0, 0i), vec4<i32>(-18396i, -17280i, 0i, arg_0), false), abs(vec4<i32>(u_input.c, arg_0, 2147483647i, u_input.c)), select(vec4<i32>(u_input.c, arg_0, arg_0, arg_0), vec4<i32>(-2147483647i, 14420i, u_input.c, u_input.c), false)), ~abs(vec4<i32>(-2147483647i, -3796i, 27193i, -12364i))), 2147483647i));
    var var_1 = any(!vec2<bool>(any(vec2<bool>(true, false)), any(vec2<bool>(true, true)))) & true;
    var_1 = !(!(false | any(vec3<bool>(true, false, true))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(1205f)), _wgslsmith_f_op_f32(step(-165f, 1323f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(457f, -1000f) - vec2<f32>(-1053f, -957f)))))), _wgslsmith_sub_vec3_u32(u_input.b.zwz & ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 827u, 4294967295u), vec3<u32>(29814u, 0u, 4294967295u)), vec3<u32>(u_input.d.x, max(abs(u_input.a.x), reverseBits(10255u)), func_3(vec4<bool>(true, true, true, true)))), vec4<i32>(1i, -firstTrailingBit(8379i) | var_0.x, firstTrailingBit(firstTrailingBit(24538i)), _wgslsmith_mult_i32(~select(arg_0, -1i, true), var_0.x)), ~select(countOneBits(vec2<u32>(u_input.d.x, 1u)), u_input.d, true));
    let var_3 = var_2.c;
    return Struct_1(var_2.a, select(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.d.x, u_input.b.x, var_2.d.x), u_input.b.yyz, vec3<u32>(56759u, var_2.d.x, 4294967295u))), countOneBits(vec3<u32>(0u, 4294967295u, var_2.d.x)), vec3<bool>((arg_0 >> (var_2.d.x % 32u)) != -7603i, any(vec3<bool>(false, false, false)) && false, true)), vec4<i32>(arg_0 >> (((var_2.d.x ^ 38957u) ^ var_2.d.x) % 32u), -arg_0, _wgslsmith_mod_i32(firstTrailingBit(arg_0), var_2.c.x) & -(~u_input.c), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.xwy, var_3.xyy), var_2.c.xyw)), u_input.b.xw);
}

fn func_7(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(-1i, arg_2.d.x, 0u, Struct_1(vec2<f32>(arg_2.a.x, -490f), vec3<u32>(arg_0.x, 4294967295u, u_input.b.x), arg_1, vec2<u32>(19048u, 87693u))))), arg_2.a))), select(~(~(u_input.b.xyx | u_input.b.xwx)), u_input.b.xyz, false || all(vec4<bool>(true, true, true, false))), arg_1, arg_0.zy);
    var_0 = arg_2;
    var var_1 = select(!(firstLeadingBit(23923i) > u_input.c), !(min(1i, -2147483647i) <= countOneBits(var_0.c.x)), true);
    var_1 = !(_wgslsmith_f_op_vec2_f32(func_4(select(var_0.c.x, 6371i, all(vec4<bool>(false, false, true, true))), arg_2.d.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, u_input.b), u_input.b), arg_2)).x < _wgslsmith_div_f32(-213f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1111f) + _wgslsmith_f_op_f32(-110f * var_0.a.x))));
    var_0 = arg_2;
    return var_0.a;
}

fn func_1() -> f32 {
    let var_0 = vec3<bool>(true, false, false);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(func_7(~_wgslsmith_sub_vec3_u32(firstLeadingBit(u_input.b.zxz), ~u_input.b.wxy), vec4<i32>(_wgslsmith_sub_i32(-19311i, _wgslsmith_add_i32(u_input.c, u_input.c)), ~(~u_input.c), -reverseBits(u_input.c), i32(-1i) * -2147483647i), func_6(func_5(~vec2<u32>(0u, u_input.a.x), var_0.x, func_2(Struct_1(vec2<f32>(1000f, -535f), vec3<u32>(u_input.a.x, 50710u, u_input.a.x), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), u_input.d), u_input.d.x), Struct_1(vec2<f32>(858f, 833f), vec3<u32>(56778u, 83630u, u_input.a.x), vec4<i32>(-1i, u_input.c, -2147483647i, u_input.c), vec2<u32>(83392u, 0u)))))), ~(~u_input.b.zwz), vec4<i32>(u_input.c, firstLeadingBit(u_input.c), u_input.c, _wgslsmith_add_i32(u_input.c, 0i)), ~(~u_input.d));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-func_2(Struct_1(var_1.a, u_input.b.wwx, vec4<i32>(u_input.c, -6626i, u_input.c, u_input.c), var_1.d), var_1.b.x).a))))), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(1u, ~var_1.d.x, var_1.b.x)), ~_wgslsmith_add_vec3_u32(u_input.b.wxy, vec3<u32>(u_input.a.x, u_input.a.x, u_input.d.x)), ~abs(vec3<u32>(u_input.a.x, u_input.d.x, var_1.b.x))), abs(-var_1.c), ~func_6(-(~u_input.c)).b.yy);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.x, -328f, var_1.a.x), vec3<f32>(548f, 1822f, 773f), var_0))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-536f, -2080f, var_1.a.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.x, var_1.a.x, -1204f), vec3<f32>(-350f, -1013f, 1134f))))), select(vec3<bool>(false, var_0.x, var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, true)), !vec3<bool>(var_0.x, false, var_0.x))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(131f, 1000f, -1184f), vec3<f32>(var_1.a.x, -121f, var_1.a.x)) - vec3<f32>(1053f, 1187f, -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2293f, -487f, var_1.a.x))))) * vec3<f32>(_wgslsmith_f_op_f32(min(747f, var_1.a.x)), -674f, func_6(u_input.c).a.x)))));
    let var_3 = func_2(func_2(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(682f, 292f)), var_1.b, firstTrailingBit(vec4<i32>(1i, u_input.c, var_1.c.x, 9932i)), vec2<u32>(var_1.d.x, 4294967295u)), var_1.d.x), ~_wgslsmith_mod_u32(26555u, var_1.d.x)), 1u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-889f, 817f) - 1457f), 237f, -1204f, -1852f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-460f, 481f, -1000f, -340f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1465f, 1792f, 1948f, 232f) - vec4<f32>(-955f, -468f, 108f, 1289f))))), vec4<bool>(true, true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(-319f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(236f + -2173f) - -523f)), -1047f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1707f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 455f))))), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), u_input.a.x >= 0u))));
    var var_1 = var_0.x;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(299f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 1461f, var_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_vec2_f32(func_7(vec3<u32>(u_input.d.x, 28020u, 68276u), vec4<i32>(37648i, u_input.c, u_input.c, u_input.c), func_2(Struct_1(vec2<f32>(-513f, var_0.x), vec3<u32>(u_input.a.x, 4294967295u, 24468u), vec4<i32>(-20584i, u_input.c, 10804i, u_input.c), u_input.b.zw), 4294967295u))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -606f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-615f, var_0.x, 126f, var_0.x) - vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) * vec4<f32>(var_0.x, 2004f, -1178f, 606f)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1365f, var_0.x, var_0.x)))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(sign(-397f)))) - _wgslsmith_f_op_vec2_f32(func_4(2147483647i, _wgslsmith_div_u32(21771u, 1u) | firstTrailingBit(1u), ~23885u, func_6(_wgslsmith_mult_i32(u_input.c, -1456i)))).x));
    var var_2 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec2<u32>(10649u, 64400u), u_input.b.ww, vec2<bool>(var_0.x <= -1000f, true)), vec3<i32>(firstTrailingBit(u_input.c | _wgslsmith_div_i32(2147483647i, 1i)), -1i, u_input.c >> (_wgslsmith_sub_u32(func_3(vec4<bool>(true, true, false, false)), _wgslsmith_mult_u32(u_input.d.x, 4294967295u)) % 32u)));
}

