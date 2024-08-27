struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 66708u);

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(-716f, vec2<f32>(1103f, -201f), vec3<bool>(true, true, false))), Struct_2(Struct_1(1345f, vec2<f32>(223f, 1583f), vec3<bool>(false, false, true))), Struct_2(Struct_1(-268f, vec2<f32>(-1085f, -129f), vec3<bool>(true, true, true))), Struct_2(Struct_1(515f, vec2<f32>(1000f, -152f), vec3<bool>(true, false, true))), Struct_2(Struct_1(1108f, vec2<f32>(-1509f, -1580f), vec3<bool>(false, false, false))), Struct_2(Struct_1(-398f, vec2<f32>(-1478f, 2483f), vec3<bool>(false, false, true))), Struct_2(Struct_1(-397f, vec2<f32>(-2394f, 1000f), vec3<bool>(false, false, true))), Struct_2(Struct_1(654f, vec2<f32>(1000f, -155f), vec3<bool>(false, false, true))), Struct_2(Struct_1(583f, vec2<f32>(1000f, 560f), vec3<bool>(false, true, false))), Struct_2(Struct_1(1324f, vec2<f32>(633f, -419f), vec3<bool>(false, true, false))), Struct_2(Struct_1(-105f, vec2<f32>(-1057f, -407f), vec3<bool>(false, true, true))), Struct_2(Struct_1(116f, vec2<f32>(935f, 940f), vec3<bool>(false, true, true))), Struct_2(Struct_1(-582f, vec2<f32>(-437f, 1510f), vec3<bool>(false, false, true))), Struct_2(Struct_1(-1512f, vec2<f32>(-804f, 246f), vec3<bool>(true, true, false))), Struct_2(Struct_1(-139f, vec2<f32>(580f, -1034f), vec3<bool>(false, true, false))), Struct_2(Struct_1(295f, vec2<f32>(630f, -788f), vec3<bool>(false, true, true))), Struct_2(Struct_1(195f, vec2<f32>(1000f, 207f), vec3<bool>(true, true, false))), Struct_2(Struct_1(283f, vec2<f32>(254f, -529f), vec3<bool>(false, false, true))), Struct_2(Struct_1(-2062f, vec2<f32>(-1432f, -1672f), vec3<bool>(true, true, true))), Struct_2(Struct_1(-387f, vec2<f32>(1585f, -615f), vec3<bool>(true, false, true))), Struct_2(Struct_1(-1366f, vec2<f32>(-1000f, -804f), vec3<bool>(false, true, true))));

var<private> global2: Struct_1 = Struct_1(-1235f, vec2<f32>(534f, -942f), vec3<bool>(true, true, false));

var<private> global3: Struct_1;

var<private> global4: array<vec3<bool>, 9>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<f32>) -> bool {
    var var_0 = -max(min(~vec2<i32>(0i, u_input.b), _wgslsmith_mult_vec2_i32(-vec2<i32>(633i, u_input.b), -vec2<i32>(u_input.b, 2147483647i))), vec2<i32>(-(~2147483647i), u_input.b));
    global4 = array<vec3<bool>, 9>();
    var_0 = ~vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(7328i, var_0.x >> (1u % 32u)), ~(-9832i)), u_input.b);
    let var_1 = Struct_3(~(-reverseBits(select(vec4<i32>(2369i, 38560i, 0i, u_input.b), vec4<i32>(0i, u_input.b, 21489i, -14076i), vec4<bool>(true, false, arg_1.x, arg_1.x)))), reverseBits(select(~u_input.a.zzy, ~abs(u_input.a.xwy), select(select(arg_1.xxz, global4[_wgslsmith_index_u32(global0.x, 9u)], global3.c), global2.c, arg_1.x))), Struct_1(_wgslsmith_f_op_f32(-1178f - _wgslsmith_f_op_f32(sign(-899f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, arg_0) - vec2<f32>(-181f, 256f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -192f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(804f, -635f), arg_2.xx))), global2.c.x)), vec3<bool>(any(select(arg_1.wy, vec2<bool>(false, arg_1.x), global3.c.xx)), (u_input.c.x > global0.x) & true, true)), 2147483647i <= abs(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, -22425i, 26117i)), -vec3<i32>(1i, 2147483647i, var_0.x))), select(vec3<bool>(false, all(vec4<bool>(true, false, global3.c.x, arg_1.x)), global2.c.x), !(!(!global3.c)), arg_1.x));
    let var_2 = ~u_input.c.yy | ~_wgslsmith_mult_vec2_u32(var_1.b.zx, ~_wgslsmith_add_vec2_u32(var_1.b.yx, vec2<u32>(u_input.a.x, global0.x)));
    return all(!(!select(vec4<bool>(true, true, var_1.c.c.x, arg_1.x), !vec4<bool>(global3.c.x, global2.c.x, arg_1.x, true), arg_1)));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 1i, u_input.b), vec4<i32>(u_input.b, 10374i, -2186i, u_input.b)), ~vec4<i32>(u_input.b, -27793i, u_input.b, 2147483647i))), vec4<i32>(u_input.b, -u_input.b, -(~u_input.b), -max(u_input.b, u_input.b))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(1i, -2147483647i, -41883i, 2287i), ~vec4<i32>(2147483647i, u_input.b, -2147483647i, u_input.b)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 0i, 2147483647i, u_input.b) ^ vec4<i32>(0i, u_input.b, u_input.b, -2147483647i), vec4<i32>(u_input.b, u_input.b, -1i, u_input.b), countOneBits(vec4<i32>(-8731i, u_input.b, u_input.b, 52164i)))));
    global0 = ~firstTrailingBit(firstTrailingBit(u_input.c.yx));
    let var_1 = var_0.xy;
    let var_2 = ~(var_0.zz | vec2<i32>(u_input.b, var_0.x));
    let var_3 = ~_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -var_0.zy, var_0.zx);
    return ~abs(abs(vec4<i32>(var_0.x, var_2.x, var_3.x ^ var_3.x, var_3.x)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> f32 {
    var var_0 = Struct_3(func_4(4294967295u << (~firstTrailingBit(global0.x) % 32u), vec4<bool>(select(func_3(-1142f, vec4<bool>(false, global2.c.x, false, false), vec3<f32>(138f, global3.a, -1977f)), true, any(vec3<bool>(arg_1.c.x, true, global3.c.x))), all(!arg_1.c), !any(vec4<bool>(global3.c.x, false, arg_1.c.x, global3.c.x)), true), Struct_1(-444f, _wgslsmith_f_op_vec2_f32(global2.b * arg_1.b), select(select(global2.c, global3.c, false), vec3<bool>(false, true, global3.c.x), vec3<bool>(false, true, false)))), ~u_input.a.zwx, Struct_1(-806f, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_1.b - _wgslsmith_f_op_vec2_f32(global2.b * global2.b)))), global4[_wgslsmith_index_u32(0u, 9u)]), any(select(!global2.c.zz, vec2<bool>(global2.c.x && true, true), select(vec2<bool>(global3.c.x, arg_1.c.x), select(arg_1.c.zz, arg_1.c.xx, global2.c.xz), vec2<bool>(true, true)))), select(global4[_wgslsmith_index_u32(countOneBits(arg_0), 9u)], vec3<bool>(true, false, true & arg_1.c.x), global3.c.x));
    var var_1 = Struct_3(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.a.xy | var_0.a.zx, vec2<i32>(12201i, var_0.a.x) >> (u_input.c.zx % vec2<u32>(32u))), var_0.a.zx), var_0.a.x, -1i, var_0.a.x), ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, arg_0 ^ 11363u, ~arg_2), _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0, arg_0, arg_0), _wgslsmith_mod_vec3_u32(vec3<u32>(38280u, arg_0, 0u), var_0.b))), arg_1, !select(!(!var_0.d), true, arg_2 >= (arg_0 | 1u)), select(vec3<bool>(any(!vec3<bool>(arg_1.c.x, false, global3.c.x)), false, false), vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(global3.c.x, false, false, arg_3)), all(select(vec4<bool>(true, global2.c.x, arg_1.c.x, true), vec4<bool>(global3.c.x, false, false, false), global3.c.x)), !func_3(global3.a, vec4<bool>(var_0.e.x, arg_3, arg_1.c.x, arg_3), vec3<f32>(-756f, var_0.c.b.x, arg_1.b.x)))));
    return 1f;
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> Struct_3 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 21u)];
    global0 = u_input.a.zy;
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(491f, _wgslsmith_f_op_f32(func_2(1u, var_0.a, global0.x, arg_0.d)), _wgslsmith_f_op_f32(abs(var_0.a.b.x)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1317f, 392f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.a)))))));
    var var_2 = ~firstTrailingBit(u_input.a ^ ~vec4<u32>(global0.x, global0.x, arg_0.b.x, arg_0.b.x)) & vec4<u32>(7097u, 0u, ~countOneBits(_wgslsmith_add_u32(u_input.c.x, u_input.c.x)), firstLeadingBit(arg_0.b.x));
    var var_3 = global3.c.zx;
    return arg_0;
}

fn func_5(arg_0: Struct_3) -> u32 {
    global3 = func_1(arg_0, u_input.b).c;
    var var_0 = _wgslsmith_sub_u32(1u, u_input.a.x) << (global0.x % 32u);
    var var_1 = 4294967295u;
    global2 = Struct_1(_wgslsmith_f_op_f32(max(global2.a, 183f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(arg_0, 59433i ^ u_input.b).c.b * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global2.b.x)))))), !select(vec3<bool>(false & arg_0.e.x, !global2.c.x, 1261i != arg_0.a.x), !vec3<bool>(global2.c.x, global2.c.x, false), select(select(vec3<bool>(global2.c.x, true, true), arg_0.e, global3.c.x), vec3<bool>(true, global3.c.x, global3.c.x), vec3<bool>(global3.c.x, arg_0.e.x, arg_0.c.c.x))));
    let var_2 = arg_0.b.yz;
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(u_input.b << (1u % 32u), u_input.b, i32(-1i) * -1i) << (max(~u_input.c, reverseBits(vec3<u32>(u_input.a.x, 4294967295u, 27587u))) % vec3<u32>(32u))), vec3<i32>(1i, -1i, _wgslsmith_mult_i32(abs(u_input.b), -1i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1051f - global3.b.x));
    var var_2 = _wgslsmith_f_op_f32(select(global2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1, -269f, !global3.c.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.b.x))), _wgslsmith_f_op_f32(select(global2.b.x, -2132f, any(vec4<bool>(global2.c.x, false, global2.c.x, global2.c.x)))))), global2.c.x));
    var_2 = global3.a;
    let var_3 = _wgslsmith_mod_u32(0u, 4294967295u);
    let var_4 = _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~(~u_input.a.xww), u_input.c), 32450u << (func_5(func_1(Struct_3(vec4<i32>(var_0.x, u_input.b, u_input.b, -20994i), vec3<u32>(57707u, 27338u, var_3), Struct_1(-1143f, global3.b, vec3<bool>(global3.c.x, global2.c.x, false)), false, vec3<bool>(global3.c.x, global2.c.x, global3.c.x)), u_input.b)) % 32u)));
    let var_5 = u_input.b;
    let var_6 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_div_vec3_i32(abs(-vec3<i32>(u_input.b, -18442i, var_0.x)), -(vec3<i32>(35359i, var_0.x, var_0.x) >> (vec3<u32>(15607u, 4294967295u, global0.x) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(global3.a * global3.b.x)))) * func_1(func_1(func_1(Struct_3(vec4<i32>(1i, 29532i, u_input.b, 2147483647i), vec3<u32>(4294967295u, 2611u, 0u), Struct_1(1206f, global3.b, vec3<bool>(true, global3.c.x, false)), global3.c.x, global4[_wgslsmith_index_u32(var_6, 9u)]), -1i), var_5), i32(-1i) * -1i).c.a));
}

