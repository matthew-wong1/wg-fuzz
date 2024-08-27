struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: Struct_1 = Struct_1(vec3<i32>(-29650i, -1i, -16339i), -771f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    let var_0 = i32(-1i) * -2284i;
    let var_1 = ~_wgslsmith_add_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(select(vec2<u32>(109149u, 4716u), vec2<u32>(42931u, 4294967295u), global1.xy), abs(vec2<u32>(u_input.b, u_input.b)))), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, 1u), ~(~vec2<u32>(u_input.b, 60540u))));
    let var_2 = !all(vec3<bool>(true, true, any(!vec2<bool>(global1.x, false))));
    var var_3 = !var_2 | global1.x;
    var var_4 = global0[_wgslsmith_index_u32(~87185u, 27u)];
    return ~(firstTrailingBit(~abs(vec3<i32>(-43853i, 2147483647i, 0i))) >> (vec3<u32>(0u, _wgslsmith_mult_u32(73241u, _wgslsmith_dot_vec4_u32(vec4<u32>(17558u, var_1.x, u_input.b, 1u), vec4<u32>(28434u, 4294967295u, 4294967295u, 1u))), 0u) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> vec4<i32> {
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    let var_0 = arg_0;
    var var_1 = (false || any(vec4<bool>(all(vec4<bool>(false, var_0.b, true, global1.x)), true, false, all(vec4<bool>(global1.x, true, false, arg_0.b))))) & false;
    return ~vec4<i32>(firstTrailingBit(firstTrailingBit(-arg_1.a.x)), min(-17817i, global2.a.x) ^ 2147483647i, abs(u_input.a.x), -21673i);
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> bool {
    let var_0 = func_4(arg_0, Struct_1(max(countOneBits(func_3()), select(~global2.a, vec3<i32>(83635i, global2.a.x, -2147483647i), global1.x)), -165f), true, Struct_2((_wgslsmith_mult_u32(3393u, u_input.b) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, u_input.b, 1u))) != u_input.b, _wgslsmith_div_f32(-892f, _wgslsmith_f_op_f32(arg_1 * 431f)) <= arg_1, vec3<bool>(!global1.x, arg_0.a, arg_0.b)));
    let var_1 = ~_wgslsmith_mult_vec2_i32(u_input.a.zy, _wgslsmith_mult_vec2_i32(~select(var_0.yx, vec2<i32>(global2.a.x, u_input.a.x), false), _wgslsmith_sub_vec2_i32(u_input.a.yz, vec2<i32>(-654i, global2.a.x)) | vec2<i32>(1i, global2.a.x)));
    var var_2 = 1i;
    global1 = arg_0.c;
    let var_3 = ~(~(reverseBits(max(vec2<u32>(8021u, 4294967295u), vec2<u32>(u_input.b, u_input.b))) & _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, 1u))));
    return arg_0.c.x;
}

fn func_1() -> i32 {
    global1 = !vec3<bool>(global1.x, any(vec4<bool>(true, global1.x, true, !global1.x)), func_2(Struct_2(!global1.x, true, vec3<bool>(false, global1.x, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(971f, global2.b)) - _wgslsmith_f_op_f32(global2.b - global2.b))));
    var var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~select(~vec2<u32>(0u, 4294967295u), select(vec2<u32>(4294967295u, 24389u), vec2<u32>(u_input.b, u_input.b), global1.zx), select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, false), vec2<bool>(global1.x, true))), firstLeadingBit(min(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, u_input.b)) >> (select(vec2<u32>(9460u, u_input.b), vec2<u32>(0u, 16182u), vec2<bool>(false, false)) % vec2<u32>(32u)))), ~_wgslsmith_sub_vec2_u32((vec2<u32>(99817u, 23398u) | vec2<u32>(u_input.b, u_input.b)) ^ (vec2<u32>(4898u, u_input.b) & vec2<u32>(u_input.b, u_input.b)), vec2<u32>(u_input.b, 18506u) ^ ~vec2<u32>(84092u, u_input.b)));
    var var_1 = ~(~min(~vec4<u32>(var_0.x, u_input.b, u_input.b, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(69320u, u_input.b, u_input.b, u_input.b), vec4<u32>(var_0.x, 1u, var_0.x, 1u)))) ^ abs(~reverseBits(select(vec4<u32>(u_input.b, u_input.b, 61938u, 0u), vec4<u32>(2487u, u_input.b, 1u, 0u), vec4<bool>(global1.x, true, global1.x, true))));
    var var_2 = global2.a.x >> (1u % 32u);
    var_2 = global2.a.x;
    return -_wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(25653i, -2147483647i, global2.a.x, -9694i) & u_input.a, vec4<i32>(31501i, 1i, u_input.a.x, u_input.a.x)), vec4<i32>(~global2.a.x, -1i, -abs(2147483647i), -_wgslsmith_dot_vec3_i32(u_input.a.wwx, vec3<i32>(u_input.a.x, global2.a.x, 78134i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !select(vec3<bool>(false, true, global1.x), !select(vec3<bool>(global1.x, global1.x, global1.x), select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(true, true, global1.x), global1.x), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, global1.x, false), vec3<bool>(global1.x, global1.x, global1.x))), 2147483647i >= func_1());
    let var_0 = Struct_2(global1.x, !global1.x, vec3<bool>(all(select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, true, false), vec3<bool>(false, global1.x, false))) || all(!vec3<bool>(global1.x, false, false)), !all(select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x), global1.zy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-829f)) + 787f) > global2.b));
    global0 = array<Struct_1, 27>();
    let var_1 = ~u_input.b;
    global1 = !(!select(!select(var_0.c, vec3<bool>(false, false, global1.x), true), vec3<bool>(select(true, true, false), var_0.a | global1.x, true), !select(var_0.c, vec3<bool>(true, global1.x, true), var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(-1228f, vec2<f32>(_wgslsmith_f_op_f32(253f - _wgslsmith_f_op_f32(min(global2.b, global2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-158f * _wgslsmith_div_f32(397f, global2.b)) - -521f)), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(1u, 0u, 10810u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_1, 4794u, u_input.b), vec3<u32>(var_1, 1u, var_1))) >> (firstTrailingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, var_1, 85090u), vec3<u32>(1u, 5116u, 40733u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1, var_1, u_input.b), vec3<u32>(4294967295u, 29959u, u_input.b)))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(348f, global2.b)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b, 115f) * vec2<f32>(-1050f, global2.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(ceil(global2.b))))));
}

