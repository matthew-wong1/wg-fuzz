struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: u32) -> vec3<u32> {
    let var_0 = 13235u;
    var var_1 = abs(~min(arg_3, ~_wgslsmith_add_u32(20498u, var_0)));
    var var_2 = Struct_2(~(~(firstLeadingBit(vec2<i32>(28308i, arg_1.b.x)) << (~vec2<u32>(4294967295u, u_input.b.x) % vec2<u32>(32u)))), arg_1.d, false, arg_1);
    var var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(arg_2.x | u_input.d, -select(36252i, u_input.d, arg_1.a)), arg_1.b.x, _wgslsmith_mod_i32(arg_1.b.x, min(_wgslsmith_div_i32(u_input.d, u_input.c), var_2.d.b.x))), arg_1.b);
    var_2 = Struct_2(arg_1.b.xx, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.d.x, var_2.d.d.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1116f, 1000f) - arg_1.d.x), _wgslsmith_div_f32(596f, arg_1.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.x, var_2.b.x, var_2.b.x, -543f) - var_2.b)), vec4<bool>((u_input.b.x == 1u) || all(vec2<bool>(true, false)), any(!vec4<bool>(var_2.c, true, var_2.c, true)), true, true))), arg_0, Struct_1(false, select(var_2.d.b, arg_2.xxz, select(select(vec3<bool>(arg_0, true, true), vec3<bool>(arg_1.a, false, true), vec3<bool>(arg_0, false, var_2.c)), vec3<bool>(false, var_2.d.a, true), select(vec3<bool>(true, arg_0, arg_1.a), vec3<bool>(false, arg_1.a, arg_1.a), vec3<bool>(false, false, arg_0)))), countOneBits(vec3<u32>(1019u, u_input.b.x, var_2.d.c.x | arg_1.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_2.d.d - arg_1.d), _wgslsmith_f_op_vec4_f32(var_2.b * vec4<f32>(258f, var_2.d.d.x, 810f, arg_1.d.x)))))));
    return var_2.d.c;
}

fn func_3() -> bool {
    global0 = array<vec3<u32>, 18>();
    var var_0 = reverseBits(reverseBits(~vec3<i32>(2147483647i, -1i, u_input.a)) & vec3<i32>(~u_input.a, u_input.d, 7303i)) << (~(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), reverseBits(vec3<u32>(1u, 55604u, u_input.b.x))) ^ _wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(u_input.b.x >> (80387u % 32u), 18u)], vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u))) % vec3<u32>(32u));
    let var_1 = Struct_2(var_0.xz, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(floor(121f)), _wgslsmith_f_op_f32(-132f + -1121f), _wgslsmith_f_op_f32(abs(-1199f)), _wgslsmith_f_op_f32(select(-1000f, 1700f, true))))))), false, Struct_1(all(vec3<bool>(0i >= u_input.c, true, all(vec2<bool>(false, true)))), vec3<i32>(0i, min(var_0.x, 30044i) | (u_input.c | -4575i), -var_0.x), _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(1u, u_input.b.x, 69338u)), ~global0[_wgslsmith_index_u32(35547u, 18u)], _wgslsmith_add_vec3_u32(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(128604u, 18u)])) ^ abs(~vec3<u32>(45444u, 4294967295u, u_input.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-683f, -1372f, _wgslsmith_f_op_f32(787f + -503f), _wgslsmith_f_op_f32(895f + -1572f)))));
    let var_2 = ~(~15873u);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x - -1115f)), var_1.d.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.d.d.x))))));
    return true;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_3 {
    var var_0 = Struct_2(firstTrailingBit(-vec2<i32>(u_input.d, arg_1.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.d.x))), -617f, _wgslsmith_div_f32(222f, -671f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1088f, arg_1.d.x)))))), any(vec2<bool>(arg_1.a, arg_1.a)), Struct_1(false, ~arg_1.b, ~min(max(arg_1.c, vec3<u32>(arg_1.c.x, 0u, u_input.b.x)), arg_1.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, _wgslsmith_f_op_f32(round(-1809f)), _wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(-arg_1.d.x)))));
    var_0 = Struct_2(vec2<i32>(-2147483647i, 12687i), var_0.d.d, false, Struct_1(func_3(), arg_1.b, ~(~(vec3<u32>(var_0.d.c.x, var_0.d.c.x, 1u) ^ vec3<u32>(u_input.b.x, 64125u, arg_1.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-790f, _wgslsmith_f_op_f32(-2062f + 1734f), 1f, arg_1.d.x))));
    global0 = array<vec3<u32>, 18>();
    let var_1 = arg_1;
    global0 = array<vec3<u32>, 18>();
    return Struct_3(Struct_1(true, _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, min(var_1.b.x, -1i), reverseBits(u_input.a)), var_0.d.b), vec3<u32>(u_input.b.x, select(var_0.d.c.x << (32196u % 32u), firstLeadingBit(arg_1.c.x), !var_1.a), u_input.b.x), var_1.d), Struct_1(_wgslsmith_div_f32(-1842f, var_0.d.d.x) < -246f, var_0.d.b, _wgslsmith_mod_vec3_u32(vec3<u32>(~24098u, 0u, _wgslsmith_div_u32(3009u, 57694u)), _wgslsmith_mod_vec3_u32(var_1.c, ~global0[_wgslsmith_index_u32(var_1.c.x, 18u)])), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(var_1.d))))), Struct_2(arg_1.b.yx, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-693f, -1795f, arg_1.d.x, var_1.d.x)))), !func_3(), Struct_1(true, _wgslsmith_mult_vec3_i32(abs(arg_1.b), select(arg_1.b, var_1.b, false)), var_0.d.c, var_1.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(~_wgslsmith_dot_vec3_u32(func_1(any(vec2<bool>(true, false)), Struct_1(false, vec3<i32>(39770i, u_input.a, 18317i), global0[_wgslsmith_index_u32(28047u, 18u)], vec4<f32>(-2183f, -1000f, 565f, -285f)), vec4<i32>(u_input.a, -23970i, u_input.a, 47753i) >> (vec4<u32>(47926u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(54166u, u_input.b.x))), firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 18u)])), Struct_1(_wgslsmith_sub_i32(abs(u_input.a), -u_input.d) >= ~(~u_input.a), firstTrailingBit(~vec3<i32>(-32303i, u_input.d, u_input.a)), select(max(~vec3<u32>(u_input.b.x, u_input.b.x, 51019u), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(12694u, 1227u, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), 18u)], false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2564f, -566f, -1259f, 1119f))))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1784f, -1685f, 980f, 458f) - vec4<f32>(-1488f, -326f, -172f, -617f)))))));
    var var_1 = Struct_3(var_0.a, Struct_1(-select(var_0.b.b.x, 0i, true) != (u_input.c << ((u_input.b.x << (u_input.b.x % 32u)) % 32u)), (vec3<i32>(-1i) * -var_0.b.b) | ~(~vec3<i32>(-2662i, 0i, 4381i)), var_0.a.c, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b.d * var_0.a.d), var_0.c.d.d)))), Struct_2(~var_0.b.b.zz, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b.d.x, -250f, var_0.b.d.x, 769f), vec4<f32>(-1000f, var_0.c.b.x, 642f, var_0.b.d.x))) + _wgslsmith_div_vec4_f32(vec4<f32>(455f, var_0.c.b.x, -1794f, var_0.b.d.x), var_0.a.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c.d.d)), true)), true, Struct_1(!any(vec4<bool>(true, false, var_0.c.d.a, var_0.c.c)), ~vec3<i32>(-24726i, -2147483647i, -2147483647i), var_0.a.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_0.a.d, vec4<f32>(366f, var_0.c.d.d.x, var_0.c.d.d.x, var_0.c.b.x)))))));
    var var_2 = var_0;
    var var_3 = vec4<u32>(9088u, ~(~func_2(0u, var_0.a).b.c.x), var_0.a.c.x, 1u);
    var var_4 = Struct_2(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(var_2.a.b.xx, var_0.b.b.yx, vec2<i32>(1i, var_2.c.a.x)), vec2<i32>(var_1.b.b.x, u_input.c) ^ var_2.c.a), select(var_2.b.b.zz, var_2.b.b.xy, select(vec2<bool>(var_1.c.d.a, var_1.c.d.a), vec2<bool>(var_1.c.c, true), vec2<bool>(var_0.a.a, var_1.c.c))), _wgslsmith_clamp_vec2_i32(var_1.b.b.yy, _wgslsmith_sub_vec2_i32(vec2<i32>(var_2.b.b.x, -2147483647i), var_2.a.b.yz), min(var_0.c.a, vec2<i32>(var_0.a.b.x, -22340i)))), var_2.c.a), var_2.a.d, u_input.b.x != max(0u, max(1u, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(10617u, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]))), func_2(var_0.a.c.x, Struct_1(func_2(var_3.x, Struct_1(var_0.c.c, vec3<i32>(-45108i, -1i, 1i), var_3.wxx, vec4<f32>(var_0.a.d.x, var_1.a.d.x, var_1.a.d.x, -2177f))).a.a, vec3<i32>(var_2.a.b.x, _wgslsmith_mod_i32(var_0.c.d.b.x, u_input.a), reverseBits(11222i)), ~(~vec3<u32>(var_2.c.d.c.x, u_input.b.x, 4294967295u)), func_2(var_1.c.d.c.x, func_2(u_input.b.x, Struct_1(var_2.c.c, vec3<i32>(2147483647i, -16644i, 0i), vec3<u32>(4294967295u, 2925u, var_1.c.d.c.x), vec4<f32>(711f, -722f, -213f, var_0.c.b.x))).c.d).b.d)).a);
    let var_5 = func_2(~_wgslsmith_div_u32(76069u, 9842u), func_2(34030u | (1u ^ abs(var_1.c.d.c.x)), var_4.d).c.d).c.d;
    var var_6 = 58947i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(var_4.d.b.x, 39691i, var_4.d.b.x, var_5.b.x)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(var_1.b.b.x, 79676i, var_2.a.b.x, var_0.c.a.x), vec4<i32>(-5499i, var_4.a.x, 1i, var_0.a.b.x)), vec4<i32>(0i, 49555i >> (1u % 32u), var_4.a.x, var_4.a.x)), ~min(-vec4<i32>(17790i, -6764i, 0i, var_1.b.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(940i, var_4.d.b.x, var_5.b.x, -47290i), vec4<i32>(11448i, var_4.a.x, var_1.b.b.x, -2147483647i)))), vec3<f32>(_wgslsmith_div_f32(152f, _wgslsmith_f_op_f32(step(1411f, 293f))), var_4.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.d.x)))))));
}

