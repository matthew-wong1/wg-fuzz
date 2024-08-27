struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<bool> {
    var var_0 = vec2<bool>(!(true & global0.x) && !(!any(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x))), true);
    let var_1 = vec4<i32>(-24204i, -10933i, ~firstTrailingBit(-21376i), -71036i);
    let var_2 = -245f;
    let var_3 = Struct_2(vec4<bool>(!((global1.b.x || true) | (u_input.d >= 12176u)), u_input.d == 37709u, global1.b.x, !select(all(vec4<bool>(false, var_0.x, global0.x, true)), global1.b.x, any(vec3<bool>(true, true, global0.x)))), Struct_1(u_input.a, global1.b), ~max(vec2<u32>(_wgslsmith_div_u32(u_input.d, 12493u), firstTrailingBit(0u)), ~vec2<u32>(4294967295u, 0u)));
    let var_4 = ~(~0u);
    return select(vec3<bool>(var_3.b.a.x > -(global1.a.x << (var_3.c.x % 32u)), var_0.x, true), vec3<bool>(false, ~var_3.b.a.x >= var_1.x, !all(select(vec3<bool>(false, var_0.x, global0.x), vec3<bool>(false, true, global0.x), false))), var_3.a.wwx);
}

fn func_2(arg_0: i32) -> vec4<i32> {
    global0 = func_3();
    var var_0 = Struct_1(vec4<i32>(arg_0, 1i, _wgslsmith_add_i32(_wgslsmith_sub_i32(min(2147483647i, u_input.a.x), firstTrailingBit(-1i)), firstLeadingBit(-48268i)), arg_0), func_3().zz);
    var_0 = Struct_1(_wgslsmith_clamp_vec4_i32(-(-u_input.a | ~vec4<i32>(u_input.a.x, global1.a.x, arg_0, 28592i)), var_0.a, countOneBits(vec4<i32>(-1945i, 2147483647i, arg_0, u_input.c) | firstTrailingBit(vec4<i32>(0i, arg_0, global1.a.x, global1.a.x)))), !func_3().zz);
    var var_1 = var_0.a.wy;
    global0 = vec3<bool>(global0.x, !any(!var_0.b), global0.x);
    return global1.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(arg_0, _wgslsmith_mult_vec4_i32(select(vec4<i32>(1i, arg_1.b.a.x, 13516i, 1769i), arg_1.b.a, vec4<bool>(false, arg_1.b.b.x, arg_2.a.x, false)) & vec4<i32>(global1.a.x, arg_0.x, 1826i, arg_2.b.a.x), arg_0)), 35438i, 23943i);
    var var_1 = arg_1.a.x;
    return 0u;
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> i32 {
    let var_0 = ~select(vec3<u32>(reverseBits(arg_0 | 8424u), func_4(func_2(global1.a.x), Struct_2(vec4<bool>(false, false, false, false), Struct_1(vec4<i32>(global1.a.x, global1.a.x, 43627i, global1.a.x), global1.b), vec2<u32>(u_input.d, 4294967295u)), Struct_2(vec4<bool>(true, true, true, global1.b.x), Struct_1(global1.a, vec2<bool>(global1.b.x, false)), vec2<u32>(1u, 16457u))), firstLeadingBit(~10558u)), vec3<u32>(u_input.d, 13333u, abs(4294967295u)), !(!(!vec3<bool>(true, global0.x, global0.x))));
    let var_1 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)));
    global0 = select(select(vec3<bool>(select(true, false, all(global1.b)), true, global0.x), !func_3(), !vec3<bool>(false, global0.x, true)), vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(375f)), arg_1.x) <= arg_1.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, 4294967295u), vec3<u32>(var_0.x, 4294967295u, u_input.d)) <= arg_0, global1.b.x), select(vec3<bool>(true, true, true), vec3<bool>(true, global1.b.x, func_3().x || (global0.x | true)), !((u_input.d & 60021u) >= 13946u)));
    global1 = Struct_1(~abs(-u_input.a ^ u_input.a), global1.b);
    global0 = !select(select(vec3<bool>(!global0.x, global1.b.x, true), vec3<bool>(true, true, true), !any(vec3<bool>(false, true, false))), func_3(), !any(global0.yz));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~firstTrailingBit(u_input.a) & -global1.a, global1.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-111f * -811f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1214f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(317f - 1000f) + 1f), 204f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-225f, -624f, -1000f, 638f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-900f, -838f, 575f, 226f) + vec4<f32>(2467f, 531f, 919f, 681f))), ~var_0.a.x <= func_1(u_input.d, vec3<f32>(-1000f, -989f, 1121f))))));
    let var_2 = Struct_2(select(select(!select(vec4<bool>(true, false, true, var_0.b.x), vec4<bool>(false, global0.x, false, false), vec4<bool>(true, var_0.b.x, false, false)), vec4<bool>(global1.b.x, global1.b.x, !global1.b.x, !var_0.b.x), all(select(vec3<bool>(false, global0.x, global1.b.x), vec3<bool>(global0.x, var_0.b.x, global1.b.x), global0.x))), vec4<bool>((var_0.a.x | global1.a.x) < select(u_input.a.x, global1.a.x, false), global0.x, func_4(vec4<i32>(u_input.b.x, 8954i, 1i, var_0.a.x), Struct_2(vec4<bool>(global0.x, global1.b.x, false, var_0.b.x), Struct_1(global1.a, var_0.b), vec2<u32>(848u, u_input.d)), Struct_2(vec4<bool>(true, false, false, false), Struct_1(global1.a, global1.b), vec2<u32>(0u, 82751u))) > 1u, all(!vec4<bool>(var_0.b.x, global1.b.x, global0.x, true))), !vec4<bool>(true, var_0.b.x & global1.b.x, true, true)), Struct_1(-_wgslsmith_mod_vec4_i32(global1.a, countOneBits(vec4<i32>(-19650i, u_input.a.x, var_0.a.x, global1.a.x))), select(global1.b, vec2<bool>(false, !global1.b.x), global0.yz)), select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, u_input.d) >> (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u))) & _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, u_input.d) & vec2<u32>(8136u, 1u)), reverseBits(min(vec2<u32>(u_input.d, u_input.d) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), vec2<u32>(u_input.d, 2591u) & vec2<u32>(u_input.d, 1u))), select(all(func_3()), var_0.b.x, any(!vec4<bool>(var_0.b.x, global1.b.x, true, false)))));
    var_0 = Struct_1(_wgslsmith_mod_vec4_i32(global1.a, vec4<i32>(-1i, 33058i, -2147483647i, var_2.b.a.x)), func_3().zz);
    let var_3 = var_1;
    global1 = var_2.b;
    var var_4 = vec4<bool>(var_2.b.b.x, !(-431f == var_1.x), global0.x, true);
    global0 = vec3<bool>(false, false, var_0.b.x | true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.x));
}

