struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: bool;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(-1931f, _wgslsmith_f_op_f32(step(1107f, 213f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_f_op_f32(-1745f - 130f)))))));
    var var_2 = 0u;
    var var_3 = arg_0;
    let var_4 = abs(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1489u, 62321u, 7687u, 4294967295u), vec4<u32>(53250u, 49993u, 1u, 0u), vec4<u32>(0u, 22842u, 75395u, 40342u)), max(vec4<u32>(26597u, 20409u, 67720u, 34648u), vec4<u32>(34997u, 1u, 55268u, 3855u))), vec4<u32>(1u, 1u, 1u, 1u)) >> (4294967295u % 32u));
    return countOneBits(firstTrailingBit(13794u));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: u32) -> vec2<i32> {
    let var_0 = Struct_1(vec4<bool>(!(!select(true, false, true)), !any(vec2<bool>(true, false)), ~1u > func_3(Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(u_input.a, -1i, u_input.c, global0[_wgslsmith_index_u32(25497u, 6u)]))), all(vec3<bool>(true, true, true))), ~(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1, global0[_wgslsmith_index_u32(4294967295u, 6u)], -26748i, global0[_wgslsmith_index_u32(2077u, 6u)]), vec4<i32>(global0[_wgslsmith_index_u32(arg_2, 6u)], 48861i, u_input.b.x, global0[_wgslsmith_index_u32(arg_2, 6u)])) << ((vec4<u32>(4294967295u, 4294967295u, 4294967295u, arg_2) | vec4<u32>(4294967295u, 4294967295u, arg_2, arg_2)) % vec4<u32>(32u))) ^ ~vec4<i32>(global0[_wgslsmith_index_u32(4393u, 6u)], global0[_wgslsmith_index_u32(firstTrailingBit(45675u), 6u)], _wgslsmith_div_i32(u_input.a, arg_1), max(global0[_wgslsmith_index_u32(arg_2, 6u)], u_input.a)));
    let var_1 = Struct_1(select(vec4<bool>(var_0.a.x, any(select(vec3<bool>(var_0.a.x, true, false), vec3<bool>(true, var_0.a.x, true), true)), any(!vec3<bool>(var_0.a.x, var_0.a.x, true)), var_0.a.x & true), vec4<bool>(var_0.a.x || true, false, all(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), true), var_0.a.x), var_0.b);
    global0 = array<i32, 6>();
    let var_2 = 1312f;
    global0 = array<i32, 6>();
    return var_1.b.xy;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a, vec4<i32>(2147483647i & ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(32034u, 0u), vec2<u32>(32281u, 1u)), 6u)], ~u_input.b.x, ~(~arg_0.b.x), _wgslsmith_dot_vec2_i32(func_2(vec3<f32>(1000f, -1686f, -1000f), abs(12784i), min(27355u, 4294967295u)), ~(~arg_0.b.zy))));
    var var_1 = select(!arg_1, vec2<bool>(true, !any(arg_0.a)), false);
    let var_2 = true;
    var var_3 = arg_0;
    var_1 = arg_1;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    global1 = any(!vec2<bool>(any(!vec3<bool>(arg_0.a.x, arg_0.a.x, false)), any(!arg_0.a.xzy)));
    var var_0 = arg_1;
    let var_1 = select(vec3<bool>(arg_1.a.x && false, -249i > min(countOneBits(arg_1.b.x), _wgslsmith_mod_i32(1i, global0[_wgslsmith_index_u32(1u, 6u)])), arg_1.a.x), select(select(vec3<bool>(arg_1.a.x && var_0.a.x, any(vec4<bool>(arg_1.a.x, arg_0.a.x, arg_0.a.x, true)), -1000f < arg_2), vec3<bool>(true, true, true), !all(vec4<bool>(arg_1.a.x, true, false, var_0.a.x))), select(vec3<bool>(false, arg_0.a.x, true), select(!arg_1.a.wxw, select(arg_0.a.xxy, vec3<bool>(false, true, false), true), arg_1.a.x), true), func_1(func_1(arg_0, vec2<bool>(true, true)), arg_0.a.wz).a.wxy), !var_0.a.yxy);
    var var_2 = func_1(func_1(func_1(func_1(arg_0, arg_1.a.yx), select(!vec2<bool>(arg_1.a.x, true), vec2<bool>(arg_0.a.x, var_0.a.x), select(vec2<bool>(var_1.x, arg_1.a.x), vec2<bool>(arg_1.a.x, var_0.a.x), var_0.a.wy))), arg_1.a.xz), !var_0.a.zw);
    var var_3 = Struct_1(!vec4<bool>(!(var_0.a.x | arg_0.a.x), var_1.x, any(var_2.a.www), true), var_0.b);
    return select(!vec4<bool>(!var_1.x & !var_2.a.x, var_3.a.x, false, true), vec4<bool>(func_1(func_1(func_1(Struct_1(arg_0.a, arg_1.b), arg_1.a.xy), var_2.a.yy), vec2<bool>(true, true)).a.x, any(!var_2.a.wz), arg_0.a.x, func_1(Struct_1(!vec4<bool>(true, false, false, arg_1.a.x), _wgslsmith_clamp_vec4_i32(arg_1.b, vec4<i32>(arg_1.b.x, arg_0.b.x, global0[_wgslsmith_index_u32(1u, 6u)], arg_1.b.x), var_0.b)), vec2<bool>(true, !var_3.a.x)).a.x), all(var_1.xz));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_1(func_1(func_1(func_1(arg_0, arg_1.a.wy), vec2<bool>(all(vec2<bool>(false, false)), !arg_0.a.x)), vec2<bool>(arg_0.a.x, arg_0.a.x)), !vec2<bool>(false, _wgslsmith_mod_i32(-30606i, global0[_wgslsmith_index_u32(6123u, 6u)]) != 52779i));
    let var_1 = select(func_4(Struct_1(arg_1.a, vec4<i32>(_wgslsmith_mod_i32(-2147483647i, -2147483647i), _wgslsmith_div_i32(-16013i, arg_1.b.x), -20746i, arg_1.b.x)), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-158f - -1572f) * _wgslsmith_f_op_f32(f32(-1f) * -913f))), func_4(func_1(func_1(arg_0, !arg_0.a.yz), !vec2<bool>(var_0.a.x, true)), arg_0, _wgslsmith_f_op_f32(-1474f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(899f + -518f), _wgslsmith_f_op_f32(f32(-1f) * -1269f)))), vec4<bool>(arg_0.a.x, arg_1.a.x, true, (1i ^ u_input.b.x) == ~firstTrailingBit(-28031i)));
    let var_2 = Struct_1(!func_4(Struct_1(vec4<bool>(true, arg_0.a.x, false, arg_0.a.x), abs(arg_0.b)), Struct_1(var_1, firstTrailingBit(vec4<i32>(-52900i, arg_1.b.x, arg_1.b.x, arg_0.b.x))), _wgslsmith_f_op_f32(-2190f - _wgslsmith_f_op_f32(f32(-1f) * -1180f))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(arg_1.b, min(vec4<i32>(11502i, -13124i, var_0.b.x, arg_1.b.x), var_0.b)), countOneBits(arg_0.b)) | (~vec4<i32>(2544i, -38409i, 1i, 32669i) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.x, u_input.a, arg_0.b.x, global0[_wgslsmith_index_u32(4294967295u, 6u)]), var_0.b ^ vec4<i32>(24313i, -1i, global0[_wgslsmith_index_u32(29209u, 6u)], arg_1.b.x))));
    let var_3 = _wgslsmith_div_u32(38732u, ~34328u);
    let var_4 = ~(~(~reverseBits(firstLeadingBit(vec3<u32>(var_3, var_3, 24335u)))));
    return Struct_1(vec4<bool>(arg_0.a.x, false, arg_0.a.x, !var_1.x), select(func_1(arg_0, var_0.a.zz).b, select(arg_1.b, -vec4<i32>(arg_1.b.x, var_0.b.x, 68094i, 2147483647i), all(select(vec4<bool>(arg_1.a.x, var_0.a.x, arg_0.a.x, arg_1.a.x), arg_0.a, arg_1.a.x))), vec4<bool>(true, var_0.a.x, false, !func_4(arg_0, Struct_1(vec4<bool>(var_2.a.x, var_1.x, true, arg_0.a.x), var_0.b), 1508f).x)));
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> StorageBuffer {
    global1 = all(func_5(func_5(func_5(Struct_1(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false), arg_0.b), arg_0), arg_0), arg_0).a.wz);
    let var_0 = Struct_1(func_1(arg_0, !(!(!arg_0.a.yx))).a, arg_0.b);
    global1 = arg_0.a.x;
    var var_1 = max(abs(~func_5(Struct_1(arg_0.a, vec4<i32>(-2147483647i, -10504i, global0[_wgslsmith_index_u32(26435u, 6u)], u_input.a)), Struct_1(vec4<bool>(arg_0.a.x, false, arg_1, true), arg_0.b)).b.x), -2147483647i);
    let var_2 = arg_0.a;
    return StorageBuffer(_wgslsmith_add_vec3_u32(vec3<u32>(1u, _wgslsmith_div_u32(17989u, 109482u), _wgslsmith_mult_u32(1557u, 1u)), select(vec3<u32>(38671u, 28543u, 0u), vec3<u32>(23485u, 30770u, 7209u), true)) ^ max(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(34193u, 29903u, 91683u)), firstTrailingBit(vec3<u32>(7723u, 0u, 4294967295u))), min(~vec3<u32>(1u, 3639u, 29962u), vec3<u32>(1u, 1u, 1u))), var_0.b.ww);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_u32(select(countOneBits(vec4<u32>(~72796u, 11498u, _wgslsmith_add_u32(60174u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(1462u, 4294967295u, 14107u), vec3<u32>(6405u, 0u, 1u)))), ~(~(~vec4<u32>(10801u, 27927u, 71060u, 55965u))), any(vec2<bool>(true, true))), countOneBits(vec4<u32>(select(~1u, ~43400u, false), abs(~0u), _wgslsmith_sub_u32(abs(37697u), 10358u), 2816u)));
    global1 = true;
    global0 = array<i32, 6>();
    let var_1 = vec2<i32>(2147483647i, max(-37669i, 0i) & global0[_wgslsmith_index_u32(13808u, 6u)]);
    let x = u_input.a;
    s_output = func_6(func_5(Struct_1(func_4(func_1(Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(21017i, 52588i, u_input.b.x, u_input.b.x)), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(2147483647i, 0i, 2147483647i, var_1.x)), _wgslsmith_f_op_f32(min(-1099f, -1000f))), _wgslsmith_add_vec4_i32(vec4<i32>(44880i, -53876i, -1i, u_input.a) | vec4<i32>(0i, global0[_wgslsmith_index_u32(var_0.x, 6u)], -6998i, global0[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<i32>(-749i, u_input.c, 16807i, var_1.x))), func_1(Struct_1(vec4<bool>(true, true, true, true), select(vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 6u)], 19885i, u_input.c, -4762i), vec4<i32>(-50330i, global0[_wgslsmith_index_u32(var_0.x, 6u)], -2147483647i, global0[_wgslsmith_index_u32(73939u, 6u)]), vec4<bool>(false, true, false, false))), vec2<bool>(true, true))), false);
}

