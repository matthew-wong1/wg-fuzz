struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: Struct_5 = Struct_5(vec4<bool>(false, true, false, true));

var<private> global2: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = select(vec3<bool>(true, !global1.a.x, (1u != firstTrailingBit(45028u)) & (true || any(vec4<bool>(false, false, global1.a.x, true)))), arg_1.yxz, arg_1.wyz);
    return u_input.a;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(countOneBits(vec2<i32>(firstLeadingBit(select(1i, 34790i, global1.a.x)), -(~34143i))), vec2<u32>(37944u, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), global1.a, _wgslsmith_f_op_f32(trunc(-348f)), _wgslsmith_f_op_f32(-497f + _wgslsmith_f_op_f32(-1271f + -1452f)))), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), countOneBits(u_input.a), 87407u, max(u_input.a, u_input.a)), countOneBits(vec4<u32>(u_input.a, u_input.a, 8684u, u_input.a))), _wgslsmith_mod_vec4_u32(min(firstTrailingBit(vec4<u32>(0u, 79495u, u_input.a, 4294967295u)), vec4<u32>(1u, u_input.a, u_input.a, u_input.a) ^ vec4<u32>(5401u, 18340u, u_input.a, u_input.a)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(22611u, 33272u, 27591u, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))));
    let var_1 = vec2<i32>(-24786i, -2147483647i);
    let var_2 = vec3<i32>(-2147483647i, var_1.x, _wgslsmith_dot_vec2_i32(abs(var_0.a), var_1 ^ vec2<i32>(23316i, _wgslsmith_clamp_i32(0i, var_1.x, -19121i))));
    var var_3 = global1.a.wz;
    let var_4 = Struct_3(vec2<i32>(_wgslsmith_add_i32(~countOneBits(var_0.a.x), 0i), _wgslsmith_clamp_i32(2147483647i, -2147483647i, var_2.x | firstTrailingBit(1i))), _wgslsmith_sub_vec2_u32(~select(var_0.b, vec2<u32>(u_input.a, u_input.a), var_3.x), _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, var_0.b.x), vec2<u32>(u_input.a, var_0.b.x), var_0.b)) << (_wgslsmith_mult_vec2_u32(var_0.b, var_0.c.yw) % vec2<u32>(32u)), vec4<u32>(firstTrailingBit(firstLeadingBit(var_0.c.x) | ~u_input.a), firstLeadingBit(179207u), ~(~(~u_input.a)), 0u));
    return Struct_2((firstTrailingBit(var_0.a.x) <= 47741i) || var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(354f, _wgslsmith_f_op_f32(f32(-1f) * -1039f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1185f), _wgslsmith_f_op_f32(-249f + 1000f))))), Struct_1(vec4<bool>(any(vec2<bool>(var_3.x, global1.a.x)), true, true, true == global1.a.x), vec4<i32>(var_4.a.x, -1i, -firstLeadingBit(-2147483647i), _wgslsmith_div_i32(1i, var_2.x)), select(global1.a.xwz, !(!vec3<bool>(false, true, global1.a.x)), global1.a.x), var_1.x ^ abs(9938i)), min(-_wgslsmith_sub_vec4_i32(vec4<i32>(-11722i, var_1.x, 1i, var_2.x), vec4<i32>(var_2.x, 2147483647i, -84398i, var_2.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, var_4.a.x, 0i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, var_1.x, var_0.a.x, var_0.a.x), vec4<i32>(var_2.x, var_2.x, 1i, -79905i)))) & _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.x, 28076i ^ var_2.x, var_0.a.x, _wgslsmith_sub_i32(-3320i, -2328i)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-62164i, 1i, 0i, -35560i), vec4<i32>(2147483647i, var_2.x, var_1.x, 0i))), false);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: i32) -> Struct_5 {
    let var_0 = arg_0.c.a.x;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(526f + arg_0.b)) - _wgslsmith_f_op_f32(786f + _wgslsmith_div_f32(arg_0.b, arg_0.b))), arg_0.b));
    var var_1 = -(~func_2().d) | abs(vec4<i32>(-2147483647i, arg_0.c.d, arg_2, _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_2, 44855i), firstLeadingBit(71751i))));
    var_1 = arg_0.c.b;
    var var_2 = arg_1.yxw;
    return Struct_5(select(vec4<bool>(all(func_2().c.a), false, _wgslsmith_f_op_f32(ceil(257f)) < _wgslsmith_f_op_f32(-arg_0.b), arg_1.x < _wgslsmith_clamp_u32(var_2.x, 61010u, 4294967295u)), select(select(vec4<bool>(global1.a.x, arg_0.c.a.x, false, global1.a.x), func_2().c.a, vec4<bool>(true, arg_0.e, false, var_0)), vec4<bool>(true, false, any(global1.a.ywz), false), select(select(global1.a, vec4<bool>(global1.a.x, global1.a.x, true, var_0), arg_0.c.a), select(arg_0.c.a, arg_0.c.a, global1.a.x), global1.a)), (_wgslsmith_add_i32(arg_0.c.b.x, var_1.x) | _wgslsmith_sub_i32(2147483647i, var_1.x)) < func_2().c.b.x));
}

fn func_1() -> Struct_3 {
    let var_0 = ~firstTrailingBit(vec2<u32>(u_input.a, u_input.a));
    global1 = func_4(func_2(), reverseBits(vec4<u32>(4294967295u, var_0.x, 1u << (1u % 32u), _wgslsmith_mod_u32(1u, ~var_0.x))), _wgslsmith_div_i32(30777i, 1i));
    global0 = _wgslsmith_dot_vec2_i32(abs(firstTrailingBit(vec2<i32>(1i, i32(-1i) * -36470i))), vec2<i32>(-41777i, 2147483647i) ^ min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-8217i, -1i), countOneBits(vec2<i32>(-46309i, 2147483647i)), vec2<i32>(1i, 1i)), _wgslsmith_div_vec2_i32(select(vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, -2147483647i), global1.a.x), -vec2<i32>(0i, -1i))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1453f)));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -148f) - _wgslsmith_f_op_f32(max(534f, _wgslsmith_f_op_f32(275f + -138f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1543f * 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -374f))))) - 956f);
    return Struct_3(vec2<i32>(0i >> ((1u >> ((u_input.a >> (var_0.x % 32u)) % 32u)) % 32u), 3770i), abs(~var_0), firstLeadingBit(vec4<u32>(u_input.a >> (~4294967295u % 32u), 0u, u_input.a, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(false, true, true), _wgslsmith_f_op_f32(-878f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-449f, -256f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-528f, 329f)), _wgslsmith_f_op_f32(select(-319f, -777f, false))))))), Struct_1(global1.a, vec4<i32>(1i, 1i, 1i, 1i) << (_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.a, 29247u, 4294967295u, 15321u), vec4<u32>(1u, u_input.a, u_input.a, 1u), global1.a), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) | vec4<u32>(61327u, 1968u, 43269u, 0u)) % vec4<u32>(32u)), vec3<bool>(!any(global1.a), select(global1.a.x, global1.a.x, true), true), i32(-1i) * -29436i), firstLeadingBit(vec4<i32>(13269i, -(i32(-1i) * -39649i), 1i, abs(-1i))), select(false, global1.a.x, all(select(global1.a.wyy, global1.a.yxy, global1.a.xzz))));
    var var_1 = func_1();
    let var_2 = var_0.b;
    var_1 = Struct_3(var_1.a, var_1.c.wy, ~var_1.c);
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(reverseBits(~var_0.d.yxy), vec3<i32>(var_0.d.x, 3158i ^ var_1.a.x, _wgslsmith_dot_vec3_i32(var_0.d.yxy, vec3<i32>(var_0.d.x, -1i, var_0.d.x)))) >> (~func_1().c.xyy % vec3<u32>(32u)), -2088f);
}

