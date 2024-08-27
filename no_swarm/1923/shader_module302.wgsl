struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true));

var<private> global1: bool = true;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = vec4<bool>(true, true, true, true);
    global1 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-348f, -233f, -663f, 261f) + vec4<f32>(-1116f, 1000f, -214f, -152f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -127f), _wgslsmith_f_op_f32(1f - 1000f), -1697f, -1960f))));
    let var_2 = select(select(global0[_wgslsmith_index_u32(~8276u, 12u)], !vec3<bool>(var_0.x | true, any(var_0.xy), any(vec3<bool>(var_0.x, true, var_0.x))), vec3<bool>(any(vec2<bool>(false, var_0.x)), u_input.c.x == _wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(22604u, 1u)), false)), !select(select(global0[_wgslsmith_index_u32(0u, 12u)], !var_0.zzx, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, 25994u), 12u)]), !select(global0[_wgslsmith_index_u32(u_input.c.x, 12u)], vec3<bool>(true, var_0.x, var_0.x), var_0.x), !var_0.x || all(vec2<bool>(false, var_0.x))), vec3<bool>(!var_0.x, !(true == !var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(228f + var_1.x) + -1000f) <= _wgslsmith_f_op_f32(334f * var_1.x)));
    var var_3 = vec4<i32>(abs(_wgslsmith_mod_i32(1i, min(45431i, u_input.a) ^ 1i)), firstLeadingBit(u_input.b.x), _wgslsmith_div_i32(~(~u_input.a), ~(-1i)) << (u_input.c.x % 32u), _wgslsmith_sub_i32(abs(-1i), ~countOneBits(u_input.b.x)));
    return u_input.c.x & u_input.c.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<i32>) -> vec4<i32> {
    return _wgslsmith_clamp_vec4_i32(firstTrailingBit(abs(~vec4<i32>(u_input.a, arg_2.x, -36169i, 67989i) ^ -vec4<i32>(0i, -51913i, u_input.a, 1i))), vec4<i32>(arg_2.x, firstTrailingBit(u_input.b.x), -u_input.a, arg_2.x), ~_wgslsmith_clamp_vec4_i32(~vec4<i32>(-2147483647i, -7995i, u_input.a, -8331i) & countOneBits(vec4<i32>(41070i, arg_2.x, -22661i, u_input.b.x)), reverseBits(vec4<i32>(28890i, arg_2.x, arg_2.x, arg_2.x)), vec4<i32>(abs(arg_2.x), ~(-76070i), 10983i, firstTrailingBit(u_input.a))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = ~vec3<i32>(~0i, arg_0.c.b.x, u_input.b.x);
    let var_1 = _wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(arg_1.a.x * 1217f)) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.d)) + 239f)));
    let var_2 = select(func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a.x, -1000f, arg_1.a.x, arg_0.a.x), vec4<f32>(arg_0.a.x, arg_1.d, -1000f, arg_1.a.x), select(vec4<bool>(arg_0.c.c, true, false, arg_1.c.c), vec4<bool>(arg_1.b.d.x, arg_0.b.c, arg_1.b.c, var_1), arg_1.b.d.x))), func_3(), firstLeadingBit(u_input.b)) >> (~(reverseBits(vec4<u32>(1u, 4294967295u, arg_0.b.a.x, 0u)) ^ ~arg_1.b.a) % vec4<u32>(32u)), vec4<i32>(var_0.x, -1i, u_input.b.x, var_0.x), !select(select(vec4<bool>(arg_0.b.c, true, false, arg_0.b.c), vec4<bool>(arg_1.b.d.x, true, true, arg_1.b.c), all(vec2<bool>(var_1, true))), vec4<bool>(any(arg_0.c.d.xx), all(arg_1.b.d), false, all(arg_0.b.d)), all(vec3<bool>(true, arg_1.b.c, arg_0.c.d.x))));
    var var_3 = arg_0;
    let var_4 = ~(~vec2<u32>(u_input.c.x, reverseBits(~arg_1.b.a.x)));
    return -230f;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    global0 = array<vec3<bool>, 12>();
    let var_0 = u_input.b.xy;
    var var_1 = u_input.c.wzx;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2373f), 666f, -111f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(vec3<f32>(-631f, 1463f, 463f), Struct_1(u_input.c, vec2<i32>(-9594i, arg_2), arg_0.x, global0[_wgslsmith_index_u32(u_input.c.x, 12u)]), Struct_1(vec4<u32>(arg_1.x, 0u, var_1.x, u_input.c.x), vec2<i32>(1i, 2147483647i), arg_0.x, arg_0), -1725f), Struct_2(vec3<f32>(1667f, 1122f, -1166f), Struct_1(u_input.c, var_0, false, vec3<bool>(false, false, arg_0.x)), Struct_1(vec4<u32>(var_1.x, 0u, var_1.x, var_1.x), var_0, arg_0.x, vec3<bool>(arg_0.x, false, arg_0.x)), -624f))), -1690f, -1970f))), Struct_1(vec4<u32>(~abs(22510u), 46763u, min(~var_1.x, arg_1.x ^ 4294967295u), ~(~arg_1.x)), u_input.b.xy, true, vec3<bool>(any(vec2<bool>(arg_0.x, arg_0.x)), all(!vec3<bool>(arg_0.x, false, arg_0.x)), !arg_0.x)), Struct_1(firstTrailingBit(~u_input.c), u_input.b.xx, !(-1351f > _wgslsmith_f_op_f32(select(-257f, -229f, false))), !arg_0), -1000f);
    var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(16063u, var_2.c.a.x, arg_1.x), select(firstTrailingBit(~vec3<u32>(19927u, arg_1.x, u_input.c.x)), ~min(~var_2.c.a.zzz, u_input.c.ywz), any(select(!vec3<bool>(var_2.b.c, false, true), !vec3<bool>(arg_0.x, var_2.c.c, arg_0.x), global0[_wgslsmith_index_u32(arg_1.x, 12u)]))));
    return Struct_1(select(var_2.c.a, var_2.c.a << (u_input.c % vec4<u32>(32u)), select(vec4<bool>(true, arg_0.x, select(true, arg_0.x, true), true), vec4<bool>(arg_0.x, true, false, all(arg_0.xx)), vec4<bool>(false, false, select(var_2.b.c, false, var_2.b.c), true))), -(vec2<i32>(9769i, reverseBits(-65211i)) >> (_wgslsmith_add_vec2_u32(u_input.c.wx << (var_1.yz % vec2<u32>(32u)), vec2<u32>(8505u, var_2.c.a.x)) % vec2<u32>(32u))), arg_1.x == u_input.c.x, !arg_0);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    return _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-u_input.b.xx & reverseBits(vec2<i32>(-1i, arg_1.c.b.x)), ~u_input.b.zx), vec2<i32>(arg_2.b.x, select(~arg_3.b.x, -arg_3.b.x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    let var_1 = u_input.c.zw;
    global1 = !any(select(vec4<bool>(var_0.x, var_0.x, u_input.c.x != var_1.x, var_0.x), !vec4<bool>(false, var_0.x, true, true), var_0.x));
    global1 = select(2147483647i <= u_input.b.x, u_input.b.x >= func_5(u_input.c.wzw, Struct_2(vec3<f32>(-276f, 841f, -579f), func_1(global0[_wgslsmith_index_u32(u_input.c.x, 12u)], var_1, -2147483647i), func_1(vec3<bool>(var_0.x, false, var_0.x), u_input.c.xy, 1i), -1718f), func_1(!global0[_wgslsmith_index_u32(u_input.c.x, 12u)], firstTrailingBit(var_1), u_input.a & -31785i), Struct_1(vec4<u32>(u_input.c.x, u_input.c.x, 79669u, 0u), vec2<i32>(u_input.b.x, u_input.a), !var_0.x, global0[_wgslsmith_index_u32(u_input.c.x, 12u)])), !any(!vec4<bool>(false, var_0.x, var_0.x, var_0.x)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(427f, -1000f, 1207f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1373f, -689f, 454f)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -215f), _wgslsmith_div_f32(170f, -192f), _wgslsmith_f_op_f32(-1364f - -420f))))), Struct_1(~vec4<u32>(var_1.x | 4294967295u, 0u, 1u, 1u), -vec2<i32>(-36107i, ~u_input.a), 8537u < (1u >> ((1u | u_input.c.x) % 32u)), global0[_wgslsmith_index_u32(49616u, 12u)]), func_1(global0[_wgslsmith_index_u32(~93646u ^ u_input.c.x, 12u)], _wgslsmith_mod_vec2_u32(u_input.c.xw, ~(~vec2<u32>(u_input.c.x, 19934u))), -28758i), _wgslsmith_f_op_f32(ceil(1000f)));
    global1 = -602f != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d + var_2.d))));
    let var_3 = func_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(21816u, 1u), 12u)], select(vec2<u32>(_wgslsmith_add_u32(55174u, var_2.b.a.x) ^ 4294967295u, _wgslsmith_mod_u32(11461u | var_2.c.a.x, u_input.c.x)), ~vec2<u32>(var_1.x, u_input.c.x) << ((func_1(var_2.b.d, vec2<u32>(var_1.x, 4294967295u), u_input.b.x).a.yz >> (~vec2<u32>(0u, u_input.c.x) % vec2<u32>(32u))) % vec2<u32>(32u)), any(select(func_1(var_2.c.d, var_2.b.a.xx, 2147483647i).d.zy, !var_2.c.d.zz, var_0))), select(~var_2.b.b.x, 1i, true));
    global1 = true;
    global0 = array<vec3<bool>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.a.x))) - 1255f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(350f, var_2.d, -1070f, 726f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1099f, -632f, var_2.a.x, -429f) + vec4<f32>(var_2.d, var_2.a.x, 112f, -1274f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(516f, var_2.d, 1000f, var_2.a.x) - vec4<f32>(930f, var_2.a.x, var_2.d, var_2.a.x))), var_3.d.x)))), var_2.a.x, 726f, ~u_input.c.wzw);
}

