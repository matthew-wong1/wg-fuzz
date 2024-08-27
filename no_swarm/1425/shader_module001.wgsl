struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(-345f, -978f, 1019f), vec3<f32>(619f, 1016f, 806f), vec3<f32>(241f, 570f, -151f), vec3<f32>(-683f, -1742f, 1000f));

var<private> global1: array<u32, 18>;

var<private> global2: Struct_4;

var<private> global3: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(129f, -2695f, -1000f, 401f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 210f, _wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_f_op_f32(ceil(global2.c.a.d)))))));
    let var_1 = vec2<bool>(false, global2.b.a.x);
    var var_2 = Struct_2(Struct_1(global2.a.a, max(~firstTrailingBit(global2.a.b), vec3<i32>(-1i) * -vec3<i32>(-1i, arg_1, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(3351f, global2.b.c.x, -134f, 877f))), _wgslsmith_f_op_f32(f32(-1f) * -2174f)), 734i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-375f, 624f, var_0.x, 540f)))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(global2.a.c.wwy * var_0.www);
    var var_4 = select(var_2.b, 1i, false);
    return any(var_2.a.a);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> Struct_3 {
    global2 = Struct_4(arg_1.a, Struct_1(!vec4<bool>(any(arg_1.a.a.zx), arg_0.x <= 1688f, func_3(2083f, u_input.a.x, arg_1.a.a.x), true), u_input.c, _wgslsmith_f_op_vec4_f32(-arg_0), arg_1.a.c.x), Struct_2(Struct_1(vec4<bool>(all(vec4<bool>(false, arg_1.a.a.x, global2.a.a.x, true)), true, arg_1.a.a.x, all(global2.c.a.a.xwz)), u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.c.x, -282f, -142f, arg_0.x)))), -460f), ~1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-281f, global2.a.c.x, arg_0.x, -490f)) * vec4<f32>(_wgslsmith_f_op_f32(1000f - global2.a.c.x), _wgslsmith_div_f32(arg_0.x, arg_1.a.c.x), 1786f, _wgslsmith_div_f32(arg_1.a.d, 876f)))));
    let var_0 = vec3<u32>(select(60100u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(67875u, 47977u), max(vec2<u32>(9157u, arg_3), vec2<u32>(global1[_wgslsmith_index_u32(0u, 18u)], arg_3)), abs(vec2<u32>(4294967295u, arg_3))), vec2<u32>(arg_3, ~global1[_wgslsmith_index_u32(71702u, 18u)])), true), ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, 0u), firstTrailingBit(arg_3), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3, 18u)], 18u)] >> (global1[_wgslsmith_index_u32(80968u, 18u)] % 32u)) & 84739u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_3, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3, 18u)], 18u)], arg_3, global1[_wgslsmith_index_u32(58243u, 18u)])), select(vec4<u32>(4294967295u, arg_3, 1u, arg_3), reverseBits(vec4<u32>(13710u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 11021u, arg_3)), global2.a.a.x)), firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_3, global1[_wgslsmith_index_u32(arg_3, 18u)]), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], ~29814u))));
    var var_1 = vec4<f32>(1f, -2188f, 1693f, global2.b.c.x);
    var var_2 = ~vec4<i32>(2147483647i, _wgslsmith_mod_i32(-_wgslsmith_add_i32(arg_1.a.b.x, arg_1.a.b.x), select(1i, global2.a.b.x ^ arg_2, !arg_1.a.a.x)), 59937i, ~(-9184i));
    global3 = array<vec4<f32>, 1>();
    return Struct_3(Struct_1(global2.c.a.a, _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(arg_1.a.b.x, 0i, -6284i) & vec3<i32>(u_input.a.x, global2.b.b.x, var_2.x)), _wgslsmith_mod_vec3_i32(~vec3<i32>(-7140i, 19154i, arg_1.b), vec3<i32>(-31622i, -48574i, u_input.c.x)), _wgslsmith_mult_vec3_i32(-arg_1.a.b, -vec3<i32>(global2.a.b.x, 2147483647i, 0i))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, 229f, 536f, -1109f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x - 152f))), _wgslsmith_f_op_f32(f32(-1f) * -134f))), _wgslsmith_f_op_f32(f32(-1f) * -1494f), 1018i, arg_1.a);
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: vec2<i32>, arg_3: Struct_4) -> Struct_4 {
    let var_0 = ~vec3<i32>(-37298i, -_wgslsmith_div_i32(-arg_2.x, -arg_2.x), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-3240i, u_input.c.x), i32(-1i) * -2147483647i) << (arg_1 % 32u));
    var var_1 = Struct_5(func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(step(-2110f, arg_0.x)), arg_3.a.d, -1592f), vec4<f32>(_wgslsmith_f_op_f32(step(global2.b.d, arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1292f - 1004f), _wgslsmith_div_f32(arg_3.c.a.c.x, 1529f)))), global2.c, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~global2.a.b, vec3<i32>(-8008i, arg_2.x, -2147483647i) << (vec3<u32>(24951u, global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(23966u, 18u)]) % vec3<u32>(32u))), _wgslsmith_mult_i32(-11281i, arg_3.a.b.x | global2.a.b.x)), 73973u));
    var var_2 = firstTrailingBit(global1[_wgslsmith_index_u32(arg_1, 18u)]);
    return Struct_4(Struct_1(!global2.a.a, countOneBits(_wgslsmith_sub_vec3_i32(~var_1.a.a.b, global2.c.a.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(812f, 1000f, -667f, 1049f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a.d.c.x, arg_0.x))))), func_2(global3[_wgslsmith_index_u32(~arg_1, 1u)], arg_3.c, global2.a.b.x, ~(~max(arg_1, arg_1))).d, Struct_2(Struct_1(!(!vec4<bool>(true, var_1.a.d.a.x, true, false)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(arg_3.b.b.x, -1i, 1i), vec3<i32>(2147483647i, arg_3.c.a.b.x, 22817i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b, global2.c.c.x, -2608f, var_1.a.d.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1473f) * _wgslsmith_f_op_f32(-arg_0.x))), -firstTrailingBit(_wgslsmith_mod_i32(var_1.a.c, u_input.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2121f, arg_0.x, -1020f, 1000f))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(var_1.a.a.c, arg_3.c.a.c, false)))))));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_3) -> vec3<bool> {
    global3 = array<vec4<f32>, 1>();
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.c.x + _wgslsmith_f_op_f32(f32(-1f) * -1614f))) - func_1(func_2(_wgslsmith_f_op_vec4_f32(arg_0.a.c * vec4<f32>(arg_2.d.c.x, arg_0.b.d, -318f, 1000f)), func_1(vec3<f32>(global2.b.c.x, -359f, -1776f), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], vec2<i32>(1i, 26687i), Struct_4(Struct_1(vec4<bool>(global2.c.a.a.x, arg_2.a.a.x, arg_0.a.a.x, global2.b.a.x), arg_0.a.b, global3[_wgslsmith_index_u32(0u, 1u)], arg_0.c.a.d), Struct_1(vec4<bool>(arg_2.a.a.x, true, global2.a.a.x, false), global2.a.b, arg_0.c.c, arg_0.b.c.x), Struct_2(Struct_1(arg_2.d.a, vec3<i32>(38112i, global2.a.b.x, global2.a.b.x), global3[_wgslsmith_index_u32(var_0, 1u)], 1335f), -44864i, arg_0.a.c))).c, ~arg_2.d.b.x, ~arg_1).d.c.xzy, 1u, firstLeadingBit(min(vec2<i32>(arg_0.c.a.b.x, arg_0.c.a.b.x), global2.c.a.b.yz)), func_1(vec3<f32>(global2.c.c.x, arg_2.b, arg_0.a.d), 47797u, u_input.c.zz, arg_0)).b.c.x));
    let var_2 = func_1(vec3<f32>(arg_2.d.d, _wgslsmith_f_op_f32(global2.a.c.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_2.b)), 295f))), _wgslsmith_f_op_f32(arg_0.b.d - arg_2.d.d)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, reverseBits(arg_1), _wgslsmith_sub_u32(14081u, var_0)), _wgslsmith_dot_vec2_u32(vec2<u32>(27306u, 0u) << (vec2<u32>(arg_1, 43319u) % vec2<u32>(32u)), vec2<u32>(global1[_wgslsmith_index_u32(0u, 18u)], 1u)), arg_1 ^ 4294967295u) << (~(~arg_1) % 32u), -min(min(vec2<i32>(-1i, arg_0.b.b.x) ^ arg_0.b.b.xz, vec2<i32>(arg_0.b.b.x, 0i)), global2.a.b.zy), arg_0).c;
    let var_3 = vec3<i32>(-2147483647i, arg_2.a.b.x, _wgslsmith_sub_i32(2147483647i, ~arg_0.a.b.x));
    return func_1(vec3<f32>(_wgslsmith_f_op_f32(min(-1131f, arg_2.d.c.x)), arg_2.a.c.x, var_2.a.d), firstTrailingBit(~75365u) << (~(~(~arg_1)) % 32u), arg_2.a.b.xz | vec2<i32>(max(5899i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c.x), var_3.zz)), select(-41556i, -71729i, !global2.a.a.x)), Struct_4(func_2(arg_2.a.c, global2.c, -_wgslsmith_sub_i32(-2147483647i, u_input.c.x), 0u).a, func_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(1u, 4u)], vec3<f32>(-1251f, -1000f, var_2.c.x), vec3<bool>(var_2.a.a.x, global2.b.a.x, arg_2.d.a.x))))), var_0, arg_0.a.b.xz, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1941f, -875f, 357f)), var_0, vec2<i32>(u_input.b, 1i), func_1(global0[_wgslsmith_index_u32(var_0, 4u)], arg_1, vec2<i32>(var_2.a.b.x, arg_2.c), Struct_4(global2.c.a, Struct_1(vec4<bool>(global2.b.a.x, false, var_2.a.a.x, var_2.a.a.x), vec3<i32>(var_2.a.b.x, u_input.c.x, 0i), var_2.a.c, arg_2.a.c.x), Struct_2(Struct_1(var_2.a.a, vec3<i32>(arg_0.a.b.x, -1i, global2.c.b), vec4<f32>(1546f, arg_0.b.c.x, arg_2.a.c.x, global2.b.c.x), 698f), global2.b.b.x, vec4<f32>(871f, arg_0.c.c.x, 1159f, arg_0.a.c.x)))))).c.a, Struct_2(func_1(_wgslsmith_f_op_vec3_f32(var_2.c.zzx * global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 4u)]), countOneBits(var_0), vec2<i32>(var_2.a.b.x, 1i), Struct_4(Struct_1(vec4<bool>(true, true, true, arg_2.d.a.x), global2.c.a.b, var_2.c, -584f), var_2.a, var_2)).b, -1i, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(890f, -741f, arg_2.b, arg_2.b), arg_2.a.c))))).b.a.xwx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -countOneBits(vec4<i32>(abs(-u_input.c.x), select(~u_input.c.x, u_input.c.x ^ global2.b.b.x, global2.c.a.a.x), max(~global2.a.b.x, u_input.a.x), _wgslsmith_mult_i32(-51589i, 1i)));
    global0 = array<vec3<f32>, 4>();
    global0 = array<vec3<f32>, 4>();
    var var_1 = any(select(!vec3<bool>(!global2.c.a.a.x, any(vec4<bool>(true, global2.a.a.x, false, true)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18u)] == 67986u), select(func_4(func_1(vec3<f32>(global2.a.c.x, global2.b.d, -2339f), 0u, var_0.yw, Struct_4(Struct_1(vec4<bool>(global2.a.a.x, global2.c.a.a.x, true, false), vec3<i32>(0i, -1i, 0i), global2.c.a.c, 276f), Struct_1(vec4<bool>(true, false, false, global2.b.a.x), u_input.c, vec4<f32>(global2.a.d, -708f, global2.b.c.x, global2.c.a.d), global2.b.c.x), Struct_2(Struct_1(global2.c.a.a, vec3<i32>(-1i, -1666i, -1i), vec4<f32>(global2.b.c.x, 1839f, global2.c.a.c.x, global2.a.c.x), global2.c.c.x), global2.a.b.x, vec4<f32>(global2.b.c.x, 1000f, global2.b.d, global2.b.c.x)))), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31568u, 18u)], 18u)], 18u)], Struct_3(global2.c.a, -911f, var_0.x, Struct_1(vec4<bool>(true, global2.c.a.a.x, global2.c.a.a.x, true), var_0.yxy, global2.a.c, global2.a.d))), select(global2.b.a.xxx, vec3<bool>(true, true, true), true), select(all(global2.a.a.zxw), -368f > global2.a.d, func_4(Struct_4(global2.b, Struct_1(global2.a.a, u_input.c, vec4<f32>(-1930f, global2.c.c.x, global2.c.c.x, 1000f), 412f), Struct_2(Struct_1(vec4<bool>(global2.a.a.x, global2.b.a.x, false, false), vec3<i32>(-1i, 1i, 19159i), global3[_wgslsmith_index_u32(4294967295u, 1u)], 699f), var_0.x, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15049u, 18u)], 18u)], 18u)], 1u)])), global1[_wgslsmith_index_u32(35029u, 18u)], Struct_3(global2.c.a, global2.b.c.x, -2147483647i, global2.c.a)).x)), vec3<bool>(global2.a.a.x, ~global2.b.b.x > _wgslsmith_mult_i32(var_0.x, global2.a.b.x), any(vec4<bool>(global2.c.a.a.x, global2.a.a.x, false, global2.a.a.x)))));
    let var_2 = 0i;
    var_1 = !global2.a.a.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.c.x, _wgslsmith_f_op_f32(-global2.c.a.d)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.c.x, global2.c.c.x) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -609f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a.d))))));
    let var_4 = Struct_1(vec4<bool>(false, false, true, any(func_2(vec4<f32>(global2.b.d, global2.b.c.x, 1715f, var_3.x), Struct_2(Struct_1(global2.b.a, vec3<i32>(-7348i, u_input.c.x, var_0.x), global2.c.c, global2.a.d), 11528i, vec4<f32>(global2.c.c.x, 369f, global2.b.d, 1065f)), 50850i, 4294967295u).a.a)), _wgslsmith_sub_vec3_i32(var_0.xxw, reverseBits(min(var_0.zxy, global2.b.b) | global2.c.a.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-global2.a.d), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(var_3.x * 2321f), 1361f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global2.b.c))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, global2.c.a.c.x, global2.c.c.x, 1133f) + global3[_wgslsmith_index_u32(25050u, 1u)])))), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(256f))))));
    global2 = func_1(vec3<f32>(1311f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.x)) + global2.b.c.x), _wgslsmith_f_op_f32(-global2.a.c.x)), 1u, select(var_0.wx, vec2<i32>(var_4.b.x, var_4.b.x), true) >> (select(max(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8907u, 18u)], 18u)], 0u), vec2<u32>(21020u, global1[_wgslsmith_index_u32(53092u, 18u)])), vec2<u32>(_wgslsmith_mod_u32(41248u, 42973u), ~41205u), !(global2.a.a.x == global2.a.a.x)) % vec2<u32>(32u)), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.x, 813f, 1024f))) + vec3<f32>(-1504f, global2.a.c.x, -645f)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global2.c.a.c.wyw)))), ~global1[_wgslsmith_index_u32(4294967295u, 18u)], u_input.a, Struct_4(var_4, func_1(var_4.c.wwy, 4294967295u, global2.c.a.b.xx, Struct_4(var_4, Struct_1(var_4.a, var_4.b, vec4<f32>(var_3.x, global2.a.d, var_3.x, -815f), 1445f), global2.c)).c.a, func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, global2.c.a.c.x, -1635f) + var_4.c.zwx), countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)]), vec2<i32>(u_input.a.x, var_0.x), Struct_4(global2.a, var_4, global2.c)).c)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], global1[_wgslsmith_index_u32(0u, 18u)]), select(vec2<u32>(0u, global1[_wgslsmith_index_u32(1u, 18u)]), vec2<u32>(global1[_wgslsmith_index_u32(93092u, 18u)], 4294967295u), global2.b.a.zx)), vec2<u32>(4200u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(59257u, 18u)], 30967u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(64354u, 18u)], 18u)], 18u)], 18u)], 9925u)))), _wgslsmith_clamp_i32(global2.a.b.x, -(~(~11281i)), u_input.c.x), u_input.c, _wgslsmith_div_vec4_i32(abs(select(reverseBits(vec4<i32>(var_0.x, 2147483647i, var_2, var_2)), reverseBits(vec4<i32>(global2.c.b, -11114i, global2.a.b.x, 30147i)), vec4<bool>(var_4.a.x, var_4.a.x, var_4.a.x, global2.a.a.x))), countOneBits(max(select(vec4<i32>(2147483647i, u_input.c.x, var_2, -8861i), vec4<i32>(var_0.x, 1i, 2147483647i, var_0.x), false), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, -1i, u_input.c.x, var_4.b.x), vec4<i32>(1i, 14187i, var_2, var_2), vec4<i32>(5454i, 2147483647i, var_0.x, -11251i))))));
}

