struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
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

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(53290u), Struct_1(22768u), Struct_1(1u), Struct_1(0u), Struct_1(43914u), Struct_1(11278u), Struct_1(55694u), Struct_1(54859u), Struct_1(24835u), Struct_1(53718u), Struct_1(84938u), Struct_1(4294967295u));

var<private> global1: vec2<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> vec2<bool> {
    global1 = abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, firstTrailingBit(u_input.b.x)), countOneBits(~u_input.b.xz)));
    return vec2<bool>(any(!vec2<bool>(arg_1, arg_1)), false);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = 87138u;
    let var_1 = _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x));
    var var_2 = -38040i << (~arg_2.a % 32u);
    var_2 = -2147483647i;
    let var_3 = global0[_wgslsmith_index_u32(64189u, 12u)];
    return all(vec4<bool>(true, true, all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), 909f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))));
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_1(~(~_wgslsmith_sub_u32(abs(4294967295u), min(22959u, global1.x))));
    var var_1 = global0[_wgslsmith_index_u32(var_0.a, 12u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1687f) + _wgslsmith_f_op_f32(-1f));
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~(vec3<u32>(u_input.b.x, var_0.a, 4294967295u) & abs(u_input.b))), u_input.b), 12u)];
    let var_3 = select(!func_2(abs(u_input.b.zy), true), func_2(u_input.b.yy, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))), !func_2(~(u_input.b.xz & vec2<u32>(u_input.b.x, global1.x)), false).x);
    return select(select(vec3<bool>(func_2(abs(vec2<u32>(0u, global1.x)), var_3.x).x, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(940f, -2128f, -434f, -1162f)), global0[_wgslsmith_index_u32(var_1.a, 12u)], global0[_wgslsmith_index_u32(~var_1.a, 12u)], Struct_1(u_input.b.x)), var_3.x), select(!vec3<bool>(true, var_3.x, false), select(select(vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(false, var_3.x, false), vec3<bool>(true, var_3.x, true)), select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(true, false, var_3.x), vec3<bool>(false, false, true)), var_3.x), !all(vec4<bool>(var_3.x, var_3.x, false, var_3.x))), select(true, !(!var_3.x), all(select(vec4<bool>(var_3.x, var_3.x, true, var_3.x), vec4<bool>(true, false, false, var_3.x), vec4<bool>(false, var_3.x, false, var_3.x))))), !(!select(vec3<bool>(false, var_3.x, var_3.x), vec3<bool>(var_3.x, var_3.x, false), true)), all(!select(select(vec4<bool>(var_3.x, true, false, false), vec4<bool>(var_3.x, false, false, var_3.x), vec4<bool>(var_3.x, true, var_3.x, true)), vec4<bool>(var_3.x, false, false, false), var_3.x)));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(869f, _wgslsmith_f_op_f32(-252f - 484f), -590f) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-419f, -1000f, 933f) + _wgslsmith_div_vec3_f32(vec3<f32>(-509f, -861f, -146f), vec3<f32>(-157f, -447f, -1058f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1028f, 412f, 420f))))))))));
    var var_1 = firstTrailingBit(~(~select(vec4<i32>(-27411i, -11388i, arg_2, -2147483647i) | vec4<i32>(arg_2, 40216i, -2147483647i, u_input.c), ~vec4<i32>(-91295i, u_input.c, -17786i, -8124i), !vec4<bool>(false, arg_0, true, true))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(38213u, _wgslsmith_div_u32(_wgslsmith_sub_u32(abs(~global1.x), 1u), 85930u)), 12u)];
    var var_3 = global0[_wgslsmith_index_u32(u_input.b.x, 12u)];
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3258f * var_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, -196f)) * -2509f))), var_0.x, var_0.x);
    return global0[_wgslsmith_index_u32(~u_input.b.x, 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mult_vec2_u32(u_input.b.zy, vec2<u32>(26923u, global1.x));
    let var_0 = vec2<i32>(_wgslsmith_div_i32(firstTrailingBit(min(u_input.c, -8920i)) << (0u % 32u), 1i), u_input.a);
    var var_1 = func_4(any(func_1()) | (true & (1u >= ~u_input.b.x)), true, 0i);
    var var_2 = select(any(vec4<bool>(!func_1().x, func_1().x, true, _wgslsmith_add_i32(var_0.x, var_0.x) < _wgslsmith_clamp_i32(var_0.x, 1i, -65974i))), func_2(u_input.b.zx, _wgslsmith_clamp_i32(countOneBits(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c, var_0.x, var_0.x), vec4<i32>(1i, -7938i, -24122i, var_0.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-6099i, u_input.a), vec2<i32>(-1i, -65632i))) >= ~(-var_0.x)).x, func_1().x);
    var var_3 = Struct_1(abs(var_1.a));
    var var_4 = vec3<bool>((~(~global1.x) ^ var_1.a) == 9106u, !(false & any(vec2<bool>(false, false))), !(!any(vec3<bool>(true, true, true))));
    var_4 = vec3<bool>(false && (1000f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(496f, -1000f, var_4.x)))), var_4.x, !var_4.x);
    let var_5 = u_input.b.x;
    let var_6 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-3193f, _wgslsmith_f_op_f32(round(2004f)))));
}

