struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(4294967295u, 19757u, 4294967295u, 1u), vec4<u32>(40289u, 62829u, 1u, 1u), vec4<u32>(48601u, 81996u, 14110u, 21612u), vec4<u32>(34121u, 1u, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, 38387u, 4294967295u), vec4<u32>(37800u, 4294967295u, 4580u, 7239u), vec4<u32>(0u, 20289u, 32416u, 0u), vec4<u32>(35624u, 0u, 658u, 1u), vec4<u32>(14006u, 32368u, 55142u, 84433u), vec4<u32>(0u, 1u, 0u, 45609u));

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(2147483647i, 0i, 12303i, -46130i), vec4<i32>(1i, 29441i, -1i, -42084i));

var<private> global4: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_0.a.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b))))));
    global2 = select(vec2<bool>(all(vec2<bool>(global2.x, global2.x)) != false, !(!any(vec2<bool>(false, false)))), vec2<bool>(abs(arg_1 >> (u_input.b.x % 32u)) <= firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2681i, arg_1, 0i), vec4<i32>(0i, -2147483647i, -32809i, -1i))), any(vec2<bool>(select(global0.a, false, global0.a), global2.x))), !vec2<bool>(global0.a, true));
    let var_1 = arg_1;
    global0 = Struct_2(global0.a);
    global2 = !(!vec2<bool>(_wgslsmith_f_op_f32(-var_0) > _wgslsmith_f_op_f32(trunc(var_0)), !global2.x));
    return (u_input.b.x >> (67649u % 32u)) & (select(~_wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.yx), 0u, true) & 39290u);
}

fn func_2(arg_0: f32, arg_1: bool) -> u32 {
    let var_0 = abs(vec3<u32>(~(~func_3(Struct_1(vec3<f32>(arg_0, -1000f, -304f), -402f), 15631i)), 21608u, u_input.a));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(exp2(arg_0)), -1219f) * vec3<f32>(_wgslsmith_f_op_f32(-arg_0), -1047f, -1366f))), 1041f);
    global1 = array<vec4<u32>, 10>();
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), 2677f, select(any(vec3<bool>(true, false, false)), !global0.a, arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(583f)), _wgslsmith_f_op_f32(f32(-1f) * -495f))))));
    global2 = !vec2<bool>(arg_1, true);
    return 0u;
}

fn func_1() -> vec3<u32> {
    let var_0 = !(!vec4<bool>(!global2.x, any(select(vec4<bool>(true, true, global2.x, false), vec4<bool>(global2.x, false, global0.a, true), vec4<bool>(global0.a, global0.a, global0.a, global0.a))), global2.x, global2.x));
    global4 = !(!any(!(!vec2<bool>(true, global2.x))));
    global3 = array<vec4<i32>, 2>();
    return vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(u_input.b.yy, vec2<u32>(func_2(-1000f, any(vec4<bool>(global0.a, global2.x, false, global0.a))), func_3(Struct_1(vec3<f32>(-552f, -703f, -686f), -1573f), 55772i) | ~0u)), 20876u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(reverseBits(u_input.a), ~u_input.b.x, ~u_input.a), func_1()), (~(~u_input.b.xyx) & ~vec3<u32>(46058u, u_input.a, 0u)) >> (vec3<u32>(u_input.b.x, abs(4294967295u), ~(1u >> (u_input.a % 32u))) % vec3<u32>(32u)));
    var var_2 = i32(-1i) * -2147483647i;
    global3 = array<vec4<i32>, 2>();
    global3 = array<vec4<i32>, 2>();
    global1 = array<vec4<u32>, 10>();
    var var_3 = u_input.b.yw;
    let var_4 = Struct_2(all(vec2<bool>(global2.x, true)) != !(!any(vec4<bool>(global0.a, global2.x, global2.x, false))));
    global4 = !global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~(-25786i), _wgslsmith_sub_i32(min(_wgslsmith_sub_i32(-27518i, 1i), reverseBits(-2147483647i)), -1i), select(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, -9474i, -2147483647i), vec4<i32>(-14452i, -1i, 0i, -5948i)), ~(-13829i)), ~min(0i, 1i), var_4.a)), ~(u_input.b.xzx >> (vec3<u32>(_wgslsmith_add_u32(var_1, var_1), var_1 ^ u_input.b.x, abs(var_3.x)) % vec3<u32>(32u))), min(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 10u)], ~vec4<u32>(~u_input.b.x, var_1, 33500u, func_2(1721f, false))), firstLeadingBit(firstTrailingBit(1i)) << (var_1 % 32u), _wgslsmith_mod_vec3_u32(min(min(~vec3<u32>(var_3.x, 7327u, var_1), ~u_input.b.xzy), min(func_1(), u_input.b.xyy | vec3<u32>(var_1, var_3.x, var_1))), u_input.b.yxy));
}

