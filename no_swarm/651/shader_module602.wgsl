struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    let var_0 = arg_0.zz;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2257f, _wgslsmith_f_op_f32(285f * 275f), _wgslsmith_f_op_f32(f32(-1f) * -1457f), _wgslsmith_f_op_f32(560f + 115f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1902f, 313f, 405f, -863f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1264f, 1611f, 862f, -517f) + vec4<f32>(1114f, 1017f, -2245f, 112f)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(797f, 1000f, -862f, -233f), vec4<f32>(-1294f, 1000f, 271f, 676f))), vec4<f32>(239f, -213f, _wgslsmith_f_op_f32(f32(-1f) * -916f), _wgslsmith_f_op_f32(select(703f, -378f, arg_0.x))))));
    global0 = array<i32, 6>();
    return 4294967295u;
}

fn func_3(arg_0: Struct_5, arg_1: i32) -> u32 {
    global0 = array<i32, 6>();
    let var_0 = !(!vec4<bool>(_wgslsmith_dot_vec2_i32(arg_0.a.xx, vec2<i32>(global0[_wgslsmith_index_u32(arg_0.e.a.x, 6u)], u_input.e)) <= 0i, arg_0.d.b, ~33281u < _wgslsmith_mod_u32(u_input.a, 81574u), false));
    var var_1 = arg_0.d.a;
    let var_2 = ~u_input.c;
    global0 = array<i32, 6>();
    return ~min(~0u, _wgslsmith_clamp_u32(53408u, u_input.d | _wgslsmith_mod_u32(u_input.d, u_input.b.x), 56812u));
}

fn func_1() -> Struct_3 {
    global0 = array<i32, 6>();
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, func_2(vec3<bool>(true, true, true))), firstTrailingBit(u_input.b.x), u_input.a | func_3(Struct_5(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 1i, 38707i), vec3<i32>(u_input.c, u_input.c, 14186i)), ~(-2147483647i), true, Struct_3(Struct_1(vec4<f32>(805f, -630f, 1416f, -779f)), false), Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, u_input.d, 31669u))), -u_input.e << (u_input.b.x % 32u)));
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(1i, 2147483647i), global0[_wgslsmith_index_u32(1u, 6u)]);
    var_1 = select(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(1i, var_1.x)), -countOneBits(countOneBits(vec2<i32>(1i, 1i))), -min(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, global0[_wgslsmith_index_u32(var_0.x, 6u)]), vec2<i32>(u_input.c, var_1.x)), ~vec2<i32>(u_input.e, 0i))), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, abs(-2147483647i)), ~(-vec2<i32>(var_1.x, 3451i))), select(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -32302i), vec2<i32>(u_input.c, global0[_wgslsmith_index_u32(var_0.x, 6u)])), ~vec2<i32>(global0[_wgslsmith_index_u32(1u, 6u)], 2725i), vec2<bool>(true, true)) ^ -firstTrailingBit(vec2<i32>(var_1.x, -1i))), !(!vec2<bool>(true, any(vec3<bool>(true, false, false)))));
    var_1 = _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(~var_1.x >> (_wgslsmith_mult_u32(16686u, var_0.x) % 32u), -30469i)), reverseBits(-firstLeadingBit(countOneBits(vec2<i32>(-2147483647i, 1i)))));
    return Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -219f, -1808f, 203f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(903f, -184f, -1427f, -516f) * vec4<f32>(-2006f, -1000f, -843f, 912f))), vec4<f32>(_wgslsmith_div_f32(-1082f, -444f), _wgslsmith_f_op_f32(491f + -1000f), 2309f, -313f)))), select(select(true, false, false) != select(false, false, false), true, false) != false);
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: vec2<f32>) -> Struct_3 {
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    var var_0 = vec4<bool>(!any(vec3<bool>(false, arg_1.c, !arg_1.d.b)), -508f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.x, 603f))), arg_1.d.a.a.x), false, false);
    return arg_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 6>();
    var var_0 = ~vec2<u32>(86592u, ~45164u);
    let var_1 = func_4(4294967295u, Struct_5(vec3<i32>(u_input.c, global0[_wgslsmith_index_u32(~1u, 6u)], -firstLeadingBit(u_input.e)), i32(-1i) * -62641i, all(vec2<bool>(true, true)), func_1(), Struct_2(min(vec4<u32>(var_0.x, u_input.a, var_0.x, 4294967295u) & vec4<u32>(1u, 0u, var_0.x, u_input.b.x), vec4<u32>(67787u, u_input.a, 15885u, u_input.d)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-128f)), _wgslsmith_f_op_f32(min(578f, 656f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-144f, 734f))))));
    let var_2 = select(u_input.b & u_input.b, countOneBits(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), select(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(1u, 1u), var_1.b))), var_1.b);
    var var_3 = Struct_5(-(~max(vec3<i32>(global0[_wgslsmith_index_u32(var_2.x, 6u)], -14548i, u_input.e), vec3<i32>(2147483647i, u_input.c, 286i))) & (vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, 1i, 0i), vec3<i32>(-33972i, global0[_wgslsmith_index_u32(var_2.x, 6u)], 2147483647i))), reverseBits((select(u_input.c, global0[_wgslsmith_index_u32(var_2.x, 6u)], var_1.b) & ~global0[_wgslsmith_index_u32(13199u, 6u)]) << ((~var_0.x << (4294967295u % 32u)) % 32u)), true, Struct_3(func_4(func_2(vec3<bool>(true, true, var_1.b)), Struct_5(~vec3<i32>(-33786i, u_input.c, 2147483647i), _wgslsmith_add_i32(u_input.c, -1i), true, func_4(20187u, Struct_5(vec3<i32>(-23652i, u_input.e, u_input.e), global0[_wgslsmith_index_u32(4294967295u, 6u)], var_1.b, var_1, Struct_2(vec4<u32>(var_2.x, var_0.x, var_0.x, 4294967295u))), var_1.a.a.wx), Struct_2(vec4<u32>(var_2.x, 1840u, 1057u, var_0.x))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_1.a.a.xw + vec2<f32>(var_1.a.a.x, var_1.a.a.x))))).a, var_1.b), Struct_2(countOneBits(~(~vec4<u32>(u_input.a, var_0.x, var_2.x, 0u)))));
    var var_4 = global0[_wgslsmith_index_u32(select(~(~(~var_0.x)), 53431u, var_3.d.b), 6u)] | _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_3.a, _wgslsmith_sub_vec3_i32(var_3.a, abs(var_3.a))), abs(firstTrailingBit(-1i)));
    var var_5 = Struct_4(select(!vec2<bool>(true, var_3.d.b), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, var_3.c), vec2<bool>(true, false)), false), select(select(vec2<bool>(false, var_3.d.b), vec2<bool>(var_3.d.b, false), !vec2<bool>(var_3.c, var_3.c)), !vec2<bool>(true, var_3.c), vec2<bool>(var_1.b || var_3.c, var_3.d.b))), ~vec3<u32>(22026u, 21147u, 35245u) ^ ~(~firstTrailingBit(var_3.e.a.wxx)), var_3.e, Struct_2(~vec4<u32>(var_0.x, var_0.x, var_2.x, ~12020u)), select(vec3<bool>(func_4(var_2.x, Struct_5(vec3<i32>(global0[_wgslsmith_index_u32(6838u, 6u)], 2147483647i, 0i), 89582i, true, Struct_3(Struct_1(vec4<f32>(-544f, 132f, var_3.d.a.a.x, -181f)), false), var_3.e), var_3.d.a.a.xy).b, true, var_1.b), vec3<bool>(var_3.d.b, func_1().b, !any(vec3<bool>(var_3.c, true, true))), !(!var_3.c)));
    var var_6 = _wgslsmith_f_op_vec4_f32(select(var_3.d.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a.x, -648f, -1815f, 1000f))))), select(vec4<bool>(!any(vec2<bool>(var_3.c, true)), u_input.c == ~global0[_wgslsmith_index_u32(var_2.x, 6u)], func_1().b, (51185i & u_input.e) >= _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -14184i), var_3.a.yx)), vec4<bool>(select(all(vec4<bool>(var_3.d.b, var_3.d.b, var_1.b, true)), !var_3.d.b, var_5.e.x), true && var_1.b, var_5.a.x, all(vec4<bool>(var_3.c, false, true, false))), vec4<bool>(var_3.d.b, func_4(var_2.x, Struct_5(var_3.a, 1i, false, Struct_3(Struct_1(vec4<f32>(-1585f, var_1.a.a.x, var_1.a.a.x, var_3.d.a.a.x)), false), var_5.d), vec2<f32>(var_1.a.a.x, var_3.d.a.a.x)).b && false, var_3.d.b, true))));
    var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.d.a.a + var_3.d.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(2147483647i, abs(var_3.a.x)), -543f, var_5.b);
}

