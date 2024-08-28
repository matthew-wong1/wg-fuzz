struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, true), vec3<f32>(904f, -793f, -1960f));

var<private> global1: vec4<i32> = vec4<i32>(0i, 2981i, -50107i, 5307i);

var<private> global2: f32;

var<private> global3: array<Struct_1, 27>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<bool>) -> vec4<i32> {
    global2 = -345f;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - global0.b.x))) * arg_0.x) * _wgslsmith_f_op_f32(sign(-1000f)));
    let var_0 = Struct_3(Struct_2(Struct_1(!(!vec2<bool>(true, arg_1.x)), global0.b)), !(true | all(select(vec2<bool>(true, global0.a.x), vec2<bool>(global0.a.x, false), global0.a.x))), Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(_wgslsmith_add_u32(91244u, 1u)), firstLeadingBit(47049u << (1u % 32u))), 27u)]));
    var var_1 = min(u_input.a.x, u_input.a.x) & abs(global1.x);
    var var_2 = _wgslsmith_div_u32(~max(_wgslsmith_mult_u32(abs(1u), 1u), 0u), ~(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(2227u, 87967u), vec2<u32>(0u, 4294967295u), var_0.a.a.a.x), vec2<u32>(1u, 1u))));
    return -(vec4<i32>(global1.x, i32(-1i) * -2147483647i, reverseBits(u_input.a.x), _wgslsmith_add_i32(global1.x, global1.x)) ^ ~(vec4<i32>(global1.x, global1.x, -73495i, -1i) & vec4<i32>(u_input.a.x, global1.x, -37849i, u_input.a.x))) & -vec4<i32>(global1.x, 1i, reverseBits(1i), global1.x);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: u32) -> Struct_1 {
    global1 = firstTrailingBit(func_3(vec3<f32>(125f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, global0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -429f)), vec3<bool>(!all(vec3<bool>(global0.a.x, global0.a.x, true)), true, global0.a.x)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(270f)));
    var var_1 = 37861u;
    var var_2 = -global1.x | 28210i;
    var_2 = ~firstLeadingBit(~(-28013i));
    return Struct_1(select(!global0.a, global0.a, all(select(!vec4<bool>(true, global0.a.x, global0.a.x, false), select(vec4<bool>(false, true, global0.a.x, false), vec4<bool>(true, global0.a.x, false, global0.a.x), global0.a.x), !vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true)))), global0.b);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(Struct_2(func_2(~2147483647i, -119f, 56473u)), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), !vec3<bool>(global0.a.x, true, true))), arg_0);
    var var_1 = arg_0.a;
    global1 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, global1.x), vec4<i32>(-1107i, global1.x, global1.x, 35828i)), vec4<i32>(u_input.a.x, 0i, -46830i, -6362i), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, -1i, global1.x, -4755i) | vec4<i32>(u_input.a.x, global1.x, 56526i, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, global1.x), vec4<i32>(2147483647i, u_input.a.x, 1i, u_input.a.x))))), vec4<i32>(global1.x, _wgslsmith_mult_i32(~29371i, -16774i >> (firstTrailingBit(1u) % 32u)), global1.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(max(global1.x, 15455i), ~14352i), _wgslsmith_dot_vec4_i32(vec4<i32>(35363i, -1i, 0i, u_input.a.x) & vec4<i32>(0i, global1.x, 2147483647i, 13290i), vec4<i32>(u_input.a.x, global1.x, u_input.a.x, u_input.a.x)))));
    var_1 = global3[_wgslsmith_index_u32(~39470u, 27u)];
    global0 = Struct_1(func_2(_wgslsmith_dot_vec3_i32(global1.zxw, global1.xww), -367f, 1u).a, global0.b);
    return func_2(~countOneBits(func_3(_wgslsmith_f_op_vec3_f32(sign(global0.b)), select(vec3<bool>(var_1.a.x, false, true), vec3<bool>(global0.a.x, var_1.a.x, true), var_0.b)).x), -382f, ~(1u >> (_wgslsmith_sub_u32(1u, 1u) % 32u)));
}

fn func_1() -> Struct_2 {
    let var_0 = -u_input.a.x;
    global3 = array<Struct_1, 27>();
    let var_1 = func_4(Struct_2(func_2(-_wgslsmith_sub_i32(global1.x, 9487i), _wgslsmith_div_f32(_wgslsmith_div_f32(160f, global0.b.x), _wgslsmith_f_op_f32(sign(-139f))), 65773u)));
    global2 = global0.b.x;
    let var_2 = 70978u & (_wgslsmith_div_u32(1u, ~_wgslsmith_clamp_u32(37388u, 0u, 0u)) >> (reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(43139u, 62804u, 1u)))) % 32u));
    return Struct_2(Struct_1(vec2<bool>(var_1.a.x && var_1.a.x, all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b * vec3<f32>(-541f, var_1.b.x, global0.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(), global0.a.x, Struct_2(func_2(-1i, -130f, ~1u)));
    global3 = array<Struct_1, 27>();
    let var_1 = func_2(global1.x, 1003f, 1u);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-217f, 291f, var_1.b.x, var_0.c.a.b.x), vec4<f32>(var_0.c.a.b.x, -2778f, global0.b.x, var_0.a.a.b.x), vec4<bool>(true, false, false, false))) - _wgslsmith_div_vec4_f32(vec4<f32>(267f, -1438f, 785f, -353f), vec4<f32>(863f, var_0.a.a.b.x, var_0.c.a.b.x, -855f))))));
    let var_3 = Struct_1(vec2<bool>(var_1.a.x, false), var_2.yww);
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_div_i32(-2147483647i, 1i)), u_input.a.x | ~abs(-global1.x), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, 1u, 1u)) & ~firstLeadingBit(vec3<u32>(9674u, 62368u, 1u)), vec3<u32>(select(41736u, 1u, global0.a.x), 1u, 1u) & vec3<u32>(1u, 1u, 1u)));
}

