struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: vec2<u32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: u32, arg_3: f32) -> f32 {
    var var_0 = vec4<bool>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -457f), _wgslsmith_f_op_f32(floor(134f)))) * arg_3) < _wgslsmith_f_op_f32(646f * 1309f), arg_1.x);
    var var_1 = countOneBits(firstLeadingBit(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, arg_0, -1i) >> (vec3<u32>(global1.x, 4294967295u, 0u) % vec3<u32>(32u)), vec3<i32>(arg_0, arg_0, 19459i)))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(0u & _wgslsmith_dot_vec4_u32(vec4<u32>(80977u, 0u, u_input.a, u_input.a), ~vec4<u32>(39857u, 0u, u_input.a, 45740u)), 17177u), 62682u), 21u)];
    var var_3 = var_0.zxz;
    var_2 = _wgslsmith_dot_vec3_u32(firstLeadingBit(firstTrailingBit(~(~vec3<u32>(44430u, 4294967295u, 2476u)))), select(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(arg_2, global0[_wgslsmith_index_u32(28631u, 21u)], 1u) | vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 13583u)), vec3<u32>(arg_2, arg_2, 55174u) ^ vec3<u32>(arg_2, 1u, global0[_wgslsmith_index_u32(64276u, 21u)]), ~(vec3<u32>(global1.x, 4294967295u, 79110u) | vec3<u32>(arg_2, u_input.a, global0[_wgslsmith_index_u32(17571u, 21u)]))), ~countOneBits(vec3<u32>(36844u, 53948u, 4294967295u)), var_0.www));
    return -103f;
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> f32 {
    var var_0 = select(!arg_0, !arg_0, false);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(227f * 1162f)) + _wgslsmith_div_f32(-1241f, _wgslsmith_f_op_f32(trunc(-1102f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2349f, -1665f) - _wgslsmith_f_op_f32(-1000f - -683f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-720f - -1618f) + _wgslsmith_f_op_f32(func_3(arg_1, arg_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 21u)], 21u)], 693f)))), 1f) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-264f, -1106f, -315f), vec3<f32>(127f, 211f, 794f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1239f, -507f, 1019f), vec3<f32>(1364f, 306f, -162f)))))));
    var var_2 = Struct_1(vec2<bool>(false, arg_0.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-2102f, var_1.x, var_1.x))) * vec3<f32>(var_1.x, -1120f, -1396f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.x, var_1.x)))), all(!vec3<bool>(var_0.x, arg_0.x, true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-1035f * var_1.x), var_1.x)))), abs(~(vec4<u32>(u_input.a, 76038u, 4294967295u, global0[_wgslsmith_index_u32(4842u, 21u)]) ^ vec4<u32>(global1.x, u_input.a, 1u, u_input.a))) | ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1u, 19164u, u_input.a) << (vec4<u32>(global0[_wgslsmith_index_u32(global1.x, 21u)], u_input.a, 0u, u_input.a) % vec4<u32>(32u)), vec4<u32>(global1.x, 0u, global0[_wgslsmith_index_u32(14605u, 21u)], 1768u)), var_1.x, true);
    var var_3 = vec2<bool>(true, true);
    let var_4 = Struct_2(select(-_wgslsmith_add_i32(-17549i, -54400i), -21247i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-7722i, arg_1, 16327i), vec3<i32>(arg_1, arg_1, 2147483647i)), (var_2.a.x && var_3.x) & all(vec3<bool>(true, false, false))) << (min(min(_wgslsmith_mod_u32(53211u, 4294967295u), 1u), ~var_2.c.x) % 32u));
    return _wgslsmith_f_op_f32(ceil(-845f));
}

fn func_1() -> Struct_1 {
    var var_0 = select(!((all(vec3<bool>(true, true, false)) || true) | (any(vec4<bool>(true, false, false, true)) && true)), _wgslsmith_f_op_f32(func_2(vec2<bool>(true, false), ~1i)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-178f - 375f))), (global0[_wgslsmith_index_u32(~abs(4294967295u), 21u)] << (select(global0[_wgslsmith_index_u32(1364u, 21u)], 1u, all(vec4<bool>(false, true, true, false))) % 32u)) > 1u);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(319f)) + _wgslsmith_div_f32(278f, -1664f)), -748f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-2219f)), _wgslsmith_f_op_f32(select(1000f, 3448f, false))), _wgslsmith_f_op_f32(abs(-200f)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -208f, var_1.x, 2110f), vec4<f32>(555f, 1252f, var_1.x, var_1.x), true)) - _wgslsmith_f_op_vec4_f32(floor(var_1))))) * var_1), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -166f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x)))))));
    let var_3 = 10760u;
    global0 = array<u32, 21>();
    return Struct_1(vec2<bool>(true, true), vec3<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(388f + -465f), _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(var_2.x + var_1.x), 437f), ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(43603u, 4294967295u), vec2<u32>(global1.x, u_input.a)), global0[_wgslsmith_index_u32(59097u, 21u)], 4294967295u, _wgslsmith_clamp_u32(4294967295u, 29704u, 3999u)) | countOneBits(vec4<u32>(var_3, u_input.a | global0[_wgslsmith_index_u32(0u, 21u)], select(4294967295u, global1.x, false), _wgslsmith_mod_u32(var_3, global0[_wgslsmith_index_u32(0u, 21u)]))), _wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_i32(i32(-1i) * -56042i, 2147483647i, abs(_wgslsmith_add_i32(2147483647i, -38816i))), vec2<bool>(true, true), ~(17762u & global1.x) >> (~global1.x % 32u), _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))))))), false);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b.x, func_1().d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d - arg_0.b.x))), vec3<f32>(_wgslsmith_f_op_f32(arg_1.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1045f))), _wgslsmith_f_op_f32(trunc(arg_1.d)), -278f), true));
    let var_1 = func_1();
    var var_2 = -1i;
    var var_3 = var_1;
    var var_4 = -vec4<i32>(~(-1i), 1i, 1i, 15131i);
    return true;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_2 {
    global0 = array<u32, 21>();
    var var_0 = !vec3<bool>(arg_0.a.x, all(vec2<bool>(any(vec3<bool>(true, arg_1.x, true)), arg_1.x)), arg_0.a.x);
    global0 = array<u32, 21>();
    var var_1 = 1i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(false, true), -2147483647i)))));
    return Struct_2(1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(abs(global0[_wgslsmith_index_u32(0u, 21u)]), ~37061u)), vec2<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 21u)], 21u)], 1u), vec2<u32>(42646u, u_input.a));
    var var_0 = func_5(Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-978f, -661f, 709f), vec3<f32>(-1199f, -1096f, -902f))))), vec4<u32>(~4294967295u, 38608u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(57694u, 21u)], 4294967295u), 21u)], u_input.a), _wgslsmith_sub_u32(74724u, _wgslsmith_mult_u32(u_input.a, 6506u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-944f + 1055f), -690f)), func_4(func_1(), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(419f, -502f, -119f)), func_1().c, _wgslsmith_f_op_f32(step(1354f, -226f)), any(vec2<bool>(false, true))), 1u)), vec2<bool>(true, true));
    let var_1 = ~vec4<u32>(1u, ~global1.x, global1.x, ~(~(u_input.a | u_input.a)));
    var var_2 = func_1();
    let var_3 = func_5(func_1(), vec2<bool>(any(!vec3<bool>(var_2.e, false, var_2.e)), false));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, var_0.a, var_2.c.wxz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1().d * _wgslsmith_f_op_f32(ceil(var_2.d)))));
}

