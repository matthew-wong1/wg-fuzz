struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<f32>(-1328f, 1000f, -678f), 1270f, vec2<u32>(9754u, 1u), Struct_1(vec3<i32>(-1i, -1i, -7350i), 2147483647i), true);

var<private> global1: array<bool, 17>;

var<private> global2: array<i32, 18> = array<i32, 18>(2147483647i, 15908i, 2147483647i, i32(-2147483648), -24202i, 2147483647i, -62787i, -1i, 2147483647i, i32(-2147483648), 25164i, -26116i, -1i, 8389i, 0i, -14679i, 11558i, 58571i);

var<private> global3: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(-1342f, -133f), vec2<f32>(-1000f, 742f), vec2<f32>(-1081f, -531f), vec2<f32>(-1000f, -1833f), vec2<f32>(125f, -482f), vec2<f32>(723f, 1053f), vec2<f32>(-786f, -1123f), vec2<f32>(1270f, -1916f));

var<private> global4: array<i32, 15> = array<i32, 15>(1i, -64438i, i32(-2147483648), 35326i, 20955i, i32(-2147483648), -27919i, 1i, 7635i, -2514i, 2147483647i, 1i, 13952i, 2147483647i, 0i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<i32> {
    var var_0 = !vec3<bool>(select(u_input.a.x << (u_input.d.x % 32u), 1i, false) >= max(firstLeadingBit(global2[_wgslsmith_index_u32(u_input.e, 18u)]), u_input.a.x | -1i), true && global1[_wgslsmith_index_u32(u_input.b.x, 17u)], all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 17u)], !global0.e)));
    let var_1 = ~(~u_input.b);
    var var_2 = -272f;
    let var_3 = Struct_4(~(max(u_input.c.x, u_input.a.x) & ~global2[_wgslsmith_index_u32(var_1.x, 18u)]) > -1i);
    var var_4 = global4[_wgslsmith_index_u32(u_input.b.x, 15u)];
    return firstTrailingBit(~_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 53044i, 39066i), vec3<i32>(global2[_wgslsmith_index_u32(25358u, 18u)], 0i, global0.d.a.x)), global0.d.a) << (~vec3<u32>(u_input.e, u_input.d.x, _wgslsmith_sub_u32(45422u, u_input.e)) % vec3<u32>(32u)));
}

fn func_2() -> Struct_2 {
    global0 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a * _wgslsmith_f_op_vec3_f32(-global0.a)), vec3<f32>(445f, global0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(565f + -790f))))), global0.b, ~global0.c, global0.d, false);
    var var_0 = 554f;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global0.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.b * global0.b)))), 1f), ~global0.c, Struct_1(~abs(func_3()), -1i), !(!(global0.e && global0.e)));
    let var_2 = _wgslsmith_clamp_u32(~4294967295u, ~var_1.c.x, u_input.e);
    var var_3 = vec3<bool>(false, !(!global0.e), !(false | (!global1[_wgslsmith_index_u32(u_input.b.x, 17u)] || var_1.e)));
    return Struct_2(Struct_1(vec3<i32>(max(var_1.d.b & -1i, var_1.d.a.x >> (0u % 32u)), abs(-49022i), u_input.c.x), var_1.d.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.b, -704f)) + -100f)), var_1.c.x, _wgslsmith_sub_u32(1u, ~(~_wgslsmith_add_u32(global0.c.x, 4761u))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_4(select(all(vec2<bool>(true, any(vec2<bool>(global0.e, global0.e)))), false, !all(!vec3<bool>(global0.e, false, true))));
    var var_1 = abs(countOneBits(vec2<u32>(_wgslsmith_sub_u32(arg_2, 1u), ~global0.c.x))) >> (min(vec2<u32>(_wgslsmith_clamp_u32(57515u, u_input.b.x, 9825u), reverseBits(1u)) << (~_wgslsmith_mod_vec2_u32(u_input.b.yw, global0.c) % vec2<u32>(32u)), ~select(vec2<u32>(43634u, global0.c.x), _wgslsmith_div_vec2_u32(global0.c, vec2<u32>(arg_1.c, u_input.e)), select(vec2<bool>(global0.e, false), vec2<bool>(var_0.a, global1[_wgslsmith_index_u32(0u, 17u)]), vec2<bool>(global1[_wgslsmith_index_u32(79451u, 17u)], global1[_wgslsmith_index_u32(u_input.e, 17u)])))) % vec2<u32>(32u));
    var var_2 = max(u_input.c, u_input.c << (select(vec4<u32>(~4294967295u, ~69207u, _wgslsmith_sub_u32(4294967295u, global0.c.x), ~35883u), abs(~u_input.b), vec4<bool>(!global0.e, true, all(vec2<bool>(true, true)), select(global0.e, var_0.a, false))) % vec4<u32>(32u)));
    global2 = array<i32, 18>();
    global1 = array<bool, 17>();
    return global0.d;
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    global3 = array<vec2<f32>, 8>();
    global1 = array<bool, 17>();
    global3 = array<vec2<f32>, 8>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1922f, global0.b, -146f) - vec3<f32>(global0.a.x, global0.a.x, 557f))), global0.a)))), global0.b, ~(~abs(u_input.d)), func_2().a, select(global0.e & any(vec3<bool>(false, global1[_wgslsmith_index_u32(33812u, 17u)], global0.e)), !(all(vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 17u)])) && true), global0.e & global0.e));
    return var_0;
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = false;
    let var_1 = u_input.b.zzw;
    global3 = array<vec2<f32>, 8>();
    let var_2 = Struct_4(global1[_wgslsmith_index_u32(arg_3.c.x, 17u)]);
    return Struct_1(select(vec3<i32>(_wgslsmith_add_i32(arg_1.d.a.x, -19978i | arg_3.d.a.x), -(i32(-1i) * -2147483647i), _wgslsmith_mult_i32(arg_1.d.a.x ^ -1i, -2147483647i)), -_wgslsmith_mult_vec3_i32(arg_1.d.a >> (vec3<u32>(4294967295u, u_input.d.x, u_input.d.x) % vec3<u32>(32u)), vec3<i32>(global0.d.a.x, 7221i, -1931i) ^ vec3<i32>(u_input.c.x, -2147483647i, -7037i)), !any(vec4<bool>(arg_2.x, false, false, true))), _wgslsmith_mod_i32(46999i << (abs(~var_1.x) % 32u), ~global4[_wgslsmith_index_u32(var_1.x & 1u, 15u)] >> (4294967295u % 32u)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = Struct_1(u_input.a, arg_2.x);
    var var_1 = var_0;
    global2 = array<i32, 18>();
    global4 = array<i32, 15>();
    var_1 = func_6(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.c.x, _wgslsmith_div_u32(4294967295u, 1u), 35309u), ~(u_input.b.xxz ^ u_input.b.yyx)), u_input.b.xzw), func_5(func_4(arg_3.b, func_2(), arg_3.c, _wgslsmith_f_op_f32(select(func_2().b, 506f, global1[_wgslsmith_index_u32(arg_3.d, 17u)])))), !(!vec2<bool>(global0.e, true)), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(global0.a.x)), _wgslsmith_f_op_f32(ceil(arg_3.b))), 973f, u_input.d, var_0, all(select(vec2<bool>(global0.e, true), !vec2<bool>(arg_1.x, true), arg_1.xz))));
    return u_input.b.xzw;
}

fn func_7(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_4) -> i32 {
    let var_0 = reverseBits(~(~(~(~arg_1))));
    let var_1 = global3[_wgslsmith_index_u32(arg_1.x, 8u)];
    var var_2 = arg_3;
    var var_3 = arg_0;
    var_2 = Struct_4(global0.e || true);
    return -min(i32(-1i) * -func_3().x, _wgslsmith_dot_vec3_i32(select(global0.d.a, global0.d.a, !vec3<bool>(true, arg_3.a, true)), global0.d.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = global0.c << (~u_input.b.zz % vec2<u32>(32u));
    global4 = array<i32, 15>();
    let var_2 = true;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), 1596f);
    let var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global0.a * vec3<f32>(_wgslsmith_div_f32(679f, 547f), global0.a.x, _wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_div_f32(149f, 787f), global0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + global0.b)), ~min(vec2<u32>(106604u, 1u), vec2<u32>(4294967295u, ~0u)), Struct_1(vec3<i32>(~70113i, 1i, func_7(vec3<f32>(-512f, -551f, global0.a.x), func_1(u_input.c.zy, vec4<bool>(false, global0.e, global0.e, global1[_wgslsmith_index_u32(1u, 17u)]), global0.d.a.xz, Struct_2(global0.d, var_3.x, 398u, 4294967295u)), ~1i, Struct_4(global0.e))), ~(select(global4[_wgslsmith_index_u32(18175u, 15u)], 8415i, global0.e) >> ((64272u ^ global0.c.x) % 32u))), global0.e);
    let var_5 = _wgslsmith_div_u32(_wgslsmith_div_u32(1u, ~1u) >> (firstLeadingBit(63002u) % 32u), max(1u, max(u_input.e, ~u_input.b.x)));
    var var_6 = _wgslsmith_f_op_f32(round(global0.a.x)) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1047f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -611f), global0.a.x, -101f > var_4.a.x))));
    global4 = array<i32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-733f, 1126f, -155f, -1147f))) * vec4<f32>(772f, 2014f, 277f, var_3.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, var_4.a.x, var_4.b)))), var_3.x, -func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-788f * -413f)), Struct_2(func_2().a, _wgslsmith_f_op_f32(round(var_4.a.x)), min(0u, 60583u), u_input.d.x), ~var_1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_3.x)), _wgslsmith_f_op_f32(global0.b + global0.b), global1[_wgslsmith_index_u32(var_4.c.x | 15761u, 17u)]))).a.x, func_2().a.a.x);
}

