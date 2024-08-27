struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
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

var<private> global0: vec4<u32> = vec4<u32>(0u, 45062u, 1u, 27349u);

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<u32> {
    let var_0 = 1i;
    let var_1 = 0i;
    var var_2 = ~u_input.a;
    let var_3 = u_input.c;
    let var_4 = 55853i;
    return select(~(~(~vec4<u32>(global0.x, 44310u, 31496u, 0u))), ~(vec4<u32>(u_input.a << (10784u % 32u), ~0u, max(0u, u_input.a), 6241u) | vec4<u32>(select(var_3, var_3, false), ~39532u, ~global0.x, firstTrailingBit(4294967295u))), !global1.x);
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_1 {
    global2 = Struct_2(_wgslsmith_dot_vec4_u32(~(min(vec4<u32>(arg_1, 4294967295u, 5411u, u_input.c), vec4<u32>(arg_1, 1u, global0.x, global2.a)) >> (func_3() % vec4<u32>(32u))), vec4<u32>(~4294967295u, 45998u, global0.x, ~31440u)), vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, -711f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b.x, -1565f))), _wgslsmith_f_op_f32(ceil(global2.b.x))));
    let var_0 = _wgslsmith_f_op_f32(abs(arg_0));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-global2.b.zwy), ~global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0)))), select(firstTrailingBit(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(u_input.b.x, 2147483647i, -42822i, u_input.b.x), vec4<i32>(-2147483647i, 52132i, u_input.b.x, u_input.b.x)), vec4<i32>(7436i, 1i, 46267i, 1i), min(vec4<i32>(-58213i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(19738i, 34499i, u_input.b.x, 26571i)))), abs(-vec4<i32>(u_input.b.x, -18292i, u_input.b.x, 1i)) | ~_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -7977i, -7358i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 36004i, u_input.b.x)), select(select(select(vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(true, true, global1.x, false), vec4<bool>(false, true, global1.x, true)), select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(global1.x, global1.x, true, false), true), !vec4<bool>(global1.x, global1.x, global1.x, global1.x)), vec4<bool>(global1.x, !global1.x, true, true), all(!vec4<bool>(true, global1.x, global1.x, global1.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> i32 {
    let var_0 = -647f;
    var var_1 = true;
    let var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -815f)), arg_1.x | global0.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-533f)))) + _wgslsmith_f_op_f32(1057f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(1000f, arg_1.x).a.x))));
    let var_4 = !(!vec3<bool>((697f <= var_2.a.x) | true, global1.x, true));
    return -_wgslsmith_dot_vec4_i32(arg_0.d, abs(-(~vec4<i32>(2147483647i, u_input.b.x, arg_0.d.x, 6790i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(vec3<bool>((1i & func_1(Struct_1(vec3<f32>(global2.b.x, global2.b.x, global2.b.x), global0.x, -1078f, vec4<i32>(-1i, 1i, u_input.b.x, u_input.b.x)), vec4<u32>(global2.a, 20177u, global2.a, global0.x))) < 9793i, (~0u <= u_input.c) == select(true, global1.x, false), !(!any(vec2<bool>(global1.x, true)))), select(vec3<bool>(true, select(true, global1.x, false), true), vec3<bool>(true, u_input.a <= firstLeadingBit(u_input.c), !(global1.x || true)), !global1.x), vec3<bool>(all(select(vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(true, true, false, true), vec4<bool>(true, global1.x, true, global1.x))) || false, !(_wgslsmith_div_u32(global2.a, 31545u) > max(1u, global2.a)), !global1.x));
    var var_0 = Struct_2(reverseBits(~0u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.b * vec4<f32>(global2.b.x, global2.b.x, global2.b.x, -711f))))) + vec4<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(528f, global2.b.x)), global2.b.x, _wgslsmith_f_op_f32(floor(global2.b.x)), _wgslsmith_f_op_f32(global2.b.x + global2.b.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(func_2(1362f, 6921u).c, 1394f, -2129f), vec3<f32>(var_0.b.x, _wgslsmith_div_f32(global2.b.x, global2.b.x), var_0.b.x)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1217f, _wgslsmith_f_op_f32(826f + 106f), -319f), vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(1000f * -969f), var_0.b.x))), u_input.c, -1000f, firstLeadingBit(vec4<i32>(13738i, select(u_input.b.x, _wgslsmith_div_i32(-2147483647i, -2147483647i), select(global1.x, global1.x, global1.x)), -21356i, u_input.b.x)));
    global1 = !vec3<bool>(!any(select(vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(false, global1.x, false, global1.x), true)), (var_0.b.x <= _wgslsmith_f_op_f32(-var_0.b.x)) == false, !(global1.x | false));
    let var_2 = var_1;
    let var_3 = false;
    global2 = Struct_2(4294967295u, vec4<f32>(189f, var_1.a.x, _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-global2.b.x)), 1716f));
    let x = u_input.a;
    s_output = StorageBuffer((var_1.d.x | var_1.d.x) << ((global2.a << (u_input.c % 32u)) % 32u));
}

