struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec2<f32> = vec2<f32>(-698f, -572f);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(558f))))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<u32>(~u_input.a, u_input.b.x, ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b.x, ~u_input.b.x, _wgslsmith_add_u32(99887u, 27733u)), u_input.a));
    var var_1 = !vec4<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))) | true, !(u_input.b.x <= reverseBits(1u)), all(vec3<bool>(true, true, true)), (true || all(vec3<bool>(true, true, true))) & true);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.yx) * _wgslsmith_f_op_vec2_f32(-global0.zx)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(635f, -1683f))))) * vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(var_1.x, var_1.x, 1u, 447f), 2147483647i)), -892f)));
    let var_2 = Struct_1(u_input.b.x != 0u, true, u_input.b.x, global1.x);
    var var_3 = any(vec3<bool>(!all(!vec4<bool>(false, var_2.a, var_2.a, var_1.x)), select(countOneBits(54924u) < _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.b.x, 48834u, 9711u), u_input.b), !all(vec4<bool>(var_2.a, var_2.a, true, false)), true), false));
    return Struct_1(false, false, (var_0.x >> (var_2.c % 32u)) | 1u, -376f);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> Struct_1 {
    global1 = global0.zx;
    var var_0 = _wgslsmith_f_op_vec2_f32(select(global0.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global0.zx)))))), !select(vec2<bool>(true, arg_0.b), !vec2<bool>(arg_0.b, true), false)));
    let var_1 = !(!(!vec2<bool>(arg_0.a, arg_0.b)));
    var var_2 = arg_0.b;
    let var_3 = u_input.b.zx;
    return func_2();
}

fn func_1() -> f32 {
    var var_0 = !any(!vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true));
    let var_1 = -322f;
    let var_2 = abs(-(firstTrailingBit(-481i) >> ((u_input.b.x << (28822u % 32u)) % 32u))) << (max(1u, ~(~(~1u))) % 32u);
    var var_3 = abs(u_input.b.yy);
    var var_4 = func_4(func_2(), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) * -1604f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global1.x, var_1, var_4.a)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1039f)), var_4.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(261f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-569f * -1906f))))) * _wgslsmith_f_op_f32(ceil(160f))), -855f, global1.x, global1.x);
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1297f * _wgslsmith_f_op_f32(874f - global0.x))), global0.x, var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x - -788f), 341f))))) - vec4<f32>(_wgslsmith_f_op_f32(func_1()), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(484f - -226f) * _wgslsmith_f_op_f32(-global0.x)), -1699f))));
    var var_1 = ~u_input.b.zzw;
    var var_2 = func_4(func_2(), false, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1()))));
    let var_3 = vec4<u32>(_wgslsmith_sub_u32(1u, var_1.x), _wgslsmith_mod_u32(~(~0u), _wgslsmith_sub_u32(120413u, firstLeadingBit(u_input.a >> (0u % 32u)))), u_input.b.x, ~(~(~(~var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<i32>(1i, -1i, 74478i) << (_wgslsmith_mult_vec3_u32(var_3.zzw, vec3<u32>(0u, 1u, u_input.b.x)) % vec3<u32>(32u))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, ~u_input.a), vec3<u32>(~var_3.x, 4294967295u << (0u % 32u), _wgslsmith_div_u32(0u, var_1.x))) % vec3<u32>(32u)), _wgslsmith_clamp_vec4_i32(abs(max(firstLeadingBit(vec4<i32>(-2147483647i, -34114i, -2147483647i, 22507i)), vec4<i32>(1i, 1i, 1i, 1i))), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(abs(-6919i), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-8762i, 20193i, 0i), vec3<i32>(37084i, 71095i, 2407i)), 20209i)), _wgslsmith_add_vec4_i32(select(~vec4<i32>(-1i, 2963i, -1886i, 28958i), vec4<i32>(29301i, 0i, 58062i, -2147483647i), false), firstTrailingBit(vec4<i32>(-2147483647i, 1i, -16141i, -32215i) >> (var_3 % vec4<u32>(32u))))), _wgslsmith_f_op_vec2_f32(ceil(global0.zx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0.wyw))));
}

