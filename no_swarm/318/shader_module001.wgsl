struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * _wgslsmith_f_op_f32(exp2(global0.c.x))), _wgslsmith_f_op_f32(trunc(-772f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-480f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(429f * -702f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-277f, 946f, global0.c.x, global0.c.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, -448f, global0.c.x, 781f) * vec4<f32>(global0.c.x, 207f, -658f, global0.c.x))) * vec4<f32>(_wgslsmith_f_op_f32(-1270f - global0.c.x), _wgslsmith_f_op_f32(global0.c.x + 494f), -750f, _wgslsmith_f_op_f32(ceil(global0.c.x)))))));
    let var_1 = Struct_1(~(max(vec3<i32>(u_input.c, -41970i, 31795i), vec3<i32>(global0.a.x, u_input.c, 0i)) ^ global0.a), select(0u, 1u, true) ^ _wgslsmith_dot_vec3_u32(~u_input.a, ~_wgslsmith_mult_vec3_u32(u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-246f, _wgslsmith_div_f32(-1232f, global0.c.x), _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_vec3_f32(-var_0.yzx))), !vec4<bool>(!(!global0.d.x), !all(global0.d), global0.d.x, false | global0.d.x));
    global0 = var_1;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, -1744f, var_0.x, 2313f)))))) * vec4<f32>(_wgslsmith_f_op_f32(min(974f, var_1.c.x)), _wgslsmith_f_op_f32(-129f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + 243f), var_0.x))), _wgslsmith_f_op_f32(round(global0.c.x)), -1692f));
    var var_3 = u_input.a;
    return _wgslsmith_div_i32(global0.a.x | global0.a.x, -global0.a.x);
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<i32>(-2291i, func_3());
    let var_1 = vec2<i32>(_wgslsmith_mult_i32(countOneBits(-var_0.x), -(~43027i)), -31528i);
    var var_2 = abs(_wgslsmith_sub_u32(~firstLeadingBit(4368u), firstTrailingBit(global0.b)));
    global1 = array<vec3<bool>, 4>();
    global1 = array<vec3<bool>, 4>();
    return Struct_1(~vec3<i32>(1i, 1i, var_1.x), _wgslsmith_div_u32(~u_input.a.x, global0.b), _wgslsmith_f_op_vec3_f32(global0.c - vec3<f32>(_wgslsmith_f_op_f32(floor(1126f)), global0.c.x, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(global0.c.x + -1000f)))), global0.d);
}

fn func_1() -> i32 {
    var var_0 = global0.d.zww;
    global0 = Struct_1(global0.a, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(select(vec2<u32>(16784u, 59585u) << (u_input.a.yx % vec2<u32>(32u)), abs(vec2<u32>(32150u, global0.b)), var_0.x), vec2<u32>(4294967295u, 4294967295u)), countOneBits(~(~vec2<u32>(1u, global0.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c)) + global0.c), !vec4<bool>(global0.d.x != true, false, global0.d.x, true));
    var var_1 = Struct_1(~(global0.a >> (~u_input.a % vec3<u32>(32u))) >> ((u_input.a | u_input.a) % vec3<u32>(32u)), select(4294967295u, ~u_input.b, !(!all(global0.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-770f, global0.c.x, -1000f)))), vec4<bool>(global0.d.x, !all(vec3<bool>(global0.d.x, true, var_0.x)) == (8573u != u_input.b), global0.d.x, true | !all(vec3<bool>(global0.d.x, false, false))));
    var var_2 = vec3<u32>((min(_wgslsmith_mod_u32(u_input.a.x, global0.b), abs(global0.b)) >> ((u_input.b << ((global0.b << (u_input.a.x % 32u)) % 32u)) % 32u)) & 99933u, 1u, var_1.b);
    global0 = func_2();
    return i32(-1i) * -_wgslsmith_clamp_i32(~firstTrailingBit(u_input.c), 0i, _wgslsmith_mult_i32(23455i << (u_input.b % 32u), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<i32>(~((global0.a.x & u_input.c) >> (global0.b % 32u)), _wgslsmith_add_i32(18073i, abs(-19983i)), _wgslsmith_div_i32(func_1(), _wgslsmith_dot_vec2_i32(max(global0.a.xz, vec2<i32>(40464i, 18666i)), -global0.a.xx))), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, global0.b, 473u), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b, 81710u, 1u, 54161u), vec4<u32>(0u, 26508u, u_input.b, 0u), vec4<u32>(25320u, global0.b, 1u, u_input.b)))), ~39459u), global0.c, !vec4<bool>(false, true, any(select(vec4<bool>(global0.d.x, global0.d.x, global0.d.x, false), vec4<bool>(global0.d.x, true, global0.d.x, false), vec4<bool>(global0.d.x, global0.d.x, global0.d.x, global0.d.x))), all(global0.d.yzw)));
    var var_1 = select(u_input.a.x, select(~(~(~var_0.b)), u_input.a.x, true), !var_0.d.x);
    var var_2 = vec4<bool>(false, true, !any(vec2<bool>(false, !global0.d.x)), !any(vec2<bool>(var_0.d.x, true)));
    var_1 = u_input.a.x;
    var var_3 = vec3<bool>(true, !any(select(var_0.d, vec4<bool>(var_0.d.x, true, true, false), true)) | !global0.d.x, var_2.x);
    var_2 = !vec4<bool>(false, var_3.x || true, var_3.x, !any(vec2<bool>(true, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(abs(12549u), max(~var_0.b, ~25u), select(var_0.b, _wgslsmith_div_u32(1u, u_input.a.x), false), 4294967295u), -reverseBits(min(-var_0.a.zz, vec2<i32>(var_0.a.x, 12401i) | var_0.a.zz)), _wgslsmith_f_op_f32(-300f * -1000f));
}

