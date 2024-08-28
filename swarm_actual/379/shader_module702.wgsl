struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(-1425f, 367f, -810f, -588f, 624f, 372f, -589f, -595f, -405f, 158f, -289f, 351f, 371f, -188f, 1028f, -1000f, 339f, 303f, -1392f, -213f, -1000f, -1189f);

var<private> global1: array<vec3<bool>, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    var var_0 = arg_1.a.x;
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~arg_2.b.zxw ^ ~u_input.e.xyx, vec3<u32>(arg_2.b.x, 8095u, arg_2.b.x)), vec3<u32>(~_wgslsmith_dot_vec4_u32(arg_2.b, vec4<u32>(4294967295u, u_input.d, 1u, 4294967295u)), ~abs(u_input.e.x), (u_input.a.x | arg_2.b.x) & ~arg_2.b.x)), 1u);
    var var_2 = _wgslsmith_f_op_vec3_f32(arg_1.a.yxw - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1019f, arg_0.a.x, arg_0.a.x) - arg_0.a.ywy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1057f, -483f, arg_2.a.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(910f + -1132f), 1f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_2.b.x, 22u)])))));
    return u_input.a.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> Struct_5 {
    var var_0 = 142u;
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~(_wgslsmith_mod_u32(arg_1, arg_1) & func_3(Struct_1(vec4<f32>(-512f, 903f, -1000f, -1000f)), Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(arg_1, 22u)], global0[_wgslsmith_index_u32(arg_1, 22u)], global0[_wgslsmith_index_u32(31180u, 22u)])), Struct_2(Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 22u)], -1637f, -2191f, global0[_wgslsmith_index_u32(arg_1, 22u)])), vec4<u32>(u_input.d, 32752u, arg_1, u_input.b.x)))), func_3(Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-406f, global0[_wgslsmith_index_u32(arg_1, 22u)], 236f, global0[_wgslsmith_index_u32(44600u, 22u)]), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], -391f, 250f, global0[_wgslsmith_index_u32(1u, 22u)])))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], -1092f, global0[_wgslsmith_index_u32(0u, 22u)]))), Struct_2(Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)], 159f, global0[_wgslsmith_index_u32(u_input.d, 22u)])), select(vec4<u32>(u_input.a.x, u_input.d, 58322u, 0u), vec4<u32>(0u, arg_1, arg_1, 7654u), vec4<bool>(true, false, true, true))))), 22u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-845f, global0[_wgslsmith_index_u32(arg_1, 22u)], global0[_wgslsmith_index_u32(0u, 22u)]))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1084f, global0[_wgslsmith_index_u32(12098u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)]) * vec3<f32>(global0[_wgslsmith_index_u32(arg_1, 22u)], -994f, 1155f)))))));
    var_2 = vec3<f32>(global0[_wgslsmith_index_u32(arg_1, 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1u, 22u)]))))), -376f);
    var var_3 = Struct_5(vec4<bool>(!all(vec2<bool>(false, true)), any(global1[_wgslsmith_index_u32(select(max(arg_1, arg_1), arg_1, any(vec2<bool>(false, false))), 14u)]), select(false, true, all(vec2<bool>(true, true))), any(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_1, 0u, arg_1), u_input.e), 14u)])), abs(~u_input.d));
    return Struct_5(select(select(select(vec4<bool>(var_3.a.x, false, var_3.a.x, true), select(var_3.a, vec4<bool>(var_3.a.x, var_3.a.x, false, false), var_3.a), var_3.a.x), var_3.a, _wgslsmith_f_op_f32(sign(-1134f)) > 1661f), !select(select(vec4<bool>(false, false, var_3.a.x, var_3.a.x), var_3.a, vec4<bool>(var_3.a.x, var_3.a.x, var_3.a.x, var_3.a.x)), !vec4<bool>(false, true, false, var_3.a.x), var_3.a), var_3.a.x), _wgslsmith_div_u32(u_input.d, func_3(Struct_1(vec4<f32>(-297f, global0[_wgslsmith_index_u32(85115u, 22u)], global0[_wgslsmith_index_u32(21696u, 22u)], 366f)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, global0[_wgslsmith_index_u32(var_3.b, 22u)], -1125f, var_2.x) * vec4<f32>(-1771f, global0[_wgslsmith_index_u32(u_input.a.x, 22u)], var_2.x, var_2.x))), Struct_2(Struct_1(vec4<f32>(var_2.x, global0[_wgslsmith_index_u32(arg_1, 22u)], var_2.x, var_2.x)), ~u_input.e))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: vec4<i32>) -> Struct_4 {
    var var_0 = !func_2(arg_2.wy, ~(48003u & u_input.d)).a.yzw;
    global0 = array<f32, 22>();
    var var_1 = !any(!(!vec4<bool>(arg_1.a.x, false, false, true)));
    let var_2 = !var_0.zy;
    var_1 = var_2.x;
    return Struct_4(_wgslsmith_mod_i32(abs(_wgslsmith_mult_i32(~0i, abs(-1i))), arg_2.x), ~u_input.e);
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = func_4(u_input.e.zy, func_2(u_input.c.zx, ~_wgslsmith_clamp_u32(1u & u_input.a.x, arg_0.b.x, 1u)), abs(vec4<i32>(select(-11191i, countOneBits(u_input.c.x), 2147483647i >= u_input.c.x), ~2153i, reverseBits(~(-23277i)), firstLeadingBit(reverseBits(u_input.c.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(arg_0.a.a * _wgslsmith_f_op_vec4_f32(-arg_0.a.a));
    global0 = array<f32, 22>();
    var var_2 = _wgslsmith_mod_i32(abs(var_0.a), u_input.c.x);
    let var_3 = Struct_2(Struct_1(arg_0.a.a), u_input.e);
    return 488f;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<f32>) -> vec2<i32> {
    global0 = array<f32, 22>();
    var var_0 = Struct_4(_wgslsmith_sub_i32(-1i, ~u_input.c.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(~arg_1.b.x, ~func_2(vec2<i32>(u_input.c.x, -6044i), 9334u).b, ~_wgslsmith_mult_u32(arg_2.b.x, 4294967295u), firstLeadingBit(arg_2.b.x | 4294967295u)), (_wgslsmith_clamp_vec4_u32(vec4<u32>(8469u, 0u, arg_1.b.x, arg_1.b.x), arg_1.b, arg_1.b) & vec4<u32>(u_input.d, arg_1.b.x, arg_2.b.x, 1u)) >> (abs(arg_2.b) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 49089u, arg_2.b.x, arg_1.b.x) | vec4<u32>(arg_1.b.x, 32406u, 21261u, 6958u), arg_1.b)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(min(arg_2.a.a, _wgslsmith_f_op_vec4_f32(-arg_2.a.a)))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(~arg_1.b.x, firstLeadingBit(u_input.e.x), ~1u, 36738u), ~(~vec4<u32>(0u, u_input.e.x, arg_1.b.x, 4294967295u))));
    return firstTrailingBit(vec2<i32>(~var_0.a, _wgslsmith_mod_i32(-_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), _wgslsmith_mod_i32(var_0.a, abs(-34530i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.c.x, _wgslsmith_mod_i32(3773i, _wgslsmith_dot_vec3_i32(u_input.c, -u_input.c)) >> (_wgslsmith_add_u32((u_input.b.x << (4294967295u % 32u)) ^ ~u_input.e.x, _wgslsmith_dot_vec4_u32(~u_input.e, abs(u_input.e))) % 32u));
    global0 = array<f32, 22>();
    var_0 = func_5(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 22u)]), -951f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(4294967295u, 35566u, u_input.e.x, 18978u)), 1u), 22u)]))), Struct_2(Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(max(0u, 1u), 22u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.b), 22u)], global0[_wgslsmith_index_u32(select(u_input.b.x, u_input.d, true), 22u)], _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec4<f32>(1220f, global0[_wgslsmith_index_u32(u_input.e.x, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(9601u, 22u)])), vec4<u32>(53232u, 0u, 25070u, 38970u)))))), func_4(vec2<u32>(36782u & u_input.b.x, ~63779u), Struct_5(func_2(u_input.c.xx, 1u).a, min(u_input.e.x, 4294967295u)), countOneBits(~vec4<i32>(var_0.x, -38697i, 0i, 20130i))).b), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-757f, -562f, -1091f, global0[_wgslsmith_index_u32(76668u, 22u)])))))), u_input.e >> (u_input.e % vec4<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-229f, global0[_wgslsmith_index_u32(4294967295u, 22u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1703f)), global0[_wgslsmith_index_u32(1u, 22u)])), global0[_wgslsmith_index_u32(u_input.e.x, 22u)]));
    var var_1 = vec4<i32>(-1i) * -vec4<i32>(-_wgslsmith_clamp_i32(0i, 73686i, -41350i), -2917i, 23856i, countOneBits(_wgslsmith_sub_i32(u_input.c.x, 1i)));
    var var_2 = select(vec3<bool>(true, u_input.d > 4294967295u, all(global1[_wgslsmith_index_u32(u_input.a.x, 14u)])), vec3<bool>(true, true, any(vec2<bool>(true, select(true, true, true)))), false);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c ^ u_input.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~1u, 22u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 22u)])), _wgslsmith_div_f32(-1890f, _wgslsmith_f_op_f32(trunc(1164f)))), true)), _wgslsmith_sub_u32(countOneBits(~_wgslsmith_add_u32(u_input.d, 4294967295u)), u_input.d), global0[_wgslsmith_index_u32(u_input.e.x, 22u)], -1i);
}

