struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: bool,
    e: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec4<f32>;

var<private> global2: i32;

var<private> global3: u32;

var<private> global4: Struct_3;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: u32) -> Struct_3 {
    global4 = Struct_3(-select(1i & (global0.x ^ 0i), global0.x >> (_wgslsmith_sub_u32(31439u, arg_0) % 32u), all(vec4<bool>(false, global4.b.b.a, global4.c.a.a, true)) != select(global4.b.b.a, global4.b.c, false)), global4.c, Struct_2(Struct_1(firstTrailingBit(-43418i) == ~(-9126i)), Struct_1(false & global4.c.a.a), false, true, ~global4.c.e), 1u);
    let var_0 = any(select(!select(vec3<bool>(global4.c.a.a, global4.c.a.a, global4.b.a.a), !vec3<bool>(false, false, global4.b.c), select(vec3<bool>(global4.c.d, global4.b.b.a, global4.b.b.a), vec3<bool>(true, true, global4.c.a.a), global4.b.d)), select(!(!vec3<bool>(true, false, global4.c.a.a)), !select(vec3<bool>(global4.c.d, true, false), vec3<bool>(global4.b.d, true, true), global4.c.a.a), select(!vec3<bool>(false, false, global4.c.a.a), select(vec3<bool>(global4.c.c, false, global4.b.b.a), vec3<bool>(false, global4.c.d, global4.c.a.a), global4.b.d), true)), !(!vec3<bool>(global4.b.d, global4.c.a.a, true))));
    let var_1 = global4.b;
    var var_2 = 2482f;
    let var_3 = !select(!(!(!vec3<bool>(true, global4.b.a.a, global4.c.b.a))), select(vec3<bool>(true, !var_0, global4.b.c), !(!vec3<bool>(var_0, false, var_1.d)), var_1.a.a), global4.c.c);
    return Struct_3(reverseBits(~select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, global4.a, 8581i, global4.a), vec4<i32>(u_input.c, u_input.c, global0.x, global4.a)), abs(1i), var_1.a.a)), global4.b, global4.c, arg_0);
}

fn func_1() -> u32 {
    global4 = func_2(_wgslsmith_sub_u32(5698u, max(u_input.a >> (firstTrailingBit(u_input.a) % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, global4.c.e.x, 46135u), vec3<u32>(u_input.b, u_input.b, 1u)))));
    global3 = abs(~(~u_input.a));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(~3421u, 1u, 99566u), _wgslsmith_add_vec3_u32(select(~vec3<u32>(u_input.a, 21633u, 72530u), abs(vec3<u32>(84680u, u_input.a, u_input.b)), true == global4.b.d) & firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(global4.d, 0u, u_input.b), vec3<u32>(2568u, 15031u, 0u), vec3<u32>(57403u, global4.b.e.x, global4.d))), ~firstLeadingBit(vec3<u32>(4294967295u, global4.d, u_input.a))));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<u32>) -> f32 {
    global3 = select(global4.c.e.x, ~arg_2.x, arg_0.x);
    global4 = func_2(~countOneBits(~1u));
    var var_0 = 1655f != arg_1;
    var_0 = true;
    var_0 = true || (-global0.x != (global4.a ^ ~_wgslsmith_div_i32(1i, -37039i)));
    return _wgslsmith_f_op_f32(f32(-1f) * -253f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(_wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 33652u, global4.c.e.x, 20326u), vec4<u32>(24672u, 1u, global4.c.e.x, 4294967295u)), ~vec4<u32>(global4.b.e.x, global4.d, global4.c.e.x, global4.c.e.x)), abs(vec4<u32>(1u, _wgslsmith_mod_u32(global4.b.e.x, u_input.a), func_1(), 4294967295u))) ^ ~select(vec4<u32>(~3873u, 27446u, ~23224u, firstTrailingBit(global4.c.e.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.a, global4.d, 59428u), _wgslsmith_sub_vec4_u32(vec4<u32>(7560u, 35989u, 1u, global4.c.e.x), vec4<u32>(80785u, u_input.b, 1u, u_input.b))), !global4.b.d);
    let var_1 = global4.c.d;
    global1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(692f, -1181f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, global1.x)) - _wgslsmith_f_op_f32(func_3(vec2<bool>(false, global4.b.d), -598f, vec4<u32>(global4.b.e.x, u_input.a, 76054u, 4294967295u)))))), _wgslsmith_div_f32(global1.x, 490f))));
    global2 = _wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(~abs(vec3<i32>(1i, global0.x, -73531i)), -vec3<i32>(global4.a, 49905i, -29191i)), global0.x);
    global0 = min(_wgslsmith_div_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(1818i, global4.a)), ~(~select(vec2<i32>(global0.x, global0.x), vec2<i32>(-2147483647i, 1252i), vec2<bool>(true, false)))), ~(select(vec2<i32>(-51092i, 22254i), vec2<i32>(-21046i, global4.a) ^ vec2<i32>(global0.x, global4.a), 1i <= global4.a) >> (global4.b.e % vec2<u32>(32u))));
    let var_2 = select(vec4<bool>(func_2(_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 36880u, 106382u, u_input.a), vec4<u32>(global4.d, 1u, var_0.x, global4.c.e.x), global4.c.d), countOneBits(vec4<u32>(var_0.x, 94953u, 1u, var_0.x)))).b.a.a, true, func_2(countOneBits(_wgslsmith_mult_u32(1u, u_input.a))).b.d, any(select(vec4<bool>(global4.c.b.a, global4.c.d, global4.b.d, global4.c.d), vec4<bool>(global4.c.b.a, global4.c.a.a, global4.b.d, true), !vec4<bool>(global4.b.d, global4.b.c, global4.c.d, true)))), vec4<bool>(global4.b.b.a || false, true, true, !any(vec2<bool>(true, false))), !(!vec4<bool>(global4.b.c, !global4.c.b.a, func_2(global4.d).c.c, any(vec4<bool>(true, global4.c.b.a, global4.c.c, true)))));
    let var_3 = Struct_3(u_input.c, global4.b, func_2(64552u).c, func_1());
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.b | _wgslsmith_div_u32(firstTrailingBit(global4.b.e.x), u_input.a)));
}

