struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec4<i32>, 16>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    global0 = select(vec4<u32>(global0.x, _wgslsmith_div_u32(1u, ~4236u), global0.x, global0.x), reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 31293u, global0.x, global0.x) & vec4<u32>(global0.x, global0.x, global0.x, global0.x), vec4<u32>(4294967295u, global0.x, global0.x, 43372u)), (vec4<u32>(global0.x, 7655u, 45700u, global0.x) ^ vec4<u32>(global0.x, global0.x, 8323u, global0.x)) ^ select(vec4<u32>(68469u, global0.x, 1u, 55284u), vec4<u32>(11116u, global0.x, 21123u, global0.x), vec4<bool>(false, true, false, true)))), !vec4<bool>(true, true, false & select(false, true, true), false));
    var var_0 = Struct_1(reverseBits(-1i) == _wgslsmith_mod_i32(max(reverseBits(33068i), 1i), -5326i >> (global0.x % 32u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(279f + -628f) - _wgslsmith_f_op_f32(f32(-1f) * -480f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-379f, _wgslsmith_f_op_f32(ceil(494f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -286f))))));
    global0 = ~vec4<u32>(~1u, global0.x, abs(min(18204u, 62924u)) & global0.x, 1u);
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b + var_0.b) - _wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(-var_0.b))));
    global1 = array<vec4<i32>, 16>();
    return vec3<bool>(false, var_0.a, u_input.a <= _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-27164i, -2147483647i)) ^ _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-32864i, 20387i)), _wgslsmith_sub_vec2_i32(-vec2<i32>(-17239i, u_input.a), vec2<i32>(-25885i, 3974i))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: vec2<i32>) -> vec2<f32> {
    var var_0 = Struct_1(true, vec2<f32>(-1277f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0)))))));
    let var_1 = !select(func_3(), select(vec3<bool>(var_0.a || false, any(vec3<bool>(true, false, false)), false), select(func_3(), vec3<bool>(true, var_0.a, true), false), func_3().x), select(vec3<bool>(global0.x <= 0u, !arg_1.a, var_0.a), vec3<bool>(arg_1.a, arg_1.a, any(vec3<bool>(true, false, false))), select(any(vec4<bool>(arg_1.a, arg_1.a, false, true)), func_3().x, !arg_1.a)));
    let var_2 = min(~(firstLeadingBit(arg_3) ^ arg_3), vec2<i32>(u_input.a | ~0i, 78786i)) >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(global0.x, global0.x) >> (vec2<u32>(45789u, abs(global0.x)) % vec2<u32>(32u)), global0.yw) % vec2<u32>(32u));
    let var_3 = vec4<bool>(func_3().x, true, arg_1.a, var_1.x);
    var var_4 = arg_1;
    return var_0.b;
}

fn func_1(arg_0: i32, arg_1: f32) -> bool {
    let var_0 = Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(229f, Struct_1(true, vec2<f32>(arg_1, 748f)), _wgslsmith_mult_i32(-arg_0, 1061i), countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 59096i), vec2<i32>(arg_0, arg_0)))))));
    let var_1 = 694u;
    return _wgslsmith_dot_vec2_i32(~(vec2<i32>(-1i) * -vec2<i32>(16116i, arg_0)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, select(arg_0, u_input.a, true)), (vec2<i32>(-2243i, u_input.a) ^ vec2<i32>(arg_0, 2147483647i)) << (vec2<u32>(27518u, global0.x) % vec2<u32>(32u)), ~abs(vec2<i32>(-25825i, -2302i)))) <= abs(abs(arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = !vec4<bool>(!func_1(u_input.a >> (global0.x % 32u), _wgslsmith_f_op_f32(1000f - 276f)), all(vec4<bool>(all(vec2<bool>(false, true)), true, true, true)), true, true);
    var var_2 = select(!(!vec4<bool>(var_1.x, var_0 > var_0, true, false)), !(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !vec4<bool>(false, var_1.x, true, var_1.x))), !(!vec4<bool>(var_1.x, !var_1.x, any(vec4<bool>(false, false, var_1.x, var_1.x)), all(vec4<bool>(var_1.x, false, true, var_1.x)))));
    var_1 = select(!vec4<bool>(var_1.x, false, firstLeadingBit(36078u) <= abs(global0.x), all(vec4<bool>(true, false, true, true))), !vec4<bool>(true, true, !var_1.x, u_input.a != 1i), var_2.x);
    let var_3 = Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -489f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1307f))))));
    var_1 = vec4<bool>(true, select(!var_1.x, true, !any(vec4<bool>(true, var_2.x, var_1.x, var_2.x))), !(_wgslsmith_mult_i32(-u_input.a, _wgslsmith_sub_i32(var_0, 1i)) != u_input.a), !any(vec4<bool>(false, true | var_1.x, false && var_3.a, select(var_3.a, var_2.x, var_2.x))));
    var var_4 = all(vec4<bool>(true, any(vec4<bool>(true, false, var_3.a, false)) || (-1861i >= var_0), func_1(-34207i | var_0, _wgslsmith_f_op_f32(-1206f - 408f)), all(func_3().zx))) && !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1234f)) != var_3.b.x);
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(global0.zy, _wgslsmith_clamp_i32(~firstTrailingBit(max(-22036i, u_input.a)), ~(i32(-1i) * -u_input.a), 1i), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(564f, var_3.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_3.b.x)), -1462f)), _wgslsmith_f_op_f32(abs(1063f))))), _wgslsmith_f_op_f32(f32(-1f) * -1498f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1656f, -567f, var_3.b.x, var_3.b.x) - vec4<f32>(2505f, 426f, var_3.b.x, 435f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.b.x, var_3.b.x, var_3.b.x, 209f)))), vec4<bool>(true, !var_3.a, var_3.a, all(vec4<bool>(var_3.a, var_2.x, false, false))))))));
}

