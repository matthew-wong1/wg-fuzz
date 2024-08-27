struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec3<i32>(-4481i, -32603i, 0i), vec3<i32>(17842i, 0i, 0i), vec3<bool>(false, false, true));

var<private> global1: i32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    global0 = Struct_1(!(u_input.b < -1557i), global0.c, global0.c, select(global0.d, global0.d, false));
    var var_0 = global0.c.yy;
    var var_1 = -488f;
    var var_2 = any(global0.d);
    var var_3 = all(select(select(!vec4<bool>(global0.a, arg_0.a, false, arg_0.d.x), !vec4<bool>(arg_0.d.x, false, false, true), !select(vec4<bool>(true, global0.a, global0.d.x, true), vec4<bool>(arg_0.a, arg_0.d.x, arg_0.a, arg_0.d.x), vec4<bool>(arg_0.a, global0.d.x, true, arg_0.d.x))), select(!(!vec4<bool>(arg_0.d.x, false, arg_0.d.x, false)), !select(vec4<bool>(true, arg_0.d.x, global0.d.x, true), vec4<bool>(arg_0.d.x, global0.a, global0.a, true), vec4<bool>(false, global0.d.x, global0.d.x, arg_0.d.x)), select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true), !vec4<bool>(true, global0.d.x, true, global0.d.x), !vec4<bool>(global0.a, global0.d.x, arg_0.d.x, global0.a))), vec4<bool>(all(global0.d), true, false, arg_0.a || !arg_0.d.x)));
    return _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, 7147i, _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, arg_0.c.x), _wgslsmith_mult_i32(-2147483647i, u_input.b))), _wgslsmith_sub_vec3_i32(vec3<i32>(reverseBits(1i), _wgslsmith_mult_i32(var_0.x, 0i), _wgslsmith_sub_i32(0i, -2147483647i)), _wgslsmith_sub_vec3_i32(-arg_0.b, vec3<i32>(var_0.x, 16413i, -4248i)))), _wgslsmith_div_vec3_i32(global0.c, vec3<i32>(var_0.x << (u_input.a % 32u), 2147483647i, firstLeadingBit(arg_0.c.x)) ^ -arg_0.b));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: bool, arg_3: i32) -> Struct_1 {
    global0 = Struct_1(false, global0.c, func_3(Struct_1(true, ~vec3<i32>(global0.c.x, -25338i, -18203i), global0.b, vec3<bool>(global0.a, false, false))) | (reverseBits(countOneBits(global0.c)) & max(vec3<i32>(0i, -51355i, arg_3), vec3<i32>(arg_1, 1i, u_input.b) ^ vec3<i32>(52438i, -9075i, arg_3))), global0.d);
    var var_0 = Struct_2(Struct_1(arg_2, _wgslsmith_add_vec3_i32(min(_wgslsmith_add_vec3_i32(vec3<i32>(73226i, -20360i, global0.b.x), global0.b), global0.c | vec3<i32>(arg_3, arg_3, arg_1)), vec3<i32>(abs(arg_3), -1i, 0i)), global0.b, select(vec3<bool>(true, true, true), vec3<bool>(global0.a, all(vec3<bool>(false, global0.d.x, arg_2)), false & global0.d.x), true)), Struct_1(true, global0.b, select(~global0.b, ~global0.c << (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, arg_0.x, arg_0.x), vec3<u32>(arg_0.x, 11754u, u_input.a), vec3<u32>(111066u, 2378u, 94130u)) % vec3<u32>(32u)), global0.d), select(global0.d, global0.d, true)), _wgslsmith_clamp_vec3_u32(~min(vec3<u32>(0u, u_input.a, arg_0.x) >> (vec3<u32>(arg_0.x, u_input.a, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(2394u, arg_0.x, 1u)), vec3<u32>(countOneBits(1u), ~_wgslsmith_mult_u32(arg_0.x, arg_0.x), ~u_input.a), vec3<u32>(1u, 0u, 1u)));
    global0 = Struct_1(!(!(!global0.a)), ~global0.c, ~global0.c & vec3<i32>(~global0.b.x, abs(_wgslsmith_dot_vec3_i32(var_0.b.c, var_0.a.c)), -max(arg_1, u_input.b)), select(var_0.b.d, !vec3<bool>(true, false, !global0.d.x), !all(vec4<bool>(true, arg_2, false, global0.a))));
    let var_1 = -846f;
    var var_2 = 24477u;
    return var_0.b;
}

fn func_1() -> vec4<i32> {
    global0 = func_2(firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(57508u >> (1u % 32u), _wgslsmith_clamp_u32(u_input.a, 12161u, 0u)), _wgslsmith_add_u32(~6018u, ~u_input.a))), u_input.b, false, abs(i32(-1i) * -2147483647i));
    global0 = Struct_1(!(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.x, u_input.b), vec2<i32>(global0.c.x, global0.b.x)) < (u_input.b & ~(-33961i))), global0.c, global0.c, vec3<bool>(func_2(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(41770u, 5468u), vec2<u32>(u_input.a, u_input.a))), 17582i, !all(global0.d), -2147483647i).d.x, false, u_input.a <= ~(u_input.a | u_input.a)));
    var var_0 = Struct_2(func_2(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), firstTrailingBit(vec2<u32>(17405u, 1u))), vec2<u32>(reverseBits(1u), 92815u), ~vec2<u32>(u_input.a, 22735u)), select(u_input.b, func_3(func_2(vec2<u32>(16604u, 100062u), u_input.b, global0.d.x, u_input.b)).x, true), !all(select(vec4<bool>(true, false, global0.a, true), vec4<bool>(global0.a, global0.d.x, false, global0.d.x), vec4<bool>(true, global0.d.x, global0.d.x, true))), ~13125i), Struct_1(false, func_2(vec2<u32>(100775u, u_input.a), 2147483647i, false, -1i).c, vec3<i32>(-11331i, -_wgslsmith_mod_i32(-2147483647i, u_input.b), 1i), global0.d), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(~u_input.a, ~1u, 4294967295u >> (u_input.a % 32u)) | vec3<u32>(~u_input.a, max(u_input.a, 4294967295u), u_input.a)));
    let var_1 = 1i;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1422f + _wgslsmith_div_f32(-369f, -1418f)) * _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -518f) - -651f)));
    return _wgslsmith_mod_vec4_i32(vec4<i32>(countOneBits(0i), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_1, var_0.b.b.x, -49511i, -37088i), vec4<i32>(-1i, global0.c.x, global0.b.x, var_0.b.b.x)), -1i, ~var_0.b.c.x), vec4<i32>(var_0.a.b.x, ~1i, var_1, _wgslsmith_mod_i32(global0.c.x, global0.c.x << (var_0.c.x % 32u)))) << (~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 39847u, 1u, var_0.c.x), vec4<u32>(4294967295u, 0u, var_0.c.x, 4294967295u)), ~vec4<u32>(u_input.a, u_input.a, 4664u, 0u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 27222u, 4294967295u, u_input.a), vec4<u32>(1u, 4294967295u, 53555u, u_input.a), vec4<u32>(u_input.a, 26874u, 4294967295u, u_input.a))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.d.x, min(~vec3<i32>(u_input.b, -20322i, ~global0.c.x), _wgslsmith_div_vec3_i32(-(~vec3<i32>(2307i, -1i, global0.b.x)), _wgslsmith_mult_vec3_i32(-global0.c, vec3<i32>(global0.c.x, -1i, -1243i) << (vec3<u32>(38496u, 1u, 115308u) % vec3<u32>(32u))))), global0.c, vec3<bool>(false, true, (global0.c.x & ~1i) == ~(-global0.c.x)));
    var var_1 = abs(-vec4<i32>(reverseBits(var_0.b.x & 2147483647i), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 53293i, var_0.b.x, 5245i), vec4<i32>(9116i, u_input.b, global0.c.x, -32768i), vec4<i32>(global0.b.x, global0.b.x, u_input.b, u_input.b)), func_1()), firstLeadingBit(-2147483647i), _wgslsmith_add_i32(u_input.b, -958i)));
    var var_2 = func_2(_wgslsmith_mod_vec2_u32(~vec2<u32>(~8662u, 56525u), ~(~vec2<u32>(u_input.a, 1u))), _wgslsmith_dot_vec2_i32(vec2<i32>(35841i, 1i), ~var_1.yw | var_1.wz) >> (max(u_input.a, u_input.a) % 32u), false, var_1.x);
    let var_3 = true | (true & (func_1().x < firstLeadingBit(13667i)));
    global1 = max(global0.b.x, 28995i);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, vec4<f32>(-965f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -170f)))), 2608f), countOneBits(abs(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, var_0.b.x, -1i), var_1.yww), _wgslsmith_mult_i32(u_input.b, var_2.c.x), firstTrailingBit(2147483647i), _wgslsmith_mod_i32(var_1.x, global0.b.x)))), _wgslsmith_add_u32(u_input.a, u_input.a), var_1.yx);
}

