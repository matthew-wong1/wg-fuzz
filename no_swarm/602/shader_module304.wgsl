struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: bool,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec4<i32>(0i, 2582i, -42157i, 0i), vec4<bool>(true, false, true, true), true, vec2<f32>(619f, 1188f), Struct_1(vec4<f32>(-1297f, 2829f, -827f, 365f), vec3<bool>(true, false, true), vec3<i32>(11781i, 0i, i32(-2147483648)))), Struct_2(vec4<i32>(0i, 2147483647i, 1i, -37165i), vec4<bool>(true, false, false, true), false, vec2<f32>(-1000f, 1000f), Struct_1(vec4<f32>(-359f, -1000f, -234f, -762f), vec3<bool>(false, true, false), vec3<i32>(-58021i, 2147483647i, 2147483647i))), Struct_2(vec4<i32>(10041i, 1i, 20693i, i32(-2147483648)), vec4<bool>(true, false, true, false), false, vec2<f32>(1089f, 228f), Struct_1(vec4<f32>(-1000f, 2816f, -879f, -1012f), vec3<bool>(true, false, false), vec3<i32>(-31460i, 81910i, i32(-2147483648)))), Struct_2(vec4<i32>(-28309i, 1i, -73863i, 4977i), vec4<bool>(true, true, true, false), false, vec2<f32>(-290f, -513f), Struct_1(vec4<f32>(257f, -219f, -398f, -1631f), vec3<bool>(false, false, false), vec3<i32>(i32(-2147483648), 6511i, 2147483647i))));

var<private> global1: i32 = -1i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> bool {
    let var_0 = arg_0.c;
    var var_1 = arg_0.e;
    var var_2 = Struct_1(vec4<f32>(var_1.a.x, -2107f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d.x + _wgslsmith_f_op_f32(-530f * arg_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -256f))), _wgslsmith_f_op_f32(round(arg_0.d.x))), vec3<bool>(arg_0.c, true, !(var_1.a.x != _wgslsmith_f_op_f32(-arg_0.e.a.x))), _wgslsmith_add_vec3_i32(min(_wgslsmith_mult_vec3_i32(firstTrailingBit(arg_0.a.wyz), abs(arg_0.e.c)), u_input.b), arg_0.a.zzw));
    let var_3 = var_1.a.x;
    global0 = array<Struct_2, 4>();
    return var_0;
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    return vec4<bool>(true, all(!select(arg_0.b.yy, arg_0.b.yz, arg_0.b.x)) == select(func_2(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], arg_0.c.x >> (4294967295u % 32u)), arg_0.b.x, true), true, false);
}

fn func_3(arg_0: vec4<i32>) -> bool {
    global0 = array<Struct_2, 4>();
    global1 = -4313i;
    global1 = ~_wgslsmith_mult_i32(reverseBits(_wgslsmith_add_i32(-1249i, ~arg_0.x)), _wgslsmith_mod_i32(countOneBits(arg_0.x), -1i));
    var var_0 = max(vec4<u32>(u_input.a.x, 31786u, 47341u, 17704u), u_input.a);
    var_0 = vec4<u32>(var_0.x, 42000u, ~min(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, 19691u))), abs(1u));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 4>();
    global0 = array<Struct_2, 4>();
    let var_0 = select(!select(func_1(Struct_1(vec4<f32>(-1381f, -113f, 797f, 680f), vec3<bool>(true, false, false), vec3<i32>(48746i, -1i, u_input.b.x))), func_1(Struct_1(vec4<f32>(280f, -1561f, -575f, 1266f), vec3<bool>(true, false, false), u_input.b)), all(vec4<bool>(true, true, true, true))), func_1(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1695f, 368f, 439f, -588f)) + vec4<f32>(1548f, 715f, -501f, -1030f)), vec3<bool>(select(true, true, false), func_3(vec4<i32>(u_input.b.x, 7014i, u_input.b.x, 73258i)), select(true, true, false)), vec3<i32>(max(2147483647i, u_input.b.x), 2147483647i, u_input.b.x))), ~abs(~(-1i)) < u_input.b.x);
    var var_1 = ~u_input.b.x;
    global0 = array<Struct_2, 4>();
    var_1 = _wgslsmith_clamp_i32(u_input.b.x, ~(~1i), u_input.b.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f)));
    global1 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(round(598f)), -2009f))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, -727f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-748f, var_2.x, 973f), vec3<f32>(408f, var_2.x, var_2.x)))))), _wgslsmith_div_vec2_i32(vec2<i32>(-23597i, select(abs(u_input.b.x), countOneBits(0i), true)), vec2<i32>(-72489i, -u_input.b.x >> (max(9941u, 1u) % 32u))), ~firstTrailingBit(-select(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -14236i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 0i), vec4<bool>(var_0.x, var_0.x, var_0.x, false))));
}

