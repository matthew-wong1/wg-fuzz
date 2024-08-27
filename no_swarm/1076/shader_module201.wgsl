struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-560f, -740f);

var<private> global1: array<vec4<u32>, 3>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = arg_0.a.b;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1191f, global0.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1120f, global0.x) + vec2<f32>(-890f, 1022f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, global0.x)))))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -104f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(605f, global0.x), vec2<f32>(global0.x, 718f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1658f, -1508f) + vec2<f32>(global0.x, global0.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) + vec2<f32>(-832f, global0.x))))));
    let var_1 = arg_0.a.b.x;
    var_0 = ~min(-_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0.a.b, arg_0.b.c), -vec2<i32>(u_input.b, var_0.x)), arg_0.b.c);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(step(435f, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    return Struct_2(35022u, countOneBits(arg_0.b.c), !select(vec3<bool>(false | arg_0.a.c.x, arg_0.a.c.x, !arg_1), arg_0.a.c, !arg_0.a.c), vec3<u32>(~(~(~arg_2.x)), arg_2.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_2.x, 78530u), 21731u), arg_0.b.a.x)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<f32>) -> Struct_4 {
    var var_0 = vec3<f32>(arg_2.x, _wgslsmith_div_f32(-553f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.x, global0.x), -138f)))), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-642f * _wgslsmith_div_f32(-732f, _wgslsmith_f_op_f32(f32(-1f) * -1109f)))));
    var var_1 = Struct_3(Struct_1(select(vec2<u32>(_wgslsmith_div_u32(45224u, arg_0.d.x), 1u), arg_0.d.xy, vec2<bool>(true, all(arg_0.c.xy))), arg_0.c, vec2<i32>(_wgslsmith_sub_i32(arg_1.x, 52271i), -47458i)), Struct_1(vec2<u32>(1u, arg_0.d.x), vec3<bool>(true, true, true), arg_1.yy), arg_0, max(~abs(global1[_wgslsmith_index_u32(~arg_0.d.x, 3u)]), ~vec4<u32>(countOneBits(arg_0.d.x), arg_0.d.x, ~arg_0.a, _wgslsmith_add_u32(16162u, arg_0.a))), Struct_1(arg_0.d.yy, vec3<bool>(true, arg_0.c.x, !all(vec4<bool>(true, false, false, false))), arg_1.xw));
    let var_2 = func_2(Struct_4(func_2(Struct_4(arg_0, var_1.a), var_1.b.b.x, ~vec4<u32>(1u, var_1.a.a.x, arg_0.d.x, arg_0.a)), var_1.b), true, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.d.x, arg_0.d.x, _wgslsmith_sub_u32((51592u >> (1u % 32u)) ^ arg_0.a, arg_0.a)), 3u)]);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, global0.x, all(var_2.c.xx))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(151f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-837f))))));
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -969f)))));
    return Struct_4(Struct_2(max(var_2.d.x, ~arg_0.a), ~abs(vec2<i32>(var_2.b.x, 0i)), !(!arg_0.c), ~_wgslsmith_div_vec3_u32(select(var_1.c.d, var_1.d.yxy, arg_0.c.x), arg_0.d)), var_1.e);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_4) -> u32 {
    var var_0 = _wgslsmith_sub_vec3_i32(-(vec3<i32>(_wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.a), select(7562i, 1i, arg_0.x), u_input.c) | -(~vec3<i32>(-1i, u_input.c, 12555i))), vec3<i32>(arg_1.c.x, 50270i, 11250i));
    var var_1 = func_3(Struct_2(~17950u, reverseBits(func_2(func_3(arg_2.a, vec4<i32>(arg_2.b.c.x, var_0.x, -62796i, 30793i), vec3<f32>(global0.x, 1809f, global0.x)), arg_1.b.x, global1[_wgslsmith_index_u32(0u, 3u)] & global1[_wgslsmith_index_u32(23138u, 3u)]).b), select(vec3<bool>(any(arg_1.b), true, true), !vec3<bool>(false, arg_1.b.x, false), !func_3(arg_2.a, vec4<i32>(u_input.b, arg_1.c.x, u_input.a, 5230i), vec3<f32>(global0.x, global0.x, -580f)).b.b), ~vec3<u32>(~0u, arg_2.b.a.x, 6218u)), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, -2147483647i, arg_1.c.x, var_0.x) & vec4<i32>(-1i, u_input.c, -67738i, var_0.x), min(vec4<i32>(arg_2.b.c.x, -1i, 1i, var_0.x), vec4<i32>(var_0.x, -2147483647i, -8502i, arg_1.c.x)), vec4<i32>(-2147483647i, -34159i, arg_1.c.x, u_input.c)), ~vec4<i32>(-45138i, 0i, arg_1.c.x, var_0.x) >> (global1[_wgslsmith_index_u32(~arg_1.a.x, 3u)] % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(-14133i, var_0.x, u_input.a, var_0.x) & vec4<i32>(u_input.c, 34018i, 48027i, -1i), -vec4<i32>(-17720i, var_0.x, 21087i, arg_1.c.x))) << (global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(~25522u, arg_2.a.d.x), arg_2.a.d.x), 3u)] % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, -464f, -107f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-214f, global0.x, global0.x)))))).b.c.x;
    var var_2 = Struct_3(Struct_1(arg_1.a | (~arg_1.a ^ ~vec2<u32>(30631u, arg_1.a.x)), vec3<bool>(!(false == arg_1.b.x), false, true), vec2<i32>(_wgslsmith_mult_i32(u_input.c, firstLeadingBit(arg_1.c.x)), func_2(arg_2, any(vec3<bool>(arg_1.b.x, arg_1.b.x, true)), countOneBits(global1[_wgslsmith_index_u32(8894u, 3u)])).b.x)), Struct_1(vec2<u32>(arg_1.a.x ^ 1u, 35402u), !arg_2.a.c, -_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.c.x, 0i), var_0.yz)), func_3(func_3(func_2(Struct_4(Struct_2(arg_1.a.x, vec2<i32>(-68152i, 313i), arg_0.wzx, vec3<u32>(16444u, 4294967295u, arg_2.a.a)), Struct_1(vec2<u32>(26432u, 4294967295u), vec3<bool>(false, false, arg_2.b.b.x), arg_2.b.c)), func_3(Struct_2(1u, arg_2.a.b, vec3<bool>(false, arg_0.x, arg_1.b.x), arg_2.a.d), vec4<i32>(2147483647i, arg_1.c.x, 1i, arg_1.c.x), vec3<f32>(global0.x, global0.x, -1000f)).b.b.x, ~global1[_wgslsmith_index_u32(9556u, 3u)]), vec4<i32>(arg_1.c.x, ~2147483647i, i32(-1i) * -2147483647i, ~(-14944i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(266f, -114f, global0.x) * vec3<f32>(global0.x, -363f, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 561f, -1433f)))).a, vec4<i32>(arg_2.a.b.x, arg_1.c.x, ~(-4530i), _wgslsmith_add_i32(select(14723i, arg_2.b.c.x, false), _wgslsmith_add_i32(var_0.x, 0i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), global0.x))).a, global1[_wgslsmith_index_u32(4294967295u, 3u)], arg_1);
    var var_3 = min(~(~vec4<i32>(-15964i, _wgslsmith_add_i32(-2147483647i, var_0.x), _wgslsmith_sub_i32(arg_1.c.x, 22960i), ~arg_1.c.x)), vec4<i32>(-1i) * -vec4<i32>(~(-86777i), -1i, _wgslsmith_add_i32(u_input.c, arg_1.c.x), max(arg_1.c.x, var_2.e.c.x)));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-373f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1300f * _wgslsmith_f_op_f32(-2048f - _wgslsmith_f_op_f32(max(1402f, global0.x))))));
    return _wgslsmith_sub_u32(1u, reverseBits(_wgslsmith_div_u32(~31529u, ~arg_2.a.a) >> (~(~38818u) % 32u)));
}

fn func_1() -> Struct_4 {
    global1 = array<vec4<u32>, 3>();
    let var_0 = Struct_2(_wgslsmith_clamp_u32(abs(~max(15424u, 1u)), 31936u, func_4(vec4<bool>(true, all(vec4<bool>(true, true, false, true)), true, true), Struct_1(vec2<u32>(78766u, 14838u) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)), vec3<bool>(true, true, true), vec2<i32>(u_input.a, u_input.c)), func_3(func_2(Struct_4(Struct_2(1557u, vec2<i32>(u_input.a, u_input.b), vec3<bool>(true, true, false), vec3<u32>(1u, 1u, 7416u)), Struct_1(vec2<u32>(0u, 0u), vec3<bool>(true, false, true), vec2<i32>(-13855i, 873i))), false, global1[_wgslsmith_index_u32(4294967295u, 3u)]), vec4<i32>(1i, 1i, 1i, 1i), vec3<f32>(global0.x, global0.x, 691f)))), func_3(func_3(func_3(func_3(Struct_2(33581u, vec2<i32>(-25029i, 17919i), vec3<bool>(true, true, false), vec3<u32>(94906u, 27904u, 1u)), vec4<i32>(0i, u_input.c, u_input.a, u_input.b), vec3<f32>(257f, 635f, global0.x)).a, -vec4<i32>(23104i, 1i, u_input.c, u_input.a), vec3<f32>(516f, global0.x, global0.x)).a, -abs(vec4<i32>(26371i, u_input.a, 41099i, u_input.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-243f, global0.x, 470f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-505f, global0.x, global0.x))))).a, ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -302i, 0i, -20251i), vec4<i32>(u_input.c, u_input.c, u_input.b, u_input.a)), u_input.a, u_input.a, u_input.c), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-1056f, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1044f, -1224f)))))).b.c, select(vec3<bool>(false, false, u_input.a > _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, -6135i, 37787i), vec4<i32>(-54926i, u_input.a, 2154i, -1i))), vec3<bool>(!all(vec2<bool>(true, true)), true, false), !vec3<bool>(true, false, any(vec2<bool>(false, true)))), _wgslsmith_add_vec3_u32(max(~vec3<u32>(11817u, 8266u, 1u) << (func_3(Struct_2(50078u, vec2<i32>(u_input.a, u_input.b), vec3<bool>(true, true, true), vec3<u32>(1u, 23861u, 21833u)), vec4<i32>(0i, 2147483647i, 2147483647i, 73161i), vec3<f32>(127f, 2144f, -951f)).a.d % vec3<u32>(32u)), select(_wgslsmith_add_vec3_u32(vec3<u32>(19504u, 1451u, 0u), vec3<u32>(0u, 1u, 4294967295u)), reverseBits(vec3<u32>(0u, 8591u, 4294967295u)), false)), max(max(vec3<u32>(0u, 32791u, 0u), min(vec3<u32>(4294967295u, 25263u, 0u), vec3<u32>(26011u, 1u, 3286u))), vec3<u32>(1u, 507u, 1u))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(38290u, var_0.d.x), countOneBits(var_0.d.yx >> (var_0.d.xx % vec2<u32>(32u)))), !func_2(Struct_4(var_0, Struct_1(vec2<u32>(98657u, var_0.a), var_0.c, vec2<i32>(u_input.b, 1i))), any(vec4<bool>(true, var_0.c.x, true, false)), global1[_wgslsmith_index_u32(2728u, 3u)] ^ global1[_wgslsmith_index_u32(var_0.a, 3u)]).c, countOneBits(var_0.b)), func_3(func_3(func_2(Struct_4(var_0, Struct_1(vec2<u32>(0u, 10036u), var_0.c, vec2<i32>(2147483647i, u_input.c))), global0.x >= 916f, _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0.d.x, var_0.d.x, 25959u), vec4<u32>(2300u, 1906u, var_0.a, var_0.a))), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.c, var_0.b.x, u_input.a), vec4<i32>(var_0.b.x, u_input.c, u_input.b, var_0.b.x)), ~vec4<i32>(var_0.b.x, var_0.b.x, -1i, u_input.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1606f, -602f) - vec3<f32>(-122f, 278f, 125f)) + vec3<f32>(1020f, global0.x, global0.x))).a, (vec4<i32>(u_input.c, 2147483647i, 1i, 22857i) & -vec4<i32>(2147483647i, -40929i, 2147483647i, u_input.c)) << (global1[_wgslsmith_index_u32(var_0.d.x, 3u)] % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(global0.x, global0.x, -1000f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, global0.x, global0.x))))))).b, Struct_2(24074u, var_0.b, var_0.c, max(~select(vec3<u32>(var_0.d.x, 0u, var_0.d.x), vec3<u32>(var_0.a, 1u, 38618u), var_0.c), _wgslsmith_sub_vec3_u32(var_0.d, var_0.d))), ~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(func_3(var_0, vec4<i32>(var_0.b.x, u_input.b, -1i, var_0.b.x), vec3<f32>(global0.x, global0.x, -446f)).a.d.xx, var_0.d.yz), var_0.d.x << (min(var_0.a, 97057u) % 32u)), 3u)], func_3(Struct_2(var_0.d.x, -(~var_0.b), select(var_0.c, !var_0.c, false), _wgslsmith_div_vec3_u32(var_0.d, ~var_0.d)), vec4<i32>(max(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, u_input.c), vec2<i32>(-15092i, u_input.c)), _wgslsmith_mod_i32(-1i, -2147483647i)), ~(~(-1i)), var_0.b.x, 39014i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-815f, global0.x, -271f), vec3<f32>(global0.x, -982f, 612f), vec3<bool>(var_0.c.x, var_0.c.x, true))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-577f, 2234f, 110f), vec3<f32>(486f, global0.x, 755f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1796f, global0.x, global0.x) - vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-256f, global0.x, global0.x)))), var_0.c))).b);
    var var_2 = var_0.d;
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1189f, global0.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1558f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -550f))))) - vec2<f32>(global0.x, global0.x))));
    return Struct_4(var_0, var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<vec4<u32>, 3>();
    var var_1 = var_0;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-435f, global0.x), vec2<f32>(1389f, global0.x), var_1.a.c.x)))) * vec2<f32>(_wgslsmith_f_op_f32(step(-375f, _wgslsmith_f_op_f32(1722f - -1403f))), global0.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-392f, -831f) * vec2<f32>(105f, global0.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(538f, global0.x)) - vec2<f32>(1956f, 375f))) * vec2<f32>(-1104f, -2147f)));
    var var_2 = Struct_3(Struct_1(select(_wgslsmith_sub_vec2_u32(var_1.b.a, ~var_0.a.d.yx), var_1.b.a, false), !(!vec3<bool>(var_1.a.c.x, true, false)), var_1.a.b), func_1().b, var_0.a, ~(~vec4<u32>(~1u, var_1.a.d.x << (var_1.b.a.x % 32u), 31269u, 1u)), func_3(var_0.a, _wgslsmith_add_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(38409i, 11334i, u_input.a, var_1.b.c.x), vec4<i32>(-33442i, var_0.a.b.x, 0i, 2147483647i), vec4<i32>(30979i, var_1.b.c.x, var_1.b.c.x, -1930i)), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -73746i, 1i, -2147483647i), vec4<i32>(var_0.b.c.x, 40326i, var_0.a.b.x, -10453i)))), vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-207f, -1336f))))).b);
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32((var_0.a.a & 0u) | ~_wgslsmith_add_u32(~var_2.b.a.x, 13212u), 3u)], ((~var_1.a.d ^ _wgslsmith_add_vec3_u32(vec3<u32>(var_1.b.a.x, var_2.b.a.x, var_0.b.a.x), var_0.a.d)) ^ _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(var_1.a.d, var_0.a.d), vec3<u32>(0u, 0u, 11962u))) ^ vec3<u32>(func_1().a.a, abs(var_1.b.a.x), ~abs(var_0.b.a.x)), vec2<f32>(global0.x, global0.x), 67357i, ~var_0.a.d);
}

