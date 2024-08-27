struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<u32, 7>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<u32>, arg_3: vec4<u32>) -> f32 {
    var var_0 = false;
    var var_1 = arg_0.a;
    let var_2 = Struct_2(Struct_1(select(select(vec4<bool>(false, true, var_1.b, var_1.b), vec4<bool>(true, var_1.a.x, false, false), false), var_1.a, all(vec4<bool>(false, true, arg_0.e.x, arg_0.e.x))), true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.d.x, var_1.d.x, var_1.d.x, var_1.c.x) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.x, arg_0.a.c.x, 295f, -211f), var_1.c)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_1.c, vec4<f32>(var_1.c.x, var_1.c.x, arg_0.c.c.x, -1180f))), _wgslsmith_f_op_vec4_f32(arg_0.c.c + vec4<f32>(var_1.d.x, 1391f, var_1.d.x, -594f))), select(vec4<bool>(var_1.b, true, arg_0.c.b, var_1.b), arg_0.c.a, vec4<bool>(arg_0.a.b, false, arg_0.c.b, arg_0.a.b)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.c.xw, vec2<f32>(arg_0.c.c.x, -161f), vec2<bool>(false, arg_0.c.a.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1584f, arg_0.a.c.x)))))), vec4<i32>(_wgslsmith_add_i32(-3379i, arg_0.d), ~(~u_input.b.x), abs(5542i), _wgslsmith_mod_i32(arg_0.b.x, 11088i)) ^ countOneBits(vec4<i32>(~arg_0.d, u_input.a | arg_0.b.x, _wgslsmith_add_i32(arg_0.b.x, -5245i), min(33987i, u_input.b.x))), Struct_1(arg_0.c.a, var_1.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.x, var_1.d.x, var_1.c.x, arg_0.c.c.x), vec4<f32>(arg_0.c.d.x, 486f, -1863f, arg_0.c.c.x))), vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.c.c.x)), 1348f)), 2147483647i, select(!vec2<bool>(false, any(vec2<bool>(true, false))), !vec2<bool>(arg_0.c.a.x, true), !arg_0.e.x));
    global0 = ~arg_2.xyx;
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.c.c.x - _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(555f * 1215f), var_2.c.a.x)), var_2.a.c.x, var_1.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(192f + -428f))))));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_4) -> vec4<bool> {
    let var_0 = min(-vec4<i32>(34325i, 1i, 3830i, -2147483647i << ((arg_1.x | global1[_wgslsmith_index_u32(arg_1.x, 7u)]) % 32u)), vec4<i32>(-42404i, 1i, i32(-1i) * -u_input.a, arg_0));
    global0 = vec3<u32>(_wgslsmith_clamp_u32(arg_1.x, ~global0.x, global1[_wgslsmith_index_u32(4294967295u, 7u)]), ~global0.x, arg_1.x);
    let var_1 = -arg_0;
    global1 = array<u32, 7>();
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(arg_3.b, arg_3.b.x, vec4<f32>(1678f, arg_3.a.x, arg_2, arg_3.a.x), vec2<f32>(1089f, arg_3.a.x)), ~vec4<i32>(var_1, arg_0, var_0.x, u_input.a), Struct_1(vec4<bool>(arg_3.b.x, arg_3.b.x, false, true), arg_3.b.x, vec4<f32>(-139f, arg_3.a.x, arg_2, arg_2), vec2<f32>(1000f, 1191f)), _wgslsmith_add_i32(var_0.x, 14361i), vec2<bool>(arg_3.b.x, true)), firstTrailingBit(global0.x), vec4<u32>(1u, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(arg_1.x, 7u)], 1u, 4294967295u), ~0u, global0.x & global0.x), ~vec4<u32>(global0.x, 4294967295u, 0u, global0.x)))), _wgslsmith_f_op_f32(-arg_3.a.x)));
    return select(select(vec4<bool>(true, !(var_0.x < 2147483647i), arg_3.b.x, true), vec4<bool>(false, !any(vec3<bool>(true, true, arg_3.b.x)), arg_3.b.x, false), true), vec4<bool>(arg_3.b.x, all(arg_3.b.xyw), -2360f > _wgslsmith_f_op_f32(-arg_2), arg_3.b.x), arg_3.b);
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    global1 = array<u32, 7>();
    let var_0 = Struct_2(Struct_1(select(vec4<bool>(true, true, true, false), select(func_2(9462i, vec2<u32>(global0.x, 4294967295u), 317f, Struct_4(vec3<f32>(-937f, 161f, 494f), vec4<bool>(false, false, false, false))), func_2(0i, global0.yx, 590f, Struct_4(vec3<f32>(-339f, 395f, 257f), vec4<bool>(false, false, true, false))), true), any(vec2<bool>(false, false))), !(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x) > ~u_input.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1724f, 1584f, -284f, 895f), vec4<f32>(120f, -771f, 964f, -882f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-693f, -534f, 1000f, 425f), vec4<f32>(547f, 469f, -1148f, 844f), vec4<bool>(true, false, true, false))), vec4<f32>(486f, 1237f, 402f, 605f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(320f, 967f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-915f, 621f), vec2<f32>(-780f, -1983f))))), vec4<i32>(1i, min(i32(-1i) * -3979i, min(-1i, 2147483647i)), ~(~1i), ~0i) >> (_wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 73904u, 1u), vec4<u32>(1u, global0.x, global0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)])), vec4<u32>(global0.x, 4294967295u, 4294967295u, 13016u) >> (vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_1(!func_2(reverseBits(-39215i), select(global0.zx, global0.yx, true), _wgslsmith_f_op_f32(f32(-1f) * -701f), Struct_4(vec3<f32>(-1000f, -441f, -1313f), vec4<bool>(false, true, true, true))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1291f, -1834f, 1000f, -105f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-428f, -682f)))))), u_input.a, select(select(select(func_2(2147483647i, vec2<u32>(4294967295u, global0.x), -1249f, Struct_4(vec3<f32>(739f, -333f, 314f), vec4<bool>(false, false, true, true))).zz, vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(all(vec2<bool>(false, true)) | true, true), all(func_2(i32(-1i) * -58496i, ~global0.yx, -409f, Struct_4(vec3<f32>(-334f, -288f, -1028f), vec4<bool>(true, true, true, true))).xx)));
    var var_1 = Struct_3(Struct_1(select(select(select(vec4<bool>(true, false, var_0.c.a.x, var_0.e.x), var_0.c.a, var_0.c.a), vec4<bool>(var_0.e.x, false, var_0.e.x, var_0.c.a.x), true), !(!var_0.c.a), true), var_0.c.a.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(var_0.c.c, _wgslsmith_f_op_vec4_f32(var_0.a.c + var_0.c.c)))), _wgslsmith_f_op_vec2_f32(-var_0.a.d)), ~0u, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2399f, -992f) * vec2<f32>(-378f, var_0.a.c.x))))))));
    var var_2 = arg_0.x;
    var_2 = ~5697u;
    return Struct_2(var_1.a, countOneBits(var_0.b), Struct_1(vec4<bool>(false, var_1.a.a.x, all(var_1.a.a.xxy) & (global0.x == var_1.b), true), (select(false, var_1.a.b, false) != var_0.c.a.x) || true, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1551f * var_0.c.d.x))), var_0.a.d.x, var_0.c.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.c.x - var_0.a.c.x), _wgslsmith_div_f32(var_0.a.d.x, 1185f), any(vec4<bool>(true, false, true, false))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.d.x), _wgslsmith_f_op_f32(var_1.c.x * var_1.a.c.x)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(var_1.c, vec2<f32>(var_1.c.x, var_0.c.c.x)))))), reverseBits(~abs(19955i)), !(!var_0.a.a.xy));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    let var_0 = func_1(vec3<u32>(~_wgslsmith_add_u32(abs(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(61288u, 7u)], 1u, 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(global0.x, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38961u, 7u)], 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], global1[_wgslsmith_index_u32(global0.x, 7u)]))), ~_wgslsmith_sub_u32(~4146u, 1u), ~32290u)).a;
    var var_1 = arg_0.b.yw;
    var_1 = abs(vec2<i32>(_wgslsmith_clamp_i32(firstTrailingBit(~var_1.x), arg_0.d, countOneBits(-u_input.b.x)), 2147483647i));
    var var_2 = arg_0.b & vec4<i32>(abs(-1i), ~63034i, _wgslsmith_clamp_i32(arg_0.d, -max(22173i, -2147483647i), -79592i), firstTrailingBit(_wgslsmith_add_i32(-u_input.a, ~var_1.x)));
    global0 = vec3<u32>(max(_wgslsmith_dot_vec4_u32(firstLeadingBit(select(vec4<u32>(global0.x, global0.x, global0.x, 15238u), vec4<u32>(40276u, 0u, 44652u, global1[_wgslsmith_index_u32(1u, 7u)]), var_0.a)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 4294967295u, global0.x, global0.x), vec4<u32>(global0.x, global0.x, global1[_wgslsmith_index_u32(global0.x, 7u)], 4294967295u))), countOneBits(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global0.x, 7u)], 1u) >> (_wgslsmith_mod_u32(12287u, global1[_wgslsmith_index_u32(81972u, 7u)]) % 32u))), ~33012u >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 5486u, global0.x), abs(vec3<u32>(73756u, 18471u, 67196u) ^ vec3<u32>(global1[_wgslsmith_index_u32(global0.x, 7u)], 23128u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]))) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(global0.xx, global0.zx), 1u, global0.x, 1u) >> (reverseBits(vec4<u32>(67289u, 1u, 53559u, global0.x)) % vec4<u32>(32u)), vec4<u32>(firstTrailingBit(4294967295u), 16240u, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(22778u, 7u)] & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 7u)], 7u)], ~1u), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(80719u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)]), 7u)] >> (global1[_wgslsmith_index_u32(1u, 7u)] % 32u))));
    return Struct_3(arg_0.c, 0u, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, arg_0.a.c.x), vec2<f32>(-1000f, -291f))));
}

fn func_5(arg_0: bool, arg_1: Struct_3) -> vec3<i32> {
    var var_0 = func_1(vec3<u32>(_wgslsmith_clamp_u32(arg_1.b >> (34142u % 32u), 0u, _wgslsmith_clamp_u32(0u, 33123u, 12640u)), 1u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global0.x, 7u)] & 0u, arg_1.b)) | ~max(abs(vec3<u32>(arg_1.b, 0u, 21407u)), ~vec3<u32>(29294u, 47831u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55625u, 7u)], 7u)])));
    let var_1 = -514f;
    global0 = min(vec3<u32>(45578u, _wgslsmith_mod_u32(global0.x, (arg_1.b << (global0.x % 32u)) << (0u % 32u)), firstLeadingBit(global1[_wgslsmith_index_u32(~4294967295u, 7u)])), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(arg_1.b, 7u)], 61205u, 1u), vec3<u32>(49508u, 73132u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 7u)], 7u)], 7u)]))) & ~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60308u, 7u)], 7u)]), vec3<u32>(24803u, 64193u, 35028u)), firstTrailingBit(vec3<u32>(4294967295u, arg_1.b, global0.x))));
    let var_2 = vec2<u32>(select(global0.x, 0u | ~(5062u ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23412u, 7u)], 7u)]), !all(func_2(var_0.d, global0.yx, -1449f, Struct_4(arg_1.a.c.zyy, vec4<bool>(false, true, arg_0, arg_1.a.a.x))))), 2218u);
    var_0 = Struct_2(Struct_1(!vec4<bool>(!arg_1.a.b, true, var_0.d != var_0.d, !arg_0), !all(select(vec2<bool>(false, var_0.e.x), vec2<bool>(false, true), var_0.a.b)), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1527f), _wgslsmith_f_op_f32(var_0.a.c.x - arg_1.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(485f * arg_1.a.c.x), func_4(Struct_2(var_0.c, vec4<i32>(u_input.a, u_input.a, -2147483647i, 2147483647i), arg_1.a, -15608i, var_0.a.a.wx)).c.x), arg_1.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a.d.x)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), var_0.a.c.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, u_input.b.x), vec2<i32>(13314i, var_0.b.x) >> (var_2 % vec2<u32>(32u))), var_0.d, u_input.b.x, firstTrailingBit(i32(-1i) * -2147483647i)), _wgslsmith_mod_vec4_i32(-var_0.b, select(-var_0.b, var_0.b, arg_1.a.a))), arg_1.a, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-57465i, i32(-1i) * -1i, ~0i, 3428i)), -vec4<i32>(~var_0.d, -21563i, u_input.a & 1i, u_input.b.x)), !vec2<bool>(true, func_4(Struct_2(Struct_1(vec4<bool>(arg_1.a.a.x, false, false, false), var_0.e.x, vec4<f32>(686f, 573f, 929f, -1114f), var_0.a.d), vec4<i32>(var_0.d, var_0.d, var_0.d, var_0.d), Struct_1(arg_1.a.a, arg_0, arg_1.a.c, var_0.a.d), u_input.b.x, var_0.c.a.zz)).a.c.x != -2959f));
    return ~min(select(-abs(vec3<i32>(2147483647i, u_input.a, -1i)), vec3<i32>(_wgslsmith_mod_i32(var_0.d, 2147483647i), ~5057i, var_0.d), var_0.c.a.xxw), firstLeadingBit(vec3<i32>(_wgslsmith_sub_i32(0i, u_input.b.x), u_input.b.x, 40510i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(0u, 7u)], 52793u), 7u)], _wgslsmith_div_u32(26350u, 1u), global0.x, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(0u, 7u)], _wgslsmith_dot_vec2_u32(global0.yz, ~vec2<u32>(global1[_wgslsmith_index_u32(global0.x, 7u)], global0.x))));
    var var_1 = -2147483647i;
    var var_2 = _wgslsmith_div_u32(global0.x, ~(~4294967295u));
    let var_3 = firstTrailingBit(func_5(false, func_4(func_1(vec3<u32>(4294967295u, 4294967295u, var_0.x)))));
    var var_4 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(~global0.x);
}

