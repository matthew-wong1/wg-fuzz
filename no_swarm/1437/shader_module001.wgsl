struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-12718i, 1i, -1i);

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = !vec3<bool>(any(vec4<bool>(true, true, true, true)), false, true);
    var var_1 = !vec3<bool>(var_0.x, any(vec4<bool>(!var_0.x, false, arg_0.a.x == arg_0.a.x, var_0.x)), any(vec2<bool>(4294967295u != u_input.a, all(vec3<bool>(var_0.x, true, var_0.x)))));
    var var_2 = global0.xz;
    var var_3 = vec3<u32>(1u, u_input.a << (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(33252u, 23615u, u_input.c, 79857u)), ~abs(vec4<u32>(70560u, u_input.c, 68460u, 19377u))) % 32u), u_input.c);
    let var_4 = arg_0;
    return _wgslsmith_div_u32(u_input.a, u_input.b);
}

fn func_2() -> u32 {
    global1 = array<Struct_2, 28>();
    global0 = -vec3<i32>(abs(~global0.x), max(~(~2147483647i), 34734i | -u_input.d), 41863i);
    var var_0 = vec4<u32>(u_input.a, 4294967295u, u_input.c, 1u);
    global0 = vec3<i32>(global0.x, 0i, global0.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1967f, 340f, -249f), vec3<f32>(639f, -336f, -488f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(591f, 796f, 130f) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1007f, 703f, 2165f), vec3<f32>(-1292f, 1514f, -587f)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1724f, _wgslsmith_f_op_f32(step(-865f, -996f))))));
    return func_3(var_1);
}

fn func_1() -> Struct_1 {
    global0 = abs(-(_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, u_input.d, 0i) ^ vec3<i32>(1i, -11255i, 0i), abs(vec3<i32>(u_input.d, -1707i, -9583i))) << (vec3<u32>(u_input.b, ~u_input.b, countOneBits(0u)) % vec3<u32>(32u))));
    global1 = array<Struct_2, 28>();
    let var_0 = vec3<u32>(1u, u_input.b, ~_wgslsmith_add_u32(0u, func_2()));
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, reverseBits(var_0.x ^ 0u)), 28u)], Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), vec4<bool>(true && ((1i > global0.x) | true), true, true, true), -783f, Struct_2(true));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(var_1.b.a - _wgslsmith_div_vec3_f32(vec3<f32>(var_1.d, _wgslsmith_div_f32(121f, var_1.b.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1321f)), var_1.b.a)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1091f + var_1.d), var_1.b.a.x, _wgslsmith_f_op_f32(-807f - -257f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 28>();
    let var_0 = func_1();
    var var_1 = _wgslsmith_clamp_vec2_i32(~(firstLeadingBit(min(vec2<i32>(-39475i, global0.x), vec2<i32>(u_input.d, -23730i))) | -(vec2<i32>(-19043i, global0.x) | global0.zx)), ~global0.zz, global0.yy);
    var var_2 = any(!vec2<bool>(!any(vec3<bool>(false, true, false)), all(vec4<bool>(false, true, true, false))));
    var var_3 = var_1.x;
    let var_4 = Struct_3(global1[_wgslsmith_index_u32(33471u, 28u)], func_1(), vec4<bool>(true, true, true, var_0.a.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + var_0.a.x)), _wgslsmith_f_op_f32(max(-440f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -345f)))), Struct_2(true));
    var var_5 = _wgslsmith_f_op_f32(1475f * var_0.a.x);
    let var_6 = _wgslsmith_f_op_f32(trunc(-1000f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_div_u32(u_input.b, firstLeadingBit(u_input.b)), reverseBits(countOneBits(u_input.b)), min(func_3(Struct_1(var_0.a)), ~u_input.a), 4294967295u));
}

