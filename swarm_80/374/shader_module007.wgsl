struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3>;

var<private> global1: bool = true;

var<private> global2: array<Struct_1, 14>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    global2 = array<Struct_1, 14>();
    global1 = any(arg_0.xy);
    var var_0 = (i32(-1i) * -20139i) << (~u_input.b % 32u);
    var_0 = 40255i >> (~_wgslsmith_sub_u32(9465u, u_input.a.x) % 32u);
    global0 = array<Struct_2, 3>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1126f)) - _wgslsmith_f_op_f32(-396f - -700f)))) + 1150f);
}

fn func_4(arg_0: i32, arg_1: vec4<f32>) -> vec4<f32> {
    let var_0 = Struct_5(Struct_2(-reverseBits(arg_0)), vec4<bool>(any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), false), vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), false))), true | (arg_1.x != arg_1.x), true, !(arg_1.x >= arg_1.x) & true));
    var var_1 = !(!(!vec2<bool>(true, var_0.b.x)));
    global0 = array<Struct_2, 3>();
    var var_2 = select(!vec4<bool>(true, true, true, var_0.b.x == true), var_0.b, select(vec4<bool>(!(-395f != arg_1.x), any(vec4<bool>(true, var_1.x, true, var_1.x)), true, select(any(vec3<bool>(var_1.x, var_0.b.x, false)), !var_1.x, var_0.b.x)), vec4<bool>(!(!var_1.x), var_1.x, true, false & all(var_0.b)), all(!select(var_0.b.yyx, vec3<bool>(false, true, false), var_1.x))));
    var_1 = vec2<bool>(var_0.b.x, select(true, all(var_0.b.yyx), var_2.x));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1));
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_clamp_i32(arg_0, arg_0, ~(arg_0 | 50160i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1335f, _wgslsmith_f_op_f32(func_3(vec3<bool>(false, true, true))), -598f, _wgslsmith_f_op_f32(min(2057f, 304f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f)))))), vec4<u32>(24130u, u_input.b, ~(~u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, u_input.c.x) | reverseBits(~u_input.b)));
    var var_1 = -21284i;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(999f, -249f))))));
    var var_3 = var_0;
    var var_4 = !select(vec3<bool>(true, true, !any(vec4<bool>(false, true, false, true))), !vec3<bool>(true, any(vec3<bool>(false, true, false)), all(vec2<bool>(false, true))), vec3<bool>(-arg_0 == arg_0, all(vec2<bool>(true, true)), select(u_input.c.x, var_0.b.x, true) > _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 1u))));
    return 33795i;
}

fn func_1() -> vec2<u32> {
    var var_0 = all(vec2<bool>(true, all(vec2<bool>(true, true))));
    let var_1 = Struct_1(~firstLeadingBit(45826u), vec4<i32>(-1i, abs(-func_2(-8295i)), -2147483647i, -2147483647i), -19712i);
    var_0 = true;
    var var_2 = global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, var_1.a, 4294967295u), countOneBits(u_input.c.yzz))), 3u)];
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(round(642f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-178f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -108f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1002f * 916f), -164f))))), ~_wgslsmith_mult_vec4_u32(~u_input.c, ~(~u_input.c)));
    return min(vec2<u32>(4294967295u, var_1.a), var_3.b.xx) ^ u_input.c.yw;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 3>();
    let var_0 = min(_wgslsmith_mod_vec2_u32(~select(u_input.a, u_input.a, true) << (select(~u_input.c.ww, u_input.a, select(vec2<bool>(true, false), vec2<bool>(false, true), false)) % vec2<u32>(32u)), ~(~vec2<u32>(u_input.a.x, 60268u) & vec2<u32>(0u, u_input.a.x))), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(func_1(), u_input.a), u_input.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-348f, 528f, 1000f, 2260f))))));
    global1 = false;
    var var_2 = var_1.x == var_1.x;
    global2 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_add_i32(0i, 0i), var_1.wx);
}

