struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: array<f32, 12> = array<f32, 12>(687f, 1000f, -496f, -235f, 910f, -1070f, -1122f, 538f, 121f, 185f, 1000f, -850f);

var<private> global2: array<u32, 8> = array<u32, 8>(2131u, 1u, 10582u, 31431u, 10938u, 39917u, 1u, 1u);

var<private> global3: Struct_1 = Struct_1(vec3<u32>(18162u, 21631u, 4294967295u), true, false, 1i);

var<private> global4: array<Struct_1, 29>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: i32) -> vec4<bool> {
    let var_0 = global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global3.a.x, 8u)], 12u)];
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 1u)];
    var_1 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(~countOneBits(global3.a.x), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.a.x, 8u)], 8u)]), 35796u, 1u), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-957f + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.a.x, 8u)], 12u)]))) < arg_0, select(var_1.b, any(vec4<bool>(!global3.c, !var_1.b, global3.c, select(global3.b, var_1.b, var_1.c))), false), (24921i << (~(~var_1.a.x) % 32u)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global3.d, arg_2, _wgslsmith_mod_i32(arg_2, arg_1), var_1.d), vec4<i32>(arg_2 | var_1.d, abs(-15822i), _wgslsmith_clamp_i32(u_input.a, 28261i, 20460i), 1i)));
    var var_2 = global1[_wgslsmith_index_u32(64551u, 12u)];
    global1 = array<f32, 12>();
    return vec4<bool>(!(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.a.x, 12u)] - _wgslsmith_f_op_f32(-arg_0)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, global1[_wgslsmith_index_u32(global3.a.x, 12u)])))), true, all(select(vec2<bool>(true, true), !(!vec2<bool>(global3.c, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, global3.c), vec2<bool>(true, true)), select(vec2<bool>(var_1.b, true), vec2<bool>(false, global3.c), global3.b), all(vec4<bool>(var_1.c, global3.b, false, global3.c))))), !any(vec3<bool>(true, any(vec2<bool>(var_1.b, global3.b)), true)));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec4<bool>) -> u32 {
    let var_0 = global4[_wgslsmith_index_u32(~(~countOneBits(global3.a.x)), 29u)];
    global1 = array<f32, 12>();
    var var_1 = global4[_wgslsmith_index_u32(~(~global3.a.x), 29u)];
    let var_2 = _wgslsmith_mult_vec4_i32(u_input.b, ~min((u_input.b >> (vec4<u32>(var_0.a.x, 1u, 0u, var_1.a.x) % vec4<u32>(32u))) << (vec4<u32>(global3.a.x, 84203u, var_1.a.x, 8147u) % vec4<u32>(32u)), ~u_input.b));
    var var_3 = global4[_wgslsmith_index_u32(global3.a.x, 29u)];
    return var_0.a.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = ~firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 1u, 0u) ^ arg_2.a, ~arg_0.yxy));
    var var_1 = global0[_wgslsmith_index_u32(arg_2.a.x, 1u)];
    global3 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(~62697u, ~arg_0.x, global3.a.x) << ((~vec3<u32>(global3.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)], 0u) | select(vec3<u32>(44740u, 0u, arg_0.x), var_1.a, true)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(~global3.a, _wgslsmith_mult_vec3_u32(vec3<u32>(global3.a.x, 26531u, global3.a.x), ~arg_2.a))), true, select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(692f + 2603f), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(12062u, 12u)]))) > _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(global3.a.x, 12u)], global1[_wgslsmith_index_u32(43636u, 12u)]))), false, false), 0i);
    let var_2 = Struct_1(arg_0.ywx, select(global3.b, all(!vec2<bool>(arg_2.b, arg_2.c)) | true, !(any(vec4<bool>(var_1.c, var_1.b, true, true)) || var_1.c)), false, -1i);
    let var_3 = Struct_1(vec3<u32>(arg_2.a.x, global3.a.x, ~func_4(1i, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.a.x, 12u)]), func_3(832f, 34000i, 48496i))), !(global3.c || true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(676f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_2.a.x, 8u)], 12u)])))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2079f - global1[_wgslsmith_index_u32(var_1.a.x, 12u)])) - _wgslsmith_f_op_f32(select(289f, _wgslsmith_div_f32(1000f, global1[_wgslsmith_index_u32(0u, 12u)]), !arg_2.b))), _wgslsmith_sub_i32(3455i, 2147483647i));
    return ~reverseBits(vec4<u32>(~(~global3.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.x, 80005u, 31938u), arg_0), arg_0.x, arg_0.x));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global3 = Struct_1(arg_0.wxw, arg_1.b, all(vec4<bool>(arg_2.c != global3.c, any(!vec4<bool>(arg_1.b, global3.b, true, global3.c)), false, ~arg_0.x <= 10543u)), arg_2.d);
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~global3.a.x, 12u)] - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_2.a.x, 12u)] * global1[_wgslsmith_index_u32(arg_0.x, 12u)])) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(global3.a.x, 12u)], -318f)), -1000f)) * 1065f)));
    global2 = array<u32, 8>();
    var var_1 = Struct_1(arg_2.a, global3.b, true, i32(-1i) * -4184i);
    let var_2 = arg_2;
    return global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_2.a.yx, select(vec2<u32>(_wgslsmith_mult_u32(arg_1.a.x, arg_1.a.x), var_2.a.x), vec2<u32>(0u, 71484u), !vec2<bool>(var_1.c, false))), _wgslsmith_div_vec2_u32(min(vec2<u32>(11525u, ~22982u), ~(~arg_1.a.yx)), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(global3.a.x, 100488u), var_1.a.zz), (arg_0.yy ^ arg_2.a.xx) >> (global3.a.xy % vec2<u32>(32u))))), 8u)], 1u)];
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    global2 = array<u32, 8>();
    let var_0 = _wgslsmith_mult_vec3_i32(u_input.b.zwx, u_input.b.xww);
    global0 = array<Struct_1, 1>();
    var var_1 = func_5(vec4<u32>(arg_1.a.x, 1u, 1u, func_5(vec4<u32>(49016u, global3.a.x, countOneBits(4294967295u), func_5(vec4<u32>(4294967295u, 13403u, arg_1.a.x, 66068u), global4[_wgslsmith_index_u32(4294967295u, 29u)], Struct_1(arg_1.a, false, true, 0i)).a.x), Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(arg_1.a.x, 8u)], 3034u, 0u), arg_1.a.x != global2[_wgslsmith_index_u32(24636u, 8u)], true, global3.d), global4[_wgslsmith_index_u32(62684u, 29u)]).a.x), func_5(~func_2(~vec4<u32>(41816u, 1u, 4294967295u, global2[_wgslsmith_index_u32(arg_1.a.x, 8u)]), !arg_1.c, func_5(vec4<u32>(global2[_wgslsmith_index_u32(arg_1.a.x, 8u)], 52207u, 48563u, 1u), Struct_1(global3.a, true, arg_1.b, 29524i), global0[_wgslsmith_index_u32(69827u, 1u)])), Struct_1(global3.a, global3.b, _wgslsmith_f_op_f32(min(-169f, global1[_wgslsmith_index_u32(1u, 12u)])) <= _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(39457u, 12u)])), var_0.x), func_5(select(firstLeadingBit(vec4<u32>(global3.a.x, arg_1.a.x, 1u, 0u)), ~vec4<u32>(global2[_wgslsmith_index_u32(global3.a.x, 8u)], 4294967295u, global3.a.x, 27528u), false), Struct_1(global3.a ^ vec3<u32>(4841u, global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(1u, 8u)]), !arg_1.b, global3.b, global3.d), func_5(~vec4<u32>(global3.a.x, global2[_wgslsmith_index_u32(4294967295u, 8u)], 0u, global2[_wgslsmith_index_u32(46178u, 8u)]), func_5(vec4<u32>(global3.a.x, 79043u, 33075u, arg_1.a.x), global4[_wgslsmith_index_u32(arg_1.a.x, 29u)], arg_1), global4[_wgslsmith_index_u32(arg_1.a.x, 29u)]))), arg_1);
    global2 = array<u32, 8>();
    return Struct_1(~_wgslsmith_add_vec3_u32(min(global3.a, vec3<u32>(global3.a.x, 0u, 0u)), vec3<u32>(arg_1.a.x, arg_1.a.x, min(20240u, 4294967295u))), true && func_5(vec4<u32>(func_2(vec4<u32>(1u, 4294967295u, global2[_wgslsmith_index_u32(0u, 8u)], 14615u), true, Struct_1(global3.a, false, true, var_1.d)).x, arg_1.a.x, global3.a.x << (50867u % 32u), ~arg_1.a.x), func_5(vec4<u32>(global3.a.x, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.a.x, 8u)], 8u)], 27323u) >> (vec4<u32>(global2[_wgslsmith_index_u32(arg_1.a.x, 8u)], global3.a.x, arg_1.a.x, 62449u) % vec4<u32>(32u)), func_5(vec4<u32>(1u, 4294967295u, global2[_wgslsmith_index_u32(10510u, 8u)], 4294967295u), Struct_1(vec3<u32>(var_1.a.x, var_1.a.x, arg_1.a.x), global3.c, global3.c, arg_1.d), global4[_wgslsmith_index_u32(global3.a.x, 29u)]), arg_1), Struct_1(~vec3<u32>(arg_1.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.a.x, 8u)], 8u)], 1u), false, var_1.b && global3.b, -2147483647i)).b, var_1.b, min(countOneBits(var_1.d) << ((~1u << ((23558u | var_1.a.x) % 32u)) % 32u), arg_1.d));
}

fn func_7(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = 2147483647i;
    var var_1 = -abs(vec4<i32>(func_6(vec4<f32>(global1[_wgslsmith_index_u32(1u, 12u)], 172f, global1[_wgslsmith_index_u32(arg_1, 12u)], -243f), global4[_wgslsmith_index_u32(0u, 29u)]).d, abs(-34564i) >> ((global3.a.x ^ 21386u) % 32u), abs(1i), ~u_input.a));
    let var_2 = Struct_1(~global3.a, !arg_0.c, _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(global3.d, var_1.x, u_input.a, var_1.x), vec4<i32>(u_input.b.x, arg_0.d, -2147483647i, u_input.b.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_1.xz, vec2<i32>(arg_0.d, u_input.b.x)), ~(-19863i))) < (u_input.b.x >> (global2[_wgslsmith_index_u32(1u, 8u)] % 32u)), arg_0.d);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(arg_1, 8u)]), 12u)]), 1f)), 2251f)) * 1000f);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(arg_0.a.x, 12u)], global1[_wgslsmith_index_u32(var_2.a.x, 12u)], global1[_wgslsmith_index_u32(1u, 12u)]))))), vec3<f32>(430f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(arg_0.a.x, 12u)])), _wgslsmith_f_op_f32(floor(-2546f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(4294967295u, 12u)])), 163f))));
    return Struct_1(arg_0.a, false, all(!vec3<bool>(!global3.b, arg_0.c, false)), firstTrailingBit(-2147483647i ^ (var_1.x | ~var_2.d)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_7(func_6(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1447f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10806u, 8u)], 12u)], 836f, 454f) - vec4<f32>(411f, global1[_wgslsmith_index_u32(44837u, 12u)], 636f, global1[_wgslsmith_index_u32(0u, 12u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(-3868f, global1[_wgslsmith_index_u32(arg_0.a.x, 12u)], 1585f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.a.x, 8u)], 12u)]) - vec4<f32>(-389f, global1[_wgslsmith_index_u32(8018u, 12u)], 331f, global1[_wgslsmith_index_u32(global3.a.x, 12u)]))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1060f, global1[_wgslsmith_index_u32(arg_0.a.x, 12u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(35306u, 8u)], 12u)], global1[_wgslsmith_index_u32(46665u, 12u)]), vec4<f32>(-248f, global1[_wgslsmith_index_u32(50003u, 12u)], 1307f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 12u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7845u, 8u)], 12u)], global1[_wgslsmith_index_u32(0u, 12u)]) * vec4<f32>(global1[_wgslsmith_index_u32(21234u, 12u)], -735f, global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(105440u, 12u)])), vec4<bool>(arg_0.c, global3.c, true, false)))), func_5(~func_2(vec4<u32>(arg_0.a.x, global3.a.x, global2[_wgslsmith_index_u32(arg_0.a.x, 8u)], global3.a.x), arg_0.b, Struct_1(vec3<u32>(global3.a.x, 1u, 15215u), true, false, 2147483647i)), Struct_1(vec3<u32>(arg_0.a.x, global2[_wgslsmith_index_u32(global3.a.x, 8u)], 21689u), select(global3.b, global3.b, true), true, abs(434i)), Struct_1(vec3<u32>(1u, 4294967295u, global3.a.x), any(vec4<bool>(global3.c, arg_0.b, arg_0.b, arg_0.c)), arg_0.b && arg_0.b, 8112i))), 15860u);
    global0 = array<Struct_1, 1>();
    var var_1 = ~global3.d;
    let var_2 = func_7(func_5(func_2(firstTrailingBit(vec4<u32>(var_0.a.x, global2[_wgslsmith_index_u32(global3.a.x, 8u)], 4294967295u, var_0.a.x)), 40378u <= global3.a.x, global0[_wgslsmith_index_u32(~1u, 1u)]) | (~vec4<u32>(1u, 1u, global3.a.x, var_0.a.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.x, 1u, global3.a.x, arg_0.a.x), vec4<u32>(4294967295u, 4294967295u, global2[_wgslsmith_index_u32(arg_0.a.x, 8u)], global2[_wgslsmith_index_u32(var_0.a.x, 8u)])) % vec4<u32>(32u))), func_7(Struct_1(global3.a, true, true, func_5(vec4<u32>(0u, var_0.a.x, var_0.a.x, 4294967295u), var_0, Struct_1(vec3<u32>(var_0.a.x, arg_0.a.x, var_0.a.x), var_0.b, false, -56032i)).d), 1u), func_7(arg_0, arg_0.a.x << ((arg_0.a.x ^ arg_0.a.x) % 32u))), ~func_5(firstTrailingBit(abs(vec4<u32>(var_0.a.x, global2[_wgslsmith_index_u32(4294967295u, 8u)], arg_0.a.x, 4294967295u))), func_6(vec4<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.a.x, 8u)], 12u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(49822u, 8u)], 12u)], -321f, global1[_wgslsmith_index_u32(0u, 12u)]), func_6(vec4<f32>(global1[_wgslsmith_index_u32(var_0.a.x, 12u)], -1000f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(133138u, 8u)], 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)]), arg_0)), Struct_1(firstLeadingBit(arg_0.a), true, arg_0.b == false, _wgslsmith_div_i32(-1i, global3.d))).a.x);
    let var_3 = -(u_input.b.zww >> (var_0.a % vec3<u32>(32u)));
    return func_5(~(~(~vec4<u32>(6820u, global3.a.x, 77520u, 1u))) ^ firstTrailingBit(vec4<u32>(var_0.a.x << (var_0.a.x % 32u), 87316u, 1u, max(arg_0.a.x, 1u))), func_7(var_2, ~(~countOneBits(35117u))), global0[_wgslsmith_index_u32(reverseBits(min(29166u, ~13485u)), 1u)]);
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(arg_2.a.x, 12u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 12u)] + -451f), global1[_wgslsmith_index_u32(arg_3.a.x, 12u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(74514u, 12u)] - global1[_wgslsmith_index_u32(116646u, 12u)])) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global3.a.x, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], 2161f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.a.x, 8u)], 12u)]), vec4<f32>(-177f, -762f, global1[_wgslsmith_index_u32(18535u, 12u)], global1[_wgslsmith_index_u32(40082u, 12u)])), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(arg_3.a.x, 12u)], 139f, 1041f, -1091f), vec4<f32>(-850f, 935f, 701f, global1[_wgslsmith_index_u32(34173u, 12u)]), vec4<bool>(false, global3.b, false, true))))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 12u)]), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1321u, global2[_wgslsmith_index_u32(1u, 8u)], 137747u), 12u)], _wgslsmith_f_op_f32(ceil(1270f)), -655f)))), Struct_1(arg_0.a, arg_1.b, arg_3.c, max(firstTrailingBit(firstTrailingBit(u_input.a)), _wgslsmith_clamp_i32(-45678i, -arg_0.d, 1i))));
    var var_1 = func_2(reverseBits(vec4<u32>(arg_1.a.x, ~57347u, func_5(func_2(vec4<u32>(1u, global3.a.x, 58862u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)]), arg_2.b, global0[_wgslsmith_index_u32(3842u, 1u)]), arg_0, func_1(Struct_1(vec3<u32>(0u, 1u, var_0.a.x), global3.c, arg_0.c, 2147483647i))).a.x, ~firstLeadingBit(arg_1.a.x))), false, arg_1).xz;
    var var_2 = arg_1;
    let var_3 = ~_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(1u, 4294967295u), 60935u, _wgslsmith_div_u32(var_0.a.x, arg_1.a.x));
    var var_4 = func_7(arg_0, 0u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(50627u, 23504u), 12u)], -287f, true)))))) * 1038f);
}

fn func_9(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    global3 = global4[_wgslsmith_index_u32(1u, 29u)];
    global4 = array<Struct_1, 29>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(arg_2.x, 8u)], ~(~(~_wgslsmith_add_u32(21613u, arg_2.x)))), 1u)];
    global3 = func_1(Struct_1(max(_wgslsmith_mod_vec3_u32(global3.a, vec3<u32>(global3.a.x, 0u, global2[_wgslsmith_index_u32(50264u, 8u)])) << (~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.a.x, 8u)], 8u)], 4294967295u, 0u) % vec3<u32>(32u)), select(func_2(vec4<u32>(var_0.a.x, 1u, arg_2.x, var_0.a.x), true, global0[_wgslsmith_index_u32(global3.a.x, 1u)]).wyz, vec3<u32>(global3.a.x, 34584u, var_0.a.x) | global3.a, false)), arg_1 || arg_1, false, ~20629i));
    var var_1 = vec4<u32>(_wgslsmith_mod_u32(var_0.a.x, abs(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(47321u, 8u)], _wgslsmith_div_u32(var_0.a.x, arg_2.x)))), global3.a.x, _wgslsmith_div_u32(func_1(Struct_1(vec3<u32>(var_0.a.x, global3.a.x, global2[_wgslsmith_index_u32(arg_2.x, 8u)]), global3.b, false, ~u_input.b.x)).a.x, global3.a.x), func_1(global4[_wgslsmith_index_u32(~arg_2.x, 29u)]).a.x);
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~86641u, _wgslsmith_sub_u32(var_1.x, ~(~(~0u)))), 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_u32(~global3.a << (_wgslsmith_mod_vec3_u32(vec3<u32>(69755u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)] % 32u), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global3.a.x, 8u)], 8u)], ~global3.a.x), global3.a) % vec3<u32>(32u)), abs(_wgslsmith_div_vec3_u32(abs(global3.a), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(global3.a, global3.a), vec3<u32>(global3.a.x, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.a.x, 8u)], 8u)]) << (global3.a % vec3<u32>(32u))))));
    global3 = func_9(vec4<f32>(global1[_wgslsmith_index_u32(0u, 12u)], _wgslsmith_f_op_f32(func_8(global4[_wgslsmith_index_u32(~global3.a.x, 29u)], Struct_1(~global3.a, select(global3.c, global3.c, global3.b), global3.c, ~24292i), Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(38205u, 8u)], global3.a.x, var_0.x), all(vec4<bool>(global3.b, false, global3.b, global3.b)), false, -31523i), func_1(Struct_1(global3.a, false, true, u_input.b.x)))), global1[_wgslsmith_index_u32(~(~select(81089u, 1u, false)), 12u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(6760u, 12u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -527f)))), true, min(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(global3.a.x, global3.a.x), global3.a.x), var_0.yx), vec2<u32>(4294967295u, 1u)));
    let var_1 = global0[_wgslsmith_index_u32(~(~(~var_0.x ^ global3.a.x)), 1u)];
    global1 = array<f32, 12>();
    var_0 = vec3<u32>(max(global2[_wgslsmith_index_u32(var_0.x, 8u)], 1u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(4294967295u, 1u)), select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, 0u), var_0.yy), var_1.a.x, var_1.c), _wgslsmith_div_u32(60986u, _wgslsmith_mod_u32(global3.a.x, countOneBits(global3.a.x)))), ~(firstTrailingBit(~var_0.x) ^ ~global3.a.x));
    var var_2 = _wgslsmith_mod_vec2_u32(global3.a.xz, _wgslsmith_clamp_vec2_u32(global3.a.xy, var_1.a.zy, vec2<u32>(1u, var_0.x)));
    var var_3 = func_7(Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_1.a.x, 0u), abs(4294967295u), var_1.a.x ^ 4294967295u), _wgslsmith_div_vec3_u32(~var_1.a, func_5(vec4<u32>(4294967295u, global3.a.x, 8195u, 53452u), Struct_1(vec3<u32>(45301u, var_1.a.x, 0u), var_1.b, true, 37972i), global0[_wgslsmith_index_u32(4294967295u, 1u)]).a)), false, var_1.c, ~21785i >> (reverseBits(abs(global2[_wgslsmith_index_u32(var_0.x, 8u)])) % 32u)), _wgslsmith_sub_u32(1u, global2[_wgslsmith_index_u32(max(0u, 6650u) ^ firstLeadingBit(~var_1.a.x), 8u)])).a.x;
    let var_4 = _wgslsmith_f_op_f32(637f + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 12u)] * _wgslsmith_f_op_f32(-377f - -1521f)));
    let var_5 = func_7(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, func_9(vec4<f32>(global1[_wgslsmith_index_u32(0u, 12u)], var_4, 1022f, 166f), global3.b, vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], var_0.x)).a.x, 9477u), ~vec3<u32>(var_2.x, 1u, _wgslsmith_mod_u32(var_2.x, var_2.x))), 29u)], var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4 + -479f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1[_wgslsmith_index_u32(var_2.x, 12u)], 931f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4, 353f, -313f) - vec3<f32>(493f, var_4, global1[_wgslsmith_index_u32(46713u, 12u)])) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-871f, -1170f, 984f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(522f, -577f, -354f) + vec3<f32>(590f, global1[_wgslsmith_index_u32(global3.a.x, 12u)], 243f)))), select(!vec3<bool>(var_1.b, true, var_5.c), func_3(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(60570u, 12u)] + global1[_wgslsmith_index_u32(var_2.x, 12u)]), -global3.d, -2147483647i).xyy, !select(vec3<bool>(false, true, var_1.c), vec3<bool>(true, var_5.b, var_5.c), vec3<bool>(true, true, false))))), _wgslsmith_dot_vec3_u32(~(var_1.a ^ func_7(Struct_1(var_1.a, global3.c, true, u_input.b.x), var_1.a.x).a), vec3<u32>(global2[_wgslsmith_index_u32(12922u, 8u)], ~11959u, 0u)));
}

