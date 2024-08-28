struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: Struct_3,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<Struct_3, 5>;

var<private> global1: Struct_4 = Struct_4(58579u, vec3<bool>(false, true, true), Struct_3(vec2<u32>(4294967295u, 6885u), Struct_2(-1549f)), Struct_3(vec2<u32>(16179u, 4294967295u), Struct_2(329f)), Struct_1(vec2<i32>(-1i, 1i)));

var<private> global2: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(-1i, 0i, -26301i, 31453i), vec4<i32>(-4432i, 1i, -1i, 24162i), vec4<i32>(1i, 0i, -23141i, -43428i), vec4<i32>(-28292i, 2147483647i, i32(-2147483648), 0i), vec4<i32>(-25820i, -47908i, 1i, 1i), vec4<i32>(29518i, 0i, -15233i, -1i), vec4<i32>(2147483647i, 2147483647i, -25390i, -1i), vec4<i32>(2147483647i, i32(-2147483648), -1i, 19272i), vec4<i32>(-35996i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -7416i, -24774i, 56959i), vec4<i32>(1i, 3719i, 2147483647i, 63116i), vec4<i32>(i32(-2147483648), 1i, -1i, 39537i), vec4<i32>(0i, -99810i, 1i, 53051i), vec4<i32>(74873i, 19631i, 0i, 2147483647i), vec4<i32>(1i, -1i, -33864i, 3118i), vec4<i32>(0i, -181i, 1i, 1i), vec4<i32>(9903i, -14469i, i32(-2147483648), 36984i), vec4<i32>(23397i, -19260i, i32(-2147483648), -1i), vec4<i32>(2147483647i, 0i, -11320i, 0i), vec4<i32>(-1160i, 1i, 2147483647i, -19153i), vec4<i32>(-6150i, 1i, -1i, -1i), vec4<i32>(21028i, 2147483647i, 2147483647i, i32(-2147483648)), vec4<i32>(-1i, 1i, -19157i, 1i), vec4<i32>(2147483647i, 0i, 22651i, -3521i), vec4<i32>(0i, -1i, i32(-2147483648), 45925i), vec4<i32>(-33068i, 46156i, 5078i, 2147483647i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = global1.c.b;
    var var_1 = _wgslsmith_add_vec2_i32(arg_0.a, vec2<i32>(abs(global1.e.a.x), -arg_0.a.x));
    let var_2 = global1.b.x;
    var var_3 = Struct_2(626f);
    var_3 = global1.c.b;
    return 0i;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: Struct_3) -> vec4<f32> {
    let var_0 = select(vec3<bool>(arg_2.x, _wgslsmith_add_i32(~global1.e.a.x, global1.e.a.x) == func_2(Struct_1(vec2<i32>(global1.e.a.x, 7913i))), false), !select(arg_2.wzy, arg_2.wwz, true), vec3<bool>(!((arg_2.x || true) != true), !(true & any(arg_2)), (!arg_2.x != (global1.e.a.x > global1.e.a.x)) || (all(vec2<bool>(true, arg_2.x)) && true)));
    var var_1 = i32(-1i) * -_wgslsmith_add_i32(-13892i, (47478i << (1u % 32u)) & (global1.e.a.x >> (44871u % 32u)));
    global2 = array<vec4<i32>, 26>();
    var var_2 = global1.d.a;
    let var_3 = Struct_4(var_2.x, vec3<bool>(all(global1.b.xy), global1.b.x, !(!(arg_1.x <= global1.d.b.a))), Struct_3(global1.d.a, global1.c.b), Struct_3(~abs(~vec2<u32>(var_2.x, 60760u)), Struct_2(-528f)), global1.e);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(878f + 151f))), _wgslsmith_f_op_f32(exp2(arg_1.x)), 176f), _wgslsmith_div_vec4_f32(arg_1, _wgslsmith_f_op_vec4_f32(trunc(arg_1)))));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec4<bool> {
    global0 = array<Struct_3, 5>();
    var var_0 = global1.d.b;
    var var_1 = global1.c;
    var var_2 = false;
    var var_3 = _wgslsmith_mod_u32(reverseBits(select(~_wgslsmith_mod_u32(4294967295u, 56877u), _wgslsmith_mult_u32(u_input.a, firstTrailingBit(global1.a)), true)), 0u);
    return !(!vec4<bool>(global1.b.x, !(!global1.b.x), global1.b.x, !global1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.d.b.a, global1.d.b.a, global1.d.b.a, global1.d.b.a), vec4<f32>(-1129f, -178f, -999f, global1.d.b.a))), vec4<f32>(-532f, 375f, -236f, 697f)), _wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(global1.c.b.a, global1.d.b.a, global1.d.b.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.b.a, global1.d.b.a, 1465f, -1241f)), !vec4<bool>(true, global1.b.x, true, global1.b.x), global1.d)))))));
    global0 = array<Struct_3, 5>();
    let var_1 = ~(~(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, 4294967295u), ~1433u) ^ max(4294967295u, 1u >> (global1.a % 32u))));
    global0 = array<Struct_3, 5>();
    var var_2 = all(func_3(global1.c.b, global1.e.a.x));
    global0 = array<Struct_3, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.b.a);
}

