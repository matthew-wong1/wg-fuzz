struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1> = array<u32, 1>(1u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1287f, _wgslsmith_f_op_f32(trunc(-989f)))) + arg_0.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-836f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + arg_0.a))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1836f, -1269f), vec2<f32>(arg_2.b.a, arg_2.c.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1049f))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a, arg_0.a), vec2<f32>(arg_2.a.a, arg_0.a), true))), all(vec3<bool>(true, true, true))))));
    var_1 = vec2<f32>(-1671f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -832f) + _wgslsmith_div_f32(-880f, 1224f)), arg_1.a, true)))));
    global0 = array<u32, 1>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-843f, arg_1.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(380f, -297f))))));
    return global0[_wgslsmith_index_u32(4294967295u, 1u)];
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>) -> i32 {
    global0 = array<u32, 1>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_0.a * 527f), 184f);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(var_0.x)), vec4<i32>(u_input.a.x, _wgslsmith_clamp_i32(58291i >> (global0[_wgslsmith_index_u32(0u, 1u)] % 32u), u_input.a.x | -66824i, u_input.a.x) | (min(u_input.a.x, u_input.a.x) >> (_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(u_input.b, 1u)]) % 32u)), _wgslsmith_mod_i32(-reverseBits(u_input.a.x), 1i), countOneBits(_wgslsmith_mod_i32(10517i, _wgslsmith_clamp_i32(-1i, 2147483647i, u_input.a.x)))), u_input.a);
    var var_2 = var_0.x;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-630f - var_1.a), _wgslsmith_div_f32(503f, _wgslsmith_div_f32(var_1.a, -1242f)))) * _wgslsmith_f_op_f32(floor(var_1.a))), firstLeadingBit(max(var_1.b, u_input.a)), var_1.c);
    return firstTrailingBit(-(~(var_1.c.x << (u_input.b % 32u)))) >> (u_input.b % 32u);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_5(vec3<u32>(min(4294967295u, u_input.b), u_input.b, ~(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 14967u), 1u)] & u_input.b)), Struct_1(arg_1.x, vec4<i32>(-(20716i | u_input.a.x), u_input.a.x, _wgslsmith_clamp_i32(arg_0.a.x, -2147483647i, arg_0.a.x), reverseBits(u_input.a.x)), u_input.a), -865f, 0u == global0[_wgslsmith_index_u32(13759u, 1u)]);
    let var_1 = !(!(!var_0.d && any(vec4<bool>(false, var_0.d, false, var_0.d))) || (var_0.d || var_0.d));
    global0 = array<u32, 1>();
    var var_2 = arg_1;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, var_2.x, var_0.d)))), vec4<i32>(countOneBits(func_3(Struct_4(var_0.c), vec3<bool>(var_0.d, var_0.d, true))), 18912i, var_0.b.c.x >> (u_input.b % 32u), 69321i), firstTrailingBit(u_input.a) << (~(~vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(4294967295u, 1u)], var_0.a.x, global0[_wgslsmith_index_u32(1256u, 1u)])) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(arg_1.x + 1161f), -(~vec4<i32>(-30695i, u_input.a.x, 3535i, u_input.a.x) | u_input.a), -u_input.a >> (vec4<u32>(_wgslsmith_sub_u32(69726u, u_input.b), ~4294967295u, ~u_input.b, var_0.a.x) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(round(var_2.x)), vec4<i32>(0i, u_input.a.x, abs(max(2147483647i, 30156i)), -u_input.a.x | (i32(-1i) * -8930i)), ~(~(-var_0.b.b))), abs(abs(-u_input.a.xz >> (countOneBits(var_0.a.yx) % vec2<u32>(32u)))));
    return Struct_1(var_3.c.a, _wgslsmith_div_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.a.yz, vec2<i32>(2147483647i, 1i)), u_input.a.zw), 1i, abs(0i)), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(0i, -2147483647i, var_0.b.b.x), _wgslsmith_mod_i32(arg_0.a.x, 2147483647i), 34054i), 1i, -1i, u_input.a.x)), -abs(var_0.b.c));
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), false), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), false)), any(!vec4<bool>(arg_0.a != arg_0.a, all(vec3<bool>(false, true, false)), true, select(false, true, false))));
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    var var_1 = abs(min(-2147483647i, abs(firstLeadingBit(i32(-1i) * -2147483647i))));
    let var_2 = Struct_3(~u_input.a.ywz);
    return func_2(Struct_3(_wgslsmith_sub_vec3_i32(u_input.a.wzw << (vec3<u32>(20144u, 4294967295u, u_input.b) % vec3<u32>(32u)), var_2.a) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(0u, 1u)], u_input.b), vec3<u32>(21164u, global0[_wgslsmith_index_u32(4294967295u, 1u)], 52971u) ^ vec3<u32>(8001u, 0u, 67943u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a, 1201f, arg_0.a), vec3<f32>(151f, -1210f, arg_0.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.a, arg_0.a, 821f), vec3<f32>(arg_0.a, arg_0.a, -1900f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-875f, -194f, arg_0.a))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-292f, arg_0.a, arg_0.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, arg_0.a) - vec3<f32>(-1038f, arg_0.a, 1899f))))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~88695u, u_input.b & 0u), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(12320u, 9285u))), ~_wgslsmith_mod_u32(46120u, _wgslsmith_div_u32(8481u, u_input.b)), 1u);
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    var var_1 = _wgslsmith_f_op_f32(912f * -542f);
    let var_2 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(501f * 2496f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(868f)), 1f)) * 443f)));
    let var_3 = countOneBits(vec4<u32>(~countOneBits(u_input.b) << (global0[_wgslsmith_index_u32(var_0.x, 1u)] % 32u), firstTrailingBit(global0[_wgslsmith_index_u32(var_0.x, 1u)] << (u_input.b % 32u)) << (10939u % 32u), 28714u, func_1(var_2, var_2, Struct_2(Struct_1(var_2.a, vec4<i32>(1i, u_input.a.x, 31851i, -2147483647i), u_input.a), Struct_1(var_2.a, vec4<i32>(-15359i, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), Struct_1(var_2.a, vec4<i32>(-38673i, u_input.a.x, u_input.a.x, -15388i), vec4<i32>(u_input.a.x, 51425i, 1i, u_input.a.x)), u_input.a.yw)) << (u_input.b % 32u)));
    var var_4 = max(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, ~(-13058i)), _wgslsmith_add_i32(47314i, abs(11932i))), func_4(func_2(Struct_3(u_input.a.yyz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(733f, var_2.a, -579f)))), abs(vec4<i32>(~u_input.a.x, _wgslsmith_sub_i32(14274i, u_input.a.x), reverseBits(u_input.a.x), func_2(Struct_3(u_input.a.yzz), vec3<f32>(var_2.a, var_2.a, var_2.a)).c.x))), u_input.a);
    var_4 = -min(vec4<i32>(~(~var_4.x), 0i, 2147483647i, 44799i & var_4.x), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.b, 16394u, var_3.x, 91648u), 1562f, vec4<u32>(~u_input.b & (16714u ^ _wgslsmith_dot_vec3_u32(var_0, var_0)), 0u, u_input.b, global0[_wgslsmith_index_u32(~(~var_0.x), 1u)] | select(var_0.x, u_input.b, all(vec4<bool>(true, false, false, true)))));
}

