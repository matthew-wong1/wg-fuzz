struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: i32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 18285u;

var<private> global1: vec3<u32> = vec3<u32>(1u, 0u, 20453u);

var<private> global2: array<vec2<u32>, 22>;

var<private> global3: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec4<f32>) -> f32 {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-193f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-423f + -260f) + _wgslsmith_f_op_f32(819f - -586f)), arg_1.c.b))));
    var var_0 = vec2<i32>(select(-25103i, arg_0.d.x, arg_0.b.x && (-2147483647i <= arg_0.d.x)), ~firstLeadingBit(-arg_1.b.a));
    global0 = firstLeadingBit(global1.x);
    let var_1 = u_input.b < arg_1.a;
    var_0 = vec2<i32>(arg_1.c.c.a, var_0.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-111f - _wgslsmith_f_op_f32(step(arg_1.c.b, arg_2.x)))))));
}

fn func_4(arg_0: vec2<f32>) -> f32 {
    let var_0 = ~(~(~(~vec4<u32>(u_input.a, global1.x, 80626u, global1.x))));
    let var_1 = reverseBits(~35306u);
    global0 = _wgslsmith_add_u32((max(_wgslsmith_dot_vec4_u32(var_0, vec4<u32>(var_1, 10399u, 32917u, 19274u)), 1u) << (~(~30835u) % 32u)) ^ countOneBits(39352u), ~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.b, u_input.a), ~var_0.yxw)));
    var var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, global1.x | 4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 23203u, var_0.x, 23786u), var_0) << (16722u % 32u)), max(~min(vec3<u32>(33532u, global1.x, 35550u), ~vec3<u32>(30422u, 4294967295u, 32918u)), vec3<u32>(~(var_0.x ^ 76443u), ~u_input.b & global1.x, 21470u << (countOneBits(51649u) % 32u))));
    let var_3 = -1i;
    return -1378f;
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -827f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(func_4(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(func_3(Struct_5(31297i, vec2<bool>(false, true), vec3<i32>(-2147483647i, -1i, 0i), vec3<i32>(2147483647i, 1i, u_input.c)), Struct_3(1u, Struct_1(u_input.c), Struct_2(vec2<f32>(-1102f, -991f), arg_0.x, Struct_1(-2482i), -897f)), vec4<f32>(arg_0.x, -1527f, 385f, 487f)))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1010f)) * _wgslsmith_f_op_f32(arg_0.x + -518f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-462f)))));
    var var_1 = ~u_input.b;
    let var_2 = i32(-1i) * -3236i;
    var var_3 = Struct_4(u_input.c >> (abs(~1u) % 32u), false);
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(arg_0)), 989f, Struct_1(-(~1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(776f))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_4.d, _wgslsmith_f_op_f32(f32(-1f) * -1609f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 395f))) - -187f);
}

fn func_5(arg_0: vec2<bool>, arg_1: f32, arg_2: vec2<u32>, arg_3: vec3<i32>) -> u32 {
    let var_0 = Struct_3(4294967295u, Struct_1(_wgslsmith_mod_i32(-12224i, _wgslsmith_clamp_i32(u_input.c, ~arg_3.x, firstTrailingBit(-1i)))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 + 1023f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(sign(arg_1)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1641f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_5(arg_3.x, arg_0, vec3<i32>(arg_3.x, 2147483647i, -2147483647i), arg_3), Struct_3(arg_2.x, Struct_1(0i), Struct_2(vec2<f32>(arg_1, 720f), 1135f, Struct_1(-13816i), 553f)), vec4<f32>(arg_1, arg_1, arg_1, 2273f))))))), Struct_1(~(i32(-1i) * -1i)), 453f));
    global1 = ~_wgslsmith_add_vec3_u32(select(vec3<u32>(max(0u, arg_2.x), _wgslsmith_div_u32(4294967295u, 4294967295u), arg_2.x >> (1u % 32u)), vec3<u32>(_wgslsmith_div_u32(1u, arg_2.x), global1.x ^ 1u, min(var_0.a, 4294967295u)), !any(arg_0)), ~reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(27176u, var_0.a, arg_2.x), vec3<u32>(66234u, 0u, 0u))));
    global0 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, ~arg_2.x, reverseBits(~global1.x | _wgslsmith_mod_u32(arg_2.x, u_input.b))), _wgslsmith_sub_vec3_u32(~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, var_0.a, 28825u), vec3<u32>(arg_2.x, arg_2.x, arg_2.x)), vec3<u32>(arg_2.x, 1u, var_0.a)), vec3<u32>(~4294967295u | var_0.a, _wgslsmith_mod_u32(25799u, ~var_0.a), _wgslsmith_dot_vec2_u32(global1.yy, ~global2[_wgslsmith_index_u32(var_0.a, 22u)]))));
    global3 = arg_1;
    let var_1 = firstLeadingBit(_wgslsmith_div_u32(arg_2.x, 1u)) >= 22603u;
    return 1u;
}

fn func_6(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_5) -> Struct_3 {
    global3 = _wgslsmith_f_op_f32(func_3(Struct_5(arg_2.c.x, vec2<bool>(1f <= _wgslsmith_f_op_f32(ceil(-307f)), u_input.c > reverseBits(u_input.c)), vec3<i32>(max(30074i << (0u % 32u), -1i), ~u_input.c, max(~u_input.c, u_input.c)), arg_2.c), Struct_3(u_input.a ^ 0u, Struct_1(0i), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-902f, -1000f))) - vec2<f32>(584f, -1972f)), 818f, Struct_1(0i), _wgslsmith_f_op_f32(-2072f + _wgslsmith_f_op_f32(round(-940f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 1561f, 179f, -654f)))))));
    global1 = select(vec3<u32>(~36111u, max(1u, global1.x), u_input.a), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(0u, arg_1.x, 1u), vec3<u32>(global1.x, global1.x, 32783u), vec3<bool>(false, arg_0.x, false)) << (_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, 3802u, 0u), vec3<u32>(50438u, global1.x, u_input.b)) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, arg_1.x, 61037u) >> (vec3<u32>(global1.x, 1u, global1.x) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, arg_1.x, arg_1.x), abs(vec3<u32>(16862u, 0u, global1.x))), vec3<u32>(4294967295u, 1u, global1.x)), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, global1.x, 4294967295u), vec3<u32>(1u, 0u, 46478u)))), all(select(select(!arg_2.b, !vec2<bool>(true, arg_0.x), !vec2<bool>(false, arg_2.b.x)), !vec2<bool>(arg_2.b.x, true), select(arg_2.b.x, select(true, true, arg_2.b.x), true))));
    var var_0 = !select(vec2<bool>((arg_0.x & true) == arg_2.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global1.x), global1.zx) >= select(arg_1.x, arg_1.x, true)), select(select(select(arg_0, arg_2.b, arg_2.b), vec2<bool>(true, arg_0.x), !vec2<bool>(arg_2.b.x, arg_2.b.x)), arg_2.b, arg_0.x | false), !(!vec2<bool>(true, arg_2.b.x)));
    global2 = array<vec2<u32>, 22>();
    return Struct_3(arg_1.x, Struct_1(_wgslsmith_mult_i32(-(arg_2.a | u_input.c), u_input.c)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-681f, -1607f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-582f, -1032f) * vec2<f32>(-846f, 1000f)), arg_2.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1997f, 2205f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<f32>(-201f, 841f)))), Struct_1(firstTrailingBit(u_input.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(327f + -329f) + 468f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1917f, -1054f)))));
}

fn func_1() -> bool {
    var var_0 = u_input.a;
    let var_1 = !(!vec4<bool>(false, u_input.c <= u_input.c, true, false));
    global0 = ~abs(global1.x);
    var var_2 = !var_1.zyz;
    let var_3 = func_6(vec2<bool>(all(var_1), true), global2[_wgslsmith_index_u32(~0u ^ func_5(select(vec2<bool>(var_2.x, false), !vec2<bool>(true, var_1.x), !vec2<bool>(false, var_1.x)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-597f, 477f))))), abs(global1.yy) << ((global2[_wgslsmith_index_u32(66681u, 22u)] | vec2<u32>(global1.x, 0u)) % vec2<u32>(32u)), vec3<i32>(1i << (u_input.b % 32u), 2416i, u_input.c)), 22u)], Struct_5(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(2147483647i, u_input.c)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, -2147483647i), -vec2<i32>(u_input.c, 0i))), !vec2<bool>(var_1.x, true | var_2.x), select(vec3<i32>(max(2147483647i, u_input.c), -1i, reverseBits(1i)), reverseBits(select(vec3<i32>(-29003i, -2147483647i, u_input.c), vec3<i32>(32828i, u_input.c, -16699i), false)), all(select(vec3<bool>(var_2.x, var_1.x, var_2.x), var_1.wwx, var_1.x))), vec3<i32>(-2147483647i, _wgslsmith_sub_i32(-u_input.c, -u_input.c), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.c, u_input.c), u_input.c))));
    return any(vec3<bool>(true, var_2.x, !(_wgslsmith_f_op_f32(sign(727f)) >= _wgslsmith_f_op_f32(-var_3.c.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = (~_wgslsmith_sub_vec3_u32(max(vec3<u32>(0u, 34198u, global1.x), vec3<u32>(4294967295u, global1.x, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(global1.x, 50241u, 1u), vec3<u32>(21440u, u_input.a, global1.x))) & vec3<u32>(0u, 64852u, min(1u, global1.x))) | ~vec3<u32>(global1.x, ~_wgslsmith_mult_u32(0u, 54288u), ~(global1.x << (global1.x % 32u)));
    global0 = 1u;
    let var_0 = Struct_1(firstTrailingBit(u_input.c));
    var var_1 = Struct_4(-30640i, func_1() && true);
    let var_2 = _wgslsmith_f_op_f32(max(-398f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-452f, 1379f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1010f))));
    var_1 = Struct_4(-8365i, var_1.b);
    var var_3 = Struct_3(31178u, func_6(vec2<bool>(false, !var_1.b), vec2<u32>(29768u, 1u), Struct_5(0i, vec2<bool>(var_1.b, var_1.b), vec3<i32>(~var_1.a, _wgslsmith_div_i32(-10914i, -1i), -8215i), vec3<i32>(u_input.c, firstLeadingBit(u_input.c), u_input.c << (4294967295u % 32u)))).b, func_6(vec2<bool>(var_1.b, true), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.b, global1.x), ~vec4<u32>(42713u, u_input.b, u_input.a, global1.x)), _wgslsmith_clamp_u32(u_input.b, 38116u, global1.x << (1u % 32u))), Struct_5(var_1.a, select(vec2<bool>(true, var_1.b), vec2<bool>(true, true), true), abs(vec3<i32>(0i, var_0.a, 14869i)) | vec3<i32>(var_1.a, -68094i, 19083i), (vec3<i32>(var_0.a, 2147483647i, u_input.c) ^ vec3<i32>(-16791i, 0i, var_0.a)) & vec3<i32>(0i, var_1.a, -10793i))).c);
    global3 = var_3.c.a.x;
    let var_4 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~firstTrailingBit(~_wgslsmith_div_i32(2147483647i, var_3.b.a)), _wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(9370i, -2147483647i, -7897i, -39932i) & vec4<i32>(var_0.a, var_1.a, var_3.c.c.a, u_input.c), vec4<i32>(0i, var_3.b.a, 26628i, -1i)), ~vec4<i32>(-var_0.a, var_3.c.c.a, ~(-2147483647i), u_input.c)));
}

