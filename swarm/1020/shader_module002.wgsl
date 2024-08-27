struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
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

var<private> global0: vec3<i32> = vec3<i32>(1i, 0i, -821i);

var<private> global1: f32;

var<private> global2: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(5253i, -495i), vec2<i32>(-15116i, -17640i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(1i, -28405i), vec2<i32>(1i, -2051i), vec2<i32>(-1i, -1i), vec2<i32>(0i, 5119i), vec2<i32>(-8745i, -1i), vec2<i32>(-1966i, -1i), vec2<i32>(0i, 1i), vec2<i32>(4406i, 66434i), vec2<i32>(29111i, -54600i), vec2<i32>(i32(-2147483648), 29336i), vec2<i32>(2147483647i, -12514i));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> bool {
    var var_0 = !(!(!arg_0 && (arg_0 & any(vec3<bool>(arg_0, arg_0, true)))));
    let var_1 = Struct_2(vec3<i32>(global0.x, 43069i, ~reverseBits(u_input.a.x)) ^ u_input.a, global0.zy, vec4<bool>(all(select(vec2<bool>(false, arg_0), select(vec2<bool>(false, false), vec2<bool>(true, arg_0), false), true)), false, arg_0, true));
    var_0 = _wgslsmith_dot_vec3_u32(arg_1.zyx, select(~vec3<u32>(57005u, 4294967295u, 0u) >> (~arg_1.xzz % vec3<u32>(32u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, 9549u, arg_1.x), vec3<u32>(13431u, 34823u, arg_1.x), arg_1.ywx), var_1.c.yyw)) <= arg_1.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-359f, -298f, !var_1.c.x))) - 1000f) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - 959f))));
    var var_3 = arg_1.x;
    return var_1.c.x;
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(arg_0.a, arg_0.a), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_0.a.x, 12649u, arg_0.a.x), arg_0.a) << (~arg_0.a % vec4<u32>(32u)))), select(vec2<bool>(true, true), vec2<bool>(true, !(arg_0.b.x != false)), vec2<bool>(select(u_input.b, -1i, true) != global0.x, select(arg_0.b.x, !arg_0.b.x, arg_0.b.x))), vec3<u32>(1u, ~_wgslsmith_mod_u32(arg_0.c.x, arg_0.c.x), arg_0.a.x | 4999u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(-1853f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(499f, 201f))), vec3<bool>(all(vec4<bool>(var_0.b.x, var_0.b.x, arg_0.b.x, false)), arg_0.b.x, func_3(var_0.b.x, var_0.a)))))));
    global1 = -299f;
    var var_2 = -212f;
    var var_3 = var_0.a;
    return vec4<u32>(27811u, var_0.c.x, ~var_3.x, _wgslsmith_mod_u32(arg_0.a.x, _wgslsmith_add_u32(~(arg_0.c.x << (69394u % 32u)), _wgslsmith_add_u32(~arg_0.c.x, reverseBits(var_0.c.x)))));
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u) | func_2(Struct_1(vec4<u32>(0u, 44923u, 0u, 0u), vec2<bool>(true, false), vec3<u32>(14812u, 0u, 58490u))), firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(69004u, 10079u, 18939u), 0u, firstLeadingBit(4294967295u), 1u))), select(select(vec2<bool>(select(true, true, true), false), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true)), vec2<bool>(true, false)), !vec2<bool>(any(vec4<bool>(false, true, true, false)), true), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), false))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_clamp_u32(4011u, 4294967295u, 5244u), 1u, 1u)));
    var var_1 = ~vec4<i32>(select(0i, u_input.b & global0.x, select(true, false, true)), _wgslsmith_mod_i32(global0.x, -2147483647i), u_input.c.x | (u_input.c.x >> (var_0.c.x % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), -vec2<i32>(-7725i, global0.x))) >> (vec4<u32>(min(_wgslsmith_div_u32(~19201u, var_0.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, var_0.c.x), var_0.c.zx & vec2<u32>(3587u, var_0.a.x))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(35432u, var_0.c.x), ~30474u, ~var_0.a.x) | abs(_wgslsmith_add_u32(4294967295u, 0u)), 4294967295u, _wgslsmith_dot_vec2_u32(var_0.a.wy, ~vec2<u32>(var_0.c.x, var_0.a.x))) % vec4<u32>(32u));
    var var_2 = _wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(abs(var_0.c.zz), _wgslsmith_div_vec2_u32(var_0.c.zy, vec2<u32>(var_0.a.x, var_0.c.x))) | _wgslsmith_mod_vec2_u32((vec2<u32>(1u, var_0.c.x) << (vec2<u32>(var_0.a.x, var_0.c.x) % vec2<u32>(32u))) << (vec2<u32>(var_0.a.x, 0u) % vec2<u32>(32u)), firstTrailingBit(~vec2<u32>(1u, var_0.a.x))), var_0.a.wz, select((~vec2<u32>(var_0.a.x, var_0.a.x) >> (func_2(Struct_1(vec4<u32>(53131u, var_0.c.x, var_0.c.x, var_0.a.x), vec2<bool>(var_0.b.x, false), vec3<u32>(var_0.c.x, var_0.c.x, var_0.a.x))).yz % vec2<u32>(32u))) & _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_0.a.x), vec2<u32>(var_0.a.x, 12902u), vec2<u32>(7304u, 34806u)), ~vec2<u32>(1u, var_0.a.x)), vec2<u32>(~(17510u >> (var_0.a.x % 32u)), var_0.c.x), global0.x <= 1i));
    var_1 = ~reverseBits(_wgslsmith_mult_vec4_i32(~(-vec4<i32>(arg_0.x, -2147483647i, 4856i, 18305i)), ~reverseBits(vec4<i32>(arg_0.x, arg_0.x, 27181i, global0.x))));
    let var_3 = Struct_2(~(vec3<i32>(~(-2147483647i), max(-16295i, 18048i), global0.x) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(0u, var_0.c.x, 4294967295u), var_0.a.zxy) % vec3<u32>(32u))), countOneBits(-vec2<i32>(u_input.c.x, var_1.x)), !vec4<bool>(var_0.b.x, -1i <= (-17209i >> (var_2.x % 32u)), var_0.b.x & var_0.b.x, true));
    return min(arg_0.x, countOneBits(var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(-1i, 1i, -global0.x, -4192i), -vec4<i32>(u_input.b, global0.x, -15859i, u_input.c.x), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true))), -_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, global0.x, u_input.c.x, -1i), vec4<i32>(5454i, u_input.b, 1i, global0.x)), abs(vec4<i32>(2147483647i, -76989i, 48912i, -2147483647i)))), ~(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, u_input.a.x, -1i, global0.x), vec4<i32>(global0.x, 2147483647i, 0i, 1092i)), abs(vec4<i32>(0i, -59658i, u_input.a.x, 20372i))) >> (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
    global0 = ~var_0.wwx | vec3<i32>(_wgslsmith_div_i32(countOneBits(-36162i), func_1(vec2<i32>(-12648i, global0.x) << (vec2<u32>(28686u, 4294967295u) % vec2<u32>(32u)))), -58348i, _wgslsmith_mult_i32(var_0.x, -countOneBits(-93456i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(218f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(310f, 929f)) - 113f), -257f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-168f * 1046f))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), -738f, var_1.x, _wgslsmith_f_op_f32(trunc(var_1.x)));
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, _wgslsmith_div_f32(496f, var_1.x), var_1.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1811f, -1102f, 456f, 289f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-253f, -290f, -929f, var_1.x), vec4<f32>(var_1.x, 966f, -231f, 712f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 1297f, 328f)))))), true));
    let x = u_input.a;
    s_output = StorageBuffer(~select(u_input.a.zx ^ vec2<i32>(-2147483647i, -19045i), global2[_wgslsmith_index_u32(func_2(Struct_1(vec4<u32>(4294967295u, 6459u, 4294967295u, 1u), vec2<bool>(false, false), vec3<u32>(33897u, 53559u, 1825u))).x, 16u)], select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), true)));
}

