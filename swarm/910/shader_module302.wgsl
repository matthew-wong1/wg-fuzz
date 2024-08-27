struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: vec2<i32>) -> vec3<u32> {
    global1 = array<vec3<bool>, 22>();
    var var_0 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~_wgslsmith_mult_vec2_u32(u_input.b.zx, vec2<u32>(u_input.b.x, u_input.b.x))), select(4294967295u, 1u, all(vec3<bool>(false, false, true)) && true));
    global1 = array<vec3<bool>, 22>();
    global0 = array<f32, 3>();
    let var_1 = vec4<i32>(25791i ^ arg_2.x, 0i, i32(-1i) * -2147483647i, -1i);
    return u_input.b;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = arg_2;
    global0 = array<f32, 3>();
    var var_1 = arg_2;
    let var_2 = Struct_1(vec3<f32>(1045f, 748f, _wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, false))), countOneBits(vec2<u32>(arg_1, arg_1 ^ select(arg_2.c.x, 0u, false))), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.a.yy + vec2<f32>(global0[_wgslsmith_index_u32(29745u, 3u)], 501f))))), _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2.e, var_0.d.x, -1355i), abs(abs(vec3<i32>(arg_2.d.x, 0i, -11550i)))), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.d.x, -50303i), min(min(var_1.d, vec2<i32>(-2147483647i, 7124i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-4466i, arg_2.e), vec2<i32>(0i, var_1.e))))), abs(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.d, ~var_0.d), vec2<i32>(~var_1.e, var_1.d.x))), firstTrailingBit(var_0.d.x));
    var var_3 = _wgslsmith_f_op_f32(-var_1.a.x);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1510f, 618f, var_1.a.x, global0[_wgslsmith_index_u32(6976u, 3u)]) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.x, var_0.a.x, arg_2.a.x, 1145f), vec4<f32>(-1275f, 308f, 835f, arg_2.a.x), true))))));
}

fn func_1() -> Struct_1 {
    var var_0 = !(false && !any(vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_add_vec3_u32(select(u_input.b, vec3<u32>(72618u, u_input.b.x, u_input.a), global1[_wgslsmith_index_u32(u_input.a, 22u)]), u_input.b), ~_wgslsmith_div_u32(u_input.a, u_input.b.x), Struct_1(vec3<f32>(-1125f, 332f, -309f), u_input.b.yz, vec3<u32>(u_input.b.x, 76727u, u_input.a), vec2<i32>(-2147483647i, -12041i), 0i)))));
    var var_2 = vec2<f32>(734f, _wgslsmith_f_op_f32(f32(-1f) * -334f));
    var_0 = false;
    global0 = array<f32, 3>();
    return Struct_1(vec3<f32>(var_1.x, var_2.x, var_2.x), ~u_input.b.zy, ~u_input.b, -_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(1i, 19194i)), vec2<i32>(-67014i, -41655i)), ~(-vec2<i32>(2147483647i, 2147483647i))), ~(-11558i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 22>();
    global1 = array<vec3<bool>, 22>();
    let var_0 = func_1();
    global0 = array<f32, 3>();
    var var_1 = var_0;
    global1 = array<vec3<bool>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~16208u, var_0.b.x, u_input.b.x, abs(u_input.b.x)));
}

