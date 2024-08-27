struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 42102i;

var<private> global1: array<Struct_5, 26>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(arg_0, _wgslsmith_f_op_vec2_f32(arg_2.a.wy + vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_2.a.x)), 1244f))));
    global0 = -1i;
    let var_1 = Struct_3(_wgslsmith_clamp_vec2_i32(~vec2<i32>(1i, -43494i), _wgslsmith_add_vec2_i32(countOneBits(-vec2<i32>(-16452i, -2147483647i)), -vec2<i32>(38817i, 0i)), ~reverseBits(vec2<i32>(1i, 1i))), vec2<i32>(abs(countOneBits(countOneBits(-1i))), -(~(-32513i))));
    let var_2 = Struct_5(~(_wgslsmith_mod_vec4_u32(vec4<u32>(23415u, 41953u, arg_3, 58000u), ~vec4<u32>(arg_3, 58075u, 16093u, 10149u)) & (reverseBits(vec4<u32>(64414u, 4294967295u, 0u, arg_1)) & ~vec4<u32>(47247u, u_input.a, 4294967295u, u_input.a))), !(!(var_0.x >= 270f)));
    global1 = array<Struct_5, 26>();
    return 0i;
}

fn func_2(arg_0: Struct_5, arg_1: Struct_1) -> bool {
    global1 = array<Struct_5, 26>();
    global0 = i32(-1i) * -1i;
    let var_0 = Struct_5(~((~vec4<u32>(6485u, 0u, 1u, u_input.a) | arg_0.a) & vec4<u32>(arg_1.d.x, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, arg_0.a.x, u_input.a), arg_0.a), arg_1.e)), false);
    var var_1 = !vec3<bool>(abs(func_3(vec2<f32>(arg_1.a, arg_1.a), u_input.a, Struct_2(vec4<f32>(1584f, 501f, -616f, arg_1.a)), 35988u)) > _wgslsmith_clamp_i32(_wgslsmith_sub_i32(35281i, -17716i), 1i, i32(-1i) * -55648i), all(!vec4<bool>(false, false, true, arg_0.b)), !(false && (var_0.b && arg_1.b)));
    global1 = array<Struct_5, 26>();
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> vec3<bool> {
    var var_0 = ~(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, 0u), ~vec3<u32>(12400u, arg_0.d.x, 0u))));
    global1 = array<Struct_5, 26>();
    let var_1 = vec3<u32>(var_0.x, abs(var_0.x), countOneBits(~_wgslsmith_mod_u32(~1u, u_input.a)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(265f, arg_0.a, 1187f) - vec3<f32>(arg_0.a, arg_0.a, arg_0.a)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-481f, -1000f, 408f), vec3<f32>(-1654f, -434f, arg_0.a)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -660f, arg_0.a))))));
    var var_3 = vec3<u32>(var_1.x, arg_0.d.x, 66801u);
    return select(!(!arg_1.xxw), arg_1.xwx, !select(vec3<bool>(arg_1.x, arg_0.b, arg_1.x), select(!vec3<bool>(arg_0.c, arg_1.x, arg_1.x), !arg_1.wyx, arg_1.xyw), select(!vec3<bool>(arg_0.c, true, arg_1.x), !vec3<bool>(arg_0.b, false, arg_0.b), vec3<bool>(arg_0.b, arg_1.x, false))));
}

fn func_1() -> StorageBuffer {
    let var_0 = ~abs(_wgslsmith_mod_vec3_u32(abs(~vec3<u32>(4294967295u, 0u, u_input.a)), ~vec3<u32>(u_input.a, u_input.a, 51050u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(sign(-1125f)))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f - 410f), _wgslsmith_f_op_f32(f32(-1f) * -853f), false)));
    var var_3 = func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2, -1000f))) * var_2), 44537u != _wgslsmith_add_u32(max(25091u, var_0.x), countOneBits(var_0.x)), true, firstLeadingBit(vec2<u32>(var_0.x, ~0u)), _wgslsmith_div_u32(31794u, 4294967295u)), select(vec4<bool>(true, func_2(global1[_wgslsmith_index_u32(4294967295u, 26u)], Struct_1(-1229f, true, true, vec2<u32>(20396u, 4294967295u), var_0.x)) & true, true, select(true, any(vec4<bool>(false, true, true, true)), true)), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false), all(vec3<bool>(false, false, false))), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), false))));
    var var_4 = Struct_4(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(-612f + var_2)), Struct_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2, _wgslsmith_f_op_f32(exp2(var_2)), _wgslsmith_div_f32(var_2, -272f), -336f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(342f, var_2, var_2, -198f) * vec4<f32>(var_2, -101f, -2362f, -864f)))))));
    return StorageBuffer(~_wgslsmith_div_i32(countOneBits(-2147483647i), ~abs(0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

