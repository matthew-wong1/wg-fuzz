struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0u);

var<private> global1: array<i32, 12>;

var<private> global2: array<Struct_1, 28>;

var<private> global3: array<bool, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> Struct_1 {
    return global2[_wgslsmith_index_u32(1u, 28u)];
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    let var_0 = u_input.c.wz;
    global2 = array<Struct_1, 28>();
    return -423f;
}

fn func_3() -> f32 {
    let var_0 = Struct_3(any(!select(vec2<bool>(true, true), vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 29u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(global0.a, 29u)], false), vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 29u)]), vec2<bool>(global3[_wgslsmith_index_u32(global0.a, 29u)], true)))), select(select(vec3<bool>(global3[_wgslsmith_index_u32(~4294967295u, 29u)], false, all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.e, 29u)], false, global3[_wgslsmith_index_u32(global0.a, 29u)]))), !select(vec3<bool>(global3[_wgslsmith_index_u32(global0.a, 29u)], false, true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 29u)], global3[_wgslsmith_index_u32(0u, 29u)], false), true), !any(vec4<bool>(global3[_wgslsmith_index_u32(81075u, 29u)], global3[_wgslsmith_index_u32(4294967295u, 29u)], false, false))), select(vec3<bool>(true, true, true), vec3<bool>(!global3[_wgslsmith_index_u32(global0.a, 29u)], any(vec3<bool>(global3[_wgslsmith_index_u32(3289u, 29u)], false, false)), global0.a != global0.a), vec3<bool>(true, true, true)), true), firstTrailingBit(abs(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(global0.a, 12u)] << (1u % 32u), -1i))), Struct_2(firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(4837u, 24176u, 4294967295u), u_input.b.yxz))), vec4<i32>(u_input.c.x, firstTrailingBit(_wgslsmith_clamp_i32(-24641i << (u_input.d % 32u), -7913i, ~u_input.a.x)), _wgslsmith_dot_vec2_i32(u_input.c.yx, ~(~u_input.a.xz)), -35013i));
    global1 = array<i32, 12>();
    var var_1 = vec3<i32>(_wgslsmith_sub_i32(firstLeadingBit(22369i), u_input.a.x | -1i), abs(_wgslsmith_clamp_i32(u_input.a.x, var_0.c, var_0.e.x)), abs(-1i >> ((reverseBits(global0.a) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(9413u, 0u, 1u), u_input.b.yyz)) % 32u)));
    global3 = array<bool, 29>();
    var var_2 = var_0;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(1620f, 340f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1087f, -782f, var_0.a))))), -181f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    let var_1 = var_0.a.xx;
    let var_2 = vec3<u32>(reverseBits(global0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, _wgslsmith_div_u32(4294967295u, 19464u) ^ u_input.e, ~u_input.b.x, global0.a), _wgslsmith_add_vec4_u32(reverseBits(u_input.b), u_input.b)), 1u);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1142f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -609f))))));
    global1 = array<i32, 12>();
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, var_3.x)) - 298f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec4<f32>(-1000f, -898f, -1218f, -307f))), _wgslsmith_f_op_f32(func_3())) + -1519f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))));
    global2 = array<Struct_1, 28>();
    global2 = array<Struct_1, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~min(var_2.xy & var_2.yx, abs(vec2<u32>(var_2.x, 0u)))), _wgslsmith_f_op_f32(min(var_3.x, var_3.x)), _wgslsmith_clamp_i32(~abs(-23531i), -23247i, ~(~1i)));
}

