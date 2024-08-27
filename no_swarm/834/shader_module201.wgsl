struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = vec3<i32>(-_wgslsmith_add_i32(40065i >> (_wgslsmith_mult_u32(1u, u_input.c.x) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b), max(vec2<i32>(-2147483647i, -1i), vec2<i32>(u_input.b, u_input.b)))), _wgslsmith_div_i32(_wgslsmith_mult_i32(~(~u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), firstLeadingBit(vec2<i32>(u_input.b, u_input.b)))), abs(u_input.b)), _wgslsmith_mod_i32(16116i, _wgslsmith_mod_i32(u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(8108i, u_input.b, 1i), vec3<i32>(u_input.b, u_input.b, 0i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, -6905i, u_input.b))))));
    let var_1 = Struct_2(4294967295u, 0u, vec2<f32>(308f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1985f * 1306f), _wgslsmith_f_op_f32(floor(-139f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-535f, -296f, -332f, 1133f) * vec4<f32>(2578f, 482f, -976f, 1577f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1266f, -1259f, 1128f, 456f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(-1000f, -429f, 306f, 1282f)))), vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-411f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(538f)) * _wgslsmith_f_op_f32(f32(-1f) * -731f)), _wgslsmith_f_op_f32(f32(-1f) * -458f))));
    return var_1.c.x;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(1086f)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-882f + var_0.a) == _wgslsmith_f_op_f32(-var_0.a))));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(197f))) - _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(select(var_0.a, -693f, false)))), var_0.a));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -700f)));
    var_1 = Struct_1(-2503f);
    return Struct_1(_wgslsmith_f_op_f32(-var_0.a));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: f32, arg_3: i32) -> vec4<f32> {
    let var_0 = Struct_2(arg_0.b.a, arg_0.b.a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.b.c.x, 118f), arg_0.b.d.wy, vec2<bool>(false, false))) + _wgslsmith_f_op_vec2_f32(-arg_0.b.c))))), arg_0.d.d);
    let var_1 = var_0.c.x;
    let var_2 = true;
    let var_3 = arg_0.c;
    var var_4 = ~76826u;
    return _wgslsmith_f_op_vec4_f32(floor(arg_0.d.d));
}

fn func_1(arg_0: Struct_3) -> u32 {
    let var_0 = arg_0.b.d.zzy;
    var var_1 = _wgslsmith_f_op_vec4_f32(-arg_0.d.d);
    var var_2 = arg_0.a;
    let var_3 = abs(vec2<u32>(~(~arg_0.d.b), ~(~countOneBits(37579u))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_3(func_2(), Struct_2(_wgslsmith_sub_u32(49892u, var_3.x), ~29588u, arg_0.d.c, arg_0.d.d), arg_0.c, Struct_2(arg_0.b.a, abs(var_3.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_2.a) - var_0.yy), _wgslsmith_f_op_vec4_f32(ceil(arg_0.b.d)))), _wgslsmith_f_op_f32(max(883f, 664f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.a, -1086f)) + 1683f), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, ~u_input.b, reverseBits(u_input.b), max(1i, u_input.b)), vec4<i32>(20326i & u_input.b, select(-30160i, u_input.b, true), ~u_input.b, 0i)))));
    return arg_0.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = (max(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 124i, 20155i, 0i), vec4<i32>(u_input.b ^ u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 11024i, 33303i), vec3<i32>(2147483647i, u_input.b, u_input.b)), u_input.b, _wgslsmith_mod_i32(u_input.b, -2147483647i))) << ((_wgslsmith_mod_vec4_u32(~vec4<u32>(35691u, u_input.c.x, 4294967295u, u_input.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(1836u, u_input.a.x, u_input.a.x, 19434u), vec4<u32>(u_input.a.x, u_input.c.x, 87112u, u_input.c.x))) << ((~vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.a.x) ^ vec4<u32>(u_input.a.x, 65664u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (vec4<u32>(reverseBits(u_input.c.x | ~52353u), u_input.c.x, _wgslsmith_mod_u32(min(func_1(Struct_3(Struct_1(815f), Struct_2(20947u, 1u, vec2<f32>(-582f, 2078f), vec4<f32>(-1000f, -323f, -1000f, 400f)), Struct_1(-271f), Struct_2(76921u, u_input.a.x, vec2<f32>(482f, -203f), vec4<f32>(959f, 1096f, -369f, 1817f)))), 1u), _wgslsmith_clamp_u32(~u_input.c.x, countOneBits(u_input.a.x), u_input.c.x)), u_input.c.x) % vec4<u32>(32u));
    let var_2 = Struct_3(Struct_1(-1452f), Struct_2(10808u, 1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(518f, 428f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-727f, -1000f) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(331f, 729f))))), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(Struct_1(1449f), Struct_2(u_input.a.x, u_input.a.x, vec2<f32>(-413f, 1207f), vec4<f32>(-1042f, 973f, 399f, 766f)), Struct_1(1044f), Struct_2(u_input.c.x, 0u, vec2<f32>(2320f, -763f), vec4<f32>(-1000f, 1000f, 1392f, 1265f))), 444f, _wgslsmith_f_op_f32(f32(-1f) * -783f), 1i)).x, -576f, _wgslsmith_f_op_f32(f32(-1f) * -1453f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1002f + 359f) * _wgslsmith_f_op_vec4_f32(func_4(Struct_3(Struct_1(291f), Struct_2(0u, u_input.c.x, vec2<f32>(550f, 1947f), vec4<f32>(-359f, -1025f, -443f, 453f)), Struct_1(676f), Struct_2(1u, 66712u, vec2<f32>(1612f, -223f), vec4<f32>(1407f, -548f, -344f, 610f))), -699f, 1091f, var_1.x)).x))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -847f)), Struct_2(u_input.c.x, u_input.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1778f, 649f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-865f, 1014f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(115f, -877f) + vec2<f32>(-256f, 118f)))), vec4<f32>(-1555f, 2068f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-561f, 462f)), _wgslsmith_f_op_f32(f32(-1f) * -456f))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.c.a)) + _wgslsmith_f_op_f32(abs(177f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1618f * -238f) - var_2.c.a)) - _wgslsmith_f_op_f32(f32(-1f) * -554f)));
    var_3 = -218f;
    let var_4 = var_1.x & _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_1.x, _wgslsmith_add_i32(10391i, i32(-1i) * -1i)), var_1.yyw);
    let var_5 = var_0;
    var_3 = _wgslsmith_f_op_f32(trunc(1f));
    let x = u_input.a;
    s_output = StorageBuffer(1u, u_input.b);
}

