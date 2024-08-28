struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(i32(-2147483648), -4187i), vec2<i32>(2147483647i, -1i), vec2<i32>(1i, 0i), vec2<i32>(1i, 41764i), vec2<i32>(i32(-2147483648), 26074i), vec2<i32>(2846i, -45313i), vec2<i32>(0i, -43473i), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, -11117i), vec2<i32>(0i, 2147483647i), vec2<i32>(-17404i, 1i), vec2<i32>(-1055i, 12746i), vec2<i32>(-25933i, 43569i), vec2<i32>(0i, 58239i), vec2<i32>(-36560i, 0i), vec2<i32>(25766i, 2147483647i), vec2<i32>(0i, 24823i), vec2<i32>(-2518i, 1i), vec2<i32>(50625i, 7727i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(0i, 1i), vec2<i32>(0i, -6845i), vec2<i32>(31501i, 2147483647i), vec2<i32>(10701i, 0i), vec2<i32>(34087i, 1i));

var<private> global1: array<vec3<bool>, 8>;

var<private> global2: bool;

var<private> global3: vec3<i32> = vec3<i32>(2147483647i, 1i, 2147483647i);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec4<bool>) -> u32 {
    return 33562u;
}

fn func_3(arg_0: Struct_5, arg_1: u32) -> i32 {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1374f) + _wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x));
    global0 = array<vec2<i32>, 27>();
    return _wgslsmith_dot_vec2_i32(min(vec2<i32>(54615i, ~_wgslsmith_add_i32(global3.x, -2147483647i)), countOneBits(arg_0.a.xz)), reverseBits(reverseBits(vec2<i32>(select(-1i, -2147483647i, true), global3.x & -2147483647i))));
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<i32>, 27>();
    let var_0 = ~func_3(Struct_5(-(~vec3<i32>(global3.x, 28650i, -16366i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2049f, 1000f) + vec2<f32>(1181f, -1477f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(188f, -1974f) - vec2<f32>(-851f, 1000f)))), func_2(35007u, all(global1[_wgslsmith_index_u32(~u_input.a.x, 8u)]), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))));
    let var_1 = vec4<bool>(all(!select(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(15322u, u_input.a.x), 8u)], vec3<bool>(false, true, true), true)), true, ((~var_0 ^ 82539i) < -1i) & true, true);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -212f);
    var var_3 = Struct_2(Struct_1(-203f, max(abs(_wgslsmith_add_vec4_i32(vec4<i32>(0i, var_0, global3.x, var_0), vec4<i32>(-1i, global3.x, -38253i, -2147483647i))), (vec4<i32>(-35489i, global3.x, var_0, 34150i) | vec4<i32>(-58452i, 19661i, var_0, global3.x)) >> ((vec4<u32>(u_input.a.x, u_input.a.x, 1u, 0u) | vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))), var_2, vec3<f32>(960f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -317f), _wgslsmith_f_op_f32(-var_2), any(vec4<bool>(var_1.x, var_1.x, var_1.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, -1401f))), var_1.x), Struct_1(671f, _wgslsmith_mult_vec4_i32(abs(vec4<i32>(24949i, -30796i, var_0, 0i) ^ vec4<i32>(-37116i, var_0, var_0, var_0)), vec4<i32>(-4189i, ~global3.x, _wgslsmith_mod_i32(global3.x, 32299i), global3.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -452f), _wgslsmith_f_op_f32(min(var_2, -329f))) * -446f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-902f, 105f, -959f)))), false), Struct_1(var_2, vec4<i32>(var_0, abs(func_3(Struct_5(vec3<i32>(-30591i, global3.x, -13431i), vec2<f32>(var_2, 455f)), 0u)), global3.x, ~(-var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - var_2), 959f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, -1749f) - vec3<f32>(var_2, -466f, -558f)))), false));
    return Struct_1(var_2, -vec4<i32>(-firstLeadingBit(25358i), -2147483647i, -global3.x, 0i), 1000f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2562f, _wgslsmith_f_op_f32(-var_3.c.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(615f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.d.x))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = false;
    var var_0 = func_1();
    var var_1 = Struct_4(select(vec3<bool>(var_0.e, !var_0.e, !all(vec2<bool>(false, var_0.e))), vec3<bool>(var_0.e, var_0.e, var_0.e), false), min(var_0.b.xz, vec2<i32>(global3.x, -8346i)), ~_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(min(var_0.b.zy, vec2<i32>(global3.x, 2147483647i)), vec2<i32>(-26690i, global3.x), vec2<i32>(-2147483647i, var_0.b.x)), vec2<i32>(-41108i, var_0.b.x ^ var_0.b.x)), vec2<u32>(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 34717u, 4294967295u), vec4<u32>(13881u, u_input.a.x, 20057u, 1u)) | vec4<u32>(u_input.a.x, 14625u, 88874u, 7487u), ~(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)))));
    var_1 = Struct_4(select(!var_1.a, var_1.a, any(global1[_wgslsmith_index_u32(abs(~var_1.d.x), 8u)])), ~_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(-var_1.c, -global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), var_1.b), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(~global0[_wgslsmith_index_u32(32081u, 27u)], _wgslsmith_mult_vec2_i32(global0[_wgslsmith_index_u32(var_1.d.x, 27u)], vec2<i32>(-2147483647i, var_1.c.x))) << (vec2<u32>(~27789u, var_1.d.x) % vec2<u32>(32u)), var_1.b), u_input.a.xz);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.c - var_0.a))));
    let var_3 = var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(~(-7838i), ~(~(~vec2<u32>(u_input.a.x, var_1.d.x) << (firstTrailingBit(vec2<u32>(var_1.d.x, 0u)) % vec2<u32>(32u)))), 1000f);
}

