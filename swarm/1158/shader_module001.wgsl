struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32 = 77283u;

var<private> global2: u32;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: bool) -> f32 {
    let var_0 = 468u;
    let var_1 = vec2<bool>(true, false);
    global1 = ~(~_wgslsmith_sub_u32(~arg_1, 1u));
    let var_2 = -1241f;
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(964f, var_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-711f, 765f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-517f, var_2)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - 760f)), var_2))), _wgslsmith_mod_i32(~1i | ~_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), var_2, vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(firstLeadingBit(arg_0), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(51720u, 0u), vec2<u32>(var_0, 0u))), select(abs(vec2<u32>(70902u, var_0)), vec2<u32>(var_0, var_0) & arg_0, arg_2)), min(14819u, ~(~arg_1)), ~(~4294967295u >> (_wgslsmith_mod_u32(arg_0.x, 1u) % 32u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(547f, 1282f), _wgslsmith_div_f32(var_2, var_2))))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(var_3.e, -212f), any(vec3<bool>(true, false, arg_2)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(635f - 510f))))))), _wgslsmith_f_op_f32(trunc(var_2))));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1039f + 508f))), -453f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(20093u, 15887u)), 7602u, true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-828f)))), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))));
    let var_1 = var_0.c;
    var_0 = Struct_1(true, !var_0.c.x, vec2<bool>(all(vec4<bool>(var_0.c.x, var_0.a, true, var_0.c.x)) & true, any(vec4<bool>(true, var_1.x && var_0.a, var_1.x, true))));
    var var_2 = Struct_3(select(firstTrailingBit(~vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(~(~79957u), 79687u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 14227u), vec2<u32>(34677u, 4294967295u)) & 0u, 96059u), select(vec4<bool>(false, select(var_1.x, false, var_1.x), true, select(var_0.b, var_1.x, var_1.x)), select(!vec4<bool>(false, false, var_0.a, false), select(vec4<bool>(var_0.a, var_0.c.x, var_0.c.x, var_1.x), vec4<bool>(true, var_1.x, var_0.b, false), var_0.b), !vec4<bool>(false, var_0.b, var_0.b, var_1.x)), !(!vec4<bool>(var_0.c.x, var_1.x, var_0.a, var_0.c.x)))));
    global1 = ~(~var_2.a.x);
    return 4933u;
}

fn func_1() -> Struct_3 {
    let var_0 = 395f;
    return Struct_3(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(86797u, 0u), vec2<u32>(56173u, 0u)), 1u, ~44550u, func_2()) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(5604u, 49561u, 18529u, 4294967295u), abs(vec4<u32>(77059u, 4294967295u, 50560u, 4294967295u)), firstTrailingBit(vec4<u32>(11606u, 1738u, 0u, 4294967295u)))));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: u32, arg_3: Struct_2) -> Struct_3 {
    global1 = _wgslsmith_div_u32(~countOneBits(_wgslsmith_sub_u32(1u, 1u)), _wgslsmith_mult_u32(4294967295u, reverseBits(_wgslsmith_dot_vec4_u32(arg_1.a, arg_1.a))));
    var var_0 = Struct_1(arg_3.a, false, select(select(vec2<bool>(u_input.a.x <= 20936i, u_input.a.x > u_input.a.x), select(select(arg_3.b.c, vec2<bool>(false, arg_3.a), arg_3.b.c), vec2<bool>(true, arg_0), false), arg_3.b.c), !select(arg_3.b.c, vec2<bool>(true, true), true), any(arg_3.b.c)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2597f))))));
    let var_2 = true;
    var var_3 = arg_3;
    return func_1();
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> f32 {
    global1 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, arg_1.a.x | _wgslsmith_mod_u32(~44886u, firstLeadingBit(38133u)), 1u), ~(0u ^ min(arg_1.a.x, abs(arg_1.a.x))));
    global0 = (any(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))) | false) & all(select(vec3<bool>(true, all(vec2<bool>(false, true)), all(vec2<bool>(false, true))), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), all(select(vec2<bool>(false, true), vec2<bool>(true, false), true))));
    var var_0 = select(reverseBits(arg_0), u_input.a.x, !any(vec2<bool>(true, true)));
    var var_1 = vec4<bool>(true, false, func_4(all(vec2<bool>(true, false)), arg_1, 0u, Struct_2(false, Struct_1(true, true, vec2<bool>(false, true)))).a.x <= _wgslsmith_mod_u32(firstLeadingBit(0u) >> ((39286u & arg_1.a.x) % 32u), firstLeadingBit(_wgslsmith_mod_u32(4294967295u, arg_1.a.x))), true | all(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_2 = !vec2<bool>(!var_1.x, var_1.x);
    return -1244f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(step(-869f, -329f))))), select(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), -vec2<i32>(u_input.a.x, u_input.a.x)) >> (1u % 32u), select(true, true, true) || true), _wgslsmith_f_op_f32(sign(-1657f)), vec3<u32>(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(0u, 49728u, 4294967295u)), 44094u, ~reverseBits(1u)), 1u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 28035u, 4294967295u), ~vec3<u32>(1u, 4294967295u, 56242u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(min(1i, -26650i), func_4(true, func_1(), 1u, Struct_2(false, Struct_1(false, true, vec2<bool>(true, true))))))));
    var var_1 = all(vec4<bool>(true, true, true, true));
    let var_2 = _wgslsmith_f_op_f32(-1f);
    let var_3 = Struct_4(vec2<f32>(-769f, 1f), -59419i, var_0.c, firstLeadingBit(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(var_0.d.x, var_0.d.x, 4294967295u)), vec3<u32>(4294967295u, var_0.d.x, _wgslsmith_div_u32(0u, var_0.d.x)))), 938f);
    global1 = max(countOneBits(49366u), 1u);
    var var_4 = firstTrailingBit(-(~vec4<i32>(-11253i, ~var_3.b, ~u_input.a.x, abs(-39150i))));
    var_1 = all(!vec4<bool>(true, any(vec3<bool>(true, true, true)), all(vec2<bool>(true, false)) || true, select(all(vec3<bool>(true, true, true)), true, true)));
    var var_5 = ((_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a.x, 34769i, 1i, u_input.a.x), abs(vec4<i32>(16032i, var_0.b, -2147483647i, var_0.b))) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.d.x, var_3.d.x, var_0.d.x, var_3.d.x), vec4<u32>(var_0.d.x, 0u, var_3.d.x, 5816u)) % vec4<u32>(32u))) >> (func_4(true, func_4(true, Struct_3(vec4<u32>(var_3.d.x, var_3.d.x, 16356u, var_0.d.x)), countOneBits(var_0.d.x), Struct_2(false, Struct_1(false, true, vec2<bool>(false, false)))), reverseBits(countOneBits(var_0.d.x)), Struct_2(true, Struct_1(false, false, vec2<bool>(false, false)))).a % vec4<u32>(32u))) & abs(abs(-(~vec4<i32>(-1i, u_input.a.x, 17247i, var_4.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i ^ var_3.b), (_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(var_0.d.x, 7655u)), ~var_0.d.zx, vec2<u32>(0u, 38027u)) >> (var_0.d.xz % vec2<u32>(32u))) << (vec2<u32>(~(~4294967295u), 45166u) % vec2<u32>(32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.d.x >> (var_3.d.x % 32u), ~14319u, var_3.d.x & var_3.d.x), vec3<u32>(var_0.d.x, 24412u, var_3.d.x)), var_0.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-592f, _wgslsmith_f_op_f32(var_2 * var_2), _wgslsmith_f_op_f32(func_3(var_0.d.xz, 4294967295u, false)), var_2) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(130f, -1026f, var_2, var_3.a.x))), vec4<f32>(var_2, var_2, var_2, var_0.a.x), vec4<bool>(true, false, true, true))))), _wgslsmith_f_op_f32(-953f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.e) * _wgslsmith_f_op_f32(min(756f, var_3.a.x))) * var_0.c)));
}

