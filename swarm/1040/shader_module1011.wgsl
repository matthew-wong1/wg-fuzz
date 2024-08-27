struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> u32 {
    let var_0 = arg_1;
    global0 = array<vec3<bool>, 16>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(min(395f, 776f)), 824f, -176f, _wgslsmith_div_f32(261f, 546f))))));
    global0 = array<vec3<bool>, 16>();
    global0 = array<vec3<bool>, 16>();
    return 4294967295u;
}

fn func_3(arg_0: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_1(~vec2<u32>(~_wgslsmith_mod_u32(1u, u_input.a), _wgslsmith_div_u32(u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a))), select(vec4<bool>(true & all(vec2<bool>(false, true)), false, any(vec4<bool>(false, false, false, false)), true), select(vec4<bool>(true, select(true, false, false), any(vec4<bool>(false, false, true, true)), any(global0[_wgslsmith_index_u32(u_input.a, 16u)])), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false), true), any(vec4<bool>(false, true, false, true)) || true));
    global0 = array<vec3<bool>, 16>();
    global0 = array<vec3<bool>, 16>();
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.a.x, 4294967295u, 28762u), u_input.a), _wgslsmith_clamp_u32(func_1(vec3<i32>(-12101i, 46314i, 66202i), Struct_1(var_0.a, var_0.b), _wgslsmith_mult_i32(3837i, arg_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-20997i, -2147483647i, arg_0.x), vec3<i32>(1i, arg_0.x, arg_0.x))), ~6105u, 0u), var_0.a.x, ~1u), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 0u, var_0.a.x, 0u), vec4<u32>(149399u, 1u, var_0.a.x, 4294967295u))) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(73566u, u_input.a, 61971u, var_0.a.x) << (vec4<u32>(0u, 2644u, 15935u, u_input.a) % vec4<u32>(32u)), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) << (vec4<u32>(1u, var_0.a.x, var_0.a.x, var_0.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var_1 = ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, var_0.a.x), vec4<u32>(10097u, u_input.a, var_1.x, 0u)) & min(~vec4<u32>(45839u, u_input.a, 36351u, 31915u), max(vec4<u32>(var_0.a.x, u_input.a, var_0.a.x, 883u), vec4<u32>(18222u, var_1.x, var_0.a.x, 0u)))) << (~vec4<u32>(~firstLeadingBit(81807u), ~u_input.a, var_0.a.x, abs(_wgslsmith_sub_u32(u_input.a, var_0.a.x))) % vec4<u32>(32u));
    return !(!(!var_0.b));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: u32) -> i32 {
    global0 = array<vec3<bool>, 16>();
    let var_0 = func_3(vec3<i32>(arg_2, -32837i, _wgslsmith_add_i32(firstTrailingBit(arg_2), max(_wgslsmith_dot_vec4_i32(vec4<i32>(-76166i, 1i, arg_2, -39976i), vec4<i32>(1i, 0i, arg_2, -500i)), 1i))));
    let var_1 = func_3(vec3<i32>(arg_2, 16837i, _wgslsmith_mult_i32(max(~arg_2, 1i), arg_2 ^ 0i)));
    global0 = array<vec3<bool>, 16>();
    let var_2 = Struct_1(arg_0.a, var_0);
    return -_wgslsmith_sub_i32(0i, _wgslsmith_mult_i32(countOneBits(_wgslsmith_sub_i32(2147483647i, arg_2)), arg_2));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<f32>) -> i32 {
    var var_0 = 17093i >= (-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), vec2<i32>(arg_1.x, 16653i) | vec2<i32>(1i, arg_1.x)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 1i, arg_1.x) << (~vec3<u32>(arg_0.a.x, arg_0.a.x, u_input.a) % vec3<u32>(32u)), arg_1.zwz));
    var var_1 = func_3(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, ~_wgslsmith_dot_vec4_i32(arg_1, arg_1), -2147483647i), reverseBits(-arg_1.xyw)));
    var_1 = vec4<bool>(true, false && var_1.x, all(var_1.wx), var_1.x);
    let var_2 = var_1.x;
    var var_3 = !(!arg_0.b.zww);
    return arg_1.x;
}

fn func_5(arg_0: i32) -> StorageBuffer {
    var var_0 = min(vec2<i32>(arg_0 >> (u_input.a % 32u), arg_0), vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -1900i, arg_0), 0i));
    var var_1 = 190f;
    var var_2 = Struct_1(select(~(~vec2<u32>(0u, u_input.a)), (vec2<u32>(1u, 4294967295u) | vec2<u32>(u_input.a, 1u)) << ((vec2<u32>(1u, 0u) | vec2<u32>(22994u, u_input.a)) % vec2<u32>(32u)), select(vec2<bool>(true, true), vec2<bool>(false, false), true)) ^ reverseBits(vec2<u32>(u_input.a, _wgslsmith_mod_u32(0u, 27286u))), vec4<bool>(true, true | all(vec2<bool>(false, false)), !((4294967295u >= u_input.a) || any(vec4<bool>(true, false, false, false))), false));
    var var_3 = var_0.x;
    var var_4 = !(!(!(var_2.b.x | var_2.b.x))) & false;
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -886f) + _wgslsmith_f_op_f32(trunc(1000f))))) + 1f), _wgslsmith_mult_u32(_wgslsmith_sub_u32(~firstLeadingBit(0u), var_2.a.x), firstTrailingBit(~13781u)), _wgslsmith_mod_vec2_i32(min(vec2<i32>(-2147483647i, _wgslsmith_add_i32(0i, var_0.x)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, 22566i), ~vec2<i32>(arg_0, arg_0))), vec2<i32>(~(~var_0.x), arg_0)), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = ~countOneBits(select(_wgslsmith_div_vec4_u32(~vec4<u32>(12454u, u_input.a, u_input.a, 81033u), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)), ~firstLeadingBit(vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u)), vec4<bool>(true, var_0, var_0, var_0)));
    global0 = array<vec3<bool>, 16>();
    var var_2 = reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x << (var_1.x % 32u), 1u, ~var_1.x), (var_1.zzx << (var_1.xyz % vec3<u32>(32u))) << (_wgslsmith_mult_vec3_u32(var_1.zyy, var_1.xww) % vec3<u32>(32u)))) | vec3<u32>(_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_1.x, u_input.a), var_1.zxw)), _wgslsmith_mod_u32(0u, firstLeadingBit(u_input.a))), func_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(3837i, 4697i, -1i), vec3<i32>(-2147483647i, -2147483647i, -32406i) >> (var_1.xwz % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i)), Struct_1(vec2<u32>(var_1.x, var_1.x) | var_1.yy, vec4<bool>(var_0, var_0, var_0, true)), 2147483647i, 1i), var_1.x);
    let var_3 = Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(~11670u, ~var_1.x), firstTrailingBit(min(vec2<u32>(var_2.x, var_1.x), vec2<u32>(u_input.a, u_input.a)))), var_1.xz), vec4<bool>(var_0, var_0, false, true));
    let x = u_input.a;
    s_output = func_5((2997i ^ _wgslsmith_mult_i32(1i, select(2354i, 2147483647i, false))) ^ func_4(var_3, vec4<i32>(i32(-1i) * -2147483647i, 1i, func_2(var_3, var_3.b.x, 26456i, var_3.a.x), max(2147483647i, -19037i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-176f, -2366f, 932f), vec3<f32>(355f, 1327f, 1543f), var_3.b.x)))));
}

