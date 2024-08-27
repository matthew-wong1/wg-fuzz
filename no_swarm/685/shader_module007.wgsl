struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: u32;

var<private> global2: f32 = -1000f;

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(false, 18903i), Struct_1(true, 1i), Struct_1(true, 1i), Struct_1(true, 1i), Struct_1(false, 2724i), Struct_1(false, 0i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> u32 {
    global3 = array<Struct_1, 6>();
    let var_0 = min(-10561i, -reverseBits(min(~u_input.a.x, u_input.a.x)));
    global3 = array<Struct_1, 6>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 897f) * _wgslsmith_f_op_f32(step(233f, -1247f)))), _wgslsmith_f_op_f32(122f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1618f + 507f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2330f, -567f)) + _wgslsmith_f_op_f32(sign(509f))) + _wgslsmith_div_f32(431f, 1316f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(333f))) + _wgslsmith_f_op_f32(f32(-1f) * -2128f))));
    global2 = -2475f;
    return 1u;
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: f32) -> u32 {
    global2 = arg_0.b;
    global0 = array<vec2<bool>, 7>();
    global0 = array<vec2<bool>, 7>();
    var var_0 = 1u;
    var var_1 = 174f;
    return reverseBits(u_input.b >> (23090u % 32u));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_2) -> bool {
    let var_0 = vec4<bool>(arg_1.c.b, true, false, arg_2.a.a);
    let var_1 = -324f;
    var var_2 = var_0.xxz;
    var var_3 = vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -333f), _wgslsmith_f_op_f32(-arg_1.d.c));
    let var_4 = 0u | ~_wgslsmith_dot_vec2_u32(arg_0.a.zx, _wgslsmith_add_vec2_u32(arg_0.a.ww | vec2<u32>(99910u, 51272u), vec2<u32>(u_input.b, 4294967295u)));
    return any(select(var_2.xz, select(vec2<bool>(var_4 == 27675u, all(vec4<bool>(false, false, true, true))), !(!vec2<bool>(true, arg_1.c.a.a)), select(vec2<bool>(var_2.x, true), select(vec2<bool>(var_2.x, false), var_0.xx, arg_2.a.a), select(var_2.xz, var_2.zz, false))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~func_1(), 4294967295u >> (min(_wgslsmith_sub_u32(firstTrailingBit(u_input.b), u_input.b), 43591u) % 32u), ~reverseBits(~(~u_input.b)));
    let var_1 = select(~((vec4<u32>(1u, var_0.x, 4294967295u, 0u) >> (countOneBits(vec4<u32>(4294967295u, 4294967295u, 1u, u_input.b)) % vec4<u32>(32u))) << (vec4<u32>(1u, abs(1u), u_input.b, func_2(Struct_3(u_input.a, 562f, 805f, Struct_2(Struct_1(false, -19727i), false, vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x))), -113f, -1000f)) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(62141u, 4294967295u, ~31707u, u_input.b), firstLeadingBit(vec4<u32>(96206u, u_input.b, var_0.x, 8435u) & _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.b), vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x)))), !func_3(Struct_4(vec4<u32>(28813u, 0u, u_input.b, 25704u), vec2<u32>(var_0.x, var_0.x), Struct_2(global3[_wgslsmith_index_u32(u_input.b, 6u)], true, vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, -1i)), Struct_3(vec4<i32>(0i, -2147483647i, 0i, u_input.a.x), -1353f, 588f, Struct_2(Struct_1(false, u_input.a.x), false, vec4<i32>(-1i, 17939i, -1i, u_input.a.x)))), Struct_4(vec4<u32>(var_0.x, 37382u, 39603u, var_0.x), vec2<u32>(u_input.b, 32563u), Struct_2(global3[_wgslsmith_index_u32(u_input.b, 6u)], true, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_3(vec4<i32>(-45710i, u_input.a.x, -31108i, u_input.a.x), 241f, -1043f, Struct_2(global3[_wgslsmith_index_u32(u_input.b, 6u)], true, vec4<i32>(u_input.a.x, 1i, 67646i, u_input.a.x)))), Struct_2(Struct_1(true, -2147483647i), any(vec2<bool>(false, true)), u_input.a ^ u_input.a)));
    let var_2 = ~abs(abs(~var_0));
    let var_3 = -_wgslsmith_div_vec2_i32(u_input.a.wx, vec2<i32>(-24850i, i32(-1i) * -u_input.a.x));
    global3 = array<Struct_1, 6>();
    let var_4 = _wgslsmith_div_vec2_u32(var_1.zx, _wgslsmith_add_vec2_u32(max(~vec2<u32>(u_input.b, 74171u), var_0.xz) ^ vec2<u32>(~0u, var_0.x), var_2.xx));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(-34271i))) << (min(1u, firstLeadingBit(var_4.x)) % 32u), -396f, vec2<i32>(_wgslsmith_clamp_i32(1i, -var_3.x, 1i), firstLeadingBit(_wgslsmith_add_i32(-11443i, 2147483647i))));
}

