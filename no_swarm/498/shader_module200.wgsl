struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_2;

var<private> global2: array<vec3<u32>, 29>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -firstLeadingBit(min(global1.b, 2147483647i) | (-2147483647i << (u_input.c.x % 32u))), -52246i);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, global0.x, global1.c, -2147483647i) | vec4<i32>(2147483647i, 2147483647i, 22479i, -1i), ~vec4<i32>(var_0.c, 2147483647i, -81392i, -20543i)), abs(min(vec4<i32>(57278i, global1.c, -62450i, global1.c), vec4<i32>(2147483647i, var_0.b, u_input.b, -30698i)))), 10376i), ~(-48048i));
    var var_2 = global0.zwz;
    let var_3 = !(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), all(vec4<bool>(true, false, false, false))), vec3<bool>(true, true, true), true));
    let var_4 = !(!vec4<bool>(all(vec2<bool>(var_3.x, var_3.x)), 1u > min(u_input.a, 0u), true, true));
    return ~u_input.c.x;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec2<bool>, arg_3: vec3<u32>) -> vec3<bool> {
    var var_0 = Struct_1(!(!(!vec3<bool>(false, false, arg_2.x))), i32(-1i) * -51113i, true, arg_1);
    var_0 = Struct_1(vec3<bool>(!any(vec2<bool>(var_0.c, var_0.a.x)), !arg_2.x != false, reverseBits(global0.x) >= _wgslsmith_dot_vec2_i32(~global0.yw, global0.yz)), ~((_wgslsmith_sub_i32(global0.x, -1i) & global0.x) & -46622i), all(select(vec3<bool>(true, var_0.a.x, var_0.a.x), vec3<bool>(true, var_0.c, false), !vec3<bool>(true, true, var_0.c))) || (true & all(!arg_2)), global1.a);
    var_0 = Struct_1(select(!select(select(vec3<bool>(false, false, false), var_0.a, var_0.a), vec3<bool>(arg_2.x, false, true), !arg_2.x), vec3<bool>(var_0.c, !any(var_0.a.xz), !var_0.a.x), var_0.a), _wgslsmith_div_i32(min((var_0.b | var_0.b) & abs(u_input.b), var_0.b | ~var_0.b), -59250i), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d)))));
    global0 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(~min(vec4<i32>(global1.c, u_input.b, global1.b, 1i), vec4<i32>(u_input.b, -1i, global1.c, var_0.b) << (vec4<u32>(arg_0, 1u, 0u, u_input.a) % vec4<u32>(32u))), vec4<i32>(~(-2147483647i), global0.x, -var_0.b, global0.x)), vec4<i32>(2147483647i, ~var_0.b, ~_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b, var_0.b), firstTrailingBit(vec2<i32>(42111i, -35517i))), 1i));
    global1 = Struct_2(arg_1, -u_input.b, 1i);
    return vec3<bool>(!all(vec2<bool>(true, true)) || arg_2.x, !var_0.c, var_0.c);
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = max(reverseBits(abs(global0.wyz << (vec3<u32>(13725u, 4065u, u_input.a) % vec3<u32>(32u)))) << (countOneBits(global2[_wgslsmith_index_u32(55175u, 29u)]) % vec3<u32>(32u)), global0.www);
    let var_1 = Struct_1(func_4(u_input.a, global1.a, vec2<bool>(any(vec4<bool>(true, true, true, true)), select(true, arg_0 == 62282u, true)), firstLeadingBit(min(vec3<u32>(u_input.a, 42520u, 0u), global2[_wgslsmith_index_u32(arg_0, 29u)])) << (global2[_wgslsmith_index_u32(~func_3(vec2<u32>(1u, arg_0)), 29u)] % vec3<u32>(32u))), _wgslsmith_mod_i32(-18726i, global1.b), false && (global0.x >= global0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-156f, global1.a))))), -1000f)));
    let var_2 = var_1.c;
    let var_3 = _wgslsmith_f_op_f32(-global1.a);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-358f - -319f)))), ~(global1.c << (~u_input.c.x % 32u)), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(_wgslsmith_mult_i32(41011i, global1.b), _wgslsmith_mult_i32(-19826i, 1i), global1.c)), min(vec3<i32>(7232i, u_input.b, -2147483647i) ^ var_0, var_0)));
    return u_input.b;
}

fn func_1() -> i32 {
    global2 = array<vec3<u32>, 29>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(floor(-688f)))), select(1i, 2804i, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))), _wgslsmith_add_i32(u_input.b, _wgslsmith_mult_i32(func_2(select(68890u, 0u, true)), _wgslsmith_clamp_i32(10871i, global0.x, u_input.b) | ~global0.x)));
    var var_1 = ~var_0.c;
    global1 = Struct_2(-796f, -1i, 14839i);
    global1 = Struct_2(global1.a, -1i, _wgslsmith_div_i32(var_0.c << ((u_input.a >> (u_input.a % 32u)) % 32u), min(-global1.c, var_0.c)));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1();
    global2 = array<vec3<u32>, 29>();
    global1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -2147483647i, _wgslsmith_dot_vec4_i32(-(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 43014i, -2147483647i, 2147483647i), vec4<i32>(global0.x, global0.x, -13171i, -8722i)) | -vec4<i32>(global1.b, -39017i, -6807i, 2147483647i)), vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(29388i, -1i, u_input.b, 0i), vec4<i32>(58680i, -1i, u_input.b, global0.x), vec4<i32>(0i, 2147483647i, global1.c, 2147483647i))));
    global1 = Struct_2(-295f, -10442i, ~(_wgslsmith_dot_vec3_i32(global0.xxw, vec3<i32>(-18670i, u_input.b, u_input.b)) ^ _wgslsmith_dot_vec4_i32(min(vec4<i32>(-1i, global1.c, u_input.b, global0.x), vec4<i32>(global0.x, global1.b, -3692i, global0.x)), ~vec4<i32>(global0.x, 2147483647i, -11108i, -21206i))));
    var_0 = reverseBits(~(-17699i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, ~u_input.a), select(u_input.c, u_input.c, vec2<bool>(true, any(vec2<bool>(false, false))))));
}

