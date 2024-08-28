struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: u32,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3>;

var<private> global1: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(-36117i, 24332i, 1i, 2147483647i), vec4<i32>(-36913i, 0i, -1i, 22234i), vec4<i32>(9521i, 46074i, i32(-2147483648), -37102i), vec4<i32>(-1i, 15084i, 1i, 9512i), vec4<i32>(2147483647i, 41025i, -14620i, 1i), vec4<i32>(2409i, 2147483647i, 1i, -35791i), vec4<i32>(-47774i, 32016i, 23141i, -1i), vec4<i32>(-19903i, 64653i, 1i, 2147483647i), vec4<i32>(-60501i, i32(-2147483648), -1i, 1i), vec4<i32>(-10586i, 12536i, 2147483647i, -1i), vec4<i32>(62889i, 1i, -1i, 2147483647i), vec4<i32>(20783i, 1i, 12281i, 57161i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 1i), vec4<i32>(1i, -50173i, 2147483647i, i32(-2147483648)), vec4<i32>(-80263i, 1i, 1615i, -1i), vec4<i32>(-63301i, 0i, 2147483647i, 1i), vec4<i32>(22537i, -26670i, 11446i, -1i), vec4<i32>(27614i, 0i, 36919i, 13995i), vec4<i32>(-57102i, 14209i, 1i, i32(-2147483648)), vec4<i32>(0i, 19859i, -1i, 7764i), vec4<i32>(i32(-2147483648), -10206i, -85110i, 1489i), vec4<i32>(-36005i, -2908i, 11370i, 50699i), vec4<i32>(-1i, i32(-2147483648), 48897i, 25386i));

var<private> global2: array<f32, 14> = array<f32, 14>(-353f, -637f, 1126f, 775f, -1000f, -1925f, -1000f, -871f, -151f, -890f, 693f, -457f, 1490f, 629f);

var<private> global3: array<i32, 26> = array<i32, 26>(0i, i32(-2147483648), 2147483647i, 17832i, -19074i, -59390i, 16513i, 2147483647i, -17555i, 2147483647i, -1i, 0i, 1i, 0i, -25926i, 2147483647i, 11212i, -1i, -3939i, -21791i, -24287i, 2147483647i, 0i, 0i, 2147483647i, 42045i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> bool {
    var var_0 = -31393i > _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(~1u, 26u)], max(~abs(1i), -1i));
    let var_1 = u_input.b.yyz;
    global3 = array<i32, 26>();
    global3 = array<i32, 26>();
    var var_2 = Struct_4(~vec3<u32>(var_1.x, 1u, ~1u), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 14u)]) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.a, 14u)])))), ~(~select(_wgslsmith_mod_u32(0u, 4294967295u), ~var_1.x, true)), !vec2<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    return !(-min(_wgslsmith_div_i32(22493i, 44383i), 35948i) == _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(4294967295u, 23u)], ~global1[_wgslsmith_index_u32(u_input.b.x, 23u)] & vec4<i32>(global3[_wgslsmith_index_u32(var_2.a.x, 26u)], 6996i, 48325i, global3[_wgslsmith_index_u32(2391u, 26u)])));
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    global1 = array<vec4<i32>, 23>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -123f) + _wgslsmith_f_op_f32(2013f + global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.b.x), vec3<u32>(u_input.b.x, u_input.a, 1u)), 14u)]))));
    global3 = array<i32, 26>();
    global0 = array<Struct_4, 3>();
    global3 = array<i32, 26>();
    return Struct_2(~(arg_0 & (-arg_0 >> (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_u32(firstLeadingBit(u_input.b.zx), select(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.xw, u_input.b.xz), firstTrailingBit(u_input.b.wy)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 24858u), u_input.b.xx) | u_input.b.yx, vec2<bool>(true, func_3())), vec2<u32>(~4294967295u, abs(~56084u))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32) -> bool {
    global3 = array<i32, 26>();
    var var_0 = 6606u;
    var var_1 = Struct_1(true, 1u, max(firstLeadingBit(arg_1.c), max(global1[_wgslsmith_index_u32(arg_1.b, 23u)], vec4<i32>(abs(0i), arg_1.c.x, max(-7365i, arg_1.c.x), ~24726i))), -934f);
    let var_2 = func_2(var_1.c.wy);
    global1 = array<vec4<i32>, 23>();
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.zw;
    let var_1 = vec3<u32>(var_0.x, ~(abs(firstLeadingBit(18616u)) | ~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(var_0.x, u_input.b.x, u_input.a, 0u))), var_0.x);
    let var_2 = var_1;
    let var_3 = func_1(firstTrailingBit(u_input.b | u_input.b), Struct_1(select(false, false, _wgslsmith_sub_u32(1u, var_0.x) >= _wgslsmith_mult_u32(1u, 24228u)), var_0.x, -(~global1[_wgslsmith_index_u32(~0u, 23u)]), global2[_wgslsmith_index_u32(u_input.b.x, 14u)]), global2[_wgslsmith_index_u32(61994u, 14u)]);
    let var_4 = Struct_4(select(u_input.b.xxw, ~vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, 4294967295u), 16764u, var_0.x), global2[_wgslsmith_index_u32(select(abs(1u), 1u, func_1(u_input.b, Struct_1(false, var_0.x, vec4<i32>(-7949i, global3[_wgslsmith_index_u32(u_input.b.x, 26u)], -25038i, -3312i), global2[_wgslsmith_index_u32(u_input.a, 14u)]), -527f)), 14u)] < global2[_wgslsmith_index_u32(abs(1u), 14u)]), all(vec3<bool>(true, -global3[_wgslsmith_index_u32(21342u, 26u)] >= (-2147483647i & global3[_wgslsmith_index_u32(0u, 26u)]), !var_3)), u_input.a, vec2<bool>(true, true));
    var var_5 = vec4<u32>(~(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(27252u, 0u, 30150u), vec3<u32>(4294967295u, var_0.x, 25139u), var_4.a), countOneBits(vec3<u32>(21256u, var_2.x, u_input.b.x))) & ~1u), 1u, var_1.x, ~(~(~_wgslsmith_mult_u32(var_1.x, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_add_vec2_i32(-vec2<i32>(global3[_wgslsmith_index_u32(20555u, 26u)], 2147483647i), select(vec2<i32>(0i, global3[_wgslsmith_index_u32(u_input.b.x, 26u)]), vec2<i32>(global3[_wgslsmith_index_u32(var_0.x, 26u)], -56693i), false)) >> (abs(var_5.wx) % vec2<u32>(32u))) | vec2<i32>(0i, -14599i), u_input.b, -global1[_wgslsmith_index_u32(0u, 23u)], min(0i, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_0.x, u_input.b.x), 26u)]));
}

