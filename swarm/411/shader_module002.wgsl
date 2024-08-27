struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32 = 1u;

var<private> global2: array<bool, 13> = array<bool, 13>(true, false, true, true, false, false, true, false, true, false, true, false, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(global2[_wgslsmith_index_u32(4294967295u, 13u)], select(!select(arg_1.b, !vec3<bool>(arg_1.b.x, true, global2[_wgslsmith_index_u32(u_input.b, 13u)]), global2[_wgslsmith_index_u32(~0u, 13u)]), vec3<bool>(all(select(arg_1.b, arg_1.b, arg_1.b)), all(vec4<bool>(true, global2[_wgslsmith_index_u32(67381u, 13u)], false, arg_1.d)), arg_1.b.x), select(_wgslsmith_f_op_f32(-arg_1.e) >= -1409f, true, false)), ~arg_1.c, !all(!arg_1.b.xx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(145f * -1281f)))) - -493f));
    var_0 = arg_1;
    let var_1 = !var_0.b;
    var var_2 = vec3<bool>(any(vec2<bool>(arg_1.b.x, var_1.x)), arg_1.d, false);
    var var_3 = Struct_3(global2[_wgslsmith_index_u32(arg_1.c.x, 13u)], Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(min(vec3<i32>(u_input.a.x, 1i, -43130i), u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), countOneBits(u_input.a)), firstTrailingBit(_wgslsmith_mult_vec3_i32(u_input.a, u_input.a))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-344f, 739f, 107f))))), ~(-2147483647i & u_input.a.x), Struct_1(var_2.x | all(vec2<bool>(true, false)), vec3<bool>(true, true, var_2.x), ~(~var_0.c), select(var_0.d, !var_1.x, arg_1.d), -372f), arg_1), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1264f)), _wgslsmith_f_op_f32(floor(arg_1.e)))) - -1236f)), -u_input.a.yx ^ u_input.a.zz);
    return arg_1.c.x;
}

fn func_2(arg_0: Struct_1) -> u32 {
    global1 = _wgslsmith_mod_u32(0u, func_3(vec2<f32>(1f, arg_0.e), Struct_1(global2[_wgslsmith_index_u32(11862u, 13u)] | arg_0.b.x, !vec3<bool>(arg_0.d, global2[_wgslsmith_index_u32(21929u, 13u)], global2[_wgslsmith_index_u32(23586u, 13u)]), vec2<u32>(1u, 1u), select(false, arg_0.d, false), 298f)) >> (27741u % 32u));
    var var_0 = Struct_2(40885i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.e * 1000f), -824f, arg_0.e) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.e, 1817f, -1572f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e, arg_0.e, 349f)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e, arg_0.e, -632f))))), u_input.a.x, arg_0, arg_0);
    var_0 = Struct_2(39197i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(722f)), 571f, arg_0.e) - vec3<f32>(-1667f, 1793f, -1000f)), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.e.e, arg_0.e))), _wgslsmith_f_op_f32(floor(295f)), arg_0.e), !(_wgslsmith_dot_vec3_i32(vec3<i32>(-19243i, u_input.a.x, u_input.a.x), u_input.a) < ~(-12006i)))), 10027i, var_0.d, var_0.d);
    global0 = -143f;
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) * _wgslsmith_f_op_f32(max(arg_0.e, arg_0.e))), 895f)), 1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.d.e + arg_0.e), _wgslsmith_f_op_f32(var_0.e.e + 797f), select(true, false, false)))), -1201f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.e)), var_0.b.x));
    return ~(~countOneBits(~1u));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: i32) -> u32 {
    var var_0 = Struct_1(global2[_wgslsmith_index_u32(85965u, 13u)], vec3<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 0u)), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b, arg_0), vec2<u32>(u_input.b, arg_1))), 13u)], !(global2[_wgslsmith_index_u32(arg_0, 13u)] || false) | false), _wgslsmith_div_vec2_u32(max(_wgslsmith_sub_vec2_u32(vec2<u32>(1318u, 0u), vec2<u32>(u_input.b, 4294967295u)), max(vec2<u32>(arg_0, 0u), vec2<u32>(59824u, u_input.b))) & vec2<u32>(~64572u, 15282u), ~(~vec2<u32>(0u, u_input.b)) | ~countOneBits(vec2<u32>(0u, arg_0))), false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(657f * -905f), _wgslsmith_f_op_f32(ceil(295f)), global2[_wgslsmith_index_u32(func_2(Struct_1(true, vec3<bool>(false, true, global2[_wgslsmith_index_u32(0u, 13u)]), vec2<u32>(0u, arg_0), global2[_wgslsmith_index_u32(1u, 13u)], 1618f)), 13u)])))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1234f * -1078f), -340f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -678f))))))));
    var var_1 = Struct_3(any(!vec3<bool>(!var_0.a, true, any(vec3<bool>(true, false, true)))), Struct_2(-1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1607f, _wgslsmith_div_f32(-1320f, -261f), _wgslsmith_f_op_f32(abs(-348f)))), 2147483647i, Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~var_0.c, max(vec2<u32>(arg_1, var_0.c.x), vec2<u32>(97138u, u_input.b))), 13u)], var_0.b, var_0.c, select(true, global2[_wgslsmith_index_u32(firstTrailingBit(var_0.c.x), 13u)], var_0.e > var_0.e), _wgslsmith_f_op_f32(269f - 1201f)), Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(0u, arg_0), countOneBits(arg_0)), 13u)], vec3<bool>(false, var_0.d && false, all(var_0.b)), ~_wgslsmith_add_vec2_u32(vec2<u32>(31507u, 1u), vec2<u32>(u_input.b, 3615u)), true, _wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1496f, -791f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -448f), _wgslsmith_f_op_f32(abs(var_0.e))))), _wgslsmith_add_vec2_i32(countOneBits(reverseBits(_wgslsmith_mod_vec2_i32(u_input.a.xy, u_input.a.yx))), abs(select(abs(u_input.a.yy), vec2<i32>(-2147483647i, 48071i), true))));
    global2 = array<bool, 13>();
    global0 = _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(-667f - _wgslsmith_f_op_f32(abs(var_0.e))));
    global0 = var_0.e;
    return ~(~_wgslsmith_mult_u32(firstLeadingBit(76831u), ~(~11936u)));
}

fn func_4(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = Struct_2(60219i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f)))))), -_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), Struct_1(true, select(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(11738u, 13u)], global2[_wgslsmith_index_u32(arg_0.x, 13u)]), !select(vec3<bool>(false, global2[_wgslsmith_index_u32(arg_0.x, 13u)], global2[_wgslsmith_index_u32(u_input.b, 13u)]), vec3<bool>(global2[_wgslsmith_index_u32(14682u, 13u)], global2[_wgslsmith_index_u32(arg_0.x, 13u)], false), vec3<bool>(true, true, global2[_wgslsmith_index_u32(46541u, 13u)])), !select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 13u)], false, true), vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(arg_0.x, 13u)]), vec3<bool>(global2[_wgslsmith_index_u32(29018u, 13u)], false, global2[_wgslsmith_index_u32(7644u, 13u)]))), firstLeadingBit(~_wgslsmith_clamp_vec2_u32(vec2<u32>(25341u, arg_0.x), arg_0, vec2<u32>(arg_0.x, u_input.b))), false, -1526f), Struct_1(true, !select(select(vec3<bool>(global2[_wgslsmith_index_u32(35579u, 13u)], global2[_wgslsmith_index_u32(u_input.b, 13u)], true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 13u)], true, true), vec3<bool>(false, false, global2[_wgslsmith_index_u32(43335u, 13u)])), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 13u)], false), vec3<bool>(false, global2[_wgslsmith_index_u32(13330u, 13u)], global2[_wgslsmith_index_u32(47086u, 13u)])), vec2<u32>(arg_0.x, min(~23714u, 28296u)), !all(select(vec2<bool>(global2[_wgslsmith_index_u32(67204u, 13u)], false), vec2<bool>(true, true), vec2<bool>(true, false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-621f * 858f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1818f, 502f)))))));
    var var_1 = firstLeadingBit(firstLeadingBit(_wgslsmith_div_vec2_u32(var_0.e.c, firstLeadingBit(vec2<u32>(u_input.b, 5420u)))) << (vec2<u32>(~0u, var_0.d.c.x) % vec2<u32>(32u)));
    let var_2 = var_0.b;
    global0 = 406f;
    var var_3 = var_2.x;
    return Struct_3(all(var_0.d.b), Struct_2(_wgslsmith_mult_i32(var_0.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, var_0.a), select(vec4<i32>(u_input.a.x, 1i, 0i, 0i), vec4<i32>(var_0.a, 0i, var_0.a, var_0.a), vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.b, 13u)], global2[_wgslsmith_index_u32(u_input.b, 13u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -274f, var_2.x) + _wgslsmith_f_op_vec3_f32(exp2(var_0.b)))), -2874i, var_0.e, Struct_1(_wgslsmith_mult_u32(4294967295u, var_1.x) < var_0.d.c.x, !(!var_0.e.b), ~vec2<u32>(1u, u_input.b) ^ ~arg_0, 1000f >= _wgslsmith_f_op_f32(var_0.e.e * -431f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(241f)) * _wgslsmith_f_op_f32(min(622f, -572f))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.x, var_0.b.x), var_2.x)), ~_wgslsmith_mult_vec2_i32(u_input.a.yz, vec2<i32>(~54225i, min(u_input.a.x, -73664i))));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: u32, arg_3: vec4<u32>) -> Struct_3 {
    global1 = ~8675u;
    global2 = array<bool, 13>();
    global1 = ~(~arg_2);
    let var_0 = true;
    let var_1 = -_wgslsmith_sub_vec3_i32((-vec3<i32>(arg_0.b.a, arg_1.x, 0i) ^ _wgslsmith_mult_vec3_i32(u_input.a, u_input.a)) & _wgslsmith_clamp_vec3_i32(abs(u_input.a), min(u_input.a, u_input.a), -u_input.a), _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, _wgslsmith_add_vec3_i32(~u_input.a, max(u_input.a, u_input.a))));
    return arg_0;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = ~func_4(~firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.b.d.c.x, arg_0.b.d.c.x), vec2<u32>(4294967295u, arg_0.b.e.c.x)))).b.d.c.x;
    global1 = func_1(70175u, ~_wgslsmith_sub_u32(u_input.b, var_0), ~(_wgslsmith_div_i32(abs(2147483647i), min(arg_1.c, arg_0.d.x)) | 3066i), 2147483647i);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.c, arg_0.b.b.x)), arg_1.e.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.e.e)) * -920f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x - -1333f))));
    global1 = 56125u;
    let var_2 = Struct_2(arg_1.a, _wgslsmith_f_op_vec3_f32(-arg_0.b.b), 1i, Struct_1(true, !select(!vec3<bool>(arg_0.a, arg_0.b.e.d, arg_3.a), vec3<bool>(true, false, arg_1.e.d), true), reverseBits(select(arg_1.e.c ^ vec2<u32>(4294967295u, arg_0.b.d.c.x), ~arg_1.e.c, func_5(arg_0, arg_0.d, 29707u, vec4<u32>(0u, arg_1.e.c.x, arg_0.b.e.c.x, arg_1.e.c.x)).b.e.b.yz)), arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_3.e, arg_3.e)), -1000f, any(vec3<bool>(arg_3.a, true, true)))))), func_5(Struct_3(true, Struct_2(arg_0.d.x & arg_2, _wgslsmith_f_op_vec3_f32(arg_1.b * arg_1.b), ~arg_2, arg_1.e, Struct_1(false, vec3<bool>(arg_3.a, arg_1.e.a, arg_1.d.d), arg_0.b.d.c, arg_3.d, arg_1.e.e)), arg_1.b.x, _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 63636i), vec2<i32>(13128i, -1i))), arg_0.d ^ vec2<i32>(func_4(arg_3.c).b.c, arg_2), 29673u & ~arg_1.d.c.x, abs(max(abs(vec4<u32>(100932u, 4294967295u, 1u, 0u)), ~vec4<u32>(61828u, 1u, 4294967295u, 0u)))).b.e);
    return StorageBuffer(vec4<u32>(~(var_0 & u_input.b) | min(~1138u, var_0), min(1u, 115639u), ~(~_wgslsmith_div_u32(var_0, arg_0.b.e.c.x)), 4294967295u), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, -1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -358f), -arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-793f, 400f, global2[_wgslsmith_index_u32(1u, 13u)]))), _wgslsmith_f_op_f32(-990f + _wgslsmith_f_op_f32(round(-289f))))), 1000f)) + -270f);
    let x = u_input.a;
    s_output = func_6(func_5(func_4(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(19497u, 1u), vec2<u32>(u_input.b, 45215u)), func_1(1u, 52515u, u_input.a.x, u_input.a.x))), u_input.a.xx & ~(-u_input.a.yy), u_input.b, ~(~abs(vec4<u32>(u_input.b, 4294967295u, u_input.b, 4294967295u)))), func_5(Struct_3(any(!vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 13u)])), Struct_2(u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(553f, -199f, 520f) - vec3<f32>(571f, -515f, -2223f)), -38517i, Struct_1(global2[_wgslsmith_index_u32(u_input.b, 13u)], vec3<bool>(global2[_wgslsmith_index_u32(1u, 13u)], false, false), vec2<u32>(u_input.b, u_input.b), true, 680f), Struct_1(false, vec3<bool>(false, global2[_wgslsmith_index_u32(11004u, 13u)], global2[_wgslsmith_index_u32(1u, 13u)]), vec2<u32>(u_input.b, u_input.b), global2[_wgslsmith_index_u32(91342u, 13u)], -194f)), -681f, reverseBits(_wgslsmith_mod_vec2_i32(u_input.a.xy, vec2<i32>(u_input.a.x, -1i)))), u_input.a.xy, u_input.b, vec4<u32>(51706u, max(u_input.b & u_input.b, u_input.b), 1u, 1u ^ u_input.b)).b, reverseBits(1i), Struct_1(!(!(u_input.b < u_input.b)), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 13u)], any(select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(1u, 13u)], true, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 13u)], global2[_wgslsmith_index_u32(u_input.b, 13u)], false, global2[_wgslsmith_index_u32(u_input.b, 13u)]), vec4<bool>(global2[_wgslsmith_index_u32(72704u, 13u)], global2[_wgslsmith_index_u32(u_input.b, 13u)], true, global2[_wgslsmith_index_u32(u_input.b, 13u)]))), true), vec2<u32>(497u, _wgslsmith_mult_u32(4294967295u, u_input.b)) | (vec2<u32>(u_input.b, u_input.b) & vec2<u32>(56761u, 37440u)), -435f != _wgslsmith_f_op_f32(sign(240f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1406f - 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

