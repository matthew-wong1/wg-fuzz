struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_4,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec4<u32> = vec4<u32>(5141u, 68359u, 0u, 4294967295u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = select(reverseBits(-(~vec4<i32>(-53705i, -76039i, -2147483647i, 1i))), ~select(-(~vec4<i32>(26363i, 1i, 38462i, 2147483647i)), -abs(vec4<i32>(-10984i, 2147483647i, -1i, 0i)), vec4<bool>(true, true, global0.x, false)), all(!(!select(vec4<bool>(global0.x, false, false, false), vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, false)))));
    var var_1 = true;
    let var_2 = u_input.a.x;
    var_0 = _wgslsmith_sub_vec4_i32(((vec4<i32>(-1i) * -vec4<i32>(var_0.x, 1i, var_0.x, var_0.x)) >> (vec4<u32>(1u, u_input.a.x, ~global1.x, 4294967295u) % vec4<u32>(32u))) | _wgslsmith_mult_vec4_i32(-abs(vec4<i32>(var_0.x, var_0.x, var_0.x, 1i)), vec4<i32>(-1i, firstLeadingBit(-7093i), var_0.x, _wgslsmith_mod_i32(0i, var_0.x))), vec4<i32>(55496i, max(_wgslsmith_mod_i32(_wgslsmith_mod_i32(16457i, var_0.x), max(-38739i, 8066i)), _wgslsmith_dot_vec3_i32(vec3<i32>(13083i, 0i, var_0.x), ~var_0.zwz)), 2147483647i, -_wgslsmith_dot_vec3_i32(var_0.xwy, vec3<i32>(2147483647i, var_0.x, var_0.x))));
    var var_3 = ~(firstLeadingBit(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(13630u, 6095u, var_2, var_2), vec4<u32>(var_2, 0u, global1.x, global1.x), vec4<u32>(global1.x, global1.x, global1.x, var_2)), vec4<u32>(67429u, global1.x, 0u, u_input.a.x))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 49122u, _wgslsmith_clamp_u32(34488u, u_input.a.x, global1.x), _wgslsmith_div_u32(global1.x, var_2)), vec4<u32>(1u, 4294967295u, 4294967295u, _wgslsmith_dot_vec2_u32(u_input.a, global1.ww))) % vec4<u32>(32u)));
    return _wgslsmith_sub_u32(_wgslsmith_sub_u32(~select(_wgslsmith_sub_u32(50610u, 39172u), abs(var_2), true), ~u_input.a.x), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_3.wxy, vec3<u32>(29078u, 0u, 28386u)), max(reverseBits(46623u) << (0u % 32u), _wgslsmith_div_u32(2383u, 1u))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = vec3<f32>(-941f, 191f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2229f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-318f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(299f * arg_1.a.x)))), 2218f > arg_0.a.c)));
    return select(!vec2<bool>(arg_0.a.d.x, false), vec2<bool>(all(!vec3<bool>(false, arg_0.a.d.x, global0.x)), ((20645i << (u_input.a.x % 32u)) < -2147483647i) & arg_0.a.d.x), !(!arg_0.a.d.x));
}

fn func_2(arg_0: bool) -> f32 {
    global0 = func_4(Struct_4(Struct_3(func_3(), min(1i, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(450f * -424f)), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(global0.x, false), vec2<bool>(false, false), true)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-15304i, 0i, -2147483647i), vec3<i32>(-1i, 1i, -18823i) >> (global1.ywx % vec3<u32>(32u)), -vec3<i32>(10640i, 2147483647i, 49223i)))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(568f, _wgslsmith_f_op_f32(775f - -1333f), -190f, _wgslsmith_div_f32(238f, -245f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-323f, -1993f, 343f, -112f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1006f, 912f, -200f, 1511f), vec4<f32>(-125f, -1103f, 1094f, -446f), true)), select(vec4<bool>(arg_0, arg_0, false, global0.x), vec4<bool>(false, arg_0, arg_0, false), true))))));
    global0 = select(vec2<bool>(any(vec2<bool>(false, any(vec4<bool>(true, false, false, arg_0)))), true), func_4(Struct_4(Struct_3(12440u, 1i, _wgslsmith_f_op_f32(f32(-1f) * -675f), !vec2<bool>(arg_0, true), vec3<i32>(8877i, 54962i, -2147483647i))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-866f, -408f, -726f, -311f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2736f, 368f, 412f, 367f)))))), true);
    var var_0 = vec2<bool>(!((firstTrailingBit(u_input.a.x) ^ abs(15030u)) < 0u), _wgslsmith_f_op_f32(sign(1850f)) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(179f + 937f)))));
    let var_1 = ~(-29612i);
    let var_2 = select(!vec4<bool>(!arg_0 || var_0.x, true, var_0.x, var_0.x), select(!(!vec4<bool>(true, true, false, var_0.x)), vec4<bool>(true, arg_0, true, var_0.x), vec4<bool>(all(select(vec4<bool>(true, global0.x, global0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false), false)), global0.x, true, false)), var_0.x);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1255f), _wgslsmith_f_op_f32(-1f));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> vec4<u32> {
    var var_0 = func_3();
    var var_1 = global1.wx;
    let var_2 = vec4<i32>(_wgslsmith_mult_i32(countOneBits(~472i), 1i), ~firstTrailingBit(reverseBits(0i)), -select(6418i, -16632i, global0.x & global0.x), i32(-1i) * -max(-12431i, 0i)) << (firstLeadingBit(vec4<u32>(u_input.a.x | 1u, ~arg_2, 1u, ~1u) >> (vec4<u32>(~0u, max(global1.x, 58795u), 4294967295u, _wgslsmith_mod_u32(72528u, 9919u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var_1 = vec2<u32>((0u | ~_wgslsmith_clamp_u32(11133u, 55111u, 75755u)) | 112697u, ~0u);
    return _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(var_1.x, 0u)), ~abs(var_1.x), 1u, 69971u), ~(~abs(vec4<u32>(4294967295u, arg_2, arg_2, 9044u))), min(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, arg_2, var_1.x, 10264u), vec4<u32>(arg_1, arg_1, 11484u, 27980u)), ~vec4<u32>(0u, var_1.x, arg_2, arg_2))), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(19678u, 4294967295u, u_input.a.x, 4294967295u), max(vec4<u32>(global1.x, global1.x, arg_1, 6338u), vec4<u32>(1u, arg_1, arg_1, 57994u))), ~(~vec4<u32>(arg_2, 4294967295u, 529u, arg_1)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, 1u, 1u, 4294967295u), vec4<u32>(65729u, 0u, arg_1, arg_1), vec4<u32>(u_input.a.x, 10522u, var_1.x, global1.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, global1.x, 46525u, arg_2), vec4<u32>(43513u, 0u, 0u, arg_1)) % vec4<u32>(32u))), ~vec4<u32>(1u, abs(34156u), _wgslsmith_mod_u32(var_1.x, 0u), 4294967295u)));
}

fn func_1(arg_0: f32) -> Struct_4 {
    global1 = ~_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(4294967295u, u_input.a.x), _wgslsmith_clamp_u32(1u, 56091u, 0u), ~0u, u_input.a.x)), vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(1u, global1.x), abs(u_input.a.x), 135329u) | (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, global1.x, 1u, u_input.a.x), vec4<u32>(global1.x, 4294967295u, 1u, 6190u)) & _wgslsmith_add_vec4_u32(vec4<u32>(global1.x, 0u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, global1.x, global1.x, 1u))));
    global1 = func_5(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -1000f), vec2<f32>(-1195f, arg_0)))), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-172f, arg_0, -1853f, 976f) - vec4<f32>(-647f, arg_0, 413f, arg_0))))), Struct_1(vec4<f32>(659f, 671f, _wgslsmith_f_op_f32(func_2(false)), _wgslsmith_f_op_f32(-arg_0)))), 47138u, 1u);
    var var_0 = !vec3<bool>(global0.x, 42516u > u_input.a.x, func_4(Struct_4(Struct_3(u_input.a.x, -1i, 1063f, vec2<bool>(global0.x, true), vec3<i32>(-10515i, 50622i, -2147483647i))), Struct_1(vec4<f32>(414f, -2378f, 996f, arg_0))).x | true);
    global1 = ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, 29652u, 4294967295u), firstTrailingBit(vec4<u32>(~0u, ~53035u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 1u), vec2<u32>(global1.x, 1u)), 0u)));
    var var_1 = func_5(Struct_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-890f, -1335f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(392f, 1013f) * vec2<f32>(arg_0, -1986f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(996f, arg_0)))))), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1562f, 467f, arg_0, 1568f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -266f, 357f)), vec4<bool>(false, global0.x, global0.x, var_0.x)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), -2118f, _wgslsmith_f_op_f32(-arg_0), -1146f))), ~(~(~u_input.a.x << (8989u % 32u))), 0u).yx;
    return Struct_4(Struct_3(reverseBits(~max(4294967295u, 43765u)), _wgslsmith_mult_i32(firstTrailingBit(27517i), 0i), _wgslsmith_f_op_f32(f32(-1f) * -819f), select(vec2<bool>(var_0.x, global0.x), select(!vec2<bool>(false, global0.x), !var_0.xy, !var_0.xy), !vec2<bool>(global0.x, global0.x)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(43134i, -34408i, 0i), vec3<i32>(2147483647i, 14029i, 21317i), ~vec3<i32>(-16689i, 36530i, 1i))));
}

fn func_6(arg_0: Struct_4, arg_1: i32, arg_2: vec4<u32>) -> i32 {
    var var_0 = vec3<i32>(arg_0.a.b ^ -(~arg_1), -1i, ~(-9932i & firstLeadingBit(_wgslsmith_div_i32(50139i, arg_1))));
    global1 = arg_2;
    return abs(arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(716f + -2350f)))), -_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-41630i, -5299i, 1i) << (vec3<u32>(global1.x, global1.x, global1.x) % vec3<u32>(32u)), vec3<i32>(0i, 0i, 29512i), vec3<i32>(1i, 1i, 1i)), reverseBits(~vec3<i32>(2147483647i, -19727i, 2147483647i))), firstTrailingBit(firstTrailingBit(vec4<u32>(u_input.a.x | 1u, func_5(Struct_2(vec2<f32>(-1000f, -440f), Struct_1(vec4<f32>(-1493f, 1737f, -1134f, 1591f)), Struct_1(vec4<f32>(456f, -142f, 935f, -164f))), u_input.a.x, 56592u).x, global1.x, func_1(-152f).a.a))));
    let var_1 = Struct_3(func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -519f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(957f)) + _wgslsmith_f_op_f32(312f - 539f))))).a.a, 47809i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-894f)), _wgslsmith_f_op_f32(-1683f + 372f)), !func_4(func_1(_wgslsmith_f_op_f32(floor(1268f))), Struct_1(vec4<f32>(461f, 420f, 910f, -551f))), vec3<i32>(-1301i, var_0, -(~(~1i))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-752f, var_1.c, var_1.c, 603f) + vec4<f32>(-856f, var_1.c, var_1.c, var_1.c)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, -987f, 1214f, var_1.c) * vec4<f32>(-802f, -990f, -278f, var_1.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-918f, var_1.c, var_1.c, var_1.c)))));
    global1 = _wgslsmith_div_vec4_u32(reverseBits(~vec4<u32>(1u, 6092u, global1.x, var_1.a) | (vec4<u32>(31351u, var_1.a, 540u, global1.x) << (vec4<u32>(u_input.a.x, u_input.a.x, 27904u, u_input.a.x) % vec4<u32>(32u)))), ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(36372u, var_1.a, 4294967295u, u_input.a.x), vec4<u32>(0u, global1.x, 1u, 21074u)), vec4<u32>(1u, var_1.a, 1u, 6032u) & vec4<u32>(global1.x, u_input.a.x, global1.x, var_1.a))) & vec4<u32>(global1.x, 49707u, 0u, ~global1.x);
    global1 = (abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 1u, 10563u), func_5(Struct_2(var_2.a.xy, Struct_1(var_2.a), var_2), 47102u, 50675u), _wgslsmith_mult_vec4_u32(vec4<u32>(11357u, global1.x, var_1.a, u_input.a.x), vec4<u32>(global1.x, var_1.a, global1.x, global1.x)))) >> (_wgslsmith_clamp_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, var_1.a, 66946u, u_input.a.x), vec4<u32>(global1.x, global1.x, 4294967295u, global1.x)), select(vec4<u32>(u_input.a.x, 4802u, u_input.a.x, u_input.a.x), vec4<u32>(78092u, u_input.a.x, var_1.a, global1.x), false)), _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, global1.x, 57513u, global1.x), vec4<u32>(87136u, 0u, var_1.a, var_1.a) | vec4<u32>(4294967295u, u_input.a.x, 13658u, 19929u)), vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), ~1u, 19843u, ~u_input.a.x)) % vec4<u32>(32u))) & ~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(20133u, 27765u, 70286u, 64305u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 5704u, u_input.a.x, 118106u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 90395u, var_1.a, var_1.a), vec4<u32>(1u, u_input.a.x, var_1.a, global1.x)) ^ countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 53041u, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a, firstLeadingBit(vec4<i32>(firstLeadingBit(0i), _wgslsmith_add_i32(var_1.b, var_0), -27266i, _wgslsmith_sub_i32(var_1.b, var_0)) | vec4<i32>(var_0, _wgslsmith_mult_i32(var_1.e.x, -2147483647i), var_0, ~5617i)));
}

