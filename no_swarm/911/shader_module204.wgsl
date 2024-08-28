struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(928f, 602f, -865f), vec3<f32>(894f, -777f, -367f), vec3<f32>(200f, 1478f, -1192f), vec3<f32>(1222f, -233f, 685f), vec3<f32>(-228f, -1928f, 928f), vec3<f32>(437f, -385f, 2177f), vec3<f32>(304f, -355f, -130f), vec3<f32>(1344f, -1530f, 1093f), vec3<f32>(229f, 956f, -582f), vec3<f32>(-1768f, -1798f, 455f), vec3<f32>(-688f, 1000f, 1097f), vec3<f32>(424f, 1000f, -805f), vec3<f32>(-1670f, -1036f, -824f), vec3<f32>(1778f, -403f, -298f), vec3<f32>(1168f, 141f, -791f), vec3<f32>(770f, -338f, -949f));

var<private> global2: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    global1 = array<vec3<f32>, 16>();
    global1 = array<vec3<f32>, 16>();
    let var_0 = vec2<u32>(15424u, 0u);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.zz + arg_0.yz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -305f), _wgslsmith_f_op_f32(261f + -1623f))), all(vec4<bool>(true, false, all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)), !all(vec2<bool>(true, true))))));
    global0 = array<i32, 7>();
    return ~(-firstLeadingBit(_wgslsmith_mult_i32(-global0[_wgslsmith_index_u32(107989u, 7u)], 32053i)));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_3 {
    global2 = arg_2.d.c.x;
    let var_0 = ~min(-2147483647i, func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d.e, arg_2.d.e, arg_2.d.e)) - global1[_wgslsmith_index_u32(arg_0, 16u)])));
    let var_1 = arg_2.d.a;
    let var_2 = 0u;
    let var_3 = -min(firstTrailingBit(~_wgslsmith_mod_vec4_i32(vec4<i32>(19746i, arg_2.d.d.x, var_0, 1i), vec4<i32>(-11926i, 36267i, var_0, arg_1.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, min(var_0, 1i), ~arg_2.b, arg_2.b), vec4<i32>(_wgslsmith_clamp_i32(arg_1.x, 28624i, arg_1.x), countOneBits(var_0), -49439i, 1855i >> (1u % 32u))));
    return Struct_3(true, -abs(arg_2.b) ^ reverseBits(~_wgslsmith_dot_vec2_i32(vec2<i32>(69695i, var_3.x), vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(122166u, 7u)]))), arg_2, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_2.d.e)))));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    global1 = array<vec3<f32>, 16>();
    global1 = array<vec3<f32>, 16>();
    var var_0 = func_2(~(~(arg_0.c.d.a >> (arg_0.c.d.b.x % 32u)) | func_2(~14607u, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.c.a, arg_0.c.b, 0i), arg_0.c.d.d), Struct_2(arg_0.b, global0[_wgslsmith_index_u32(37303u, 7u)], -61289i, arg_0.c.d)).c.d.b.x), vec3<i32>(_wgslsmith_div_i32(2147483647i, ~(arg_0.b << (u_input.a % 32u))), arg_0.b, 18940i), arg_0.c).c.d;
    let var_1 = func_2(~50361u, var_0.d, func_2(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_0.b, var_0.b), func_2(arg_0.c.d.b.x, var_0.d, arg_0.c).c.d.b), var_0.d, func_2(_wgslsmith_mod_u32(u_input.a, 7776u), arg_0.c.d.d ^ (vec3<i32>(arg_0.b, var_0.d.x, -1i) >> (vec3<u32>(var_0.a, 73631u, arg_0.c.d.a) % vec3<u32>(32u))), func_2(arg_0.c.d.b.x, vec3<i32>(arg_0.b, global0[_wgslsmith_index_u32(u_input.a, 7u)], 57157i), arg_0.c).c).c).c);
    var_0 = arg_0.c.d;
    return Struct_3(true, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~(~var_1.c.d.d), vec3<i32>(arg_0.b, ~var_1.c.a, _wgslsmith_sub_i32(0i, -35976i))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(1i, 30330i), global0[_wgslsmith_index_u32(var_0.b.x, 7u)] << (4294967295u % 32u)), arg_0.c.a, 26126i), select(3533i, (i32(-1i) * -24153i) << (select(var_1.c.d.a, u_input.a, var_0.c.x) % 32u), any(vec4<bool>(var_0.c.x, var_1.a, true, var_0.c.x)))), func_2(4294967295u, countOneBits(select(vec3<i32>(-20569i, 0i, 71150i), var_1.c.d.d | vec3<i32>(global0[_wgslsmith_index_u32(arg_0.c.d.a, 7u)], -3176i, 1i), !vec3<bool>(arg_0.c.d.c.x, true, false))), Struct_2(_wgslsmith_mod_i32(reverseBits(var_1.c.c), _wgslsmith_mod_i32(-38478i, -1i)), min(-48700i, _wgslsmith_mod_i32(0i, var_0.d.x)), abs(-var_1.b), var_1.c.d)).c, _wgslsmith_f_op_f32(min(1124f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2242f))))));
}

fn func_5(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), arg_3.c.d.b), arg_3.c.d.b.x, any(vec3<bool>(arg_3.a, arg_1, false))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 10763u), vec3<u32>(72677u, 1u, arg_3.c.d.a)), max(arg_3.c.d.a, 4294967295u)), ~u_input.a, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.c.d.a, 1u, 11317u), vec3<u32>(3353u, 48513u, 16235u)))), min(~_wgslsmith_div_vec4_u32(vec4<u32>(163065u, 2029u, 4294967295u, u_input.a) | vec4<u32>(u_input.a, u_input.a, 26073u, u_input.a), vec4<u32>(0u, 1u, 1u, 29805u) & vec4<u32>(4294967295u, 29384u, u_input.a, u_input.a)), vec4<u32>(_wgslsmith_mod_u32(arg_3.c.d.a, 1u), ~u_input.a, 0u, ~u_input.a) >> (reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(arg_3.c.d.a, arg_3.c.d.b.x, arg_3.c.d.b.x, u_input.a), vec4<u32>(4294967295u, 39032u, 1u, arg_3.c.d.a))) % vec4<u32>(32u))));
    global2 = all(!arg_0);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + -415f) - arg_2.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + _wgslsmith_f_op_f32(abs(arg_2.x)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-378f * _wgslsmith_f_op_f32(f32(-1f) * -219f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), arg_3.c.d.e) - _wgslsmith_f_op_f32(f32(-1f) * -2966f))));
    let var_2 = ~91u;
    global0 = array<i32, 7>();
    return arg_3.c;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = func_5(vec3<bool>(false, true, min(~arg_0, ~arg_0) < 17390u), !select(any(vec4<bool>(true, false, false, true)), true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(37469u, 16u)]) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1691f, -937f, -910f))) * _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(u_input.a, 16u)] + _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(1u, 16u)] * vec3<f32>(812f, 407f, 1284f)))) + _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(~48192u >> (u_input.a % 32u), 16u)])), func_4(func_2((1844u & arg_0) ^ arg_0, ~vec3<i32>(0i, global0[_wgslsmith_index_u32(arg_0, 7u)], 11185i), Struct_2(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(30491u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]), firstTrailingBit(0i), ~global0[_wgslsmith_index_u32(3265u, 7u)], Struct_1(arg_0, vec2<u32>(u_input.a, u_input.a), vec2<bool>(false, true), vec3<i32>(-41493i, global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(arg_0, 7u)]), 1154f)))));
    let var_1 = ~(~25714u);
    let var_2 = Struct_3(!(!(-824f == _wgslsmith_f_op_f32(-var_0.d.e))), 31020i, var_0, -923f);
    let var_3 = func_4(Struct_3(abs(firstLeadingBit(var_2.c.d.b.x)) != countOneBits(~u_input.a), 1i, var_0, 2142f));
    var var_4 = Struct_2(func_5(!vec3<bool>(any(vec4<bool>(var_3.a, var_0.d.c.x, var_0.d.c.x, true)), var_3.a, true), var_2.c.d.c.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.c.d.e, var_0.d.e, var_3.d))))), Struct_3(func_5(!vec3<bool>(var_0.d.c.x, false, var_3.a), -941f <= var_0.d.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.e, 647f, var_2.c.d.e)), Struct_3(true, 9676i, Struct_2(-21759i, 1i, var_3.c.b, var_0.d), var_2.d)).d.c.x, var_0.b >> (_wgslsmith_mod_u32(32742u, 113024u) % 32u), Struct_2(var_3.c.a, global0[_wgslsmith_index_u32(72611u, 7u)], ~13898i, func_4(var_2).c.d), var_0.d.e)).b, -2147483647i, 1i, var_0.d);
    return Struct_2(-1i, _wgslsmith_add_i32(firstTrailingBit(var_2.c.b), abs(_wgslsmith_dot_vec3_i32(firstLeadingBit(var_2.c.d.d), vec3<i32>(var_3.b, var_0.b, var_4.a)))), _wgslsmith_mult_i32(firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 7u)]), _wgslsmith_mult_i32(var_0.c, firstLeadingBit(var_3.c.c))), Struct_1(func_5(select(vec3<bool>(true, true, true), vec3<bool>(var_2.a, var_3.c.d.c.x, var_0.d.c.x), vec3<bool>(false, var_4.d.c.x, false)), var_2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global1[_wgslsmith_index_u32(0u, 16u)]))), var_3).d.b.x, var_2.c.d.b, !var_4.d.c, _wgslsmith_sub_vec3_i32(vec3<i32>(min(var_3.c.a, var_4.b), -1i, var_2.b), vec3<i32>(_wgslsmith_div_i32(var_3.b, var_3.c.b), var_2.b >> (4294967295u % 32u), _wgslsmith_clamp_i32(-1i, var_2.b, var_4.b))), _wgslsmith_f_op_f32(-func_5(select(vec3<bool>(false, false, var_0.d.c.x), vec3<bool>(false, var_4.d.c.x, true), var_3.a), var_2.c.d.c.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.e, var_0.d.e, -713f) * global1[_wgslsmith_index_u32(4294967295u, 16u)]), var_3).d.e)));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: u32) -> StorageBuffer {
    let var_0 = Struct_1(u_input.a, ~countOneBits(~min(arg_0.d.b, arg_0.d.b)), vec2<bool>(arg_0.d.c.x, arg_0.d.c.x), ~min(~vec3<i32>(-1i, 44455i, -1013i), vec3<i32>(0i, _wgslsmith_div_i32(-55592i, -2147483647i), _wgslsmith_add_i32(-4731i, 0i))), func_1(arg_2).d.e);
    let var_1 = func_2(_wgslsmith_mod_u32(~(~16999u), var_0.b.x), ~select(-select(var_0.d, arg_0.d.d, var_0.c.x), func_4(func_4(Struct_3(arg_0.d.c.x, 38268i, Struct_2(arg_0.c, 1i, var_0.d.x, arg_0.d), 639f))).c.d.d, vec3<bool>(arg_1.x <= -2147483647i, false, true)), Struct_2(-27153i, _wgslsmith_mod_i32(countOneBits(arg_0.c), -21592i), 42203i, Struct_1(_wgslsmith_div_u32(3166u, ~arg_2), vec2<u32>(firstTrailingBit(arg_2), ~arg_0.d.a), !arg_0.d.c, vec3<i32>(var_0.d.x, -1i, -arg_1.x), _wgslsmith_f_op_f32(var_0.e - var_0.e)))).c.d;
    var var_2 = Struct_1(var_0.a, func_5(!vec3<bool>(var_0.c.x, var_0.c.x || true, func_4(Struct_3(var_0.c.x, 25043i, Struct_2(-2147483647i, -1i, var_0.d.x, Struct_1(5153u, arg_0.d.b, arg_0.d.c, vec3<i32>(arg_1.x, 1i, var_0.d.x), 2749f)), var_1.e)).a), !all(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -329f), var_0.e, _wgslsmith_f_op_f32(abs(891f))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.e, arg_0.d.e, var_1.e)))), func_2(func_2(~arg_2, -arg_0.d.d, arg_0).c.d.b.x, firstLeadingBit(arg_0.d.d), func_4(Struct_3(var_0.c.x, var_0.d.x, Struct_2(var_0.d.x, -8344i, global0[_wgslsmith_index_u32(4294967295u, 7u)], Struct_1(28265u, var_0.b, vec2<bool>(false, var_0.c.x), var_0.d, -1464f)), -391f)).c)).d.b, !(!func_1(func_1(arg_0.d.b.x).d.b.x).d.c), countOneBits(var_0.d), var_1.e);
    var var_3 = select(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0.d.c.x, var_2.c.x, true), vec3<bool>(var_0.c.x, false, var_1.c.x), var_1.c.x), vec3<bool>(var_0.c.x, false, false)), vec3<bool>(arg_2 >= var_2.a, all(vec2<bool>(var_1.c.x, true)), var_0.c.x || true), true), vec3<bool>(func_5(select(!vec3<bool>(var_0.c.x, var_2.c.x, false), !vec3<bool>(var_2.c.x, true, false), true), false, global1[_wgslsmith_index_u32(func_2(1u, func_2(var_1.b.x, var_1.d, Struct_2(global0[_wgslsmith_index_u32(arg_0.d.a, 7u)], var_2.d.x, -21687i, Struct_1(var_2.b.x, var_2.b, vec2<bool>(false, var_2.c.x), arg_0.d.d, 1943f))).c.d.d, arg_0).c.d.a, 16u)], Struct_3(true, _wgslsmith_mod_i32(var_1.d.x, 1i), arg_0, -2301f)).d.c.x, true, ~_wgslsmith_dot_vec2_i32(var_1.d.yy, vec2<i32>(arg_0.c, -1i)) != _wgslsmith_dot_vec4_i32(vec4<i32>(-51982i, -1i, var_2.d.x, arg_0.d.d.x), vec4<i32>(-23375i, global0[_wgslsmith_index_u32(arg_2, 7u)], global0[_wgslsmith_index_u32(var_0.b.x, 7u)], -2147483647i) & vec4<i32>(var_0.d.x, -1i, -2147483647i, 2147483647i))), !select(select(vec3<bool>(false, true, false), vec3<bool>(var_1.c.x, false, var_2.c.x), !vec3<bool>(false, var_0.c.x, false)), select(vec3<bool>(var_1.c.x, false, true), !vec3<bool>(var_1.c.x, true, false), var_1.e == -1000f), false));
    var var_4 = 1i;
    return StorageBuffer(~(abs(vec2<u32>(var_2.a, 4294967295u) | vec2<u32>(65699u, var_2.a)) >> (var_1.b % vec2<u32>(32u))), -func_4(Struct_3(true, ~arg_0.a, func_1(var_2.b.x), var_0.e)).c.d.d, var_0.d, _wgslsmith_mod_i32(-63898i, ~func_3(vec3<f32>(var_0.e, var_0.e, var_1.e)) ^ 68730i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global0[_wgslsmith_index_u32(u_input.a, 7u)];
    var var_1 = var_0;
    let var_2 = 1u;
    var var_3 = u_input.a;
    global0 = array<i32, 7>();
    let x = u_input.a;
    s_output = func_6(func_1(~_wgslsmith_div_u32(countOneBits(1u), ~var_2)), select(vec2<i32>(-abs(var_0), -(i32(-1i) * -6763i)), abs(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4294967295u, 1u)), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(21180u, 7u)], -2147483647i), Struct_2(-1i, var_0, 0i, Struct_1(u_input.a, vec2<u32>(0u, var_2), vec2<bool>(true, false), vec3<i32>(var_0, global0[_wgslsmith_index_u32(u_input.a, 7u)], var_0), 1315f))).c.d.d.yz), true & (_wgslsmith_mult_u32(var_2, 30987u) >= 80044u)), _wgslsmith_mod_u32(abs(_wgslsmith_mult_u32(var_2, u_input.a)) | u_input.a, u_input.a >> (var_2 % 32u)));
}

