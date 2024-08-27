struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26>;

var<private> global1: array<vec2<bool>, 23>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_3, 26>();
    var var_0 = vec4<u32>(firstTrailingBit(u_input.a.x), u_input.a.x, _wgslsmith_div_u32(4294967295u, min(arg_0.b | _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, 0u), vec2<u32>(1u, arg_3.b)), ~(0u >> (arg_3.b % 32u)))), arg_0.b);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1532f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1796f)), _wgslsmith_f_op_f32(step(-1000f, 404f))))))));
    global1 = array<vec2<bool>, 23>();
    let var_2 = abs(56319u);
    return var_2;
}

fn func_2(arg_0: bool, arg_1: i32) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -254f))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1986f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-411f + _wgslsmith_f_op_f32(355f - 657f)))));
    var var_1 = -1295f;
    let var_2 = Struct_2(Struct_1(!any(vec3<bool>(arg_0, true, arg_0)), min(u_input.a.x, func_3(Struct_1(false, u_input.a.x), arg_0, u_input.b ^ u_input.b, Struct_1(arg_0, 4294967295u)))), _wgslsmith_add_vec3_u32(abs(vec3<u32>(~0u, ~0u, 92699u)), ~u_input.a << (~(~vec3<u32>(0u, u_input.a.x, u_input.c.x)) % vec3<u32>(32u))), ~_wgslsmith_mult_u32(1u, 29282u), Struct_1(true, u_input.c.x), Struct_1(arg_0, u_input.c.x));
    global0 = array<Struct_3, 26>();
    let var_3 = var_0.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1146f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 + var_3) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 * var_3) * 1321f)), any(!vec3<bool>(false, arg_0, true)))));
}

fn func_1() -> Struct_3 {
    global1 = array<vec2<bool>, 23>();
    var var_0 = _wgslsmith_mod_vec3_u32(u_input.a, ~vec3<u32>(1u, ~_wgslsmith_mult_u32(26386u, 52723u), 1u));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(true, u_input.b)))))), 184f);
    let var_2 = _wgslsmith_f_op_f32(min(var_1.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(exp2(var_1.a)))))))));
    global0 = array<Struct_3, 26>();
    return Struct_3(var_1.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2605f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2, var_1.a, false)), _wgslsmith_f_op_f32(var_2 - var_2))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), var_2))));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec3<bool>) -> StorageBuffer {
    var var_0 = select(u_input.a.zy, _wgslsmith_clamp_vec2_u32(max(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(arg_0, 21918u)), vec2<u32>(34588u, u_input.a.x)), abs(~u_input.a.zz)), ~min(vec2<u32>(arg_0, u_input.a.x) >> (vec2<u32>(arg_0, 5194u) % vec2<u32>(32u)), vec2<u32>(arg_0, 0u)), u_input.a.xz), global1[_wgslsmith_index_u32(~(~(~(~10086u))), 23u)]);
    global0 = array<Struct_3, 26>();
    let var_1 = vec3<f32>(arg_1.b, arg_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_f_op_f32(-arg_1.b)));
    let var_2 = Struct_1(select(false, !any(vec4<bool>(true, true, true, arg_2.x)) && !arg_2.x, arg_2.x), ~var_0.x);
    global1 = array<vec2<bool>, 23>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), 628f)), _wgslsmith_f_op_f32(func_2(false, 2147483647i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2368f - -333f) + 1673f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(arg_1.a + 179f), -1735f, _wgslsmith_f_op_f32(var_1.x - 346f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, -1030f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1180f, -1000f)), var_2.a)), arg_2)) + var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b << ((14214u ^ u_input.c.x) % 32u);
    var var_1 = false;
    global1 = array<vec2<bool>, 23>();
    global1 = array<vec2<bool>, 23>();
    let var_2 = !(!select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), all(vec3<bool>(false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)));
    var var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 26u)];
    global0 = array<Struct_3, 26>();
    var var_4 = u_input.c.x;
    let x = u_input.a;
    s_output = func_4(~_wgslsmith_clamp_u32(u_input.c.x, ~(~u_input.c.x), countOneBits(~u_input.a.x)), func_1(), select(var_2, select(select(select(var_2, var_2, vec3<bool>(true, var_2.x, var_2.x)), var_2, !var_2), !var_2, var_2.x), !(var_2.x && var_2.x) & !(true && var_2.x)));
}

