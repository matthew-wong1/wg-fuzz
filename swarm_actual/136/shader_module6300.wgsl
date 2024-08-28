struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<bool> {
    let var_0 = vec3<i32>(~(-abs(min(2147483647i, -3309i))), -_wgslsmith_mod_i32(-1i, -2147483647i), _wgslsmith_add_i32(-(i32(-1i) * -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, 5821i, 1i) << (~vec4<u32>(4370u, 75066u, u_input.c, u_input.a.x) % vec4<u32>(32u)), ~vec4<i32>(2147483647i, 2147483647i, 0i, 1i))));
    global1 = Struct_1(any(vec2<bool>(true, select(global1.a, true, true))) & global1.a);
    let var_1 = Struct_1(!all(vec4<bool>(true, !global1.a, !global1.a, any(vec4<bool>(false, global1.a, global1.a, global1.a)))));
    global1 = var_1;
    global0 = 1u == ~firstTrailingBit(1u);
    return !select(vec2<bool>(any(!vec4<bool>(false, global1.a, var_1.a, global1.a)), var_1.a), vec2<bool>(all(vec4<bool>(true, var_1.a, false, false)), select(var_1.a, true, select(global1.a, false, var_1.a))), var_0.x < var_0.x);
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), func_3()), arg_0, func_3())));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -179f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1942f))))) <= _wgslsmith_f_op_f32(f32(-1f) * -2290f);
    let var_1 = Struct_1(true);
    var var_2 = var_1;
    let var_3 = var_1;
    return Struct_1((~3773u & _wgslsmith_mod_u32(~4294967295u, u_input.e ^ 0u)) < 1u);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1097f * -396f), _wgslsmith_f_op_f32(-124f + 1139f)))) - 488f));
    let var_1 = func_2(vec2<bool>(true, global1.a));
    global0 = var_1.a;
    var var_2 = var_1;
    var var_3 = ~abs(abs(select(~vec4<i32>(28150i, 13188i, -16738i, 67014i), select(vec4<i32>(-13851i, 46127i, 1i, -9781i), vec4<i32>(-17356i, 13344i, 2147483647i, 2147483647i), true), !vec4<bool>(var_2.a, var_1.a, var_1.a, true))));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_div_f32(-588f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1791f, -1663f) - -1000f)) <= _wgslsmith_f_op_f32(ceil(-1057f)));
    let var_1 = !(!(!select(!vec4<bool>(var_0.a, global1.a, false, true), vec4<bool>(arg_3.a, true, arg_2.a, arg_3.a), arg_1.a)));
    var var_2 = _wgslsmith_clamp_vec4_i32(firstLeadingBit(-vec4<i32>(_wgslsmith_clamp_i32(-83200i, 12619i, -28726i), 1i, 1i, -50127i)), firstTrailingBit(-abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 0i, -11021i, -27747i), vec4<i32>(2147483647i, -9048i, -1i, -18564i)))), ~firstLeadingBit(-vec4<i32>(-2147483647i, -18794i, -17389i, -2147483647i) & _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 18755i, 2147483647i, -47058i), vec4<i32>(-11444i, 10187i, -1i, -15637i), vec4<i32>(5769i, -5619i, 30428i, 0i))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -840f)), 211f)))));
    let var_4 = _wgslsmith_add_vec3_i32(~vec3<i32>(-var_2.x, (i32(-1i) * -524i) & select(var_2.x, -3639i, arg_1.a), -(-6348i | var_2.x)), ~select(vec3<i32>(-24149i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -24542i, var_2.x), var_2.wxz), 1i), var_2.wwy, !arg_1.a));
    return vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-188f))), 1f, !func_2(vec2<bool>(arg_3.a, arg_1.a)).a)))), _wgslsmith_f_op_f32(round(-2152f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-19413i, -1i, 49752i)) << (~vec3<u32>(6872u, u_input.c, 1u) % vec3<u32>(32u)), min(vec3<i32>(1i, 1i, 1i), firstLeadingBit(vec3<i32>(-49983i, 1i, 40211i)))) << (~_wgslsmith_mult_u32(u_input.c, u_input.d) % 32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_1(), func_1(), Struct_1(false), func_2(!func_3()))));
    let var_2 = select(select(!(!select(vec4<bool>(global1.a, true, false, true), vec4<bool>(true, global1.a, global1.a, global1.a), global1.a)), vec4<bool>(global1.a, any(select(vec4<bool>(global1.a, true, true, global1.a), vec4<bool>(false, global1.a, global1.a, global1.a), vec4<bool>(true, false, false, global1.a))), select(false, true, true), false), u_input.c > u_input.e), !(!select(select(vec4<bool>(false, global1.a, global1.a, true), vec4<bool>(false, true, true, global1.a), global1.a), !vec4<bool>(global1.a, true, true, global1.a), global1.a)), func_3().x);
    let var_3 = _wgslsmith_mult_u32(42222u, u_input.c);
    let var_4 = countOneBits(vec3<u32>(u_input.a.x, ~0u, var_3));
    var var_5 = Struct_1(var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1489f), -vec4<i32>(var_0, _wgslsmith_add_i32(abs(var_0), var_0 | var_0), var_0, -2147483647i), ~var_4.zy);
}

