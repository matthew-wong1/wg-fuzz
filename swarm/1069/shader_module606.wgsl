struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: bool,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -296f) + -775f))));
    var var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~select(vec2<i32>(0i, -932i), -vec2<i32>(1i, 7452i), vec2<bool>(false, false)), vec2<i32>(-25127i, _wgslsmith_div_i32(18884i, -1i))), vec2<i32>(countOneBits(~(-1i)), 24082i));
    let var_2 = u_input.a.x;
    var var_3 = ~(~(~(u_input.a.x | ~var_2)));
    let var_4 = select(vec2<bool>(_wgslsmith_clamp_i32(1i, 41163i, 1i) <= -(~(-38397i)), true), select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(any(vec2<bool>(false, true)), all(vec4<bool>(true, true, false, false))), vec2<bool>(any(vec2<bool>(true, true)), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))), (u_input.a.x >= 90306u) | true);
    return ~(~4294967295u);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    let var_0 = arg_2.a;
    var var_1 = Struct_2(-2709i ^ _wgslsmith_sub_i32(-arg_2.a.a, arg_2.a.a), ~var_0.b);
    var_1 = Struct_2(-24756i, vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, 1u << (firstLeadingBit(u_input.a.x) % 32u), ~select(76794u, arg_1.a.b.x, true)), ~(~_wgslsmith_add_u32(u_input.a.x, 43231u)), 0u, 1u));
    var_1 = var_0;
    var_1 = Struct_2(53517i, abs(vec4<u32>(u_input.a.x, ~48133u, ~(~var_1.b.x), func_3())));
    return false;
}

fn func_1() -> Struct_2 {
    let var_0 = !select(vec3<bool>(func_2(~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), Struct_3(Struct_2(31365i, vec4<u32>(4294967295u, 28610u, 17015u, 54981u))), Struct_3(Struct_2(-61589i, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 84813u)))), true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), true));
    let var_1 = false;
    let var_2 = Struct_2(firstTrailingBit(2147483647i), select(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.a.x << (u_input.a.x % 32u), reverseBits(u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 53786u, 1u, u_input.a.x)) | ~vec4<u32>(97021u, u_input.a.x, 12788u, u_input.a.x)), vec4<u32>(u_input.a.x & ~56153u, ~(~u_input.a.x), u_input.a.x, _wgslsmith_clamp_u32(~37787u, 0u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a))), !vec4<bool>(true, var_0.x, var_1, var_1)));
    var var_3 = Struct_1(-vec3<i32>(27182i, -(~var_2.a), var_2.a), var_0, var_1, var_2.b.x, firstLeadingBit(-2147483647i));
    var_3 = Struct_1(~vec3<i32>(var_3.e, 18643i, var_3.e), !vec3<bool>(!select(var_1, false, false), any(vec2<bool>(true, true)), false), var_0.x, _wgslsmith_mod_u32(u_input.a.x, ~var_3.d), _wgslsmith_dot_vec3_i32(firstLeadingBit(~abs(var_3.a)), var_3.a >> (~_wgslsmith_add_vec3_u32(vec3<u32>(var_3.d, u_input.a.x, 82524u), vec3<u32>(33932u, var_3.d, u_input.a.x)) % vec3<u32>(32u))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_1(vec3<i32>(~(-1i), var_0.a, -1i) & _wgslsmith_mod_vec3_i32(-vec3<i32>(-1i, 2147483647i, var_0.a) | vec3<i32>(var_0.a, -44359i, var_0.a), -abs(vec3<i32>(-33346i, var_0.a, 11792i))), vec3<bool>(true, all(select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), vec3<bool>(true, false, true))), 244f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1209f + 1176f) - _wgslsmith_f_op_f32(floor(225f)))), -var_0.a < max(reverseBits(~var_0.a), -15756i << (1u % 32u)), _wgslsmith_div_u32(~14224u >> (u_input.a.x % 32u), 6469u), var_0.a);
    var var_2 = select(vec3<bool>(true, true, var_1.c), vec3<bool>(true, any(!select(var_1.b.zz, var_1.b.zx, var_1.b.xx)), !all(select(vec4<bool>(true, true, var_1.c, true), vec4<bool>(false, var_1.c, true, false), vec4<bool>(false, var_1.b.x, false, var_1.b.x)))), !(!var_1.b));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -515f)));
    var var_4 = vec4<u32>(~_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(var_0.b.zxx, var_0.b.zww)), _wgslsmith_dot_vec2_u32(min(func_1().b.wx, firstLeadingBit(var_0.b.xx)) >> (firstTrailingBit(vec2<u32>(149365u, var_0.b.x)) % vec2<u32>(32u)), ~(~vec2<u32>(var_1.d, var_1.d))), _wgslsmith_dot_vec2_u32(~((u_input.a.zz | var_0.b.xx) & ~u_input.a.xx), var_0.b.yz), 10196u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x);
}

