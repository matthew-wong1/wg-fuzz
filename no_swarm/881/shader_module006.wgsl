struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

var<private> global1: array<Struct_1, 9>;

var<private> global2: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    global2 = u_input.a.x;
    global2 = arg_0.b;
    var var_0 = ~arg_0.c.x;
    var var_1 = Struct_1(u_input.a.x, 1i, select(~vec3<u32>(~arg_0.c.x, arg_0.c.x ^ 29380u, min(arg_0.c.x, 53656u)), arg_0.c, vec3<bool>(true, true, true)));
    let var_2 = 233f;
    return select(vec3<i32>(_wgslsmith_sub_i32(~1i, 1i & _wgslsmith_sub_i32(0i, var_1.a)), var_1.a, -2147483647i), ~abs(firstTrailingBit(min(vec3<i32>(-16092i, u_input.a.x, arg_0.b), u_input.a.xwz))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: f32) -> f32 {
    var var_0 = !vec3<bool>(!select(true, true, true), true, true);
    var var_1 = arg_0;
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(arg_2.x, arg_0.b) >> (reverseBits(4294967295u) % 32u), min(-reverseBits(-64261i >> (arg_0.c.x % 32u)), min(0i, arg_1.x)), -_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, 0i, var_1.b), vec3<i32>(15404i, 0i, var_1.b)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(40254u, 80002u, var_1.c.x, arg_0.c.x), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12794u, 14u)], 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18961u, 14u)], 14u)], 4294967295u, var_1.c.x)) % 32u), -1i));
    let var_3 = true;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -756f))) + 1500f));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_4(Struct_1(countOneBits(~(-2147483647i)), arg_2.a, _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(arg_2.c, arg_1.c), ~arg_2.c)), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(arg_2.a, -24771i), vec2<i32>(arg_2.b, 2147483647i) >> (vec2<u32>(arg_1.c.x, global0[_wgslsmith_index_u32(379u, 14u)]) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(~vec2<i32>(arg_1.b, u_input.a.x), vec2<i32>(-2147483647i, -12796i) | vec2<i32>(1016i, arg_1.b))), func_3(global1[_wgslsmith_index_u32(167u, 9u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(853f + 1191f)))))) <= _wgslsmith_f_op_f32(f32(-1f) * -1245f);
    global2 = _wgslsmith_mult_i32(arg_2.a, 55266i) ^ 20147i;
    global0 = array<u32, 14>();
    var var_1 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.b, _wgslsmith_dot_vec3_i32(u_input.a.xxz, -vec3<i32>(-32820i, -6362i, -14018i)), -arg_2.a), vec3<i32>(~_wgslsmith_div_i32(arg_2.a, -10790i), reverseBits(1i), 1i));
    let var_2 = Struct_1(2147483647i, ~arg_2.a, abs(vec3<u32>(~39759u, 8787u, 42408u)));
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec2<i32> {
    global0 = array<u32, 14>();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -675f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -677f)), true)) - _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_mod_i32(-38798i, arg_0.a), 50772i, ~arg_0.c), -vec2<i32>(arg_0.b, arg_0.b), vec3<i32>(-27739i, 0i, ~u_input.a.x), _wgslsmith_f_op_f32(773f * _wgslsmith_f_op_f32(533f - -230f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1140f))))));
    var var_1 = !all(!vec2<bool>(true, all(vec2<bool>(true, false))));
    let var_2 = vec4<i32>(select(-18605i, arg_0.a, any(vec3<bool>(true, true, true))), abs(~func_3(func_2(true, Struct_1(u_input.a.x, arg_1.b, vec3<u32>(arg_0.c.x, 32250u, 1u)), Struct_1(2147483647i, arg_0.a, arg_1.c), true)).x), 2147483647i, arg_1.b);
    return _wgslsmith_sub_vec2_i32(var_2.ww, var_2.xy);
}

fn func_6(arg_0: vec2<i32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -376f)), -646f));
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(u_input.a.xxw, -(reverseBits(u_input.a.zxx) | select(vec3<i32>(arg_0.x, 1i, 35824i), u_input.a.www, true))), u_input.a.x, vec3<u32>(_wgslsmith_add_u32(~1048u, select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], true)), firstTrailingBit(~1240u), ~global0[_wgslsmith_index_u32(15192u, 14u)]) >> (select((vec3<u32>(15420u, 1u, 64895u) >> (vec3<u32>(global0[_wgslsmith_index_u32(4439u, 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 19457u) % vec3<u32>(32u))) | countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], global0[_wgslsmith_index_u32(36047u, 14u)], 77072u)), firstTrailingBit(~vec3<u32>(1u, 74461u, 0u)), !any(vec3<bool>(true, true, true))) % vec3<u32>(32u)));
    var var_2 = ~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u, global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(var_1.c.x, 14u)], ~14031u, true), 14u)]), 14u)];
    var_0 = -2017f;
    var var_3 = select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - -315f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1219f * _wgslsmith_f_op_f32(max(-203f, -1054f))) * _wgslsmith_div_f32(_wgslsmith_div_f32(-1440f, -1000f), _wgslsmith_f_op_f32(ceil(354f)))), true, false);
    return _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(263f, 873f, 1000f, 1671f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-848f, 306f, 2083f, -372f))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-142f, -404f, 870f, -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(546f, -995f, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-946f, 1000f)))), _wgslsmith_f_op_f32(515f * _wgslsmith_f_op_f32(f32(-1f) * -474f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(abs(-1028f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1568f, -717f, _wgslsmith_f_op_f32(func_4(Struct_1(0i, -16262i, vec3<u32>(54792u, 58528u, 1u)), vec2<i32>(var_1.b, arg_0.x), u_input.a.wyw, -644f)), _wgslsmith_f_op_f32(f32(-1f) * -589f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-405f, -1464f, 2023f, 152f))))))));
}

fn func_7(arg_0: i32, arg_1: bool, arg_2: vec4<f32>, arg_3: vec4<i32>) -> vec4<f32> {
    var var_0 = Struct_1(reverseBits(~23236i), abs(0i), ~(~firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(1u, 14u)], 59276u, 0u))));
    var var_1 = firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(36778u, 32880u), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(11273u | global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)]), 1u, 64611u));
    var_0 = func_2(!select(any(!vec3<bool>(arg_1, arg_1, arg_1)), any(!vec2<bool>(true, arg_1)), (0i >= u_input.a.x) == true), Struct_1(-23154i, 1i, var_0.c), func_2(all(!select(vec4<bool>(true, true, true, arg_1), vec4<bool>(arg_1, true, false, arg_1), false)), func_2(any(vec3<bool>(true, true, true)), func_2(true, Struct_1(-35553i, arg_3.x, var_0.c), Struct_1(arg_0, 36711i, var_0.c), true), global1[_wgslsmith_index_u32(~(~var_1.x), 9u)], any(vec2<bool>(arg_1, arg_1)) | true), func_2(arg_1, Struct_1(arg_0, -51579i, vec3<u32>(26067u, var_1.x, 17609u)), func_2(true, global1[_wgslsmith_index_u32(~54047u, 9u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.c.yx, var_0.c.xy), 9u)], true), arg_1 & true), true), (!all(vec4<bool>(arg_1, true, true, true)) && true) && !(!all(vec3<bool>(true, true, true))));
    global2 = u_input.a.x | 32179i;
    var var_2 = global1[_wgslsmith_index_u32(var_0.c.x, 9u)];
    return _wgslsmith_f_op_vec4_f32(-arg_2);
}

fn func_8(arg_0: vec4<f32>, arg_1: u32) -> StorageBuffer {
    global1 = array<Struct_1, 9>();
    var var_0 = reverseBits(u_input.a.x);
    global0 = array<u32, 14>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_2 = func_2(all(vec2<bool>(true, true)) || true, func_2(all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), true))), func_2(true, func_2(true, Struct_1(2147483647i, u_input.a.x, vec3<u32>(arg_1, 1u, 4294967295u)), global1[_wgslsmith_index_u32(reverseBits(9502u), 9u)], true), Struct_1(-3460i, u_input.a.x & 15204i, vec3<u32>(global0[_wgslsmith_index_u32(0u, 14u)], 5396u, 4294967295u) << (vec3<u32>(4294967295u, 1u, arg_1) % vec3<u32>(32u))), all(vec3<bool>(false, false, true))), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1, 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(arg_1, 14u)], 5041u) ^ vec2<u32>(arg_1, 1u)), 9u)], 125f == _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1419f)), _wgslsmith_f_op_f32(-arg_0.x))), Struct_1(u_input.a.x, 2147483647i, _wgslsmith_add_vec3_u32(~(vec3<u32>(4383u, global0[_wgslsmith_index_u32(32666u, 14u)], arg_1) ^ vec3<u32>(0u, global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(arg_1, 14u)])), _wgslsmith_sub_vec3_u32(vec3<u32>(22146u, 0u, arg_1) & vec3<u32>(4294967295u, 14071u, global0[_wgslsmith_index_u32(19495u, 14u)]), vec3<u32>(arg_1, arg_1, arg_1)))), ~_wgslsmith_sub_i32(firstLeadingBit(u_input.a.x), -33937i) <= 1i);
    return StorageBuffer(u_input.a, 1u);
}

fn func_1(arg_0: f32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(400f + arg_0);
    var var_1 = global1[_wgslsmith_index_u32(~(18627u | _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(66161u, 14u)]), _wgslsmith_clamp_vec2_u32(vec2<u32>(110389u, 4294967295u), vec2<u32>(0u, 7288u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46998u, 14u)], 14u)], 14u)], 14u)], 0u)))) & _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54664u, 14u)], 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], 15048u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18336u, 14u)], 14u)], 14u)], 14u)], 4294967295u, global0[_wgslsmith_index_u32(52225u, 14u)], 0u)), 14u)], 4294967295u), 9u)];
    let var_2 = ~(~(~6137u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - _wgslsmith_div_f32(arg_0, var_0)));
    var var_4 = var_1.c.x;
    return func_8(_wgslsmith_f_op_vec4_f32(func_7(_wgslsmith_mod_i32(var_1.b, var_1.b), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(func_6(func_5(Struct_1(u_input.a.x, 54759i, vec3<u32>(var_2, 4294967295u, 53354u)), func_2(true, Struct_1(u_input.a.x, 1i, vec3<u32>(0u, var_2, global0[_wgslsmith_index_u32(1u, 14u)])), Struct_1(var_1.a, 1i, vec3<u32>(var_2, 96003u, var_2)), false), global0[_wgslsmith_index_u32(0u, 14u)] ^ 4294967295u))), -u_input.a << ((~vec4<u32>(var_1.c.x, var_2, 0u, 17279u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 21903u, 0u, var_1.c.x), vec4<u32>(var_2, var_1.c.x, var_2, 4294967295u), vec4<u32>(1u, var_1.c.x, 43276u, global0[_wgslsmith_index_u32(1u, 14u)]))) % vec4<u32>(32u)))), abs(48251u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(f32(-1f) * -1416f));
}

