struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec4<u32>, 11>;

var<private> global2: i32 = 1i;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(546f, global0.x, 1164f, arg_0.b.b.x)) + vec4<f32>(global0.x, arg_0.b.b.x, arg_0.b.b.x, global0.x))))));
    var var_1 = Struct_1(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(1u, arg_0.b.c.a), arg_1.a.a), arg_1.a.b);
    var var_2 = ~u_input.c.x;
    let var_3 = select(arg_1.a.b, arg_0.a.a.b, !all(!vec4<bool>(arg_0.b.a.x, true, false, true)));
    let var_4 = arg_0.a.c;
    return _wgslsmith_mult_vec2_i32(max(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(2147483647i, u_input.a), ~vec2<i32>(-2147483647i, -40787i)), ~vec2<i32>(1i, u_input.a)), abs(~vec2<i32>(-23127i, -25988i))), reverseBits(_wgslsmith_div_vec2_i32(max(vec2<i32>(-25662i, u_input.a), vec2<i32>(u_input.a, 0i)) ^ ~vec2<i32>(-5695i, 2147483647i), -vec2<i32>(u_input.a, 15030i))));
}

fn func_2(arg_0: Struct_3) -> Struct_4 {
    let var_0 = _wgslsmith_mod_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 19705i), vec2<i32>(u_input.e, u_input.e)), -2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(-1577i, u_input.a), ~vec2<i32>(-11167i, -25330i))), _wgslsmith_mult_vec2_i32(select(abs(-vec2<i32>(u_input.a, 29213i)), abs(select(vec2<i32>(1i, -8213i), vec2<i32>(u_input.a, 22766i), vec2<bool>(false, arg_0.a.b.x))), arg_0.a.b.yx), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.e), vec2<i32>(-50998i, u_input.a)), func_3(Struct_5(Struct_3(Struct_1(4294967295u, vec3<bool>(arg_0.b, true, arg_0.a.b.x)), arg_0.b, u_input.b), Struct_4(arg_0.a.b, vec3<f32>(global0.x, 502f, -436f), Struct_1(u_input.c.x, arg_0.a.b)), Struct_4(arg_0.a.b, vec3<f32>(global0.x, global0.x, global0.x), arg_0.a)), arg_0)) | vec2<i32>(1i, ~u_input.a)));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(min(global0.x, -144f))), vec3<f32>(_wgslsmith_div_f32(836f, global0.x), _wgslsmith_f_op_f32(137f * global0.x), _wgslsmith_f_op_f32(-global0.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1383f, -2123f, -781f), _wgslsmith_f_op_vec3_f32(vec3<f32>(563f, global0.x, global0.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -194f, 455f)))))));
    var var_2 = vec4<bool>(any(vec2<bool>((true & arg_0.b) != (arg_0.b && arg_0.a.b.x), arg_0.a.b.x)), arg_0.b, any(!vec4<bool>(false, true, false, any(vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, false, arg_0.b)))), false);
    let var_3 = var_2.x;
    var var_4 = select(vec4<bool>(!(!(!var_2.x)), true, false, false), !(!vec4<bool>(any(var_2.yxz), arg_0.b, true, false)), !vec4<bool>(select(u_input.e >= 3144i, all(var_2.wx), !arg_0.b), arg_0.a.b.x && all(var_2.yww), !(!arg_0.a.b.x), true & var_2.x));
    return Struct_4(vec3<bool>(true, all(!select(vec4<bool>(false, true, arg_0.a.b.x, true), vec4<bool>(arg_0.a.b.x, true, var_2.x, false), vec4<bool>(true, var_4.x, false, var_4.x))), !(all(var_4.wxx) && (u_input.c.x > u_input.b.x))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), -700f, _wgslsmith_f_op_f32(-var_1.x)), vec3<f32>(-1630f, 552f, -343f))), arg_0.a);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: bool) -> u32 {
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(abs(min(u_input.d, u_input.d) | _wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_1.c.a, arg_1.c.a), vec3<u32>(4294967295u, u_input.d.x, 65806u))), u_input.d), 1u);
}

fn func_1(arg_0: bool) -> vec3<i32> {
    var var_0 = _wgslsmith_div_u32(u_input.b.x, ~_wgslsmith_add_u32(abs(u_input.c.x), func_4(!vec2<bool>(true, arg_0), func_2(Struct_3(Struct_1(0u, vec3<bool>(arg_0, arg_0, arg_0)), arg_0, u_input.c.yx)), any(vec4<bool>(arg_0, arg_0, false, true)))));
    let var_1 = Struct_3(Struct_1(u_input.b.x, !vec3<bool>(arg_0, arg_0, true)), true, vec2<u32>(u_input.d.x, 22087u));
    global2 = abs(firstLeadingBit(33517i));
    let var_2 = true;
    var var_3 = 1i;
    return vec3<i32>(func_3(Struct_5(Struct_3(Struct_1(25872u, var_1.a.b), true, u_input.d.yz), Struct_4(var_1.a.b, vec3<f32>(global0.x, 1000f, global0.x), var_1.a), Struct_4(vec3<bool>(var_1.b, true, var_2), vec3<f32>(-1501f, global0.x, -738f), Struct_1(0u, var_1.a.b))), var_1).x, u_input.e, _wgslsmith_div_i32(-38636i, u_input.e)) | vec3<i32>(u_input.e, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-23520i, u_input.e, -1i, 2147483647i) << (global1[_wgslsmith_index_u32(28968u, 11u)] % vec4<u32>(32u)), vec4<i32>(-1i, u_input.e, -2147483647i, u_input.a))), _wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, u_input.a), 2147483647i << (u_input.c.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec3_i32(-(~vec3<i32>(u_input.e, -40565i, u_input.e)), func_1(u_input.a == 0i)), _wgslsmith_clamp_vec4_i32(firstTrailingBit(-vec4<i32>(u_input.a, 30784i, u_input.e, -2147483647i) & abs(vec4<i32>(13163i, -2147483647i, 9879i, u_input.e))), -vec4<i32>(u_input.a, -1i, -2147483647i, 1i), min(firstTrailingBit(vec4<i32>(u_input.a, u_input.a, -1i, 15548i)) << (min(vec4<u32>(30035u, u_input.c.x, u_input.d.x, 1u), vec4<u32>(81013u, u_input.b.x, 88626u, u_input.d.x)) % vec4<u32>(32u)), ~(vec4<i32>(u_input.e, -26063i, 8532i, u_input.e) >> (global1[_wgslsmith_index_u32(u_input.c.x, 11u)] % vec4<u32>(32u))))), u_input.a, max(-(~(~vec2<i32>(u_input.a, -2147483647i))), abs(func_1(false).zx) & _wgslsmith_add_vec2_i32(vec2<i32>(39482i, -13565i), -vec2<i32>(u_input.a, u_input.e))));
}

