struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12>;

var<private> global1: i32 = -21957i;

var<private> global2: array<bool, 24>;

var<private> global3: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<f32>(1109f, -1837f, -2475f)), Struct_1(vec3<f32>(-1014f, -1071f, -784f)), Struct_1(vec3<f32>(1300f, 985f, 607f)), Struct_1(vec3<f32>(-1563f, -719f, -824f)), Struct_1(vec3<f32>(969f, 1000f, -558f)), Struct_1(vec3<f32>(-784f, 1460f, -1085f)), Struct_1(vec3<f32>(579f, -1380f, 547f)), Struct_1(vec3<f32>(394f, 343f, 893f)), Struct_1(vec3<f32>(1440f, -2182f, 1000f)), Struct_1(vec3<f32>(1000f, 1336f, -723f)), Struct_1(vec3<f32>(-1251f, 642f, 1015f)), Struct_1(vec3<f32>(-2367f, 162f, 1529f)), Struct_1(vec3<f32>(-864f, -253f, -582f)), Struct_1(vec3<f32>(-2267f, -1036f, -804f)), Struct_1(vec3<f32>(-1000f, -1082f, 1792f)), Struct_1(vec3<f32>(-137f, 266f, 1000f)), Struct_1(vec3<f32>(-784f, 1336f, -823f)), Struct_1(vec3<f32>(738f, 1198f, 103f)), Struct_1(vec3<f32>(-430f, -653f, -386f)), Struct_1(vec3<f32>(1049f, -834f, -441f)), Struct_1(vec3<f32>(982f, 1000f, 662f)), Struct_1(vec3<f32>(-637f, -605f, 1000f)), Struct_1(vec3<f32>(-1153f, 1023f, -183f)), Struct_1(vec3<f32>(434f, -1628f, 588f)), Struct_1(vec3<f32>(-140f, -1003f, 1566f)), Struct_1(vec3<f32>(-160f, 249f, -1516f)));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<i32>) -> f32 {
    return arg_0.x;
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x), _wgslsmith_f_op_f32(arg_0.a.x * -705f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * -1000f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-arg_0.a.zx), -vec2<i32>(12092i, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + 1526f)))));
    global0 = array<vec4<i32>, 12>();
    global3 = array<Struct_1, 26>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0.a.yy)) - _wgslsmith_div_vec2_f32(arg_0.a.yy, vec2<f32>(var_0.x, var_0.x)))), abs(_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), vec2<i32>(u_input.a, u_input.a))))), var_0.x, 174f, arg_0.a.x);
    var var_2 = 1i;
    return !(!(!all(vec4<bool>(global2[_wgslsmith_index_u32(7959u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], true, true))) | global2[_wgslsmith_index_u32(u_input.d.x, 24u)]);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2.a;
    global3 = array<Struct_1, 26>();
    global1 = 1i;
    global0 = array<vec4<i32>, 12>();
    return _wgslsmith_f_op_f32(exp2(var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 24>();
    let var_0 = u_input.e;
    let var_1 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(-35770i, _wgslsmith_add_i32(-1i, u_input.a) >> (_wgslsmith_clamp_u32(u_input.b.x, u_input.e, 0u) % 32u), ~(-u_input.a)), _wgslsmith_add_vec3_i32(~abs(vec3<i32>(u_input.a, u_input.a, 12157i)), ~vec3<i32>(2147483647i, u_input.a, u_input.a) | min(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(u_input.a, 0i, 0i))));
    global0 = array<vec4<i32>, 12>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1781f, 1473f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(233f)) + _wgslsmith_f_op_f32(f32(-1f) * -1148f)))), 1f, _wgslsmith_f_op_f32(func_3(select(abs(vec2<i32>(var_1.x, 1i)) ^ var_1.xx, select(vec2<i32>(29906i, -29114i), vec2<i32>(24699i, 1i), func_1(Struct_1(vec3<f32>(1191f, 1261f, 304f)))), global2[_wgslsmith_index_u32(4294967295u, 24u)]), global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_0, var_0), 26u)], Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1649f, -199f, 1000f) + vec3<f32>(770f, -108f, -367f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(var_2)))));
}

