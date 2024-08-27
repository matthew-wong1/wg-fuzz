struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(55246u, 90110u, 4294967295u, 34959u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec4<bool> {
    var var_0 = true;
    var var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(abs(-u_input.a.xx), u_input.a.yw), u_input.a.xw, u_input.a.xx);
    let var_2 = vec4<bool>(true, false, any(select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true))))), true);
    let var_3 = select(vec2<bool>(min(global0.a.x, _wgslsmith_add_u32(0u, 0u)) <= _wgslsmith_sub_u32(global0.a.x & 4294967295u, _wgslsmith_div_u32(57936u, 87711u)), false), select(!select(select(vec2<bool>(false, false), vec2<bool>(var_2.x, true), false), var_2.xy, var_2.x && true), select(!(!vec2<bool>(var_2.x, true)), var_2.wz, var_2.xy), true), var_2.yx);
    global0 = Struct_2(vec4<u32>(~select(~global0.a.x, ~global0.a.x, !var_2.x), global0.a.x, ~31107u, 28378u));
    return select(vec4<bool>(var_2.x, min(32383u, _wgslsmith_sub_u32(global0.a.x, 31848u)) == 18091u, true, var_2.x == any(vec4<bool>(var_3.x, false, var_3.x, var_2.x))), vec4<bool>(all(select(vec3<bool>(var_3.x, false, true), vec3<bool>(var_3.x, true, var_3.x), true)) & true, false, !(!var_3.x) || select(!var_2.x, all(vec2<bool>(true, true)), true), true), var_3.x);
}

fn func_2() -> u32 {
    global0 = Struct_2(~(~global0.a) | vec4<u32>(4294967295u, select(4294967295u, abs(global0.a.x), true), global0.a.x | min(global0.a.x, 0u), global0.a.x));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(1303f, 860f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(262f, 648f))), vec2<f32>(-1747f, _wgslsmith_f_op_f32(ceil(500f))))) - vec2<f32>(_wgslsmith_div_f32(889f, _wgslsmith_f_op_f32(-1000f - -582f)), _wgslsmith_f_op_f32(f32(-1f) * -741f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-175f, 2040f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(715f, 410f) - vec2<f32>(101f, 321f))))));
    global0 = Struct_2(global0.a);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-1f), 175f, _wgslsmith_f_op_f32(f32(-1f) * -1502f));
    var var_2 = Struct_2(countOneBits(_wgslsmith_div_vec4_u32(select(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global0.a.x, 4294967295u, global0.a.x), global0.a), vec4<u32>(global0.a.x, global0.a.x, global0.a.x, 0u), func_3()), vec4<u32>(4294967295u, global0.a.x, global0.a.x, 1u))));
    return _wgslsmith_mult_u32(_wgslsmith_mult_u32(111018u, select(_wgslsmith_mod_u32(global0.a.x, 1u) | ~global0.a.x, 75439u, u_input.a.x <= u_input.a.x)), ~0u);
}

fn func_4(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    let var_0 = max(1i, 2147483647i);
    let var_1 = 1000f;
    let var_2 = global0.a.xw;
    let var_3 = _wgslsmith_f_op_f32(min(-287f, arg_1.x));
    global0 = Struct_2(_wgslsmith_div_vec4_u32(~global0.a << (_wgslsmith_add_vec4_u32(~global0.a, vec4<u32>(20362u, global0.a.x, 0u, 4294967295u)) % vec4<u32>(32u)), global0.a));
    return 0u;
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_1(func_4(firstLeadingBit(23537u) & func_2(), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_0, 1484f)), arg_0, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1012f))), _wgslsmith_div_f32(_wgslsmith_div_f32(442f, arg_0), _wgslsmith_f_op_f32(-arg_0)))));
    var_0 = Struct_1(~8353u << ((select(21277u, 11604u, false) >> (max(0u, ~global0.a.x) % 32u)) % 32u));
    let var_1 = arg_1;
    var_0 = Struct_1(~(~global0.a.x));
    var_0 = Struct_1(global0.a.x);
    return ~(~(~(~var_1.a.x))) >> (~47813u % 32u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    let var_0 = global0.a.x;
    let var_1 = 2147483647i;
    var var_2 = Struct_2(firstTrailingBit(vec4<u32>(arg_0.a, arg_0.a, reverseBits(func_1(-1514f, Struct_2(vec4<u32>(arg_1.a, 0u, global0.a.x, 4294967295u)))), 25562u << (arg_0.a % 32u))));
    return Struct_2(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0.a, arg_1.a, arg_1.a, 2743u), var_2.a >> (var_2.a % vec4<u32>(32u)), select(vec4<u32>(17349u, 4294967295u, var_2.a.x, arg_0.a), var_2.a, false)), abs(select(global0.a, vec4<u32>(0u, var_2.a.x, global0.a.x, 26364u), vec4<bool>(false, true, true, false)))), ~_wgslsmith_clamp_vec4_u32(~global0.a, _wgslsmith_add_vec4_u32(global0.a, vec4<u32>(arg_0.a, arg_1.a, arg_0.a, arg_0.a)), vec4<u32>(global0.a.x, 32588u, arg_0.a, 41607u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_1(~(func_1(-317f, Struct_2(vec4<u32>(global0.a.x, global0.a.x, global0.a.x, 4294967295u))) | ~1u)), Struct_1(_wgslsmith_mult_u32(global0.a.x, 19036u)));
    global0 = func_5(Struct_1(~(0u << (_wgslsmith_sub_u32(global0.a.x, global0.a.x) % 32u))), Struct_1(min(~15103u, ~global0.a.x)));
    let var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(min(-vec3<i32>(-3084i, u_input.a.x, -33985i), vec3<i32>(u_input.a.x, ~u_input.a.x, u_input.a.x << (123319u % 32u))), ~_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 55316i, 73393i), vec3<i32>(u_input.a.x, 1i, u_input.a.x)), _wgslsmith_div_vec3_i32(u_input.a.xyy, vec3<i32>(u_input.a.x, 0i, u_input.a.x)))), ~u_input.a.zyw, _wgslsmith_add_vec3_i32(-(~u_input.a.xyw) ^ vec3<i32>(-19670i, -2147483647i, 57703i & u_input.a.x), max(vec3<i32>(2717i, _wgslsmith_dot_vec3_i32(u_input.a.xww, vec3<i32>(u_input.a.x, 18072i, 2147483647i)), -u_input.a.x), countOneBits(u_input.a.xww))));
    var var_1 = vec2<i32>(-1i, u_input.a.x) << (~vec2<u32>(~_wgslsmith_clamp_u32(35267u, 40692u, 45455u), _wgslsmith_sub_u32(abs(global0.a.x), global0.a.x)) % vec2<u32>(32u));
    var var_2 = Struct_1(select(_wgslsmith_mult_u32(25630u, func_4(_wgslsmith_add_u32(global0.a.x, global0.a.x), vec3<f32>(1f, 1f, 1f))), global0.a.x, any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, false, false)))));
    let var_3 = select(max(-vec3<i32>(var_1.x, _wgslsmith_dot_vec2_i32(u_input.a.wy, u_input.a.zy), 1i), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, 8353i, -1i), vec3<i32>(_wgslsmith_mult_i32(var_1.x, u_input.a.x), -var_1.x, ~var_0.x))), u_input.a.wxz, !select(false, all(vec3<bool>(true, false, false)), !all(vec3<bool>(false, true, false))));
    let var_4 = ~(-var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(max(global0.a.yxy, ~(~global0.a.zzx ^ (vec3<u32>(global0.a.x, 0u, var_2.a) & vec3<u32>(1u, global0.a.x, 86416u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(984f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(102f, 2063f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-178f, -850f))))), func_5(Struct_1(105478u), Struct_1(~(~50140u))).a.zyy);
}

