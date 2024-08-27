struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 3>;

var<private> global2: array<Struct_1, 27>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    global0 = !vec3<bool>(!all(vec2<bool>(arg_1.d, true)), false, !(!(!global0.x)));
    global1 = array<Struct_1, 3>();
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_div_i32(0i, _wgslsmith_add_i32(min(arg_0.x, u_input.b), 7162i)), -1i);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.a), u_input.a), 27u)];
    var var_2 = ~vec2<u32>(0u, u_input.a.x);
    return var_2.x;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> u32 {
    global2 = array<Struct_1, 27>();
    global2 = array<Struct_1, 27>();
    let var_0 = global2[_wgslsmith_index_u32(~(~u_input.a.x), 27u)];
    let var_1 = 1i;
    var var_2 = _wgslsmith_div_u32(~(~func_3(~vec4<i32>(29879i, -5093i, arg_2.e, 2147483647i), global2[_wgslsmith_index_u32(firstTrailingBit(arg_1), 27u)])), 33988u >> (~max(func_3(vec4<i32>(0i, arg_2.e, -417i, 0i), arg_0), u_input.a.x) % 32u));
    return _wgslsmith_add_u32(u_input.a.x, u_input.a.x) | _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_1, ~_wgslsmith_mod_u32(arg_1, arg_1)), u_input.a.x);
}

fn func_1(arg_0: f32) -> vec3<f32> {
    var var_0 = ~(~(u_input.a.x >> (max(func_2(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], u_input.a.x, Struct_1(vec4<f32>(arg_0, 262f, arg_0, 1882f), vec4<f32>(arg_0, 455f, arg_0, -670f), arg_0, global0.x, 31564i)), 45236u) % 32u)));
    let var_1 = arg_0;
    let var_2 = global1[_wgslsmith_index_u32(4294967295u, 3u)];
    let var_3 = _wgslsmith_div_u32(1u, _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_div_u32(abs(0u), _wgslsmith_add_u32(u_input.a.x, 0u)))));
    let var_4 = ~vec2<i32>(u_input.b, -_wgslsmith_mult_i32(min(u_input.b, -30383i), var_2.e));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b.xxx), var_2.b.ywz);
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2520f - 1035f), _wgslsmith_f_op_vec3_f32(func_1(arg_2.c)).x, arg_1.x)))))));
    global2 = array<Struct_1, 27>();
    var_0 = u_input.a.x;
    var var_2 = arg_0;
    return Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, _wgslsmith_div_f32(1227f, _wgslsmith_f_op_f32(arg_3.x + arg_2.a.x)), -158f, arg_2.c), vec4<f32>(-952f, -2597f, 948f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(371f * 1127f) - _wgslsmith_f_op_f32(-arg_3.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_2.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.a))))), 715f, true, -12473i);
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 3>();
    let var_0 = func_4(-1000f, !select(vec4<bool>(global0.x, arg_0 || arg_1.d, !arg_0, arg_1.d), !(!vec4<bool>(false, arg_1.d, arg_1.d, arg_1.d)), select(select(vec4<bool>(true, arg_0, arg_0, arg_1.d), vec4<bool>(true, false, false, global0.x), vec4<bool>(arg_1.d, true, global0.x, false)), !vec4<bool>(true, false, arg_1.d, false), select(vec4<bool>(arg_0, global0.x, arg_1.d, global0.x), vec4<bool>(global0.x, global0.x, arg_0, true), vec4<bool>(true, arg_0, arg_0, global0.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_1.b.x)), func_4(arg_1.c, vec4<bool>(arg_1.d, global0.x, arg_0, false), arg_1, arg_1.b.xyx).b.x, func_4(arg_1.c, vec4<bool>(arg_0, false, global0.x, false), Struct_1(vec4<f32>(arg_1.b.x, arg_1.c, 851f, -375f), arg_1.a, 383f, arg_1.d, u_input.b), vec3<f32>(313f, 390f, arg_1.c)).c, _wgslsmith_f_op_f32(max(1244f, -231f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-215f, 1404f, 360f, -646f) - _wgslsmith_div_vec4_f32(arg_1.b, vec4<f32>(arg_1.b.x, arg_1.c, -1742f, arg_1.a.x))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1279f, arg_1.b.x, arg_1.a.x, 1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_div_u32(u_input.a.x, u_input.a.x) < 0u, u_input.b), _wgslsmith_f_op_vec3_f32(-arg_1.b.wzw));
    var var_1 = _wgslsmith_f_op_f32(-var_0.a.x);
    var var_2 = abs(select(abs(reverseBits(~u_input.a.xzy)), vec3<u32>(4294967295u, 1u, ~4294967295u), global0.x));
    let var_3 = var_0;
    return func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -316f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.c)) + _wgslsmith_f_op_f32(-101f * arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.x))), all(vec2<bool>(global0.x, all(vec2<bool>(true, false)))))), vec4<bool>(!all(global0.xx), all(!(!vec4<bool>(var_3.d, var_3.d, var_0.d, var_3.d))), !(!(!var_0.d)), false), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(165f, arg_1.c, 1555f, -1000f))), var_0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-513f, var_0.c, -100f, var_0.a.x)), _wgslsmith_f_op_vec4_f32(sign(var_3.b))) * vec4<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -277f), _wgslsmith_div_f32(171f, var_3.c), _wgslsmith_f_op_f32(611f - arg_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1496f, 216f))), false, 22895i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.b.yyw + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_3.c, 2485f, arg_1.a.x), vec3<f32>(arg_1.a.x, 809f, 423f)))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(253f - -517f))), 647f, _wgslsmith_f_op_f32(-func_4(arg_1.c, vec4<bool>(arg_1.d, global0.x, var_0.d, var_3.d), Struct_1(arg_1.a, arg_1.a, 649f, arg_1.d, -4419i), arg_1.a.xzw).c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(global0.x, all(select(vec3<bool>(false, true, u_input.b <= u_input.b), vec3<bool>(select(global0.x, global0.x, true), u_input.b != -1i, !global0.x), false)));
    let var_1 = func_5(global0.x && !var_0.x, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(373f - 558f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-147f * -565f))), !vec4<bool>(true, 17739i == u_input.b, true, !global0.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-224f, -1318f, 231f, 301f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(532f, 447f, 817f, 933f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-366f, 374f, 653f, -900f) - vec4<f32>(1669f, 346f, 259f, -841f)), select(vec4<bool>(true, true, global0.x, false), vec4<bool>(global0.x, global0.x, var_0.x, true), vec4<bool>(true, false, false, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1044f) * _wgslsmith_f_op_f32(f32(-1f) * -228f)), false, -1i), _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -356f), _wgslsmith_div_f32(-1132f, -221f), true))))));
    let var_2 = -(~(-select(min(vec2<i32>(36428i, var_1.e), vec2<i32>(2147483647i, u_input.b)), ~vec2<i32>(var_1.e, var_1.e), true)));
    global1 = array<Struct_1, 3>();
    var var_3 = firstTrailingBit(firstTrailingBit(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_1.a), var_1.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.x))));
}

