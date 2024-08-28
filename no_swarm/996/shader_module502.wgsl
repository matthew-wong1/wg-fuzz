struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool = true;

var<private> global2: array<bool, 24>;

var<private> global3: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> u32 {
    let var_0 = 1u;
    global3 = ~global0.e.c.c;
    let var_1 = !vec3<bool>(global2[_wgslsmith_index_u32(27667u, 24u)], false, !(1u < var_0));
    return firstLeadingBit(_wgslsmith_dot_vec4_u32(firstLeadingBit(global0.e.d), vec4<u32>(~var_0, ~1u, 4294967295u, _wgslsmith_div_u32(1u, 6867u))) & countOneBits(u_input.a.x));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: u32) -> vec4<i32> {
    var var_0 = vec3<bool>(!any(vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(u_input.a.x, 24u)] & global2[_wgslsmith_index_u32(58152u, 24u)])), true, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(83760u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.e.e.c, arg_2, 1u), global0.e.d.www), vec3<u32>(1u, global0.a.x, u_input.a.x)), ~firstLeadingBit(vec3<u32>(100380u, arg_2, arg_2)))), 24u)]);
    global1 = false;
    global3 = u_input.a.x;
    global0 = Struct_3(~vec2<u32>(_wgslsmith_mult_u32(~arg_2, u_input.a.x), arg_2), global0.b, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2301f, -389f))), vec3<i32>(37418i, u_input.b, firstTrailingBit(u_input.c)), Struct_2(global2[_wgslsmith_index_u32(firstLeadingBit(17404u), 24u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), -187f, global0.c.x) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1014f, arg_0, arg_0))))), global0.e.c, ~global0.e.d, global0.e.e));
    var var_1 = !select(select(!select(vec4<bool>(global0.e.c.b, var_0.x, false, true), vec4<bool>(false, global2[_wgslsmith_index_u32(8237u, 24u)], true, var_0.x), true), select(select(vec4<bool>(global0.e.a, false, true, var_0.x), vec4<bool>(true, global0.e.e.b, false, false), vec4<bool>(true, false, false, var_0.x)), !vec4<bool>(false, global2[_wgslsmith_index_u32(1229u, 24u)], global0.e.a, true), vec4<bool>(global2[_wgslsmith_index_u32(58475u, 24u)], false, global0.e.a, true)), global0.b.x >= global0.e.c.e), !select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], var_0.x, global2[_wgslsmith_index_u32(1u, 24u)], false), !vec4<bool>(var_0.x, false, global0.e.c.d, false), false), !(!select(vec4<bool>(true, global0.e.e.b, true, false), vec4<bool>(true, var_0.x, false, true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 24u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 24u)], true))));
    return -_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(abs(u_input.b), 1i, 1i, _wgslsmith_div_i32(-2147483647i, u_input.b))), vec4<i32>(global0.d.x, min(min(global0.e.e.a, global0.b.x), ~(-2147483647i)), 1i, max(i32(-1i) * -1i, _wgslsmith_div_i32(-2147483647i, u_input.c))), vec4<i32>(global0.d.x, -1i & ~u_input.c, global0.d.x, min(reverseBits(u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.e.e.e, u_input.c), vec2<i32>(1i, -1i)))));
}

fn func_2(arg_0: bool) -> StorageBuffer {
    let var_0 = global0.e;
    global0 = Struct_3(vec2<u32>(u_input.a.x, countOneBits(reverseBits(u_input.a.x)) | (4294967295u | ~var_0.d.x)), func_3(_wgslsmith_f_op_f32(round(-674f)), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x)), firstTrailingBit(~17175u)) | global0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.e.b.yx + vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.b.x)), _wgslsmith_f_op_f32(trunc(global0.e.b.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, -1050f))) * _wgslsmith_f_op_vec2_f32(select(var_0.b.zx, vec2<f32>(var_0.b.x, 765f), vec2<bool>(arg_0, global0.e.e.d)))))), vec3<i32>(var_0.c.a | ~1i, var_0.c.e, -1i), global0.e);
    var var_1 = false;
    let var_2 = ~4294967295u >= func_1();
    var var_3 = var_0.c.e;
    return StorageBuffer(-(~vec4<i32>(i32(-1i) * -2147483647i, u_input.b ^ var_0.c.a, global0.e.e.a & global0.b.x, u_input.b)), firstTrailingBit(~abs(var_0.d.xxy)), -1000f, select(vec2<i32>(select(-1i, -2147483647i, false), _wgslsmith_mod_i32(0i, 6257i)), vec2<i32>(global0.b.x, abs(var_0.e.a)), true) | vec2<i32>(_wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.c, 24350i), global0.b.xx), global0.b.zz), global0.e.e.a), ~max(min(~var_0.e.c, firstLeadingBit(71u)), firstLeadingBit(_wgslsmith_div_u32(1u, 40319u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1029f;
    var var_1 = global0.a;
    global3 = u_input.a.x << (_wgslsmith_sub_u32(global0.a.x, ~59448u) % 32u);
    var var_2 = 28990u;
    global2 = array<bool, 24>();
    var var_3 = !(!vec4<bool>(select(all(vec4<bool>(false, false, false, global0.e.c.d)), 60287u > var_1.x, global0.e.c.b), any(select(vec2<bool>(false, global2[_wgslsmith_index_u32(global0.a.x, 24u)]), vec2<bool>(true, true), vec2<bool>(true, global0.e.e.b))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_1(), firstTrailingBit(u_input.a.x), 4294967295u), 24u)], false));
    let var_4 = firstLeadingBit(0i);
    var_2 = abs((firstTrailingBit(21193u) & _wgslsmith_add_u32(1u, 28160u)) >> (~func_1() % 32u)) << ((~u_input.a.x << (1u % 32u)) % 32u);
    var_1 = ~_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(56425u, abs(var_1.x)), 0u), vec2<u32>(1u, global0.a.x) << (~vec2<u32>(u_input.a.x, var_1.x) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = func_2(true);
}

