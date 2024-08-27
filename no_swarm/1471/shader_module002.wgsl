struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4) -> i32 {
    var var_0 = false || select(true, select(true, true && (-1000f < arg_1.d.x), true), true);
    var var_1 = any(select(select(vec2<bool>(true, any(vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(true, false), true), any(vec4<bool>(false, true, true, false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true), vec2<bool>(true, true), true)));
    var_1 = _wgslsmith_f_op_f32(-arg_2.a.x) > arg_2.a.x;
    var var_2 = 1000f;
    var var_3 = false;
    return ~2147483647i;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> vec2<u32> {
    let var_0 = Struct_4(arg_0, Struct_2(vec4<i32>(firstLeadingBit(_wgslsmith_mult_i32(-1i, u_input.c)), min(-48969i, _wgslsmith_dot_vec4_i32(vec4<i32>(56451i, u_input.b.x, u_input.c, -19145i), vec4<i32>(u_input.b.x, u_input.a.x, 2147483647i, u_input.c))), -(0i | u_input.c), _wgslsmith_mult_i32(153579i, func_3(0u, Struct_1(u_input.a, vec3<i32>(-27814i, u_input.a.x, u_input.c), vec4<u32>(arg_1, arg_1, 1u, 33555u), arg_0, vec4<u32>(1u, u_input.d.x, 1u, 0u)), Struct_4(vec2<f32>(arg_0.x, arg_0.x), Struct_2(vec4<i32>(1i, u_input.c, u_input.b.x, u_input.a.x))))))));
    let var_1 = 1i;
    var var_2 = Struct_2(select(var_0.b.a, vec4<i32>(u_input.c, var_0.b.a.x, func_3(~u_input.d.x, Struct_1(vec3<i32>(-43708i, u_input.a.x, -12253i), vec3<i32>(var_1, -42740i, u_input.b.x), vec4<u32>(u_input.d.x, arg_1, u_input.d.x, 47662u), vec2<f32>(var_0.a.x, arg_0.x), vec4<u32>(arg_1, arg_1, 45291u, arg_1)), Struct_4(arg_0, var_0.b)), max(1i, firstLeadingBit(10359i))), true));
    var var_3 = Struct_1(max(~_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(2147483647i, var_0.b.a.x, u_input.a.x)), vec3<i32>(58340i, u_input.c, -20629i)), vec3<i32>(var_0.b.a.x, ~u_input.b.x, reverseBits(max(var_2.a.x, var_1)))), ~vec3<i32>(u_input.a.x, ~var_0.b.a.x ^ 37945i, var_2.a.x), vec4<u32>(~u_input.d.x, arg_1, u_input.d.x & countOneBits(24963u), max(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(51378u, 10592u, 33328u), _wgslsmith_add_u32(u_input.d.x, arg_1)), 44747u << (u_input.d.x % 32u))), var_0.a, max(select(~(vec4<u32>(arg_1, u_input.d.x, arg_1, u_input.d.x) ^ vec4<u32>(0u, arg_1, 80103u, 1u)), vec4<u32>(_wgslsmith_add_u32(80836u, 0u), ~arg_1, u_input.d.x, 1u), vec4<bool>(862f != arg_0.x, all(vec3<bool>(true, false, true)), false, any(vec3<bool>(false, false, false)))), abs(vec4<u32>(90093u, reverseBits(4294967295u), _wgslsmith_mult_u32(1u, u_input.d.x), u_input.d.x))));
    var_2 = Struct_2(~_wgslsmith_mult_vec4_i32(~abs(vec4<i32>(var_1, 2147483647i, var_3.b.x, 1i)), var_2.a));
    return _wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(~var_3.e.xy, var_3.e.wz), var_3.e.zy) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(var_3.c.xzx, select(_wgslsmith_mod_vec3_u32(vec3<u32>(var_3.e.x, 26729u, 105067u), var_3.c.zyy), ~vec3<u32>(u_input.d.x, 4021u, 37864u), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true))), _wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(u_input.d.x, arg_1, 4294967295u, 4294967295u)), ~var_3.e)) % vec2<u32>(32u));
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_2(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yy, -u_input.b << (func_2(vec2<f32>(-1006f, 1846f), u_input.d.x) % vec2<u32>(32u))), -1299i, 20066i, -1i));
    var var_1 = Struct_4(vec2<f32>(-1282f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(floor(-1200f)), true)))), Struct_2(_wgslsmith_sub_vec4_i32(var_0.a, _wgslsmith_clamp_vec4_i32(var_0.a, vec4<i32>(2457i, u_input.b.x, var_0.a.x, u_input.b.x), min(var_0.a, var_0.a)))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-527f, var_1.a.x, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-572f)))) + 107f))));
    var_0 = var_1.b;
    var var_3 = u_input.d;
    return StorageBuffer(countOneBits(~(~vec4<u32>(46326u, u_input.d.x, u_input.d.x, u_input.d.x))) >> (vec4<u32>(max(~var_3.x, ~24821u), 44093u, _wgslsmith_div_u32(30080u, 55574u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 35457u, var_3.x, 24331u) << (vec4<u32>(var_3.x, var_3.x, 50353u, var_3.x) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(var_3.x, 19194u, u_input.d.x, var_3.x)))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~(~reverseBits(vec4<u32>(u_input.d.x, 1707u, u_input.d.x, 4294967295u))), countOneBits(vec4<u32>(25685u, 4294967295u, 12415u, 1u) >> (vec4<u32>(u_input.d.x, 0u, u_input.d.x, 61846u) % vec4<u32>(32u))) | ~countOneBits(vec4<u32>(1216u, 0u, 1u, 1u))), vec2<i32>(reverseBits(-2147483647i), ~var_0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1183f, var_1.a.x)))), 277f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

