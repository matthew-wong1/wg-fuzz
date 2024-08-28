struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1237f;

var<private> global1: vec2<bool>;

var<private> global2: Struct_2 = Struct_2(-22501i, vec2<u32>(18084u, 0u), Struct_1(vec3<i32>(2147483647i, -83102i, i32(-2147483648)), vec4<i32>(-11335i, i32(-2147483648), -39796i, -32310i), 17038u, -2402i), false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>) -> bool {
    var var_0 = vec4<i32>(global2.c.a.x, arg_1.a.x, ~(-14385i), global2.a);
    let var_1 = ~u_input.b.x;
    var_0 = ~arg_0.c.b;
    let var_2 = vec4<u32>(~(~(~arg_1.c)), 1u, ~global2.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b.x, 4294967295u, 1u), vec3<u32>(_wgslsmith_mod_u32(arg_0.c.c & u_input.a, ~arg_1.c), arg_1.c, abs(~arg_1.c))));
    var var_3 = 1847f > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1139f, _wgslsmith_div_f32(713f, _wgslsmith_f_op_f32(f32(-1f) * -1696f)))), -1192f));
    return global2.d;
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_mult_u32(4294967295u, ~_wgslsmith_mod_u32(~38314u, u_input.a) & _wgslsmith_mod_u32(u_input.b.x, u_input.b.x));
    global1 = vec2<bool>(true, !global2.d);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1075f, 1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -903f), _wgslsmith_f_op_f32(f32(-1f) * -903f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -652f) + _wgslsmith_div_f32(-619f, -259f)))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-111f * _wgslsmith_f_op_f32(-var_1.x))))));
    var var_2 = -682f <= _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1660f)), var_1.x)), _wgslsmith_f_op_f32(round(var_1.x)))));
    return 1i >> (_wgslsmith_dot_vec4_u32(~select(vec4<u32>(global2.c.c, 4294967295u, global2.b.x, 45638u), u_input.b, func_3(Struct_2(global2.a, global2.b, global2.c, true), Struct_1(vec3<i32>(global2.c.b.x, -1i, -1i), global2.c.b, var_0, -14691i), vec2<bool>(false, false))), _wgslsmith_sub_vec4_u32(vec4<u32>(firstLeadingBit(u_input.a), 6522u, u_input.a, ~u_input.b.x), vec4<u32>(u_input.b.x, 11741u, 4294967295u, global2.c.c) ^ vec4<u32>(0u, 92590u, u_input.a, 61728u))) % 32u);
}

fn func_1() -> vec2<bool> {
    global1 = vec2<bool>(-49531i < reverseBits(~global2.c.b.x), true);
    var var_0 = ~firstLeadingBit(func_2() << (min(~u_input.a, max(u_input.b.x, u_input.b.x)) % 32u));
    var var_1 = true;
    var_0 = -2147483647i;
    return select(!(!select(select(vec2<bool>(false, global1.x), vec2<bool>(global2.d, true), global1.x), !vec2<bool>(global1.x, global2.d), select(vec2<bool>(global1.x, true), vec2<bool>(true, global1.x), global2.d))), vec2<bool>(global1.x && (-global2.a < global2.a), any(select(select(vec2<bool>(global2.d, global2.d), vec2<bool>(global1.x, global2.d), global2.d), vec2<bool>(global2.d, false), any(vec3<bool>(global1.x, false, false))))), global2.c.c < u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(_wgslsmith_mod_i32(global2.a, -194i), firstLeadingBit(global2.b), Struct_1(-global2.c.a, ~_wgslsmith_mod_vec4_i32(global2.c.b, global2.c.b), ~4294967295u, i32(-1i) * -2147483647i), !all(vec4<bool>(!global1.x, true, true, true)));
    var var_0 = global1.x;
    global1 = !select(func_1(), select(vec2<bool>(global2.d, true), vec2<bool>(select(global2.d, global1.x, global2.d), true), global1.x), !vec2<bool>(!global2.d, global2.d));
    let var_1 = ~_wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 57256u, 21594u), vec3<u32>(u_input.b.x, 12623u, u_input.b.x)), (vec3<u32>(46796u, 31407u, global2.c.c) >> (vec3<u32>(0u, global2.c.c, global2.c.c) % vec3<u32>(32u))) & (vec3<u32>(u_input.b.x, 33678u, u_input.b.x) & vec3<u32>(u_input.a, 1u, u_input.a))) | ~vec3<u32>(select(18835u, abs(4294967295u), func_1().x), u_input.a, abs(_wgslsmith_mult_u32(26533u, 14077u)));
    var var_2 = Struct_2(global2.a, var_1.yy, Struct_1((vec3<i32>(-1i, 2529i, 2147483647i) >> (u_input.b.zyw % vec3<u32>(32u))) >> (u_input.b.xww % vec3<u32>(32u)), global2.c.b, var_1.x, ~(i32(-1i) * -14294i)), _wgslsmith_mult_i32(1i, min(_wgslsmith_add_i32(global2.a, global2.c.d), _wgslsmith_clamp_i32(global2.c.b.x, global2.c.d, global2.c.b.x))) != ~1i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_vec2_i32(vec2<i32>(var_2.c.b.x, 1i), -vec2<i32>(2147483647i, 0i)) ^ -_wgslsmith_mult_vec2_i32(global2.c.a.yz, vec2<i32>(-31947i, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1000f, -1937f)))) + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(-196f))))));
}

