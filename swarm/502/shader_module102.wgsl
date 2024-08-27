struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
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

var<private> global0: array<i32, 6>;

var<private> global1: Struct_3 = Struct_3(vec2<u32>(4294967295u, 18623u));

var<private> global2: array<bool, 23> = array<bool, 23>(false, false, false, false, false, true, false, false, false, true, true, true, true, false, false, false, true, true, false, true, true, true, true);

var<private> global3: Struct_2 = Struct_2(vec3<i32>(1i, 1i, i32(-2147483648)));

var<private> global4: vec3<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    var var_0 = u_input.b.www;
    global4 = vec3<bool>(select(any(select(global4.yx, !global4.zx, true)), !all(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 23u)], true, false, false)), all(vec3<bool>(true, all(vec2<bool>(false, global4.x)), true & global4.x))), all(vec3<bool>(all(select(vec4<bool>(true, false, global4.x, false), vec4<bool>(true, global4.x, global2[_wgslsmith_index_u32(8865u, 23u)], true), vec4<bool>(false, true, global2[_wgslsmith_index_u32(global1.a.x, 23u)], global2[_wgslsmith_index_u32(u_input.b.x, 23u)]))), any(select(global4.yz, global4.xy, global2[_wgslsmith_index_u32(u_input.b.x, 23u)])), !(!global2[_wgslsmith_index_u32(var_0.x, 23u)]))), firstLeadingBit(var_0.x) > ~reverseBits(_wgslsmith_sub_u32(u_input.a, global1.a.x)));
    global1 = Struct_3(_wgslsmith_mult_vec2_u32(~global1.a, global1.a));
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(2147483647i, 1i), 47239i, _wgslsmith_clamp_i32(global3.a.x, -global3.a.x, _wgslsmith_mult_i32(0i, global3.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 6u)], global3.a.x, 44898i, 2147483647i) | vec4<i32>(global3.a.x, global3.a.x, -5953i, global0[_wgslsmith_index_u32(1u, 6u)]), abs(vec4<i32>(global3.a.x, 1i, -23156i, -4605i)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(global3.a.x, -1i), global0[_wgslsmith_index_u32(u_input.a, 6u)] ^ global3.a.x, global0[_wgslsmith_index_u32(1u, 6u)], global3.a.x), select(select(vec4<i32>(-1i, -2147483647i, -16958i, global0[_wgslsmith_index_u32(var_0.x, 6u)]), vec4<i32>(global3.a.x, 2147483647i, global0[_wgslsmith_index_u32(26501u, 6u)], 1i), vec4<bool>(true, false, global4.x, global2[_wgslsmith_index_u32(u_input.a, 23u)])), vec4<i32>(global0[_wgslsmith_index_u32(15248u, 6u)], global0[_wgslsmith_index_u32(u_input.b.x, 6u)], 19649i, global3.a.x), global2[_wgslsmith_index_u32(~0u, 23u)]), -vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(890u, 6u)], -2147483647i, global0[_wgslsmith_index_u32(11633u, 6u)]) | reverseBits(vec4<i32>(-2147483647i, -1i, 0i, 2147483647i)))), firstLeadingBit(reverseBits(-vec4<i32>(-2147483647i, global3.a.x, global0[_wgslsmith_index_u32(4294967295u, 6u)], 2147483647i)) | firstTrailingBit(vec4<i32>(global3.a.x, 32865i, 9249i, -27080i))));
    var var_2 = u_input.a;
    return ~u_input.b.zxz;
}

fn func_2(arg_0: u32, arg_1: bool) -> bool {
    let var_0 = global4.xy;
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, arg_0, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.a, 4294967295u) & u_input.b.yzy, ~vec3<u32>(arg_0, 1u, u_input.b.x)), 0u)), ~func_3(-1178f));
    let var_2 = Struct_1(-805f, abs(abs(~global1.a.x)) & (global1.a.x ^ _wgslsmith_add_u32(64696u, _wgslsmith_mult_u32(22206u, 19834u))), all(select(vec3<bool>(all(global4.yy), u_input.b.x <= 4294967295u, !arg_1), vec3<bool>(select(global4.x, false, global4.x), global4.x, false), select(!vec3<bool>(var_0.x, arg_1, true), select(vec3<bool>(arg_1, global4.x, false), vec3<bool>(global4.x, global4.x, false), vec3<bool>(var_0.x, global2[_wgslsmith_index_u32(1u, 23u)], var_0.x)), select(vec3<bool>(false, false, false), vec3<bool>(false, global4.x, arg_1), global2[_wgslsmith_index_u32(global1.a.x, 23u)])))));
    var_1 = 11412u;
    global0 = array<i32, 6>();
    return all(!(!(!vec4<bool>(var_0.x, var_0.x, var_2.c, false))));
}

fn func_4(arg_0: bool, arg_1: u32) -> bool {
    var var_0 = global3.a.yx;
    let var_1 = !global4.x;
    let var_2 = any(select(vec4<bool>(true, global2[_wgslsmith_index_u32(func_3(1f).x, 23u)], true, true), select(vec4<bool>(true, any(vec3<bool>(arg_0, arg_0, true)), all(vec3<bool>(true, false, var_1)), true), !vec4<bool>(var_1, true, true, global4.x), vec4<bool>(true, select(global4.x, var_1, true), arg_0, false)), true & all(select(vec3<bool>(false, false, var_1), vec3<bool>(true, false, false), vec3<bool>(false, arg_0, global4.x)))));
    var var_3 = Struct_4(vec4<bool>(false, !var_1, true, global2[_wgslsmith_index_u32(4294967295u, 23u)]), Struct_2(_wgslsmith_sub_vec3_i32(max(global3.a, global3.a), global3.a)), Struct_2(global3.a & (vec3<i32>(global3.a.x, global3.a.x, global0[_wgslsmith_index_u32(1297u, 6u)]) >> (vec3<u32>(arg_1, 1u, 0u) % vec3<u32>(32u)))), !vec4<bool>(!(!arg_0), any(select(vec3<bool>(true, global4.x, false), vec3<bool>(false, true, global2[_wgslsmith_index_u32(4294967295u, 23u)]), global2[_wgslsmith_index_u32(arg_1, 23u)])), true, true));
    global4 = vec3<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(110f, 1f, global4.x)))) < 161f, -948i >= _wgslsmith_div_i32(18133i, ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.a.x, arg_1), 6u)]), global2[_wgslsmith_index_u32(0u, 23u)]);
    return true;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_clamp_u32(~(~u_input.a), _wgslsmith_sub_u32(~(abs(global1.a.x) | ~global1.a.x), abs(27395u)), ~23830u);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(2665f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-694f)))))), 86843u, 1i > _wgslsmith_sub_i32(35374i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 16000i, global0[_wgslsmith_index_u32(global1.a.x, 6u)]), vec3<i32>(global3.a.x, 2147483647i, global0[_wgslsmith_index_u32(u_input.a, 6u)])))));
    let var_2 = Struct_2(~(~global3.a));
    global4 = !vec3<bool>(false, !(select(global4.x, false, true) | any(global4.zz)), !func_4(func_2(21190u, false), _wgslsmith_dot_vec3_u32(u_input.b.xwz, u_input.b.ywx)));
    var var_3 = abs(~(~44247u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_div_f32(var_1.a, var_1.a))))));
}

fn func_5(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_2) -> Struct_3 {
    var var_0 = global4.x;
    let var_1 = select(!vec3<bool>(global4.x, select(!global4.x, true, global2[_wgslsmith_index_u32(global1.a.x, 23u)] & false), select(any(vec3<bool>(true, false, false)), global4.x, global2[_wgslsmith_index_u32(u_input.b.x, 23u)])), !vec3<bool>(global4.x, true, false), vec3<bool>(true, true, true));
    let var_2 = firstLeadingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_0, firstLeadingBit(vec3<i32>(-1i, arg_0.x, arg_2.a.x)), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(28868i, 2147483647i, -23698i), arg_0, arg_0), select(vec3<i32>(23052i, global3.a.x, 2147483647i), vec3<i32>(-1i, 0i, global0[_wgslsmith_index_u32(1u, 6u)]), var_1))), reverseBits(firstTrailingBit(global3.a << (u_input.b.zxz % vec3<u32>(32u))))));
    return Struct_3(_wgslsmith_mod_vec2_u32(global1.a, u_input.b.zy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(~vec4<i32>(global3.a.x, 0i, 2147483647i, global0[_wgslsmith_index_u32(u_input.a, 6u)])), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(21325i, global3.a.x, global3.a.x, global0[_wgslsmith_index_u32(global1.a.x, 6u)]), vec4<i32>(-1i, global3.a.x, global0[_wgslsmith_index_u32(global1.a.x, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)])))), -global0[_wgslsmith_index_u32(abs(u_input.a), 6u)], _wgslsmith_dot_vec4_i32(vec4<i32>(~global0[_wgslsmith_index_u32(u_input.a, 6u)], 2147483647i >> (0u % 32u), ~global3.a.x, 0i), -(~vec4<i32>(global3.a.x, -2147483647i, global0[_wgslsmith_index_u32(13346u, 6u)], global3.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(249f * -440f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), 1606f), Struct_2(_wgslsmith_add_vec3_i32(-vec3<i32>(-2147483647i, 29337i, global3.a.x), countOneBits(vec3<i32>(0i, global3.a.x, global3.a.x))) ^ vec3<i32>(global0[_wgslsmith_index_u32(~u_input.a, 6u)], _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(14647u, 6u)], -5764i, 1i, global0[_wgslsmith_index_u32(17626u, 6u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], -1i, -3753i, global3.a.x)), -21042i)));
    var var_1 = _wgslsmith_f_op_f32(trunc(1225f));
    var var_2 = Struct_4(vec4<bool>(!select(true, any(vec4<bool>(global2[_wgslsmith_index_u32(global1.a.x, 23u)], false, global4.x, true)), func_4(true, 1u)), func_4(~global1.a.x <= _wgslsmith_mult_u32(0u, 6789u), 24702u), true, global2[_wgslsmith_index_u32(firstLeadingBit(reverseBits(global1.a.x)), 23u)]), Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(global3.a.x, global0[_wgslsmith_index_u32(u_input.a, 6u)], -9791i), vec3<i32>(0i, _wgslsmith_clamp_i32(21710i, -1i, 2236i), global3.a.x))), Struct_2(global3.a), select(!vec4<bool>(u_input.b.x < 4294967295u, global2[_wgslsmith_index_u32(0u, 23u)] & true, true, true), !vec4<bool>(global4.x && global4.x, false, true | global4.x, func_4(global4.x, var_0.a.x)), !vec4<bool>(true, global2[_wgslsmith_index_u32(abs(0u), 23u)], false, global4.x)));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1242f) * _wgslsmith_f_op_f32(round(1009f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1357f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-176f)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-422f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(824f, -889f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1468f))))))));
    let var_4 = Struct_5(func_4(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 62337u, 15599u) | u_input.b.zxy, u_input.b.ywy), 23u)] | any(!var_2.d), _wgslsmith_clamp_u32(var_0.a.x, 20075u, _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 0u), 65697u))), -955f, max(~abs(u_input.b.yzx), ~(~(u_input.b.wwy & vec3<u32>(0u, u_input.a, global1.a.x)))), _wgslsmith_f_op_f32(ceil(var_3.x)));
    var var_5 = Struct_1(1037f, ~(~12959u), any(var_2.a.xz));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b);
}

