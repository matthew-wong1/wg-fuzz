struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: array<u32, 5> = array<u32, 5>(29267u, 33496u, 4294967295u, 1u, 2369u);

var<private> global2: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(Struct_1(vec2<bool>(true, false), true), 1i, Struct_1(vec2<bool>(true, false), false), vec2<i32>(-48351i, -1i)), Struct_4(Struct_1(vec2<bool>(false, false), false), -16752i, Struct_1(vec2<bool>(false, false), true), vec2<i32>(-1i, -1i)), Struct_4(Struct_1(vec2<bool>(false, true), true), i32(-2147483648), Struct_1(vec2<bool>(false, false), true), vec2<i32>(-1i, 2147483647i)), Struct_4(Struct_1(vec2<bool>(false, true), false), 16766i, Struct_1(vec2<bool>(true, false), false), vec2<i32>(-1i, -45089i)), Struct_4(Struct_1(vec2<bool>(true, true), false), 0i, Struct_1(vec2<bool>(false, true), false), vec2<i32>(7838i, i32(-2147483648))), Struct_4(Struct_1(vec2<bool>(false, true), false), -7143i, Struct_1(vec2<bool>(false, false), true), vec2<i32>(i32(-2147483648), 19343i)), Struct_4(Struct_1(vec2<bool>(false, true), false), i32(-2147483648), Struct_1(vec2<bool>(false, true), true), vec2<i32>(i32(-2147483648), -1i)), Struct_4(Struct_1(vec2<bool>(false, true), false), 31415i, Struct_1(vec2<bool>(true, true), true), vec2<i32>(2147483647i, 45462i)), Struct_4(Struct_1(vec2<bool>(true, true), true), 0i, Struct_1(vec2<bool>(false, false), true), vec2<i32>(2147483647i, -28488i)), Struct_4(Struct_1(vec2<bool>(false, false), true), i32(-2147483648), Struct_1(vec2<bool>(false, true), true), vec2<i32>(0i, 34206i)), Struct_4(Struct_1(vec2<bool>(false, false), false), -1i, Struct_1(vec2<bool>(false, false), false), vec2<i32>(-1i, -8451i)), Struct_4(Struct_1(vec2<bool>(true, false), true), i32(-2147483648), Struct_1(vec2<bool>(true, true), false), vec2<i32>(-1i, i32(-2147483648))));

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<bool>(false, true), true));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    global1 = array<u32, 5>();
    var var_0 = global2[_wgslsmith_index_u32(min(0u, ~global1[_wgslsmith_index_u32(abs(firstLeadingBit(abs(0u))), 5u)]), 12u)];
    let var_1 = Struct_4(var_0.a, -2147483647i, global3[_wgslsmith_index_u32(1u, 1u)], -(-max(vec2<i32>(37145i, 27958i), var_0.d) ^ _wgslsmith_clamp_vec2_i32(abs(var_0.d), vec2<i32>(-9512i, var_0.d.x) << (vec2<u32>(u_input.a.x, u_input.e) % vec2<u32>(32u)), abs(vec2<i32>(-1i, var_0.b)))));
    var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 12u)];
    let var_2 = var_1.a.a.x;
    return firstTrailingBit(abs(_wgslsmith_mult_vec4_u32(abs(u_input.a), u_input.a) & ~firstTrailingBit(u_input.a)));
}

fn func_4(arg_0: u32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(243f, 960f, 1856f, -985f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -1000f, 1099f, 1000f)))))))), vec4<f32>(1f, 1f, 1f, 1f), vec4<bool>(false, true, true, !any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)))));
    var var_1 = var_0.x;
    global2 = array<Struct_4, 12>();
    global3 = array<Struct_1, 1>();
    let var_2 = _wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(34947i, -3154i, u_input.d, 1i), vec4<i32>(-2147483647i, 22607i, u_input.d, -2147483647i)), vec4<i32>(u_input.d, u_input.d, -20580i, -2147483647i), false), -min(vec4<i32>(-5916i, 2147483647i, u_input.d, u_input.d), vec4<i32>(-19673i, u_input.d, u_input.d, u_input.d))), vec4<i32>(_wgslsmith_mod_i32(abs(-1i | u_input.d), select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -2147483647i, 2147483647i, u_input.d), vec4<i32>(41080i, 2147483647i, u_input.d, 2147483647i)), 29674i, true)), 1i, u_input.d, -u_input.d));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(var_0.wzz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(select(538f, var_0.x, true)), _wgslsmith_f_op_f32(-1129f * var_0.x), var_0.x)))), !vec3<bool>(!(0u <= global1[_wgslsmith_index_u32(0u, 5u)]), false, var_2 <= -u_input.d)));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<i32>) -> vec2<bool> {
    let var_0 = Struct_3(u_input.a.xy << (abs(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(1745u, global1[_wgslsmith_index_u32(u_input.b, 5u)])), ~vec2<u32>(1u, u_input.e))) % vec2<u32>(32u)), false);
    var var_1 = _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(u_input.a.x, firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), var_0.a.x, var_0.a.x << (global1[_wgslsmith_index_u32(1u, 5u)] % 32u))), ~(~reverseBits(u_input.a) >> (countOneBits(~vec4<u32>(u_input.e, u_input.b, global1[_wgslsmith_index_u32(63329u, 5u)], 3986u)) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(1u, 4294967295u, 49401u, global1[_wgslsmith_index_u32(0u, 5u)]), u_input.a)), func_3()), min(vec4<u32>(var_0.a.x, u_input.a.x & var_0.a.x, ~u_input.b, _wgslsmith_dot_vec2_u32(u_input.a.wx, var_0.a)), select(u_input.a, u_input.a, vec4<bool>(arg_0.c.a.x, true, false, arg_0.a.a.x)) | u_input.a))));
    var var_3 = _wgslsmith_f_op_f32(max(var_2.x, var_2.x));
    global0 = _wgslsmith_f_op_f32(720f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2.x, -1160f))) * -124f) - _wgslsmith_f_op_f32(-var_2.x)));
    return arg_0.a.a;
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_2 {
    var var_0 = vec3<i32>(u_input.d, 45229i, -(arg_1 << (u_input.a.x % 32u))) << (u_input.a.xyy % vec3<u32>(32u));
    var_0 = ~_wgslsmith_div_vec3_i32(firstLeadingBit(-(vec3<i32>(-1i, arg_1, u_input.d) | vec3<i32>(-2147483647i, 1i, var_0.x))), reverseBits(_wgslsmith_div_vec3_i32(select(vec3<i32>(86463i, u_input.d, u_input.d), vec3<i32>(26922i, -34480i, var_0.x), arg_0), vec3<i32>(arg_1, arg_1, -12567i))));
    let var_1 = abs(vec4<i32>(_wgslsmith_mult_i32(arg_1, u_input.d << (global1[_wgslsmith_index_u32(~4294967295u, 5u)] % 32u)), arg_1, firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_div_i32(27557i, u_input.d), abs(var_0.x))), min(_wgslsmith_clamp_i32(2147483647i, 2147483647i, -279i) << (~4294967295u % 32u), 10496i)));
    var var_2 = select(vec2<bool>(arg_0 | any(func_2(Struct_4(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34140u, 5u)], 5u)], 1u)], 18825i, Struct_1(vec2<bool>(arg_0, true), arg_0), vec2<i32>(var_1.x, arg_1)), vec2<i32>(u_input.d, -27575i))), !((48083u <= global1[_wgslsmith_index_u32(0u, 5u)]) & true)), vec2<bool>(true, all(!select(vec3<bool>(true, false, true), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, false, arg_0)))), false);
    var_2 = select(func_2(Struct_4(global3[_wgslsmith_index_u32(countOneBits(45795u), 1u)], _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.x, 0i), _wgslsmith_mult_vec3_i32(vec3<i32>(-5038i, u_input.d, -36247i), var_1.zzz)), Struct_1(select(vec2<bool>(var_2.x, arg_0), vec2<bool>(true, var_2.x), arg_0), any(vec2<bool>(var_2.x, true))), ~var_1.zw), var_1.xy), select(!vec2<bool>(true, !var_2.x), vec2<bool>(!(!arg_0), !func_2(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 12u)], var_0.yz).x), func_2(Struct_4(global3[_wgslsmith_index_u32(u_input.b, 1u)], -41210i, global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 5u)], 1u)], vec2<i32>(arg_1, u_input.d) | vec2<i32>(var_1.x, u_input.d)), var_1.yw)), (~_wgslsmith_mod_i32(49931i, var_1.x) ^ abs(1i)) >= ~var_0.x);
    return Struct_2(global3[_wgslsmith_index_u32(min(firstLeadingBit(reverseBits(global1[_wgslsmith_index_u32(u_input.b, 5u)]) | ~10142u), ~u_input.e), 1u)], Struct_1(vec2<bool>(true, true), !(!(false != var_2.x))));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = ~(~(vec3<u32>(_wgslsmith_add_u32(7945u, 29199u), firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]), 1u) ^ vec3<u32>(global1[_wgslsmith_index_u32(u_input.c, 5u)], global1[_wgslsmith_index_u32(15302u, 5u)], global1[_wgslsmith_index_u32(~26392u, 5u)])));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(543f, 1864f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1850f * 340f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2125f + -1333f))))))));
    global1 = array<u32, 5>();
    var var_1 = reverseBits(max(vec4<i32>(1i, abs(u_input.d), _wgslsmith_div_i32(~(-2147483647i), _wgslsmith_add_i32(u_input.d, 1i)), u_input.d), firstLeadingBit(-vec4<i32>(-1i, u_input.d, u_input.d, u_input.d))));
    var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(max(~(u_input.d ^ 52315i), _wgslsmith_mod_i32(select(u_input.d, u_input.d, arg_2.x), -2147483647i)), -1i, 0i, _wgslsmith_clamp_i32(~(~u_input.d), 23635i, countOneBits(select(var_1.x, var_1.x, arg_1)))), vec4<i32>(var_1.x, -61752i ^ var_1.x, 29752i, ~1i));
    return Struct_2(Struct_1(!vec2<bool>(false, all(vec4<bool>(arg_3.b, arg_1, false, false))), !any(select(arg_2, arg_2, arg_3.a.x))), func_1(arg_3.b, u_input.d & ~max(u_input.d, u_input.d)).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(false, 0i), all(vec3<bool>(func_1(true, _wgslsmith_mod_i32(u_input.d, -43711i)).b.a.x, all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), !(u_input.d >= 1i))), select(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), vec3<bool>(true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true))), true), true), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, global1[_wgslsmith_index_u32(u_input.b, 5u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~18540u, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(u_input.a.x, 5u)] >> (u_input.b % 32u), 1u)), 5u)]), 1u)]);
    let var_1 = var_0.b;
    let var_2 = Struct_1(vec2<bool>(!var_0.a.a.x | (var_0.a.a.x || all(vec3<bool>(var_1.b, false, false))), false), false);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -732f);
    global3 = array<Struct_1, 1>();
    let var_3 = Struct_3(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, ~u_input.a.x), (u_input.a.xw ^ vec2<u32>(global1[_wgslsmith_index_u32(60732u, 5u)], u_input.c)) << (~vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))), u_input.a.ww), any(func_1(any(!vec3<bool>(true, false, var_0.b.b)), firstTrailingBit(1i)).b.a));
    global2 = array<Struct_4, 12>();
    let var_4 = u_input.a;
    var var_5 = Struct_2(Struct_1(vec2<bool>(false, func_5(var_0, true, vec3<bool>(true, var_1.b, true), func_1(var_0.b.a.x, -2147483647i).b).b.a.x), func_1(true, -u_input.d).b.b), Struct_1(var_2.a, true));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_dot_vec4_i32(abs(~vec4<i32>(-28220i, u_input.d, u_input.d, 0i)), select(vec4<i32>(40545i, u_input.d, u_input.d, -2147483647i) ^ vec4<i32>(u_input.d, -27033i, 1i, u_input.d), -vec4<i32>(31139i, -33889i, 1i, 52119i), -2188i != u_input.d))), min(u_input.d, -2147483647i));
}

