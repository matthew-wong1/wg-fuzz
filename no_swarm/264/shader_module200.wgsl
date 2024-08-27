struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec4<bool>(true, true, true, true));

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: array<Struct_3, 17>;

var<private> global3: f32;

var<private> global4: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> f32 {
    let var_0 = global1.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(-1133f)), select(!global4.x, global4.x & !(!global4.x), (true & !global0.a.x) != true));
    var var_2 = abs(~(~select(_wgslsmith_clamp_u32(67910u, 4294967295u, 44745u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 38881u), vec2<u32>(33946u, 23994u)), !global4.x)));
    var var_3 = Struct_4(global2[_wgslsmith_index_u32(21235u, 17u)], Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -976f), false), !(~abs(u_input.b.x) != -_wgslsmith_sub_i32(u_input.b.x, u_input.a.x)));
    var var_4 = !global0.a.xy;
    return var_3.b.a;
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: f32, arg_3: vec2<bool>) -> bool {
    let var_0 = _wgslsmith_div_f32(arg_2, -1000f);
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-8966i << (0u % 32u), i32(-1i) * -43377i, _wgslsmith_mult_i32(u_input.c.x, -54898i)), vec3<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.yz, vec2<i32>(u_input.c.x, u_input.b.x)), abs(0i))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, u_input.b.x, u_input.c.x) ^ vec4<i32>(-7293i, -23570i, u_input.b.x, -683i), vec4<i32>(2147483647i, -20366i, u_input.c.x, u_input.c.x) | vec4<i32>(u_input.b.x, u_input.a.x, 54866i, 1i)), ~(-vec4<i32>(2147483647i, 2147483647i, u_input.b.x, 1i)))) & -(~u_input.b.x);
    global4 = !vec3<bool>(true, any(arg_3), global1.x);
    global2 = array<Struct_3, 17>();
    var var_2 = _wgslsmith_f_op_f32(sign(arg_1.x));
    return false;
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_5(global0.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1283f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1901f)))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2())));
    var var_3 = var_0;
    global0 = var_0;
    return Struct_3(Struct_2(global0.a.x, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1023f), func_3(_wgslsmith_f_op_f32(var_1 * var_1), vec3<f32>(-354f, -359f, 1178f), -192f, !vec2<bool>(var_0.a.x, true)))), var_1, Struct_1(-792f, (all(var_0.a.yz) || any(global0.a.wzx)) && var_0.a.x), Struct_2(global1.x & true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(709f))), global0.a.x)));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -1219f);
    global2 = array<Struct_3, 17>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, arg_0.a.b.a, 209f, arg_0.d.b.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.b.a, arg_0.b, 2575f, arg_0.a.b.a)))))));
    let var_1 = arg_0.a;
    var var_2 = global4.x;
    return func_1().d.b;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: f32) -> StorageBuffer {
    var var_0 = arg_1;
    global4 = !vec3<bool>(!func_4(Struct_3(Struct_2(arg_0.b, arg_0), arg_2, Struct_1(arg_0.a, true), Struct_2(true, Struct_1(arg_2, arg_0.b)))).b, !arg_0.b, all(!(!vec3<bool>(global0.a.x, global4.x, true))));
    let var_1 = _wgslsmith_mod_vec2_i32(~(~abs(select(u_input.c, vec2<i32>(u_input.c.x, u_input.c.x), vec2<bool>(global0.a.x, false)))), u_input.a.yy);
    global4 = vec3<bool>(!((!arg_0.b | !global1.x) | !(arg_0.a == arg_2)), all(!select(global0.a, vec4<bool>(false, global4.x, true, arg_0.b), true)), true);
    var_0 = _wgslsmith_dot_vec4_u32(max(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, reverseBits(arg_1), _wgslsmith_clamp_u32(0u, arg_1, arg_1), arg_1), vec4<u32>(select(arg_1, arg_1, false), arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(32735u, 4294967295u, 4294967295u), vec3<u32>(arg_1, arg_1, 20259u)), 1u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(42962u, arg_1, 52856u, 1u), vec4<u32>(arg_1, arg_1, 0u, 16013u) << (vec4<u32>(37573u, arg_1, 3187u, arg_1) % vec4<u32>(32u))), ~select(4294967295u, 51016u, true), 0u, 1u)), vec4<u32>(arg_1, abs(16372u), ~_wgslsmith_mod_u32(arg_1 >> (1u % 32u), arg_1), max(~(~arg_1), ~_wgslsmith_mult_u32(0u, arg_1))));
    return StorageBuffer(7121u, arg_1 ^ 0u, ~reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 72318u, 4294967295u), vec3<u32>(arg_1, 34482u, 4294967295u))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-1i, var_1.x), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_1.x, 1i, var_1.x, -1i)), -vec4<i32>(1i, var_1.x, u_input.b.x, 56426i)), -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -5425i, u_input.a.x, var_1.x << (10353u % 32u)), vec4<i32>(u_input.a.x, var_1.x, -2147483647i, u_input.a.x) | ~vec4<i32>(u_input.c.x, var_1.x, u_input.a.x, u_input.b.x))), arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(func_1()), ~_wgslsmith_dot_vec4_u32(~max(vec4<u32>(0u, 31235u, 0u, 25860u), vec4<u32>(72044u, 104098u, 0u, 9020u)), ~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2130f) + _wgslsmith_f_op_f32(f32(-1f) * -1035f)), _wgslsmith_f_op_f32(min(2467f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -886f), _wgslsmith_f_op_f32(func_2()))))));
}

