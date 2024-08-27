struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: f32;

var<private> global2: array<i32, 32> = array<i32, 32>(-33693i, 0i, 0i, 5742i, 5767i, -1i, -1i, i32(-2147483648), 0i, i32(-2147483648), -7605i, 1i, 2147483647i, 1i, -1i, 10371i, -1i, -21184i, -13291i, 40709i, -2725i, -31032i, -1i, 0i, 23206i, 5332i, 1i, -1i, 2147483647i, i32(-2147483648), 2562i, -9263i);

var<private> global3: array<vec3<f32>, 20>;

var<private> global4: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: u32) -> vec3<bool> {
    let var_0 = Struct_5(arg_1.xwy, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.a.yx))), vec2<f32>(-1092f, arg_0.a.a.x)), -395f);
    global0 = array<bool, 12>();
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.e) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * -139f) + _wgslsmith_div_f32(1009f, 203f))))));
    global3 = array<vec3<f32>, 20>();
    var var_2 = !(!select(!(!vec2<bool>(arg_0.a.d, global0[_wgslsmith_index_u32(u_input.a, 12u)])), vec2<bool>(any(arg_0.c), true), !select(vec2<bool>(true, false), arg_0.a.b, vec2<bool>(false, global0[_wgslsmith_index_u32(arg_3, 12u)]))));
    return select(vec3<bool>(all(select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(arg_1.x, 12u)]), vec3<bool>(false, true, false), !global0[_wgslsmith_index_u32(14371u, 12u)])), false && var_2.x, all(vec3<bool>(arg_3 != arg_3, any(vec4<bool>(global0[_wgslsmith_index_u32(12656u, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)], var_2.x)), any(arg_0.c)))), !select(!arg_0.c, arg_0.c, -global2[_wgslsmith_index_u32(1u, 32u)] == -2147483647i), false);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_add_i32(27532i, global2[_wgslsmith_index_u32(u_input.a, 32u)] | _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(u_input.a, 32u)], -2147483647i << (u_input.c.x % 32u), _wgslsmith_add_i32(2147483647i >> (u_input.c.x % 32u), global2[_wgslsmith_index_u32(u_input.c.x & 0u, 32u)])));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -139f), _wgslsmith_f_op_f32(f32(-1f) * -428f), 1768f, -452f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-924f, 1626f, -1992f, 789f))))), vec4<bool>(arg_1.x, arg_1.x, any(arg_1.ww), arg_0.x))), !vec2<bool>(global0[_wgslsmith_index_u32(2413u, 12u)], true), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1752f)) - -103f), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(183f * 2663f)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-830f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -533f) * _wgslsmith_f_op_f32(1142f + -498f)))), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-747f + -694f), _wgslsmith_f_op_f32(min(-743f, 2999f)), select(arg_1.x, false, arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1062f, 1032f)))))));
    var var_2 = Struct_5(min(~firstLeadingBit(vec3<u32>(u_input.b, u_input.a, u_input.a)), min(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.c.x, u_input.c.x) ^ vec3<u32>(u_input.b, 0u, 1u), ~vec3<u32>(u_input.a, u_input.a, 4294967295u)), ~(vec3<u32>(0u, u_input.b, u_input.b) | vec3<u32>(4294967295u, u_input.b, 1u)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_1.a.zw + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(var_1.c)), var_1.a.zy, var_1.e != -670f))))), var_1.a.x);
    var var_3 = ~min(vec4<u32>(~var_2.a.x, _wgslsmith_add_u32(var_2.a.x << (35622u % 32u), 0u), 26854u, ~(u_input.b ^ 57001u)), firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(var_2.a.xy, var_2.a.zx), _wgslsmith_mult_u32(1u, u_input.a), 1u, ~var_2.a.x)));
    let var_4 = vec4<f32>(-1338f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(509f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-276f)) * _wgslsmith_f_op_f32(236f * var_2.c)))), -2553f, _wgslsmith_f_op_f32(-var_2.c));
    return false;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<f32>) -> f32 {
    var var_0 = Struct_3(false || global0[_wgslsmith_index_u32(firstLeadingBit(2292u), 12u)]);
    var var_1 = Struct_3(func_4(select(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 12u)], true, var_0.a)), select(vec3<bool>(false, true, var_0.a), !vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 12u)], true), vec3<bool>(var_0.a, true, global0[_wgslsmith_index_u32(u_input.a, 12u)])), func_3(Struct_2(Struct_1(arg_2, vec2<bool>(true, false), arg_2.yz, true, arg_0.x), -44533i, vec3<bool>(true, var_0.a, var_0.a)), vec4<u32>(u_input.b, 54556u, u_input.c.x, 38136u) >> (vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 0u) % vec4<u32>(32u)), ~vec4<i32>(1i, -22549i, global2[_wgslsmith_index_u32(u_input.c.x, 32u)], global2[_wgslsmith_index_u32(u_input.a, 32u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.a, u_input.c.x), vec3<u32>(38658u, 7213u, u_input.c.x)))), !(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], var_0.a, true, true)))));
    var var_2 = vec3<bool>(any(select(select(vec2<bool>(var_0.a, true), select(vec2<bool>(global0[_wgslsmith_index_u32(34702u, 12u)], var_0.a), vec2<bool>(var_1.a, true), var_1.a), true), !(!vec2<bool>(true, global0[_wgslsmith_index_u32(23788u, 12u)])), vec2<bool>(func_3(Struct_2(Struct_1(vec4<f32>(arg_1, 522f, -140f, 634f), vec2<bool>(var_0.a, true), vec2<f32>(arg_1, arg_0.x), var_0.a, 1060f), -36947i, vec3<bool>(false, false, false)), vec4<u32>(u_input.b, u_input.a, u_input.c.x, u_input.a), vec4<i32>(19340i, global2[_wgslsmith_index_u32(u_input.b, 32u)], 0i, 21817i), u_input.c.x).x, true))), global0[_wgslsmith_index_u32(u_input.b, 12u)], false);
    var var_3 = Struct_1(vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(277f))), 186f, _wgslsmith_f_op_f32(exp2(arg_2.x))), var_2.zy, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(873f, 597f), arg_2.xz)), true, -449f);
    var_1 = Struct_3(var_2.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -921f) - var_3.c.x);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: f32) -> vec2<i32> {
    global3 = array<vec3<f32>, 20>();
    let var_0 = 1i;
    global2 = array<i32, 32>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(arg_2, arg_2)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -726f)))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(186f, -151f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1856f, 675f)))), 1f, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, -276f, arg_2, arg_2), vec4<f32>(1051f, arg_2, -1298f, arg_2), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 12u)], false, true, true)))))))), _wgslsmith_f_op_f32(trunc(arg_2)));
    global0 = array<bool, 12>();
    return reverseBits(-_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(15394i, 3109i)), min(vec2<i32>(var_0, global2[_wgslsmith_index_u32(1u, 32u)]), vec2<i32>(-32196i, 0i)), vec2<i32>(-6223i, arg_0)), firstTrailingBit(~vec2<i32>(1i, var_0))));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: vec2<i32>) -> u32 {
    global4 = max(global2[_wgslsmith_index_u32(u_input.c.x, 32u)], _wgslsmith_mod_i32(~20363i, 2147483647i));
    var var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_3.x, arg_0) & vec2<i32>(global2[_wgslsmith_index_u32(25816u, 32u)], arg_3.x), vec2<i32>(65375i, -42232i), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(5117u, u_input.b), 12u)]), -(~vec2<i32>(arg_3.x, 1i))), 1i) ^ arg_3.x;
    let var_1 = vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 12u)], select(all(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 12u)], true, arg_1.b.x), vec3<bool>(arg_1.d, true, false), vec3<bool>(arg_1.b.x, arg_1.b.x, global0[_wgslsmith_index_u32(arg_2, 12u)]))) & !all(vec4<bool>(global0[_wgslsmith_index_u32(80384u, 12u)], arg_1.b.x, true, false)), all(select(!vec3<bool>(arg_1.b.x, true, arg_1.d), select(vec3<bool>(arg_1.d, arg_1.b.x, arg_1.d), vec3<bool>(true, false, arg_1.b.x), false), false)), !arg_1.d), true);
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(arg_1.a, arg_1.a)), _wgslsmith_f_op_vec4_f32(min(arg_1.a, vec4<f32>(arg_1.a.x, 469f, arg_1.a.x, -1037f))), arg_1.d)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(164f, arg_1.e, arg_1.a.x, -2472f))))), vec2<bool>(global0[_wgslsmith_index_u32(~u_input.c.x, 12u)], any(vec2<bool>(true, var_1.x))), vec2<f32>(_wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -493f)), _wgslsmith_f_op_f32(-arg_1.e)), true, _wgslsmith_f_op_f32(max(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1466f)))))), arg_0, var_1);
    let var_3 = Struct_3(arg_1.d);
    return _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, u_input.c.x), vec3<u32>(4294967295u, u_input.a, 19972u)), vec3<u32>(4294967295u, arg_2, arg_2)), ~(~vec3<u32>(u_input.b, u_input.c.x, arg_2))), ~54295u), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec3<i32>(global2[_wgslsmith_index_u32(func_5(global2[_wgslsmith_index_u32(~u_input.c.x, 32u)], Struct_1(vec4<f32>(547f, -256f, 1169f, -1966f), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<f32>(-1655f, -589f), global0[_wgslsmith_index_u32(u_input.c.x, 12u)], 993f), u_input.c.x >> (u_input.c.x % 32u), func_1(-82297i, u_input.b, -701f)), 32u)], 83758i, countOneBits(min(global2[_wgslsmith_index_u32(1u, 32u)], -18711i)))) << ((~vec3<u32>(u_input.a, 0u, ~38909u) & ~(~countOneBits(vec3<u32>(0u, u_input.a, u_input.b)))) % vec3<u32>(32u));
    global4 = global2[_wgslsmith_index_u32(func_5(-2147483647i, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1415f, -1924f, 792f, 1031f), vec4<f32>(-580f, -1651f, -850f, -735f)))))), select(!vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 12u)]), vec2<bool>(global0[_wgslsmith_index_u32(29266u, 12u)], true), all(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-839f, 627f)))), !(!func_4(vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 12u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(51609u, 12u)], true))), _wgslsmith_f_op_f32(max(1641f, 1000f))), _wgslsmith_dot_vec4_u32(~vec4<u32>(~u_input.a, ~u_input.c.x, _wgslsmith_div_u32(u_input.a, 24577u), u_input.b), vec4<u32>(1u, _wgslsmith_div_u32(0u, u_input.b), u_input.c.x | 4294967295u, countOneBits(u_input.a)) << (firstLeadingBit(~vec4<u32>(u_input.a, u_input.b, u_input.c.x, 26195u)) % vec4<u32>(32u))), vec2<i32>(var_0.x, -(~max(global2[_wgslsmith_index_u32(0u, 32u)], -35762i)))), 32u)];
    let var_1 = abs(~vec4<u32>(~4294967295u, 1u, u_input.c.x, firstTrailingBit(0u))) ^ vec4<u32>(_wgslsmith_sub_u32(~1u, u_input.b), 4294967295u, u_input.a, 4294967295u);
    global3 = array<vec3<f32>, 20>();
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-670f - -906f) + _wgslsmith_f_op_f32(-2026f - -132f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -451f)))));
    global4 = 1i;
    global2 = array<i32, 32>();
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -566f), _wgslsmith_f_op_f32(abs(-145f)), _wgslsmith_f_op_f32(f32(-1f) * -318f), -878f) - vec4<f32>(-1029f, 1115f, _wgslsmith_f_op_f32(min(-443f, var_2)), -1138f)), func_3(Struct_2(Struct_1(vec4<f32>(1000f, -1015f, var_2, var_2), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 12u)]), vec2<f32>(var_2, var_2), global0[_wgslsmith_index_u32(u_input.b, 12u)], var_2), -2147483647i >> (u_input.a % 32u), vec3<bool>(true, global0[_wgslsmith_index_u32(17593u, 12u)], true)), var_1 >> (var_1 % vec4<u32>(32u)), min(abs(vec4<i32>(var_0.x, global2[_wgslsmith_index_u32(var_1.x, 32u)], 0i, var_0.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 32u)], -10303i, 45071i, -20039i), vec4<i32>(var_0.x, 31934i, global2[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(u_input.a, 32u)]))), u_input.a).zz, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, 1839f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -781f), vec2<f32>(var_2, -1070f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-209f, 554f) * _wgslsmith_div_vec2_f32(vec2<f32>(var_2, 211f), vec2<f32>(var_2, -530f))))), any(vec2<bool>(true, !global0[_wgslsmith_index_u32(57186u, 12u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 + var_2) + var_2))), 6189i, vec3<bool>(func_4(vec3<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)])), !global0[_wgslsmith_index_u32(30446u, 12u)], global0[_wgslsmith_index_u32(reverseBits(var_1.x), 12u)]), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, u_input.a, u_input.c.x), 12u)], !global0[_wgslsmith_index_u32(51250u, 12u)], all(vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)])), global0[_wgslsmith_index_u32(19551u, 12u)])), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), global0[_wgslsmith_index_u32(3883u, 12u)])), select(!(-2330i >= var_0.x), true, global0[_wgslsmith_index_u32(~var_1.x, 12u)])));
    var var_4 = !(!all(select(var_3.a.b, var_3.c.yy, var_3.c.yz))) | (global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(~u_input.a), var_1.x), 12u)] || (_wgslsmith_div_f32(-578f, _wgslsmith_f_op_f32(sign(var_3.a.e))) <= var_2));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.c, ~vec2<u32>(24466u, 7711u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(37675u, u_input.c.x), var_1.zy))));
}

