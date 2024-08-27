struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: vec3<u32> = vec3<u32>(1u, 16084u, 87433u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: u32, arg_3: i32) -> bool {
    let var_0 = -vec2<i32>(min(countOneBits(arg_1), _wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_1, arg_3, -48302i), 2147483647i)), -2147483647i);
    let var_1 = Struct_3(vec3<bool>(!(_wgslsmith_dot_vec2_i32(var_0, var_0) < -u_input.a), all(global0.zz), true && !arg_0.x), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, abs(2147483647i), -1i), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -9011i, arg_3), vec3<i32>(u_input.a, 2147483647i, -8172i)), arg_1, abs(-31786i))), abs(-u_input.a)));
    let var_2 = -848f;
    var var_3 = var_1.a;
    global1 = vec3<u32>(arg_2, ~(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 4294967295u, 55204u, 27082u), vec4<u32>(521u, 29049u, u_input.b, 60730u)), ~arg_2)), global1.x);
    return var_1.a.x;
}

fn func_3() -> bool {
    global0 = !vec3<bool>(false, any(select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, false, global0.x, true), select(vec4<bool>(global0.x, true, false, true), vec4<bool>(false, global0.x, true, false), true))), ~(4294967295u & u_input.c) <= (73297u | u_input.b));
    let var_0 = countOneBits(~((_wgslsmith_mod_vec3_u32(vec3<u32>(68661u, 8555u, 50472u), vec3<u32>(63216u, global1.x, global1.x)) & vec3<u32>(1u, 1u, u_input.b)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(0u, 36666u, 1u) << (vec3<u32>(1u, 1u, u_input.c) % vec3<u32>(32u)), vec3<u32>(53583u, 35498u, 4294967295u) >> (vec3<u32>(u_input.c, u_input.c, global1.x) % vec3<u32>(32u)))));
    var var_1 = u_input.a;
    return !((!(true && global0.x) || any(select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), global0.x))) != true);
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_3(select(select(!(!vec3<bool>(false, global0.x, global0.x)), vec3<bool>(global0.x, func_2(vec4<bool>(true, false, global0.x, global0.x), 14869i, u_input.c, 2147483647i), global0.x), !vec3<bool>(global0.x, global0.x, global0.x)), vec3<bool>(global0.x, func_3(), true), vec3<bool>(global0.x, any(global0.yz), true)), Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a), 2147483647i >> (1u % 32u)), _wgslsmith_mod_vec3_i32(-vec3<i32>(9501i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))), firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1952i, 0i, 10627i), _wgslsmith_div_i32(-1i, u_input.a)))));
    let var_1 = all(vec4<bool>(!func_3(), global0.x, func_3(), true));
    let var_2 = ~_wgslsmith_div_vec3_i32(~vec3<i32>(-21203i, -2147483647i, ~13569i), vec3<i32>(var_0.b.b, -u_input.a, var_0.b.a.x) << (max(abs(vec3<u32>(1u, u_input.c, 0u)), ~vec3<u32>(global1.x, u_input.b, u_input.b)) % vec3<u32>(32u)));
    return vec3<bool>(var_1, any(select(vec4<bool>(true, global0.x, var_0.a.x, all(vec3<bool>(false, global0.x, true))), select(!vec4<bool>(var_0.a.x, var_1, true, var_1), select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(var_1, var_1, var_0.a.x, true), true), vec4<bool>(true, var_0.a.x, false, false)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, 27226i, var_0.b.a.x), vec4<i32>(0i, var_0.b.b, var_2.x, -2147483647i)) < firstTrailingBit(2147483647i))), !all(var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(22692u, u_input.b & ~global1.x), global1.x, ~u_input.b), vec3<u32>(u_input.c, global1.x, _wgslsmith_clamp_u32(~0u, global1.x >> (u_input.b % 32u), ~0u)) << (~countOneBits(vec3<u32>(u_input.c, 58310u, 6390u)) % vec3<u32>(32u)));
    var var_0 = vec3<i32>(u_input.a, -2147483647i, _wgslsmith_mod_i32(2147483647i, u_input.a));
    var var_1 = select(vec3<bool>(any(func_1()), !global0.x, !func_1().x), !(!select(!vec3<bool>(false, global0.x, false), !vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(global0.x, global0.x, global0.x))), !vec3<bool>(true, global0.x, !global0.x == !global0.x));
    global0 = vec3<bool>(global0.x, !any(vec4<bool>(false, global1.x < 0u, false, false)), true);
    var var_2 = Struct_3(vec3<bool>(select(any(vec4<bool>(var_1.x, false, true, var_1.x)), var_1.x, func_3()), var_1.x, true), Struct_1(-(abs(vec3<i32>(37148i, -44045i, var_0.x)) & vec3<i32>(u_input.a, -28350i, var_0.x)), -2147483647i));
    let var_3 = 7398u;
    let var_4 = Struct_2(var_2.b, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1145f)), -240f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2267f, -2193f))), _wgslsmith_f_op_f32(trunc(-1000f))))), 1u, Struct_1(reverseBits(vec3<i32>(~var_0.x, ~(-1i), _wgslsmith_add_i32(25813i, var_2.b.b))), -(~u_input.a) | var_2.b.a.x));
    var_0 = -(vec3<i32>(firstTrailingBit(abs(var_0.x)), _wgslsmith_div_i32(_wgslsmith_div_i32(2147483647i, 7154i), var_4.d.a.x), var_2.b.a.x) & (-var_2.b.a >> ((vec3<u32>(global1.x, 13069u, var_4.c) | vec3<u32>(u_input.c, u_input.c, 52306u)) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, var_4.b.x, _wgslsmith_sub_u32(6190u, select(~global1.x, ~var_4.c, true)), reverseBits(~global1.x), _wgslsmith_f_op_f32(f32(-1f) * -2023f));
}

