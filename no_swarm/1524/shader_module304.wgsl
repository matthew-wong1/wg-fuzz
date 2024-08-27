struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<f32>(-537f, -380f), vec3<i32>(-41917i, -20670i, -1i), vec2<bool>(false, true), false, -33943i), Struct_1(vec2<f32>(-2396f, -857f), vec3<i32>(-1i, i32(-2147483648), -33450i), vec2<bool>(false, true), false, -67188i), Struct_1(vec2<f32>(2001f, -632f), vec3<i32>(-1i, -1i, 2147483647i), vec2<bool>(true, false), true, 2147483647i), Struct_1(vec2<f32>(1446f, 457f), vec3<i32>(1i, 3546i, -24456i), vec2<bool>(true, true), true, 40233i), Struct_1(vec2<f32>(1117f, 250f), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec2<bool>(false, true), true, 0i));

var<private> global1: vec3<u32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> vec2<i32> {
    global1 = ~select(reverseBits(vec3<u32>(~28585u, ~u_input.b.x, max(u_input.b.x, 0u))), vec3<u32>(12065u, u_input.b.x, ~(global1.x & arg_2)), !select(select(vec3<bool>(true, arg_1.c.x, false), vec3<bool>(false, arg_0.x, false), arg_1.d), vec3<bool>(true, true, true), vec3<bool>(false, true, arg_0.x)));
    let var_0 = arg_1.a;
    let var_1 = vec4<i32>((-2147483647i ^ (-1i ^ u_input.c.x)) & u_input.c.x, 0i, -2147483647i ^ u_input.c.x, i32(-1i) * -8012i);
    var var_2 = 0i == u_input.c.x;
    global1 = abs(~vec3<u32>(firstLeadingBit(38683u), 0u, ~(~39174u)));
    return min(firstLeadingBit(vec2<i32>(-16248i, select(-5185i, abs(arg_1.e), arg_1.c.x && false))), firstTrailingBit(-(arg_1.b.xx ^ vec2<i32>(var_1.x, 2147483647i))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = arg_0;
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-arg_0.c.a), reverseBits(~func_3(!arg_1.c, arg_1, 1u)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-301f, _wgslsmith_f_op_f32(floor(arg_0.c.a.x)))), -(~(arg_0.c.b | vec3<i32>(arg_0.c.e, arg_1.b.x, -2147483647i))), arg_0.c.c, select(var_0.c.d, arg_0.c.d, any(vec4<bool>(var_0.c.d, var_0.c.d, arg_1.d, var_0.c.d)) || !arg_1.d), _wgslsmith_dot_vec3_i32(arg_0.c.b ^ _wgslsmith_sub_vec3_i32(arg_1.b, vec3<i32>(u_input.c.x, arg_0.c.e, u_input.c.x)), arg_1.b)));
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_1 = ~global1.xz;
    return var_0.c.c;
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    global0 = array<Struct_1, 5>();
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1594f))), -244f), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(max(u_input.c.x, u_input.c.x), u_input.c.x << (u_input.b.x % 32u), u_input.c.x & u_input.c.x)), vec3<i32>(select(reverseBits(u_input.c.x), u_input.c.x, arg_0.x), 0i, u_input.c.x)), !select(!select(arg_0, arg_0, arg_0), arg_0, true), arg_0.x, (_wgslsmith_mod_i32(i32(-1i) * -1i, i32(-1i) * -1i) << (~u_input.a % 32u)) >> (abs(u_input.a) % 32u));
    let var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.x)))), _wgslsmith_f_op_vec2_f32(-var_0.a))), reverseBits(var_0.b), func_2(Struct_2(var_0.a, _wgslsmith_clamp_vec2_i32(var_0.b.xy, vec2<i32>(u_input.c.x, var_0.e), vec2<i32>(var_0.e, 1i)) >> (u_input.b % vec2<u32>(32u)), global0[_wgslsmith_index_u32(~firstTrailingBit(9179u), 5u)]), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(573f, 940f) - vec2<f32>(-1000f, var_0.a.x))), vec3<i32>(var_0.b.x, 53333i, i32(-1i) * -2147483647i), select(select(var_0.c, arg_0, arg_0.x), arg_0, all(vec4<bool>(var_0.c.x, arg_0.x, false, false))), all(vec2<bool>(var_1, arg_0.x)) && (arg_0.x | var_1), u_input.c.x)), var_0.c.x, (select(-8026i, 18648i, !arg_0.x) & (i32(-1i) * -1i)) << ((~_wgslsmith_sub_u32(u_input.b.x, 7246u) >> (~(~0u) % 32u)) % 32u));
    global0 = array<Struct_1, 5>();
    return Struct_2(var_0.a, _wgslsmith_mult_vec2_i32(var_0.b.zx, vec2<i32>(var_2.b.x, 22127i)), global0[_wgslsmith_index_u32(global1.x, 5u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.b.x, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.x, 0u, u_input.b.x), vec3<u32>(u_input.b.x, global1.x, u_input.b.x))), 5u)];
    global0 = array<Struct_1, 5>();
    global1 = ~(~(~(~vec3<u32>(39992u, 17495u, 0u)) & abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec3<u32>(u_input.b.x, u_input.a, global1.x)))));
    let var_1 = func_1(select(vec2<bool>(var_0.d, !select(var_0.c.x, false, var_0.c.x)), var_0.c, var_0.c));
    let var_2 = var_1;
    let var_3 = countOneBits(countOneBits(~vec3<u32>(u_input.b.x, 1u, ~global1.x)));
    global0 = array<Struct_1, 5>();
    global1 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-146f, var_2.c.a.x) * var_0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(109f, 1946f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(var_2.a)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.a.x, var_0.a.x), _wgslsmith_f_op_vec2_f32(trunc(var_0.a)), true)))), -18752i, ~vec2<i32>(~0i, var_2.c.e), vec4<u32>(_wgslsmith_dot_vec3_u32(var_3, _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, var_3.x, var_3.x), vec3<u32>(u_input.a, u_input.a, global1.x))), max(1u, 1u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(9945u, 4294967295u, 0u, 42903u)), min(vec4<u32>(4294967295u, 1739u, 1u, 0u) & vec4<u32>(global1.x, 27173u, var_3.x, var_3.x), firstTrailingBit(vec4<u32>(var_3.x, u_input.b.x, 66208u, 0u)))), 19804u));
}

