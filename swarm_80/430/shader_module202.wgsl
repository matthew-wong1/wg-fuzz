struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_2, 20>;

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<i32>(5422i, 63084i, -19241i), true), Struct_1(vec3<i32>(20702i, -1366i, 1i), false), Struct_1(vec3<i32>(-21040i, -51060i, 1i), false), Struct_1(vec3<i32>(-37713i, -3640i, -16269i), true), Struct_1(vec3<i32>(3145i, 1i, -73557i), false), Struct_1(vec3<i32>(i32(-2147483648), -22914i, 8618i), false), Struct_1(vec3<i32>(1i, -38987i, i32(-2147483648)), false), Struct_1(vec3<i32>(-1i, 0i, -7441i), false), Struct_1(vec3<i32>(21680i, -1i, -13180i), true), Struct_1(vec3<i32>(2147483647i, 0i, 15158i), true), Struct_1(vec3<i32>(-61099i, 1i, i32(-2147483648)), false), Struct_1(vec3<i32>(-73568i, 63364i, -57135i), false), Struct_1(vec3<i32>(i32(-2147483648), 5409i, -8984i), true), Struct_1(vec3<i32>(-25006i, 0i, 2441i), true), Struct_1(vec3<i32>(-351i, -54200i, -48403i), true), Struct_1(vec3<i32>(-61377i, -38146i, 16962i), true), Struct_1(vec3<i32>(2147483647i, -20296i, 50155i), false), Struct_1(vec3<i32>(1i, 0i, 1i), true), Struct_1(vec3<i32>(i32(-2147483648), -18705i, 0i), false), Struct_1(vec3<i32>(0i, 48488i, -38079i), true), Struct_1(vec3<i32>(-68542i, -9951i, -2404i), true), Struct_1(vec3<i32>(2147483647i, 24868i, 1i), false), Struct_1(vec3<i32>(i32(-2147483648), 0i, -33559i), true));

var<private> global3: vec2<u32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = all(select(vec3<bool>(true, true, false), !vec3<bool>(true, true, select(true, true, false)), arg_0 <= ~1u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2235f, -1072f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1467f, -1021f) + vec2<f32>(185f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-846f, -2233f))), vec2<bool>(true, any(vec3<bool>(false, true, true)))))));
    var var_2 = false;
    var var_3 = -645f;
    let var_4 = vec4<bool>(false | all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))), false, any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec3<bool>(false, false, true))), !select(vec2<bool>(true, true), vec2<bool>(false, true), false))), true);
    return any(var_4);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_2(66135u, global2[_wgslsmith_index_u32(~u_input.a.x | (global3.x ^ ~17016u), 23u)], global2[_wgslsmith_index_u32(u_input.a.x, 23u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-833f, 708f), vec2<f32>(-548f, 1238f)))))));
    global2 = array<Struct_1, 23>();
    var var_1 = _wgslsmith_f_op_vec2_f32(min(var_0.d, var_0.d));
    let var_2 = var_0;
    global1 = array<Struct_2, 20>();
    return ~(~(~_wgslsmith_mult_u32(_wgslsmith_div_u32(var_2.a, 4294967295u), global3.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = reverseBits(arg_1.a);
    let var_1 = firstLeadingBit(48766u | _wgslsmith_dot_vec2_u32(vec2<u32>(~10634u, 4294967295u), min(_wgslsmith_div_vec2_u32(vec2<u32>(1u, global3.x), vec2<u32>(global3.x, 39414u)), u_input.a.xz)));
    let var_2 = arg_0.a.x ^ (20479i >> (_wgslsmith_add_u32(firstLeadingBit(~global3.x), 1u) % 32u));
    global3 = u_input.a.zy;
    var var_3 = 2147483647i;
    return func_3(Struct_1(var_0, any(vec2<bool>(!arg_0.b, !arg_1.b))));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_1) -> bool {
    global3 = _wgslsmith_div_vec2_u32(vec2<u32>(~16048u, 4294967295u), ~vec2<u32>(firstTrailingBit(4294967295u), ~_wgslsmith_add_u32(arg_1, u_input.a.x)));
    global3 = vec2<u32>(max(max(_wgslsmith_dot_vec2_u32(u_input.a.yx << (vec2<u32>(u_input.a.x, 59015u) % vec2<u32>(32u)), u_input.a.yy), _wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, 4294967295u) | u_input.a.xy, ~u_input.a.yx)), func_4(global2[_wgslsmith_index_u32(func_3(Struct_1(arg_3.a, arg_0.x)), 23u)], arg_3)), func_3(global2[_wgslsmith_index_u32((arg_1 ^ u_input.a.x) ^ 29016u, 23u)]) ^ abs(4294967295u));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * 1586f));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.x))), arg_2.x, -496f);
    var var_2 = any(arg_0);
    return arg_3.b;
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    global0 = true;
    var var_0 = arg_0.a.x;
    return global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_3(Struct_1(-arg_0.a, any(vec4<bool>(arg_0.b, arg_1, arg_1, true)))), countOneBits(4294967295u), reverseBits(~(~global3.x)) | u_input.a.x), 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 23>();
    let var_0 = false;
    global0 = any(!vec4<bool>(var_0, !(!var_0), !var_0, var_0));
    global2 = array<Struct_1, 23>();
    let var_1 = func_5(Struct_1(vec3<i32>(1i, 1i, 1i), func_2(vec3<bool>(true || var_0, func_1(global3.x), true), 24257u, vec3<f32>(943f, _wgslsmith_f_op_f32(ceil(1014f)), -176f), Struct_1(~vec3<i32>(2147483647i, -15330i, 1781i), var_0 || var_0))), (true | func_1(1u)) && select(any(vec3<bool>(var_0, true, true)), var_0, all(select(vec3<bool>(false, var_0, false), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, var_0)))));
    var var_2 = !vec2<bool>(false, !(any(vec4<bool>(false, false, true, true)) == all(vec3<bool>(var_1.c.b, var_0, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.b.a.x, -2494i), _wgslsmith_mod_vec2_i32(~vec2<i32>(-1i, -1561i), max(var_1.c.a.zz, var_1.c.a.xz))));
}

