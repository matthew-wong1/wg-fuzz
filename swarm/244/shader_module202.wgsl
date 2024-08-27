struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(true, -8813i, 1i), Struct_2(true, 66625i, -57951i), Struct_2(true, 2147483647i, 0i), Struct_2(true, -1i, 26870i));

var<private> global2: array<bool, 32> = array<bool, 32>(false, true, false, true, false, true, false, true, true, true, true, false, true, false, true, false, false, true, true, false, true, true, true, true, false, false, true, true, true, true, true, false);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    let var_0 = u_input.e.xzy;
    let var_1 = any(!select(select(vec3<bool>(global0.a, false, true), vec3<bool>(true, false, global0.a), global0.a), select(vec3<bool>(global0.a, true, false), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(u_input.b, 32u)], global0.a), vec3<bool>(true, false, global0.a)), !vec3<bool>(true, true, global0.a))) | true;
    var var_2 = Struct_4(Struct_3(Struct_2(global0.a, u_input.a.x, 8036i | select(-1i, -22782i, false)), u_input.c, -vec2<i32>(var_0.x, global0.c), Struct_1(-925f, true, vec3<bool>(true, true, true), 1u)));
    global0 = Struct_2(false, -2147483647i, 1i);
    return countOneBits(var_0.x);
}

fn func_2() -> vec3<u32> {
    let var_0 = 14583u;
    global0 = Struct_2(false, abs(_wgslsmith_dot_vec2_i32(u_input.a ^ vec2<i32>(793i, u_input.e.x), vec2<i32>(-2147483647i, _wgslsmith_mod_i32(16953i, u_input.a.x)))), i32(-1i) * -_wgslsmith_clamp_i32(-u_input.e.x, func_3(), -2147483647i));
    global1 = array<Struct_2, 4>();
    global1 = array<Struct_2, 4>();
    global0 = Struct_2(!all(!vec3<bool>(global0.a, false, global0.a)), select(global0.b | -2147483647i, -1i, true), u_input.a.x);
    return ~(~min(~(vec3<u32>(u_input.c.x, u_input.c.x, 51883u) | vec3<u32>(u_input.d, 1u, 1u)), vec3<u32>(1u, 25264u, u_input.c.x)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    var var_0 = 4294967295u ^ (82312u >> (u_input.c.x % 32u));
    let var_1 = func_2();
    global0 = Struct_2(global2[_wgslsmith_index_u32(var_1.x, 32u)], -1i, arg_0.x);
    var var_2 = vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 32u)], global2[_wgslsmith_index_u32(u_input.c.x >> (~u_input.d % 32u), 32u)]);
    let var_3 = (arg_2.b | global0.c) | arg_1.c;
    return _wgslsmith_dot_vec2_u32(var_1.yz, _wgslsmith_sub_vec2_u32(u_input.c, select(~vec2<u32>(u_input.b, var_1.x), var_1.xz, global2[_wgslsmith_index_u32(select(44643u, ~72009u, 2147483647i != arg_0.x), 32u)])));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: Struct_5) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_i32(arg_1, u_input.a);
    var var_1 = 14323u;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(189f, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_3.a.a, -1368f), _wgslsmith_f_op_f32(f32(-1f) * -440f)), arg_3.a.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3.a.a + arg_3.a.a)))), vec4<f32>(arg_3.a.a, 893f, -1816f, arg_3.a.a))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(step(1268f, 103f)), _wgslsmith_f_op_f32(f32(-1f) * -575f), _wgslsmith_f_op_f32(abs(-459f)), 239f))))));
    var var_3 = arg_3.a;
    var_3 = Struct_1(-1000f, arg_0.x, vec3<bool>(any(select(vec2<bool>(arg_3.e, var_3.b), select(vec2<bool>(global0.a, true), vec2<bool>(false, arg_0.x), var_3.c.xx), !vec2<bool>(arg_3.b.a, true))), arg_0.x, all(var_3.c)), func_1(select(_wgslsmith_add_vec2_i32(~u_input.e.zz, u_input.e.yx), ~_wgslsmith_div_vec2_i32(u_input.e.yw, vec2<i32>(0i, -2147483647i)), true), Struct_2(true || global0.a, _wgslsmith_dot_vec4_i32(~u_input.e, u_input.e), 2147483647i), Struct_2(all(!var_3.c), _wgslsmith_mult_i32(-1i, func_3()), max(2147483647i, i32(-1i) * -61948i))));
    return arg_3.a;
}

fn func_5(arg_0: f32, arg_1: Struct_5, arg_2: vec3<f32>, arg_3: u32) -> Struct_3 {
    let var_0 = ~firstLeadingBit(u_input.e);
    global1 = array<Struct_2, 4>();
    var var_1 = vec3<i32>(var_0.x >> (29888u % 32u), u_input.a.x, -18053i) << (~countOneBits(~(vec3<u32>(arg_3, u_input.b, arg_1.a.d) & vec3<u32>(1u, 14298u, 109040u))) % vec3<u32>(32u));
    let var_2 = ~78458u;
    var var_3 = vec2<u32>(~(~var_2), 1u);
    return Struct_3(Struct_2(global2[_wgslsmith_index_u32(1u, 32u)], _wgslsmith_add_i32(34331i >> (~var_3.x % 32u), _wgslsmith_sub_i32(-global0.b, countOneBits(16002i))), abs(u_input.e.x)), ~_wgslsmith_div_vec2_u32(u_input.c, u_input.c) >> (select(vec2<u32>(func_2().x, ~u_input.c.x), _wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.c.x), vec2<u32>(arg_1.a.d, arg_3) ^ u_input.c), func_4(select(vec4<bool>(true, false, arg_1.a.c.x, true), vec4<bool>(global0.a, global0.a, global0.a, arg_1.c.x), true), select(vec2<i32>(-43471i, var_0.x), vec2<i32>(-30073i, -1i), global0.a), ~vec3<u32>(arg_3, u_input.b, 4294967295u), arg_1).c.yx) % vec2<u32>(32u)), -vec2<i32>(~global0.b, min(0i, var_0.x)) | vec2<i32>(~var_0.x, var_0.x), Struct_1(558f, arg_1.a.a <= _wgslsmith_f_op_f32(ceil(485f)), func_4(vec4<bool>(arg_1.c.x || false, true, func_4(vec4<bool>(true, true, true, false), vec2<i32>(global0.c, u_input.e.x), vec3<u32>(0u, 1u, arg_1.a.d), Struct_5(arg_1.a, Struct_2(true, global0.b, 1i), arg_1.c, Struct_2(true, var_0.x, global0.b), global0.a)).c.x, func_4(vec4<bool>(false, false, true, arg_1.a.b), vec2<i32>(var_0.x, 4802i), vec3<u32>(3903u, 1u, 0u), arg_1).c.x), _wgslsmith_sub_vec2_i32(vec2<i32>(global0.b, var_1.x), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e.x, arg_1.b.c), vec2<i32>(-2147483647i, var_0.x))), countOneBits(vec3<u32>(20007u, 0u, var_3.x)), arg_1).c, _wgslsmith_mod_u32(~min(u_input.d, 1043u), firstLeadingBit(38284u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(all(vec4<bool>(true, true, global0.a, !(false || global2[_wgslsmith_index_u32(4294967295u, 32u)]))), global0.a);
    var var_1 = 25437i == -_wgslsmith_mult_i32(global0.b, global0.c << (u_input.c.x % 32u));
    let var_2 = func_5(-788f, Struct_5(func_4(vec4<bool>(true, true, var_0.x, true), abs(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -19667i), vec2<i32>(1i, -11912i))), vec3<u32>(~u_input.b, func_1(vec2<i32>(2147483647i, -30107i), global1[_wgslsmith_index_u32(18865u, 4u)], Struct_2(false, -50653i, -826i)), u_input.d), Struct_5(Struct_1(211f, var_0.x, vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 32u)], false), u_input.d), Struct_2(false, -32278i, 2147483647i), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 32u)], global0.a, false), global1[_wgslsmith_index_u32(38819u, 4u)], true)), Struct_2(true, u_input.a.x, ~6919i), !vec3<bool>(var_0.x, var_0.x, global0.a), Struct_2(all(select(vec3<bool>(true, true, global0.a), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 32u)], false, false), vec3<bool>(var_0.x, var_0.x, false))), 1i, func_3()), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-687f, -503f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(497f, 1094f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-594f, 585f, var_0.x)) - _wgslsmith_f_op_f32(max(-807f, -898f))))), ~45186u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(348f)));
    let var_4 = select(!select(select(select(vec4<bool>(global0.a, false, global0.a, var_0.x), vec4<bool>(global0.a, false, global0.a, global0.a), global0.a), vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(15887u, 32u)]), select(vec4<bool>(true, global0.a, global0.a, false), vec4<bool>(false, var_0.x, false, global2[_wgslsmith_index_u32(var_2.b.x, 32u)]), vec4<bool>(global0.a, global2[_wgslsmith_index_u32(u_input.c.x, 32u)], true, global0.a))), select(vec4<bool>(false, global2[_wgslsmith_index_u32(var_2.d.d, 32u)], true, var_0.x), select(vec4<bool>(global0.a, global2[_wgslsmith_index_u32(82208u, 32u)], false, global0.a), vec4<bool>(var_2.a.a, true, global0.a, var_2.d.b), vec4<bool>(true, false, var_2.d.c.x, true)), all(vec3<bool>(var_2.a.a, var_2.d.b, false))), true), vec4<bool>(u_input.a.x >= ~global0.b, !all(select(vec4<bool>(global0.a, global0.a, false, true), vec4<bool>(false, false, true, var_2.a.a), false)), var_2.d.b, false), !any(!(!vec4<bool>(var_2.d.b, var_2.d.b, true, global0.a))));
    let var_5 = 19523u;
    var_0 = !vec2<bool>(any(func_5(_wgslsmith_f_op_f32(max(-1214f, -1553f)), Struct_5(Struct_1(var_3, var_4.x, var_2.d.c, u_input.c.x), global1[_wgslsmith_index_u32(1u, 4u)], var_2.d.c, var_2.a, var_2.a.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.a, 1623f, -928f)), 62026u).d.c), 699f < var_3);
    var_1 = all(vec4<bool>(!global0.a, any(vec3<bool>(all(var_4), global0.a & false, true)), true, 1i <= countOneBits(var_2.c.x)));
    var var_6 = func_4(var_4, -_wgslsmith_add_vec2_i32(min(vec2<i32>(var_2.a.b, -2147483647i) << (vec2<u32>(42433u, 88666u) % vec2<u32>(32u)), -vec2<i32>(var_2.a.c, 1i)), vec2<i32>(~global0.c, ~var_2.a.b)), vec3<u32>(func_5(var_2.d.a, Struct_5(Struct_1(var_3, false, vec3<bool>(global0.a, var_4.x, var_4.x), 1u), global1[_wgslsmith_index_u32(var_5, 4u)], var_4.xzw, global1[_wgslsmith_index_u32(1u, 4u)], var_4.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(963f, var_3, -1034f) * vec3<f32>(750f, var_3, -939f)), var_5).d.d << (var_5 % 32u), 19050u, func_2().x), Struct_5(var_2.d, func_5(var_2.d.a, Struct_5(func_5(var_3, Struct_5(var_2.d, Struct_2(global2[_wgslsmith_index_u32(var_5, 32u)], -2147483647i, -2147483647i), vec3<bool>(false, var_0.x, var_2.a.a), Struct_2(global2[_wgslsmith_index_u32(0u, 32u)], u_input.a.x, -2147483647i), global0.a), vec3<f32>(var_2.d.a, var_2.d.a, -555f), var_5).d, Struct_2(global0.a, 179i, u_input.e.x), !vec3<bool>(true, global0.a, var_2.d.b), Struct_2(true, var_2.a.c, global0.c), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d.a, 283f, 1217f) + vec3<f32>(var_3, var_3, var_3)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1835f, -176f, var_2.d.a))), 4294967295u).a, !var_2.d.c, func_5(_wgslsmith_f_op_f32(var_2.d.a + _wgslsmith_f_op_f32(f32(-1f) * -2758f)), Struct_5(Struct_1(460f, true, vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 32u)], true), 62624u), func_5(130f, Struct_5(Struct_1(var_2.d.a, false, var_4.wzz, var_2.d.d), global1[_wgslsmith_index_u32(0u, 4u)], vec3<bool>(global0.a, true, var_0.x), Struct_2(false, var_2.a.b, 2147483647i), global2[_wgslsmith_index_u32(1u, 32u)]), vec3<f32>(var_3, var_3, -944f), 98965u).a, select(var_4.wyw, vec3<bool>(var_2.d.c.x, true, false), var_2.d.b), Struct_2(false, 0i, u_input.e.x), var_4.x & false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1524f, 1000f))), ~1u).a, global2[_wgslsmith_index_u32(4294967295u, 32u)]));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.e.yw), ~(~vec2<i32>(global0.b, _wgslsmith_clamp_i32(var_2.c.x, var_2.c.x, global0.b))));
}

