struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 12> = array<Struct_5, 12>(Struct_5(Struct_2(vec4<f32>(430f, -268f, 971f, -242f))), Struct_5(Struct_2(vec4<f32>(-1949f, 464f, -192f, -1340f))), Struct_5(Struct_2(vec4<f32>(369f, 294f, 1106f, 471f))), Struct_5(Struct_2(vec4<f32>(-1000f, -1000f, 1430f, -697f))), Struct_5(Struct_2(vec4<f32>(886f, -721f, 1000f, -362f))), Struct_5(Struct_2(vec4<f32>(843f, -1391f, -413f, 1331f))), Struct_5(Struct_2(vec4<f32>(1395f, 1894f, 599f, 591f))), Struct_5(Struct_2(vec4<f32>(1733f, 1093f, 591f, -1929f))), Struct_5(Struct_2(vec4<f32>(614f, 621f, -425f, -1271f))), Struct_5(Struct_2(vec4<f32>(945f, 1000f, 1188f, -334f))), Struct_5(Struct_2(vec4<f32>(-901f, 446f, -1834f, 1007f))), Struct_5(Struct_2(vec4<f32>(-1311f, 1017f, -811f, 1263f))));

var<private> global1: vec3<u32>;

var<private> global2: array<vec4<f32>, 2>;

var<private> global3: vec4<u32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<i32>) -> f32 {
    var var_0 = ~(106725i & u_input.b.x);
    var_0 = -23772i;
    var var_1 = Struct_4(1u);
    global0 = array<Struct_5, 12>();
    var var_2 = _wgslsmith_add_i32(abs(arg_1.x), -(~select(firstTrailingBit(10425i), -arg_1.x, false)));
    return 1010f;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_mult_i32(596i, -9607i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1152f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(global1.x, 12u)], u_input.b))) + -1000f)));
    global3 = ~(~vec4<u32>(global3.x, 102097u, global1.x, max(184u, global3.x)) ^ ~vec4<u32>(~15015u, 1u, _wgslsmith_add_u32(0u, global3.x), global3.x));
    global2 = array<vec4<f32>, 2>();
    var_0 = ~_wgslsmith_add_i32(u_input.b.x, 2147483647i);
    return u_input.d.x;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<bool>, arg_3: vec4<f32>) -> i32 {
    let var_0 = Struct_5(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-765f - arg_3.x), arg_3.x, arg_3.x, 1177f))));
    let var_1 = ~((29671u & func_2()) ^ abs(u_input.d.x));
    let var_2 = Struct_2(vec4<f32>(686f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), -2112f, 1186f));
    global0 = array<Struct_5, 12>();
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(arg_3 + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, var_0.a.a.x, var_0.a.a.x) * var_0.a.a))))));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 12>();
    var var_0 = select(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.b.x), -37456i & u_input.c, func_1(true, false, vec3<bool>(false, true, false), vec4<f32>(383f, 568f, -850f, 1000f)), -1i ^ u_input.a.x) | ~u_input.a, ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.c, 24274i, 0i), u_input.a)), _wgslsmith_sub_vec4_i32(u_input.a, _wgslsmith_div_vec4_i32(~u_input.a, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -3134i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.c, 2147483647i, u_input.c, u_input.b.x)))), !any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, false)))));
    var var_1 = -var_0.yww;
    var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(~(-_wgslsmith_mult_i32(9945i, -4555i)), _wgslsmith_mod_i32(i32(-1i) * -6708i, func_1(true, false, vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(max(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(global1.x, 2u)])))), _wgslsmith_div_i32(u_input.a.x, 2147483647i >> ((global1.x | 4294967295u) % 32u))), _wgslsmith_mod_vec3_i32(~_wgslsmith_sub_vec3_i32(-vec3<i32>(-2147483647i, -23712i, -1i), vec3<i32>(4415i, u_input.b.x, u_input.b.x) >> (u_input.d % vec3<u32>(32u))), -vec3<i32>(var_1.x, 51258i, u_input.b.x)));
    var var_2 = vec4<bool>(any(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), u_input.d.x >= 14056u)), true | all(vec2<bool>(any(vec2<bool>(true, false)), any(vec3<bool>(true, false, true)))), !(!(all(vec4<bool>(true, true, false, false)) != all(vec2<bool>(true, false)))), false);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -398f)))));
    let var_4 = _wgslsmith_f_op_f32(abs(2106f)) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) * -1000f))));
    var var_5 = _wgslsmith_mult_vec4_u32(~select(~abs(vec4<u32>(0u, u_input.d.x, global1.x, u_input.d.x)), ~vec4<u32>(global3.x, u_input.d.x, 1u, global1.x) ^ vec4<u32>(56823u, global1.x, 43802u, 4294967295u), vec4<bool>(select(var_4, true, var_4), !var_2.x, var_4 || var_4, true)), ~vec4<u32>(~select(global1.x, global1.x, var_4), firstLeadingBit(global3.x), u_input.d.x | global1.x, u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(max(1u, u_input.d.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1266f)), 1000f)));
}

