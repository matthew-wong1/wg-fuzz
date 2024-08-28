struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
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

var<private> global0: u32;

var<private> global1: array<i32, 18> = array<i32, 18>(-15612i, i32(-2147483648), -41570i, 23784i, 19969i, 46993i, 0i, 31794i, 1i, 0i, 19986i, -1i, -22468i, 0i, 6830i, 0i, -1i, 2147483647i);

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(false, Struct_1(vec3<f32>(1160f, -2382f, -1256f)), -181f), Struct_2(true, Struct_1(vec3<f32>(-476f, 325f, -530f)), 550f), Struct_2(false, Struct_1(vec3<f32>(291f, -1278f, -214f)), 183f), Struct_2(false, Struct_1(vec3<f32>(-434f, 942f, -377f)), 125f), Struct_2(false, Struct_1(vec3<f32>(1697f, 1260f, -1192f)), 453f), Struct_2(false, Struct_1(vec3<f32>(898f, 1000f, -642f)), -842f), Struct_2(true, Struct_1(vec3<f32>(923f, -1845f, -223f)), 1000f), Struct_2(false, Struct_1(vec3<f32>(407f, 218f, 849f)), -1788f), Struct_2(false, Struct_1(vec3<f32>(-536f, -425f, 1400f)), -961f), Struct_2(false, Struct_1(vec3<f32>(-1000f, 1572f, 325f)), -1000f), Struct_2(false, Struct_1(vec3<f32>(216f, 163f, -727f)), 803f), Struct_2(true, Struct_1(vec3<f32>(710f, -533f, 235f)), -312f), Struct_2(true, Struct_1(vec3<f32>(345f, 170f, 159f)), 553f), Struct_2(true, Struct_1(vec3<f32>(-753f, 1698f, 386f)), -1976f), Struct_2(false, Struct_1(vec3<f32>(945f, -551f, -227f)), -907f), Struct_2(false, Struct_1(vec3<f32>(1000f, -1065f, 836f)), 851f));

var<private> global3: vec4<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<u32> {
    global3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(938f, global3.x) + _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(select(global3.x, -140f, true))), global3.x, global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(653f - _wgslsmith_f_op_f32(-450f - global3.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, _wgslsmith_f_op_f32(trunc(-1918f)), _wgslsmith_f_op_f32(-global3.x), global3.x) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-201f, global3.x, _wgslsmith_f_op_f32(trunc(1593f)), _wgslsmith_f_op_f32(521f - global3.x))))));
    global2 = array<Struct_2, 16>();
    var var_0 = any(vec3<bool>(!((59681i ^ global1[_wgslsmith_index_u32(u_input.c, 18u)]) <= ~(-16524i)), !(!all(vec2<bool>(false, true))), (u_input.c ^ ~17412u) == u_input.c));
    var var_1 = ~(~(-global1[_wgslsmith_index_u32(~u_input.c, 18u)]));
    let var_2 = ~select(firstLeadingBit(~abs(vec3<u32>(u_input.c, 0u, u_input.c))), vec3<u32>(u_input.c, 0u, 4294967295u), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, false))));
    return var_2.yz;
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = Struct_3(vec2<bool>(true, !(!arg_0) | any(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0), arg_3.a))), Struct_2(true, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(-1310f, global3.x, arg_3.a)), _wgslsmith_f_op_f32(select(arg_1.x, -212f, false)), _wgslsmith_f_op_f32(max(global3.x, arg_3.c)))), -2731f));
    var var_1 = _wgslsmith_f_op_f32(floor(arg_3.b.a.x));
    let var_2 = 1u;
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1752f, _wgslsmith_f_op_f32(select(arg_3.c, global3.x, false))) * 389f)), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-229f + -2082f)))), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1514f - arg_1.x))) + _wgslsmith_div_f32(-1079f, 2210f)));
    var var_3 = abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.c, u_input.c, ~u_input.c), 25066u, var_2, select(arg_2.x, 1u, select(arg_0, var_0.a.x, arg_0))), select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 28941u, arg_2.x), vec4<u32>(var_2, var_2, var_2, u_input.c)), vec4<u32>(arg_2.x, arg_2.x, u_input.c, 0u) ^ vec4<u32>(0u, arg_2.x, arg_2.x, 1u), select(vec4<bool>(true, arg_3.a, arg_0, true), vec4<bool>(arg_3.a, arg_0, false, false), true)) >> (countOneBits(vec4<u32>(39557u, u_input.c, 1u, arg_2.x)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(0u), u_input.c), ~76730u, ~(~arg_2.x), ~(53652u | arg_2.x))));
    return vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, _wgslsmith_mult_u32(79165u, ~u_input.c)), 18u)] << (arg_2.x % 32u));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    var var_0 = 4294967295u & u_input.c;
    var var_1 = func_4(true, arg_3.b.a.xy, _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 23209u), vec2<u32>(u_input.c, u_input.c)), func_3()), ~vec2<u32>(23561u, u_input.c)), firstLeadingBit(~abs(vec2<u32>(u_input.c, 68770u)))), global2[_wgslsmith_index_u32(17933u ^ ~_wgslsmith_mod_u32(~u_input.c, u_input.c), 16u)]);
    var var_2 = select(!arg_1.wxz, select(select(!vec3<bool>(arg_2.a.x, false, arg_1.x), arg_1.wyw, vec3<bool>(all(arg_2.a), arg_2.b.b.a.x == 1000f, -1i >= var_1.x)), vec3<bool>(false, any(select(arg_1.yyz, vec3<bool>(arg_0, false, true), arg_1.xzy)), arg_0), !vec3<bool>(true, false, any(arg_1))), vec3<bool>(any(vec3<bool>(arg_3.a, all(vec3<bool>(false, false, false)), all(arg_2.a))), arg_1.x, arg_0));
    var_0 = 1u;
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, arg_2.b.c, -1678f, 507f), vec4<f32>(global3.x, arg_2.b.c, 1846f, arg_3.b.a.x), false)) * vec4<f32>(arg_3.b.a.x, 292f, arg_3.c, global3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.a.x, arg_3.c, -487f, 276f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-972f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.b.a.x))))));
}

fn func_1() -> vec2<f32> {
    let var_0 = 3047u >= u_input.c;
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-167f, -1646f, _wgslsmith_f_op_f32(f32(-1f) * -133f), global3.x) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(abs(global3.x)), global3.x, _wgslsmith_f_op_f32(-global3.x), global3.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.x, global3.x, global3.x, -1589f)))))));
    global3 = vec4<f32>(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(193f)) * 174f)), -1161f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true, vec4<bool>(var_0, false, true, true), Struct_3(vec2<bool>(true, true), global2[_wgslsmith_index_u32(1u, 16u)]), global2[_wgslsmith_index_u32(u_input.c, 16u)])))) - _wgslsmith_f_op_f32(404f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1399f - 187f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -344f), global3.x));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~(~(~0u))), u_input.c, _wgslsmith_div_u32(~u_input.c, 84135u)), 16u)];
    let var_2 = vec3<u32>(max(1u, 1933u), 0u, select(_wgslsmith_sub_u32(0u, u_input.c) >> (u_input.c % 32u), 1u, true));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -544f), var_1.c), vec2<f32>(_wgslsmith_f_op_f32(var_1.c + 677f), -590f))), vec2<f32>(-419f, 1f))) - var_1.b.a.zy);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: u32) -> vec4<u32> {
    global2 = array<Struct_2, 16>();
    let var_0 = vec4<i32>(-(~(_wgslsmith_mult_i32(u_input.a, -2147483647i) & 1i)), -min(min(-47630i, -34599i), u_input.b.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, global1[_wgslsmith_index_u32(13677u, 18u)], -11919i, u_input.a) << (vec4<u32>(u_input.c, 3564u, u_input.c, 31125u) % vec4<u32>(32u)), vec4<i32>(global1[_wgslsmith_index_u32(0u, 18u)], -1i, global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)])), _wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.d.x, 7165i, 15893i, u_input.d.x), vec4<i32>(u_input.d.x, -3735i, u_input.a, -1i), vec4<bool>(arg_1.a.x, true, false, arg_1.b.a)), vec4<i32>(27131i, -46287i, 1i, global1[_wgslsmith_index_u32(u_input.c, 18u)]) ^ vec4<i32>(2147483647i, -10465i, global1[_wgslsmith_index_u32(0u, 18u)], u_input.d.x))), vec4<i32>(global1[_wgslsmith_index_u32(~u_input.c, 18u)], global1[_wgslsmith_index_u32(~(~u_input.c), 18u)], 2147483647i, reverseBits(global1[_wgslsmith_index_u32(2767u, 18u)] << (4294967295u % 32u)))), 0i);
    var var_1 = _wgslsmith_dot_vec4_u32(~(~(~(~vec4<u32>(30480u, arg_3, 1u, u_input.c)))), min(abs(~(~vec4<u32>(0u, u_input.c, 0u, u_input.c))), vec4<u32>(min(~u_input.c, ~u_input.c), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(13541u, u_input.c, 3739u)), ~vec3<u32>(u_input.c, arg_3, arg_3)), ~61850u << (arg_3 % 32u), ~(~arg_3))));
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x * arg_0.x))), _wgslsmith_f_op_vec2_f32(func_1()).x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(618f, 262f, 283f, arg_1.b.c), vec4<f32>(arg_0.x, 200f, 134f, 236f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(487f, 1377f, 735f, global3.x))) - vec4<f32>(_wgslsmith_f_op_f32(step(-1314f, arg_1.b.c)), _wgslsmith_f_op_f32(func_2(true, vec4<bool>(arg_1.b.a, arg_1.a.x, true, arg_1.b.a), arg_1, Struct_2(false, Struct_1(global3.wxy), -362f))), -397f, _wgslsmith_f_op_f32(sign(arg_0.x))))));
    let var_2 = _wgslsmith_mod_vec2_i32(var_0.yz, ~(~vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.wx, u_input.d.zx), -14i)));
    return ~(~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 13794u, u_input.c, 85435u) ^ vec4<u32>(1u, u_input.c, u_input.c, 4294967295u), select(vec4<u32>(u_input.c, arg_3, arg_3, 0u), vec4<u32>(u_input.c, 1u, 4294967295u, arg_3), arg_1.b.a)), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_3, 24057u, 0u, u_input.c), vec4<u32>(arg_3, u_input.c, arg_3, arg_3))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1105f, global3.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -260f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.x)) * _wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -432f)));
    let var_1 = all(!vec4<bool>(true, false | all(vec4<bool>(true, false, true, false)), true, !any(vec3<bool>(false, false, true))));
    var var_2 = 0i;
    let var_3 = ((var_1 || var_1) && var_1) & (_wgslsmith_sub_u32(5940u, 1754u) < u_input.c);
    var var_4 = _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c << (_wgslsmith_div_u32(u_input.c, u_input.c) % 32u), ~_wgslsmith_div_u32(select(u_input.c, u_input.c, false), abs(22863u)), u_input.c, u_input.c), ~(firstTrailingBit(max(vec4<u32>(0u, u_input.c, 1u, 9953u), vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c))) << (func_5(_wgslsmith_f_op_vec2_f32(func_1()), Struct_3(vec2<bool>(true, false), global2[_wgslsmith_index_u32(u_input.c, 16u)]), vec2<f32>(1f, 1f), 4294967295u) % vec4<u32>(32u))));
    var var_5 = abs(~vec4<u32>(1u, 0u, u_input.c, ~54000u ^ ~u_input.c));
    global0 = ~54709u;
    var_2 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

