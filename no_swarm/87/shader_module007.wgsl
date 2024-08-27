struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 72136u, 15155u);

var<private> global1: u32 = 5866u;

var<private> global2: Struct_1;

var<private> global3: Struct_5 = Struct_5(vec3<f32>(530f, 1000f, -1281f), -588f, vec4<u32>(1u, 20157u, 10579u, 4294967295u), vec2<u32>(65918u, 1u), Struct_1(false, true, vec3<f32>(312f, -644f, -1591f), vec3<i32>(1972i, i32(-2147483648), 7348i)));

var<private> global4: Struct_4 = Struct_4(vec4<f32>(2782f, -996f, -473f, -1213f), Struct_1(false, true, vec3<f32>(1722f, -2121f, 624f), vec3<i32>(-8010i, 69886i, 19796i)), 695f);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<f32> {
    var var_0 = (_wgslsmith_clamp_i32(-1i, max(_wgslsmith_mod_i32(-1i, -2277i), global4.b.d.x), -global2.d.x) << (~(~global3.d.x) % 32u)) << ((global3.d.x >> ((countOneBits(max(u_input.c, 13389u)) >> (abs(reverseBits(6804u)) % 32u)) % 32u)) % 32u);
    var var_1 = Struct_2(Struct_1(!global3.e.a, true, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1446f, _wgslsmith_f_op_f32(394f + -134f), _wgslsmith_f_op_f32(-global2.c.x)))), ~vec3<i32>(reverseBits(2147483647i), i32(-1i) * -9263i, -37801i)), global4.b.b, global4.b, true);
    global1 = 85651u;
    global1 = 4294967295u;
    var_0 = var_1.a.d.x;
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.e.c + _wgslsmith_f_op_vec3_f32(-var_1.c.c))))));
}

fn func_2(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-global4.a), Struct_1(false, arg_0.e.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()))), _wgslsmith_add_vec3_i32(max(arg_2.b.d, _wgslsmith_sub_vec3_i32(arg_2.b.d, vec3<i32>(u_input.b, global4.b.d.x, arg_3.x))), vec3<i32>(~u_input.b, _wgslsmith_mult_i32(arg_3.x, 11322i), _wgslsmith_mod_i32(arg_1.x, 72801i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x * global2.c.x) * 1000f)))));
    let var_1 = u_input.c ^ 0u;
    return Struct_2(Struct_1(false, -494f == arg_2.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.b.c * _wgslsmith_f_op_vec3_f32(arg_2.b.c + global2.c))), vec3<i32>(max(arg_3.x ^ arg_3.x, 1i), -1i, ~global2.d.x | 1i)), global2.a, arg_2.b, true);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>) -> bool {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b.c.x))), 1478f, -856f, arg_0.c.c.x)), Struct_1(!global3.e.b, global3.e.a, _wgslsmith_f_op_vec3_f32(-func_2(Struct_5(vec3<f32>(1000f, -679f, global3.b), 107f, vec4<u32>(global3.c.x, u_input.c, global0.x, global3.d.x), global0.xy, global3.e), _wgslsmith_sub_vec2_i32(vec2<i32>(global4.b.d.x, global4.b.d.x), arg_1), Struct_4(global4.a, Struct_1(true, true, vec3<f32>(-841f, global2.c.x, global4.a.x), vec3<i32>(-9034i, 2147483647i, 2147483647i)), -948f), -vec3<i32>(global2.d.x, u_input.b, 2147483647i)).a.c), vec3<i32>(_wgslsmith_mult_i32(2147483647i & u_input.b, global3.e.d.x), global4.b.d.x, 0i)), _wgslsmith_f_op_f32(floor(1000f)));
    var var_1 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec2_i32(arg_0.b.d.zy, arg_0.c.d.yz), var_0.b.d.x), vec2<i32>(_wgslsmith_mod_i32(global4.b.d.x, 2147483647i), -global3.e.d.x) ^ (u_input.a << (global0.xx % vec2<u32>(32u))));
    global4 = Struct_4(_wgslsmith_f_op_vec4_f32(global4.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(global4.a)))))), func_2(Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global4.c, 2122f, global4.b.c.x), vec3<f32>(313f, global2.c.x, -1000f))), _wgslsmith_f_op_f32(sign(arg_0.b.c.x)), global3.c, ~vec2<u32>(u_input.c, global0.x), func_2(Struct_5(global3.e.c, arg_0.c.c.x, vec4<u32>(global3.d.x, global0.x, global3.d.x, global3.d.x), global0.xz, global4.b), _wgslsmith_div_vec2_i32(global3.e.d.xx, global3.e.d.zx), Struct_4(global4.a, global4.b, arg_0.c.c.x), global3.e.d).a), _wgslsmith_mod_vec2_i32(func_2(Struct_5(vec3<f32>(arg_0.b.c.x, -355f, arg_0.a.a.c.x), var_0.b.c.x, global3.c, vec2<u32>(u_input.c, global0.x), arg_0.c), _wgslsmith_mod_vec2_i32(global2.d.zy, vec2<i32>(27438i, -22022i)), Struct_4(var_0.a, global3.e, 864f), firstTrailingBit(vec3<i32>(global2.d.x, 2147483647i, 2147483647i))).a.d.yx, global3.e.d.yz), Struct_4(global4.a, func_2(Struct_5(global3.e.c, global4.c, global3.c, vec2<u32>(global3.d.x, 1u), Struct_1(var_0.b.b, global4.b.a, global3.e.c, var_0.b.d)), reverseBits(vec2<i32>(2147483647i, 10056i)), Struct_4(global4.a, Struct_1(false, global2.a, vec3<f32>(762f, var_0.a.x, 1025f), global2.d), 1000f), global4.b.d << (vec3<u32>(u_input.c, 43415u, 1u) % vec3<u32>(32u))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -199f) - _wgslsmith_f_op_f32(global3.a.x - -1000f))), vec3<i32>(0i, 1i, i32(-1i) * -22307i) ^ var_0.b.d).a, arg_0.c.c.x);
    let var_2 = global4.b.d.x;
    global4 = Struct_4(vec4<f32>(-1000f, func_2(Struct_5(vec3<f32>(997f, 179f, global3.b), _wgslsmith_f_op_f32(103f + arg_0.a.a.c.x), ~global3.c, vec2<u32>(u_input.c, 4294967295u), global3.e), ~(-var_0.b.d.yx), Struct_4(_wgslsmith_div_vec4_f32(global4.a, vec4<f32>(var_0.a.x, -914f, global3.a.x, 1276f)), func_2(Struct_5(vec3<f32>(global3.a.x, global2.c.x, 571f), global4.a.x, global3.c, vec2<u32>(1u, global3.c.x), Struct_1(false, true, global4.a.yyw, vec3<i32>(31134i, u_input.a.x, global4.b.d.x))), vec2<i32>(-1i, -2147483647i), Struct_4(vec4<f32>(-406f, arg_0.b.c.x, global3.a.x, global4.a.x), var_0.b, -487f), vec3<i32>(-18635i, 2147483647i, 37372i)).c, -1000f), -vec3<i32>(u_input.a.x, 3335i, global2.d.x)).a.c.x, 726f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3()).x)), Struct_1(true, true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.c.c.x, 186f, global3.e.c.x) + vec3<f32>(-308f, global4.c, global4.b.c.x))), arg_0.c.c, 1i != global2.d.x)), select(~global2.d, ~global3.e.d & _wgslsmith_sub_vec3_i32(global3.e.d, vec3<i32>(-1i, arg_0.c.d.x, -1i)), vec3<bool>(global2.a, true, all(vec3<bool>(false, true, global3.e.b))))), arg_0.a.a.c.x);
    return _wgslsmith_dot_vec3_i32(select(global2.d & var_0.b.d, global2.d, arg_1.x >= arg_0.b.d.x) | select(max(vec3<i32>(1i, arg_1.x, -1i), vec3<i32>(arg_1.x, u_input.b, -16041i)), firstLeadingBit(global4.b.d), !global4.b.b), vec3<i32>(global2.d.x, global2.d.x, 29341i)) == (~(-(u_input.a.x | var_0.b.d.x)) & -1i);
}

fn func_1() -> vec4<u32> {
    let var_0 = vec3<bool>(!func_4(Struct_3(func_2(Struct_5(vec3<f32>(704f, global3.e.c.x, -712f), global2.c.x, vec4<u32>(global0.x, global3.c.x, global0.x, global0.x), vec2<u32>(global0.x, 27637u), Struct_1(global4.b.a, true, vec3<f32>(1380f, global4.b.c.x, global2.c.x), vec3<i32>(-15650i, global2.d.x, global2.d.x))), u_input.a, Struct_4(vec4<f32>(global2.c.x, global2.c.x, -1730f, global2.c.x), global4.b, 1458f), vec3<i32>(u_input.a.x, 1i, 1i)), Struct_1(true, true, global4.a.zxw, global3.e.d), Struct_1(true, false, vec3<f32>(-222f, -1840f, global4.a.x), global3.e.d)), select(global2.d.zz, -u_input.a, global4.b.a)), ~firstTrailingBit(~21848u) > ~min(global3.c.x, ~2738u), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.c.x)) >= _wgslsmith_f_op_f32(exp2(global4.a.x))) && global3.e.b);
    var var_1 = -1815f;
    var_1 = global2.c.x;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(global3.a.x - _wgslsmith_div_f32(global2.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c.x, global3.b) - global2.c.x))), 146f, global4.b.c.x);
    return ~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(global3.c.x, global3.d.x, global0.x, u_input.c)) ^ vec4<u32>(_wgslsmith_sub_u32(global3.c.x, global3.c.x), 16622u, 50468u, countOneBits(u_input.c)), ~vec4<u32>(1u, global3.c.x, 4294967295u, global0.x));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32) -> StorageBuffer {
    var var_0 = min(_wgslsmith_sub_vec2_i32(vec2<i32>(-firstLeadingBit(1i), func_2(Struct_5(global4.a.zxw, global4.b.c.x, vec4<u32>(52869u, 0u, 37520u, 8341u), global3.d, global4.b), global3.e.d.yz, Struct_4(global4.a, Struct_1(global2.a, true, vec3<f32>(655f, arg_2, -696f), vec3<i32>(global2.d.x, global2.d.x, u_input.b)), 1265f), max(global2.d, global3.e.d)).c.d.x), global3.e.d.xy ^ ~(vec2<i32>(2147483647i, 2217i) ^ arg_1.c.d.yx)), vec2<i32>(3754i, 2147483647i));
    var var_1 = !vec3<bool>(true, func_4(Struct_3(arg_1, Struct_1(global3.e.a, global4.b.b, global2.c, global4.b.d), Struct_1(arg_1.a.b, false, global3.a, global2.d)), firstLeadingBit(-global4.b.d.xx)), true);
    let var_2 = ~(~arg_0);
    global2 = Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global4.b.d.yx, global4.b.d.yz), -1i) > global4.b.d.x, true, vec3<f32>(_wgslsmith_f_op_f32(exp2(global2.c.x)), _wgslsmith_div_f32(global4.c, global2.c.x), _wgslsmith_f_op_f32(arg_1.c.c.x + -287f)), ~firstLeadingBit(_wgslsmith_sub_vec3_i32(global2.d, select(arg_1.a.d, vec3<i32>(-2147483647i, global3.e.d.x, global4.b.d.x), global4.b.a))));
    global0 = select(~vec3<u32>(_wgslsmith_div_u32(u_input.c, arg_0.x), ~arg_0.x, abs(global3.c.x)), ~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(global3.c.x, global3.d.x, 4294967295u), select(arg_0.xzy, vec3<u32>(18182u, 66806u, u_input.c), vec3<bool>(false, true, false))), ~max(global3.c.wxw, global3.c.zww)), select(!select(select(vec3<bool>(arg_1.d, var_1.x, arg_1.d), vec3<bool>(var_1.x, true, true), vec3<bool>(global4.b.a, arg_1.a.a, global4.b.a)), vec3<bool>(true, false, false), global3.e.a), vec3<bool>(func_2(Struct_5(vec3<f32>(arg_2, 1000f, global4.b.c.x), -268f, arg_0, global0.xx, global4.b), -vec2<i32>(-9454i, -2147483647i), Struct_4(global4.a, global4.b, global2.c.x), _wgslsmith_add_vec3_i32(global3.e.d, vec3<i32>(-26645i, 2147483647i, 2147483647i))).c.b, _wgslsmith_f_op_f32(arg_1.a.c.x + -331f) <= 209f, (arg_1.c.a | true) & true), select(vec3<bool>(var_1.x, false, var_1.x | global4.b.b), select(!vec3<bool>(global3.e.b, true, global4.b.a), !vec3<bool>(arg_1.a.b, false, global2.b), vec3<bool>(false, false, global4.b.a)), select(select(vec3<bool>(global2.a, false, false), vec3<bool>(global3.e.a, global2.b, true), vec3<bool>(global3.e.a, global2.a, true)), !vec3<bool>(false, global2.a, true), global4.b.b))));
    return StorageBuffer(2147483647i, (arg_0.yx << (vec2<u32>(abs(global3.d.x), 15627u >> (0u % 32u)) % vec2<u32>(32u))) >> (global0.zx % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global4.a))))), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, global2.d.x, var_0.x, global3.e.d.x) >> (vec4<u32>(4294967295u, 25101u, 1u, global0.x) % vec4<u32>(32u)), select(vec4<i32>(var_0.x, u_input.a.x, var_0.x, global2.d.x), ~vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, global4.b.d.x), global2.a), ~_wgslsmith_div_vec4_i32(vec4<i32>(global2.d.x, -1i, 3842i, global4.b.d.x), vec4<i32>(-26706i, 16727i, global3.e.d.x, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -505f;
    let x = u_input.a;
    s_output = func_5(func_1(), func_2(Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2.c, global2.c) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1453f, global3.e.c.x, -579f)))), -829f, _wgslsmith_mod_vec4_u32(global3.c, func_1()), ~select(global3.c.zw, vec2<u32>(global0.x, 0u), vec2<bool>(global4.b.b, global3.e.b)), global3.e), u_input.a >> (~global3.c.wy % vec2<u32>(32u)), Struct_4(_wgslsmith_f_op_vec4_f32(select(global4.a, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(262f, -313f, global3.a.x, global3.b))), select(vec4<bool>(global3.e.b, global3.e.a, global4.b.a, global4.b.a), vec4<bool>(false, global3.e.b, false, false), vec4<bool>(global4.b.a, true, global3.e.a, global3.e.b)))), func_2(Struct_5(vec3<f32>(global2.c.x, global3.b, 1474f), 617f, vec4<u32>(global0.x, global3.d.x, global3.c.x, 0u), global0.yz, global4.b), vec2<i32>(global3.e.d.x, 0i), Struct_4(vec4<f32>(global2.c.x, 1194f, -589f, 800f), global3.e, global3.e.c.x), -vec3<i32>(global4.b.d.x, -2147483647i, 2147483647i)).a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.e.c.x - global3.e.c.x), global2.c.x, all(vec4<bool>(global2.b, global2.a, false, global4.b.a))))), global4.b.d), _wgslsmith_div_f32(522f, 434f));
}

