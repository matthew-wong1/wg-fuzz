struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, vec3<bool>(false, true, false), Struct_2(vec4<bool>(true, true, false, true), Struct_1(1668f, 2147483647i, 56384u, 26021i, vec3<bool>(false, false, true)), vec2<f32>(-257f, -1000f), Struct_1(192f, -170i, 6911u, 1i, vec3<bool>(false, false, false)), Struct_1(-1267f, i32(-2147483648), 24979u, 2147483647i, vec3<bool>(false, false, true))));

var<private> global1: vec4<i32>;

var<private> global2: vec2<i32>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: Struct_4) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -344f), -1036f), vec2<f32>(_wgslsmith_f_op_f32(-1238f + global0.c.b.a), arg_1.x)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - -588f)), _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x + arg_3.a.x)))))));
    global0 = Struct_3(true, !(!vec3<bool>(any(global0.c.a), all(global0.c.a), true)), Struct_2(vec4<bool>(any(global0.b.xy), ~arg_3.b != max(arg_3.d.x, 1u), any(!global0.c.a), true), global0.c.d, arg_1.yx, global0.c.d, global0.c.d));
    let var_1 = global0.c;
    let var_2 = global0.c.e.c | 29559u;
    let var_3 = global0.c;
    return ~abs(abs(arg_3.d.yx));
}

fn func_2() -> i32 {
    let var_0 = global1.wz | vec2<i32>(_wgslsmith_sub_i32(23094i, _wgslsmith_dot_vec3_i32(vec3<i32>(9745i, -2147483647i, 1i), vec3<i32>(u_input.b.x, global1.x, 0i))), 11674i);
    let var_1 = reverseBits(~_wgslsmith_div_vec2_u32(~func_3(global0.c.d.a, vec3<f32>(global0.c.d.a, global0.c.d.a, -130f), global0.c.c, Struct_4(vec3<f32>(global0.c.e.a, global0.c.c.x, global0.c.d.a), global0.c.e.c, global0.c.d.c, vec3<u32>(1u, global0.c.b.c, 2664u))), vec2<u32>(1878u, abs(global0.c.b.c))));
    global0 = Struct_3(~min(~global0.c.d.c, _wgslsmith_mod_u32(global0.c.d.c, u_input.a)) >= abs(_wgslsmith_mult_u32(var_1.x, ~1u)), select(vec3<bool>(false, true, true), global0.b, _wgslsmith_f_op_f32(-global0.c.e.a) <= global0.c.c.x), Struct_2(vec4<bool>(!global0.c.b.e.x | select(global0.c.a.x, true, true), !select(true, true, true), global0.c.e.e.x && global0.c.d.e.x, true), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2464f + global0.c.e.a) + global0.c.c.x), global1.x, 28u, 13228i, global0.b), vec2<f32>(_wgslsmith_f_op_f32(select(global0.c.e.a, 1000f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(829f * -346f))), global0.c.b, Struct_1(1096f, u_input.b.x, ~(~35491u), global2.x, global0.c.a.wxx)));
    global1 = reverseBits(_wgslsmith_clamp_vec4_i32(-(~vec4<i32>(global1.x, 2147483647i, global2.x, global2.x)), ~min(-vec4<i32>(-5351i, 1i, global2.x, global0.c.d.b), abs(vec4<i32>(-3242i, global2.x, global1.x, 1i))), vec4<i32>(~(-1i), -29924i, global1.x, _wgslsmith_mod_i32(select(global2.x, 1i, global0.b.x), 0i))));
    var var_2 = ~firstTrailingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(global0.c.d.c, var_1.x, global0.c.e.c), ~vec3<u32>(1u, 0u, 4294967295u)));
    return var_0.x;
}

fn func_1(arg_0: vec2<i32>) -> vec4<i32> {
    global1 = vec4<i32>(global0.c.b.d, firstTrailingBit(-2147483647i), global2.x, ~(~firstLeadingBit(global2.x) << (1u % 32u)));
    var var_0 = _wgslsmith_div_vec2_i32(u_input.b.xz, vec2<i32>(2147483647i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, arg_0.x, global1.x), global1.yxx), -global1.wzw), _wgslsmith_add_i32(0i << (0u % 32u), func_2()), arg_0.x >> (1u % 32u))));
    let var_1 = ~(~global0.c.e.c);
    let var_2 = Struct_3(true, vec3<bool>(global0.b.x, true, all(global0.c.a)), Struct_2(!(!(!vec4<bool>(true, global0.a, true, false))), global0.c.d, global0.c.c, global0.c.b, Struct_1(817f, ~(-1i), var_1, ~(-2147483647i), global0.b)));
    let var_3 = Struct_3(global0.c.e.e.x, !select(var_2.b, var_2.b, var_2.b.x), Struct_2(vec4<bool>(any(global0.c.a.zxy), any(global0.b.yy), true, all(vec3<bool>(var_2.b.x, var_2.c.e.e.x, var_2.a))), global0.c.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.c.c.x, var_2.c.d.a))))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.c.e.a))), -reverseBits(1i), 25277u, -39307i, vec3<bool>(var_2.b.x, all(vec2<bool>(global0.a, var_2.b.x)), var_0.x > 1i)), global0.c.b));
    return reverseBits(vec4<i32>(7441i, 15204i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.c.b.d, global1.x, var_3.c.b.d, 1i), vec4<i32>(12861i, var_3.c.b.d, var_0.x, global1.x)), vec4<i32>(-54360i, var_3.c.b.d, var_2.c.e.d, global0.c.e.d)), _wgslsmith_mod_i32(_wgslsmith_add_i32(var_3.c.e.d, 8221i), var_2.c.d.d ^ 568i), 25331i), _wgslsmith_div_i32(firstLeadingBit(global2.x) | _wgslsmith_dot_vec4_i32(vec4<i32>(25017i, var_2.c.e.d, -1i, -14993i), vec4<i32>(1i, var_3.c.d.b, u_input.b.x, 26362i)), _wgslsmith_mod_i32(u_input.b.x, i32(-1i) * -2686i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(2404u, ~min(1u, global0.c.d.c), _wgslsmith_add_u32(4294967295u, u_input.a) & abs(u_input.a)) << (vec3<u32>(~u_input.a, global0.c.d.c >> (u_input.a % 32u), global0.c.b.c) % vec3<u32>(32u));
    global1 = countOneBits(~func_1(vec2<i32>(0i, u_input.b.x)) >> (vec4<u32>(var_0.x, 4294967295u, _wgslsmith_add_u32(~var_0.x, max(global0.c.d.c, global0.c.b.c)), ~1u) % vec4<u32>(32u)));
    let var_1 = Struct_3(any(!global0.c.e.e), global0.b, Struct_2(!select(!vec4<bool>(true, false, true, global0.b.x), vec4<bool>(global0.a, global0.b.x, global0.b.x, false), false), global0.c.e, _wgslsmith_f_op_vec2_f32(global0.c.c - global0.c.c), global0.c.d, global0.c.b));
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(551f, var_1.c.d.a, -707f), vec3<f32>(-492f, var_1.c.d.a, 816f))) - vec3<f32>(var_1.c.b.a, -867f, 1184f)) * vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.c.d.a)), -429f, global0.c.c.x)))), select(var_0.x & abs(~73415u), _wgslsmith_sub_u32((u_input.a & 12965u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 46640u, 32038u, 20348u), vec4<u32>(16695u, 4294967295u, 1u, global0.c.d.c)), var_0.x), false), ~var_1.c.b.c, _wgslsmith_mod_vec3_u32(var_0, abs(vec3<u32>(~var_0.x, 67076u, global0.c.b.c))));
    global0 = Struct_3(true, vec3<bool>(select(true, global0.b.x, all(vec4<bool>(var_1.a, var_1.b.x, false, var_1.a)) || true), true, true), Struct_2(!vec4<bool>(global0.a, global0.c.d.e.x, all(vec2<bool>(false, var_1.b.x)), !var_1.b.x), Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.c.c.x, var_1.c.e.a), _wgslsmith_div_f32(359f, var_1.c.e.a)), ~global2.x, 422u, -60625i, global0.b), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(global0.c.b.a - global0.c.b.a), _wgslsmith_f_op_f32(1000f - -662f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(var_2.a.zy, var_1.c.c, global0.c.d.e.x)), _wgslsmith_f_op_vec2_f32(round(var_1.c.c)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - -953f)), 1i, u_input.a, firstLeadingBit(countOneBits(global1.x)), !var_1.b), Struct_1(-570f, func_1(vec2<i32>(var_1.c.e.b, global2.x)).x, select(var_1.c.b.c, global0.c.d.c, 2147483647i > var_1.c.b.d), max(1i, 33643i), !(!vec3<bool>(global0.b.x, true, global0.c.e.e.x)))));
    let var_3 = global0.c.e.d;
    let x = u_input.a;
    s_output = StorageBuffer(global1.zwy);
}

