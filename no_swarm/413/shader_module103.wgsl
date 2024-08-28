struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2602f, -467f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-475f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1774f - -1522f)))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-521f, var_0.x))), _wgslsmith_div_f32(-1392f, _wgslsmith_f_op_f32(exp2(var_0.x))), 1096f);
    let var_2 = select(arg_0.c.c.a.yxx, !arg_0.c.c.a.zxz, select(vec3<bool>(!arg_1.x && false, all(vec3<bool>(true, true, arg_1.x)), select(true, true && arg_0.c.c.a.x, arg_1.x)), arg_0.c.c.a.yxz, arg_0.c.c.a.zyz));
    var_0 = _wgslsmith_f_op_vec2_f32(-var_1.yy);
    let var_3 = _wgslsmith_dot_vec4_i32(arg_0.b, arg_0.b);
    return var_3;
}

fn func_2() -> Struct_5 {
    return Struct_5(u_input.a.x, -vec4<i32>(func_3(Struct_5(1u, vec4<i32>(-18854i, 126i, -33830i, -22483i), Struct_3(u_input.a.zxz, -41767i, Struct_1(vec4<bool>(true, true, true, false), u_input.a))), vec2<bool>(true, false)), abs(select(-47554i, 2147483647i, false)), func_3(Struct_5(u_input.a.x, vec4<i32>(1i, 1i, 0i, 2147483647i), Struct_3(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), 44065i, Struct_1(vec4<bool>(true, false, false, true), u_input.a))), vec2<bool>(true, true)) & 35217i, -2147483647i), Struct_3(firstTrailingBit(~vec3<u32>(0u, 4294967295u, u_input.a.x)), _wgslsmith_add_i32(abs(12913i), 1i), Struct_1(vec4<bool>(u_input.a.x < u_input.a.x, false, true, true), _wgslsmith_add_vec4_u32(~u_input.a, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4128u, u_input.a.x, u_input.a.x), u_input.a)))));
}

fn func_1() -> bool {
    let var_0 = u_input.a;
    var var_1 = func_2();
    return any(select(select(var_1.c.c.a.zx, select(var_1.c.c.a.yz, var_1.c.c.a.xw, true), func_2().c.c.a.wx), !func_2().c.c.a.wx, func_2().c.c.a.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: u32, arg_3: Struct_4) -> StorageBuffer {
    var var_0 = arg_1.b.x;
    var_0 = arg_1.b.x;
    let var_1 = Struct_3(arg_1.c.a, 1i, arg_1.c.c);
    var_0 = _wgslsmith_clamp_i32(var_1.b, ~reverseBits(arg_3.b.x), -(arg_1.b.x ^ 15113i));
    var_0 = var_1.b;
    return StorageBuffer(reverseBits(min(_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_1.a.x, 0u, var_1.a.x), vec3<u32>(52806u, 4294967295u, 0u), arg_1.c.c.a.wwy), _wgslsmith_clamp_vec3_u32(arg_1.c.c.b.wxx, var_1.a, u_input.a.wxz)), _wgslsmith_div_u32(var_1.c.b.x, arg_1.c.a.x) >> (4294967295u % 32u))), u_input.a.wzy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-894f))) - _wgslsmith_f_op_f32(arg_3.a.x - _wgslsmith_f_op_f32(trunc(1137f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x * 1000f))), -arg_1.b, select(vec4<u32>(~_wgslsmith_div_u32(var_1.a.x, 1u), _wgslsmith_clamp_u32(arg_2, u_input.a.x, arg_2), _wgslsmith_add_u32(45699u, abs(11802u)), 1u), _wgslsmith_add_vec4_u32(~vec4<u32>(var_1.c.b.x, var_1.a.x, 84953u, var_1.c.b.x), ~(~vec4<u32>(u_input.a.x, var_1.c.b.x, var_1.c.b.x, 17876u))), arg_1.c.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(vec4<bool>(u_input.a.x < ~(~u_input.a.x), !func_1(), true, true), Struct_5(firstTrailingBit(~_wgslsmith_mod_u32(36993u, u_input.a.x)), vec4<i32>(-2147483647i, 1i, _wgslsmith_dot_vec4_i32(func_2().b, countOneBits(vec4<i32>(-18855i, 43523i, -1649i, 7850i))), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -52773i, -32059i), vec3<i32>(2147483647i, -28226i, -56193i)), 50317i)), Struct_3(vec3<u32>(_wgslsmith_div_u32(u_input.a.x, 4294967295u), countOneBits(1u), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), _wgslsmith_mult_i32(1i << (u_input.a.x % 32u), i32(-1i) * -16828i), func_2().c.c)), max(~u_input.a.x, func_2().a), Struct_4(vec2<f32>(1852f, _wgslsmith_f_op_f32(abs(1f))), _wgslsmith_sub_vec2_i32(func_2().b.zz, vec2<i32>(13901i, 10192i)) >> (vec2<u32>(max(u_input.a.x, u_input.a.x), u_input.a.x | 38364u) % vec2<u32>(32u))));
}

