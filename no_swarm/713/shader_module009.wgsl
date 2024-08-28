struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2 = Struct_2(66089u, Struct_1(0u, 1u), i32(-2147483648), Struct_1(72346u, 16016u), vec2<u32>(37380u, 62461u));

var<private> global2: vec2<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<i32>) -> i32 {
    let var_0 = u_input.a;
    var var_1 = Struct_2(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(arg_0.x), 18653u, _wgslsmith_div_u32(0u, u_input.b)), ~(~vec3<u32>(arg_0.x, 11041u, 0u))), u_input.b, max(66929u, select(40163u, 1u, true))), arg_1, ~(-(~(u_input.a | global1.c))), Struct_1(arg_0.x, ~49853u), vec2<u32>(countOneBits(reverseBits(~global1.e.x)), arg_0.x));
    var var_2 = select(any(vec3<bool>(true, true, true)), !(!all(vec2<bool>(false, false))), true) || any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), arg_0.x != 88631u), select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), true));
    let var_3 = vec3<bool>(any(vec3<bool>(select(true, true, false), false, true)) | true, any(vec2<bool>(true, all(vec4<bool>(true, true, true, true)))), true);
    let var_4 = select(vec4<i32>(~0i, ~_wgslsmith_clamp_i32(var_1.c, -25235i, arg_2.x), global1.c, _wgslsmith_clamp_i32(49559i, reverseBits(17694i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, u_input.a, var_1.c, u_input.a), vec4<i32>(21477i, var_0, u_input.a, var_1.c)))), countOneBits(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 1i, 21870i, 61720i), vec4<i32>(var_0, global1.c, global1.c, global1.c)))), select(select(vec4<bool>(var_3.x, true, var_3.x, var_3.x), vec4<bool>(true, true, true, var_3.x), all(vec4<bool>(var_3.x, true, var_3.x, true))), vec4<bool>(var_1.d.a <= 13927u, !var_3.x, false, !var_3.x), select(select(vec4<bool>(var_3.x, var_3.x, false, false), vec4<bool>(false, var_3.x, false, var_3.x), vec4<bool>(var_3.x, var_3.x, true, var_3.x)), vec4<bool>(true, var_3.x, var_3.x, var_3.x), vec4<bool>(false, var_3.x, true, false)))) | abs(vec4<i32>(2147483647i, var_1.c, min(-u_input.a, _wgslsmith_add_i32(-1i, var_0)), firstTrailingBit(-global1.c)));
    return _wgslsmith_sub_i32(u_input.a, firstTrailingBit(global1.c));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = all(vec4<bool>(true, true, true, true));
    global1 = Struct_2(~firstLeadingBit(global1.d.a), arg_2, _wgslsmith_mod_i32(-u_input.a, u_input.a), Struct_1(min(arg_2.a, reverseBits(max(4294967295u, u_input.b))), ~(~(~0u))), vec2<u32>(u_input.b, 1u));
    let var_1 = select(vec3<i32>(global1.c, func_3(reverseBits(global1.e), Struct_1(_wgslsmith_div_u32(0u, 4294967295u), 62602u), -vec3<i32>(2147483647i, -1i, u_input.a)), i32(-1i) * -arg_1), -_wgslsmith_clamp_vec3_i32(-vec3<i32>(-40017i, 55286i, global1.c) | vec3<i32>(arg_1, global1.c, 0i), firstTrailingBit(vec3<i32>(arg_1, u_input.a, -56520i)) ^ (vec3<i32>(arg_1, u_input.a, 27547i) ^ vec3<i32>(global1.c, 67915i, 2147483647i)), countOneBits(abs(vec3<i32>(arg_1, 2147483647i, 0i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -832f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a.x)))) < _wgslsmith_f_op_f32(step(111f, -972f)));
    var_0 = true;
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-global0.a));
    return _wgslsmith_f_op_f32(-1135f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-628f + 1767f))), _wgslsmith_f_op_f32(f32(-1f) * -2094f)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: f32) -> bool {
    let var_0 = Struct_2(global1.d.a, global1.d, abs(0i), global1.d, ~global1.e);
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-452f, 1151f)), _wgslsmith_f_op_vec2_f32(-global0.a.xz))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1859f, global2.x) + global0.a.ww))) * _wgslsmith_div_vec2_f32(global0.a.wy, _wgslsmith_f_op_vec2_f32(floor(global0.a.yx)))))) + global0.a.xz);
    return true;
}

fn func_1() -> vec2<bool> {
    global2 = global0.a.zz;
    let var_0 = _wgslsmith_f_op_f32(trunc(228f));
    let var_1 = 1u;
    let var_2 = global1.e;
    var var_3 = func_4(~(-firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(46881i, u_input.a, global1.c), vec3<i32>(u_input.a, u_input.a, 39848i)))), _wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_div_f32(195f, _wgslsmith_f_op_f32(func_2(Struct_3(global0.a), _wgslsmith_clamp_i32(global1.c, global1.c, u_input.a), global1.b))))), global0.a.x);
    return vec2<bool>(all(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, false, false))), all(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~477i;
    let var_1 = true && all(select(vec2<bool>(true, true), func_1(), vec2<bool>(true, true)));
    var var_2 = ~(-(vec2<i32>(-1i) * -vec2<i32>(global1.c, 3226i)));
    let var_3 = Struct_1(1u, 0u);
    let var_4 = _wgslsmith_f_op_f32(step(-1000f, global0.a.x));
    var var_5 = u_input.b;
    var var_6 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -378f, var_4, var_4))), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_f_op_f32(1735f - -221f), global2.x, global0.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-244f * _wgslsmith_f_op_f32(var_4 * var_4)), -1598f)) - 1935f));
}

