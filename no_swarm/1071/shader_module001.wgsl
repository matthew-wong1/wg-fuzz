struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(683f, 109f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: Struct_5) -> i32 {
    var var_0 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1000f)), arg_1.a.x)), arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(224f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1023f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-230f)) * 1787f)), arg_1.d.b.a.wz, _wgslsmith_sub_u32(firstTrailingBit(arg_1.e.c), ~abs(arg_1.d.c.c)) | ~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.c, u_input.a.x, 52317u, u_input.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.d.c.c, 78843u, 9878u, 0u), vec4<u32>(4294967295u, 0u, 30294u, 4294967295u), vec4<u32>(31595u, arg_1.e.c, 1u, 1u))), Struct_3(arg_1.d.c.b.x != arg_1.e.b.x, Struct_2(arg_1.d.b.a), arg_1.d.c), arg_1.e);
    var_0 = arg_1;
    global0 = arg_1.a.zx;
    global0 = var_0.a.yz;
    return _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-9196i, 1i)), arg_1.e.b);
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_3(!((func_3(865f, Struct_5(vec3<f32>(global0.x, 194f, 589f), vec2<f32>(222f, 228f), u_input.a.x, Struct_3(false, Struct_2(vec4<f32>(global0.x, 1459f, 1000f, global0.x)), Struct_1(false, vec2<i32>(9916i, 57117i), u_input.a.x)), Struct_1(true, vec2<i32>(-1i, 68841i), u_input.a.x))) & _wgslsmith_add_i32(-2147483647i, 39060i)) <= ~reverseBits(-44430i)), Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 321f, 1400f, global0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-574f, global0.x, global0.x, global0.x) + vec4<f32>(1217f, -770f, -260f, -677f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2830f, global0.x, global0.x, global0.x), vec4<f32>(global0.x, global0.x, 545f, global0.x), true))), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false))))), Struct_1(true, abs(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(18846i, 2147483647i)), ~vec2<i32>(-58663i, 10073i), vec2<i32>(1i, 1i))), _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.a.x, u_input.a.x, 7352u, 57288u) & vec4<u32>(u_input.a.x, 53545u, u_input.a.x, u_input.a.x)), vec4<u32>(17504u, 1651u, countOneBits(4294967295u), u_input.a.x))));
    let var_1 = vec2<bool>(true, true);
    var var_2 = Struct_4(Struct_1(!(!(global0.x >= var_0.b.a.x)), abs(vec2<i32>(-var_0.c.b.x, -var_0.c.b.x)), ~(~_wgslsmith_mod_u32(u_input.a.x, var_0.c.c))), vec4<bool>(var_0.c.a, false, var_0.a, false), var_0.b);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), -637f, var_0.b.a.x, 313f);
    var_0 = Struct_3(true, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_2.c.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, var_2.c.a.x, -1000f)))) + var_2.c.a)), var_0.c);
    return vec4<bool>(true, var_0.a, _wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 6260u, 0u, var_2.a.c), vec4<u32>(u_input.a.x, var_2.a.c, var_2.a.c, u_input.a.x)), _wgslsmith_clamp_u32(0u, var_2.a.c, var_0.c.c))) > ~u_input.a.x, true);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_1) -> vec4<bool> {
    return select(!(!(!(!vec4<bool>(false, arg_3.a, arg_1.x, arg_1.x)))), !select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), select(!vec4<bool>(true, true, false, arg_1.x), !vec4<bool>(false, arg_1.x, arg_1.x, false), arg_3.a != false), true), !(!(!func_2())));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2022i >> (u_input.a.x % 32u);
    var var_1 = 1368f;
    let var_2 = select(select((1u >> (select(u_input.a.x, 13238u, false) % 32u)) > _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(50816u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 18076u, 1u, u_input.a.x)), 0u), any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)) | true), u_input.a.x < u_input.a.x, true);
    var var_3 = -1i;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))) + 274f) + -712f));
    let var_4 = !select(!select(func_1(vec2<f32>(541f, -392f), vec2<bool>(var_2, var_2), 1u, Struct_1(false, vec2<i32>(1776i, 1i), u_input.a.x)), vec4<bool>(var_2, true, var_2, false), select(vec4<bool>(var_2, false, false, var_2), vec4<bool>(var_2, false, var_2, var_2), var_2)), vec4<bool>(~u_input.a.x == 4294967295u, all(func_1(vec2<f32>(global0.x, global0.x), vec2<bool>(false, var_2), 0u, Struct_1(true, vec2<i32>(2126i, -33119i), 30657u)).zxz), !(!var_2), false), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(~73728i, ~(~0u), ~_wgslsmith_mod_vec3_u32(countOneBits(firstLeadingBit(vec3<u32>(4294967295u, u_input.a.x, 27678u))), vec3<u32>(firstLeadingBit(u_input.a.x), ~1u, u_input.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1733f, 866f, -570f, global0.x), vec4<f32>(global0.x, 933f, global0.x, global0.x)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -182f), _wgslsmith_f_op_f32(-385f + 657f), _wgslsmith_f_op_f32(f32(-1f) * -1644f), -1042f)) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1300f, 399f)), _wgslsmith_f_op_f32(ceil(global0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1394f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_div_f32(global0.x, global0.x))), _wgslsmith_f_op_f32(-global0.x))));
}

