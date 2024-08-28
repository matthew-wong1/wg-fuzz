struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(-930f, -1381f, -674f, 2487f);

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec4<f32>(-1000f, 1052f, -1060f, -1593f), false, vec4<i32>(0i, 1i, 9574i, -1i)), Struct_2(vec4<f32>(-677f, -255f, -535f, -543f), false, vec4<i32>(0i, -1i, -26532i, -1i)), Struct_2(vec4<f32>(242f, 135f, 430f, 165f), false, vec4<i32>(31889i, -1i, i32(-2147483648), 22572i)), Struct_2(vec4<f32>(1208f, 1017f, -127f, -197f), false, vec4<i32>(i32(-2147483648), -8186i, i32(-2147483648), -16846i)), Struct_2(vec4<f32>(115f, -544f, 976f, -1761f), false, vec4<i32>(2147483647i, -1i, -15403i, 22006i)), Struct_2(vec4<f32>(-269f, -798f, 622f, 2480f), false, vec4<i32>(-81277i, -1i, -74320i, -1i)), Struct_2(vec4<f32>(-1190f, -1010f, -1201f, 630f), true, vec4<i32>(0i, -40523i, -7332i, 60871i)), Struct_2(vec4<f32>(1683f, 1246f, 1652f, -845f), false, vec4<i32>(1i, 80539i, -41481i, 2147483647i)), Struct_2(vec4<f32>(-2058f, -939f, 2411f, 271f), false, vec4<i32>(2147483647i, i32(-2147483648), -12588i, 45060i)), Struct_2(vec4<f32>(283f, 1000f, 357f, 373f), true, vec4<i32>(0i, 2147483647i, -44413i, 42983i)), Struct_2(vec4<f32>(1000f, 192f, 1230f, -1266f), false, vec4<i32>(-18057i, i32(-2147483648), -1i, -1i)));

var<private> global2: array<vec3<u32>, 10>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: i32) -> f32 {
    let var_0 = Struct_4(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -_wgslsmith_div_i32(30592i, u_input.a), ~(-2278i), ~0i), select(vec4<i32>(~(-2147483647i), ~u_input.a, _wgslsmith_div_i32(-65896i, arg_2), 1i), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, arg_2, 2147483647i, arg_2), -vec4<i32>(64228i, arg_2, -2147483647i, -14263i)), true)), vec3<bool>(true, true & all(vec4<bool>(true, true, true, true)), true));
    global1 = array<Struct_2, 11>();
    let var_1 = Struct_4(_wgslsmith_div_vec4_i32(-vec4<i32>(-490i, var_0.a.x, arg_2, -2147483647i) & var_0.a, -(reverseBits(vec4<i32>(var_0.a.x, 14633i, -1i, var_0.a.x)) >> ((vec4<u32>(arg_0, 4294967295u, 0u, arg_1.x) >> (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u)))), select(var_0.b, var_0.b, select(var_0.b, vec3<bool>(true, var_0.b.x, var_0.b.x | var_0.b.x), var_0.b)));
    let var_2 = u_input.b;
    var var_3 = -_wgslsmith_dot_vec2_i32(-abs(var_0.a.xy), var_0.a.zx >> (u_input.b.yy % vec2<u32>(32u)));
    return global0[_wgslsmith_index_u32(var_2.x, 4u)];
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(329f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 2506f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-219f * -2319f))) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 4u)])), arg_1.a.x);
    global0 = array<f32, 4>();
    global2 = array<vec3<u32>, 10>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~0u, vec2<u32>(u_input.b.x, u_input.b.x), -1i)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -394f))))));
    global2 = array<vec3<u32>, 10>();
    return ~1u;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: i32) -> Struct_4 {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(0u, 4u)], -1408f)))), _wgslsmith_div_f32(210f, _wgslsmith_f_op_f32(-1864f - global0[_wgslsmith_index_u32(63604u, 4u)])), false)), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(26868u, 41854u), u_input.b.xy), func_2(Struct_4(arg_0, vec3<bool>(arg_1.x, false, arg_1.x)), global1[_wgslsmith_index_u32(u_input.b.x, 11u)])), 4u)]), global0[_wgslsmith_index_u32(13589u, 4u)]);
    global1 = array<Struct_2, 11>();
    global0 = array<f32, 4>();
    global0 = array<f32, 4>();
    let var_1 = u_input.a << (countOneBits(11846u) % 32u);
    return Struct_4(arg_0, arg_1);
}

fn func_4(arg_0: Struct_4) -> Struct_5 {
    var var_0 = true;
    global1 = array<Struct_2, 11>();
    global0 = array<f32, 4>();
    global2 = array<vec3<u32>, 10>();
    global0 = array<f32, 4>();
    return Struct_5(arg_0, global0[_wgslsmith_index_u32(u_input.b.x, 4u)], 1000f);
}

fn func_5(arg_0: Struct_5) -> Struct_1 {
    return Struct_1(!vec4<bool>(any(vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, true, false)), arg_0.a.b.x, any(vec2<bool>(true, true)), true), (-2147483647i | _wgslsmith_clamp_i32(u_input.a, 2147483647i & arg_0.a.a.x, select(arg_0.a.a.x, arg_0.a.a.x, true))) & firstTrailingBit(~(arg_0.a.a.x << (u_input.b.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec2<i32>(u_input.a, 1i >> (0u % 32u)), global1[_wgslsmith_index_u32(u_input.b.x, 11u)], _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, 15938u, u_input.b.x), vec3<u32>(u_input.b.x, 46877u, 100303u))) << (_wgslsmith_dot_vec2_u32(select(~vec2<u32>(0u, 101721u), _wgslsmith_clamp_vec2_u32(u_input.b.xw, vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, 1u)), true), max(vec2<u32>(66717u, 3215u), ~u_input.b.zy)) % 32u), func_5(func_4(func_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 0i, 11909i, -13780i), vec4<i32>(1i, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.a, -40328i, -33047i)), vec3<bool>(false, false, true), select(u_input.b, vec4<u32>(u_input.b.x, 5460u, u_input.b.x, 0u), true), 1i))));
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(func_4(Struct_4(~vec4<i32>(u_input.a, -1i, var_0.a.x, u_input.a), var_0.d.a.yzz)).a.a.x, firstTrailingBit(u_input.a) | var_0.d.b, -21438i, _wgslsmith_sub_i32(func_5(Struct_5(Struct_4(vec4<i32>(var_0.a.x, var_0.a.x, -11576i, u_input.a), vec3<bool>(var_0.b.b, true, var_0.b.b)), global0[_wgslsmith_index_u32(var_0.c, 4u)], -265f)).b, var_0.a.x)), vec4<i32>(-1i, u_input.a, _wgslsmith_mod_i32(var_0.b.c.x, -15709i) ^ _wgslsmith_mod_i32(var_0.d.b, -var_0.a.x), var_0.d.b));
    let var_2 = func_1(~_wgslsmith_mult_vec4_i32(max(func_1(var_0.b.c, var_0.d.a.wzy, u_input.b, 29588i).a, abs(var_0.b.c)), -var_0.b.c), !select(select(func_4(Struct_4(vec4<i32>(var_1.x, var_0.d.b, u_input.a, -60277i), var_0.d.a.xyw)).a.b, func_5(Struct_5(Struct_4(vec4<i32>(u_input.a, var_1.x, var_0.b.c.x, -2147483647i), vec3<bool>(false, var_0.d.a.x, true)), global0[_wgslsmith_index_u32(var_0.c, 4u)], global0[_wgslsmith_index_u32(var_0.c, 4u)])).a.zww, any(vec3<bool>(false, var_0.b.b, false))), select(select(vec3<bool>(true, false, false), var_0.d.a.zzz, var_0.d.a.wyy), vec3<bool>(var_0.b.b, true, var_0.b.b), vec3<bool>(true, true, var_0.b.b)), true), ~u_input.b, -1i);
    var_1 = var_2.a;
    var_1 = var_0.b.c;
    var var_3 = ~(~u_input.b);
    var var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_0.b.a.xwz * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.a.zyx - var_0.b.a.wyx) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-412f, global0[_wgslsmith_index_u32(93479u, 4u)], 1559f) * var_0.b.a.zxz)) * _wgslsmith_f_op_vec3_f32(floor(var_0.b.a.xzw))))));
    var_4 = vec3<f32>(var_4.x, _wgslsmith_f_op_f32(step(-126f, -722f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-689f, _wgslsmith_f_op_f32(var_0.b.a.x - var_4.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-(-2147483647i & _wgslsmith_dot_vec2_i32(abs(var_2.a.xz), firstTrailingBit(var_0.b.c.xy))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(var_0.b.a - vec4<f32>(var_0.b.a.x, 442f, -1000f, var_4.x)), !vec4<bool>(true, var_0.d.a.x, var_2.b.x, var_0.b.b))) + vec4<f32>(_wgslsmith_f_op_f32(340f - 1206f), _wgslsmith_f_op_f32(-1395f * var_4.x), _wgslsmith_f_op_f32(229f * var_0.b.a.x), func_4(var_2).b))), 1u, ~(~1u));
}

