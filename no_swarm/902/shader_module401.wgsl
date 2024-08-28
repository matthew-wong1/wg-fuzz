struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = 11966u;
    var var_1 = Struct_2(-1469f, Struct_1(select(all(vec2<bool>(true, false)) | true, select(-2147483647i, 59629i, true) >= 2147483647i, min(u_input.a.x, 1u) != _wgslsmith_mod_u32(u_input.a.x, 57867u)), (u_input.a.xy >> (abs(vec2<u32>(global0.x, 4294967295u)) % vec2<u32>(32u))) >> ((u_input.a.zy ^ firstTrailingBit(u_input.a.zy)) % vec2<u32>(32u))), Struct_1(_wgslsmith_div_u32(4086u, 4294967295u | global0.x) <= _wgslsmith_dot_vec3_u32(u_input.a << (u_input.a % vec3<u32>(32u)), vec3<u32>(u_input.a.x, global0.x, var_0)), _wgslsmith_div_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(var_0 & var_0, 19382u))), _wgslsmith_add_i32(-16216i, 1i), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1100f), _wgslsmith_f_op_f32(select(879f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -442f), 301f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1947f - 2352f) + -1823f))));
    global0 = vec2<u32>(17790u, (_wgslsmith_add_u32(~15900u, var_0) ^ var_1.b.b.x) ^ abs(_wgslsmith_sub_u32(1u, var_1.c.b.x) | firstTrailingBit(u_input.a.x)));
    var var_2 = var_1.b;
    let var_3 = vec2<bool>(var_2.a, any(!(!vec4<bool>(false, var_1.c.a, var_2.a, var_2.a))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-585f - _wgslsmith_f_op_f32(trunc(var_1.a))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-1433f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(801f, -842f) - -119f))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1506f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(691f - -616f))))));
    return Struct_1(true, abs(~(~vec2<u32>(0u, global0.x)) | vec2<u32>(u_input.a.x | 0u, u_input.a.x)));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec4<i32>) -> u32 {
    global0 = vec2<u32>(max(arg_1.c.b.x, ~u_input.a.x), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(firstLeadingBit(vec4<u32>(0u, 1u, 4294967295u, 6363u))), ~(~vec4<u32>(arg_1.c.b.x, global0.x, 13469u, 58102u))));
    global0 = _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(max(u_input.a.zz, vec2<u32>(38304u, global0.x)), vec2<u32>(global0.x, global0.x)) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, global0.x) << (vec2<u32>(67736u, global0.x) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(arg_1.c.b, vec2<u32>(global0.x, u_input.a.x), u_input.a.xz)), ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.c.b.x, u_input.a.x), vec2<u32>(0u, arg_1.c.b.x))) & vec2<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 86859u, 0u, u_input.a.x), vec4<u32>(arg_1.b.b.x, arg_1.c.b.x, 38798u, global0.x)), firstTrailingBit(vec4<u32>(4294967295u, u_input.a.x, 23587u, u_input.a.x))), ~(~39022u)));
    var var_0 = arg_0;
    let var_1 = reverseBits(~u_input.a.x);
    let var_2 = Struct_1(false, u_input.a.xy);
    return ~select(~(~u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, ~_wgslsmith_dot_vec2_u32(arg_1.c.b, vec2<u32>(var_1, 12167u))), var_2.a);
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(func_4(any(vec2<bool>(false, true)) == true, Struct_2(-999f, func_2(false, true, false), Struct_1(false, vec2<u32>(arg_0, 4294967295u)), abs(-22794i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(160f, -734f, 619f))), vec4<i32>(57818i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 121444i, 0i, 2147483647i), vec4<i32>(2147483647i, 62390i, 8829i, 0i)), firstLeadingBit(27125i), 52913i)), u_input.a.x));
    var var_0 = vec3<bool>(true, true, all(vec3<bool>(all(vec4<bool>(false, false, true, true)), true, true)) || true);
    var_0 = !vec3<bool>(!func_2(true, false & var_0.x, true).a, var_0.x | true, true);
    var_0 = select(vec3<bool>(true && (all(vec3<bool>(var_0.x, var_0.x, var_0.x)) && any(var_0.zz)), var_0.x, !(!(!var_0.x))), select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(var_0.x, var_0.x, true)), select(!vec3<bool>(var_0.x, true, var_0.x), !vec3<bool>(var_0.x, false, true), vec3<bool>(true, true, true)), select(!vec3<bool>(false, false, var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, var_0.x, false), vec3<bool>(true, var_0.x, true)))), !select(select(vec3<bool>(false, true, true), vec3<bool>(var_0.x, false, true), true), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, false, var_0.x), vec3<bool>(true, true, var_0.x)), true), !all(select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, true)))), all(!(!vec2<bool>(var_0.x, true))));
    var var_1 = -(~firstLeadingBit((vec4<i32>(-1i, -1i, 2147483647i, -2147483647i) << (vec4<u32>(arg_0, 37136u, 2750u, 0u) % vec4<u32>(32u))) | (vec4<i32>(-1i, -2147483647i, 1i, 1i) >> (vec4<u32>(1u, 57282u, arg_0, arg_0) % vec4<u32>(32u)))));
    return Struct_1(false, u_input.a.zx | u_input.a.xy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~1u);
    global0 = ~vec2<u32>(u_input.a.x, select(~0u, var_0.b.x, true));
    let var_1 = ~(~u_input.a);
    var var_2 = _wgslsmith_mod_vec2_u32(firstLeadingBit(~abs(var_1.yz)), firstTrailingBit(var_1.yx)) & func_1(18775u).b;
    var var_3 = select(abs(~vec3<u32>(~4294967295u, ~global0.x, ~u_input.a.x)), ~vec3<u32>(13337u, 47567u, ~var_2.x), !any(!select(vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, var_0.a), var_0.a)));
    let var_4 = func_2(var_0.a, !(func_2(all(vec3<bool>(var_0.a, false, true)), var_0.a, any(vec4<bool>(var_0.a, true, false, var_0.a))).a && var_0.a), var_0.a);
    var var_5 = any(vec3<bool>(false & (false | var_0.a), true, false));
    var var_6 = u_input.a.x << (var_4.b.x % 32u);
    let var_7 = ~_wgslsmith_add_u32(~_wgslsmith_mod_u32(var_1.x, ~var_3.x), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(356f, 859f, 1501f, 594f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(438f, -728f, 720f, -476f), vec4<f32>(-659f, -1571f, -1000f, 110f), var_0.a)))))), firstTrailingBit(firstTrailingBit(var_1) | (vec3<u32>(var_1.x, 38419u, 1u) & var_1)) << (((min(vec3<u32>(2916u, var_7, var_1.x), vec3<u32>(u_input.a.x, var_7, global0.x)) & (vec3<u32>(var_7, var_7, 32781u) >> (vec3<u32>(var_1.x, var_3.x, 28996u) % vec3<u32>(32u)))) << (max(u_input.a, ~u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(303f, -859f, -1309f, -2148f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-189f, -835f, 1000f, 1391f), vec4<f32>(-853f, 768f, 184f, 1071f))), select(vec4<bool>(false, true, true, false), vec4<bool>(var_0.a, var_4.a, false, true), true))) - vec4<f32>(1f, 1f, 1f, 1f))), -15404i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - 2002f));
}

