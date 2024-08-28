struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 8>;

var<private> global2: u32;

var<private> global3: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> i32 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-550f, _wgslsmith_f_op_f32(sign(arg_0.d.x)), arg_2.a.x, -1580f)));
    var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-611f, -1368f, -346f, var_1.x)))))))));
    let var_2 = global1[_wgslsmith_index_u32(0u, 8u)];
    var_1 = _wgslsmith_f_op_vec4_f32(ceil(var_2.a));
    return 2147483647i;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: bool, arg_3: f32) -> bool {
    var var_0 = vec2<i32>(_wgslsmith_add_i32(~2147483647i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(676i, 2147483647i, 1i, -1i), !vec4<bool>(true, arg_2, arg_2, arg_2)), vec4<i32>(func_3(global1[_wgslsmith_index_u32(4294967295u, 8u)], 252f, global1[_wgslsmith_index_u32(4294967295u, 8u)]), 1i, firstTrailingBit(-20451i), _wgslsmith_dot_vec4_i32(vec4<i32>(23361i, -69428i, -8031i, 20097i), vec4<i32>(2147483647i, -1i, -55203i, -35356i))))), _wgslsmith_add_i32(_wgslsmith_sub_i32(~(~(-11499i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, 2147483647i), countOneBits(vec2<i32>(0i, 2147483647i)))), -1i));
    let var_1 = -vec2<i32>(var_0.x, _wgslsmith_clamp_i32(13288i, var_0.x, _wgslsmith_div_i32(var_0.x, 2147483647i))) ^ ~(-(_wgslsmith_div_vec2_i32(vec2<i32>(-15920i, 4742i), vec2<i32>(-43568i, 28354i)) & _wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, 29507i), vec2<i32>(66384i, var_0.x))));
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~(vec4<u32>(15625u, u_input.a, 13646u, u_input.b) << (vec4<u32>(u_input.a, 25697u, 19900u, u_input.a) % vec4<u32>(32u))), ~abs(vec4<u32>(u_input.b, 6972u, u_input.a, 0u))) ^ ~vec4<u32>(_wgslsmith_add_u32(u_input.b, 1u), _wgslsmith_add_u32(89305u, 49167u), _wgslsmith_dot_vec4_u32(vec4<u32>(17474u, 1u, 4294967295u, u_input.b), vec4<u32>(43759u, u_input.b, 4063u, u_input.b)), ~u_input.a), ~vec4<u32>(~65174u, u_input.a, (u_input.a & u_input.b) & ~89360u, ~(~1u)));
    var var_3 = vec3<bool>(any(!(!select(vec2<bool>(false, false), vec2<bool>(false, arg_2), arg_2))), true, true);
    var var_4 = 50604u;
    return any(vec2<bool>(var_3.x, abs(var_1.x) <= -10340i));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = arg_3;
    var var_1 = arg_0.b.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-384f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(471f - arg_2.e.x), _wgslsmith_div_f32(arg_0.d.x, -181f)))) + arg_0.d.x) - _wgslsmith_f_op_f32(arg_2.d.x - arg_0.e.x));
    global3 = func_3(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a.x - -777f))))), _wgslsmith_f_op_f32(-708f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.e.x, arg_2.e.x) - _wgslsmith_f_op_f32(-arg_0.e.x)))), arg_0);
    let var_3 = true;
    return Struct_1(arg_2.a, ~(-arg_2.b) << (arg_0.c % vec4<u32>(32u)), abs(vec4<u32>(select(77201u, 0u, arg_3.x), 113039u, _wgslsmith_div_u32(select(arg_2.c.x, 30416u, var_0.x), firstTrailingBit(arg_0.c.x)), u_input.b)), arg_2.e.xy, arg_0.a);
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1631f, 844f, 1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-955f, -349f, 2337f, 824f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1461f, -1000f, 1186f, 161f), vec4<f32>(-1849f, -675f, 2090f, -1613f), false))), vec4<bool>(true, true, true, true))), _wgslsmith_add_vec4_i32(vec4<i32>(46560i, -21547i, 0i, 1i), select(vec4<i32>(-48468i, 21053i, -2147483647i, 19741i), vec4<i32>(0i, 1i, -3090i, -39220i), func_2(1223f, vec4<f32>(-460f, -1519f, 2414f, 351f), true, 584f))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(17941u, arg_0.x), firstTrailingBit(u_input.b), 5678u, arg_0.x), firstTrailingBit(reverseBits(vec4<u32>(0u, 0u, 1u, 12156u))), ~(~vec4<u32>(u_input.a, arg_0.x, arg_0.x, 4294967295u))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1099f, 1171f)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -1328f, 446f, 376f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -404f, 1331f, 1000f), vec4<f32>(377f, 1379f, 539f, 715f)))))))), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(~arg_0.x, 1u)), 8u)], vec2<bool>(func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -334f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(1000f)), -1074f, _wgslsmith_f_op_f32(f32(-1f) * -639f), 683f), any(vec4<bool>(true, true, true, false)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-769f))))), true));
    let var_1 = var_0.d.x;
    let var_2 = vec2<bool>(true, all(vec4<bool>(select(select(true, true, false), any(vec2<bool>(false, false)), all(vec4<bool>(false, true, true, true))), true, !func_2(var_0.e.x, var_0.e, true, 602f), true)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_0.e.xww))) - var_0.e.xxy);
    var var_4 = -_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(-var_0.b.ww, vec2<i32>(_wgslsmith_clamp_i32(48997i, var_0.b.x, 18046i), var_0.b.x)), vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.b.xw << (arg_0 % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(var_0.b.wy, vec2<i32>(8604i, 2147483647i))), var_0.b.x));
    return abs(var_4.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(2147483647i) | func_1(vec2<u32>(u_input.b, u_input.a)), i32(-1i) * -59704i, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-11261i, -10412i, 2147483647i)), -vec3<i32>(-2147483647i, 0i, 118333i))) ^ func_4(global1[_wgslsmith_index_u32(~(~u_input.b), 8u)], vec4<bool>(false, true, select(true, false, true), true), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(153f, -1765f, -384f, -1999f)), select(vec4<i32>(19329i, 1i, -1i, 14953i), vec4<i32>(1i, -2147483647i, 35127i, 45992i), vec4<bool>(true, false, true, false)), reverseBits(vec4<u32>(4294967295u, 1u, u_input.a, u_input.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-208f, -1936f) * vec2<f32>(741f, 1000f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-273f, -649f, 1094f, 1286f), vec4<f32>(172f, -1297f, 1000f, -1000f)))), vec2<bool>(true, true)).b.zxw, -(~vec3<i32>(1i, 1i, 1i)));
    var var_0 = u_input.a;
    var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1479f, _wgslsmith_f_op_f32(-func_4(func_4(global1[_wgslsmith_index_u32(u_input.a, 8u)], vec4<bool>(false, false, true, false), global1[_wgslsmith_index_u32(u_input.b, 8u)], vec2<bool>(true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)), Struct_1(vec4<f32>(1000f, -1151f, 283f, -611f), vec4<i32>(1i, -16938i, -1i, 64424i), vec4<u32>(1u, 0u, 0u, 1u), vec2<f32>(158f, 257f), vec4<f32>(-544f, -1089f, -821f, -265f)), vec2<bool>(true, false)).d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-343f, _wgslsmith_f_op_f32(step(150f, -306f)), true)), 232f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(154f - _wgslsmith_f_op_f32(round(-1021f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(2876f)), _wgslsmith_f_op_f32(sign(-947f)), _wgslsmith_f_op_f32(1395f + 476f), -465f) + vec4<f32>(-1692f, _wgslsmith_f_op_f32(-994f + -1045f), _wgslsmith_f_op_f32(315f - -635f), -717f))), !((abs(27824u) == u_input.a) & true)));
    global2 = _wgslsmith_div_u32(~(u_input.a & 74085u), ~(~select(u_input.b, u_input.a, false))) ^ 38975u;
    var var_2 = ~max(2147483647i, _wgslsmith_mult_i32(-14835i, func_1(vec2<u32>(0u, u_input.b) | vec2<u32>(0u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(var_1.wxz, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-382f + var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)), _wgslsmith_f_op_f32(-659f + _wgslsmith_f_op_f32(min(var_1.x, 115f))))));
}

