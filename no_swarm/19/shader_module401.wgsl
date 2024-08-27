struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: array<i32, 16> = array<i32, 16>(0i, 1i, 14472i, 2147483647i, i32(-2147483648), -1i, i32(-2147483648), 11421i, -1i, 40153i, 10947i, -1498i, i32(-2147483648), i32(-2147483648), 17885i, 1i);

var<private> global2: array<bool, 26> = array<bool, 26>(true, false, true, true, true, true, false, true, true, true, true, true, true, false, true, true, true, true, true, true, false, false, false, false, false, false);

var<private> global3: vec3<bool> = vec3<bool>(true, false, true);

var<private> global4: array<f32, 14>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    let var_0 = firstLeadingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 16u)], u_input.a, u_input.b.x, -2147483647i) & (max(vec4<i32>(-35125i, u_input.b.x, -2719i, 31374i), vec4<i32>(global1[_wgslsmith_index_u32(1u, 16u)], 74146i, -1i, global1[_wgslsmith_index_u32(u_input.c.x, 16u)])) << (_wgslsmith_div_vec4_u32(u_input.c, u_input.c) % vec4<u32>(32u))), max(vec4<i32>(2147483647i, 2147483647i, min(u_input.a, u_input.a), -70124i), vec4<i32>(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(69922u, 16u)], global1[_wgslsmith_index_u32(u_input.c.x, 16u)]), select(62756i, -2147483647i, global3.x), global1[_wgslsmith_index_u32(~18769u, 16u)], min(-1i, 11271i)))));
    global4 = array<f32, 14>();
    var var_1 = Struct_2(Struct_1(~u_input.c.zzz, firstTrailingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.c.x), u_input.c.xx), ~u_input.c.ww))), Struct_1(u_input.c.xzz, vec2<u32>(~(u_input.c.x ^ u_input.c.x), 1u)), ~(vec2<i32>(~global1[_wgslsmith_index_u32(0u, 16u)], -2147483647i) << (firstTrailingBit(~vec2<u32>(0u, u_input.c.x)) % vec2<u32>(32u))), Struct_1(u_input.c.xzx, _wgslsmith_mod_vec2_u32(u_input.c.ww & min(vec2<u32>(4294967295u, 54500u), vec2<u32>(35641u, 4294967295u)), ~(~vec2<u32>(u_input.c.x, u_input.c.x)))), ~(~u_input.c >> (_wgslsmith_div_vec4_u32(firstTrailingBit(u_input.c), reverseBits(u_input.c)) % vec4<u32>(32u))));
    let var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -313f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x - 1000f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4294967295u, 14u)]))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    global0 = array<bool, 5>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -139f)), arg_0.x)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -223f), 366f)), -2075f)))));
    global4 = array<f32, 14>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(2170u, 14u)]))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(1u, 14u)], arg_0.x, global4[_wgslsmith_index_u32(86752u, 14u)])), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-696f, 464f, 1470f))))))), -1000f));
    var var_2 = Struct_3(~vec2<i32>(~(-6879i), _wgslsmith_clamp_i32(u_input.b.x, global1[_wgslsmith_index_u32(43992u, 16u)], u_input.a)) | _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(19260u, 16u)]), u_input.b.xx), u_input.b.x, Struct_1(select(~u_input.c.zxx, ~_wgslsmith_sub_vec3_u32(u_input.c.wxz, vec3<u32>(u_input.c.x, u_input.c.x, 1u)), ~0u <= u_input.c.x), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.yy, vec2<u32>(u_input.c.x, 1451u)), u_input.c.zy | u_input.c.wy) ^ firstLeadingBit(~u_input.c.wy)), Struct_1(~vec3<u32>(20636u, ~u_input.c.x, u_input.c.x), _wgslsmith_mod_vec2_u32(select(~u_input.c.wx, u_input.c.xw, select(global3.xx, vec2<bool>(false, global0[_wgslsmith_index_u32(15928u, 5u)]), global2[_wgslsmith_index_u32(61427u, 26u)])), firstLeadingBit(~vec2<u32>(u_input.c.x, u_input.c.x)))));
    return Struct_2(var_2.c, Struct_1(u_input.c.xzx, vec2<u32>(u_input.c.x, ~4885u)), vec2<i32>(global1[_wgslsmith_index_u32(23845u, 16u)], ~_wgslsmith_sub_i32(u_input.b.x, min(var_2.a.x, -2147483647i))), Struct_1(~(~var_2.c.a), _wgslsmith_add_vec2_u32(~(~u_input.c.ww), vec2<u32>(abs(var_2.d.b.x), var_2.c.a.x))), vec4<u32>(var_2.d.b.x, 0u, ~4294967295u, 4294967295u) << (select(~(~u_input.c), vec4<u32>(_wgslsmith_div_u32(u_input.c.x, 12810u), u_input.c.x | 39581u, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), var_2.d.a.x), select(vec4<bool>(global3.x, global2[_wgslsmith_index_u32(0u, 26u)], false, global3.x), !vec4<bool>(global3.x, global3.x, global2[_wgslsmith_index_u32(u_input.c.x, 26u)], global0[_wgslsmith_index_u32(var_2.d.a.x, 5u)]), false)) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> vec3<bool> {
    global3 = vec3<bool>(false, false, !all(select(vec2<bool>(global2[_wgslsmith_index_u32(13209u, 26u)], true), global3.xz, true)));
    let var_0 = arg_2.e | arg_2.e;
    let var_1 = true;
    var var_2 = true;
    var_2 = global0[_wgslsmith_index_u32(abs(~arg_0.d.b.x), 5u)];
    return !select(vec3<bool>(true, false, var_1), vec3<bool>(global3.x || (global1[_wgslsmith_index_u32(1009u, 16u)] > arg_2.c.x), true, u_input.b.x < -2147483647i), select(vec3<bool>(!global0[_wgslsmith_index_u32(var_0.x, 5u)], all(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2.e.x, 5u)], arg_1, global2[_wgslsmith_index_u32(arg_3.a.x, 26u)])), all(global3.zz)), select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 26u)], true), vec3<bool>(true, false, false), vec3<bool>(false, global2[_wgslsmith_index_u32(arg_2.b.a.x, 26u)], global2[_wgslsmith_index_u32(arg_2.b.a.x, 26u)])), !vec3<bool>(global2[_wgslsmith_index_u32(1u, 26u)], false, true), global0[_wgslsmith_index_u32(~var_0.x, 5u)]), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_3.a.x, u_input.c.x, 1u), 5u)] || false));
}

fn func_1(arg_0: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -576f), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(0u, 14u)] * _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_0.c.a.x, 14u)])))));
    var var_1 = arg_0.b;
    global3 = func_4(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(1000f)), -1078f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(4294967295u, 14u)], 199f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-590f, -124f) - vec2<f32>(var_0.x, var_0.x))))), global3.x, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-674f, -773f))), func_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(164f, global4[_wgslsmith_index_u32(16742u, 14u)])))).d);
    let var_2 = vec2<bool>(38253i <= _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(1i, -39833i, arg_0.a.x), firstLeadingBit(vec3<i32>(global1[_wgslsmith_index_u32(49231u, 16u)], 0i, 16769i))), vec3<i32>(-global1[_wgslsmith_index_u32(u_input.c.x, 16u)], ~(-2147483647i), -64190i ^ u_input.b.x)), _wgslsmith_mod_u32(func_2(vec2<f32>(var_0.x, -450f)).b.a.x | ~arg_0.d.b.x, 1u) != ~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, 0u, u_input.c.x)), ~vec3<u32>(1u, arg_0.d.a.x, 1876u)));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, global4[_wgslsmith_index_u32(0u, 14u)]))) * vec2<f32>(880f, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(25091u, 14u)], global4[_wgslsmith_index_u32(4000u, 14u)]) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global4[_wgslsmith_index_u32(15722u, 14u)], -1380f)))))));
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~1u, _wgslsmith_dot_vec2_u32(u_input.c.xw, vec2<u32>(arg_0.c.a.x, 103822u))), select(countOneBits(vec3<u32>(0u, u_input.c.x, arg_0.c.b.x)), ~vec3<u32>(33694u, 0u, 25473u), !vec3<bool>(true, global0[_wgslsmith_index_u32(31897u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]))), u_input.c.x) << (~_wgslsmith_clamp_u32(~firstLeadingBit(u_input.c.x), _wgslsmith_mod_u32(func_2(vec2<f32>(-101f, var_0.x)).d.b.x, _wgslsmith_dot_vec3_u32(arg_0.c.a, vec3<u32>(0u, u_input.c.x, 4294967295u))), min(u_input.c.x >> (u_input.c.x % 32u), 1u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 16>();
    global4 = array<f32, 14>();
    var var_0 = global3.x;
    var var_1 = Struct_1(~_wgslsmith_add_vec3_u32(~u_input.c.wxw, select(vec3<u32>(6019u, 21741u, 27806u), vec3<u32>(u_input.c.x, 13190u, u_input.c.x), vec3<bool>(global3.x, global3.x, global3.x))) << (_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, u_input.c.x, u_input.c.x), vec3<u32>(0u, u_input.c.x, 396u)), firstTrailingBit(~u_input.c.wyw), vec3<u32>(func_1(Struct_3(vec2<i32>(21217i, global1[_wgslsmith_index_u32(0u, 16u)]), global1[_wgslsmith_index_u32(u_input.c.x, 16u)], Struct_1(u_input.c.zwz, vec2<u32>(u_input.c.x, u_input.c.x)), Struct_1(u_input.c.zzz, u_input.c.zx))), abs(4294967295u), _wgslsmith_mod_u32(u_input.c.x, 27719u))) % vec3<u32>(32u)), ~vec2<u32>(u_input.c.x, _wgslsmith_mod_u32(26626u, ~u_input.c.x)));
    let var_2 = !(!(!(!(!vec4<bool>(global3.x, global2[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(u_input.c.x, 5u)], false)))));
    let var_3 = Struct_3(-_wgslsmith_sub_vec2_i32(func_2(vec2<f32>(1667f, -1757f)).c, vec2<i32>(-5111i, -7681i)), firstTrailingBit((global1[_wgslsmith_index_u32(0u, 16u)] << (~u_input.c.x % 32u)) | u_input.b.x), Struct_1(vec3<u32>(~_wgslsmith_dot_vec3_u32(u_input.c.wyx, vec3<u32>(u_input.c.x, 4294967295u, 0u)), var_1.a.x | 1u, 467u), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.b.x, var_1.a.x), ~4294967295u), reverseBits(16561u))), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(u_input.c.x, 14u)], -413f) + vec2<f32>(global4[_wgslsmith_index_u32(var_1.a.x, 14u)], 209f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1901f, 574f)))))).b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, ~countOneBits(min(-2147483647i, abs(global1[_wgslsmith_index_u32(4294967295u, 16u)]))), global4[_wgslsmith_index_u32(4294967295u, 14u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(4294967295u, 14u)], global4[_wgslsmith_index_u32(var_1.a.x, 14u)]), _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(0u, 14u)])), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + 1176f))), _wgslsmith_f_op_f32(-1f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(0u, 14u)], 413f, -1000f) + vec3<f32>(global4[_wgslsmith_index_u32(41986u, 14u)], global4[_wgslsmith_index_u32(91697u, 14u)], global4[_wgslsmith_index_u32(0u, 14u)])) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global4[_wgslsmith_index_u32(33687u, 14u)], global4[_wgslsmith_index_u32(var_3.c.a.x, 14u)], -871f), vec3<f32>(-1188f, global4[_wgslsmith_index_u32(var_3.c.b.x, 14u)], global4[_wgslsmith_index_u32(var_1.b.x, 14u)])))), vec3<f32>(1268f, global4[_wgslsmith_index_u32(var_3.d.b.x, 14u)], global4[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, 160u), 14u)]))), u_input.b.xz);
}

