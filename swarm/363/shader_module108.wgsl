struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = -(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(0i, -1i, -1i, u_input.b.x)), vec4<i32>(44525i, 26113i, 1i, u_input.b.x)), ~_wgslsmith_div_vec4_i32(vec4<i32>(arg_3.x, u_input.b.x, -2147483647i, u_input.b.x), vec4<i32>(2147483647i, -31836i, arg_3.x, 79096i))) | _wgslsmith_div_vec4_i32(vec4<i32>(arg_3.x, -u_input.b.x, ~arg_3.x, i32(-1i) * -2147483647i), vec4<i32>(max(0i, u_input.b.x), _wgslsmith_sub_i32(-8068i, -4028i), 10559i, _wgslsmith_add_i32(u_input.b.x, arg_3.x))));
    var_0 = select(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_0.wzy, vec3<i32>(0i, arg_3.x, -17387i)), -36807i), min(u_input.b.x, 0i), countOneBits(arg_3.x), arg_3.x), vec4<i32>(-(~2147483647i ^ -arg_3.x), 0i, _wgslsmith_mult_i32(-firstLeadingBit(28125i), 4331i), var_0.x), !select(select(select(vec4<bool>(false, arg_0, false, arg_1.x), vec4<bool>(arg_0, arg_1.x, false, arg_0), arg_1.x), vec4<bool>(true, arg_1.x, arg_0, arg_0), -35185i != var_0.x), select(select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), all(vec4<bool>(arg_0, false, arg_0, arg_1.x))), select(global0[_wgslsmith_index_u32(u_input.a.x, 14u)] <= arg_2.a.x, arg_0, true)));
    let var_1 = reverseBits(vec3<i32>(13576i, ~min(-u_input.b.x, select(-2147483647i, 0i, false)), arg_3.x));
    var var_2 = ~(-10239i);
    global0 = array<f32, 14>();
    return !(!(!vec3<bool>(arg_1.x, any(vec4<bool>(false, true, arg_0, arg_0)), all(arg_1))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-516f + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(7653u, 1u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), 14u)]))), arg_2, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.zx) | (u_input.a.x | min(u_input.a.x, u_input.a.x)), 14u)]));
    let var_1 = var_0;
    global0 = array<f32, 14>();
    var var_2 = !vec4<bool>(true, all(select(func_3(true, vec2<bool>(true, true), Struct_1(var_0.zx, vec3<f32>(-165f, var_1.x, -866f)), vec2<i32>(-5455i, 2147483647i)), func_3(false, vec2<bool>(false, false), Struct_1(var_1.yy, vec3<f32>(var_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], -264f)), u_input.b), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))), select(true, false, true && func_3(true, vec2<bool>(false, true), Struct_1(var_1.yy, vec3<f32>(global0[_wgslsmith_index_u32(373u, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)])), u_input.b).x), true);
    var_2 = select(vec4<bool>(true, var_2.x, var_2.x, true), !(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)] > -1076f, arg_2 <= global0[_wgslsmith_index_u32(u_input.a.x, 14u)], var_2.x, !var_2.x)), !var_2.x);
    return Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.xy))))), var_1.zy), _wgslsmith_f_op_vec3_f32(-var_1));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(func_2(u_input.b.x, u_input.b.x, -1031f).a.x, -791f)), _wgslsmith_f_op_f32(-arg_0.b.a.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-193f, -1000f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-534f, arg_0.c.b.x) + arg_0.a.b.xx))))));
    var var_1 = vec3<i32>(-(~(-25262i)), 2147483647i, -2147483647i >> (u_input.a.x % 32u));
    let var_2 = arg_0.b;
    return func_2(_wgslsmith_mod_i32(var_1.x, var_1.x), -((_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(var_1.x, -1i)) >> (countOneBits(u_input.a.x) % 32u)) << (((46010u >> (1u % 32u)) | u_input.a.x) % 32u)), 146f);
}

fn func_1(arg_0: vec4<f32>) -> vec2<bool> {
    let var_0 = func_4(Struct_2(func_2(u_input.b.x, 30223i, -507f), Struct_1(func_2(abs(-2147483647i), ~u_input.b.x, _wgslsmith_f_op_f32(select(729f, arg_0.x, false))).b.xy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_0.yww)) + arg_0.yxz)), func_2(_wgslsmith_clamp_i32(-18021i, select(6448i, -2147483647i, true), 18844i), firstLeadingBit(-25640i), global0[_wgslsmith_index_u32(28770u, 14u)]), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true, ~select(vec2<u32>(1u, 1u), vec2<u32>(2012u | u_input.a.x, 36944u), vec2<bool>(true, true)));
    var var_1 = ~_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(0u, 5139u), reverseBits(u_input.a.x), abs(u_input.a.x), ~0u)), ~countOneBits(firstTrailingBit(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x))));
    var var_2 = _wgslsmith_clamp_vec4_u32(~(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, u_input.a.x, 1u, 1u), vec4<u32>(13225u, 9503u, 4294967295u, 13983u), vec4<u32>(80392u, 63334u, var_1.x, var_1.x)), ~vec4<u32>(var_1.x, 0u, u_input.a.x, u_input.a.x)) | vec4<u32>(u_input.a.x ^ var_1.x, abs(0u), 27915u, u_input.a.x)), vec4<u32>(~_wgslsmith_mod_u32(var_1.x, 1u), 49291u, min(var_1.x, var_1.x) >> (u_input.a.x % 32u), 16043u), select(vec4<u32>(~(~1u), 4294967295u, 7415u, ~(~4294967295u)), ~(vec4<u32>(20548u, u_input.a.x, u_input.a.x, 84421u) >> (vec4<u32>(56533u, 1u, 1u, var_1.x) % vec4<u32>(32u))) >> (reverseBits(select(vec4<u32>(4294967295u, var_1.x, 63913u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 34959u, var_1.x), vec4<bool>(true, false, false, true))) % vec4<u32>(32u)), select(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, any(vec4<bool>(false, false, false, false))), vec4<bool>(any(vec4<bool>(false, false, true, true)), false, false, true), vec4<bool>(true, true, true, false))));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1346f, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], var_0.a.x, false)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 14u)])))))));
    var var_4 = i32(-1i) * -38604i;
    return !func_3(select(abs(-15244i), u_input.b.x, true) <= -1i, vec2<bool>(!all(vec3<bool>(false, false, false)), all(vec4<bool>(true, false, false, true))), func_2(~(-u_input.b.x), abs(1i), _wgslsmith_f_op_f32(-func_2(u_input.b.x, u_input.b.x, 473f).a.x)), vec2<i32>(1610i, -1i)).zy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 14>();
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 14u)] + global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), global0[_wgslsmith_index_u32(~u_input.a.x, 14u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), _wgslsmith_f_op_f32(max(-116f, -658f))), _wgslsmith_f_op_f32(-414f + -456f)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1058f, -801f)), global0[_wgslsmith_index_u32(firstTrailingBit(1u), 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)])), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(39757u, 14u)])))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, reverseBits(63819u)), 14u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 14u)] + 2012f), global0[_wgslsmith_index_u32(13456u, 14u)], true))), all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), func_1(_wgslsmith_div_vec4_f32(vec4<f32>(2114f, 365f, 1965f, global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], -228f, -1000f, -450f))), vec2<bool>(any(vec3<bool>(true, true, true)), true)))));
    var var_1 = !func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x - 406f), global0[_wgslsmith_index_u32(u_input.a.x ^ u_input.a.x, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)], _wgslsmith_f_op_f32(924f * -1186f))));
    var var_2 = _wgslsmith_clamp_u32(0u, _wgslsmith_clamp_u32(46451u, u_input.a.x | u_input.a.x, u_input.a.x), u_input.a.x);
    var_2 = u_input.a.x;
    let var_3 = vec2<bool>(var_1.x, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -222f, var_0.x, global0[_wgslsmith_index_u32(38929u, 14u)]) + vec4<f32>(343f, global0[_wgslsmith_index_u32(37305u, 14u)], -233f, global0[_wgslsmith_index_u32(0u, 14u)])))))).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(-vec3<i32>(62844i, 5042i, -49913i), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(32931i, -66448i, 15722i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<i32>(u_input.b.x, u_input.b.x, -78642i)), 2147483647i, max(_wgslsmith_sub_i32(u_input.b.x, -12641i), u_input.b.x & -35416i))), 987f);
}

