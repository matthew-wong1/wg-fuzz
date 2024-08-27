struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<u32, 28>;

var<private> global2: array<Struct_1, 10>;

var<private> global3: Struct_1 = Struct_1(vec2<i32>(-30821i, 0i), 12755i, true, true);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = global3.d;
    var var_1 = reverseBits(abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, u_input.d, 1639i) ^ vec4<i32>(global3.b, u_input.a, 0i, 23096i), vec4<i32>(arg_0.b, -9689i, u_input.a, u_input.a)), 33062i, abs(max(-1i, -5878i)), _wgslsmith_div_i32(-arg_0.b, -15298i))));
    let var_2 = reverseBits(u_input.d);
    var var_3 = any(!select(!(!vec3<bool>(global3.c, false, false)), !vec3<bool>(global3.d, arg_0.d, false), vec3<bool>(global3.d != global3.c, all(vec3<bool>(global3.d, false, arg_0.d)), true)));
    let var_4 = 7360i;
    return min(_wgslsmith_mult_vec4_i32(reverseBits(~vec4<i32>(var_4, 1i, -2147483647i, -45781i)), _wgslsmith_div_vec4_i32(vec4<i32>(-11612i, var_4, var_4, 1i), max(vec4<i32>(var_2, 2147483647i, var_4, u_input.d), vec4<i32>(global3.a.x, -10451i, global3.b, -30358i)))), vec4<i32>(u_input.d, _wgslsmith_dot_vec3_i32(countOneBits(var_1.xww), vec3<i32>(global3.b, var_4, var_4) & var_1.xyy), arg_0.b, 2147483647i)) << (vec4<u32>(1u & countOneBits(13680u & u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.b.xyw & vec3<u32>(40396u, 116604u, 0u), vec3<u32>(5831u, global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)])) << (_wgslsmith_mult_u32(select(27997u, 1u, global3.d), u_input.b.x) % 32u), global1[_wgslsmith_index_u32(0u, 28u)], select(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 45953u, 1u, 21232u), vec4<u32>(82227u, u_input.b.x, 55000u, global1[_wgslsmith_index_u32(74266u, 28u)]), vec4<bool>(false, false, false, arg_0.d)), vec4<u32>(12145u, u_input.c, 1u, 13980u) | vec4<u32>(4294967295u, 37400u, u_input.b.x, u_input.b.x)), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34366u, 28u)], 28u)], global1[_wgslsmith_index_u32(u_input.b.x, 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)]), vec3<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], u_input.b.x, u_input.b.x)), 28u)], 4294967295u, firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)])), all(!vec2<bool>(true, global3.d)))) % vec4<u32>(32u));
}

fn func_2(arg_0: u32) -> f32 {
    global0 = 76859i;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1627f - 1937f));
    let var_1 = 532f;
    global0 = _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, ~_wgslsmith_sub_i32(u_input.d, global3.a.x), ~(-1i), 2147483647i), func_3(global2[_wgslsmith_index_u32(~(~arg_0), 10u)]));
    let var_2 = global2[_wgslsmith_index_u32(26330u, 10u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(577f * _wgslsmith_f_op_f32(floor(-1216f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-230f))))), var_0)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = 1i;
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, 1000f, arg_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_0))))));
    return arg_3;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~38377u;
    global1 = array<u32, 28>();
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2248f, 156f, -1000f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1206f, 1000f, -779f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-826f, 530f, -176f), vec3<f32>(-1333f, 1246f, -401f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-341f, -1665f, -960f) - vec3<f32>(907f, -108f, -1200f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(284f, 974f, 165f) + vec3<f32>(-519f, 1698f, 418f)))), select(vec3<bool>(!arg_1.d, true & arg_3.d, arg_1.a.x < global3.b), select(vec3<bool>(true, true, true), vec3<bool>(false, arg_3.d, true), global3.c), select(vec3<bool>(arg_0.c, arg_1.c, true), vec3<bool>(global3.d, true, false), arg_2 != -29318i)))), Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.a.x, ~arg_1.a.x), _wgslsmith_div_vec2_i32(arg_1.a, vec2<i32>(2147483647i, arg_2))), _wgslsmith_add_i32(-11969i, firstLeadingBit(arg_1.b) & (-57851i << (0u % 32u))), _wgslsmith_f_op_f32(1716f - _wgslsmith_f_op_f32(-863f + -1023f)) == _wgslsmith_f_op_f32(-2263f - _wgslsmith_f_op_f32(func_2(var_0))), !(!select(arg_0.d, false, true))), -18756i, Struct_1(vec2<i32>(~_wgslsmith_dot_vec2_i32(global3.a, arg_0.a), -arg_3.b), arg_3.a.x, false, !select(all(vec4<bool>(false, false, false, arg_3.d)), arg_0.d, !arg_0.d)));
    let var_2 = abs(u_input.b.x);
    global1 = array<u32, 28>();
    return Struct_1(arg_0.a >> (select(u_input.b.zz, firstTrailingBit(vec2<u32>(30517u, 4294967295u) ^ u_input.b.yw), vec2<bool>(func_4(vec3<f32>(156f, -1333f, -970f), arg_1, global3.a.x, Struct_1(vec2<i32>(59026i, var_1.a.x), 98127i, var_1.c, false)).d, false)) % vec2<u32>(32u)), arg_0.b, false, u_input.c <= global1[_wgslsmith_index_u32(u_input.b.x, 28u)]);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = -1i;
    var var_1 = -vec2<i32>(-447i, arg_1.a.x);
    global1 = array<u32, 28>();
    let var_2 = u_input.b.wzz;
    global3 = func_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(358f - 1168f))), _wgslsmith_f_op_f32(-1000f + -865f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -107f)))))), arg_1, 0i, Struct_1(func_1(func_1(func_4(vec3<f32>(1539f, -1385f, 129f), global2[_wgslsmith_index_u32(1u, 10u)], 36383i, arg_1), func_4(vec3<f32>(-693f, 2401f, -105f), Struct_1(vec2<i32>(2147483647i, 6487i), arg_0.x, false, true), -24413i, Struct_1(arg_0.xz, 1i, arg_1.d, true)), var_1.x, arg_1), Struct_1(_wgslsmith_sub_vec2_i32(global3.a, global3.a), 1i, arg_1.d | false, true), u_input.d, Struct_1(vec2<i32>(-13936i, 28621i), global3.b, func_1(global2[_wgslsmith_index_u32(var_2.x, 10u)], Struct_1(arg_0.xx, 2147483647i, true, false), var_0, arg_1).d, true)).a, 2147483647i, func_1(arg_1, global2[_wgslsmith_index_u32(1u, 10u)], ~_wgslsmith_clamp_i32(-11402i, -1i, arg_0.x), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(abs(1u)), 28u)], 10u)]).c, 206f > _wgslsmith_f_op_f32(floor(1f))));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(var_2.x, 19683u, var_2.x)), _wgslsmith_mult_vec3_u32(var_2, var_2)), 28u)], firstTrailingBit(~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(1u, 28u)], u_input.b.x))), vec2<u32>(var_2.x, var_2.x));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: vec2<f32>) -> Struct_1 {
    global1 = array<u32, 28>();
    global0 = i32(-1i) * -1i;
    var var_0 = vec2<bool>(true, true);
    var var_1 = _wgslsmith_f_op_f32(func_2(arg_1.x));
    let var_2 = vec4<u32>(func_5(min(~(vec3<i32>(49247i, global3.b, -12941i) ^ vec3<i32>(u_input.a, u_input.a, -1i)), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, global3.b, global3.a.x)), global2[_wgslsmith_index_u32(abs(~_wgslsmith_mult_u32(93687u, 0u)), 10u)]), ~(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_1.x, 2017u), firstLeadingBit(24762u)) << (~global1[_wgslsmith_index_u32(~arg_0.x, 28u)] % 32u)), arg_1.x, 1u);
    return global2[_wgslsmith_index_u32(arg_1.x, 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(~vec4<u32>(~(~29742u), func_5(select(vec3<i32>(global3.a.x, global3.a.x, 0i), vec3<i32>(u_input.d, -25076i, 2147483647i), false), func_1(global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)], u_input.a, Struct_1(global3.a, u_input.d, false, global3.c))), u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.c, u_input.b.x) >> (u_input.b % vec4<u32>(32u)), abs(vec4<u32>(u_input.c, 1u, 100884u, 4294967295u)))), ~vec2<u32>(~u_input.b.x, u_input.c | ~17708u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1712f, 126f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-929f, 1453f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(552f, -2581f)), vec2<f32>(1f, 1f)), global3.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, func_3(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~((global1[_wgslsmith_index_u32(u_input.b.x, 28u)] << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12329u, 28u)], 28u)], 28u)], 28u)] % 32u)) << (_wgslsmith_add_u32(u_input.b.x, 4294967295u) % 32u)), 28u)], 10u)]), _wgslsmith_f_op_f32(abs(876f)), global3.b | u_input.d, -827f);
}

