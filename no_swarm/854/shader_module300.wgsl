struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<bool>(true, true), vec4<i32>(-1i, -9504i, 2147483647i, -1i), vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec2<bool>(false, true), vec4<i32>(0i, 2147483647i, 0i, -1i), vec2<i32>(-10400i, -2096i)), Struct_1(vec2<bool>(true, false), vec4<i32>(4341i, 0i, i32(-2147483648), 1i), vec2<i32>(7235i, 0i)), Struct_1(vec2<bool>(false, false), vec4<i32>(15128i, -1i, 1i, 6194i), vec2<i32>(54827i, -1i)), Struct_1(vec2<bool>(false, false), vec4<i32>(1i, -53180i, 2147483647i, -1i), vec2<i32>(5195i, 12331i)), Struct_1(vec2<bool>(true, false), vec4<i32>(-1i, 35167i, 0i, 2147483647i), vec2<i32>(1i, 2147483647i)), Struct_1(vec2<bool>(true, false), vec4<i32>(45177i, -2531i, 1i, -1i), vec2<i32>(-43256i, -36778i)), Struct_1(vec2<bool>(true, true), vec4<i32>(i32(-2147483648), -67990i, -29864i, -1i), vec2<i32>(31905i, i32(-2147483648))), Struct_1(vec2<bool>(true, true), vec4<i32>(45495i, 1i, -9002i, 23983i), vec2<i32>(3069i, 23628i)), Struct_1(vec2<bool>(true, true), vec4<i32>(-38398i, -28231i, 1i, 1i), vec2<i32>(0i, 0i)), Struct_1(vec2<bool>(false, true), vec4<i32>(38889i, 17994i, 0i, 14825i), vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec2<bool>(false, false), vec4<i32>(i32(-2147483648), 36474i, 24015i, i32(-2147483648)), vec2<i32>(1i, 0i)), Struct_1(vec2<bool>(true, true), vec4<i32>(2147483647i, 2147483647i, 45549i, 2147483647i), vec2<i32>(0i, i32(-2147483648))));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    var var_0 = -2147483647i;
    let var_1 = Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec4<i32>(~(~(-1i)), 1i, 1i, -1i), ~u_input.a.xz);
    return min(~(~u_input.b), min(13137u, min(u_input.c, reverseBits(u_input.b))) | ~0u);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: bool, arg_3: u32) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(func_3(), 13u)];
    var_0 = Struct_1(arg_0, var_0.b, abs(u_input.d));
    global0 = array<Struct_1, 13>();
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(firstLeadingBit(select(_wgslsmith_dot_vec3_u32(u_input.e.wzy, vec3<u32>(arg_3, arg_3, 0u)), 13872u, arg_3 == arg_3)), arg_3 & u_input.c, ~(u_input.e.x | ~u_input.c)), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 61668u, arg_3) ^ u_input.e.xzy, u_input.e.wxw, u_input.e.xyy)));
    global0 = array<Struct_1, 13>();
    return Struct_1(select(arg_1, !select(!var_0.a, var_0.a, !arg_1.x), !select(arg_1, vec2<bool>(arg_1.x, arg_2), var_0.a)), ~firstTrailingBit(-_wgslsmith_add_vec4_i32(vec4<i32>(1i, var_0.b.x, u_input.a.x, 0i), vec4<i32>(-43658i, u_input.a.x, 1i, u_input.a.x))), vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(~firstTrailingBit(var_0.b.xww), firstTrailingBit(vec3<i32>(var_0.b.x, var_0.b.x, 40002i)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = arg_1;
    var var_1 = Struct_1(!select(vec2<bool>(true, arg_1.a.x), vec2<bool>(arg_1.a.x, arg_1.a.x), all(select(arg_0.a, vec2<bool>(arg_0.a.x, false), var_0.a.x))), select(-var_0.b, ~vec4<i32>(1i, abs(0i), abs(2147483647i), var_0.c.x), true), vec2<i32>(min(-firstTrailingBit(-1i), func_2(select(var_0.a, var_0.a, vec2<bool>(true, arg_1.a.x)), vec2<bool>(false, false), true, ~5926u).b.x), -1i));
    var_1 = func_2(vec2<bool>(false, arg_0.a.x), vec2<bool>(true, true), false, u_input.c);
    var var_2 = u_input.e.wzz;
    let var_3 = !(!select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(arg_0.a.x, arg_1.a.x, false)), !var_1.a.x, true), select(select(vec3<bool>(arg_1.a.x, false, arg_1.a.x), vec3<bool>(false, true, var_1.a.x), arg_0.a.x), !vec3<bool>(false, arg_1.a.x, arg_1.a.x), select(vec3<bool>(arg_0.a.x, false, arg_0.a.x), vec3<bool>(true, arg_1.a.x, var_1.a.x), vec3<bool>(var_1.a.x, var_0.a.x, var_0.a.x)))));
    return vec2<bool>(true, select(var_1.a.x & !(u_input.b <= 0u), var_3.x, !(!(var_1.a.x || true))));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: f32) -> vec4<i32> {
    global0 = array<Struct_1, 13>();
    let var_0 = Struct_1(func_4(Struct_1(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1), false), vec4<i32>(u_input.a.x, u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(69777i, 6952i, 2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.d.x)), i32(-1i) * -1i), reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 0i), u_input.d))), func_2(!select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, true), vec2<bool>(arg_1, false)), select(!vec2<bool>(false, arg_1), vec2<bool>(arg_1, false), vec2<bool>(false, true)), true, ~_wgslsmith_mod_u32(u_input.e.x, 102043u))), ~(-vec4<i32>(1i << (u_input.c % 32u), u_input.a.x, 24696i, -39266i)), _wgslsmith_clamp_vec2_i32(min(u_input.a.xz, u_input.d) >> ((vec2<u32>(u_input.e.x, u_input.e.x) >> (u_input.e.xw % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.d, u_input.a.xx));
    let var_1 = arg_0.x < _wgslsmith_f_op_f32(round(arg_0.x));
    let var_2 = func_2(vec2<bool>(true, false), vec2<bool>(true, !any(vec4<bool>(true, true, var_0.a.x, false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1896f + -115f) - _wgslsmith_f_op_f32(arg_0.x * arg_2)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(296f - _wgslsmith_f_op_f32(-1504f * arg_2))), ~(~(~_wgslsmith_mod_u32(u_input.c, 4294967295u))));
    var var_3 = !select(vec4<bool>(func_4(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(u_input.c, 13u)]).x, 1i == u_input.d.x, var_2.a.x, -var_2.b.x < _wgslsmith_mod_i32(-2147483647i, 2147483647i)), vec4<bool>(!(!var_2.a.x), var_1, all(!vec4<bool>(arg_1, var_2.a.x, true, true)), select(true, false, !var_2.a.x)), vec4<bool>(!arg_1, !(u_input.d.x == var_2.c.x), !func_4(global0[_wgslsmith_index_u32(u_input.c, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]).x, all(vec3<bool>(false, true, false))));
    return -_wgslsmith_mult_vec4_i32(var_2.b, var_0.b);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: bool) -> i32 {
    global0 = array<Struct_1, 13>();
    let var_0 = vec2<bool>(!arg_3, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1081f)), _wgslsmith_f_op_f32(abs(-354f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1117f) - _wgslsmith_f_op_f32(round(-240f))));
    global0 = array<Struct_1, 13>();
    var var_1 = abs(~vec3<u32>(_wgslsmith_mod_u32(20399u, ~0u), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 30123u, arg_1.x), vec3<u32>(u_input.e.x, arg_1.x, arg_1.x))), 12794u));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~func_3(), firstTrailingBit(1u)), 13u)];
    return _wgslsmith_sub_i32(-func_2(var_0, vec2<bool>(arg_3, false), 1000f == _wgslsmith_f_op_f32(sign(1276f)), countOneBits(~u_input.e.x)).b.x, -41093i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_5(global0[_wgslsmith_index_u32(u_input.b, 13u)], ~u_input.e, firstTrailingBit(countOneBits(func_1(vec4<f32>(-1000f, -1628f, 1038f, -2088f), false, 971f))), !(!any(vec2<bool>(false, true))));
    global0 = array<Struct_1, 13>();
    var var_1 = func_2(!func_4(global0[_wgslsmith_index_u32(reverseBits(u_input.c << (23515u % 32u)), 13u)], Struct_1(vec2<bool>(true, true), _wgslsmith_clamp_vec4_i32(vec4<i32>(29890i, u_input.a.x, 0i, -13372i), vec4<i32>(u_input.d.x, -54903i, 2147483647i, 1i), vec4<i32>(u_input.d.x, 25324i, 33649i, u_input.d.x)), select(u_input.d, u_input.d, vec2<bool>(true, false)))), select(vec2<bool>(true, true), vec2<bool>(!any(vec4<bool>(false, true, false, true)), all(vec3<bool>(true, false, false))), select(vec2<bool>(true, any(vec3<bool>(true, false, false))), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, true), false), false), func_2(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, false, false, false)), 104123u).a.x)), false, _wgslsmith_clamp_u32(0u >> (firstTrailingBit(u_input.b >> (u_input.e.x % 32u)) % 32u), ~0u, _wgslsmith_dot_vec4_u32(max(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.b, u_input.e.x), u_input.e), ~u_input.e), u_input.e)));
    let var_2 = func_2(select(func_4(func_2(vec2<bool>(true, true), vec2<bool>(false, false), var_1.a.x, _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.c)), global0[_wgslsmith_index_u32(u_input.c, 13u)]), var_1.a, vec2<bool>(true, true)), !(!var_1.a), all(!select(select(vec4<bool>(false, true, false, var_1.a.x), vec4<bool>(false, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(true, var_1.a.x, var_1.a.x, false)), !vec4<bool>(var_1.a.x, var_1.a.x, false, false), any(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x)))), u_input.b);
    let var_3 = vec3<u32>(min(u_input.b, _wgslsmith_dot_vec3_u32(u_input.e.xxz, vec3<u32>(~4294967295u, ~4294967295u, u_input.b))), u_input.e.x, 0u);
    var var_4 = func_2(var_1.a, vec2<bool>(all(select(vec3<bool>(false, var_2.a.x, false), !vec3<bool>(var_1.a.x, var_2.a.x, var_2.a.x), true)), any(var_2.a)), any(vec3<bool>(34282u != var_3.x, func_2(var_2.a, vec2<bool>(true, true), false, ~var_3.x).a.x, true)), 1u);
    var var_5 = func_2(var_4.a, select(vec2<bool>(any(vec4<bool>(var_4.a.x, false, true, false)), reverseBits(var_1.b.x) < 17131i), !var_1.a, select(true, true, all(vec4<bool>(true, var_1.a.x, var_4.a.x, true)))), var_2.a.x, _wgslsmith_sub_u32(~(79143u >> (~var_3.x % 32u)), ~var_3.x));
    var var_6 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_5.c, vec2<i32>(var_4.c.x, var_4.b.x)), func_2(var_1.a, vec2<bool>(var_5.a.x, false), true, var_3.x).b.yz))));
}

