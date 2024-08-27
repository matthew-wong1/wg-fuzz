struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec2<f32>(-1488f, -1079f), 311f, vec4<i32>(i32(-2147483648), 0i, 5428i, 0i)), vec2<bool>(true, true));

var<private> global1: Struct_1;

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec2<f32>(-1205f, -1276f), -118f, vec4<i32>(1i, 21325i, -1i, 2147483647i)), Struct_2(vec2<f32>(-626f, 494f), 452f, vec4<i32>(-1i, 2147483647i, -63854i, 0i)), Struct_2(vec2<f32>(-1258f, 1624f), 1678f, vec4<i32>(2147483647i, -25937i, 12371i, 0i)), Struct_2(vec2<f32>(-2593f, 819f), 1013f, vec4<i32>(37961i, i32(-2147483648), -52565i, 1i)), Struct_2(vec2<f32>(344f, 1000f), -800f, vec4<i32>(-42437i, -1i, -10891i, -6107i)), Struct_2(vec2<f32>(1551f, -684f), -272f, vec4<i32>(71271i, -1i, i32(-2147483648), 2147483647i)), Struct_2(vec2<f32>(426f, 925f), -179f, vec4<i32>(0i, 42061i, -1i, i32(-2147483648))), Struct_2(vec2<f32>(277f, -2043f), 2472f, vec4<i32>(0i, -2881i, i32(-2147483648), 2147483647i)), Struct_2(vec2<f32>(-948f, 177f), 1160f, vec4<i32>(-62181i, -17395i, 2147483647i, -55293i)), Struct_2(vec2<f32>(-344f, 1120f), -1780f, vec4<i32>(i32(-2147483648), -71671i, 13898i, i32(-2147483648))), Struct_2(vec2<f32>(954f, -222f), 922f, vec4<i32>(1i, i32(-2147483648), 1i, -37802i)), Struct_2(vec2<f32>(-1203f, -919f), 1000f, vec4<i32>(59511i, 0i, -34732i, 8611i)), Struct_2(vec2<f32>(349f, 294f), 1000f, vec4<i32>(-38777i, 32046i, -10905i, -28961i)), Struct_2(vec2<f32>(-330f, -1146f), -511f, vec4<i32>(1i, -1i, 2147483647i, 43843i)), Struct_2(vec2<f32>(318f, -531f), -127f, vec4<i32>(2147483647i, 2147483647i, 15371i, 54284i)), Struct_2(vec2<f32>(148f, 1469f), 1418f, vec4<i32>(-23230i, -36645i, 4406i, 2147483647i)), Struct_2(vec2<f32>(-2698f, -1067f), -775f, vec4<i32>(i32(-2147483648), 0i, 2147483647i, i32(-2147483648))), Struct_2(vec2<f32>(-607f, -751f), 1441f, vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, -587i)), Struct_2(vec2<f32>(-618f, -249f), 534f, vec4<i32>(i32(-2147483648), 29889i, -1i, -31910i)), Struct_2(vec2<f32>(158f, 124f), -224f, vec4<i32>(19588i, 6263i, 34631i, 0i)), Struct_2(vec2<f32>(864f, 952f), -625f, vec4<i32>(1i, 1i, 0i, 2147483647i)));

var<private> global4: array<u32, 8>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = ((global4[_wgslsmith_index_u32(1u, 8u)] | 46620u) ^ global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c & select(1u, global4[_wgslsmith_index_u32(u_input.a.x, 8u)], global2.x), firstLeadingBit(global4[_wgslsmith_index_u32(1u, 8u)])), 8u)]) << (_wgslsmith_mod_u32(1u, u_input.b.x) % 32u);
    let var_1 = arg_2.a;
    var var_2 = all(select(!vec4<bool>(!arg_2.b.x, global2.x, true, true), select(!select(vec4<bool>(false, true, global0.b.x, global0.b.x), vec4<bool>(false, global0.b.x, false, global2.x), global2.x), select(!vec4<bool>(false, global0.b.x, global0.b.x, false), !vec4<bool>(global2.x, false, arg_2.b.x, global2.x), vec4<bool>(global2.x, false, arg_2.b.x, global0.b.x)), all(select(vec2<bool>(arg_2.b.x, true), global0.b, vec2<bool>(false, false)))), vec4<bool>(select(arg_2.b.x, false, global0.b.x || global0.b.x), global2.x, true, any(select(global2.wxy, vec3<bool>(global2.x, global2.x, global0.b.x), true)))));
    global4 = array<u32, 8>();
    global3 = array<Struct_2, 21>();
    return vec4<bool>(true, global2.x, !arg_2.b.x, arg_2.b.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: bool) -> Struct_4 {
    global2 = !select(!(!func_3(Struct_1(vec3<f32>(-1834f, -992f, 117f), u_input.d), Struct_1(vec3<f32>(global1.a.x, 739f, global0.a.a.x), vec2<i32>(-35236i, u_input.d.x)), Struct_3(global3[_wgslsmith_index_u32(24367u, 21u)], global2.zw))), select(vec4<bool>(false, true, !arg_2, global0.b.x), !(!vec4<bool>(true, global2.x, true, true)), select(func_3(Struct_1(vec3<f32>(902f, 891f, -1092f), u_input.d), Struct_1(global1.a, vec2<i32>(global0.a.c.x, global0.a.c.x)), Struct_3(Struct_2(vec2<f32>(-1778f, 473f), global0.a.b, vec4<i32>(global0.a.c.x, u_input.d.x, 2147483647i, -6522i)), vec2<bool>(false, global2.x))), vec4<bool>(false, true, arg_0.x, arg_2), !vec4<bool>(arg_2, arg_2, arg_0.x, false))), true);
    var var_0 = firstTrailingBit(~vec2<i32>(-firstTrailingBit(3636i), ~reverseBits(-2147483647i)));
    global3 = array<Struct_2, 21>();
    global0 = Struct_3(global3[_wgslsmith_index_u32(abs(0u | _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, global4[_wgslsmith_index_u32(4294967295u, 8u)], 9890u, 4294967295u), vec4<u32>(u_input.c, global4[_wgslsmith_index_u32(4294967295u, 8u)], 26711u, arg_1.x)), 61737u, ~u_input.c)), 21u)], vec2<bool>(false, true));
    let var_1 = _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(27008u, 8u)], u_input.a.x);
    return Struct_4(-93097i | abs(select(-5863i, u_input.d.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec4<bool>(!(-801f < global0.a.a.x), !(!arg_2), (_wgslsmith_f_op_f32(global0.a.a.x * global0.a.b) == global1.a.x) | false, !arg_2));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_clamp_vec2_i32(-(u_input.d & abs(~vec2<i32>(global0.a.c.x, 1i))), select(global0.a.c.wz & ~u_input.d, ~vec2<i32>(~5379i, -global0.a.c.x), true), ~global1.b);
    var var_1 = global3[_wgslsmith_index_u32(countOneBits(select(~(~firstTrailingBit(49401u)), _wgslsmith_div_u32(u_input.c, u_input.a.x), !((global2.x | false) & global0.b.x))), 21u)];
    global3 = array<Struct_2, 21>();
    global2 = vec4<bool>(true, any(global2.xzx), true, false);
    let var_2 = global2.wyw;
    return ~37555u;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.xz, u_input.a.zz | select(~u_input.b.xy, vec2<u32>(0u, u_input.b.x) ^ u_input.b.yx, select(global0.b, global0.b, global2.x))), vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(37533u, 8u)], 4294967295u), u_input.a.x), func_4(abs(global4[_wgslsmith_index_u32(0u, 8u)]) >> (abs(1u) % 32u), func_2(global2.wxw, vec2<u32>(u_input.b.x, 0u), !global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * _wgslsmith_f_op_f32(max(515f, -195f))))));
    global2 = func_2(global2.zww, vec2<u32>(~var_0.x, u_input.b.x), true).c;
    var var_1 = func_2(vec3<bool>(arg_2, any(vec3<bool>(arg_2, global0.b.x, arg_2)), var_0.x <= ~func_4(0u, Struct_4(arg_3.x, -1081f, vec4<bool>(true, true, global2.x, arg_2)), global0.a.b)), ~(~(~var_0)), false);
    let var_2 = Struct_4(u_input.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.b)) + -773f), var_1.c);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(1000f * global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -601f)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(arg_1.a.xz, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, -1000f) - global0.a.a), global2.x))))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_3, vec2<f32>(global0.a.a.x, var_3.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-585f, -1217f), global1.a.yy, vec2<bool>(false, arg_2))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, var_1.b) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-345f, 650f))))), _wgslsmith_f_op_f32(-func_2(func_2(!vec3<bool>(global0.b.x, true, false), ~u_input.b.xz, func_3(Struct_1(global1.a, arg_0.zy), Struct_1(vec3<f32>(arg_1.a.x, 1000f, 516f), arg_3), Struct_3(Struct_2(arg_1.a.yz, global1.a.x, vec4<i32>(-2147483647i, 1375i, -62207i, -1i)), global2.yy)).x).c.zxy, ~max(u_input.a.zz, vec2<u32>(10553u, global4[_wgslsmith_index_u32(1u, 8u)])), !global2.x).b), reverseBits(select(vec4<i32>(-2147483647i, _wgslsmith_div_i32(13684i, u_input.d.x), -55680i, i32(-1i) * -1i), arg_0, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(func_1(vec4<i32>(~1i, (i32(-1i) * -2147483647i) & max(u_input.d.x, 2147483647i), global1.b.x, global0.a.c.x), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(775f, global0.a.a.x, global0.a.a.x), global1.a), -max(global0.a.c.zx, u_input.d)), !global0.b.x, ~abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.d.x), vec2<i32>(global0.a.c.x, global0.a.c.x), vec2<i32>(66115i, -38459i)))), !func_3(Struct_1(_wgslsmith_div_vec3_f32(global1.a, global1.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), u_input.d, global1.b)), Struct_1(vec3<f32>(global0.a.b, 1907f, global1.a.x), vec2<i32>(-3884i, u_input.d.x)), Struct_3(global3[_wgslsmith_index_u32(u_input.b.x, 21u)], vec2<bool>(true, true))).xx);
    global4 = array<u32, 8>();
    var var_0 = 16023u;
    var var_1 = ~_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b.zy), vec2<u32>(abs(0u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(13356u, 0u, 4294967295u), 1u)));
    var var_2 = func_2(!vec3<bool>(select(true, true, global2.x), global0.b.x, func_2(vec3<bool>(global2.x, false, true), vec2<u32>(global4[_wgslsmith_index_u32(u_input.c, 8u)], 51666u), true).c.x || true), vec2<u32>(~abs(global4[_wgslsmith_index_u32(52927u, 8u)]), ~min(u_input.a.x, 120202u)) << (_wgslsmith_clamp_vec2_u32((vec2<u32>(global4[_wgslsmith_index_u32(1u, 8u)], 37067u) << (u_input.a.zz % vec2<u32>(32u))) >> (_wgslsmith_sub_vec2_u32(u_input.a.ww, u_input.a.xw) % vec2<u32>(32u)), u_input.b.yx, vec2<u32>(abs(u_input.a.x), ~global4[_wgslsmith_index_u32(4294967295u, 8u)])) % vec2<u32>(32u)), all(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-481f, 791f, global0.a.a.x))), ~vec2<i32>(u_input.d.x, 11179i)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, -956f, -122f)), _wgslsmith_mult_vec2_i32(global1.b, vec2<i32>(21216i, 81358i))), Struct_3(Struct_2(global0.a.a, global1.a.x, vec4<i32>(1i, -44151i, global1.b.x, -1i)), global0.b)).yzx)).c.x;
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global1.a * global1.a), global1.a, true)), global1.a))), (-(u_input.d << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))) | _wgslsmith_add_vec2_i32(func_1(vec4<i32>(-21702i, global1.b.x, global1.b.x, global1.b.x), Struct_1(global1.a, vec2<i32>(u_input.d.x, u_input.d.x)), global0.b.x, global1.b).c.yz, global1.b)) << (vec2<u32>(5560u, u_input.c) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(418f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global0.a.b)), _wgslsmith_f_op_f32(floor(-333f)), global2.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-534f))), 730f, global0.a.b, 1209f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.b, global0.a.a.x, 1735f, global0.a.b), vec4<f32>(691f, 1560f, 1254f, global0.a.b), vec4<bool>(global2.x, true, global0.b.x, global0.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global1.a.x, 2173f, global1.a.x)))))), ~(~(~u_input.b.xx)));
}

