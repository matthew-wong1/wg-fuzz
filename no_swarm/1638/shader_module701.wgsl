struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec2<i32>;

var<private> global2: u32;

var<private> global3: array<vec4<f32>, 16>;

var<private> global4: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(false, -51967i, vec2<f32>(773f, 826f), i32(-2147483648))));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.a, u_input.a), vec2<i32>(~firstTrailingBit(0i), -(~1i)), ~(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 46233i), vec2<i32>(31310i, 2147483647i)) & vec2<i32>(2147483647i, 20178i))) & vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(1i), max(~arg_0.a.d, ~(-1i))), -26198i);
    let var_1 = firstLeadingBit(vec3<u32>(19897u, 0u, 1u));
    global2 = 40890u;
    var var_2 = _wgslsmith_dot_vec2_i32(var_0, var_0) << (abs(~18147u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, 50821u), abs(vec3<u32>(4294967295u, global0.x, global0.x)))) % 32u);
    var var_3 = vec2<bool>(false, 6545i >= u_input.a);
    return vec4<i32>(-1i) * -vec4<i32>(abs(-40695i), reverseBits(arg_1.a.d), _wgslsmith_add_i32(global1.x, var_0.x), select(-1i, 35610i, true));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: i32, arg_3: vec3<f32>) -> vec4<u32> {
    var var_0 = abs(~vec2<u32>(115837u, 0u));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-628f - arg_1.x)), arg_1.x, false && (-13765i == (~(-14605i) ^ u_input.a))));
    global1 = _wgslsmith_mult_vec2_i32(~vec2<i32>(-arg_0.a.a.d, 39043i), vec2<i32>(global1.x, -_wgslsmith_sub_i32(firstLeadingBit(global1.x), u_input.a)));
    global1 = vec2<i32>(-45445i & (-global1.x << (1u % 32u)), -arg_0.a.a.b);
    let var_2 = select(firstLeadingBit(func_3(Struct_2(Struct_1(arg_0.b.a, -51974i, vec2<f32>(arg_1.x, arg_3.x), arg_0.a.a.d)), arg_0.a, vec2<bool>(true, true))), _wgslsmith_mult_vec4_i32(abs(firstLeadingBit(vec4<i32>(arg_0.b.b, global1.x, global1.x, arg_0.a.a.b)) ^ -vec4<i32>(arg_0.b.d, arg_2, global1.x, 4175i)), _wgslsmith_sub_vec4_i32(vec4<i32>(17906i, arg_0.a.a.d, 0i, -40638i) << (vec4<u32>(72433u, 12485u, global0.x, var_0.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -48890i, arg_2, u_input.a) >> (vec4<u32>(global0.x, global0.x, 1u, var_0.x) % vec4<u32>(32u)), -vec4<i32>(u_input.a, 2147483647i, -2147483647i, -2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.x, _wgslsmith_f_op_f32(arg_1.x + arg_0.c)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)));
    return _wgslsmith_sub_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, _wgslsmith_sub_u32(var_0.x, global0.x), ~1u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global0.x, 25925u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(31449u, global0.x, 39425u, global0.x), vec4<u32>(32398u, 77377u, 4294967295u, 1u), vec4<u32>(global0.x, global0.x, 3284u, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, global0.x, global0.x, 8782u), vec4<u32>(var_0.x, global0.x, global0.x, var_0.x))))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(1u, var_0.x, var_0.x, 4294967295u)) >> (vec4<u32>(var_0.x, 18129u, 0u, global0.x) % vec4<u32>(32u)), select(~vec4<u32>(0u, global0.x, 1722u, var_0.x), vec4<u32>(1u, global0.x, 44972u, 1u), all(vec4<bool>(arg_0.b.a, true, false, false)))), ~max(~vec4<u32>(38342u, 42159u, global0.x, 91299u), vec4<u32>(0u, 0u, var_0.x, 67045u))));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> vec2<f32> {
    let var_0 = !any(vec4<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), false)), true, select(any(vec2<bool>(false, false)), 62060u == global0.x, 29956u == global0.x), true));
    let var_1 = global4[_wgslsmith_index_u32(13258u, 1u)];
    var var_2 = Struct_1(!(!all(!vec4<bool>(var_1.a.a, false, var_0, var_1.a.a))), u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(var_1.a.c.x + -1191f)))), -select(1i & select(-27656i, -42264i, var_0), _wgslsmith_mult_i32(u_input.a, ~39041i), !(var_0 & var_1.a.a)));
    var var_3 = reverseBits(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(1278u, global0.x, 4294967295u, 1u)) << (min(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 1u, global0.x, global0.x), vec4<u32>(global0.x, 1u, 5144u, 4294967295u)), ~vec4<u32>(global0.x, global0.x, global0.x, global0.x)) % vec4<u32>(32u)), ~select(vec4<u32>(4294967295u, global0.x, global0.x, global0.x), vec4<u32>(global0.x, global0.x, 9494u, global0.x), vec4<bool>(true, true, var_2.a, false)) & _wgslsmith_add_vec4_u32(func_2(Struct_3(global4[_wgslsmith_index_u32(global0.x, 1u)], Struct_1(true, var_2.b, var_1.a.c, var_1.a.d), 2882f), vec2<f32>(var_1.a.c.x, -882f), var_1.a.d, arg_0), ~vec4<u32>(1u, 53350u, global0.x, global0.x))));
    let var_4 = Struct_3(global4[_wgslsmith_index_u32(~11334u, 1u)], var_1.a, 2007f);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_4.a.a.c), vec2<f32>(321f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))), select(vec2<bool>(global0.x != var_3.x, any(vec4<bool>(true, var_0, true, var_4.b.a))), select(!vec2<bool>(false, var_2.a), vec2<bool>(false, var_1.a.a), var_4.a.a.a), select(vec2<bool>(false, var_4.b.a), select(vec2<bool>(true, var_2.a), vec2<bool>(var_1.a.a, false), vec2<bool>(var_1.a.a, var_0)), true)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(arg_0.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1089f, -1549f))), var_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.a.a.c) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-219f, var_2.c.x))), select(select(vec2<bool>(var_4.b.a, var_2.a), !vec2<bool>(var_0, false), any(vec2<bool>(false, true))), vec2<bool>(var_0, var_0), all(vec2<bool>(var_4.a.a.a, true))))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = global1.x;
    var var_1 = Struct_3(global4[_wgslsmith_index_u32(3684u, 1u)], Struct_1(arg_0.a, -2147483647i, _wgslsmith_div_vec2_f32(arg_0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-493f, 2188f) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(2828f, 551f), arg_0.c)))), i32(-1i) * -48208i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.c.x, -1372f)) * _wgslsmith_f_op_f32(f32(-1f) * -914f)), -708f)))));
    global4 = array<Struct_2, 1>();
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global0.x, 4712u, global0.x, 0u)), vec4<u32>(~global0.x, 60282u, global0.x, global0.x << (2609u % 32u))), global0.x), firstTrailingBit(~global0.x));
    global0 = ~_wgslsmith_mult_vec2_u32(max(~vec2<u32>(var_2, 1u), reverseBits(vec2<u32>(1u, 9850u))), ~abs(vec2<u32>(global0.x, var_2))) >> (vec2<u32>(~var_2, _wgslsmith_sub_u32(global0.x, global0.x)) % vec2<u32>(32u));
    return var_1.a.a;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    global2 = global0.x;
    global4 = array<Struct_2, 1>();
    let var_0 = !vec3<bool>(all(vec4<bool>(false, global0.x != 1u, arg_1.a | arg_1.a, arg_0.a.a.a)), any(!vec4<bool>(false, true, arg_0.b.a, false)), !arg_1.a);
    let var_1 = arg_0.b.c;
    var var_2 = arg_0;
    return arg_1;
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global0 = func_2(Struct_3(global4[_wgslsmith_index_u32(1u, 1u)], arg_1, _wgslsmith_f_op_f32(trunc(-165f))), vec2<f32>(-742f, 868f), -32747i, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(360f, _wgslsmith_f_op_f32(min(arg_1.c.x, -760f))), arg_1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(360f)), 938f))))).xw;
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-581f - -1000f)));
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(~13262u, _wgslsmith_div_u32(global0.x, ~66610u)), arg_0) & (_wgslsmith_div_vec2_u32(~(vec2<u32>(67429u, arg_0) >> (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u))), min(~vec2<u32>(global0.x, arg_0), firstLeadingBit(vec2<u32>(global0.x, 25920u)))) >> (reverseBits(select(vec2<u32>(31451u, 4294967295u) | vec2<u32>(arg_0, global0.x), firstTrailingBit(vec2<u32>(global0.x, arg_0)), select(vec2<bool>(true, arg_1.a), vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(false, true)))) % vec2<u32>(32u)));
    var var_2 = -1178f;
    var var_3 = all(select(vec3<bool>(arg_1.a, 61157u <= ~global0.x, all(vec3<bool>(true, arg_1.a, true)) | !arg_1.a), !select(vec3<bool>(arg_1.a, arg_1.a, arg_1.a), !vec3<bool>(arg_1.a, true, arg_1.a), !vec3<bool>(false, arg_1.a, arg_1.a)), arg_1.a));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(global0.x, func_5(Struct_3(Struct_2(Struct_1(false, global1.x, vec2<f32>(-2443f, -576f), -2147483647i)), Struct_1(true, i32(-1i) * -2147483647i, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1215f, 744f) + vec2<f32>(-2097f, -424f)), firstLeadingBit(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -584f)), func_4(Struct_1(any(vec4<bool>(false, true, true, false)), 1i, _wgslsmith_f_op_vec2_f32(func_1(vec3<f32>(1618f, 1281f, -704f), global1.x)), abs(u_input.a)), true), Struct_3(global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(40576u, global0.x), vec2<u32>(global0.x, 4294967295u))), 1u)], Struct_1(true, select(-2147483647i, u_input.a, false), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2573f, -1272f), vec2<f32>(815f, -121f))), u_input.a), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(434f, 274f)))), global1.x));
    global1 = _wgslsmith_add_vec2_i32(vec2<i32>(firstTrailingBit(abs(global1.x)), var_0.d), vec2<i32>(-firstLeadingBit(var_0.b), _wgslsmith_sub_i32(-_wgslsmith_mult_i32(var_0.d, 27963i), -1i)));
    let var_1 = vec4<u32>(~firstTrailingBit(_wgslsmith_mod_u32(select(4294967295u, 0u, false), global0.x)), global0.x, _wgslsmith_mod_u32(1u, global0.x), global0.x);
    var var_2 = func_6(0u, func_4(func_4(func_6(var_1.x, Struct_1(false, var_0.b, var_0.c, var_0.d)), !var_0.a), var_0.a)).d << (1u % 32u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 1f) + _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(round(var_0.c.x))));
    var var_4 = Struct_2(func_4(Struct_1(false, var_0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.c, var_0.c)) - _wgslsmith_f_op_vec2_f32(var_0.c * var_0.c)), _wgslsmith_add_i32(50142i, u_input.a)), !var_0.a));
    let var_5 = _wgslsmith_f_op_f32(func_5(Struct_3(Struct_2(var_4.a), Struct_1(true, i32(-1i) * -1i, var_4.a.c, ~u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + 647f))), var_4.a, Struct_3(global4[_wgslsmith_index_u32(~func_2(Struct_3(Struct_2(Struct_1(var_0.a, 28590i, vec2<f32>(var_4.a.c.x, var_4.a.c.x), var_4.a.b)), var_4.a, 332f), var_0.c, 0i, vec3<f32>(var_0.c.x, -320f, var_0.c.x)).x, 1u)], func_4(func_6(var_1.x, var_4.a), 1000f != var_4.a.c.x), var_3), _wgslsmith_div_i32(abs(var_4.a.b), _wgslsmith_div_i32(max(26870i, var_0.d), -1i))).c.x * 743f);
    global0 = vec2<u32>(firstLeadingBit(1u), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

