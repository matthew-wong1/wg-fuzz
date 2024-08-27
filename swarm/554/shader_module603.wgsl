struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(0i, -3451i, -49858i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), 15327i, 0i), vec3<i32>(13251i, 2147483647i, 0i), vec3<i32>(1i, 8833i, 1i), vec3<i32>(65866i, -1i, 1792i), vec3<i32>(-29793i, 9715i, 14110i), vec3<i32>(1i, 2147483647i, -5111i), vec3<i32>(-1i, 11924i, 37746i), vec3<i32>(-20997i, 21544i, -42043i), vec3<i32>(35572i, -5616i, 11601i), vec3<i32>(2147483647i, 16189i, 1i), vec3<i32>(-18956i, 0i, -41225i), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(-23322i, -25757i, 2147483647i), vec3<i32>(26731i, 2147483647i, -19368i), vec3<i32>(-1i, 1812i, 21522i), vec3<i32>(-1i, 26238i, 23770i), vec3<i32>(10058i, -32821i, 2147483647i), vec3<i32>(-39088i, -1i, i32(-2147483648)), vec3<i32>(2147483647i, 6807i, -15137i), vec3<i32>(39991i, 0i, -23742i), vec3<i32>(0i, 2147483647i, -12708i), vec3<i32>(16472i, 2147483647i, 45597i), vec3<i32>(2147483647i, 11188i, 1i), vec3<i32>(2147483647i, 13197i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 11751i, -1i), vec3<i32>(113361i, -1i, i32(-2147483648)), vec3<i32>(0i, 11260i, 2147483647i), vec3<i32>(51386i, -13806i, 2147483647i), vec3<i32>(8894i, 23798i, -1i));

var<private> global1: array<Struct_1, 4>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> vec4<u32> {
    let var_0 = ~0u;
    global1 = array<Struct_1, 4>();
    global0 = array<vec3<i32>, 31>();
    global1 = array<Struct_1, 4>();
    var var_1 = global1[_wgslsmith_index_u32(var_0, 4u)];
    return min(~countOneBits(var_1.a), ~vec4<u32>(~(var_1.d.x & var_0), 0u, 0u, var_1.b));
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = Struct_1(func_3(_wgslsmith_sub_vec2_i32(vec2<i32>(countOneBits(u_input.a.x), -1i & u_input.b.x), u_input.a.xy)), 55620u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1887f, -112f, 1241f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -137f), _wgslsmith_f_op_f32(min(2034f, -564f)), _wgslsmith_f_op_f32(-825f - 427f)))), select(countOneBits(~vec2<u32>(52671u, 1u)), func_3(~(~u_input.b)).wz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1045f), _wgslsmith_f_op_f32(select(-1000f, 1264f, true))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(924f - 104f), -1048f)), vec3<bool>(false, all(vec3<bool>(true, true, true)), !(u_input.b.x >= u_input.b.x)));
    let var_1 = select(var_0.e, !select(var_0.e, select(vec3<bool>(false, true, var_0.e.x), !var_0.e, select(vec3<bool>(var_0.e.x, var_0.e.x, false), vec3<bool>(var_0.e.x, var_0.e.x, true), var_0.e)), var_0.e), vec3<bool>(var_0.e.x, any(vec2<bool>(var_0.e.x, var_0.e.x)), false));
    global0 = array<vec3<i32>, 31>();
    var var_2 = Struct_1(abs(var_0.a), var_0.b, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), -1638f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1332f, 1492f, false))))))), ~((~var_0.a.wz | var_0.d) ^ var_0.d), var_0.e);
    var var_3 = Struct_1(var_0.a, var_0.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.c))))), min(~(var_2.a.xy << (var_0.a.zy % vec2<u32>(32u))), firstTrailingBit(var_0.a.zw)), var_1);
    return ~abs(min(min(37005u, var_3.a.x), var_0.a.x) << (1u % 32u));
}

fn func_1() -> u32 {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(~func_2(-63678i), ~20353u, func_2(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(27622u, 31u)], vec3<i32>(u_input.b.x, u_input.a.x, 2147483647i))), 1u), ~vec4<u32>(22068u, 3540u, 25136u, 0u) << (vec4<u32>(121435u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 716u), vec2<u32>(64721u, 18541u)), 15122u, 1u) % vec4<u32>(32u))), 65770u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(811f, _wgslsmith_f_op_f32(select(262f, -308f, false)), -564f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(288f, -2613f, 1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-507f, 1483f, -234f) - vec3<f32>(-546f, 2286f, 611f))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(false, true, false))))), select(~min(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 30500u), vec2<u32>(1530u, 33503u)), vec2<u32>(0u, 1u)), vec2<u32>(~82699u, max(_wgslsmith_clamp_u32(1u, 43254u, 31685u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 2009u, 56059u), vec3<u32>(0u, 108862u, 49215u)))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), all(vec3<bool>(false, false, false)))), select(vec3<bool>(true, select(false, true, true) == false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), vec3<bool>(true, true, true)));
    global1 = array<Struct_1, 4>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2269f, var_0.c.x, var_0.c.x, var_0.c.x))))))));
    let var_2 = -370f == var_0.c.x;
    let var_3 = var_0;
    return var_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 6031u;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1230f, -1711f, 1166f, 592f) + vec4<f32>(189f, -1000f, -1399f, -1265f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-228f, -998f, 2311f, -1056f)))))));
    let var_2 = _wgslsmith_f_op_f32(step(-134f, -288f));
    let var_3 = vec4<u32>(18608u, firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, ~16786u, min(11825u, 0u))) & 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, select(~18732u, 4426u, false), ~func_1()), vec4<u32>(abs(max(32935u, 49550u)), 34324u, countOneBits(41315u), 53933u)), func_2(u_input.a.x));
    var_0 = func_3((_wgslsmith_mult_vec2_i32(u_input.b, -vec2<i32>(u_input.b.x, u_input.b.x)) ^ _wgslsmith_mult_vec2_i32(-vec2<i32>(1i, u_input.b.x), vec2<i32>(2147483647i, 8732i))) << (~(~reverseBits(vec2<u32>(80243u, var_3.x))) % vec2<u32>(32u))).x;
    let var_4 = ~func_1();
    let var_5 = var_3.zw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x))), var_1.x, select(true, ~var_5.x == var_3.x, true))));
}

