struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = !(!vec2<bool>(true, any(vec3<bool>(false, false, false))));
    var var_1 = -vec4<i32>(~1i, select(abs(15111i) >> (0u % 32u), _wgslsmith_add_i32(abs(-18879i), _wgslsmith_sub_i32(-2527i, -23130i)), !(0u < u_input.a.x)), firstLeadingBit(-38212i), max(0i, ~abs(1i)));
    let var_2 = !(!(!vec2<bool>(var_0.x, any(vec3<bool>(true, var_0.x, var_0.x)))));
    let var_3 = Struct_1(1i, -var_1.xxx);
    var var_4 = var_3;
    return var_1.x & ~var_1.x;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-289f * -939f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-111f)))) + 662f))));
    var var_1 = Struct_3(Struct_1(max(34683i, countOneBits(_wgslsmith_sub_i32(22334i, -50011i))), vec3<i32>(func_3(Struct_2(vec3<u32>(u_input.a.x, 8138u, u_input.a.x))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1957i, 0i, -2147483647i), vec3<i32>(-13985i, 2147483647i, -18642i)), -82604i), countOneBits(1i))));
    var var_2 = 2147483647i;
    var var_3 = Struct_2(_wgslsmith_div_vec3_u32(select(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(41269u, u_input.a.x, u_input.a.x), vec3<u32>(39229u, 51692u, 107411u)), false) << (vec3<u32>(countOneBits(51978u), 12860u, 1u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.x), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, 36815u, u_input.a.x), abs(vec3<u32>(u_input.a.x, 0u, 1u))))));
    var_1 = Struct_3(Struct_1(var_1.a.b.x & var_1.a.b.x, -(~var_1.a.b)));
    return Struct_2(var_3.a);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> i32 {
    var var_0 = func_2();
    let var_1 = Struct_1(_wgslsmith_add_i32(1i, 0i), vec3<i32>(0i, ~(-14006i), ~(_wgslsmith_clamp_i32(-20633i, 1i, 2147483647i) ^ (-1i >> (1u % 32u)))));
    var var_2 = vec2<bool>(true, true);
    var_0 = func_2();
    let var_3 = 2147483647i;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    var var_1 = Struct_1(-(_wgslsmith_mod_i32(-1i, func_1(u_input.a.x, vec3<u32>(u_input.a.x, u_input.a.x, 30510u))) & -4353i), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), -(i32(-1i) * -2147483647i) ^ ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -11965i, 2147483647i), vec3<i32>(-7442i, 10032i, -52275i)), 1i));
    var var_2 = ~(~(~vec2<u32>(u_input.a.x, u_input.a.x)) ^ select(vec2<u32>(~1u, ~21374u), ~abs(vec2<u32>(4186u, u_input.a.x)), false));
    var var_3 = vec4<i32>(var_1.a, countOneBits(abs(var_1.b.x)), 1i, 22276i);
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit((_wgslsmith_add_u32(45204u, var_2.x) ^ ~57146u) << ((~0u ^ u_input.a.x) % 32u)), _wgslsmith_add_vec3_i32(var_1.b, ~(-_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.a, var_1.b.x, 2141i), vec3<i32>(4765i, var_3.x, 4914i)))), -22560i, select(~var_3.xww, select(firstTrailingBit(var_3.zww), vec3<i32>(var_1.b.x, var_1.a, var_3.x), false), !select(vec3<bool>(var_4, var_4, var_4), vec3<bool>(true, false, true), vec3<bool>(var_4, var_4, false))) & vec3<i32>(var_1.a, 1i, _wgslsmith_add_i32(_wgslsmith_div_i32(-31530i, 1i), -var_3.x)));
}

