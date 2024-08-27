struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5>;

var<private> global1: vec2<bool>;

var<private> global2: array<bool, 2> = array<bool, 2>(true, true);

var<private> global3: array<i32, 4> = array<i32, 4>(1i, 2147483647i, -18540i, 24440i);

var<private> global4: array<Struct_3, 12>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_add_vec4_i32(arg_0, firstLeadingBit(vec4<i32>(0i, global3[_wgslsmith_index_u32(~u_input.d, 4u)], _wgslsmith_div_i32(global3[_wgslsmith_index_u32(0u, 4u)], -2147483647i), 0i)) & ~vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(4294967295u, 5u)], arg_0), _wgslsmith_mult_i32(arg_0.x, 1i), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.yy), 4u)]));
    var var_1 = vec4<i32>(countOneBits(-25865i), -1i, 50517i, -55644i);
    let var_2 = arg_1.b.xw;
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-426f * -496f), _wgslsmith_f_op_f32(sign(-1359f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-129f, -191f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-128f, 936f, 1385f) + vec3<f32>(-1424f, -901f, 1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(986f, -1000f, -1000f))))))));
    var var_4 = countOneBits(var_0.x) & (~(~firstTrailingBit(42471i)) ^ -42542i);
    return 1467u;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = vec3<f32>(-933f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1212f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-138f)) + _wgslsmith_f_op_f32(f32(-1f) * -284f))), _wgslsmith_f_op_f32(ceil(-1474f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1307f)), -195f, true)))), -362f)));
    var var_1 = abs(_wgslsmith_sub_i32(_wgslsmith_sub_i32(26215i, 18318i), -12998i));
    let var_2 = select(129955u, reverseBits(~abs(1u)), true);
    let var_3 = select(true, true, arg_1.x);
    var_1 = global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c, 1u, u_input.b.x, u_input.d)), vec4<u32>(u_input.a, 0u, 4294967295u, var_2))), 4u)];
    return abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(~u_input.d, 4u)], -33707i, ~global3[_wgslsmith_index_u32(0u, 4u)], -1i), vec4<i32>(2147483647i, global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(u_input.a, 4u)], global3[_wgslsmith_index_u32(64688u, 4u)]) >> (~vec4<u32>(u_input.a, var_2, 1u, u_input.d) % vec4<u32>(32u)), ~global0[_wgslsmith_index_u32(57467u, 5u)])) & ~vec4<i32>(global3[_wgslsmith_index_u32(func_3(_wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(9168u, 5u)], vec4<i32>(0i, 9719i, -25986i, 2147483647i)), arg_0.a), 4u)], _wgslsmith_mult_i32(-32657i, 1i), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(129234u, u_input.a), 4u)], global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 1u, 1u), vec4<u32>(u_input.d, 1u, u_input.c, var_2))), 4u)]);
}

fn func_2(arg_0: bool) -> f32 {
    global3 = array<i32, 4>();
    var var_0 = ~func_4(Struct_2(Struct_1(select(global2[_wgslsmith_index_u32(u_input.c, 2u)], global2[_wgslsmith_index_u32(u_input.d, 2u)], global2[_wgslsmith_index_u32(4256u, 2u)]), !vec4<bool>(global1.x, global2[_wgslsmith_index_u32(u_input.d, 2u)], false, true), true), all(select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.d, 2u)]), vec2<bool>(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(76944u, 2u)]), vec2<bool>(false, true)))), !select(!vec2<bool>(global1.x, global2[_wgslsmith_index_u32(u_input.c, 2u)]), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, true), vec2<bool>(arg_0, global1.x)), !vec2<bool>(true, global1.x)), Struct_2(Struct_1(global2[_wgslsmith_index_u32(func_3(vec4<i32>(-22507i, -1i, -1i, global3[_wgslsmith_index_u32(15771u, 4u)]), Struct_1(global1.x, vec4<bool>(true, false, false, false), false)), 2u)], !vec4<bool>(global1.x, arg_0, true, arg_0), true), true), Struct_2(Struct_1(global1.x, select(vec4<bool>(false, false, false, arg_0), vec4<bool>(global1.x, false, arg_0, false), global1.x), !global1.x), any(select(vec2<bool>(false, arg_0), vec2<bool>(true, true), vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 2u)])))));
    global1 = select(select(!(!vec2<bool>(global2[_wgslsmith_index_u32(32577u, 2u)], true)), vec2<bool>(false && global2[_wgslsmith_index_u32(u_input.d, 2u)], true), true), vec2<bool>(true, true), select(select(vec2<bool>(var_0.x >= global3[_wgslsmith_index_u32(34414u, 4u)], global2[_wgslsmith_index_u32(1u, 2u)] & true), !select(vec2<bool>(false, true), vec2<bool>(arg_0, global2[_wgslsmith_index_u32(u_input.b.x, 2u)]), true), any(vec3<bool>(true, arg_0, true))), !vec2<bool>(all(vec2<bool>(true, global1.x)), all(vec2<bool>(arg_0, false))), var_0.x <= _wgslsmith_add_i32(-27397i | var_0.x, -global3[_wgslsmith_index_u32(59158u, 4u)])));
    let var_1 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, 0u), 2u)] & global2[_wgslsmith_index_u32(u_input.a, 2u)], !vec4<bool>(true, all(!vec2<bool>(global1.x, false)), all(!vec4<bool>(true, global1.x, global2[_wgslsmith_index_u32(24614u, 2u)], false)), arg_0), true);
    global0 = array<vec4<i32>, 5>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1649f) - 1920f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -170f))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<i32>) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(1u, 2u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-105f * -1162f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -420f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(221f, _wgslsmith_div_f32(-214f, 214f), true)), _wgslsmith_f_op_f32(f32(-1f) * -911f))), _wgslsmith_f_op_f32(-1f), false)), 760f);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.xxx))), var_0.yyx));
    var var_2 = Struct_1(all(arg_2.b.wxx), select(select(arg_2.b, vec4<bool>(true, any(vec3<bool>(arg_1.x, true, arg_2.b.x)), any(arg_2.b.xzz), global1.x), arg_2.b), select(select(select(arg_2.b, arg_2.b, false), select(vec4<bool>(global1.x, false, arg_1.x, true), arg_2.b, global1.x), vec4<bool>(global2[_wgslsmith_index_u32(u_input.d, 2u)], false, true, global2[_wgslsmith_index_u32(45026u, 2u)])), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 2u)], false, true, global1.x), all(vec2<bool>(global1.x, global1.x))), vec4<bool>(!any(vec3<bool>(true, global1.x, global1.x)), global3[_wgslsmith_index_u32(0u | arg_0.x, 4u)] >= 0i, true, global1.x)), any(vec2<bool>(any(arg_2.b), !(u_input.b.x <= arg_0.x))));
    global4 = array<Struct_3, 12>();
    global4 = array<Struct_3, 12>();
    return 1f;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: i32, arg_3: vec4<f32>) -> vec4<bool> {
    global2 = array<bool, 2>();
    var var_0 = true;
    var var_1 = Struct_3(-min(global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(0u, u_input.b.x), 4u)], select(max(arg_2, -49117i), global3[_wgslsmith_index_u32(func_3(vec4<i32>(global3[_wgslsmith_index_u32(22017u, 4u)], arg_2, arg_2, arg_2), Struct_1(true, vec4<bool>(true, global1.x, true, global2[_wgslsmith_index_u32(0u, 2u)]), global2[_wgslsmith_index_u32(4294967295u, 2u)])), 4u)], any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 2u)], true)))), Struct_1(true && ((global2[_wgslsmith_index_u32(30995u, 2u)] | true) && any(vec4<bool>(global2[_wgslsmith_index_u32(1u, 2u)], global1.x, false, false))), vec4<bool>(global2[_wgslsmith_index_u32(~u_input.d, 2u)], true, all(!vec2<bool>(true, global1.x)), _wgslsmith_f_op_f32(round(arg_3.x)) < _wgslsmith_f_op_f32(round(-1438f))), true), Struct_2(Struct_1(select(!global1.x, arg_1.x > -1000f, 1541f <= arg_3.x), !vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(0u, 2u)]), u_input.b.x <= ~u_input.b.x), all(vec3<bool>(true, 1i == global3[_wgslsmith_index_u32(4294967295u, 4u)], true))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(true)))), arg_1.x);
    let var_3 = vec4<bool>(false | (all(var_1.c.a.b.xwx) & (max(-2147483647i, global3[_wgslsmith_index_u32(54714u, 4u)]) <= _wgslsmith_dot_vec4_i32(vec4<i32>(-47345i, global3[_wgslsmith_index_u32(u_input.a, 4u)], var_1.a, 2147483647i), vec4<i32>(-1i, -1i, var_1.a, 1i)))), true, false | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -1000f)) != 132f), any(var_1.c.a.b.yyx));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, all(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1481f, -892f, 1103f, -1044f)))), vec2<f32>(_wgslsmith_f_op_f32(func_1(u_input.b.zx, vec2<bool>(true, true), Struct_1(global2[_wgslsmith_index_u32(0u, 2u)], vec4<bool>(false, global1.x, false, true), true), vec2<i32>(2147483647i, global3[_wgslsmith_index_u32(u_input.c, 4u)]))), _wgslsmith_f_op_f32(859f - 519f)), 1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-357f, 969f, -2103f, -1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1141f, -717f, 1019f, 537f))))));
    let var_1 = ~_wgslsmith_add_u32(_wgslsmith_add_u32(firstLeadingBit(select(20091u, u_input.d, var_0.x)), 1u), reverseBits(_wgslsmith_mult_u32(firstTrailingBit(u_input.a), 43788u)));
    let var_2 = firstLeadingBit(vec3<i32>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, 4294967295u >> (var_1 % 32u)) & select(~23262u, ~0u, global1.x), 4u)], _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(u_input.d, 5u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.c, var_1, var_1, 24489u)), vec4<u32>(4294967295u, 1u, var_1, 38242u)), 5u)]), -1i));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1067f), _wgslsmith_f_op_f32(520f + 525f), -581f, 425f))));
    var_0 = select(vec2<bool>(true, true), select(select(!select(vec2<bool>(global2[_wgslsmith_index_u32(4766u, 2u)], global2[_wgslsmith_index_u32(4027u, 2u)]), vec2<bool>(true, global1.x), true), vec2<bool>(false, true), func_5(vec4<f32>(var_3.x, -1000f, var_3.x, var_3.x), _wgslsmith_f_op_vec2_f32(var_3.xy - var_3.xx), var_2.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 154f, var_3.x, var_3.x) + vec4<f32>(-1255f, var_3.x, -856f, 151f))).zw), select(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, var_3.x, 1000f)), var_3.ww, global3[_wgslsmith_index_u32(var_1, 4u)], vec4<f32>(var_3.x, var_3.x, var_3.x, -915f)).zy, vec2<bool>(true, true), func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(941f, 887f, 609f, var_3.x) - vec4<f32>(1076f, 2682f, var_3.x, var_3.x)), _wgslsmith_div_vec2_f32(vec2<f32>(var_3.x, -779f), vec2<f32>(var_3.x, var_3.x)), global3[_wgslsmith_index_u32(u_input.c, 4u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-622f, -301f, 246f, -3264f))).x), vec2<bool>(var_2.x != -var_2.x, !(var_1 > 26883u))), !vec2<bool>(true, any(vec3<bool>(true, global1.x, false))));
    let var_4 = vec4<bool>(true, !any(select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 2u)], global1.x, false, global2[_wgslsmith_index_u32(var_1, 2u)]), func_5(vec4<f32>(-298f, var_3.x, var_3.x, 208f), var_3.zw, global3[_wgslsmith_index_u32(105152u, 4u)], vec4<f32>(680f, -189f, -865f, var_3.x)), select(vec4<bool>(false, var_0.x, global2[_wgslsmith_index_u32(u_input.c, 2u)], false), vec4<bool>(false, false, false, true), false))), true, true);
    let var_5 = Struct_2(Struct_1(all(vec2<bool>(any(var_4.zzx), all(var_4.ww))), vec4<bool>(global1.x, false, var_4.x && !global2[_wgslsmith_index_u32(u_input.b.x, 2u)], all(vec3<bool>(global2[_wgslsmith_index_u32(44768u, 2u)], var_0.x, global1.x))), false && all(select(var_4.wxy, var_4.ywy, var_4.wzy))), any(var_4.zzy));
    let x = u_input.a;
    s_output = StorageBuffer(abs(reverseBits(vec4<u32>(u_input.a, u_input.a, var_1, 0u) ^ vec4<u32>(u_input.d, u_input.c, 0u, u_input.a))) << (vec4<u32>(1u, 24203u, ~(~var_1), _wgslsmith_sub_u32(select(u_input.a, 1u, false), ~u_input.b.x)) % vec4<u32>(32u)));
}

