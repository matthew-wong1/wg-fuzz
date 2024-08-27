struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(28045u, vec4<i32>(i32(-2147483648), 37110i, -63306i, 2147483647i), vec3<f32>(-1000f, -927f, -570f), 1i);

var<private> global1: Struct_1;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<u32> {
    global0 = Struct_1(global1.a, ~((global0.b | u_input.d) << (min(~vec4<u32>(global1.a, 1u, global1.a, 10773u), ~vec4<u32>(0u, global0.a, global1.a, u_input.b.x)) % vec4<u32>(32u))), vec3<f32>(global0.c.x, -250f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x * -753f) - global0.c.x)), i32(-1i) * -2147483647i);
    let var_0 = Struct_1(1u, ~vec4<i32>(firstLeadingBit(-u_input.e), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.d.x, global1.b.x), -u_input.d.xxy), _wgslsmith_clamp_i32(1i & global0.b.x, -44041i, 1i ^ global1.b.x), 0i ^ ~global1.b.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c - vec3<f32>(1000f, global1.c.x, global0.c.x)) - global1.c))), _wgslsmith_mult_i32(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b.x, u_input.d.x), global1.b.xx)), _wgslsmith_clamp_i32(-44583i, 14009i, _wgslsmith_add_i32(global1.d, global0.d << (19511u % 32u)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(-1162f, global0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -257f));
    var var_2 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(32753u, 21648u), ~_wgslsmith_div_vec2_u32(u_input.b.xz, ~u_input.b.zz)), abs(~var_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.c.x, global0.c.x, -357f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(278f, -423f, global1.c.x))))))), abs(min(14737i & global1.d, u_input.e) & _wgslsmith_mult_i32(var_0.d, ~u_input.c)));
    let var_3 = select(vec2<bool>(true, true), vec2<bool>(!select(false, true, select(true, false, true)), !(~global1.a >= _wgslsmith_div_u32(u_input.b.x, var_0.a))), true);
    return countOneBits(reverseBits(abs(reverseBits(_wgslsmith_mult_vec2_u32(u_input.b.zy, u_input.b.yz)))));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: i32, arg_3: u32) -> u32 {
    var var_0 = select(vec2<bool>(!(all(vec3<bool>(false, true, true)) || (arg_2 == u_input.d.x)), any(vec3<bool>(true, all(vec3<bool>(true, true, false)), false))), vec2<bool>(any(vec3<bool>(true, true, true)), global1.d >= ~_wgslsmith_dot_vec2_i32(vec2<i32>(-32981i, -34104i), vec2<i32>(arg_2, -2147483647i))), select(vec2<bool>(true, 1237f == _wgslsmith_f_op_f32(arg_0 * -1284f)), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_1 = vec3<u32>(~(~(_wgslsmith_div_u32(5494u, 19952u) | ~global1.a)), 1u, abs(arg_1.x));
    global1 = Struct_1(abs(_wgslsmith_add_u32(abs(firstLeadingBit(global1.a)), abs(global1.a) ^ firstTrailingBit(62331u))), -max(global1.b, ~countOneBits(global1.b)), _wgslsmith_f_op_vec3_f32(step(global1.c, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global1.c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global0.c)), vec3<f32>(-2157f, global0.c.x, -386f)))))), -((-34565i ^ u_input.e) | -2147483647i) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_1.x, 29253u, 4294967295u) | vec4<u32>(arg_3, 119732u, arg_3, global1.a), reverseBits(vec4<u32>(global1.a, 29207u, var_1.x, global1.a))), firstTrailingBit(vec4<u32>(31208u, global1.a, 71036u, 20291u)) >> (vec4<u32>(12028u, u_input.a, 0u, var_1.x) % vec4<u32>(32u))) % 32u));
    var_1 = u_input.b;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-182f + _wgslsmith_f_op_f32(1229f * -1122f)), _wgslsmith_f_op_f32(-arg_0)))), global0.c.x);
    return (arg_3 | _wgslsmith_mod_u32(~0u, _wgslsmith_mult_u32(73997u, 57928u))) << (~(~countOneBits(~global1.a)) % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> i32 {
    var var_0 = func_4(355f, ~func_3(), arg_2.d, arg_2.a);
    global1 = Struct_1(0u, vec4<i32>(-(~arg_0.d >> ((0u << (0u % 32u)) % 32u)), _wgslsmith_mod_i32(-2147483647i, 0i & abs(arg_2.d)), _wgslsmith_dot_vec3_i32(arg_0.b.xwy << (u_input.b % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(global1.b.wyz, vec3<i32>(arg_2.d, global0.b.x, 10116i))) >> (_wgslsmith_mult_u32(1u, select(1u, 34185u, false)) % 32u), ~1i), _wgslsmith_f_op_vec3_f32(-arg_0.c), 31766i);
    let var_1 = arg_2;
    global1 = var_1;
    var var_2 = global1.c;
    return 2147483647i;
}

fn func_1() -> vec2<i32> {
    let var_0 = u_input.e;
    var var_1 = -vec4<i32>(abs(-func_2(Struct_1(u_input.b.x, vec4<i32>(-2147483647i, var_0, global0.b.x, -36911i), vec3<f32>(global0.c.x, 1726f, -576f), 1i), 40880u, Struct_1(1u, vec4<i32>(-2147483647i, 30767i, 17171i, global0.b.x), vec3<f32>(803f, global0.c.x, -1824f), -2147483647i))), global1.b.x, var_0, -(global0.d | 1i) & ~func_2(Struct_1(22795u, global0.b, vec3<f32>(global0.c.x, global0.c.x, global1.c.x), -1i), 1u, Struct_1(40156u, global1.b, vec3<f32>(-151f, 116f, 238f), -13584i)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -331f);
    let var_3 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.a, 34232u) << (vec4<u32>(global0.a, 18263u, 7358u, 0u) % vec4<u32>(32u)), vec4<u32>(u_input.a, global0.a, 1u, 1u)) | u_input.a, 4294967295u), select(~global0.b | (vec4<i32>(var_1.x, var_0, 15168i, 1i) ^ abs(vec4<i32>(var_1.x, var_1.x, -26247i, u_input.c))), firstTrailingBit(reverseBits(u_input.d)), all(vec3<bool>(false, true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c)), -2045i);
    var var_4 = vec4<f32>(-610f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(800f, _wgslsmith_f_op_f32(ceil(var_2)))), global1.c.x), global1.c.x, true)), 281f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-136f)))))));
    return vec2<i32>(var_3.b.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-2147483647i, -var_1.x), _wgslsmith_mult_i32(-9962i, func_2(Struct_1(28267u, var_3.b, global0.c, u_input.e), _wgslsmith_dot_vec3_u32(u_input.b, u_input.b), var_3))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> StorageBuffer {
    var var_0 = arg_2.b;
    var_0 = -(vec4<i32>(firstLeadingBit(arg_2.d), _wgslsmith_dot_vec2_i32(arg_2.b.xy, vec2<i32>(0i, 1i)), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, u_input.c, var_0.x), vec3<i32>(arg_1.d, arg_2.b.x, -2147483647i))) ^ ~(~global0.b)) | global1.b;
    var var_1 = select(select(vec2<bool>(true, !any(vec2<bool>(true, false))), vec2<bool>((arg_1.c.x < arg_2.c.x) && true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), vec2<bool>(2147483647i > -var_0.x, arg_2.c.x <= _wgslsmith_f_op_f32(abs(global1.c.x)))), select(vec2<bool>(true, !(-12879i > arg_0.x)), vec2<bool>(true, true), !(any(vec4<bool>(false, false, true, true)) || true)), true);
    let var_2 = select(arg_2.d, -6234i, var_1.x);
    let var_3 = arg_2.c.x;
    return StorageBuffer(-select(~(i32(-1i) * -3637i), -_wgslsmith_mult_i32(var_0.x, -1i), !select(var_1.x, true, false)), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(global0.b.wy ^ (func_1() & global1.b.yx), Struct_1(~(~1u), vec4<i32>(-5413i, _wgslsmith_clamp_i32(1246i, 1i, 1i) >> (0u % 32u), -13520i, _wgslsmith_dot_vec2_i32(~vec2<i32>(global1.d, global1.b.x), firstTrailingBit(global1.b.zy))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global0.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(-986f, global0.c.x, global0.c.x) * global0.c)))), 22887i), Struct_1(global1.a, _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.d, global0.b), global1.b), _wgslsmith_mod_vec4_i32(vec4<i32>(4765i, 1i, global1.b.x, u_input.e), vec4<i32>(global0.b.x, u_input.e, global0.b.x, -58324i))), global1.c, u_input.c), global0.a);
}

