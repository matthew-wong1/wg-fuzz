struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: i32,
    d: Struct_3,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -277f);
    var var_1 = Struct_1(5447u, 78242u);
    var_0 = 1408f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1804f + _wgslsmith_f_op_f32(f32(-1f) * -1027f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2544f)))))));
    var var_2 = vec2<i32>(u_input.d, u_input.d);
    return abs(-(~min(firstLeadingBit(vec4<i32>(var_2.x, var_2.x, u_input.d, -15795i)), vec4<i32>(1i, u_input.b, 17533i, -1i) << (vec4<u32>(var_1.b, 4294967295u, 4294967295u, 1u) % vec4<u32>(32u)))));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    let var_0 = vec3<bool>(false, false, true);
    let var_1 = ~(~(~(~73045u)) & u_input.a);
    var var_2 = 49403i & ~firstTrailingBit(abs(u_input.d) | (u_input.b << (u_input.a % 32u)));
    var_2 = -42662i;
    var var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(-4715i, 1i), ~u_input.b), countOneBits(firstTrailingBit(u_input.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(~2147483647i, i32(-1i) * -5717i, u_input.d, -15338i), func_3())), _wgslsmith_mod_vec3_i32(-select(vec3<i32>(24915i, u_input.d, -15360i), ~vec3<i32>(31258i, u_input.b, 15676i), true | var_0.x), -vec3<i32>(firstTrailingBit(-1i), _wgslsmith_mult_i32(-1i, u_input.d), u_input.b)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1042f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2400f, -394f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -870f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, -1000f)), 1f), _wgslsmith_f_op_f32(ceil(-502f)), select(var_0.x, var_0.x, any(vec2<bool>(true, var_0.x))))))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_4(select(vec2<bool>(select(any(vec3<bool>(true, false, false)), true, u_input.b != 1i), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_sub_i32(-(9261i & (u_input.d << (30409u % 32u))), 2147483647i), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, u_input.a))))), !select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, false)), Struct_1(reverseBits(4294967295u) ^ abs(u_input.c.x), 4294967295u), Struct_1(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), min(u_input.c.x, 22092u & u_input.c.x))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(36399u, u_input.c.x, firstLeadingBit(u_input.a), ~20976u), ~(vec4<u32>(u_input.a, u_input.c.x, 1u, 29658u) >> (vec4<u32>(1u, u_input.a, u_input.c.x, u_input.c.x) % vec4<u32>(32u)))), u_input.c.x), firstLeadingBit(_wgslsmith_dot_vec4_u32(max(_wgslsmith_mult_vec4_u32(vec4<u32>(49072u, u_input.c.x, u_input.c.x, 0u), vec4<u32>(53873u, u_input.a, 31003u, u_input.c.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a, 1u, u_input.c.x), vec4<u32>(u_input.c.x, 48867u, u_input.c.x, u_input.c.x), vec4<u32>(1u, u_input.a, 53065u, 48256u))), ~vec4<u32>(29178u, u_input.c.x, u_input.a, u_input.a))));
    var_0 = Struct_4(!(!(!vec2<bool>(false, var_0.a.x))), u_input.d, var_0.c, var_0.c.c, _wgslsmith_mult_u32(~0u, var_0.c.c.b));
    var_0 = Struct_4(!select(var_0.a, var_0.a, vec2<bool>(any(var_0.c.b.zx), any(vec4<bool>(false, var_0.a.x, false, var_0.c.b.x)))), u_input.d, Struct_2(_wgslsmith_f_op_f32(ceil(var_0.c.a)), var_0.c.b, Struct_1(63693u, firstTrailingBit(~40113u)), var_0.c.c), Struct_1(abs(~var_0.d.b) | _wgslsmith_clamp_u32(abs(9455u), ~8055u, 12371u), ~((41191u ^ var_0.d.a) << (var_0.c.c.a % 32u))), 4294967295u);
    let var_1 = ~var_0.e;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a, -864f, _wgslsmith_div_f32(var_0.c.a, var_0.c.a)))));
    return Struct_1(97673u, abs(u_input.a));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: Struct_5) -> Struct_1 {
    let var_0 = arg_3.b.c;
    var var_1 = !(!any(vec3<bool>(false, !arg_3.b.b.x, true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3.b.a, 878f, -2088f, -959f), vec4<f32>(arg_2, -593f, arg_2, 154f))))))));
    let var_3 = vec4<bool>(true, !(!(2147483647i == _wgslsmith_dot_vec4_i32(vec4<i32>(13082i, 0i, arg_3.d.c.x, -1i), vec4<i32>(-39241i, 1i, arg_3.c, 72542i)))), true, !(!all(!arg_3.b.b.yz)));
    let var_4 = vec3<bool>(true, any(select(arg_3.d.a.b.yy, !select(vec2<bool>(true, arg_3.d.a.b.x), vec2<bool>(true, arg_3.d.a.b.x), var_3.x), false)), true && all(arg_3.d.a.b));
    return Struct_1(var_0.b, var_0.b);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    var var_0 = false;
    var var_1 = vec4<bool>(true, false, all(vec4<bool>(_wgslsmith_f_op_f32(-arg_1.x) < _wgslsmith_f_op_f32(-arg_1.x), true, any(vec4<bool>(true, true, true, false)), true)), true);
    var_0 = all(select(!(!select(vec4<bool>(var_1.x, false, true, true), vec4<bool>(false, true, var_1.x, false), vec4<bool>(var_1.x, false, false, true))), select(vec4<bool>(false, any(vec2<bool>(false, var_1.x)), false || var_1.x, false), select(!vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, true, true, var_1.x), false), !(!vec4<bool>(var_1.x, true, var_1.x, false))), !(!vec4<bool>(true, var_1.x, false, true))));
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(abs(1000f)), !var_1.yxw, Struct_1(0u, u_input.a), arg_0), 65350u, vec2<i32>(u_input.d, ~(-9268i)));
    let var_3 = 2600f;
    return 16444u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(4294967295u, u_input.a | ~(~firstTrailingBit(u_input.c.x)), max(reverseBits(firstLeadingBit(u_input.a)), func_5(func_4(func_1(), u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -178f), Struct_5(Struct_4(vec2<bool>(false, true), -16042i, Struct_2(1866f, vec3<bool>(true, true, false), Struct_1(u_input.c.x, 4294967295u), Struct_1(1u, u_input.c.x)), Struct_1(u_input.a, 43999u), u_input.c.x), Struct_2(1968f, vec3<bool>(true, true, false), Struct_1(u_input.c.x, u_input.a), Struct_1(4294967295u, 0u)), 26185i, Struct_3(Struct_2(-684f, vec3<bool>(true, false, false), Struct_1(u_input.c.x, u_input.c.x), Struct_1(16145u, 4294967295u)), u_input.a, vec2<i32>(u_input.b, -1i)), vec3<u32>(u_input.c.x, u_input.a, u_input.c.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1148f), _wgslsmith_f_op_f32(355f + -114f), _wgslsmith_f_op_f32(step(501f, 640f)), -162f))));
    var var_1 = ~(~_wgslsmith_div_u32(var_0.x, 8967u));
    let var_2 = Struct_4(select(vec2<bool>(any(vec3<bool>(true, true, true)), all(vec4<bool>(false, false, true, true))), vec2<bool>(true, !all(vec2<bool>(false, true))), vec2<bool>(any(vec4<bool>(false, true, true, false)), false)), -1i, Struct_2(_wgslsmith_div_f32(580f, -1000f), vec3<bool>(true, true, true), func_1(), Struct_1(var_0.x, var_0.x << ((var_0.x >> (19975u % 32u)) % 32u))), Struct_1(105074u, var_0.x), ~54361u);
    var var_3 = u_input.a;
    var var_4 = var_2.c.b;
    let var_5 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_5.a), -2413f)))))), countOneBits(func_3().xw), _wgslsmith_f_op_f32(round(-439f)), var_2.c.d.b, u_input.d);
}

