struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: bool,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: vec3<i32>) -> vec2<bool> {
    return !select(vec2<bool>(true, true), vec2<bool>(true, true), false);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: i32) -> i32 {
    var var_0 = Struct_2(!select(vec2<bool>(true, !arg_0.a.x), select(arg_2, func_3(4294967295u, vec2<u32>(41212u, u_input.a), u_input.c), arg_0.a.x), vec2<bool>(true, true)));
    let var_1 = select(vec3<bool>(true, true, true), !vec3<bool>(!arg_2.x, false, true), any(select(select(!vec4<bool>(true, arg_0.a.x, arg_2.x, arg_0.a.x), select(vec4<bool>(arg_0.a.x, false, arg_2.x, var_0.a.x), vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x), var_0.a.x), vec4<bool>(false, false, true, true)), select(!vec4<bool>(arg_2.x, var_0.a.x, true, arg_0.a.x), vec4<bool>(arg_2.x, arg_0.a.x, false, true), vec4<bool>(true, arg_2.x, true, arg_2.x)), func_3(67061u, u_input.b.wy, vec3<i32>(arg_1.x, arg_1.x, arg_1.x)).x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-849f, _wgslsmith_f_op_f32(f32(-1f) * -279f))) * _wgslsmith_div_f32(-870f, _wgslsmith_f_op_f32(ceil(-1000f))))));
    var_0 = Struct_2(select(!vec2<bool>(arg_0.a.x, var_1.x), vec2<bool>(var_0.a.x, arg_2.x), vec2<bool>(all(!vec4<bool>(var_1.x, arg_0.a.x, false, false)), arg_0.a.x)));
    var var_3 = firstLeadingBit(firstLeadingBit(u_input.b));
    return _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(~arg_1, vec4<i32>(u_input.c.x, -2125i, ~u_input.c.x, u_input.c.x | 2147483647i)), ~abs(arg_1 >> (~vec4<u32>(37451u, 0u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(u_input.c.x << (abs(71249u) % 32u), func_4(Struct_2(vec2<bool>(true, true)), vec4<i32>(~u_input.c.x, u_input.c.x, u_input.c.x, 6275i), select(vec2<bool>(true, true), select(vec2<bool>(false, false), func_3(4294967295u, u_input.b.yw, vec3<i32>(2147483647i, 875i, 2147483647i)), vec2<bool>(true, true)), vec2<bool>(true, true)), ~(-u_input.c.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-429f, arg_0, -1133f, arg_0)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -546f, -894f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0, -708f, 223f) - vec4<f32>(arg_0, arg_0, arg_0, arg_0))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2512f, 778f, arg_0, arg_0)), vec4<f32>(-170f, -276f, arg_0, -713f), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, arg_0, -1430f, 829f)))))))));
    var var_2 = ~_wgslsmith_sub_u32(9587u, 1u ^ (1776u & u_input.b.x));
    var var_3 = var_0;
    var_2 = ~0u;
    return Struct_1(u_input.c.zz, func_4(Struct_2(vec2<bool>(true, true)), countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, -11354i, var_0, u_input.c.x), vec4<i32>(-65614i, 2147483647i, var_0, -2147483647i), vec4<i32>(1i, u_input.c.x, 2147483647i, u_input.c.x)) >> (~vec4<u32>(4294967295u, 0u, u_input.a, 10742u) % vec4<u32>(32u))), func_3(u_input.a, firstTrailingBit(countOneBits(u_input.b.zw)), u_input.c), func_4(Struct_2(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), min(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0, -1i, u_input.c.x, var_0), vec4<i32>(u_input.c.x, var_0, var_0, -37634i)), firstLeadingBit(vec4<i32>(30743i, -51307i, u_input.c.x, -73781i))), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), i32(-1i) * -52205i)), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(387f - -1000f) - _wgslsmith_f_op_f32(-arg_0)), abs(~vec2<u32>(u_input.b.x ^ 0u, 4294967295u)));
}

fn func_1() -> Struct_2 {
    let var_0 = -1519f;
    var var_1 = firstTrailingBit(u_input.b.x);
    let var_2 = Struct_4(Struct_3(vec2<f32>(var_0, var_0), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)), Struct_1(vec2<i32>(_wgslsmith_add_i32(23107i, u_input.c.x), 2147483647i), reverseBits(_wgslsmith_mult_i32(-23867i, 0i)), u_input.c.x < 1i, var_0, abs(vec2<u32>(u_input.b.x, u_input.b.x) & u_input.b.yy))), vec3<f32>(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(481f + var_0))), _wgslsmith_f_op_f32(var_0 - var_0), var_0), func_2(var_0), true, u_input.c.x);
    var var_3 = u_input.c.x;
    let var_4 = var_2.a;
    return Struct_2(!var_4.b.zz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!vec2<bool>(all(vec4<bool>(false, true, true, true)), true));
    var var_1 = func_1();
    let var_2 = vec2<f32>(626f, -378f);
    var_1 = Struct_2(select(vec2<bool>(var_1.a.x, var_0.a.x), var_0.a, !var_1.a.x && var_1.a.x));
    var_0 = func_1();
    var_0 = Struct_2(var_0.a);
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits((vec2<u32>(u_input.b.x, u_input.a) | (u_input.b.xx & vec2<u32>(0u, u_input.a))) ^ vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), _wgslsmith_sub_u32(45661u, u_input.b.x))));
}

