struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: f32 = -676f;

var<private> global2: bool = true;

var<private> global3: bool = false;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = !(!(arg_2.x && true));
    let var_1 = Struct_1(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(arg_3.a.x, 18615u), firstTrailingBit(arg_3.a.x), ~arg_3.a.x), u_input.c)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1168f)))), _wgslsmith_f_op_f32(1f + -596f), 2050f));
    global2 = ((arg_1.x & arg_2.x) & select(true, true, u_input.e.x >= ~(-30907i))) || !all(!select(arg_2, arg_2, arg_2));
    let var_3 = u_input.e;
    return _wgslsmith_dot_vec3_u32(max(arg_3.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3.a.x, 29652u, _wgslsmith_dot_vec3_u32(arg_3.a, arg_0.a)), ~vec3<u32>(arg_3.a.x, u_input.c.x, 13174u), ~arg_0.a)), _wgslsmith_mod_vec3_u32(~arg_0.a, abs(firstLeadingBit(max(var_1.a, vec3<u32>(4294967295u, u_input.c.x, var_1.a.x))))));
}

fn func_2() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1056f);
    let var_1 = Struct_1(~vec3<u32>(~6674u | _wgslsmith_add_u32(u_input.c.x, u_input.d.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c.x, 18148u), u_input.c), u_input.c.x));
    var_0 = 1f;
    var var_2 = var_1;
    let var_3 = var_1;
    return vec3<u32>(~1u, u_input.d.x, ~abs(_wgslsmith_sub_u32(var_1.a.x, var_2.a.x))) ^ vec3<u32>(func_3(Struct_1(vec3<u32>(50014u, 2533u, 60815u)), select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec3<bool>(true, true, true), var_1), 4294967295u, reverseBits(select(u_input.a, 0u, true)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2077f + 1187f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-578f + -663f))))) + _wgslsmith_f_op_f32(floor(1036f)));
    global3 = false;
    let var_0 = Struct_1(reverseBits(~(~vec3<u32>(0u, 44625u, u_input.c.x) << (reverseBits(u_input.c) % vec3<u32>(32u)))));
    global2 = !(false != (_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mod_i32(0i, u_input.b), u_input.b) <= (u_input.b ^ u_input.b)));
    var var_1 = ~8540u;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-849f, _wgslsmith_f_op_f32(-790f + _wgslsmith_div_f32(1066f, -310f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1333f + 590f))), -439f, false)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-777f)))));
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.c.x;
    global3 = all(!select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), false), false));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-319f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(2316f, 445f) * _wgslsmith_f_op_f32(select(1066f, -513f, false)))) + _wgslsmith_f_op_f32(func_4(u_input.c, Struct_1(func_2())))));
    global0 = reverseBits(12171u | (firstTrailingBit(var_0 << (u_input.a % 32u)) & var_0));
    global0 = func_2().x;
    return Struct_1(_wgslsmith_add_vec3_u32(~u_input.c, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x >= ~(~4294967295u);
    var var_1 = false;
    var var_2 = func_1();
    let var_3 = ~(-2147483647i);
    var var_4 = all(vec4<bool>(!all(vec3<bool>(true, true, true)), !(true && (-6633i < var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(201f, 1000f, true))) > -556f, !(select(25580u, 50071u, true) != ~u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(28260u, 62953u), 4294967295u), u_input.d.x), _wgslsmith_add_u32(u_input.c.x, 28442u) ^ (firstTrailingBit(25203u) ^ ~u_input.d.x)));
}

