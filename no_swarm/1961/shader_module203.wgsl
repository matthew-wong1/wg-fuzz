struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 31>;

var<private> global1: vec2<bool>;

var<private> global2: array<u32, 31> = array<u32, 31>(0u, 0u, 4294967295u, 51719u, 23436u, 0u, 0u, 47904u, 4294967295u, 90401u, 20354u, 0u, 73242u, 28892u, 33619u, 4294967295u, 6833u, 1u, 28769u, 1u, 0u, 11039u, 43996u, 0u, 48684u, 18836u, 0u, 4294967295u, 11202u, 118591u, 4294967295u);

var<private> global3: array<bool, 18> = array<bool, 18>(false, true, true, true, true, true, true, false, true, false, true, true, false, false, true, false, true, true);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_3(Struct_2(vec4<i32>(u_input.c, 44739i, i32(-1i) * -2147483647i, -u_input.c ^ 0i), Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(9827i, u_input.c, u_input.c, u_input.c), vec4<i32>(8175i, 1i, 46358i, u_input.c)), ~vec4<i32>(u_input.c, -2147483647i, 2147483647i, u_input.c)), 713f, 1i, ~vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 31u)], 0u, u_input.e.x, global2[_wgslsmith_index_u32(0u, 31u)]), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43241u, 31u)], 31u)] >> (~15025u % 32u)), ~_wgslsmith_mod_u32(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)]), ~u_input.c), 10881i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1006f, _wgslsmith_f_op_f32(ceil(-605f))))), 1000f);
    global2 = array<u32, 31>();
    var_0 = Struct_3(Struct_2(_wgslsmith_mod_vec4_i32(var_0.a.b.a, var_0.a.b.a), var_0.a.b, 0u, ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(15943i, u_input.c), vec2<i32>(var_0.b, u_input.c)))), countOneBits(u_input.c), var_0.a.b.b, -813f);
    global2 = array<u32, 31>();
    global3 = array<bool, 18>();
    return ~(abs(vec4<u32>(52052u, var_0.a.b.d.x, 4294967295u, 0u)) >> (_wgslsmith_div_vec4_u32(reverseBits(var_0.a.b.d), var_0.a.b.d) % vec4<u32>(32u))) & var_0.a.b.d;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-330f, _wgslsmith_f_op_f32(f32(-1f) * -1180f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(628f + -660f)))));
    let var_1 = ~vec4<u32>(u_input.e.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(20065u, 15679u, u_input.d.x, 148607u), ~vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 31u)], u_input.b.x, u_input.e.x, 4294967295u)), 31u)], firstLeadingBit(~global2[_wgslsmith_index_u32(68249u, 31u)]), 4294967295u) & _wgslsmith_mult_vec4_u32(reverseBits(~vec4<u32>(u_input.d.x, global2[_wgslsmith_index_u32(74985u, 31u)], 4294967295u, 4294967295u)), abs(reverseBits(~vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(0u, 31u)], u_input.b.x, u_input.e.x))));
    var var_2 = _wgslsmith_mod_u32(~u_input.b.x, var_1.x);
    var var_3 = Struct_3(Struct_2(~(-vec4<i32>(1i, u_input.c, -2147483647i, u_input.c)), Struct_1(abs(vec4<i32>(26429i, 40727i, 0i, u_input.c)), -1177f, u_input.c, func_3() >> (_wgslsmith_clamp_vec4_u32(var_1, vec4<u32>(1u, global2[_wgslsmith_index_u32(1u, 31u)], var_1.x, 0u), var_1) % vec4<u32>(32u)), ~u_input.e.x), 4294967295u, u_input.c), _wgslsmith_mult_i32(~u_input.c, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 14676i, 18705i, 1i) ^ vec4<i32>(377i, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, 0i, u_input.c, 0i))), _wgslsmith_f_op_f32(1937f - var_0.x), var_0.x);
    var var_4 = var_3.a.b.d.xy;
    return var_3.a.b;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> vec2<i32> {
    global3 = array<bool, 18>();
    var var_0 = Struct_2(vec4<i32>(1i, select(-1883i, ~u_input.c, all(select(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.e.x, 18u)], false, true), vec4<bool>(global1.x, false, global3[_wgslsmith_index_u32(75616u, 18u)], global3[_wgslsmith_index_u32(arg_2.d.x, 18u)]), vec4<bool>(false, global1.x, global1.x, global1.x)))), u_input.c, u_input.c), arg_2, arg_0, _wgslsmith_sub_i32(_wgslsmith_sub_i32(abs(countOneBits(u_input.c)), _wgslsmith_mult_i32(arg_2.c, arg_2.a.x)), 1i));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(596f)))) - _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, arg_2.b), _wgslsmith_f_op_f32(561f * arg_1))))), -681f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-458f - _wgslsmith_f_op_f32(floor(337f)))), var_0.b.b)));
    var var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e.x, 1u, max(abs(100475u), 61056u | arg_0)) << (var_0.b.d.wyz % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(76767u, min(arg_2.e, 22161u) & (u_input.d.x & 4294967295u), 21773u), ~vec3<u32>(min(arg_2.d.x, global2[_wgslsmith_index_u32(arg_0, 31u)]), ~arg_2.d.x, global2[_wgslsmith_index_u32(arg_0, 31u)] >> (0u % 32u))));
    var var_3 = (_wgslsmith_dot_vec4_i32(arg_2.a, arg_2.a) == 7067i) | false;
    return firstLeadingBit(vec2<i32>(firstTrailingBit(var_0.b.a.x), u_input.c & -_wgslsmith_sub_i32(1i, u_input.c)));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: i32, arg_3: i32) -> Struct_2 {
    let var_0 = abs((-arg_0.yx ^ reverseBits(vec2<i32>(arg_2, 0i))) & -func_4(max(57401u, u_input.b.x), _wgslsmith_f_op_f32(-771f - 765f), func_2()));
    global1 = vec2<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(636f))), _wgslsmith_f_op_f32(ceil(-1384f)))) != 1f, any(global0[_wgslsmith_index_u32(4294967295u, 31u)]));
    let var_1 = vec4<i32>(arg_3, -select(-6794i, _wgslsmith_mod_i32(arg_0.x, arg_2), 12580i < u_input.c) | arg_3, arg_2, countOneBits(14370i));
    let var_2 = Struct_2(_wgslsmith_mod_vec4_i32(var_1, _wgslsmith_div_vec4_i32(-reverseBits(vec4<i32>(2147483647i, arg_3, 14099i, 8582i)), vec4<i32>(arg_3, arg_2, 0i, arg_2))), Struct_1(var_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1276f, func_2().b)))), u_input.c, ~(vec4<u32>(global2[_wgslsmith_index_u32(u_input.e.x, 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 31u)], 31u)], 13114u, u_input.a) >> (vec4<u32>(0u, global2[_wgslsmith_index_u32(u_input.a, 31u)], u_input.d.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)]) % vec4<u32>(32u))) << ((~vec4<u32>(140989u, global2[_wgslsmith_index_u32(10892u, 31u)], 79133u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(77893u, 31u)], 31u)]) << (_wgslsmith_sub_vec4_u32(vec4<u32>(27796u, 44564u, global2[_wgslsmith_index_u32(39666u, 31u)], 4294967295u), vec4<u32>(u_input.a, u_input.a, global2[_wgslsmith_index_u32(73010u, 31u)], u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(min(global2[_wgslsmith_index_u32(u_input.d.x, 31u)], 3572u), 1u), ~(~global2[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(20779u, 31u)] | u_input.a, u_input.d.x & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e.x, 31u)], 31u)]))), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(abs(min(~0u, 1u)), 31u)], 31u)], -_wgslsmith_mod_i32(1i << (countOneBits(17776u) % 32u), arg_0.x));
    let var_3 = countOneBits(_wgslsmith_div_vec4_u32(var_2.b.d, var_2.b.d));
    return Struct_2(var_1 & _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_2.a.x, arg_2), var_0.x, _wgslsmith_clamp_i32(0i, -5961i, var_1.x), _wgslsmith_add_i32(25633i, -2147483647i)), var_2.a), Struct_1(~vec4<i32>(_wgslsmith_clamp_i32(var_0.x, var_0.x, arg_2), _wgslsmith_mod_i32(0i, arg_0.x), -var_0.x, ~0i), var_2.b.b, var_0.x, _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(var_2.b.d, vec4<u32>(1u, u_input.b.x, 39225u, 20467u)), ~vec4<u32>(59597u, var_2.c, u_input.a, 24630u)) << (~min(var_2.b.d, var_3) % vec4<u32>(32u)), min(func_2().d.x, ~global2[_wgslsmith_index_u32(u_input.b.x ^ 49917u, 31u)])), ~_wgslsmith_mult_u32(var_3.x, 4294967295u), ~_wgslsmith_mod_i32(arg_0.x, func_4(~4294967295u, _wgslsmith_f_op_f32(step(var_2.b.b, -222f)), Struct_1(var_2.a, 146f, u_input.c, vec4<u32>(24857u, var_3.x, 115025u, global2[_wgslsmith_index_u32(var_3.x, 31u)]), 12010u)).x));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: vec2<f32>) -> vec2<bool> {
    global0 = array<vec2<bool>, 31>();
    return vec2<bool>(true, global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_1.c, arg_1.b.d.x), 1u), 12909u), 18u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!select(!select(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)], false), !vec2<bool>(global1.x, global1.x), vec2<bool>(true, true)));
    var var_0 = global3[_wgslsmith_index_u32(75045u, 18u)];
    var var_1 = ~(select(~vec4<u32>(u_input.a, 0u, u_input.a, 15162u) & vec4<u32>(1u, u_input.d.x, u_input.b.x, 0u), vec4<u32>(18309u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(51034u, 31u)], 31u)], global2[_wgslsmith_index_u32(u_input.b.x, 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47295u, 31u)], 31u)]) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 33850u, global2[_wgslsmith_index_u32(0u, 31u)], 31907u), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], 42744u, 0u, 0u)), select(vec4<bool>(true, false, global3[_wgslsmith_index_u32(0u, 18u)], global3[_wgslsmith_index_u32(u_input.d.x, 18u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 18u)], true, true, false), vec4<bool>(false, global1.x, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 31u)], 18u)], true), global3[_wgslsmith_index_u32(u_input.e.x, 18u)]), vec4<bool>(false, false, false, false))) ^ (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, 0u, 21767u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(55965u, 31u)], 31u)], u_input.b.x, 0u)) ^ _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 31u)], 31u)], 31u)], 31u)], u_input.a, 2976u), vec4<u32>(4294967295u, 1u, u_input.a, u_input.e.x)), vec4<u32>(0u, u_input.a, 0u, u_input.e.x) << (vec4<u32>(u_input.b.x, 4294967295u, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(95533u, 31u)], 31u)]) % vec4<u32>(32u)))));
    var var_2 = select(select(!func_5(_wgslsmith_sub_i32(0i, u_input.c), func_1(vec3<i32>(u_input.c, -18371i, 65064i), true, u_input.c, 1i), vec2<f32>(744f, 365f)), vec2<bool>(true, false), false), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~60681u, min(var_1.x, u_input.e.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 25480u, global2[_wgslsmith_index_u32(var_1.x, 31u)]), vec4<u32>(5966u, 1u, u_input.a, 41972u)), ~u_input.e.x), vec4<u32>(~var_1.x, global2[_wgslsmith_index_u32(var_1.x, 31u)], _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(58834u, 31u)], var_1.x), _wgslsmith_mult_u32(var_1.x, 58891u))), abs(~_wgslsmith_mult_u32(39040u, 0u)), _wgslsmith_sub_u32(u_input.d.x >> (_wgslsmith_dot_vec3_u32(var_1.xyz, vec3<u32>(u_input.e.x, var_1.x, var_1.x)) % 32u), ~var_1.x)), 31u)], true);
    global3 = array<bool, 18>();
    let var_3 = _wgslsmith_f_op_f32(521f * -962f);
    var var_4 = Struct_1(abs(~max(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, 2147483647i, -1i, u_input.c), vec4<i32>(-2573i, u_input.c, u_input.c, 26713i)), _wgslsmith_mult_vec4_i32(vec4<i32>(54707i, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.c, 1i, u_input.c)))), var_3, select(~countOneBits(u_input.c), ~27233i, true), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(0u, 31u)] >> (global2[_wgslsmith_index_u32(4294967295u, 31u)] % 32u), ~59603u, abs(0u)), ~(~vec4<u32>(var_1.x, 42182u, u_input.d.x, global2[_wgslsmith_index_u32(46525u, 31u)]))), func_3()), global2[_wgslsmith_index_u32(~reverseBits(~60064u) & global2[_wgslsmith_index_u32(2919u, 31u)], 31u)]);
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.wzx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_3, var_4.b))))))), select(_wgslsmith_dot_vec4_i32(var_4.a, _wgslsmith_sub_vec4_i32(-var_4.a, var_4.a)), _wgslsmith_mod_i32(-u_input.c, ~27165i), global1.x), firstLeadingBit(67602u));
}

