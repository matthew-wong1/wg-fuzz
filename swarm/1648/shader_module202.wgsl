struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: Struct_1 = Struct_1(false);

var<private> global2: array<vec2<i32>, 5>;

var<private> global3: Struct_1 = Struct_1(false);

var<private> global4: vec4<u32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> u32 {
    var var_0 = Struct_1(global1.a);
    var var_1 = 4681i;
    let var_2 = Struct_1(var_0.a);
    global3 = var_2;
    var_1 = -_wgslsmith_mult_i32(43366i, -7555i);
    return abs(u_input.e.x);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    let var_0 = false;
    let var_1 = arg_1;
    let var_2 = reverseBits(vec3<i32>(u_input.b.x, firstTrailingBit(1i), -(i32(-1i) * -1i)));
    var var_3 = max(~(~u_input.e.yy), vec2<u32>(24918u, ~(~func_2(arg_2, true))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-232f, arg_2.x, arg_2.x, arg_2.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(777f, -515f, -1851f, arg_2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -541f, arg_2.x, arg_2.x))))));
    return ~u_input.e.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> i32 {
    global2 = array<vec2<i32>, 5>();
    global4 = vec4<u32>(30366u, u_input.a.x | 57821u, u_input.e.x, ~_wgslsmith_div_u32(func_2(arg_3, any(vec4<bool>(global3.a, arg_1.a, arg_2.a, global1.a))), func_3(Struct_1(true), arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-334f, arg_3.x)))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1205f - _wgslsmith_f_op_f32(1679f + -572f)) - _wgslsmith_f_op_f32(426f + _wgslsmith_f_op_f32(exp2(arg_3.x)))) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.x))))));
    let var_1 = arg_3.x;
    var var_2 = Struct_1(true);
    return ~_wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.c, u_input.d, u_input.d, u_input.c), _wgslsmith_mod_vec4_i32(-vec4<i32>(47480i, -1i, 0i, u_input.b.x), -vec4<i32>(u_input.d, 33466i, -1i, 0i) >> (~vec4<u32>(24985u, u_input.e.x, 5384u, u_input.e.x) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~31179u;
    global3 = Struct_1(select(_wgslsmith_f_op_f32(-391f - _wgslsmith_f_op_f32(floor(-782f))) > _wgslsmith_f_op_f32(f32(-1f) * -984f), _wgslsmith_mod_i32(-905i, u_input.d) < abs(_wgslsmith_div_i32(u_input.b.x, u_input.b.x)), true));
    global0 = _wgslsmith_mod_i32(countOneBits(-u_input.b.x | func_1(Struct_1(false), Struct_1(true), Struct_1(true), vec2<f32>(-224f, 753f))), -u_input.d);
    global0 = -u_input.d;
    global2 = array<vec2<i32>, 5>();
    global1 = Struct_1(false);
    let var_1 = vec4<i32>(-1i) * -vec4<i32>(u_input.d >> (~21256u % 32u), u_input.c, _wgslsmith_mult_i32(min(u_input.c, u_input.c), _wgslsmith_mod_i32(u_input.b.x, u_input.c)), -1i);
    var var_2 = Struct_1(!select(global3.a, all(vec4<bool>(global3.a, false, true, global1.a)), false) | false);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~vec3<i32>(i32(-1i) * -17613i, var_1.x ^ -2147483647i, 0i)), _wgslsmith_add_i32(28125i, u_input.d));
}

