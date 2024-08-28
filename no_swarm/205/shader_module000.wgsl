struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<i32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(-1i, 2316i), vec2<i32>(2147483647i, 1i), vec2<i32>(-26228i, 32714i), vec2<i32>(15372i, 0i), vec2<i32>(-69184i, -33215i), vec2<i32>(2147483647i, -38526i), vec2<i32>(1i, -71407i), vec2<i32>(-72938i, 1i), vec2<i32>(-1i, -5380i), vec2<i32>(2147483647i, 1i), vec2<i32>(-52035i, -3732i), vec2<i32>(-24373i, -1i), vec2<i32>(8635i, 53391i), vec2<i32>(0i, -72150i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_2) -> bool {
    var var_0 = ~(~u_input.c.yxw);
    let var_1 = select(!select(arg_2.xy, vec2<bool>(arg_0.d, true && arg_2.x), true), select(select(arg_2.zx, vec2<bool>(false, true), true), select(!select(vec2<bool>(true, arg_2.x), vec2<bool>(true, false), arg_2.yw), arg_2.xx, !arg_2.ww), vec2<bool>(true && all(arg_2.yy), !arg_0.d)), !(true == !(!arg_2.x)));
    var_0 = max(reverseBits(vec3<u32>(_wgslsmith_clamp_u32(1u, u_input.d, 72676u) | 1u, 57451u, 56990u)), vec3<u32>(0u, var_0.x, ~1u));
    global0 = array<vec2<i32>, 14>();
    var var_2 = Struct_1(vec2<i32>(-firstTrailingBit(-1i), u_input.b.x), ~arg_0.a, countOneBits(arg_3.a.d.xx), ~firstLeadingBit(arg_0.b.a.d));
    return !(true || arg_0.d);
}

fn func_2(arg_0: vec3<u32>) -> Struct_4 {
    global0 = array<vec2<i32>, 14>();
    let var_0 = Struct_1(~vec2<i32>(-18931i, -1i), arg_0.x, u_input.c.wz, vec3<u32>(1u, _wgslsmith_div_u32((0u >> (u_input.c.x % 32u)) >> ((u_input.c.x << (u_input.c.x % 32u)) % 32u), _wgslsmith_mult_u32(~arg_0.x, abs(u_input.d))), _wgslsmith_add_u32(min(_wgslsmith_mult_u32(u_input.c.x, arg_0.x), reverseBits(u_input.d)), 60284u)));
    var var_1 = Struct_2(var_0, u_input.e);
    var_1 = Struct_2(Struct_1(vec2<i32>(13959i, firstLeadingBit(var_0.a.x)), ~1u, u_input.c.yx, u_input.c.xzw ^ vec3<u32>(1u, ~78565u, 19647u)), _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(0i, var_1.b, 0i)), _wgslsmith_clamp_i32(0i, i32(-1i) * -var_1.a.a.x, _wgslsmith_dot_vec2_i32(u_input.b.yx, u_input.b.yz) & _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(2147483647i, -43912i, 59204i)))));
    return Struct_4(any(vec2<bool>(true, true)), max(var_1.a.a, abs(vec2<i32>(-43550i, var_1.b))), Struct_1(reverseBits(vec2<i32>(u_input.a >> (19289u % 32u), 0i)), var_1.a.b, ~u_input.c.yx, abs(~reverseBits(var_0.d))), any(!vec4<bool>(all(vec2<bool>(true, false)), func_3(Struct_3(25701u, Struct_2(var_1.a, 1i), vec4<i32>(var_1.b, 2147483647i, var_0.a.x, -18420i), false, u_input.b), 1393f, vec4<bool>(true, false, true, false), Struct_2(Struct_1(vec2<i32>(var_1.a.a.x, var_1.a.a.x), u_input.d, u_input.c.yx, var_0.d), var_1.a.a.x)), true, true)), !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_4, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_2(func_2(u_input.c.xww).c, u_input.b.x);
    var var_1 = vec4<i32>(u_input.b.x ^ (-1i & _wgslsmith_mult_i32(reverseBits(arg_0), _wgslsmith_clamp_i32(-2147483647i, 14948i, 2147483647i))), 10177i, 21543i, max(countOneBits(abs(select(arg_2.b.x, u_input.a, arg_2.d))), -select(2147483647i, arg_0, false) ^ arg_0));
    let var_2 = select(select(!(!(!vec2<bool>(arg_2.a, false))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(arg_2.e.x, arg_2.d))), !arg_2.e.xx), select(select(vec2<bool>(all(vec4<bool>(true, arg_2.a, arg_2.e.x, false)), true), select(!arg_2.e.yz, vec2<bool>(arg_2.e.x, true), true), arg_2.e.xx), vec2<bool>(false, _wgslsmith_f_op_f32(-arg_3) > _wgslsmith_f_op_f32(step(arg_1, arg_3))), arg_2.e.zz), false);
    var var_3 = (-abs(-var_1.wyy) ^ _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, var_0.a.a.x, -2147483647i)), vec3<i32>(u_input.a, var_0.b, 2147483647i) | vec3<i32>(3439i, var_1.x, var_1.x))) & select(var_1.yyy, -abs(u_input.b), !arg_2.d);
    global0 = array<vec2<i32>, 14>();
    return var_0.a;
}

fn func_1() -> f32 {
    global0 = array<vec2<i32>, 14>();
    global0 = array<vec2<i32>, 14>();
    var var_0 = func_4(max(u_input.a, _wgslsmith_div_i32(-firstTrailingBit(2147483647i), u_input.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -395f)), func_2(~(~vec3<u32>(46307u, 48958u, u_input.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -302f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -324f))) + _wgslsmith_div_f32(1000f, -1530f))));
    let var_1 = -1075f;
    var var_2 = -699f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-494f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-126f, 1000f))) + _wgslsmith_f_op_f32(func_1())))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-955f - -846f), 324f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1843f, 391f)), _wgslsmith_f_op_f32(1366f - -295f))))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -988f);
    global0 = array<vec2<i32>, 14>();
    let var_2 = Struct_4(u_input.c.x != ~select(4294967295u, min(u_input.d, u_input.c.x), false), var_0.xy, func_4(u_input.a << (abs(25862u) % 32u), 2101f, Struct_4(true, abs(-u_input.b.xz), Struct_1(~vec2<i32>(u_input.a, var_0.x), 83877u, firstTrailingBit(vec2<u32>(4294967295u, 78022u)), ~u_input.c.ywz), select(true, func_3(Struct_3(1u, Struct_2(Struct_1(vec2<i32>(u_input.b.x, u_input.a), 50296u, u_input.c.zx, vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x)), var_0.x), vec4<i32>(var_0.x, 1i, u_input.a, -1i), true, vec3<i32>(var_0.x, var_0.x, var_0.x)), 1876f, vec4<bool>(false, false, false, false), Struct_2(Struct_1(vec2<i32>(16700i, var_0.x), u_input.d, u_input.c.xx, vec3<u32>(u_input.c.x, u_input.d, u_input.c.x)), 0i)), true), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-811f + -611f) * 1241f))), !(0u > (70740u >> (u_input.c.x % 32u))) | !any(vec3<bool>(true, true, true)), !vec3<bool>(max(u_input.c.x, u_input.c.x) > (u_input.c.x & u_input.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), u_input.c.yz) >= (u_input.d << (4294967295u % 32u)), true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d << (~_wgslsmith_sub_u32(abs(9740u), _wgslsmith_div_u32(0u, var_2.c.b)) % 32u), u_input.c.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -529f), 341f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1115f), 117f)));
}

