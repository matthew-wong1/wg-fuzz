struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(true, true, false, true, true);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32) -> u32 {
    global0 = array<bool, 5>();
    let var_0 = true;
    let var_1 = true;
    let var_2 = Struct_2(Struct_1(-vec3<i32>(-82187i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.c.x, u_input.c.x, u_input.a.x), vec4<i32>(u_input.c.x, -40684i, u_input.a.x, u_input.c.x)), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -2147483647i)), vec3<bool>(true, !(!var_1), var_1)), u_input.a.x, Struct_1(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(-19486i, -2147483647i, -1i)), _wgslsmith_mod_i32(u_input.b.x, ~u_input.b.x), _wgslsmith_mod_i32(2147483647i << (arg_0 % 32u), 1i)), vec3<bool>(true, true, true)), firstTrailingBit(~abs(u_input.c.x)) != (i32(-1i) * -2147483647i), ~select(~abs(u_input.e.zw), ~select(u_input.e.zz, u_input.e.yz, vec2<bool>(false, var_0)), select(!vec2<bool>(var_1, global0[_wgslsmith_index_u32(0u, 5u)]), select(vec2<bool>(var_0, false), vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 5u)], false), true), select(false, true, false))));
    global0 = array<bool, 5>();
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> i32 {
    var var_0 = -868f;
    var_0 = 1f;
    let var_1 = _wgslsmith_mod_u32(~u_input.d, 4294967295u);
    var var_2 = false;
    global0 = array<bool, 5>();
    return -24320i;
}

fn func_2(arg_0: u32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1318f, -1268f, -1856f, 214f)))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1076f)), -266f, 1000f, 775f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-625f, -1264f, -704f, -1202f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-996f, 967f, 766f, 994f) + vec4<f32>(847f, -178f, -1000f, -818f)))), !select(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 5u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(16590u, 5u)], global0[_wgslsmith_index_u32(arg_0, 5u)], false, false), global0[_wgslsmith_index_u32(1u, 5u)])))));
    var var_1 = -43353i;
    var_1 = u_input.c.x ^ ~func_4(Struct_1(~vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x), select(vec3<bool>(global0[_wgslsmith_index_u32(54071u, 5u)], false, global0[_wgslsmith_index_u32(u_input.d, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(arg_0, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(655u, 5u)], false))), func_3(u_input.e.x) > reverseBits(4294967295u));
    var var_2 = global0[_wgslsmith_index_u32(~u_input.d, 5u)];
    var_1 = -53691i;
    return vec3<i32>(reverseBits(~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c, u_input.b), vec2<i32>(0i, -1i))), ~u_input.c.x, 2147483647i);
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = arg_0;
    global0 = array<bool, 5>();
    var var_1 = vec4<bool>(true, !all(arg_0.b.yy), var_0.b.x, false);
    global0 = array<bool, 5>();
    var_1 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1190f)) * _wgslsmith_f_op_f32(trunc(-698f))) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-972f)))), false, false, true);
    return Struct_1(select(vec3<i32>(_wgslsmith_sub_i32(arg_0.a.x, max(-3333i, var_0.a.x)), var_0.a.x, ~(~22950i)), vec3<i32>(var_0.a.x, -1i << (u_input.d % 32u), func_4(Struct_1(arg_0.a, var_1.xww), var_1.x)) & arg_0.a, all(!(!vec4<bool>(arg_1, arg_1, var_0.b.x, false)))), !vec3<bool>(arg_1, arg_1, arg_1));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_1 {
    global0 = array<bool, 5>();
    let var_0 = func_5(Struct_1(func_2(~u_input.d), select(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 5u)], arg_1, true)), select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 5u)], true), vec3<bool>(global0[_wgslsmith_index_u32(43355u, 5u)], false, arg_1), u_input.d != u_input.e.x), any(!vec3<bool>(arg_1, true, global0[_wgslsmith_index_u32(0u, 5u)])))), arg_1);
    var var_1 = Struct_2(func_5(var_0, true & !arg_1), -(_wgslsmith_dot_vec2_i32(var_0.a.zx, vec2<i32>(1i, 8339i)) & _wgslsmith_sub_i32(u_input.b.x, 28620i)), func_5(var_0, abs(_wgslsmith_div_i32(var_0.a.x, var_0.a.x)) > var_0.a.x), select(select((u_input.e.x ^ 85973u) < 12337u, false, false), all(!(!vec3<bool>(false, var_0.b.x, false))), !all(!vec4<bool>(arg_1, false, true, arg_1))), (u_input.e.yx & _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(u_input.d, u_input.d)), ~vec2<u32>(74843u, u_input.d))) ^ u_input.e.zw);
    var var_2 = Struct_1(var_1.a.a & vec3<i32>(min(u_input.b.x, ~u_input.c.x), var_0.a.x, 0i), !var_1.c.b);
    let var_3 = abs((vec2<i32>(-1i) * -vec2<i32>(1i, var_0.a.x)) & (vec2<i32>(1i, 23550i) | u_input.b));
    return var_0;
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    global0 = array<bool, 5>();
    var var_0 = Struct_1(func_2(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(abs(vec2<u32>(arg_0.e.x, u_input.e.x)), arg_0.e), vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, arg_0.e.x, 1u, arg_0.e.x), u_input.e)))), func_5(Struct_1(arg_0.a.a, vec3<bool>(true, true, true)), any(func_1(-743f, global0[_wgslsmith_index_u32(1u, 5u)]).b)).b);
    global0 = array<bool, 5>();
    let var_1 = Struct_2(arg_0.c, u_input.c.x, func_5(func_5(arg_0.c, all(vec4<bool>(true, arg_0.c.b.x, global0[_wgslsmith_index_u32(11290u, 5u)], true))), false), var_0.b.x, vec2<u32>(~1u, arg_0.e.x));
    let var_2 = var_1.c.b.x;
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_6(Struct_2(Struct_1(vec3<i32>(u_input.a.x, u_input.c.x, 2147483647i), vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 5u)], true, true)), _wgslsmith_div_i32(-u_input.b.x, -2147483647i), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1502f), true), global0[_wgslsmith_index_u32(1u, 5u)], max(vec2<u32>(u_input.e.x, u_input.e.x), vec2<u32>(u_input.e.x, 53162u)))), func_4(Struct_1(-_wgslsmith_sub_vec3_i32(vec3<i32>(50929i, -27640i, u_input.b.x), vec3<i32>(1i, u_input.b.x, u_input.a.x)), func_6(Struct_2(Struct_1(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 5u)], true)), -35339i, Struct_1(vec3<i32>(-82966i, 86024i, u_input.c.x), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], true, false)), global0[_wgslsmith_index_u32(1u, 5u)], vec2<u32>(u_input.d, u_input.d))).b), true), Struct_1(~func_1(228f, global0[_wgslsmith_index_u32(0u, 5u)]).a, vec3<bool>(false, select(select(true, global0[_wgslsmith_index_u32(u_input.e.x, 5u)], true), global0[_wgslsmith_index_u32(u_input.e.x ^ u_input.e.x, 5u)], any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 5u)], true, false))), func_1(_wgslsmith_f_op_f32(max(715f, 108f)), 44924u == u_input.e.x).b.x)), false, ~(~u_input.e.yx));
    global0 = array<bool, 5>();
    let var_1 = Struct_2(Struct_1(vec3<i32>(~(~var_0.c.a.x), -1i, -(u_input.a.x << (109348u % 32u))), func_1(-1860f, false).b), _wgslsmith_clamp_i32(-2147483647i, -(firstLeadingBit(u_input.c.x) & _wgslsmith_mod_i32(-28180i, var_0.b)), _wgslsmith_add_i32(abs(0i), u_input.a.x)), Struct_1(func_2(_wgslsmith_div_u32(var_0.e.x, ~82174u)), vec3<bool>(false, all(vec3<bool>(false, true, var_0.d)), true)), any(!(!vec2<bool>(global0[_wgslsmith_index_u32(58773u, 5u)], false))), ~min(var_0.e, var_0.e));
    let var_2 = vec3<u32>(21526u & ((var_0.e.x << (var_1.e.x % 32u)) >> (u_input.e.x % 32u)), var_0.e.x, ~var_0.e.x);
    var var_3 = Struct_2(Struct_1((vec3<i32>(var_1.b, var_1.b, var_1.a.a.x) << (vec3<u32>(u_input.d, 23754u, var_0.e.x) % vec3<u32>(32u))) >> ((var_2 >> (u_input.e.yzz % vec3<u32>(32u))) % vec3<u32>(32u)), var_0.a.b), 2147483647i, func_5(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 3779i, u_input.c.x), func_2(u_input.d)), func_6(Struct_2(var_1.c, var_1.a.a.x, Struct_1(var_0.a.a, vec3<bool>(true, var_1.a.b.x, false)), var_0.a.b.x, vec2<u32>(3428u, var_1.e.x))).b), var_1.c.b.x), true, ~select(var_0.e, _wgslsmith_div_vec2_u32(var_0.e, vec2<u32>(var_0.e.x, 0u)), var_1.a.b.x));
    var_3 = var_1;
    global0 = array<bool, 5>();
    var var_4 = Struct_1(vec3<i32>(~abs(_wgslsmith_div_i32(1i, 1i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(29866i, 48155i, -79520i), -var_3.c.a), 12980i), var_0.b), vec3<bool>(var_1.a.b.x, var_1.c.b.x, all(select(vec4<bool>(true, true, true, true), !vec4<bool>(global0[_wgslsmith_index_u32(var_1.e.x, 5u)], false, true, false), true))));
    let var_5 = Struct_2(Struct_1(func_5(var_3.c, true).a, select(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 5u)], var_1.c.b.x)), vec3<bool>(!var_3.a.b.x, !global0[_wgslsmith_index_u32(var_2.x, 5u)], all(vec3<bool>(var_3.a.b.x, var_4.b.x, var_3.a.b.x))), var_1.c.b)), -var_4.a.x, func_6(var_1), global0[_wgslsmith_index_u32(0u, 5u)], select(~_wgslsmith_mult_vec2_u32(~var_0.e, vec2<u32>(85599u, 0u) << (var_2.zx % vec2<u32>(32u))), vec2<u32>(_wgslsmith_div_u32(func_3(var_1.e.x), 1u), u_input.d), var_0.a.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstTrailingBit(-func_4(Struct_1(vec3<i32>(var_1.c.a.x, 37197i, var_3.c.a.x), var_4.b), var_4.b.x)), reverseBits(select(var_4.a.x, var_3.c.a.x, select(global0[_wgslsmith_index_u32(39178u, 5u)], global0[_wgslsmith_index_u32(var_0.e.x, 5u)], var_1.d))), func_2(var_5.e.x).x, var_4.a.x), -103f);
}

