struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_div_f32(-672f, _wgslsmith_f_op_f32(select(1327f, 1313f, true)));
    var var_1 = 8735u;
    let var_2 = false;
    let var_3 = reverseBits(abs(~select(vec2<u32>(arg_0, 43208u), vec2<u32>(50928u, u_input.b), vec2<bool>(var_2, var_2)) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(1883u, 47586u), vec2<u32>(u_input.b, u_input.c)))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -478f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-247f))))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-602f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-410f)) - 1331f))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -371f));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<bool>) -> vec2<f32> {
    let var_0 = countOneBits(_wgslsmith_mult_vec3_u32(reverseBits(~arg_0 | ~arg_0), arg_0));
    var var_1 = Struct_2(1253f, arg_1, vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a))), select(_wgslsmith_dot_vec2_u32(select(var_0.zx, var_0.xy, arg_3.zz), ~vec2<u32>(u_input.c, 61590u)), 1u, any(arg_3)), arg_2), !any(!(!arg_3)));
    var_1 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2044f))), var_1.d, vec3<bool>(true, !any(vec3<bool>(arg_3.x, true, true)), true), var_1.d, var_1.d.a == _wgslsmith_f_op_f32(floor(361f)));
    let var_2 = vec2<i32>(14222i, ~var_1.b.c);
    let var_3 = select(select(!select(arg_3, !arg_3, vec3<bool>(true, arg_3.x, arg_3.x)), select(arg_3, select(select(var_1.c, arg_3, arg_3.x), !arg_3, var_1.c), !arg_3), arg_3), vec3<bool>(true, false, var_1.c.x), arg_3);
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b.a))))), 1722f);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(abs(~vec3<u32>(0u, 15421u, 0u)), Struct_1(_wgslsmith_f_op_f32(func_3(u_input.b)), 22494u, i32(-1i) * -1i), u_input.a, select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1807f, _wgslsmith_div_f32(1451f, -999f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1213f - -590f) * _wgslsmith_f_op_f32(f32(-1f) * -1146f))), Struct_1(_wgslsmith_f_op_f32(-1f), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.b, u_input.b, 0u), vec4<u32>(38223u, u_input.c, u_input.c, 1u)) >> (reverseBits(4294967295u) % 32u), u_input.a), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), false), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1233f))), 1u, -2147483647i), all(select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -437f))), _wgslsmith_sub_u32(select(u_input.b >> (u_input.b % 32u), ~5417u, true), min(u_input.b ^ 0u, u_input.b)), u_input.a));
    var var_1 = var_0.c.b;
    var var_2 = Struct_3(var_1.b, _wgslsmith_f_op_vec2_f32(var_0.b * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.b, vec2<f32>(var_1.a, var_0.b.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, -311f) - vec2<f32>(-1398f, var_0.b.x))), var_0.b))), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(509f - var_0.d.a) + var_1.a))), Struct_1(-352f, ~(~var_1.b), _wgslsmith_add_i32(reverseBits(54676i), 35811i)), var_0.c.c, Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.a)))), ~var_0.a, var_1.c), false), Struct_1(471f, ~u_input.b, -20347i));
    var var_3 = _wgslsmith_f_op_f32(max(var_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1860f)));
    var var_4 = var_0.c.d.b;
    return Struct_3(abs(var_1.b), vec2<f32>(var_1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b.x * var_2.d.a)))))), var_2.c, var_0.d);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    let var_0 = func_2().c;
    let var_1 = 33194i;
    let var_2 = -vec4<i32>(_wgslsmith_mult_i32(arg_0.c.d.c, arg_0.c.b.c), arg_1.d.c, -1i, _wgslsmith_add_i32(arg_1.b.c, abs(func_2().d.c)));
    var var_3 = ~0u;
    let var_4 = func_2().c.b;
    return func_2().d;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1710f))))));
    let var_1 = vec4<u32>(1u, u_input.c, min(~4294967295u, u_input.b), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(arg_0.x, 1u) | ~(~53683u), _wgslsmith_mult_u32(firstTrailingBit(~u_input.b), 3131u)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1621f * 279f)) - -689f))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(642f, -1555f)) * _wgslsmith_f_op_f32(f32(-1f) * -181f)))), -861f, arg_1)), func_5(func_2(), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1070f, 706f, arg_1)))), Struct_1(_wgslsmith_f_op_f32(floor(-793f)), 11614u >> (arg_0.x % 32u), u_input.a >> (arg_0.x % 32u)), vec3<bool>(arg_1, false, false), Struct_1(_wgslsmith_f_op_f32(abs(-378f)), ~17749u, u_input.a), _wgslsmith_f_op_vec2_f32(func_4(vec3<u32>(u_input.c, arg_0.x, 66705u), Struct_1(-211f, 68105u, u_input.a), u_input.a, vec3<bool>(false, true, arg_1))).x > _wgslsmith_f_op_f32(1250f * 2753f)), func_2().c), vec3<bool>(select(true, all(select(vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(false, true, true, arg_1), true)), false), true, !(arg_0.x <= (4294967295u >> (0u % 32u)))), Struct_1(_wgslsmith_f_op_f32(-func_2().b.x), _wgslsmith_sub_u32(select(u_input.c, 1u, arg_1), u_input.b | 0u) << (u_input.b % 32u), ~(-_wgslsmith_mod_i32(u_input.a, 0i))), false && any(!vec4<bool>(false, arg_1, arg_1, arg_1)));
    var var_3 = firstLeadingBit(countOneBits(~arg_0.x));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, -2986f, func_2().d.a, _wgslsmith_f_op_f32(var_2.d.a - 1849f)))), vec4<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-1040f + var_2.d.a)), _wgslsmith_f_op_f32(-var_2.d.a), -375f, var_2.a), var_2.c.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_2.d.a, 775f, -927f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1348f, -254f, var_2.b.a, 392f) - vec4<f32>(var_2.d.a, var_2.b.a, 1000f, -108f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(934f, 970f, var_2.b.a, -533f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.d.a, var_2.d.a, var_2.b.a, var_2.b.a), vec4<f32>(-1347f, var_2.d.a, -963f, 644f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-18201i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(reverseBits(~vec3<u32>(u_input.b, 41098u, 1u)), select(all(vec4<bool>(false, false, false, false)), u_input.c >= 28444u, u_input.a <= 2147483647i)))), select(u_input.a, 14257i, true));
}

