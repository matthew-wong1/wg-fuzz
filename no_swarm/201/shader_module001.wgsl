struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec2<bool>) -> u32 {
    var var_0 = Struct_1(firstLeadingBit(1u | global0.x), !vec4<bool>(!arg_2.x, arg_2.x, any(select(vec3<bool>(false, false, false), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(false, true, arg_2.x))), select(any(vec3<bool>(true, false, false)), arg_2.x, !arg_2.x)), !(!(!select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(false, arg_2.x, false), vec3<bool>(arg_2.x, true, arg_2.x)))));
    let var_1 = Struct_4(arg_2.x, Struct_1(4294967295u, !select(select(vec4<bool>(var_0.b.x, var_0.b.x, var_0.c.x, var_0.b.x), var_0.b, var_0.b.x), select(vec4<bool>(false, true, false, false), var_0.b, vec4<bool>(var_0.c.x, false, arg_2.x, var_0.b.x)), !arg_2.x), select(!(!vec3<bool>(true, false, var_0.b.x)), vec3<bool>(!var_0.b.x, true, any(vec3<bool>(var_0.b.x, arg_2.x, var_0.b.x))), !(!var_0.c))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1969f))))), 601f));
    let var_2 = Struct_3(reverseBits(~0u));
    global0 = vec3<u32>(~select(global0.x, ~u_input.a, false), ~6336u, var_1.b.a << ((global0.x << (u_input.a % 32u)) % 32u)) | _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(firstLeadingBit(~vec3<u32>(global0.x, 49642u, 8329u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, 4294967295u, 17009u), vec3<u32>(0u, u_input.a, 20553u))), select(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(0u, var_0.a, arg_0)), vec3<u32>(0u, 24766u, u_input.a)), ~(~vec3<u32>(118418u, 1u, arg_1)), arg_2.x));
    var_0 = var_1.b;
    return _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(27153u, 0u), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), global0.xz), ~vec2<u32>(global0.x, 1u))) | select(vec2<u32>(~var_0.a, ~1u), select(global0.yz, vec2<u32>(arg_0, 4294967295u), arg_2.x), !var_0.b.ww), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, ~0u), global0.yx));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec4<f32>) -> vec3<u32> {
    global0 = vec3<u32>(~max(_wgslsmith_mult_u32(func_3(arg_2.a, u_input.a, vec2<bool>(false, arg_0.b.b.x)), 4294967295u), firstTrailingBit(global0.x)), 4294967295u, u_input.a);
    var var_0 = arg_0.b;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -755f) * _wgslsmith_f_op_f32(sign(1f))), _wgslsmith_f_op_f32(-452f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x + -1258f))))), -888f));
    var var_2 = 0u;
    var var_3 = Struct_2(firstLeadingBit(vec3<i32>(~_wgslsmith_add_i32(arg_1.x, arg_1.x), 2147483647i, max(_wgslsmith_clamp_i32(arg_1.x, arg_1.x, arg_1.x), ~arg_1.x))), _wgslsmith_f_op_f32(-var_1), Struct_1(11140u, !vec4<bool>(true, false, all(vec4<bool>(true, arg_0.b.c.x, arg_0.a, true)), false), select(vec3<bool>(var_0.c.x, 2147483647i <= arg_1.x, !var_0.c.x), select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), arg_0.b.c, var_0.c), any(vec2<bool>(false, arg_0.a)) && true)), arg_0.b, Struct_1(global0.x, vec4<bool>(!arg_0.a, any(select(vec2<bool>(arg_0.b.c.x, true), vec2<bool>(var_0.b.x, arg_0.b.c.x), arg_0.b.c.x)), arg_0.a, all(var_0.b.zy)), vec3<bool>(arg_0.a, any(!var_0.c), var_0.b.x)));
    return ~select(vec3<u32>(1u << (reverseBits(0u) % 32u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.b.a), firstLeadingBit(global0.yy))), vec3<u32>(~31239u, ~(41110u << (u_input.a % 32u)), 1u), vec3<bool>(!var_3.e.c.x, any(select(vec4<bool>(false, true, true, false), var_3.e.b, vec4<bool>(arg_0.a, true, false, var_3.e.b.x))), var_3.c.c.x));
}

fn func_1(arg_0: f32, arg_1: u32) -> vec4<f32> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_1, global0.x), ~vec3<u32>(1293u, arg_1, u_input.a)), vec3<u32>(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1, 1u, u_input.a), ~vec3<u32>(0u, u_input.a, u_input.a)), ~38447u)), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(min(func_2(Struct_4(true, Struct_1(arg_1, vec4<bool>(true, true, true, true), vec3<bool>(true, true, true)), vec2<f32>(-813f, 774f)), vec3<i32>(19085i, 17699i, 4892i), Struct_3(22152u), vec4<f32>(arg_0, 1000f, -593f, arg_0)), ~vec3<u32>(global0.x, u_input.a, 68750u)), firstLeadingBit(vec3<u32>(14662u, 0u, 1u)) >> (~vec3<u32>(u_input.a, 0u, 61916u) % vec3<u32>(32u)), countOneBits(max(vec3<u32>(global0.x, global0.x, 56138u), vec3<u32>(44049u, arg_1, 4294967295u)))), vec3<u32>(arg_1, _wgslsmith_add_u32(_wgslsmith_mult_u32(12724u, 42429u), u_input.a | 4294967295u), _wgslsmith_sub_u32(~global0.x, u_input.a))));
    var var_2 = !any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), true), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))));
    var var_3 = Struct_4(578f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0)))), Struct_1(64151u, select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), 1211f < arg_0), vec4<bool>(true, true, true, true), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)))), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(select(true, true, false), true, any(vec2<bool>(false, true))), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(518f, arg_0))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(287f, arg_0))))))));
    var_3 = Struct_4(!(!(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1, var_3.b.a, 355u), vec4<u32>(0u, 23321u, 76419u, u_input.a)) == abs(42642u))), var_3.b, var_3.c);
    return vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(666f, _wgslsmith_f_op_f32(f32(-1f) * -346f), var_3.a))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1614f + 381f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.c.x))))), arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(f32(-1f) * -1244f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(2147483647i << (~(~_wgslsmith_div_u32(0u, 28581u)) % 32u), -(~(-2147483647i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1252f), _wgslsmith_mod_u32(1u << (u_input.a % 32u), ~1u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1950f, 211f, 450f, 355f), vec4<f32>(1568f, 426f, 1935f, 734f), vec4<bool>(true, false, true, true))))))))));
    let var_2 = select(vec4<bool>(true, all(vec3<bool>(true, true, true)) & true, true, true), vec4<bool>(!any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)), false, var_1.x <= var_1.x, true), false);
    var var_3 = select(var_0.x, _wgslsmith_dot_vec3_i32(select(-vec3<i32>(1i, 0i, 0i), -vec3<i32>(var_0.x, var_0.x, -16069i), !vec3<bool>(var_2.x, var_2.x, true)), -max(vec3<i32>(var_0.x, 20114i, -1i), vec3<i32>(0i, 28644i, -5457i))) >> (global0.x % 32u), var_2.x);
    let var_4 = abs(select(vec4<u32>(29496u, global0.x, global0.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, 1u), global0.x)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(global0.x, u_input.a, u_input.a, 0u) << (vec4<u32>(global0.x, 7311u, u_input.a, 4294967295u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 4294967295u, u_input.a, 1u), vec4<u32>(global0.x, u_input.a, 0u, 6297u)) | _wgslsmith_add_vec4_u32(vec4<u32>(42943u, 33314u, global0.x, 0u), vec4<u32>(global0.x, global0.x, 25800u, global0.x))), !vec4<bool>(any(var_2.xy), true, var_0.x > 1i, !var_2.x)));
    var var_5 = Struct_3((~global0.x << (~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(4191u, var_4.x)) % 32u)) >> (u_input.a % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(1i, var_1.yww, firstTrailingBit(_wgslsmith_sub_u32(~0u << (abs(var_4.x) % 32u), select(var_5.a, global0.x, true))), 39755i, _wgslsmith_sub_vec3_u32(~reverseBits(~vec3<u32>(1u, 35442u, global0.x)), vec3<u32>(0u ^ var_4.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_4.x, 13716u, u_input.a), u_input.a), 5848u)));
}

