struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 13>;

var<private> global1: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(1589f, -1000f, 1000f, 1165f), vec4<f32>(-800f, -184f, 460f, -1796f), vec4<f32>(-730f, 282f, 1100f, -420f), vec4<f32>(-1894f, -599f, 142f, -1329f), vec4<f32>(-1174f, 243f, -781f, -480f));

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(true, 1334f, vec3<bool>(true, false, true), false, vec3<i32>(0i, -21875i, 2147483647i)), Struct_1(false, -257f, vec3<bool>(false, false, false), false, vec3<i32>(1364i, -4983i, -1i)), Struct_1(true, -677f, vec3<bool>(false, true, true), true, vec3<i32>(2147483647i, -1i, -31208i)), Struct_1(false, 571f, vec3<bool>(true, false, false), false, vec3<i32>(-13982i, -9178i, -1i)), Struct_1(true, -456f, vec3<bool>(false, false, false), true, vec3<i32>(2147483647i, 1i, 0i)), Struct_1(true, 164f, vec3<bool>(true, false, true), false, vec3<i32>(-1i, 1i, 1i)), Struct_1(false, -756f, vec3<bool>(false, false, false), false, vec3<i32>(1i, 1i, 2147483647i)), Struct_1(false, -478f, vec3<bool>(false, false, true), true, vec3<i32>(-2109i, -31654i, -9588i)), Struct_1(true, 1132f, vec3<bool>(false, false, false), true, vec3<i32>(0i, -7628i, -1i)), Struct_1(true, -509f, vec3<bool>(false, false, true), false, vec3<i32>(17819i, -54478i, -1i)), Struct_1(true, 543f, vec3<bool>(true, true, true), false, vec3<i32>(30546i, i32(-2147483648), 1i)));

var<private> global3: Struct_1 = Struct_1(false, -199f, vec3<bool>(false, false, true), false, vec3<i32>(1647i, 1i, 51899i));

var<private> global4: Struct_1 = Struct_1(false, -1000f, vec3<bool>(true, false, true), false, vec3<i32>(-7630i, -1i, -1i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> i32 {
    global1 = array<vec4<f32>, 5>();
    var var_0 = arg_1;
    let var_1 = arg_1;
    var var_2 = ~(vec3<i32>(u_input.c.x, arg_1.e.x, 25546i) | u_input.c);
    let var_3 = var_1;
    return _wgslsmith_clamp_i32(~min(arg_0.e.x, firstTrailingBit(var_0.e.x)), u_input.c.x, -18066i);
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: i32, arg_3: i32) -> vec3<bool> {
    global1 = array<vec4<f32>, 5>();
    global2 = array<Struct_1, 11>();
    global3 = global2[_wgslsmith_index_u32(arg_1, 11u)];
    global0 = array<vec2<i32>, 13>();
    global4 = Struct_1(select(true, arg_0.x, all(arg_0)), -2208f, !arg_0.zxx, global4.a, -max(u_input.c, vec3<i32>(-2147483647i, u_input.c.x, arg_2) << (u_input.b.zzz % vec3<u32>(32u))));
    return vec3<bool>(true, any(global3.c.yx), global3.c.x);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec3<i32> {
    global2 = array<Struct_1, 11>();
    let var_0 = arg_0;
    let var_1 = false;
    global4 = Struct_1(!var_1, _wgslsmith_f_op_f32(-var_0.b), select(select(!arg_0.c, select(select(global3.c, vec3<bool>(var_1, var_0.a, global4.d), vec3<bool>(false, true, var_1)), select(global4.c, global3.c, vec3<bool>(var_1, global3.a, var_1)), true), all(vec2<bool>(false, true))), select(vec3<bool>(false, true, global4.b > -755f), vec3<bool>(true, true, all(global3.c.zx)), true), func_4(vec4<bool>(true, true, global4.c.x, var_1 & true), ~(~u_input.b.x), abs(8615i) << (~arg_1 % 32u), 1i & func_3(Struct_1(global4.a, 304f, vec3<bool>(true, arg_0.c.x, var_0.d), false, var_0.e), global2[_wgslsmith_index_u32(75256u, 11u)], 1i))), true, ~global3.e);
    var var_2 = Struct_1(false, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))))), !select(arg_0.c, var_0.c, var_1), false, global3.e);
    return var_2.e;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> Struct_1 {
    var var_0 = vec2<u32>(reverseBits(abs(u_input.a.x ^ 2017u)), _wgslsmith_dot_vec4_u32(~u_input.b, abs(countOneBits(abs(vec4<u32>(u_input.b.x, 4294967295u, u_input.a.x, 4294967295u))))));
    global3 = Struct_1(global4.d || false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global4.b)), 243f)), func_4(!select(select(vec4<bool>(false, arg_1, global4.a, arg_0.d), vec4<bool>(true, false, global4.a, global4.d), vec4<bool>(false, true, global4.c.x, arg_0.a)), select(vec4<bool>(true, global4.d, true, true), vec4<bool>(global4.d, true, arg_1, false), false), true), u_input.b.x, -57330i, ~global4.e.x | -52838i), any(!(!vec4<bool>(true, true, false, arg_1))), -func_2(Struct_1(true, -593f, vec3<bool>(arg_1, arg_0.c.x, arg_0.a), global3.a, global3.e), u_input.b.x) | global4.e);
    global0 = array<vec2<i32>, 13>();
    let var_1 = Struct_1(select(global4.a, !select(any(vec4<bool>(true, false, false, global3.c.x)), any(arg_0.c), true), u_input.c.x <= global3.e.x), global3.b, global4.c, func_4(vec4<bool>(false, arg_1, true, true), ~(~4294967295u) << ((_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(65559u, 86255u, 21717u, 48280u)) & (var_0.x ^ var_0.x)) % 32u), abs(firstLeadingBit(1i)), _wgslsmith_dot_vec3_i32(arg_0.e >> (u_input.b.zwx % vec3<u32>(32u)), firstTrailingBit(global4.e)) ^ ~arg_2).x, _wgslsmith_mult_vec3_i32(min(global3.e, reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(global4.e.x, 4946i, global4.e.x), arg_0.e))), ~(-vec3<i32>(u_input.c.x, global3.e.x, 2147483647i) | vec3<i32>(71615i, u_input.c.x, -45246i))));
    global3 = arg_0;
    return Struct_1(true, 1000f, select(arg_0.c, func_4(vec4<bool>(false, global4.c.x, any(vec2<bool>(arg_1, arg_0.c.x)), func_4(vec4<bool>(true, true, false, global3.a), 11461u, u_input.c.x, -20743i).x), max(_wgslsmith_mult_u32(4294967295u, var_0.x), abs(2750u)), global3.e.x, 1i << (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u)), !(1069f < _wgslsmith_f_op_f32(step(global4.b, global3.b)))), true, _wgslsmith_mult_vec3_i32(global3.e, -vec3<i32>(-14246i, -22045i, _wgslsmith_sub_i32(arg_2, 63842i))));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -530f);
    let var_1 = _wgslsmith_sub_i32(arg_0.e.x, ~(~(-94796i)) | _wgslsmith_sub_i32(u_input.c.x ^ 1i, global3.e.x)) << ((u_input.a.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(~arg_1, ~25011u), u_input.a) % 32u)) % 32u);
    let var_2 = func_5(global2[_wgslsmith_index_u32(~1u & arg_1, 11u)], any(arg_0.c.yy), global4.e.x);
    let var_3 = global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u) & ~(~1u), 11u)];
    let var_4 = global4.c.xx;
    return Struct_1(33514i <= _wgslsmith_add_i32(func_3(var_2, Struct_1(global3.a, arg_0.b, vec3<bool>(false, true, false), global4.a, var_3.e), global3.e.x) | firstTrailingBit(2147483647i), -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), !(!select(vec3<bool>(arg_0.d, true, true), func_5(Struct_1(global4.c.x, var_2.b, var_3.c, var_2.d, var_2.e), var_2.d, 3067i).c, vec3<bool>(false, true, var_2.a))), false, -countOneBits(select(vec3<i32>(-2147483647i, 2147483647i, var_1) >> (u_input.b.xyy % vec3<u32>(32u)), ~var_2.e, var_2.c)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = 1000f;
    let var_1 = func_6(func_5(Struct_1(u_input.a.x != 0u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-global3.b)), vec3<bool>(all(vec2<bool>(false, true)), any(global3.c.zy), false), arg_0.d, func_2(arg_0, 1u)), arg_0.c.x, _wgslsmith_mult_i32(global4.e.x, arg_0.e.x)), u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-156f)))));
    var var_2 = func_5(Struct_1(func_5(var_1, global4.c.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(2147483647i, global4.e.x), global4.e.x)).c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.b, arg_0.b)), global3.c, any(vec4<bool>(any(vec4<bool>(global4.d, arg_0.c.x, var_1.a, arg_0.c.x)), global3.c.x, true, !global3.c.x)), _wgslsmith_mult_vec3_i32(~(global4.e << (vec3<u32>(u_input.a.x, 1u, u_input.b.x) % vec3<u32>(32u))), -global4.e)), !(arg_1.a || arg_1.d), func_5(arg_0, func_5(Struct_1(true, global4.b, vec3<bool>(true, false, arg_0.d), var_1.c.x, global3.e), true, global3.e.x).d, arg_0.e.x).e.x).e.x;
    let var_3 = func_5(func_5(Struct_1(select(any(vec4<bool>(global3.a, arg_1.a, false, var_1.d)), true, global4.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(428f - -580f))), !vec3<bool>(var_1.a, arg_1.d, arg_0.a), any(!vec4<bool>(false, arg_1.c.x, arg_1.c.x, var_1.c.x)), func_5(Struct_1(false, -657f, global4.c, true, global3.e), true, 2147483647i).e), global3.d, arg_1.e.x), true, -(-global3.e.x << (abs(_wgslsmith_add_u32(u_input.b.x, u_input.b.x)) % 32u))).b;
    var var_4 = ~u_input.a.x;
    return _wgslsmith_mult_u32(_wgslsmith_sub_u32(reverseBits(1u), u_input.a.x), 4294967295u);
}

fn func_7(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = select(vec4<bool>(false, any(global3.c), false, arg_3.a), select(!select(vec4<bool>(arg_1.c.x, true, global4.c.x, false), !vec4<bool>(arg_2.c.x, arg_0, arg_0, arg_2.a), true), !select(!vec4<bool>(true, true, false, arg_0), vec4<bool>(true, true, true, true), !vec4<bool>(false, false, global3.a, false)), vec4<bool>(false, global4.a, true, !arg_2.c.x)), true);
    global1 = array<vec4<f32>, 5>();
    var var_1 = global4.b;
    global1 = array<vec4<f32>, 5>();
    var var_2 = !vec2<bool>(true, arg_0);
    return Struct_1(arg_0, arg_2.b, !(!select(var_0.xwx, vec3<bool>(false, false, true), vec3<bool>(arg_1.a, false, arg_1.a))), !(true & !arg_2.c.x) || arg_3.d, global4.e);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_7(global4.a, global2[_wgslsmith_index_u32(11398u, 11u)], Struct_1(true, global3.b, vec3<bool>(global4.a, false, true), global4.c.x, vec3<i32>(~u_input.c.x ^ global4.e.x, _wgslsmith_mod_i32(u_input.c.x, ~31958i), u_input.c.x)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, func_1(Struct_1(true, 255f, vec3<bool>(true, global3.d, false), false, global3.e), global2[_wgslsmith_index_u32(abs(u_input.b.x), 11u)]) << (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b.x, 4294967295u), 1u, 32026u) % 32u)), 11u)]);
    global1 = array<vec4<f32>, 5>();
    let var_0 = vec3<i32>(-(u_input.c.x << (_wgslsmith_sub_u32(u_input.a.x, u_input.b.x) % 32u)), u_input.c.x, global4.e.x << (_wgslsmith_sub_u32(max(u_input.a.x, 15140u) << (_wgslsmith_div_u32(1u, u_input.b.x) % 32u), countOneBits(4294967295u)) % 32u));
    let var_1 = _wgslsmith_div_u32(max(countOneBits(abs(1u)), _wgslsmith_mod_u32(firstLeadingBit(u_input.b.x), 46550u)) | ~29273u, u_input.b.x);
    var var_2 = abs(~(~(~vec2<u32>(0u, 70257u))));
    var var_3 = Struct_1(global4.c.x, 151f, vec3<bool>(!(4294967295u <= _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_2.x, 4576u, var_2.x), vec4<u32>(var_1, 4294967295u, u_input.b.x, 0u))), ~_wgslsmith_dot_vec2_u32(u_input.b.ww, vec2<u32>(1u, 4294967295u)) == (var_2.x >> (_wgslsmith_clamp_u32(1u, var_2.x, var_2.x) % 32u)), false), true, vec3<i32>(_wgslsmith_mult_i32(func_6(Struct_1(false, 1493f, global4.c, true, vec3<i32>(2147483647i, var_0.x, global3.e.x)), u_input.b.x, global4.b).e.x, -u_input.c.x) & 5389i, 1i, max(_wgslsmith_clamp_i32(4211i, abs(-2147483647i), u_input.c.x), var_0.x)));
    global0 = array<vec2<i32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(1545f, (min(1874u, 25026u) >> (_wgslsmith_div_u32(var_1, 1u) % 32u)) & u_input.a.x, u_input.b.x, var_0.x);
}

