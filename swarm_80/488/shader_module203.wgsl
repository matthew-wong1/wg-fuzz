struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec4<u32>;

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

var<private> global3: Struct_2 = Struct_2(i32(-2147483648), -2428f);

var<private> global4: array<Struct_2, 28>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_2(-3172i, _wgslsmith_f_op_f32(1020f + _wgslsmith_f_op_f32(-1156f - global3.b)));
    let var_1 = ~global1.xwx;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1447f, _wgslsmith_f_op_f32(-global3.b))) * _wgslsmith_f_op_f32(ceil(var_0.b))), global3.b));
    let var_3 = Struct_2(8692i, var_0.b);
    let var_4 = ~abs(countOneBits(~vec2<u32>(13739u, 0u)) & _wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, 1u), vec2<u32>(u_input.c, global0.x)));
    return ~(~((vec4<u32>(global1.x, global0.x, global0.x, u_input.c) ^ vec4<u32>(global1.x, 4294967295u, 4294967295u, var_1.x)) | vec4<u32>(var_4.x, 50040u, global1.x, var_4.x)) ^ vec4<u32>(5916u, 0u, 45435u, _wgslsmith_add_u32(~1u, var_1.x)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec4<i32> {
    let var_0 = arg_0;
    let var_1 = global3.b;
    let var_2 = ~(~vec2<i32>(var_0.d ^ 24309i, 1i));
    global3 = global4[_wgslsmith_index_u32(var_0.e, 28u)];
    return ~vec4<i32>(_wgslsmith_mod_i32(abs(0i), ~10262i), ~(var_2.x << (~4294967295u % 32u)), select(firstLeadingBit(firstLeadingBit(2147483647i)), var_0.d, any(!vec4<bool>(false, arg_0.b, arg_0.b, true))), arg_0.d);
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_4) -> bool {
    var var_0 = 2147483647i;
    var_0 = global3.a;
    global0 = ~_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, global0.x, 119055u, 1u), countOneBits(func_2())) << (firstTrailingBit(vec4<u32>(global0.x, _wgslsmith_clamp_u32(~global0.x, arg_2.d.c, global0.x), ~(~global0.x), func_2().x)) % vec4<u32>(32u));
    let var_1 = global1.yz;
    let var_2 = _wgslsmith_sub_vec4_i32(func_3(arg_2.d, global2.x || !any(global2.xy)), ~(vec4<i32>(global3.a, ~0i, abs(u_input.d), -18067i) & vec4<i32>(_wgslsmith_div_i32(2147483647i, arg_0.x), abs(2147483647i), -2147483647i, 1i ^ arg_2.d.d)));
    return 1i != u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(vec4<bool>(func_1(u_input.b, 547f, Struct_4(751f, Struct_2(-12424i, 341f), Struct_2(20931i, 501f), Struct_1(u_input.a.x, global2.x, 4294967295u, 23101i, global0.x))), any(vec4<bool>(global2.x, true, global2.x, global2.x)), global2.x | global2.x, all(vec4<bool>(false, global2.x, true, global2.x))), vec4<bool>(true, global2.x, !global2.x, global2.x == global2.x), global2.x), !select(select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(global2.x, global2.x, global2.x, global2.x), true), select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(false, global2.x, true, global2.x), vec4<bool>(global2.x, global2.x, false, false)), global2.x), global2.x | all(select(global2.xy, vec2<bool>(true, global2.x), global2.x))), select(vec4<bool>(all(vec3<bool>(global2.x, global2.x, global2.x)), false, !all(vec3<bool>(global2.x, global2.x, global2.x)), any(global2.xz) && select(false, global2.x, global2.x)), vec4<bool>(global2.x, abs(u_input.d) <= -1i, true, u_input.b.x > u_input.d), vec4<bool>(global3.a >= (u_input.d & -2147483647i), true, false, !(!global2.x))), global2.x);
    var var_1 = vec4<u32>(u_input.c, u_input.c, 4294967295u, 0u) & (abs(vec4<u32>(~global1.x, 4294967295u, _wgslsmith_clamp_u32(90438u, 4294967295u, global1.x), u_input.a.x)) | vec4<u32>(global1.x, u_input.c, u_input.c, u_input.c));
    var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(select(global3.b, _wgslsmith_f_op_f32(154f + -557f), global1.x < _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(var_1.zx, vec2<u32>(global0.x, global0.x)), _wgslsmith_mod_vec2_u32(firstLeadingBit(global1.xx), vec2<u32>(1u, global1.x)))));
    var var_3 = ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global1.x, 1u, var_1.x, 0u)), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(90868u, 4294967295u, u_input.c, 1815u)), ~vec4<u32>(u_input.c, 4294967295u, 0u, 19446u), vec4<u32>(u_input.a.x, 21522u, u_input.a.x, 0u) << (vec4<u32>(global1.x, 71302u, global0.x, global0.x) % vec4<u32>(32u)))) | ~global0.x;
    let var_4 = abs(vec3<i32>(-1i, -16162i, firstLeadingBit(u_input.b.x)));
    var var_5 = 14769u << (~u_input.c % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.b, -vec3<i32>(-2147483647i, 38702i, -1i)), _wgslsmith_div_i32(_wgslsmith_div_i32(-53493i, -1i), -2147483647i << (global0.x % 32u)) >> ((_wgslsmith_dot_vec2_u32(var_1.xw, u_input.a) << (1u % 32u)) % 32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(floor(global3.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) + 1036f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-969f, -142f, 1112f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-130f, global3.b, global3.b))))), min(45421u << (0u % 32u), abs(reverseBits(~var_1.x))), _wgslsmith_add_u32(_wgslsmith_sub_u32(~80672u, ~global0.x), 31890u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2, -570f), vec2<f32>(683f, var_2)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(994f, global3.b)))));
}

