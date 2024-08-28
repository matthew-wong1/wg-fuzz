struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(1i, -61142i), vec2<i32>(0i, 9839i), vec2<i32>(-1i, -1468i), vec2<i32>(0i, 18035i), vec2<i32>(2147483647i, -14740i), vec2<i32>(-28578i, 0i), vec2<i32>(-5847i, -1i), vec2<i32>(-63010i, -3643i), vec2<i32>(-3507i, -52267i), vec2<i32>(2147483647i, 0i), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, -17570i), vec2<i32>(-66043i, 2147483647i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1i, 30234i), vec2<i32>(-11371i, -20580i), vec2<i32>(i32(-2147483648), -37298i));

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> i32 {
    var var_0 = u_input.b;
    global0 = array<vec2<i32>, 17>();
    var_0 = _wgslsmith_div_vec4_u32(firstLeadingBit(max(vec4<u32>(15726u, 4294967295u, var_0.x, u_input.b.x), ~u_input.b) << (_wgslsmith_mult_vec4_u32(u_input.b, ~vec4<u32>(4294967295u, 57824u, 4294967295u, 1u)) % vec4<u32>(32u))), firstTrailingBit(u_input.b));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, _wgslsmith_f_op_f32(floor(-278f))) + vec2<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1)));
    let var_2 = arg_1;
    return reverseBits(55279i);
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> bool {
    global1 = arg_2;
    var var_0 = Struct_1(any(!select(vec2<bool>(true, arg_1), !vec2<bool>(true, global1.a), vec2<bool>(false, false))), vec4<i32>(u_input.a, ~func_3(-vec3<i32>(-1i, global1.b.x, u_input.a), _wgslsmith_f_op_f32(floor(arg_3))), -7973i, 70081i));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-223f, arg_3, arg_3, arg_3)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), -1003f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1158f)), _wgslsmith_f_op_f32(-785f + _wgslsmith_f_op_f32(-arg_3)))));
    global1 = Struct_1(arg_2.a, global1.b);
    global1 = arg_2;
    return arg_2.a;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: Struct_1) -> vec3<bool> {
    global1 = arg_3;
    global1 = Struct_1(false, arg_3.b);
    var var_0 = Struct_1(select(select(true, arg_0, func_2(reverseBits(u_input.b.xwz), arg_0, arg_3, _wgslsmith_f_op_f32(223f + arg_1.x))), true, true), _wgslsmith_sub_vec4_i32(~vec4<i32>(~global1.b.x, abs(27800i), global1.b.x, ~u_input.a), vec4<i32>(~max(u_input.d, -71213i), -2147483647i, -2147483647i, abs(u_input.d) | -arg_3.b.x)));
    var_0 = Struct_1(false && !func_2(~u_input.b.www, arg_0 && false, arg_3, _wgslsmith_f_op_f32(arg_1.x * -1136f)), vec4<i32>(global1.b.x, firstTrailingBit(_wgslsmith_mult_i32(arg_3.b.x, _wgslsmith_div_i32(var_0.b.x, 1i))), ~6941i, global1.b.x));
    var_0 = arg_3;
    return vec3<bool>(true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(global1.a, global1.a, global1.a, any(select(vec3<bool>(true, false, false), vec3<bool>(global1.a, false, global1.a), !global1.a))), vec4<bool>(global1.a, true, !global1.a, false), vec4<bool>(any(select(select(vec3<bool>(global1.a, global1.a, true), vec3<bool>(false, global1.a, false), global1.a), func_1(global1.a, vec2<f32>(-1307f, 224f), vec2<u32>(49683u, 17493u), Struct_1(false, vec4<i32>(-12821i, u_input.d, global1.b.x, global1.b.x))), any(vec2<bool>(true, false)))), false, all(!select(vec3<bool>(global1.a, global1.a, true), vec3<bool>(true, global1.a, global1.a), false)), true));
    var var_1 = !(!select(!vec3<bool>(var_0.x, global1.a, global1.a), vec3<bool>(func_1(var_0.x, vec2<f32>(314f, -157f), vec2<u32>(u_input.c, u_input.e), Struct_1(global1.a, global1.b)).x, global1.a, var_0.x), !(!vec3<bool>(true, var_0.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yx, global0[_wgslsmith_index_u32(abs(u_input.e), 17u)]);
}

