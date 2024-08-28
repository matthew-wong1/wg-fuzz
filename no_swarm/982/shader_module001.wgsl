struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

var<private> global1: u32;

var<private> global2: bool;

var<private> global3: array<Struct_2, 28>;

var<private> global4: vec4<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    global1 = global0[_wgslsmith_index_u32(1u, 6u)];
    global2 = true;
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(u_input.c, 0u >> (1u % 32u))), 6u)], 6u)]);
    let var_1 = vec2<i32>(-u_input.a.x, 554i);
    let var_2 = select(select(!select(vec4<bool>(global4.x, false, true, global4.x), select(vec4<bool>(global4.x, global4.x, true, false), vec4<bool>(global4.x, false, global4.x, global4.x), vec4<bool>(true, false, global4.x, global4.x)), vec4<bool>(global4.x, global4.x, true, false)), !select(!vec4<bool>(global4.x, true, global4.x, false), vec4<bool>(global4.x, global4.x, global4.x, global4.x), select(vec4<bool>(global4.x, global4.x, false, global4.x), vec4<bool>(false, true, global4.x, true), global4.x)), vec4<bool>(true, _wgslsmith_f_op_f32(round(728f)) != _wgslsmith_f_op_f32(floor(1123f)), any(global4.wz), !global4.x)), vec4<bool>(!global4.x, global4.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-6906i, var_1.x, -6616i)), -vec3<i32>(1i, var_1.x, -4301i)) >= _wgslsmith_dot_vec4_i32(u_input.a, min(vec4<i32>(u_input.a.x, -34658i, 2147483647i, u_input.a.x), u_input.a)), global4.x || !(!global4.x)), true);
    return u_input.c;
}

fn func_2() -> vec4<bool> {
    var var_0 = global3[_wgslsmith_index_u32(func_3(), 28u)];
    let var_1 = _wgslsmith_clamp_u32(1u, var_0.b.x << (~func_3() % 32u), 2900u) << (reverseBits(4294967295u >> (var_0.b.x % 32u)) % 32u);
    let var_2 = u_input.a;
    var var_3 = ~(~(~var_0.b.x)) << (0u % 32u);
    let var_4 = false;
    return select(vec4<bool>(false, global4.x, !any(select(global4.zww, vec3<bool>(global4.x, true, global4.x), global4.xzz)), !(true != !var_4)), select(!select(!vec4<bool>(true, var_4, global4.x, global4.x), select(vec4<bool>(true, false, global4.x, true), vec4<bool>(true, false, false, var_4), vec4<bool>(global4.x, true, false, true)), vec4<bool>(var_4, var_4, true, global4.x)), !select(vec4<bool>(false, true, var_4, var_4), !vec4<bool>(true, global4.x, true, false), global4.x), select(vec4<bool>(true, true, any(vec3<bool>(false, var_4, var_4)), false), vec4<bool>(true, true, true, true), true)), vec4<bool>(abs(u_input.c | 0u) <= var_0.b.x, -12442i >= _wgslsmith_dot_vec4_i32(var_2, _wgslsmith_div_vec4_i32(vec4<i32>(var_0.c, -17110i, 2147483647i, -23056i), u_input.a)), !global4.x, var_4));
}

fn func_1() -> u32 {
    global4 = func_2();
    let var_0 = _wgslsmith_add_u32(func_3(), ~4294967295u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1570f, _wgslsmith_f_op_f32(min(-766f, -1593f)))))))));
    let var_2 = -164f;
    global0 = array<u32, 6>();
    return abs(55271u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(global4.x, true);
    var var_1 = global3[_wgslsmith_index_u32(countOneBits(~func_1()), 28u)];
    var_0 = vec2<bool>(!global4.x, false);
    var var_2 = Struct_2(vec3<f32>(_wgslsmith_div_f32(723f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1351f - var_1.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.a.x, var_1.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, var_1.a.x))), ~firstLeadingBit(var_1.b), firstLeadingBit(i32(-1i) * -abs(26457i)));
    var var_3 = global3[_wgslsmith_index_u32(var_2.b.x, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(var_1.a, var_3.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1678f) - _wgslsmith_f_op_f32(-var_3.a.x)))), _wgslsmith_mod_vec3_i32(u_input.a.yxx, vec3<i32>(-1i & var_3.c, var_2.c, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a))) >> ((_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 53480u, 8709u), ~var_2.b) >> (firstLeadingBit(var_2.b) % vec3<u32>(32u))) % vec3<u32>(32u)), u_input.c);
}

