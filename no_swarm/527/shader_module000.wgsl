struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1>;

var<private> global1: array<f32, 13>;

var<private> global2: Struct_3 = Struct_3(vec4<bool>(true, false, false, false));

var<private> global3: u32 = 1u;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<i32>, arg_3: vec3<i32>) -> vec4<bool> {
    return vec4<bool>(true, true, true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(53641u, 13u)] * global1[_wgslsmith_index_u32(1u, 13u)]))))) != -232f);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> Struct_2 {
    global1 = array<f32, 13>();
    var var_0 = select(global2.a.yx, select(!(!select(arg_1.c.yx, arg_1.c.yz, arg_0)), arg_1.c.yz, select(vec2<bool>(select(true, arg_0, false), any(vec3<bool>(true, global2.a.x, true))), vec2<bool>(global2.a.x | arg_1.a, global2.a.x), any(func_3(vec3<i32>(-38215i, arg_3.x, arg_1.d), arg_1.b, vec3<i32>(-1i, u_input.a, arg_3.x), vec3<i32>(1i, arg_3.x, arg_3.x))))), all(!global2.a.zxx));
    var_0 = vec2<bool>(true, any(arg_1.c));
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(22506u, _wgslsmith_mod_u32(4294967295u, arg_1.b)), abs(_wgslsmith_div_u32(66475u, 42132u)), abs(1u), 15433u), _wgslsmith_clamp_vec4_u32(vec4<u32>(85900u, arg_1.b, abs(arg_1.b), 0u), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(38409u, arg_1.b, arg_1.b, arg_1.b), vec4<u32>(0u, arg_1.b, 1u, arg_1.b), vec4<u32>(96669u, arg_1.b, 1u, arg_1.b))), vec4<u32>(~0u, firstLeadingBit(4294967295u), abs(arg_1.b), abs(arg_1.b)))) << (~(1u & arg_1.b) % 32u);
    global0 = array<vec3<u32>, 1>();
    return Struct_2(arg_1, Struct_1(true, select(_wgslsmith_mult_u32(1u, ~arg_1.b), 1u, false), !select(func_3(arg_3, 0u, arg_3, vec3<i32>(-2147483647i, arg_1.d, -2147483647i)).wzx, !arg_1.c, vec3<bool>(true, arg_0, arg_0)), abs(-16254i), abs(~min(arg_1.e, arg_3.x))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0.b.b, arg_0.b.b), arg_0.a.b);
    var var_1 = (u_input.b == arg_0.b.e) || true;
    let var_2 = !global2.a;
    let var_3 = -849f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, arg_0.a.b), 13u)]));
    var var_4 = ~arg_0.a.e ^ -arg_0.a.d;
    return func_2(true | global2.a.x, Struct_1(~_wgslsmith_mult_u32(var_0, arg_0.b.b) < ~var_0, 4294967295u, arg_0.b.c, max(~(-arg_0.b.e), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, arg_0.a.d) | vec3<i32>(-64030i, 2147483647i, 2147483647i), countOneBits(vec3<i32>(u_input.b, 1i, arg_0.a.d)))), ~countOneBits(arg_0.b.d) | ~u_input.a), true, -(~(~vec3<i32>(u_input.b, arg_0.a.e, 0i) & vec3<i32>(arg_0.a.e, arg_0.b.e, 1i))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> i32 {
    global3 = arg_1.b.b;
    let var_0 = func_2((all(select(vec2<bool>(arg_1.b.a, false), vec2<bool>(true, arg_1.b.c.x), true)) & true) && true, func_2(arg_0.a.x, func_4(Struct_2(arg_1.a, arg_1.a)).a, !(!arg_0.a.x), vec3<i32>(-1i) * -vec3<i32>(9758i, arg_1.b.e, -43615i)).b, false, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.b), select(vec3<i32>(arg_1.b.e, 23832i, 55557i) << (vec3<u32>(arg_1.a.b, 0u, 1u) % vec3<u32>(32u)), ~vec3<i32>(-1i, u_input.b, 38041i), !arg_2) & _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(74653i, u_input.a, u_input.b), vec3<i32>(arg_1.b.d, arg_1.a.d, arg_1.b.e), vec3<i32>(27435i, u_input.b, -33276i)), vec3<i32>(-9275i, -13092i, u_input.a) ^ vec3<i32>(arg_1.b.e, 0i, 10275i)))).a;
    global2 = Struct_3(global2.a);
    var var_1 = min(var_0.b, min(arg_1.a.b >> ((var_0.b | ~var_0.b) % 32u), 4490u));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-669f, global1[_wgslsmith_index_u32(24025u, 13u)], 154f, -480f), vec4<f32>(-779f, global1[_wgslsmith_index_u32(var_0.b, 13u)], global1[_wgslsmith_index_u32(var_0.b, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)])), vec4<f32>(-1617f, global1[_wgslsmith_index_u32(var_0.b, 13u)], -813f, global1[_wgslsmith_index_u32(arg_1.b.b, 13u)]))) * vec4<f32>(-813f, _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(arg_1.b.b, 13u)], global1[_wgslsmith_index_u32(arg_1.b.b, 13u)], arg_1.a.a)), -300f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-774f, 1575f, 836f, 1875f) + vec4<f32>(-280f, global1[_wgslsmith_index_u32(44711u, 13u)], -3334f, 2751f)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(arg_1.b.b, 13u)], global1[_wgslsmith_index_u32(var_0.b, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(arg_1.a.b, 13u)]), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2189f, -1834f, global1[_wgslsmith_index_u32(arg_1.a.b, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)]))), arg_0.a.x || false)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.a.b, 13u)] * global1[_wgslsmith_index_u32(4294967295u, 13u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(737f))), -162f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.b, 13u)] - global1[_wgslsmith_index_u32(reverseBits(arg_1.a.b), 13u)]))))));
    return u_input.a;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    let var_0 = Struct_3(!(!vec4<bool>(false | arg_1, global2.a.x, all(vec4<bool>(arg_1, arg_1, arg_0.a, arg_0.c.x)), !arg_1)));
    global1 = array<f32, 13>();
    var var_1 = countOneBits(max(func_5(Struct_3(vec4<bool>(false, global2.a.x, var_0.a.x, true)), func_4(func_2(false, arg_0, var_0.a.x, vec3<i32>(arg_0.d, -2147483647i, u_input.b))), arg_0.a), 80320i));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2417f + global1[_wgslsmith_index_u32(~arg_0.b, 13u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.b, 13u)]), -2005f, 1098f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(arg_0.b, 13u)], 2446f, -3018f, 1843f))))));
    var var_3 = var_0;
    return func_3(reverseBits(-(~vec3<i32>(arg_0.d, 0i, arg_0.e)) ^ -abs(vec3<i32>(-30972i, -2147483647i, arg_0.e))), arg_0.b, select(vec3<i32>(-1i, countOneBits(-56714i), arg_0.e), firstLeadingBit(vec3<i32>(-64694i, -2147483647i, ~arg_0.d)), !(arg_0.b >= 1u)), -_wgslsmith_sub_vec3_i32(abs(vec3<i32>(2147483647i, 22924i, u_input.b)), max(vec3<i32>(u_input.b, u_input.b, arg_0.e), vec3<i32>(u_input.a, -53874i, arg_0.d))) >> (~global0[_wgslsmith_index_u32(arg_0.b, 1u)] % vec3<u32>(32u)));
}

fn func_6(arg_0: bool, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_3) -> vec2<u32> {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_4(func_2(global2.a.x, Struct_1(arg_3.a.x, ~4294967295u, global2.a.wxy, ~u_input.a, -1270i), true, firstLeadingBit(-vec3<i32>(0i, u_input.b, u_input.b)))).a.b, abs(8547u)), 13u)];
    let var_1 = !func_4(Struct_2(func_2(!arg_0, func_2(false, Struct_1(arg_0, 1u, global2.a.wzw, -54387i, -1i), true, vec3<i32>(15098i, -1i, u_input.b)).b, any(vec2<bool>(false, arg_3.a.x)), ~vec3<i32>(u_input.a, 3586i, u_input.a)).a, func_4(func_4(Struct_2(Struct_1(arg_0, 6032u, arg_1, -3929i, 2147483647i), Struct_1(arg_0, 4294967295u, vec3<bool>(false, false, true), -61482i, -38673i)))).a)).a.c;
    let var_2 = u_input.a;
    var var_3 = Struct_1(!(!func_1(Struct_1(true, 0u, vec3<bool>(global2.a.x, false, arg_1.x), u_input.a, var_2), true).x), countOneBits(6763u), func_2((_wgslsmith_mult_i32(1i, u_input.b) >> (1u % 32u)) < (abs(var_2) << (42922u % 32u)), func_2(arg_3.a.x == true, func_4(func_4(Struct_2(Struct_1(arg_3.a.x, 15281u, global2.a.yyx, u_input.b, u_input.b), Struct_1(false, 21382u, vec3<bool>(global2.a.x, global2.a.x, true), var_2, u_input.b)))).b, false, vec3<i32>(-u_input.a, ~11861i, _wgslsmith_div_i32(u_input.a, -16471i))).b, func_2(true, func_4(Struct_2(Struct_1(arg_3.a.x, 20306u, var_1, 1i, 13561i), Struct_1(global2.a.x, 36309u, arg_1, var_2, u_input.a))).b, global2.a.x, ~_wgslsmith_sub_vec3_i32(vec3<i32>(-5152i, var_2, 0i), vec3<i32>(var_2, var_2, -2147483647i))).a.c.x, abs(vec3<i32>(-u_input.a, 18209i, var_2))).b.c, abs(var_2), func_2(!all(vec2<bool>(var_1.x, true)), func_2(select(true, true, true), Struct_1(true, 12923u, vec3<bool>(false, true, arg_3.a.x), var_2, 79242i), 2147483647i <= var_2, _wgslsmith_clamp_vec3_i32(vec3<i32>(1789i, 66206i, u_input.a), vec3<i32>(var_2, var_2, -1i), vec3<i32>(var_2, var_2, -7746i))).a, all(vec3<bool>(arg_3.a.x, true, false)), ~vec3<i32>(var_2, var_2, 0i)).a.e & 0i);
    let var_4 = any(func_3(vec3<i32>(max(-2147483647i, -66867i) ^ func_2(false, Struct_1(arg_1.x, var_3.b, vec3<bool>(var_3.c.x, var_3.a, arg_3.a.x), 2147483647i, var_3.d), true, vec3<i32>(21752i, -2147483647i, u_input.a)).b.e, min(-u_input.b, ~var_3.e), select(-1i, _wgslsmith_add_i32(u_input.a, u_input.a), false)), var_3.b, _wgslsmith_div_vec3_i32(~vec3<i32>(1i, -2147483647i, -1i) & select(vec3<i32>(-2147483647i, var_2, var_2), vec3<i32>(-1i, var_2, u_input.b), arg_3.a.wxy), _wgslsmith_mult_vec3_i32(-vec3<i32>(var_2, 2147483647i, -4421i), vec3<i32>(var_2, var_2, -12512i))), -(~max(vec3<i32>(u_input.a, 38480i, u_input.a), vec3<i32>(var_2, 3720i, var_3.e)))).xy);
    return firstTrailingBit(select(abs(vec2<u32>(44493u, ~57510u)), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, var_3.b), _wgslsmith_div_vec2_u32(vec2<u32>(var_3.b, var_3.b), vec2<u32>(var_3.b, var_3.b))), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(100077u, 1369u), vec2<u32>(var_3.b, 23036u), true), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.b, 934u), vec2<u32>(1u, 23445u), vec2<u32>(4294967295u, 0u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 71839u), vec2<u32>(var_3.b, var_3.b)))), vec2<bool>(552f <= _wgslsmith_f_op_f32(trunc(-1000f)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(global2.a.x, global2.a.xxy, global1[_wgslsmith_index_u32(~1u, 13u)], Struct_3(!select(!vec4<bool>(false, global2.a.x, global2.a.x, global2.a.x), select(global2.a, vec4<bool>(global2.a.x, global2.a.x, false, false), true), func_1(Struct_1(false, 4294967295u, global2.a.wwy, 35224i, -2147483647i), true))));
    global0 = array<vec3<u32>, 1>();
    global3 = abs(~101505u) & abs(~_wgslsmith_clamp_u32(~var_0.x, ~var_0.x, _wgslsmith_add_u32(var_0.x, var_0.x)));
    var_0 = firstTrailingBit(vec2<u32>(~43169u, ~(~var_0.x)));
    var var_1 = Struct_3(select(global2.a, global2.a, !func_1(Struct_1(global2.a.x, 4294967295u, vec3<bool>(global2.a.x, global2.a.x, global2.a.x), -41507i, u_input.a), true)));
    let var_2 = func_4(func_4(Struct_2(func_4(func_4(Struct_2(Struct_1(global2.a.x, 1u, vec3<bool>(false, global2.a.x, false), u_input.a, -2147483647i), Struct_1(false, var_0.x, global2.a.xxy, 1014i, u_input.a)))).b, func_2(var_1.a.x, Struct_1(global2.a.x, 0u, var_1.a.wyy, 25431i, 2147483647i), true, vec3<i32>(u_input.b, u_input.a, u_input.a) & vec3<i32>(u_input.a, u_input.b, 2147483647i)).a)));
    let var_3 = _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-24503i, u_input.b & u_input.b), 0i, max(select(var_2.a.d, var_2.b.d, var_1.a.x), u_input.a), u_input.b), vec4<i32>(2147483647i, ~(i32(-1i) * -1i), var_2.a.e, u_input.a)), abs(~vec4<i32>(~24898i, 13665i, var_2.b.e, u_input.a)), (~(-vec4<i32>(29259i, var_2.a.e, -65536i, -17379i)) & vec4<i32>(var_2.a.e, -95776i, 0i, var_2.a.e | var_2.b.d)) << (vec4<u32>(func_6(func_4(Struct_2(Struct_1(var_2.a.a, var_2.b.b, vec3<bool>(var_2.a.c.x, global2.a.x, false), -1i, var_2.b.e), Struct_1(false, 0u, vec3<bool>(global2.a.x, false, global2.a.x), var_2.a.e, u_input.b))).a.c.x, !vec3<bool>(var_2.a.a, true, var_2.a.a), _wgslsmith_f_op_f32(f32(-1f) * -291f), Struct_3(global2.a)).x, 4294967295u, var_2.b.b, 1u) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(var_2.a.b, 13u)], -142f)) - vec2<f32>(_wgslsmith_f_op_f32(min(-500f, -541f)), _wgslsmith_f_op_f32(305f + 328f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(327f, global1[_wgslsmith_index_u32(19389u, 13u)])))), !all(!var_2.a.c.zy))), 609f);
}

