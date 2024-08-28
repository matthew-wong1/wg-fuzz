struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: Struct_4,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global2: Struct_5;

var<private> global3: Struct_5;

var<private> global4: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(-201f, -1674f), vec2<f32>(-333f, 3200f), vec2<f32>(-665f, 373f), vec2<f32>(-778f, 505f));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: f32) -> u32 {
    return (4294967295u ^ global3.b) >> (1u % 32u);
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = ~_wgslsmith_mod_u32(reverseBits(~global2.d.a), ~(~global1.x));
    global2 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-603f, global3.e)))))), _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(4294967295u, 1u) & vec2<u32>(global2.b, 56875u)), firstLeadingBit(vec2<u32>(_wgslsmith_mod_u32(global2.b, 22433u), 1u))), -376f, global3.d, global3.e);
    var var_1 = select(vec3<i32>(~(-(~43427i)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~u_input.a, u_input.a), -u_input.a), arg_0), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(firstLeadingBit(select(vec3<i32>(arg_0, -22687i, 0i), vec3<i32>(1i, u_input.a.x, arg_0), true)), vec3<i32>(-27530i, -40711i, arg_0), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-24668i, -2147483647i, arg_0), vec3<i32>(35108i, arg_0, -26313i)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, 2147483647i, 2147483647i), vec3<i32>(u_input.a.x, -2147483647i, 31297i)))), _wgslsmith_mod_vec3_i32(select(vec3<i32>(-16342i, u_input.a.x, arg_0), vec3<i32>(-11572i, u_input.a.x, arg_0), vec3<bool>(false, false, false)), vec3<i32>(u_input.a.x, u_input.a.x, 11810i) << (vec3<u32>(global1.x, global3.b, 1u) % vec3<u32>(32u))) | vec3<i32>(_wgslsmith_sub_i32(2147483647i, arg_0), i32(-1i) * -1i, arg_0)), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, false))), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), all(vec2<bool>(false, true))), true));
    var var_2 = Struct_2(_wgslsmith_mult_vec3_u32(firstTrailingBit(reverseBits(vec3<u32>(global1.x, 4294967295u, 11314u))), countOneBits(firstLeadingBit(vec3<u32>(1u, 4294967295u, 4294967295u)) >> (~vec3<u32>(19362u, 7290u, global2.b) % vec3<u32>(32u)))), global2.c, any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, false)))), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(~21666u, global2.b >> (23372u % 32u), var_0 ^ global1.x)), ~firstLeadingBit(~vec3<u32>(global1.x, global1.x, 13010u))), vec3<u32>(80515u, 1u, 15178u ^ _wgslsmith_sub_u32(1u >> (1u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 64363u, global1.x), vec3<u32>(4294967295u, 1u, 4294967295u)))));
    var var_3 = _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(var_2.a.xy, ~(~vec2<u32>(4294967295u, global3.d.a)) >> (vec2<u32>(15564u, global1.x) % vec2<u32>(32u))), reverseBits(firstTrailingBit(vec2<u32>(23471u, global1.x)) | ~(vec2<u32>(32826u, global3.d.a) | vec2<u32>(10604u, var_0))));
    return -1652f;
}

fn func_1() -> Struct_2 {
    let var_0 = -(i32(-1i) * -u_input.a.x);
    global4 = array<vec2<f32>, 4>();
    let var_1 = abs(vec3<i32>(-33045i, -2173i, ~(0i & u_input.a.x)));
    global0 = _wgslsmith_mod_u32(global2.b, func_2(679f));
    global2 = Struct_5(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(119f)) * global2.a.x), _wgslsmith_f_op_f32(-global3.e)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(140f, global2.a.x))) * global4[_wgslsmith_index_u32(global2.b, 4u)]), true)), 2262u, global2.e, Struct_4(46672u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_1.x, -1i), var_1) | 51123i))));
    return Struct_2(firstLeadingBit(~countOneBits(~vec3<u32>(global1.x, 0u, global3.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.e)) - 739f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.e), global3.c)))), all(vec2<bool>(true, _wgslsmith_f_op_f32(min(1647f, 1209f)) >= _wgslsmith_f_op_f32(822f + global2.c))), ~vec3<u32>(~global1.x, _wgslsmith_div_u32(4294967295u, global1.x), 16851u), countOneBits(_wgslsmith_add_vec3_u32(~vec3<u32>(1u, 1u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, global1.x), vec3<u32>(global3.b, global1.x, global1.x)) & _wgslsmith_div_vec3_u32(vec3<u32>(9132u, global1.x, global3.b), vec3<u32>(global1.x, 1u, global3.b)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_5) -> Struct_4 {
    global3 = Struct_5(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.a * global4[_wgslsmith_index_u32(global2.d.a, 4u)]) + arg_2.a))))), global1.x, _wgslsmith_f_op_f32(-arg_2.c), global3.d, -1836f);
    let var_0 = Struct_5(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, global3.d.a, 37153u, global1.x) & countOneBits(vec4<u32>(global1.x, 4294967295u, arg_1.d.x, global2.d.a)), countOneBits(firstLeadingBit(vec4<u32>(global2.d.a, arg_2.d.a, arg_1.a.x, 0u)))), ~vec4<u32>(4294967295u, ~1u, global1.x, global2.b)), 4u)], ~_wgslsmith_add_u32(~_wgslsmith_div_u32(global2.d.a, 7568u), abs(arg_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))), Struct_4(arg_1.e.x), _wgslsmith_f_op_f32(round(arg_1.b)));
    global2 = Struct_5(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.e * arg_2.c), _wgslsmith_f_op_f32(select(var_0.e, -623f, arg_1.c)))), arg_2.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.e - global3.e), _wgslsmith_div_f32(-598f, var_0.a.x)))))), ~(2637u | firstLeadingBit(~var_0.d.a)), var_0.e, arg_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(145f, -165f))))));
    global4 = array<vec2<f32>, 4>();
    let var_1 = vec3<f32>(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -1223f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-386f - arg_1.b))))));
    return Struct_4(64822u);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<u32>) -> Struct_1 {
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<f32>, 4>();
    let var_0 = true;
    let var_1 = Struct_3(26515i, _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x | 2147483647i, _wgslsmith_add_i32(-33503i, u_input.a.x), u_input.a.x), _wgslsmith_add_vec3_i32(select(vec3<i32>(9330i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -49089i, 0i), vec3<bool>(false, var_0, var_0)), ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), ~vec3<i32>(_wgslsmith_add_i32(2147483647i, -2147483647i), firstTrailingBit(u_input.a.x), 2147483647i)), func_5(func_4(-(~vec3<i32>(0i, -2147483647i, u_input.a.x)), func_1(), Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, global2.c)), _wgslsmith_add_u32(4294967295u, global1.x), _wgslsmith_f_op_f32(global3.a.x * -1481f), global3.d, global2.e)), Struct_1(_wgslsmith_clamp_i32(abs(u_input.a.x), u_input.a.x, u_input.a.x), -2147483647i <= _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, 59502i), vec4<i32>(1i, -28885i, u_input.a.x, u_input.a.x)), ~(~u_input.a.x), var_0, ~global1.x), vec3<i32>(_wgslsmith_add_i32(-u_input.a.x, u_input.a.x), reverseBits(-9015i), u_input.a.x), vec3<u32>(abs(global1.x << (global1.x % 32u)), global1.x, global2.b)), -24077i | _wgslsmith_clamp_i32(reverseBits(-2147483647i), firstTrailingBit(reverseBits(u_input.a.x)), abs(-u_input.a.x)), Struct_2(vec3<u32>(1u, 0u, select(global3.d.a, 0u, false)), global2.a.x, func_5(global2.d, func_5(func_4(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), Struct_2(vec3<u32>(global1.x, global3.d.a, 0u), -1333f, var_0, vec3<u32>(4606u, global2.b, global1.x), vec3<u32>(1u, global1.x, global2.d.a)), Struct_5(global4[_wgslsmith_index_u32(0u, 4u)], global2.d.a, 126f, Struct_4(global1.x), 1820f)), func_5(global3.d, Struct_1(u_input.a.x, var_0, u_input.a.x, true, global2.b), vec3<i32>(u_input.a.x, -12337i, u_input.a.x), vec3<u32>(global2.b, global3.b, global1.x)), firstTrailingBit(vec3<i32>(23243i, u_input.a.x, u_input.a.x)), ~vec3<u32>(global1.x, 1u, global2.d.a)), ~(~vec3<i32>(1i, u_input.a.x, 679i)), vec3<u32>(1u, max(1650u, global2.d.a), global1.x)).d, _wgslsmith_mod_vec3_u32(vec3<u32>(27912u, 0u, ~global3.b), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 4294967295u, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, global2.d.a, 4294967295u), vec3<u32>(2037u, global3.b, global1.x)))), _wgslsmith_mult_vec3_u32(vec3<u32>(~global2.d.a, global3.b, 16284u), ~(vec3<u32>(global3.b, 40215u, global2.b) >> (vec3<u32>(0u, 0u, global1.x) % vec3<u32>(32u))))));
    var var_2 = var_1.c.d;
    var_2 = all(!(!vec4<bool>(var_0, var_1.c.d, var_1.c.b, var_0 && var_0)));
    global2 = Struct_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(114f, global3.a.x))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(global4[_wgslsmith_index_u32(global1.x, 4u)])), _wgslsmith_f_op_vec2_f32(round(global2.a)), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global2.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.c, var_1.e.b) - vec2<f32>(-1200f, 1734f))))), !select(select(vec2<bool>(true, var_1.c.d), vec2<bool>(var_0, var_1.c.b), var_1.e.c), vec2<bool>(var_0, var_0), var_1.e.c))), ~18494u | _wgslsmith_add_u32(1u, ~(var_1.e.d.x | global2.b)), 537f, global3.d, _wgslsmith_f_op_f32(-global3.c));
    let var_3 = global3.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(912f, -538f)))), 158f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_1.e.b, var_1.e.b, var_1.e.b) + vec4<f32>(-367f, var_1.e.b, 274f, -678f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.c, global2.c, 568f, var_1.e.b)))))));
}

