struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> f32 {
    var var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(25555i, arg_1)), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1, 16065i), vec2<i32>(arg_1, arg_1)))), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(f32(-1f) * -940f)), Struct_1(~(~vec2<i32>(13112i, arg_1))), arg_1), vec4<bool>(true, true, true, false));
    var_0 = Struct_4(Struct_2(var_0.a.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, var_0.a.b)))), var_0.a.c, arg_1), !var_0.b);
    var var_1 = Struct_4(var_0.a, select(!select(select(var_0.b, vec4<bool>(false, var_0.b.x, true, false), var_0.b.x), vec4<bool>(false, var_0.b.x, var_0.b.x, true), all(vec2<bool>(var_0.b.x, var_0.b.x))), !select(vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x), !vec4<bool>(var_0.b.x, false, false, var_0.b.x), !var_0.b), true));
    let var_2 = arg_0.x;
    var var_3 = Struct_3(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(4294967295u, 1u), ~19878u, ~u_input.a.x), ~vec3<u32>(44393u, u_input.a.x, 38873u)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(0u, 4294967295u))), _wgslsmith_mult_u32(countOneBits(33913u), _wgslsmith_mod_u32(1u, u_input.a.x)))));
    return 1058f;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    let var_0 = -arg_1.x;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f - 446f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(143f, -199f), 20024i))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1242f, -1493f)) * 646f)) - _wgslsmith_f_op_f32(f32(-1f) * -215f)));
    var var_2 = abs(reverseBits(~_wgslsmith_mult_vec3_u32(u_input.a, min(vec3<u32>(27562u, 31127u, 47023u), vec3<u32>(4294967295u, arg_0, 39339u)))));
    var_2 = u_input.a;
    var_2 = u_input.a;
    return Struct_1(-select(abs(arg_1), _wgslsmith_div_vec2_i32(arg_1, vec2<i32>(-2147483647i, arg_2)), true) & firstLeadingBit(_wgslsmith_clamp_vec2_i32(reverseBits(arg_1), vec2<i32>(arg_1.x, -1i), ~vec2<i32>(-25825i, var_0))));
}

fn func_4(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.b, arg_0.b), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1282f, 243f))))), true)));
    let var_1 = reverseBits(_wgslsmith_clamp_vec4_u32(~(~select(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 122915u), true)), _wgslsmith_clamp_vec4_u32(max(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(51152u, 26653u, 0u, u_input.a.x), reverseBits(vec4<u32>(u_input.a.x, 40039u, u_input.a.x, 32453u))), select(vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x), ~vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x), vec4<bool>(false, false, true, true)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 91996u, 1u, 4294967295u), vec4<u32>(5664u, 109000u, 9628u, u_input.a.x), vec4<u32>(52619u, u_input.a.x, 0u, 71859u)), firstTrailingBit(vec4<u32>(73117u, 1u, u_input.a.x, u_input.a.x)))), select(~abs(vec4<u32>(1u, u_input.a.x, 18762u, u_input.a.x)), ~(vec4<u32>(u_input.a.x, u_input.a.x, 43322u, 0u) & vec4<u32>(41074u, 8794u, 4294967295u, 8117u)), vec4<bool>(all(vec3<bool>(false, true, true)), false, true, any(vec3<bool>(false, true, false))))));
    var var_2 = func_2(3538u, _wgslsmith_mod_vec2_i32(arg_0.a.a, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 57503i, 1i, arg_0.a.a.x), vec4<i32>(-9932i, 44467i, 1i, arg_0.d)), -2147483647i) << ((_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), var_1.yw) | u_input.a.xy) % vec2<u32>(32u))), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(func_2(var_1.x, vec2<i32>(arg_0.d, arg_0.d), arg_0.d).a.x, ~32495i, _wgslsmith_mult_i32(arg_0.c.a.x, 2147483647i))), _wgslsmith_add_vec3_i32(vec3<i32>(1i, reverseBits(-22836i), _wgslsmith_sub_i32(0i, 2147483647i)), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-298i, 0i, arg_0.a.a.x), vec3<i32>(arg_0.c.a.x, arg_0.a.a.x, arg_0.c.a.x)), vec3<i32>(arg_0.a.a.x, arg_0.a.a.x, 24316i)))));
    let var_3 = Struct_1(vec2<i32>(arg_0.a.a.x, -49579i));
    let var_4 = Struct_3(vec2<u32>(min(firstLeadingBit(4294967295u), var_1.x << (~10071u % 32u)), abs(_wgslsmith_add_u32(~u_input.a.x, firstTrailingBit(40571u)))));
    return _wgslsmith_sub_vec2_i32(vec2<i32>(countOneBits(-26412i), 0i), reverseBits(vec2<i32>(func_2(~33189u, var_2.a, -65107i).a.x, -(var_3.a.x << (4294967295u % 32u)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_2 {
    let var_0 = select(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(~(~u_input.a), select(vec3<u32>(56144u, 1u, u_input.a.x), u_input.a, true) << ((u_input.a ^ u_input.a) % vec3<u32>(32u)))), 0u, any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, false, false)), vec3<bool>(true, true, all(vec4<bool>(false, true, false, false))), all(vec3<bool>(true, true, true)))));
    let var_1 = true;
    let var_2 = select(vec4<bool>(false, all(vec3<bool>(all(vec4<bool>(true, false, false, var_1)), all(vec3<bool>(true, false, var_1)), !var_1)), var_1 | false, var_1 | select(true, all(vec3<bool>(var_1, false, var_1)), true)), !(!(!select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_1, var_1, var_1, var_1)))), vec4<bool>(var_1, true, !all(!vec2<bool>(var_1, var_1)), true && all(!vec4<bool>(true, var_1, true, var_1))));
    var var_3 = Struct_1(_wgslsmith_div_vec2_i32(~vec2<i32>(1i, 0i) | firstLeadingBit(-vec2<i32>(2147483647i, arg_2.a.x)), arg_2.a));
    var_3 = arg_2;
    return Struct_2(func_2(~4294967295u, var_3.a, 15506i), arg_0.x, arg_2, 1i);
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-978f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1670f, -1109f, false))))));
    let var_1 = firstLeadingBit(u_input.a.x);
    var var_2 = func_5(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2256f, -1066f))), Struct_3(u_input.a.xz), Struct_1(func_4(Struct_2(func_2(u_input.a.x, vec2<i32>(46592i, 64306i), 1i), _wgslsmith_f_op_f32(703f - 1913f), Struct_1(vec2<i32>(1i, 1i)), abs(-16692i)))));
    var var_3 = var_2.a;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(ceil(var_2.b)), 877f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -284f)));
    return Struct_2(var_2.c, var_4.x, Struct_1(func_2(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1, 1u), u_input.a.xz), vec2<i32>(var_3.a.x, -15136i), ~(-2147483647i)).a), -31433i);
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_4(arg_0, vec4<bool>(select(any(vec3<bool>(false, true, true)), !all(vec3<bool>(false, false, true)), true), true, !(!any(vec2<bool>(true, false))), any(vec3<bool>(any(vec2<bool>(true, false)), arg_0.c.a.x != arg_0.d, true))));
    var var_1 = vec2<i32>(1i >> (firstLeadingBit(_wgslsmith_mod_u32(~81108u, firstTrailingBit(6113u))) % 32u), (func_5(vec2<f32>(arg_0.b, arg_0.b), Struct_3(u_input.a.yx), func_2(4243u, arg_0.c.a, arg_0.c.a.x)).a.a.x | -2147483647i) | _wgslsmith_clamp_i32(5884i, abs(~1i), min(arg_0.d & var_0.a.d, 1i)));
    return func_1(u_input.a.x).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(~1295u));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-275f, -328f, -761f, 1762f)))), _wgslsmith_div_vec4_f32(vec4<f32>(-1591f, _wgslsmith_f_op_f32(-143f + -1021f), _wgslsmith_f_op_f32(min(544f, -825f)), _wgslsmith_f_op_f32(f32(-1f) * -1798f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -278f), -119f, _wgslsmith_f_op_f32(174f + -566f), _wgslsmith_f_op_f32(f32(-1f) * -992f))), vec4<bool>(any(vec2<bool>(false, false)), (1i >> (u_input.a.x % 32u)) == -1i, true, any(vec2<bool>(true, true))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-678f, func_1(~u_input.a.x).b, 1126f, -1000f) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2503f, 1000f, -651f, -155f))))));
    var var_2 = !(!(!(true || any(vec3<bool>(false, true, true)))));
    var_2 = any(select(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(!all(vec2<bool>(false, false)), true, true & all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(var_1.x - var_1.x) <= var_1.x), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), false)), vec4<bool>(all(vec4<bool>(false, true, true, true)), all(vec2<bool>(true, true)), true, any(vec4<bool>(true, false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) * _wgslsmith_f_op_f32(312f + var_1.x)), -1528f, 268f, -240f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 112f, -1647f, var_1.x) + vec4<f32>(var_1.x, var_1.x, 1676f, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-341f + -510f) + _wgslsmith_f_op_f32(-var_1.x)), var_1.x))));
}

