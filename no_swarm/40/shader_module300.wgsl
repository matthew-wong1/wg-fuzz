struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12>;

var<private> global1: array<Struct_3, 6>;

var<private> global2: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(Struct_1(-721f, 1000f), 1u), Struct_3(Struct_1(648f, -1860f), 14378u), Struct_3(Struct_1(355f, -1000f), 49314u), Struct_3(Struct_1(-1000f, 893f), 1037u), Struct_3(Struct_1(1000f, -294f), 0u), Struct_3(Struct_1(1687f, 1000f), 0u), Struct_3(Struct_1(-312f, 1000f), 0u), Struct_3(Struct_1(780f, 554f), 36734u), Struct_3(Struct_1(1331f, -1793f), 4232u), Struct_3(Struct_1(-168f, 440f), 2190u), Struct_3(Struct_1(1159f, -1021f), 1u), Struct_3(Struct_1(1000f, 456f), 4294967295u), Struct_3(Struct_1(-772f, 682f), 15564u), Struct_3(Struct_1(646f, -2380f), 1u), Struct_3(Struct_1(1891f, 2292f), 6452u));

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(1000f, 994f), Struct_1(-1009f, 1006f), Struct_1(2146f, 958f), Struct_1(-641f, -636f), Struct_1(665f, -254f), Struct_1(331f, 1209f), Struct_1(-1329f, 1000f), Struct_1(-2642f, 1321f), Struct_1(815f, 483f), Struct_1(2921f, -1343f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> f32 {
    let var_0 = ~31274u;
    var var_1 = ~u_input.a.x;
    global1 = array<Struct_3, 6>();
    var_1 = u_input.a.x << ((countOneBits(var_0) | 1u) % 32u);
    let var_2 = select(select(u_input.b, vec3<i32>(~reverseBits(0i), -(u_input.b.x | 2147483647i), ~(-20370i << (var_0 % 32u))), false), firstTrailingBit(u_input.b), !(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1587f), -673f))), -466f)));
}

fn func_3() -> bool {
    var var_0 = global0[_wgslsmith_index_u32(0u, 12u)];
    let var_1 = 34119u;
    var var_2 = 45479u;
    var var_3 = -52162i;
    let var_4 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false))));
    return false;
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = !all(select(vec3<bool>(all(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), true), vec3<bool>(true, all(vec2<bool>(false, false)), true), true));
    var var_1 = _wgslsmith_f_op_f32(func_2());
    var_0 = true & func_3();
    global3 = array<Struct_1, 10>();
    let var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -406f) - _wgslsmith_f_op_f32(func_2()))), 435f, _wgslsmith_f_op_f32(round(-330f))), vec3<f32>(-603f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -232f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-429f)) - _wgslsmith_f_op_f32(func_2())) - _wgslsmith_f_op_f32(562f + -775f)))));
    return Struct_2(u_input.b.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-var_2.x)) + 1450f), -436f), _wgslsmith_div_vec3_u32(u_input.a.zyy, vec3<u32>(u_input.a.x << (11188u % 32u), firstLeadingBit(u_input.a.x), ~26435u) << (_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 25433u), vec3<u32>(34915u, u_input.a.x, 105633u), u_input.a.yzy), vec3<u32>(u_input.a.x, 4294967295u, 34846u)) % vec3<u32>(32u))), !func_3());
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> Struct_2 {
    return Struct_2(abs(arg_1.a), func_1(abs(-(~vec3<i32>(arg_2, 2147483647i, 57299i)))).b, abs(u_input.a.wwz >> ((~vec3<u32>(arg_1.c.x, 43251u, 0u) & ~vec3<u32>(arg_1.c.x, arg_1.c.x, u_input.a.x)) % vec3<u32>(32u))), true);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    let var_0 = func_1(abs(select(u_input.b, ~u_input.b, arg_1.d)) | vec3<i32>(_wgslsmith_div_i32(u_input.b.x << (0u % 32u), u_input.b.x), _wgslsmith_div_i32(~46501i, u_input.b.x), _wgslsmith_add_i32(arg_1.a, -1i) >> (u_input.a.x % 32u))).a;
    var var_1 = countOneBits(firstLeadingBit(firstLeadingBit(u_input.b)));
    global2 = array<Struct_3, 15>();
    var var_2 = ~u_input.b.x;
    global0 = array<Struct_3, 12>();
    return func_1(_wgslsmith_div_vec3_i32(vec3<i32>(-(~(-36659i)), _wgslsmith_add_i32(13720i, 73635i), var_1.x), _wgslsmith_div_vec3_i32(~u_input.b, u_input.b & vec3<i32>(var_0, 1i, -35865i)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.b.x >> (~(~50880u) % 32u), func_5(func_4(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], func_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 0i, 2147483647i), u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i))), _wgslsmith_dot_vec2_i32(u_input.b.xx, u_input.b.xy), func_1(max(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))).b.b), func_4(global3[_wgslsmith_index_u32(~(u_input.a.x | u_input.a.x), 10u)], Struct_2(i32(-1i) * -2147483647i, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 49966u, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), 10u)], u_input.a.wyy, func_3()), reverseBits(1i), -655f), global1[_wgslsmith_index_u32((select(u_input.a.x, 0u, true) >> (reverseBits(u_input.a.x) % 32u)) ^ 48795u, 6u)]), vec3<u32>(abs(func_4(Struct_1(478f, -393f), func_1(vec3<i32>(u_input.b.x, u_input.b.x, -24256i)), 1i, -391f).c.x), ~(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x)), u_input.a.x), -1216f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1060f)))));
    var var_1 = func_5(var_0, var_0, Struct_3(func_5(var_0, func_1(u_input.b), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.a.xwz, u_input.a.zyy), 6u)]), 1u));
    var var_2 = func_1(reverseBits(~vec3<i32>(24614i, select(var_0.a, var_0.a, var_0.d), func_4(global3[_wgslsmith_index_u32(0u, 10u)], Struct_2(var_0.a, var_0.b, vec3<u32>(u_input.a.x, u_input.a.x, var_0.c.x), var_0.d), u_input.b.x, 374f).a))).b;
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(724f, var_0.b.a, _wgslsmith_f_op_f32(sign(var_2.a)), -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, var_1.a, -649f, -185f) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b.a, -821f, -1060f, var_1.a)))))) - vec4<f32>(-1063f, _wgslsmith_f_op_f32(f32(-1f) * -167f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1000f)), -1000f)), _wgslsmith_f_op_f32(-228f + 450f))), vec4<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -275f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a * -466f)), _wgslsmith_f_op_f32(var_0.b.b + func_4(func_5(var_0, var_0, global1[_wgslsmith_index_u32(1u, 6u)]), Struct_2(-11741i, Struct_1(-612f, -1000f), vec3<u32>(0u, var_0.c.x, 0u), true), max(31740i, 19717i), 1966f).b.a), 178f), _wgslsmith_add_i32(_wgslsmith_add_i32(-5470i, u_input.b.x) | var_0.a, -28453i) >= countOneBits(-2147483647i)));
    var_1 = func_5(var_0, Struct_2(~var_0.a, global3[_wgslsmith_index_u32(min(abs(u_input.a.x), ~u_input.a.x), 10u)], vec3<u32>(_wgslsmith_div_u32(~u_input.a.x, 4294967295u), var_0.c.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 61757u, 4294967295u), u_input.a) % 32u), _wgslsmith_clamp_u32(var_0.c.x, u_input.a.x, var_0.c.x) & ~873u), var_0.d), global0[_wgslsmith_index_u32(~0u, 12u)]);
    var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a)))), 1498f, _wgslsmith_f_op_f32(-757f + var_2.b), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a) * _wgslsmith_f_op_f32(max(234f, 754f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.x, var_3.x))))), _wgslsmith_div_vec2_i32(u_input.b.yz ^ u_input.b.xz, vec2<i32>(-var_0.a, _wgslsmith_add_i32(var_0.a, func_1(vec3<i32>(25168i, u_input.b.x, var_0.a)).a))), i32(-1i) * -1i, u_input.b, -47085i);
}

