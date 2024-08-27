struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: vec3<u32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec4<i32>) -> bool {
    return false;
}

fn func_2() -> u32 {
    global0 = array<u32, 7>();
    var var_0 = true;
    var var_1 = countOneBits(select(_wgslsmith_sub_vec2_i32(firstLeadingBit(~vec2<i32>(u_input.a, u_input.a)), ~_wgslsmith_add_vec2_i32(vec2<i32>(1i, 12577i), vec2<i32>(-60947i, 10178i))), vec2<i32>(-(u_input.a << (global1.x % 32u)), u_input.a), select(vec2<bool>(true, func_3(Struct_4(Struct_2(Struct_1(global1.x), vec3<u32>(global1.x, 4294967295u, global1.x), vec4<f32>(2423f, -605f, -957f, 218f), Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x, 7u)], 7u)], 7u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x, 7u)], 7u)]), false, 860f, vec3<f32>(284f, 896f, -112f), vec3<f32>(249f, 1502f, -1410f)), Struct_5(vec3<i32>(u_input.a, -2147483647i, -2147483647i), Struct_1(1u), vec2<i32>(15572i, 5882i), vec4<u32>(4294967295u, 4294967295u, global1.x, global0[_wgslsmith_index_u32(global1.x, 7u)])), vec4<i32>(0i, 1i, u_input.a, 1i))), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(global1.x, 7u)], global1.x, 1u), ~vec3<u32>(1u, global1.x, 1u))), select(~abs(vec3<u32>(global1.x, 0u, 4294967295u)) | vec3<u32>(4294967295u | global1.x, 4294967295u, min(4294967295u, 0u)), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 9888u, 5246u), vec3<u32>(global1.x, 0u, global1.x), vec3<u32>(global1.x, 4994u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29164u, 7u)], 7u)]))), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-771f, 388f, 2875f, -1000f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1185f + -699f), _wgslsmith_div_f32(-1565f, -120f), 464f, -585f))), Struct_1(42229u), firstTrailingBit((1u | (28912u ^ global1.x)) ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~abs(global1.x), 7u)], 7u)]));
    var var_3 = var_2;
    return ~(~var_3.d.a);
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> Struct_2 {
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let var_0 = 0i;
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    return Struct_2(Struct_1(func_2()), vec3<u32>(38796u, ~global1.x, ~firstLeadingBit(global1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(494f, arg_1, arg_1, arg_1), vec4<f32>(arg_1, arg_1, 814f, arg_1), vec4<bool>(true, true, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1632f, arg_1, arg_1, -412f)), vec4<bool>(arg_0.x, true, true, arg_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 435f, arg_1, arg_1)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1007f, 104f, -735f, arg_1)))))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(659f * arg_1), arg_1, arg_1, _wgslsmith_div_f32(165f, arg_1))))), Struct_1(21776u), ~_wgslsmith_mult_u32(~(global0[_wgslsmith_index_u32(0u, 7u)] | 0u), 1u));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec4<i32>) -> u32 {
    global1 = select(firstTrailingBit(arg_0.b), arg_0.b, vec3<bool>(true, true, !(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], global1.x) > global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(20659u, 9169u), 7u)])));
    global1 = arg_0.b;
    let var_0 = ~global1.yy;
    let var_1 = Struct_4(Struct_2(Struct_1(min(arg_0.b.x | global0[_wgslsmith_index_u32(arg_0.d.a, 7u)], 4294967295u >> (1u % 32u))), firstTrailingBit(arg_0.b), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(324f, arg_0.c.x, 1000f, arg_0.c.x)))))), func_1(vec3<bool>(true, true, true), func_1(vec3<bool>(true, true, true), arg_1).c.x).a, ~(~arg_0.d.a) >> ((0u ^ _wgslsmith_dot_vec3_u32(arg_0.b, vec3<u32>(4294967295u, 1535u, 0u))) % 32u)), true || ((all(vec4<bool>(true, true, false, false)) & false) || false), _wgslsmith_div_f32(-140f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-358f - -267f)))), vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -845f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.c.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c.xwx), vec3<f32>(_wgslsmith_f_op_f32(arg_1 + arg_0.c.x), 779f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2129f, 1165f)))));
    var var_2 = var_1.a;
    return _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_dot_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(34597u, arg_0.b.x, 4294967295u, 1u), reverseBits(vec4<u32>(var_1.a.a.a, var_2.e, arg_0.a.a, 4294967295u)))), vec4<u32>(_wgslsmith_add_u32(1u, firstLeadingBit(arg_0.a.a)), select(var_0.x, global0[_wgslsmith_index_u32(1u, 7u)] & arg_0.b.x, false), 1u, var_2.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(332f, _wgslsmith_f_op_f32(1190f * 302f)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-938f, -2374f)), vec2<f32>(474f, -1000f)))))));
    var var_1 = func_4(func_1(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), false), -1000f), var_0.x, abs(max(-vec4<i32>(4292i, -1i, u_input.a, 10604i), ~(vec4<i32>(2147483647i, -37324i, u_input.a, 0i) | vec4<i32>(u_input.a, u_input.a, 16640i, -9376i)))));
    let var_2 = !vec4<bool>(true, select(false, any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), false), !(true | any(vec2<bool>(false, false))), true);
    var var_3 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 4294967295u, 20793u), firstTrailingBit(vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(76961u, 7u)], 7u)], global1.x))), 4294967295u) | _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(func_4(Struct_2(Struct_1(global1.x), vec3<u32>(33465u, 4294967295u, 42364u), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_1(global1.x), 15794u), -1486f, vec4<i32>(-2147483647i, 2147483647i, u_input.a, u_input.a)), ~global0[_wgslsmith_index_u32(global1.x, 7u)])), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global1.x, 7u)], _wgslsmith_div_u32(global1.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global1.x, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7330u, 7u)], 7u)], 7u)], 121077u, 54793u), vec4<u32>(12191u, 0u, global0[_wgslsmith_index_u32(global1.x, 7u)], 55450u)), firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(110363u, 7u)], 7u)], global1.x, 5868u, 0u))))), 4294967295u, _wgslsmith_mod_u32(firstTrailingBit(~18525u) ^ _wgslsmith_mod_u32(~1u, firstTrailingBit(28673u)), firstLeadingBit(~0u)));
    var var_4 = 50991u;
    let var_5 = var_2.wxz;
    var_4 = _wgslsmith_div_u32(_wgslsmith_div_u32(~12892u, _wgslsmith_clamp_u32(global1.x, global0[_wgslsmith_index_u32(var_3.x, 7u)], global0[_wgslsmith_index_u32(~36888u, 7u)])), (global1.x << (~(~38376u) % 32u)) | var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x, _wgslsmith_f_op_f32(var_0.x * -867f)), vec3<f32>(_wgslsmith_div_f32(393f, var_0.x), var_0.x, _wgslsmith_f_op_f32(var_0.x * var_0.x))))), vec2<u32>(1u, _wgslsmith_mod_u32(global1.x ^ global1.x, max(global0[_wgslsmith_index_u32(global1.x, 7u)], 4294967295u))) ^ max(_wgslsmith_add_vec2_u32(abs(var_3.yx), vec2<u32>(1u, 40659u) & vec2<u32>(global0[_wgslsmith_index_u32(2944u, 7u)], 0u)), var_3.zw & (vec2<u32>(global1.x, global1.x) << (var_3.xw % vec2<u32>(32u)))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(838f * -322f) - var_0.x)), _wgslsmith_f_op_f32(min(954f, func_1(vec3<bool>(var_5.x, false, var_2.x), _wgslsmith_f_op_f32(-var_0.x)).c.x))), _wgslsmith_div_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.x | global0[_wgslsmith_index_u32(1u, 7u)], global1.x), 7u)], 7u)], global0[_wgslsmith_index_u32(79805u, 7u)]), 4589u));
}

