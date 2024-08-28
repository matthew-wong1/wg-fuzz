struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: array<i32, 17> = array<i32, 17>(i32(-2147483648), 17951i, 48308i, 36339i, -10665i, -40885i, -1i, 2147483647i, -1707i, i32(-2147483648), 2147483647i, 44360i, 34011i, 2147483647i, i32(-2147483648), -22434i, 66193i);

var<private> global2: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global3: vec3<i32> = vec3<i32>(-1i, 45403i, 10393i);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>) -> i32 {
    global0 = array<bool, 16>();
    let var_0 = Struct_2(Struct_1(vec3<u32>(32565u, min(u_input.b, 56287u << (0u % 32u)), countOneBits(u_input.b)), 25140i, max(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_1.x, arg_1.x, 18530u), vec4<u32>(arg_1.x, 0u, arg_1.x, u_input.b))), 17u)], ~(-2147483647i))), any(select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(global0[_wgslsmith_index_u32(1u, 16u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)], false)), select(!vec3<bool>(arg_0, false, arg_0), !vec3<bool>(true, true, global0[_wgslsmith_index_u32(32634u, 16u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 16u)], true)), global0[_wgslsmith_index_u32(~1u, 16u)])), Struct_1(arg_1, -(~_wgslsmith_mod_i32(2147483647i, u_input.a)), -40911i), Struct_1(vec3<u32>(~select(arg_1.x, u_input.b, true), u_input.b, _wgslsmith_add_u32(u_input.b, 52602u)), global3.x, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(~0u, 17u)], u_input.a)));
    global3 = _wgslsmith_div_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -1i, 0i) << (select(vec3<u32>(arg_1.x, 0u, arg_1.x), vec3<u32>(29978u, 1u, u_input.b), vec3<bool>(var_0.b, global0[_wgslsmith_index_u32(arg_1.x, 16u)], arg_0)) % vec3<u32>(32u)), vec3<i32>(global3.x, -25i, 2147483647i)), ~vec3<i32>(~(0i | u_input.a), _wgslsmith_clamp_i32(-1i, -2147483647i, var_0.d.c), -_wgslsmith_mult_i32(-4772i, 1i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-198f, -377f) - vec2<f32>(-738f, -455f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(233f, 510f)))))));
    global0 = array<bool, 16>();
    return ~_wgslsmith_add_i32(global1[_wgslsmith_index_u32(~min(_wgslsmith_sub_u32(1727u, 0u), 17743u), 17u)], 39566i);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: bool) -> i32 {
    let var_0 = Struct_4(arg_3, arg_0, Struct_2(arg_0.a, global0[_wgslsmith_index_u32(countOneBits(u_input.b), 16u)], arg_0.d, Struct_1(vec3<u32>(4294967295u, u_input.b, ~4294967295u), ~global3.x, func_3(arg_1.x >= arg_1.x, firstTrailingBit(vec3<u32>(1u, arg_0.a.a.x, arg_0.a.a.x))))), Struct_2(Struct_1(firstTrailingBit(~arg_2.a), abs(~42197i), firstTrailingBit(1i)), !arg_0.b, arg_0.a, Struct_1(~arg_2.a, 2147483647i, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(36363u, u_input.b), 17u)] | 2951i)));
    global2 = array<vec2<bool>, 24>();
    global1 = array<i32, 17>();
    let var_1 = arg_2.a.yz;
    global2 = array<vec2<bool>, 24>();
    return arg_2.d;
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_4, arg_3: Struct_4) -> Struct_3 {
    global3 = _wgslsmith_clamp_vec3_i32(countOneBits(-(_wgslsmith_div_vec3_i32(vec3<i32>(arg_3.d.a.c, -16984i, u_input.a), vec3<i32>(arg_3.c.d.c, -25898i, arg_2.c.c.c)) & max(vec3<i32>(global1[_wgslsmith_index_u32(19354u, 17u)], arg_3.d.a.b, global3.x), vec3<i32>(-1673i, global1[_wgslsmith_index_u32(arg_2.b.d.a.x, 17u)], -16348i)))), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(reverseBits(29722i), ~(-2147483647i), firstLeadingBit(1i)), vec3<i32>(countOneBits(-2147483647i), func_2(arg_3.b, vec3<f32>(429f, -696f, -444f), Struct_3(arg_2.d.d.a, global3.zz, vec4<i32>(arg_2.d.d.b, arg_2.b.d.c, 46539i, 67803i), -73495i), arg_3.a), global3.x)), vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(arg_2.b.d.a.x, 17u)], u_input.a)), u_input.a, 42521i)), vec3<i32>(1i, global1[_wgslsmith_index_u32(arg_3.b.c.a.x, 17u)], global1[_wgslsmith_index_u32(0u, 17u)]));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1528f)) - 1f), 1808f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(474f - _wgslsmith_div_f32(1177f, 389f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-992f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1285f)), _wgslsmith_f_op_f32(round(-308f))))));
    let var_1 = arg_0;
    global2 = array<vec2<bool>, 24>();
    global1 = array<i32, 17>();
    return Struct_3(_wgslsmith_clamp_vec3_u32(arg_3.d.d.a, reverseBits(arg_2.c.a.a | arg_2.b.c.a), _wgslsmith_div_vec3_u32(vec3<u32>(0u, _wgslsmith_mult_u32(57972u, arg_2.d.c.a.x), 9455u | u_input.b), _wgslsmith_mult_vec3_u32(arg_3.d.d.a ^ vec3<u32>(4294967295u, 0u, 13651u), vec3<u32>(u_input.b, u_input.b, arg_1)))), global3.zz, max(~(~vec4<i32>(global3.x, 1i, global3.x, global1[_wgslsmith_index_u32(11248u, 17u)]) << (~vec4<u32>(0u, arg_3.b.d.a.x, 1u, arg_2.b.c.a.x) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(~vec4<i32>(11852i, global1[_wgslsmith_index_u32(4294967295u, 17u)], arg_2.c.c.b, -2147483647i) << (abs(vec4<u32>(1u, 102774u, 0u, 42579u)) % vec4<u32>(32u)), countOneBits(reverseBits(vec4<i32>(2042i, global1[_wgslsmith_index_u32(8530u, 17u)], -2147483647i, global3.x))))), 19470i);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_3 {
    var var_0 = !vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 16u)], false);
    let var_1 = ~vec2<u32>(abs(u_input.b) << (_wgslsmith_mod_u32(~33092u, select(0u, 23975u, false)) % 32u), 11214u);
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    return arg_0;
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: u32) -> Struct_2 {
    global3 = _wgslsmith_mod_vec3_i32(vec3<i32>(-8610i, -2147483647i, 2147483647i), abs(vec3<i32>(_wgslsmith_mod_i32(~2147483647i, abs(u_input.a)), _wgslsmith_add_i32(-2147483647i, _wgslsmith_mult_i32(1i, 6320i)), func_3(true, ~arg_1.a))));
    global1 = array<i32, 17>();
    global3 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(_wgslsmith_sub_i32(1i, u_input.a), -22263i, firstTrailingBit(0i)), arg_1.c.yww), vec3<i32>(2147483647i, -2147483647i, ~func_4(Struct_3(arg_1.a, vec2<i32>(-2147483647i, arg_0), arg_1.c, global1[_wgslsmith_index_u32(arg_1.a.x, 17u)]), Struct_1(arg_1.a, 17981i, 58599i), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(arg_1.a.x, 16u)], false)).d));
    let var_0 = vec3<i32>(-1i) * -vec3<i32>(func_4(Struct_3(arg_1.a, vec2<i32>(global3.x, 20866i), vec4<i32>(global1[_wgslsmith_index_u32(41769u, 17u)], 2147483647i, arg_1.b.x, global3.x), global1[_wgslsmith_index_u32(0u, 17u)]), Struct_1(arg_1.a, global1[_wgslsmith_index_u32(31757u, 17u)], 54454i), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(arg_2, 16u)], false, true)).c.x, _wgslsmith_sub_i32(13983i & global3.x, 46553i), min(-global3.x, arg_1.d));
    let var_1 = true;
    return Struct_2(Struct_1(abs(~arg_1.a), -max(select(global1[_wgslsmith_index_u32(arg_1.a.x, 17u)], 0i, true), func_3(false, arg_1.a)), u_input.a), !(~arg_2 < _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_1.a.zy, vec2<u32>(arg_1.a.x, 16894u)), ~1u)), Struct_1(abs(~arg_1.a), u_input.a, -global3.x), Struct_1(~(~arg_1.a), arg_1.b.x, (firstTrailingBit(arg_0) & max(arg_0, 1i)) | _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(2147483647i, -5552i, u_input.a, 0i)), arg_1.c ^ vec4<i32>(2147483647i, 1i, 41376i, -9163i))));
}

fn func_6(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    let var_0 = arg_0.d;
    global0 = array<bool, 16>();
    global3 = -(vec3<i32>(global3.x, -51393i, ~global3.x) >> (~arg_0.a.a % vec3<u32>(32u))) ^ select(vec3<i32>(~56442i, u_input.a, -9462i), reverseBits(~(-vec3<i32>(global3.x, arg_0.d.b, u_input.a))), select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 16u)], true), select(vec3<bool>(arg_0.b, false, false), vec3<bool>(arg_0.b, global0[_wgslsmith_index_u32(0u, 16u)], true), false), true), !select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(1u, 16u)]), vec3<bool>(false, true, true), vec3<bool>(false, global0[_wgslsmith_index_u32(15819u, 16u)], global0[_wgslsmith_index_u32(var_0.a.x, 16u)])), vec3<bool>(false, true, true)));
    var var_1 = select(!vec3<bool>(arg_0.b, true, !global0[_wgslsmith_index_u32(239u, 16u)]), !(!vec3<bool>(false, !global0[_wgslsmith_index_u32(u_input.b, 16u)], true)), vec3<bool>(-1000f >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-191f)))), !global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(4294967295u, 1u), 16u)], true));
    var var_2 = select(!vec2<bool>(false, global0[_wgslsmith_index_u32(~u_input.b, 16u)]), global2[_wgslsmith_index_u32(~0u, 24u)], global2[_wgslsmith_index_u32(25031u, 24u)]);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 16>();
    global3 = ~(-(select(vec3<i32>(global3.x, global1[_wgslsmith_index_u32(u_input.b, 17u)], -2147483647i), vec3<i32>(4133i, global1[_wgslsmith_index_u32(115573u, 17u)], global1[_wgslsmith_index_u32(1896u, 17u)]), vec3<bool>(false, true, true)) >> (vec3<u32>(u_input.b, u_input.b, 4294967295u) % vec3<u32>(32u))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, ~7763u), firstTrailingBit(~vec3<u32>(u_input.b, 0u, 16762u))) % vec3<u32>(32u)));
    var var_0 = func_6(func_5(-14772i | u_input.a, func_4(func_1(global2[_wgslsmith_index_u32(~u_input.b, 24u)], _wgslsmith_mod_u32(0u, 54628u), Struct_4(global0[_wgslsmith_index_u32(u_input.b, 16u)], Struct_2(Struct_1(vec3<u32>(u_input.b, 4294967295u, 11753u), -13374i, global1[_wgslsmith_index_u32(0u, 17u)]), global0[_wgslsmith_index_u32(u_input.b, 16u)], Struct_1(vec3<u32>(62074u, u_input.b, 59979u), 16592i, 6551i), Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b), u_input.a, u_input.a)), Struct_2(Struct_1(vec3<u32>(u_input.b, 57658u, 0u), 45079i, 2147483647i), false, Struct_1(vec3<u32>(u_input.b, 1u, u_input.b), u_input.a, global1[_wgslsmith_index_u32(u_input.b, 17u)]), Struct_1(vec3<u32>(u_input.b, 59740u, 3614u), 0i, u_input.a)), Struct_2(Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b), global1[_wgslsmith_index_u32(u_input.b, 17u)], global1[_wgslsmith_index_u32(u_input.b, 17u)]), true, Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b), global1[_wgslsmith_index_u32(1u, 17u)], 0i), Struct_1(vec3<u32>(22993u, 21119u, u_input.b), u_input.a, 2147483647i))), Struct_4(global0[_wgslsmith_index_u32(u_input.b, 16u)], Struct_2(Struct_1(vec3<u32>(38318u, u_input.b, 0u), global3.x, u_input.a), false, Struct_1(vec3<u32>(u_input.b, 1u, u_input.b), 1i, u_input.a), Struct_1(vec3<u32>(u_input.b, 26051u, u_input.b), global3.x, 77525i)), Struct_2(Struct_1(vec3<u32>(0u, u_input.b, 14395u), global3.x, u_input.a), global0[_wgslsmith_index_u32(34955u, 16u)], Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b), 6575i, 0i), Struct_1(vec3<u32>(14297u, u_input.b, 50402u), global3.x, -2147483647i)), Struct_2(Struct_1(vec3<u32>(3039u, u_input.b, 30261u), 2147483647i, u_input.a), true, Struct_1(vec3<u32>(4294967295u, u_input.b, 1u), global3.x, 0i), Struct_1(vec3<u32>(u_input.b, 10874u, 134443u), 52695i, -53250i)))), Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 13208u, 62697u), vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(17172u, u_input.b, 0u)), ~u_input.a, _wgslsmith_mod_i32(-2147483647i, u_input.a)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(5990u, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(25940u, 16u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(3079u, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)]), true), select(vec4<bool>(global0[_wgslsmith_index_u32(12323u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)], false), vec4<bool>(global0[_wgslsmith_index_u32(5236u, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], false), false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 16u)], false, global0[_wgslsmith_index_u32(u_input.b, 16u)], true))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_sub_u32(59317u, u_input.b)), _wgslsmith_mult_u32(u_input.b, u_input.b) ^ ~u_input.b)), -(~global1[_wgslsmith_index_u32(firstTrailingBit(31029u) << (firstLeadingBit(57268u) % 32u), 17u)]));
    global2 = array<vec2<bool>, 24>();
    var var_1 = !all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 16u)], var_0.b, var_0.b));
    global1 = array<i32, 17>();
    var var_2 = Struct_4(all(!(!select(global2[_wgslsmith_index_u32(44812u, 24u)], vec2<bool>(false, true), true))), Struct_2(Struct_1(~(var_0.d.a >> (vec3<u32>(11089u, var_0.c.a.x, 1u) % vec3<u32>(32u))), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(var_0.c.a.x, 17u)], -7568i), func_1(select(vec2<bool>(var_0.b, true), global2[_wgslsmith_index_u32(u_input.b, 24u)], vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.c.a.x, 16u)])), var_0.a.a.x & 4294967295u, Struct_4(true, Struct_2(var_0.d, false, var_0.c, Struct_1(vec3<u32>(var_0.a.a.x, 19335u, u_input.b), global3.x, -2147483647i)), Struct_2(Struct_1(var_0.c.a, global3.x, global1[_wgslsmith_index_u32(u_input.b, 17u)]), false, var_0.c, var_0.c), Struct_2(var_0.c, global0[_wgslsmith_index_u32(u_input.b, 16u)], var_0.a, var_0.a)), Struct_4(false, Struct_2(var_0.a, global0[_wgslsmith_index_u32(u_input.b, 16u)], Struct_1(var_0.c.a, 0i, 49415i), var_0.c), Struct_2(Struct_1(var_0.d.a, 0i, var_0.a.b), true, var_0.d, var_0.d), Struct_2(var_0.a, false, var_0.a, var_0.d))).b.x), !var_0.b, var_0.d, func_6(func_6(func_5(-2147483647i, Struct_3(vec3<u32>(u_input.b, var_0.a.a.x, 17147u), global3.xz, vec4<i32>(global3.x, global1[_wgslsmith_index_u32(105136u, 17u)], var_0.c.c, global1[_wgslsmith_index_u32(0u, 17u)]), -1i), var_0.a.a.x), 1i), 0i).d), Struct_2(var_0.c, all(vec3<bool>(all(vec4<bool>(var_0.b, true, global0[_wgslsmith_index_u32(u_input.b, 16u)], true)), true, true)), func_6(Struct_2(Struct_1(var_0.c.a, global3.x, -2147483647i), all(vec4<bool>(var_0.b, global0[_wgslsmith_index_u32(u_input.b, 16u)], false, global0[_wgslsmith_index_u32(u_input.b, 16u)])), func_6(Struct_2(var_0.d, true, Struct_1(vec3<u32>(1u, 80520u, var_0.a.a.x), 2147483647i, u_input.a), var_0.d), -21478i).d, var_0.a), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(184i, var_0.d.c), _wgslsmith_div_i32(33000i, 18161i), 1i)).c, Struct_1(abs(vec3<u32>(var_0.c.a.x, 76937u, 42021u)), u_input.a, _wgslsmith_sub_i32(0i, -40583i))), func_5(~(-(~global3.x)), Struct_3(func_1(select(vec2<bool>(false, var_0.b), global2[_wgslsmith_index_u32(57444u, 24u)], global0[_wgslsmith_index_u32(0u, 16u)]), ~u_input.b, Struct_4(var_0.b, Struct_2(Struct_1(vec3<u32>(u_input.b, 14952u, 58488u), global1[_wgslsmith_index_u32(u_input.b, 17u)], u_input.a), true, var_0.a, Struct_1(var_0.a.a, global1[_wgslsmith_index_u32(53381u, 17u)], 1i)), Struct_2(Struct_1(var_0.d.a, u_input.a, global3.x), true, var_0.d, Struct_1(var_0.a.a, global3.x, -1i)), Struct_2(var_0.d, false, var_0.a, Struct_1(var_0.c.a, -2147483647i, var_0.a.b))), Struct_4(var_0.b, Struct_2(var_0.d, false, Struct_1(var_0.a.a, var_0.a.b, -1i), Struct_1(vec3<u32>(3864u, 45738u, var_0.a.a.x), 0i, global3.x)), Struct_2(Struct_1(vec3<u32>(161u, u_input.b, u_input.b), u_input.a, var_0.c.c), var_0.b, var_0.d, var_0.a), Struct_2(Struct_1(vec3<u32>(u_input.b, 4294967295u, var_0.c.a.x), var_0.c.b, 1i), global0[_wgslsmith_index_u32(u_input.b, 16u)], var_0.c, Struct_1(var_0.a.a, -12879i, global1[_wgslsmith_index_u32(var_0.d.a.x, 17u)])))).a, abs(vec2<i32>(1i, 19936i)), firstLeadingBit(func_1(global2[_wgslsmith_index_u32(4294967295u, 24u)], var_0.c.a.x, Struct_4(var_0.b, Struct_2(Struct_1(var_0.d.a, global3.x, -1129i), var_0.b, var_0.d, var_0.c), Struct_2(Struct_1(var_0.d.a, -1i, 1i), false, var_0.d, var_0.d), Struct_2(Struct_1(vec3<u32>(var_0.a.a.x, 80970u, 1u), var_0.a.c, var_0.c.c), global0[_wgslsmith_index_u32(u_input.b, 16u)], var_0.d, Struct_1(var_0.d.a, u_input.a, -32953i))), Struct_4(false, Struct_2(var_0.d, true, var_0.c, Struct_1(vec3<u32>(21508u, u_input.b, 130704u), u_input.a, global3.x)), Struct_2(Struct_1(vec3<u32>(59545u, var_0.d.a.x, u_input.b), var_0.d.c, global3.x), false, Struct_1(vec3<u32>(u_input.b, 0u, 49482u), global3.x, global1[_wgslsmith_index_u32(4294967295u, 17u)]), Struct_1(var_0.d.a, 0i, u_input.a)), Struct_2(var_0.a, global0[_wgslsmith_index_u32(4294967295u, 16u)], var_0.a, var_0.c))).c), var_0.c.b), ~_wgslsmith_mod_u32(u_input.b, ~var_0.d.a.x)));
    let var_3 = max(var_2.c.c.a.xx, vec2<u32>(~28767u, countOneBits(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b, var_2.d.a.a.x, 6051u, var_0.d.a.x), vec4<u32>(5456u, var_2.c.a.a.x, var_0.c.a.x, u_input.b), var_2.d.b), select(vec4<u32>(var_0.d.a.x, 9568u, var_2.d.a.a.x, var_2.d.c.a.x), vec4<u32>(1u, 0u, 0u, var_0.a.a.x), global0[_wgslsmith_index_u32(var_2.b.c.a.x, 16u)])))));
    let var_4 = vec4<u32>(var_3.x, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(var_0.d.a.x), firstTrailingBit(~4294967295u), u_input.b, countOneBits(1u)), reverseBits(vec4<u32>(~4294967295u, abs(1u), 11213u, 44609u << (1u % 32u)))), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(0i, global3.xz);
}

