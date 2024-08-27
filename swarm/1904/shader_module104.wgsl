struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(0u, 4294967295u));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global0 = Struct_1(~(~(~vec2<u32>(u_input.a.x, 0u))));
    let var_0 = -749f;
    global0 = arg_1;
    global0 = Struct_1(~vec2<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(global0.a.x, u_input.a.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(0u, arg_1.a.x))), 62610u << (reverseBits(0u) % 32u)));
    let var_1 = min(0u << (~_wgslsmith_mult_u32(81953u, firstLeadingBit(global0.a.x)) % 32u), 1u);
    return arg_1;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec2<u32> {
    global0 = Struct_1(_wgslsmith_sub_vec2_u32(select(_wgslsmith_div_vec2_u32(global0.a, arg_1.b.a), select(firstTrailingBit(vec2<u32>(global0.a.x, 0u)), vec2<u32>(u_input.a.x, 18141u), true), arg_0.d.xz), reverseBits(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(170u, 0u, 0u), vec3<u32>(u_input.a.x, 4294967295u, arg_1.e.a.x)), ~0u))));
    return ~arg_0.b.a;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec2_u32(max(_wgslsmith_mod_vec2_u32(~u_input.a, _wgslsmith_mod_vec2_u32(~arg_2.a, ~vec2<u32>(82398u, 4294967295u))), ~_wgslsmith_sub_vec2_u32(~arg_0.a, _wgslsmith_mult_vec2_u32(arg_0.a, arg_2.a))), ~func_3(Struct_2(all(vec2<bool>(arg_3, true)), Struct_1(vec2<u32>(arg_1, 0u)), Struct_1(vec2<u32>(arg_1, 4294967295u)), !vec4<bool>(true, arg_3, arg_3, arg_3), func_1(-542f, arg_2)), Struct_2(false, Struct_1(arg_0.a), Struct_1(vec2<u32>(83065u, global0.a.x)), !vec4<bool>(true, arg_3, true, arg_3), arg_2)));
    var var_1 = !select(!vec3<bool>(arg_3, true, false), vec3<bool>(true, any(vec2<bool>(true, true)), true), !any(vec3<bool>(false, arg_3, arg_3)));
    var_0 = ~vec2<u32>(arg_0.a.x, 71597u) | global0.a;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> bool {
    let var_0 = Struct_1(vec2<u32>(_wgslsmith_sub_u32(min(0u ^ global0.a.x, 1u), abs(1u)), _wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(~global0.a.x, u_input.a.x))));
    return all(vec4<bool>(!all(vec3<bool>(true, true, true)), false, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-(i32(-1i) * -1i), i32(-1i) * -1i), _wgslsmith_add_i32(50009i, -58840i)), ~(~abs(-23837i)), min(0i, -abs(25233i)) << ((~(~16560u) << (global0.a.x % 32u)) % 32u));
    var var_1 = vec4<bool>(true, select(false, false, true), func_4(func_2(func_1(_wgslsmith_f_op_f32(f32(-1f) * -395f), Struct_1(vec2<u32>(0u, 1u))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, global0.a.x)), Struct_1(global0.a), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1229f, -993f, -155f, -807f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(948f, 191f, -1000f, 656f), vec4<f32>(502f, -2783f, 705f, -342f)))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-266f, -1000f, -1699f, 1318f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1580f, -323f, 1455f, 1395f))))))), !any(vec2<bool>(true, true)));
    var_0 = -(vec4<i32>(-2045i, var_0.x ^ -var_0.x, -(var_0.x & -8347i), ~var_0.x) << (vec4<u32>(1u, ~44201u, _wgslsmith_div_u32(18780u >> (0u % 32u), func_3(Struct_2(var_1.x, Struct_1(vec2<u32>(u_input.a.x, 0u)), Struct_1(u_input.a), vec4<bool>(var_1.x, var_1.x, true, var_1.x), Struct_1(vec2<u32>(0u, u_input.a.x))), Struct_2(false, Struct_1(u_input.a), Struct_1(global0.a), vec4<bool>(var_1.x, var_1.x, var_1.x, true), Struct_1(vec2<u32>(u_input.a.x, u_input.a.x)))).x), 24342u) % vec4<u32>(32u)));
    let var_2 = ~var_0.x;
    var var_3 = ~(~max(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.a.x, 1u, 916u, global0.a.x), ~vec4<u32>(global0.a.x, 4294967295u, 0u, global0.a.x), vec4<u32>(1u, global0.a.x, 60722u, 0u) ^ vec4<u32>(u_input.a.x, 4294967295u, 0u, global0.a.x)), vec4<u32>(u_input.a.x, 1u, 10615u, 13666u)));
    var var_4 = func_2(Struct_1(vec2<u32>(var_3.x, ~func_2(Struct_1(global0.a), 15013u, Struct_1(global0.a), var_1.x).a.x)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(90014u, 4294967295u, 29717u, global0.a.x) << (vec4<u32>(27816u, u_input.a.x, global0.a.x, 53190u) % vec4<u32>(32u)), vec4<u32>(0u, var_3.x, u_input.a.x, 1u) << (vec4<u32>(global0.a.x, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u))), 1u), func_2(Struct_1(~vec2<u32>(var_3.x, 50655u)), ~_wgslsmith_mod_u32(global0.a.x, ~53063u), Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, var_3.x), ~u_input.a)), var_1.x), !var_1.x);
    let var_5 = ~abs(vec3<u32>(var_3.x, var_4.a.x, u_input.a.x) & (vec3<u32>(108745u, 4294967295u, 1u) | vec3<u32>(29643u, u_input.a.x, 0u))) | _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(min(global0.a.x, var_4.a.x), var_4.a.x, _wgslsmith_div_u32(5860u, global0.a.x))), select(~select(vec3<u32>(u_input.a.x, 0u, var_4.a.x), vec3<u32>(4294967295u, 1u, 16753u), vec3<bool>(var_1.x, var_1.x, var_1.x)), abs(vec3<u32>(1u, var_4.a.x, 4294967295u)), (var_0.x <= 2147483647i) || all(vec2<bool>(true, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2138f, -538f, -977f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 464f, 1346f), vec3<f32>(661f, -761f, 255f)))))), abs(~func_2(func_1(-905f, Struct_1(vec2<u32>(0u, 82203u))), ~1u, Struct_1(global0.a), false).a), ~(~(var_5.x & 62929u)));
}

