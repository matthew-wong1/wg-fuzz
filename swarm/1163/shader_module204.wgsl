struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<i32>,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

var<private> global1: vec4<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    let var_0 = -_wgslsmith_div_i32(0i, abs(u_input.a));
    var var_1 = firstTrailingBit(~countOneBits(var_0 >> (~u_input.c.x % 32u)));
    var_1 = u_input.a;
    global0 = array<bool, 8>();
    let var_2 = Struct_3(countOneBits(1i), Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-421f, -1000f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1949f, -672f))))))), _wgslsmith_f_op_f32(f32(-1f) * -1951f), Struct_1(~_wgslsmith_sub_u32(u_input.c.x, 4294967295u), -2147483647i)));
    return reverseBits(~0u);
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> Struct_4 {
    var var_0 = _wgslsmith_div_u32(func_3(), arg_1);
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.x)), -170f), 472f, Struct_1(_wgslsmith_add_u32(u_input.b, ~(~29860u)), u_input.a));
    var var_2 = _wgslsmith_div_i32((_wgslsmith_dot_vec2_i32(vec2<i32>(36548i, -6248i), vec2<i32>(var_1.c.b, u_input.a)) ^ -1i) ^ (var_1.c.b >> (~u_input.b % 32u)), i32(-1i) * -24280i) << (~var_1.c.a % 32u);
    global1 = !vec4<bool>(!(_wgslsmith_f_op_f32(f32(-1f) * -1000f) <= _wgslsmith_f_op_f32(arg_0.x * 1016f)), (~u_input.a == -1i) & global0[_wgslsmith_index_u32(arg_1, 8u)], !(var_1.c.b >= ~u_input.a), !(var_1.b != var_1.a.x));
    var_0 = (_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c.x, ~52082u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 16352u), u_input.c.yx) >> (~vec2<u32>(var_1.c.a, 1u) % vec2<u32>(32u))) ^ _wgslsmith_add_u32(~var_1.c.a, _wgslsmith_dot_vec2_u32(u_input.c.yz ^ vec2<u32>(arg_1, 1u), ~u_input.c.yy))) << (63645u % 32u);
    return Struct_4(var_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(arg_0.x, 611f, global0[_wgslsmith_index_u32(87995u, 8u)])), -862f))), (vec2<i32>(-1i, -2147483647i) | ~(vec2<i32>(1i, u_input.a) & vec2<i32>(2147483647i, var_1.c.b))) << (_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 14334u, arg_1, var_1.c.a), vec4<u32>(32470u, var_1.c.a, 22235u, arg_1)), ~arg_1), u_input.c.yx) % vec2<u32>(32u)), var_1, firstTrailingBit(firstTrailingBit(~reverseBits(3503u))));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: vec2<i32>, arg_3: i32) -> vec3<u32> {
    global1 = select(vec4<bool>(any(select(vec3<bool>(arg_1, arg_1, false), select(global1.wxy, global1.zww, true), true)), any(select(vec3<bool>(false, arg_1, global0[_wgslsmith_index_u32(u_input.c.x, 8u)]), global1.xzz, !vec3<bool>(global1.x, arg_1, arg_1))), true, true), select(!vec4<bool>(global1.x, true, global0[_wgslsmith_index_u32(countOneBits(arg_0.d.c.a), 8u)], any(vec3<bool>(global0[_wgslsmith_index_u32(49993u, 8u)], false, false))), vec4<bool>((arg_1 && global0[_wgslsmith_index_u32(u_input.b, 8u)]) || (arg_2.x >= arg_2.x), arg_0.e < 0u, true, !global1.x), global0[_wgslsmith_index_u32(u_input.c.x, 8u)]), !select(vec4<bool>(arg_1, global1.x, any(vec4<bool>(arg_1, false, false, global1.x)), global0[_wgslsmith_index_u32(~1u, 8u)]), select(select(vec4<bool>(global0[_wgslsmith_index_u32(24302u, 8u)], true, true, false), vec4<bool>(arg_1, global1.x, true, false), vec4<bool>(global1.x, arg_1, false, false)), select(vec4<bool>(global1.x, true, global0[_wgslsmith_index_u32(4294967295u, 8u)], false), vec4<bool>(arg_1, true, arg_1, true), false), global1.x && arg_1), any(global1.yw)));
    global0 = array<bool, 8>();
    global1 = vec4<bool>(all(global1.zyw), global1.x, false || global1.x, false);
    let var_0 = select(!(!(!select(vec4<bool>(global1.x, false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], global1.x, false, false), vec4<bool>(true, true, global1.x, arg_1)))), !select(select(select(vec4<bool>(arg_1, true, arg_1, global0[_wgslsmith_index_u32(31512u, 8u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(52258u, 8u)], arg_1, false), false), select(vec4<bool>(true, true, arg_1, global1.x), vec4<bool>(false, false, global1.x, false), true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 8u)], false, false, false)), vec4<bool>(global1.x != true, all(vec4<bool>(arg_1, global1.x, true, global1.x)), select(true, true, arg_1), arg_1), !select(vec4<bool>(global1.x, false, true, arg_1), vec4<bool>(arg_1, true, global0[_wgslsmith_index_u32(1u, 8u)], true), global0[_wgslsmith_index_u32(u_input.b, 8u)])), !(arg_3 == -1i));
    global1 = vec4<bool>(firstTrailingBit(arg_0.a.a) < arg_0.d.c.a, -2147483647i >= _wgslsmith_mult_i32(u_input.a, abs(~(-1i))), true, any(var_0.yyw));
    return _wgslsmith_sub_vec3_u32(abs(max(~u_input.c, ~u_input.c)) & ~_wgslsmith_mod_vec3_u32(~u_input.c, firstTrailingBit(u_input.c)), u_input.c);
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: Struct_3) -> Struct_3 {
    global1 = !select(vec4<bool>(select(true, !global0[_wgslsmith_index_u32(1u, 8u)], global1.x), !(!global1.x), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, 20809u), 8u)], global0[_wgslsmith_index_u32(~76187u, 8u)]), !(!vec4<bool>(global1.x, global0[_wgslsmith_index_u32(16743u, 8u)], true, true)), !select(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(5032u, 8u)], false), vec4<bool>(true, false, false, global1.x), vec4<bool>(true, true, true, true)));
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(4294967295u & ((arg_3.b.c.a | 0u) | u_input.b), arg_2.a.a), 1577u, arg_0, 17856u);
    global1 = select(vec4<bool>(global1.x, (1i > arg_2.d.c.b) || any(global1.zw), global1.x & (~arg_2.d.c.a < arg_3.b.c.a), !(~u_input.a > min(arg_2.a.b, u_input.a))), !(!select(select(vec4<bool>(global1.x, global1.x, global0[_wgslsmith_index_u32(73413u, 8u)], false), vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(global1.x, true, global1.x, true)), vec4<bool>(true, true, global0[_wgslsmith_index_u32(47506u, 8u)], false), !vec4<bool>(true, global1.x, global0[_wgslsmith_index_u32(0u, 8u)], true))), all(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(91705u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(37561u, 8u)])))));
    var var_1 = arg_2;
    global0 = array<bool, 8>();
    return arg_3;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = -1387f;
    let var_1 = func_5(_wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec3_u32(func_4(func_2(vec3<f32>(294f, 2408f, -478f), u_input.b), any(global1.zyw), vec2<i32>(u_input.a, arg_0.b.c.b), _wgslsmith_mod_i32(u_input.a, arg_0.a)), ~vec3<u32>(arg_1.x, u_input.c.x, arg_0.b.c.a) & ~vec3<u32>(4294967295u, 77925u, 13248u))), firstLeadingBit(u_input.c.zz) ^ ~(~u_input.c.zy), Struct_4(arg_0.b.c, vec2<f32>(_wgslsmith_f_op_f32(var_0 + arg_0.b.b), 532f), vec2<i32>(~(~3051i), arg_2.x), func_2(vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-1000f - -391f), _wgslsmith_f_op_f32(sign(2087f))), ~1u).d, arg_1.x), arg_0);
    var var_2 = arg_0;
    var_2 = func_5(arg_1.x, abs(vec2<u32>(arg_1.x & var_2.b.c.a, 88170u)) << ((min(vec2<u32>(arg_0.b.c.a, arg_1.x), firstLeadingBit(u_input.c.yz)) << (_wgslsmith_sub_vec2_u32(~u_input.c.xz, reverseBits(u_input.c.xx)) % vec2<u32>(32u))) % vec2<u32>(32u)), Struct_4(Struct_1(var_2.b.c.a, var_2.b.c.b | _wgslsmith_div_i32(var_1.a, var_1.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.b.b, -162f), vec2<f32>(-772f, arg_0.b.b))))), ~vec2<i32>(1i, func_5(u_input.c.x, arg_1.zz, Struct_4(Struct_1(var_1.b.c.a, var_2.a), var_2.b.a, arg_2, arg_0.b, 39547u), arg_0).b.c.b), func_5(_wgslsmith_div_u32(var_1.b.c.a, func_4(Struct_4(Struct_1(var_2.b.c.a, arg_0.b.c.b), var_2.b.a, vec2<i32>(1i, arg_0.a), var_1.b, 3223u), global0[_wgslsmith_index_u32(var_2.b.c.a, 8u)], vec2<i32>(var_2.b.c.b, -10997i), arg_2.x).x), vec2<u32>(var_1.b.c.a, 312u), Struct_4(Struct_1(21463u, var_1.b.c.b), vec2<f32>(354f, var_1.b.b), abs(vec2<i32>(0i, var_1.b.c.b)), Struct_2(var_1.b.a, var_1.b.b, arg_0.b.c), ~0u), var_1).b, 28062u), func_5(1u, arg_1.zw, func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-921f, 1000f, var_1.b.a.x)))), ~(~u_input.b)), arg_0));
    var var_3 = var_1;
    return var_1.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    var var_0 = global1.x;
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1127f)), -605f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1036f)) + _wgslsmith_f_op_f32(-1349f + 512f)))), Struct_1(abs(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.b), min(1u, u_input.c.x))), -_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a, u_input.a), 1i)));
    global1 = !(!(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(var_1.c.a, 8u)], global0[_wgslsmith_index_u32(var_1.c.a, 8u)], true))));
    var var_2 = ~firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x | var_1.c.a, 11087u), u_input.c.yy));
    global1 = vec4<bool>(!(!(_wgslsmith_div_f32(-207f, var_1.b) != -1428f)), global0[_wgslsmith_index_u32(~1u, 8u)], global0[_wgslsmith_index_u32(~1u, 8u)], -143f < _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(591f, var_1.b)), _wgslsmith_div_f32(var_1.b, 111f)))));
    var var_3 = func_1(Struct_3(3812i, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1664f, 1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a.x * -483f), 796f)), Struct_1(var_2.x, u_input.a))), vec4<u32>(~var_2.x, var_1.c.a, var_1.c.a | (var_2.x | _wgslsmith_sub_u32(1u, var_1.c.a)), var_2.x), vec2<i32>(var_1.c.b, 2147483647i));
    var var_4 = vec4<u32>(~(~17998u), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.x, var_1.b, 272f), vec3<f32>(var_1.a.x, -1000f, var_1.a.x)))), ~_wgslsmith_mult_u32(var_1.c.a, 4249u)).d.c.a << (var_1.c.a % 32u), 3850u, ~u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.b, -134f, var_1.b, _wgslsmith_div_f32(var_1.b, var_1.a.x))))), var_3.a);
}

