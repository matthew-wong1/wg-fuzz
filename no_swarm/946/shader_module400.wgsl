struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    global0 = ~(~countOneBits(-vec4<i32>(55467i, global0.x, u_input.a.x, u_input.b)) & _wgslsmith_sub_vec4_i32(vec4<i32>(~u_input.b, _wgslsmith_mod_i32(global0.x, global0.x), u_input.b, -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, global0.x, -1i, 0i), vec4<i32>(global0.x, -6751i, -43843i, global0.x))));
    global0 = select(vec4<i32>(-54456i, global0.x, global0.x, -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(29871i, 2147483647i)), 91187i)), countOneBits(-vec4<i32>(u_input.b, global0.x, global0.x, -2147483647i) << (vec4<u32>(0u, 47243u, u_input.e, 1u) % vec4<u32>(32u))) | vec4<i32>(-1i, _wgslsmith_add_i32(~(-25078i), abs(1i)), _wgslsmith_clamp_i32(firstTrailingBit(27659i), ~global0.x, 0i), global0.x), true);
    let var_0 = u_input.a.x;
    var var_1 = Struct_1(countOneBits(vec4<u32>(min(u_input.d.x, _wgslsmith_mult_u32(u_input.e, 24409u)), u_input.d.x, 0u, ~1243u)), vec4<i32>(min(abs(_wgslsmith_sub_i32(u_input.b, -51048i)), u_input.a.x), 1i, -33141i, 0i), u_input.d.xz >> (min(vec2<u32>(1u, u_input.e), u_input.d.yz) % vec2<u32>(32u)), select((global0.x << (firstTrailingBit(4294967295u) % 32u)) <= var_0, !select(true, false, true), any(vec4<bool>(true, true, true, true))), select(~vec4<u32>(u_input.c >> (14781u % 32u), ~4294967295u, firstTrailingBit(74158u), ~u_input.e), ~(min(vec4<u32>(u_input.e, u_input.c, u_input.e, 32546u), vec4<u32>(u_input.d.x, u_input.d.x, 14561u, 1u)) & ~vec4<u32>(31481u, u_input.d.x, u_input.e, 68362u)), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)))));
    let var_2 = Struct_1(var_1.a, _wgslsmith_div_vec4_i32(vec4<i32>(20743i, _wgslsmith_mult_i32(global0.x, ~var_1.b.x), _wgslsmith_add_i32(var_1.b.x, ~0i), var_0 ^ _wgslsmith_add_i32(-18345i, -1i)), var_1.b), max(~vec2<u32>(var_1.e.x, _wgslsmith_add_u32(u_input.d.x, 0u)), min(~vec2<u32>(0u, 5589u), vec2<u32>(abs(27636u), ~40640u))), var_1.d, vec4<u32>(2194u, 98469u, abs(17270u), _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.e, ~4294967295u), max(var_1.e.x, ~4294967295u))));
    return ~43004u;
}

fn func_2() -> vec4<u32> {
    var var_0 = false;
    var var_1 = Struct_1(~reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(72040u, u_input.d.x, 1u, 54646u), vec4<u32>(0u, u_input.e, u_input.d.x, 17479u)) & (vec4<u32>(u_input.c, u_input.c, u_input.d.x, u_input.c) & vec4<u32>(21925u, u_input.c, 1u, 0u))), reverseBits(vec4<i32>(-1i) * -vec4<i32>(-1i, global0.x, u_input.b, 2147483647i)), vec2<u32>(~func_3(), ~_wgslsmith_sub_u32(u_input.c, ~54127u)), false, ~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.c, 4294967295u), vec4<u32>(114251u, 3161u, 69806u, 34205u)))));
    var_0 = true;
    var var_2 = vec2<bool>(var_1.b.x != ~var_1.b.x, any(select(!vec4<bool>(true, var_1.d, true, true), vec4<bool>(var_1.d, var_1.d | true, select(var_1.d, true, var_1.d), any(vec4<bool>(true, var_1.d, var_1.d, var_1.d))), vec4<bool>(true, true, 49374u != u_input.c, var_1.d))));
    let var_3 = vec3<bool>(any(select(vec2<bool>(var_1.d, var_2.x), vec2<bool>(false, var_1.d), select(vec2<bool>(var_1.d, var_1.d), vec2<bool>(true, var_1.d), vec2<bool>(var_1.d, var_2.x)))) & true, true, var_2.x);
    return ~vec4<u32>(~(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.a.x, var_1.a.x), vec3<u32>(29286u, 2675u, var_1.a.x)) | u_input.c), 1u, ~1u, _wgslsmith_sub_u32(1u >> (~4294967295u % 32u), _wgslsmith_add_u32(1u, var_1.a.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<bool>) -> Struct_1 {
    global0 = arg_0.b;
    let var_0 = ~3383i;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1719f + -2300f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), -1320f), -1000f))));
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(748f - -1481f), arg_1.x, false))));
    var_1 = 476f;
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: vec2<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(sign(-870f));
    let var_1 = vec4<bool>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(arg_0.b.yxy, min(u_input.a, global0.zyw)), _wgslsmith_sub_i32(global0.x, 0i)) == (_wgslsmith_sub_i32(-global0.x, _wgslsmith_div_i32(u_input.a.x, global0.x)) << (66910u % 32u)), arg_3.x, arg_0.d, 17512u <= u_input.d.x);
    var var_2 = Struct_1(~(~arg_0.a), vec4<i32>(_wgslsmith_mod_i32(-1i, countOneBits(select(-8844i, arg_1, arg_0.d))), 1i, firstTrailingBit(firstTrailingBit(~(-1i))), -func_4(Struct_1(arg_0.a, arg_0.b, vec2<u32>(arg_0.c.x, arg_0.a.x), true, vec4<u32>(38326u, 1u, 16056u, 0u)), _wgslsmith_div_vec2_f32(vec2<f32>(786f, var_0), vec2<f32>(-1843f, var_0)), vec2<bool>(true, arg_0.d)).b.x), countOneBits(_wgslsmith_sub_vec2_u32(u_input.d.zy, ~arg_0.c)), arg_3.x, arg_0.a);
    var var_3 = arg_3.x;
    global0 = vec4<i32>(arg_2, -1i, global0.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -53896i, 1i, u_input.b), _wgslsmith_div_vec3_i32(reverseBits(arg_0.b.yzw), min(u_input.a, vec3<i32>(arg_1, 17247i, var_2.b.x)))));
    return var_2.b;
}

fn func_1() -> bool {
    global0 = func_5(func_4(Struct_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 4294967295u, 35747u, 1u), ~vec4<u32>(u_input.e, u_input.c, u_input.c, u_input.c)), _wgslsmith_sub_vec4_i32(~vec4<i32>(global0.x, u_input.b, global0.x, 49622i), _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, 2147483647i, -59271i, -3094i), vec4<i32>(u_input.b, -2147483647i, u_input.a.x, u_input.a.x))), ~(~vec2<u32>(u_input.c, 4294967295u)), any(vec2<bool>(false, false)), max(func_2(), ~vec4<u32>(0u, u_input.e, u_input.c, 37730u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-637f)), -219f)), select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(false, true)), true), select(vec2<bool>(false, true), vec2<bool>(true, false), true))), 2147483647i, -u_input.b, select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), false), select(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true)), vec2<bool>(true, true), false)));
    var var_0 = func_4(Struct_1(~vec4<u32>(abs(4294967295u), _wgslsmith_mult_u32(0u, 4294967295u), ~78511u, func_3()), select(vec4<i32>(-8935i, 1i, global0.x, 0i), ~vec4<i32>(global0.x, -10298i, u_input.a.x, global0.x), true), select(~vec2<u32>(u_input.e, 1u), abs(u_input.d.yx), vec2<bool>(true, true)), false, select(vec4<u32>(842u << (u_input.c % 32u), func_4(Struct_1(vec4<u32>(u_input.d.x, u_input.c, 21670u, u_input.e), vec4<i32>(u_input.b, u_input.a.x, -6150i, 25030i), u_input.d.zy, true, vec4<u32>(u_input.c, u_input.c, 58524u, u_input.e)), vec2<f32>(1246f, -1000f), vec2<bool>(false, true)).a.x, ~u_input.c, 20170u), ~(~vec4<u32>(1914u, 0u, u_input.e, 0u)), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(131f)), _wgslsmith_f_op_f32(round(-1127f))))), vec2<bool>(true, true));
    let var_1 = Struct_1(~(~vec4<u32>(~var_0.a.x, abs(u_input.c), 52170u, ~var_0.e.x)), var_0.b, var_0.c, true, vec4<u32>(0u, _wgslsmith_dot_vec2_u32(~(~u_input.d.zz), u_input.d.zz), _wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.d.x, 26430u), var_0.a.x), ~(~(~u_input.d.x))));
    global0 = ~var_0.b;
    let var_2 = 962f;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~select(select(~vec4<u32>(4294967295u, 1u, 1u, u_input.d.x), vec4<u32>(1u, u_input.e, u_input.d.x, u_input.c) & vec4<u32>(u_input.e, u_input.e, u_input.c, u_input.d.x), select(false, false, true)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, 39332u, 1u), vec4<u32>(u_input.c, 0u, u_input.e, u_input.c)), vec4<bool>(any(vec4<bool>(false, true, false, false)), all(vec4<bool>(true, false, false, false)), false, false)), ~vec4<i32>(firstTrailingBit(u_input.a.x), u_input.b, -47028i, -2147483647i) ^ (abs(vec4<i32>(u_input.b, u_input.b, 64353i, global0.x)) ^ _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a.x, 51803i, global0.x, 0i), vec4<i32>(global0.x, 1i, global0.x, global0.x) ^ vec4<i32>(27876i, -2147483647i, 2147483647i, u_input.b))), u_input.d.zz, all(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), u_input.d.x == u_input.c), vec2<bool>(false, false), select(any(vec4<bool>(false, false, false, false)), func_1(), true))), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.e, 4294967295u, 1u, u_input.c) >> (vec4<u32>(u_input.c, 15649u, u_input.e, 11953u) % vec4<u32>(32u))) << (abs(vec4<u32>(u_input.c, u_input.e, 43863u, u_input.c)) % vec4<u32>(32u)), vec4<u32>(u_input.e | (u_input.d.x >> (u_input.d.x % 32u)), u_input.e, u_input.e, _wgslsmith_div_u32(u_input.e, 4294967295u << (u_input.c % 32u)))));
    let var_1 = Struct_1(~(~vec4<u32>(1u, _wgslsmith_mult_u32(var_0.e.x, u_input.d.x), var_0.e.x, max(1u, 0u))), -(~var_0.b), ~vec2<u32>(u_input.e, u_input.d.x), all(select(!select(vec4<bool>(false, var_0.d, var_0.d, var_0.d), vec4<bool>(var_0.d, var_0.d, true, false), false), !(!vec4<bool>(false, var_0.d, true, var_0.d)), vec4<bool>(any(vec4<bool>(var_0.d, false, false, var_0.d)), var_0.d || false, !var_0.d, true | var_0.d))), ~_wgslsmith_mult_vec4_u32(var_0.e, func_4(func_4(Struct_1(vec4<u32>(var_0.c.x, 32357u, var_0.a.x, 42958u), var_0.b, u_input.d.yx, var_0.d, vec4<u32>(var_0.e.x, u_input.e, 0u, var_0.a.x)), vec2<f32>(929f, 128f), vec2<bool>(var_0.d, var_0.d)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1171f, 910f))), vec2<bool>(false, false)).a));
    var_0 = Struct_1(_wgslsmith_sub_vec4_u32(var_1.e, var_0.e), _wgslsmith_add_vec4_i32(vec4<i32>(min(_wgslsmith_add_i32(var_1.b.x, -2147483647i), 1i), -_wgslsmith_mod_i32(9352i, global0.x), min(var_0.b.x, var_0.b.x) & reverseBits(var_1.b.x), ~1i << (reverseBits(u_input.e) % 32u)), -vec4<i32>(1i, ~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, 2147483647i, 2147483647i, 2147483647i), var_0.b), _wgslsmith_mult_i32(2147483647i, u_input.a.x))), abs(abs(firstTrailingBit(vec2<u32>(4294967295u, 87679u))) ^ u_input.d.xy), u_input.a.x == abs(_wgslsmith_add_i32(var_0.b.x << (var_0.c.x % 32u), -6377i)), ~_wgslsmith_mult_vec4_u32(var_1.a, ~vec4<u32>(57297u, var_1.c.x, 4294967295u, 12546u)));
    var_0 = func_4(Struct_1(var_0.a & (var_1.e | var_0.a), func_4(Struct_1(~vec4<u32>(0u, var_0.e.x, 4294967295u, 4294967295u), _wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.a.x, 1i, 20316i), vec4<i32>(-5801i, 46812i, var_0.b.x, -2147483647i)), _wgslsmith_div_vec2_u32(var_1.e.yx, vec2<u32>(u_input.e, 531u)), true, var_1.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(655f, -1314f) * vec2<f32>(542f, 1167f))), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(var_0.d, true))).b, vec2<u32>(func_2().x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, 0u), _wgslsmith_div_vec3_u32(u_input.d, var_1.e.yww))), ~1u == var_0.c.x, ~(var_1.a ^ var_1.e) ^ ~max(vec4<u32>(4294967295u, u_input.d.x, 4294967295u, 99053u), var_0.a)), vec2<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-609f, -1160f, var_1.d)) * _wgslsmith_div_f32(1337f, 1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-107f, -273f, false)))))), select(!vec2<bool>(true, all(vec2<bool>(false, var_0.d))), vec2<bool>(var_0.d, false), !select(vec2<bool>(var_0.d, true), vec2<bool>(false, var_0.d), any(vec4<bool>(false, var_0.d, var_1.d, var_0.d)))));
    let var_2 = var_1;
    global0 = _wgslsmith_sub_vec4_i32(vec4<i32>(-8340i, ~(~func_4(var_1, vec2<f32>(1000f, -2168f), vec2<bool>(false, var_0.d)).b.x), -2147483647i, 2147483647i), var_1.b);
    let var_3 = abs(~min(4098u, 19583u));
    let var_4 = select(vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(0u), ~_wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(u_input.e, 50191u, u_input.d.x, var_2.c.x))), abs(var_3 | 1u) | ~(~1u), ~select(firstTrailingBit(0u), var_3, u_input.d.x > 0u), func_4(Struct_1(var_1.e, vec4<i32>(-62692i, u_input.a.x, 1i, global0.x), ~var_0.e.zy, var_1.d, ~vec4<u32>(115359u, 63187u, 1u, var_0.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(189f, -540f), vec2<f32>(-1686f, -1086f), vec2<bool>(var_2.d, var_1.d))) * vec2<f32>(-113f, -1000f)), !select(vec2<bool>(var_1.d, false), vec2<bool>(var_1.d, true), vec2<bool>(false, false))).c.x), vec4<u32>(4294967295u, _wgslsmith_add_u32(1u, 57610u), ~var_0.e.x, func_4(func_4(Struct_1(vec4<u32>(25286u, 71624u, 53857u, 4294967295u), var_0.b, vec2<u32>(var_2.c.x, 13533u), false, vec4<u32>(var_2.a.x, 19157u, var_2.e.x, u_input.e)), vec2<f32>(121f, -1000f), vec2<bool>(var_2.d, var_1.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(682f, -177f)), select(vec2<bool>(true, true), select(vec2<bool>(var_2.d, var_1.d), vec2<bool>(var_0.d, var_0.d), vec2<bool>(var_2.d, var_2.d)), var_1.d)).a.x), !(!(!(!vec4<bool>(var_0.d, var_1.d, true, false)))));
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 635f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1f)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(func_4(var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-763f, 290f))), select(!vec2<bool>(var_1.d, false), vec2<bool>(var_0.d, true), vec2<bool>(var_2.d, var_0.d))).c.x, 82443u, func_4(var_1, vec2<f32>(var_5, _wgslsmith_f_op_f32(1594f - var_5)), vec2<bool>(true, true)).d));
}

