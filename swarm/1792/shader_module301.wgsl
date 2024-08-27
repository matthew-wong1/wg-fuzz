struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<u32>;

var<private> global2: array<vec4<f32>, 31>;

var<private> global3: vec4<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_div_vec3_f32(arg_0.wyy, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, global3.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(299f, global3.x) - _wgslsmith_f_op_f32(-global3.x))))));
    global1 = select(vec2<u32>(_wgslsmith_mod_u32(~5170u, global1.x & 65816u) & max(global1.x << (1u % 32u), global0.a.x), ~(~global1.x)), global0.a.xz, (!select(true, true, false) || any(select(vec2<bool>(true, false), vec2<bool>(false, true), true))) || select(any(vec2<bool>(true, true)), false, select(arg_0.x >= arg_0.x, true, true)));
    let var_1 = ~_wgslsmith_div_vec2_u32((_wgslsmith_div_vec2_u32(vec2<u32>(global1.x, 20159u), u_input.a.zz) << (vec2<u32>(22843u, global0.a.x) % vec2<u32>(32u))) & _wgslsmith_mod_vec2_u32(~vec2<u32>(global0.a.x, 49814u), ~u_input.d.xz), _wgslsmith_clamp_vec2_u32(~global0.a.yx >> (vec2<u32>(42011u, 36912u) % vec2<u32>(32u)), select(vec2<u32>(global0.a.x, u_input.e), vec2<u32>(50986u, arg_1), vec2<bool>(true, false)) ^ reverseBits(u_input.a.xx), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a.x, 68563u), u_input.d.xy)));
    var var_2 = global3.x;
    global0 = Struct_1(global0.a);
    return global3.x;
}

fn func_2() -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(332f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, -249f)), _wgslsmith_sub_u32(u_input.d.x, 9638u))))), select(countOneBits(firstLeadingBit(vec3<i32>(-1i, 0i, -15964i))), vec3<i32>(countOneBits(2147483647i), 0i, min(12404i, 48974i)) | vec3<i32>(-5615i, ~(-1i), select(0i, -60334i, false)), all(vec2<bool>(false, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(63397u, 31u)]))), vec4<f32>(global3.x, -1732f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(global3.x + global3.x)), vec4<bool>(global0.a.x > global0.a.x, true, all(vec3<bool>(false, true, false)), false)))), false);
    global1 = firstTrailingBit(u_input.d.yy);
    var var_1 = select(!(!select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(var_0.d, var_0.d), false), !vec2<bool>(var_0.d, true))), select(!select(vec2<bool>(var_0.d, var_0.d), !vec2<bool>(true, var_0.d), any(vec2<bool>(true, false))), select(vec2<bool>(var_0.d, false), select(!vec2<bool>(var_0.d, var_0.d), !vec2<bool>(var_0.d, var_0.d), true), select(false, false, false) | var_0.d), true), false);
    let var_2 = u_input.e ^ ~global1.x;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(floor(-2118f)))), _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(var_0.b.x, var_0.b.x, var_0.b.x)) >> (global0.a % vec3<u32>(32u)), -vec3<i32>(1i, _wgslsmith_mod_i32(var_0.b.x, var_0.b.x), -1165i)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(global1.x, global0.a.x, var_1.x), reverseBits(1u), abs(global1.x)), 31u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.x, 769f, 464f, var_0.c.x))) - _wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(global0.a.x, 31u)])), abs(var_0.b.x) >= -82088i)))), select(var_1.x, ((-1i != var_0.b.x) || var_1.x) & all(vec4<bool>(false, false, var_0.d, true)), var_0.d));
    return global0.a.x;
}

fn func_1() -> vec2<bool> {
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(global0.a.x, 31u)], vec4<f32>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(false, true, true, true))) * global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 32982u, 4294967295u, global0.a.x), vec4<u32>(4294967295u, 0u, global0.a.x, u_input.e)), 31u)]) * vec4<f32>(_wgslsmith_f_op_f32(-global3.x), global3.x, -489f, _wgslsmith_div_f32(global3.x, -581f))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(select(1874f, -734f, true)), _wgslsmith_f_op_f32(select(global3.x, -922f, false))), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 4294967295u), 31u)])), false)));
    var var_0 = any(select(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, true, true))), !vec4<bool>(any(vec3<bool>(true, true, false)), true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))));
    let var_1 = Struct_1(global0.a);
    global3 = _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(func_2(), 31u)]);
    var_0 = any(select(vec3<bool>(true, !all(vec4<bool>(false, true, false, true)), all(vec4<bool>(true, true, true, false))), vec3<bool>(true, true, true), !vec3<bool>(any(vec2<bool>(true, false)), false, 2770u > global1.x)));
    return !vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-509f + global3.x)) > global3.x, true);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: bool, arg_3: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.yx));
    global3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(countOneBits(firstTrailingBit(_wgslsmith_add_u32(global1.x, 16879u))), 31u)]), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(global2[_wgslsmith_index_u32(~4294967295u, 31u)])))));
    global1 = min(u_input.a.xx ^ firstLeadingBit(vec2<u32>(~29161u, firstTrailingBit(arg_0.x))), vec2<u32>(global0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(1u), arg_0.x, global0.a.x & 26689u, global0.a.x), firstLeadingBit(countOneBits(vec4<u32>(arg_0.x, u_input.d.x, global0.a.x, 53128u))))));
    var var_1 = Struct_1(countOneBits(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(4294967295u, global0.a.x, global0.a.x) >> (arg_0 % vec3<u32>(32u))), ~(vec3<u32>(global1.x, 35445u, arg_0.x) ^ global0.a), firstLeadingBit(~u_input.a))));
    let var_2 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(u_input.b, ~(~39369u)), 4294967295u, ~select(var_1.a.x, _wgslsmith_mod_u32(u_input.c, u_input.d.x), func_1().x)));
    return ~arg_3;
}

fn func_5(arg_0: i32, arg_1: vec4<i32>, arg_2: f32) -> Struct_4 {
    var var_0 = arg_1.x;
    var var_1 = -547f;
    var var_2 = false;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(min(-981f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-586f)))) + _wgslsmith_f_op_f32(ceil(615f))))), -358f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(f32(-1f) * -1281f)));
    var var_4 = ~(reverseBits(global0.a.x) & (countOneBits(firstTrailingBit(11035u)) ^ 3480u));
    return Struct_4(Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a, ~global0.a, _wgslsmith_sub_vec3_u32(u_input.a, u_input.a)), vec3<u32>(u_input.b, 1u, select(u_input.e, 11543u, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(-max(_wgslsmith_dot_vec4_i32(vec4<i32>(-28887i, -2147483647i, 16501i, 1i), vec4<i32>(-26529i, 3687i, 0i, -2147483647i)) >> (countOneBits(global0.a.x) % 32u), -max(-1417i, 2147483647i)), vec4<i32>(func_4(vec3<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(global0.a.zz, vec2<u32>(76831u, 12761u)), select(u_input.b, u_input.e, true)), func_1(), true, _wgslsmith_add_i32(~2147483647i, 0i)), _wgslsmith_sub_i32(54287i >> (min(u_input.a.x, 490u) % 32u), reverseBits(~1681i)), reverseBits(reverseBits(0i)) & abs(firstTrailingBit(1i)), _wgslsmith_mod_i32(select(11616i << (0u % 32u), ~6261i, true), abs(i32(-1i) * -8258i))), -190f);
    let var_1 = select(!select(vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(false, false))), false), vec2<bool>(any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), true)), true), vec2<bool>(true, true));
    global2 = array<vec4<f32>, 31>();
    var var_2 = -144f;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -508f) - _wgslsmith_f_op_f32(abs(116f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -764f)) * 712f)) + _wgslsmith_f_op_f32(ceil(-520f)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-850f)) * global3.x);
    var var_5 = Struct_3(_wgslsmith_f_op_f32(global3.x - global3.x), ~_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(0i, 2147483647i), ~55560i, ~(-1i)), ~max(vec3<i32>(-1i, 4191i, 32594i), vec3<i32>(-1i, -7934i, 2147483647i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(26591u, 31u)] - global2[_wgslsmith_index_u32(global0.a.x, 31u)])))) + vec4<f32>(_wgslsmith_f_op_f32(max(global3.x, global3.x)), global3.x, global3.x, 661f)), 1u > _wgslsmith_sub_u32(14302u, min(~5476u, _wgslsmith_clamp_u32(0u, global0.a.x, global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(1u | _wgslsmith_mult_u32(global0.a.x, 4294967295u)), 4294967295u));
}

