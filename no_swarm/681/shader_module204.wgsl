struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: u32 = 0u;

var<private> global2: vec2<i32> = vec2<i32>(-1i, 9328i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>) -> vec3<i32> {
    var var_0 = vec2<bool>(~(~9642u << ((global0.c | 0u) % 32u)) > 0u, !global0.e);
    var var_1 = ~(global0.c ^ _wgslsmith_mod_u32(u_input.a.x, ~arg_0.x));
    global2 = vec2<i32>(30994i, 14280i);
    let var_2 = (arg_1.x >> (global0.a.a.x % 32u)) & arg_0.x;
    let var_3 = ~global0.b ^ global0.b;
    return vec3<i32>(i32(-1i) * -global2.x, global2.x, ~_wgslsmith_sub_i32(-1i, 0i));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>, arg_3: i32) -> bool {
    let var_0 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(~1i, -2147483647i), _wgslsmith_mod_vec2_i32(arg_2.zz, arg_2.yx) | _wgslsmith_add_vec2_i32(arg_2.yz, vec2<i32>(-48748i, -31646i))), global2.x), firstLeadingBit(_wgslsmith_clamp_i32(0i & (global0.b & global2.x), -arg_2.x, -(~0i))), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, arg_2.x) << (~global0.d.b.a % vec3<u32>(32u)), -arg_2) ^ select(4522i, -_wgslsmith_dot_vec2_i32(vec2<i32>(40567i, -2147483647i), arg_2.zx), true), reverseBits(abs(firstLeadingBit(i32(-1i) * -1i))));
    return false & global0.e;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = func_4(Struct_2(4294967295u, Struct_1(~global0.a.a & ~global0.d.b.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global0.d.c.b, global0.d.c.b))))), global0.a, 30445u, _wgslsmith_add_u32(87282u, 64942u)), 546f, -func_3(vec2<u32>(arg_0, 77850u), global0.d.b.a.zy) | _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, firstLeadingBit(-32921i), global0.b), abs(~vec3<i32>(-41300i, -15356i, -3040i))), _wgslsmith_add_i32(~u_input.b >> (select(~u_input.a.x, 4853u, true) % 32u), select(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(1i, 2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -1i))), firstLeadingBit(_wgslsmith_div_i32(u_input.b, 1i)), false)));
    global1 = _wgslsmith_add_u32(firstLeadingBit(global0.c), _wgslsmith_sub_u32(0u, (1u | ~arg_0) | 0u));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global0.a.b))));
    global0 = Struct_3(Struct_1(_wgslsmith_mult_vec3_u32(global0.d.b.a, vec3<u32>(78171u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.d, 0u, 59554u, arg_0), vec4<u32>(arg_0, 1u, 14139u, 32341u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, global0.d.e, 13005u, arg_0)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_1))))), global2.x, 4294967295u, global0.d, true);
    let var_2 = Struct_2(countOneBits(abs(1u)), Struct_1(reverseBits(vec3<u32>(_wgslsmith_div_u32(24370u, 29791u), 28797u, 1u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))))), Struct_1(~(~vec3<u32>(0u, u_input.a.x, u_input.a.x)), global0.a.b), global0.a.a.x, _wgslsmith_sub_u32(max(_wgslsmith_mod_u32(~73985u, _wgslsmith_clamp_u32(1u, 37011u, arg_0)), firstTrailingBit(firstTrailingBit(4294967295u))), ~arg_0));
    return var_2.c;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: bool) -> vec3<i32> {
    global1 = 1u;
    global0 = Struct_3(func_2(global0.a.a.x), u_input.b, _wgslsmith_clamp_u32(func_2(33855u).a.x, _wgslsmith_mod_u32(69099u, 30695u), abs(global0.d.b.a.x >> (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u))), Struct_2(28829u, Struct_1(abs(vec3<u32>(global0.c, 84742u, 0u) | global0.a.a), -1745f), global0.a, global0.c, u_input.a.x), global0.b > -12207i);
    let var_0 = !arg_2;
    var var_1 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(594f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))) - _wgslsmith_f_op_f32(arg_1 + -168f))), global0.a.b);
    var var_2 = select(select(vec3<bool>(true, true, true), select(select(!vec3<bool>(arg_2, true, global0.e), select(vec3<bool>(var_0, false, false), vec3<bool>(true, true, global0.e), vec3<bool>(false, true, false)), true), !select(vec3<bool>(true, arg_2, false), vec3<bool>(true, arg_2, false), vec3<bool>(false, true, var_0)), vec3<bool>(false, select(true, var_0, false), arg_2)), all(vec2<bool>(true, true))), !vec3<bool>(true, any(vec2<bool>(arg_2, global0.e)), global0.e), !(!select(select(vec3<bool>(true, global0.e, arg_2), vec3<bool>(global0.e, global0.e, true), vec3<bool>(var_0, global0.e, global0.e)), select(vec3<bool>(true, var_0, global0.e), vec3<bool>(arg_2, true, true), true), any(vec4<bool>(global0.e, true, global0.e, true)))));
    return ~vec3<i32>(~(-3399i), select(-1i, _wgslsmith_sub_i32(u_input.b, arg_0), true) ^ u_input.b, ~(~(~0i)));
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: bool) -> Struct_2 {
    var var_0 = global0.d.c;
    global1 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(func_2(~u_input.a.x).a.x, var_0.a.x), 64666u | ~(global0.a.a.x | 0u), abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, u_input.a.x, u_input.a.x), vec4<u32>(1u, u_input.a.x, var_0.a.x, u_input.a.x)))), ~(~func_2(global0.a.a.x).a));
    global2 = arg_0.zx;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 524f, 167f))))))));
    let var_2 = vec2<f32>(-725f, global0.a.b);
    return Struct_2(58431u, global0.a, func_2(_wgslsmith_sub_u32(53727u, 0u >> (_wgslsmith_add_u32(9162u, u_input.a.x) % 32u))), select(min(firstLeadingBit(4294967295u), _wgslsmith_add_u32(1u & u_input.a.x, _wgslsmith_sub_u32(global0.c, u_input.a.x))), global0.d.b.a.x, true), ~var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(-_wgslsmith_add_vec4_i32(vec4<i32>(-33548i, u_input.b, -5613i, u_input.b) << (vec4<u32>(22532u, 42250u, 54086u, 4294967295u) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(u_input.b, -12493i, 2147483647i, 0i))) & vec4<i32>(global2.x, i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(func_1(52020i, global0.d.c.b, false), -vec3<i32>(global2.x, 14746i, 2147483647i)), 1402i), -1147f, select(true, global0.e, false));
    global2 = ~vec2<i32>(~global2.x, u_input.b);
    global2 = -vec2<i32>(abs(global2.x >> (u_input.a.x % 32u)) & 2147483647i, firstLeadingBit(-18753i));
    let var_1 = global0.a;
    var var_2 = Struct_3(Struct_1(var_1.a, _wgslsmith_f_op_f32(-724f * -1036f)), global2.x, 8448u | u_input.a.x, global0.d, true);
    let var_3 = 696f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(540f, var_2.a.b, 969f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3, 547f, var_2.d.c.b), vec3<f32>(270f, var_3, 1186f), vec3<bool>(var_2.e, var_2.e, false)))) + vec3<f32>(_wgslsmith_f_op_f32(select(1000f, 584f, false)), _wgslsmith_f_op_f32(ceil(var_0.b.b)), 1000f)))), vec3<u32>(u_input.a.x ^ 1u, ~(~(~var_0.e)), 1u), _wgslsmith_div_f32(-1404f, var_3));
}

