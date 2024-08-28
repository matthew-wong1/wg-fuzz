struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: i32 = -7163i;

var<private> global2: Struct_4;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_2) -> vec3<i32> {
    global0 = Struct_3(arg_3);
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-811f + 1527f)), _wgslsmith_f_op_f32(abs(arg_3.c))), -746f, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c + -1188f) - global0.a.c)))));
    global2 = arg_0;
    let var_1 = ~(arg_1.yw << (~arg_1.xz % vec2<u32>(32u)));
    global1 = -1i;
    return u_input.b;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(global0.a);
    global1 = firstTrailingBit(var_0.a.d);
    var var_1 = _wgslsmith_clamp_vec3_i32(~_wgslsmith_sub_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(global0.a.d, global2.b.x, u_input.b.x), vec3<i32>(global0.a.d, var_0.a.d, var_0.a.d)), -u_input.b), select(func_3(Struct_4(all(vec3<bool>(false, false, false)), ~vec2<i32>(global0.a.d, 1i), 15183i, _wgslsmith_mult_vec3_i32(vec3<i32>(global2.b.x, global2.b.x, 10826i), vec3<i32>(u_input.d, global2.c, global2.d.x)), -u_input.b), min(min(vec4<u32>(global0.a.a, var_0.a.a, u_input.a, 10917u), vec4<u32>(0u, 1u, 4294967295u, var_0.a.b)), vec4<u32>(global0.a.b, 13216u, 71859u, var_0.a.b)), _wgslsmith_mult_u32(max(4294967295u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, 8361u), vec4<u32>(4294967295u, 44853u, 37058u, global0.a.a))), global0.a), vec3<i32>(~select(-1i, 42438i, true), 1i, select(global2.b.x, _wgslsmith_sub_i32(global2.e.x, 2147483647i), true)), _wgslsmith_clamp_u32(~var_0.a.b, 52309u, _wgslsmith_div_u32(0u, u_input.a)) >= _wgslsmith_add_u32(~var_0.a.a, 1u)), vec3<i32>(22094i, global2.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.d, 30016i), global2.d.xy)));
    let var_2 = ~vec2<u32>(global0.a.a, ~(~24134u) >> (var_0.a.a % 32u));
    var var_3 = Struct_1(var_0.a.e.a, all(vec4<bool>(global0.a.e.b, reverseBits(var_1.x) != 1i, false, (false && global2.a) | true)), all(vec3<bool>(any(select(vec3<bool>(global0.a.e.b, true, global0.a.e.b), vec3<bool>(false, false, var_0.a.e.a), vec3<bool>(var_0.a.e.a, global2.a, false))), true, global0.a.e.c)));
    return Struct_3(Struct_2(firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_0.a.b, var_2.x), countOneBits(u_input.c))), max(reverseBits(u_input.c) | abs(1u), ~(u_input.c & 4294967295u)), global0.a.c, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(global0.a.d, 0i), _wgslsmith_dot_vec3_i32(global2.e, global2.e)), u_input.b.zz), var_0.a.e));
}

fn func_1(arg_0: i32) -> Struct_3 {
    global0 = func_2();
    global2 = Struct_4(global2.a, u_input.b.yy, max(17507i, -34242i), u_input.b, _wgslsmith_div_vec3_i32(~(abs(vec3<i32>(arg_0, arg_0, -26908i)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 954u, global0.a.a), vec3<u32>(global0.a.a, u_input.c, u_input.c)) % vec3<u32>(32u))), ~vec3<i32>(_wgslsmith_dot_vec2_i32(global2.d.zz, global2.e.yz), global2.b.x, min(arg_0, 0i))));
    global1 = 2147483647i;
    let var_0 = Struct_5(global0.a, 2147483647i, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-557f, global0.a.c))), global2.e);
    let var_1 = Struct_1(!var_0.a.e.a, all(select(select(select(vec4<bool>(var_0.a.e.b, global2.a, true, global2.a), vec4<bool>(global2.a, global0.a.e.b, global0.a.e.c, true), true), vec4<bool>(true, true, true, true), global0.a.d > var_0.d.x), vec4<bool>(global2.a, true, all(vec3<bool>(false, false, global2.a)), any(vec2<bool>(global2.a, false))), !var_0.a.e.a)), var_0.a.e.a);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(countOneBits(global0.a.d));
    let var_0 = vec3<bool>(true, all(select(vec3<bool>(false, true, global0.a.e.a), select(vec3<bool>(true, true, global0.a.e.a), vec3<bool>(true, global2.a, true), global2.a), !vec3<bool>(global0.a.e.c, false, false))) | (u_input.c == ~(~4294967295u)), all(select(!vec4<bool>(false, global2.a, false, true), select(select(vec4<bool>(global2.a, global0.a.e.a, global2.a, global0.a.e.c), vec4<bool>(true, true, false, false), true), select(vec4<bool>(global2.a, global0.a.e.a, false, global2.a), vec4<bool>(global0.a.e.a, global0.a.e.c, true, true), true), false), select(select(vec4<bool>(false, global2.a, false, true), vec4<bool>(global2.a, global0.a.e.c, global0.a.e.b, global0.a.e.a), false), select(vec4<bool>(true, true, true, true), vec4<bool>(global2.a, true, false, false), global0.a.e.c), vec4<bool>(false, false, true, true)))));
    var var_1 = false;
    var var_2 = abs(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(~global2.b.x, _wgslsmith_add_i32(global0.a.d, global2.d.x)), (46963i & global0.a.d) & global2.c), u_input.d, (1i << (abs(0u) % 32u)) | _wgslsmith_dot_vec2_i32(u_input.b.xz, -vec2<i32>(global0.a.d, 39654i)), u_input.b.x));
    global0 = Struct_3(global0.a);
    let var_3 = Struct_5(global0.a, max(global2.c, 2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1014f), _wgslsmith_f_op_f32(floor(global0.a.c))), vec2<f32>(global0.a.c, _wgslsmith_f_op_f32(-global0.a.c)), true)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-691f, global0.a.c)), vec2<f32>(1814f, global0.a.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.c, global0.a.c) * vec2<f32>(global0.a.c, 672f)))))), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.c, var_3.a.a), vec4<u32>(var_3.a.b, 4294967295u, var_3.a.b, var_3.a.b) | vec4<u32>(0u, global0.a.b, 131185u, u_input.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a, 37297u), vec4<u32>(21606u, 4294967295u, 9937u, 0u)) << ((vec4<u32>(48230u, 9881u, 27282u, var_3.a.a) & vec4<u32>(1u, var_3.a.a, global0.a.a, global0.a.b)) % vec4<u32>(32u)))), vec2<i32>(15489i, ~1i), abs(min(min(vec4<i32>(var_2.x, -2147483647i, 1526i, 38262i) | vec4<i32>(var_3.a.d, u_input.b.x, -2147483647i, 0i), firstLeadingBit(vec4<i32>(global2.b.x, 0i, global2.d.x, var_2.x))), vec4<i32>(0i, -33511i, _wgslsmith_dot_vec2_i32(vec2<i32>(46332i, -8470i), vec2<i32>(var_3.a.d, -2359i)), min(global0.a.d, 2147483647i)))));
}

