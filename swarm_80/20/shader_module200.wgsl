struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1404f, -812f, 849f);

var<private> global1: array<vec2<f32>, 14>;

var<private> global2: array<Struct_3, 28>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_sub_vec4_i32(min(_wgslsmith_div_vec4_i32(arg_0, vec4<i32>(1i & arg_2.b.x, 2147483647i, ~arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-17981i, 1i, 1i, arg_0.x), arg_0))), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -2147483647i, arg_1.b.x, -2147483647i), arg_1.b, vec4<i32>(-2147483647i, -2147483647i, -34059i, -5204i)), vec4<i32>(-71971i, arg_0.x, -1i, -55338i)), ~vec4<i32>(-22519i, arg_0.x, arg_1.b.x, arg_0.x))), arg_0);
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1316f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-596f + _wgslsmith_f_op_f32(f32(-1f) * -226f))))), _wgslsmith_f_op_f32(f32(-1f) * -1163f)));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec4<f32> {
    global1 = array<vec2<f32>, 14>();
    global1 = array<vec2<f32>, 14>();
    global2 = array<Struct_3, 28>();
    var var_0 = vec2<f32>(global0.x, 1687f);
    let var_1 = -arg_1.b;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(-51951i, u_input.a.x, -1i, arg_0), Struct_1(arg_1.a.x, arg_1.b, global0.x, arg_1.a.x, 695f), Struct_1(arg_1.a.x, vec4<i32>(arg_0, arg_1.b.x, arg_0, 38660i), 1536f, false, global0.x), 1u)) - _wgslsmith_f_op_f32(select(485f, global0.x, arg_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1017f))), global0.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1582f, -939f, -151f, -1346f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-307f, var_0.x, -262f, global0.x)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_4) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(!(!select(arg_2.a.a.a, vec2<bool>(arg_2.a.a.a.x, arg_2.b.a.a.x), true)), vec4<i32>(_wgslsmith_dot_vec2_i32(~arg_2.a.a.b.zx, u_input.a.xx & arg_2.a.a.b.ww), 1i, firstTrailingBit(~18919i), u_input.a.x)));
    return Struct_2(!select(vec2<bool>(all(vec4<bool>(var_0.a.a.x, var_0.a.a.x, false, arg_2.b.a.a.x)), var_0.a.a.x), vec2<bool>(var_0.a.a.x, true), arg_2.a.a.a), ~min(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.b.x, var_0.a.b.x, 4525i, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(32659i, u_input.a.x, u_input.a.x, 1i), var_0.a.b)), arg_2.b.a.b));
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-830f, 407f, 1762f), vec3<f32>(-1359f, arg_1, -412f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(global0.x)), arg_1, 201f) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1360f, global0.x, -378f)))), vec3<bool>(true, true, true)))));
    global1 = array<vec2<f32>, 14>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-1595f + -336f) > _wgslsmith_f_op_f32(func_3(vec4<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), ~(-13552i), 0i, 1i), Struct_1(true, vec4<i32>(arg_0.b.x, -2266i, -6023i, 43121i), _wgslsmith_f_op_f32(sign(arg_1)), !arg_0.a.x, 1000f), Struct_1(arg_0.a.x, arg_0.b, -512f, true, _wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b, 1u), countOneBits(u_input.b)))), -(vec4<i32>(~46760i, max(2537i, arg_0.b.x), -1i, func_4(var_0, vec4<f32>(var_0.x, arg_1, 1000f, var_0.x), Struct_4(global2[_wgslsmith_index_u32(u_input.b, 28u)], global2[_wgslsmith_index_u32(u_input.b, 28u)])).b.x) & arg_0.b), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-arg_1)), any(vec4<bool>(arg_0.a.x, true, arg_0.a.x, all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(floor(-106f)));
    var var_2 = min(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b, u_input.b) | _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b), _wgslsmith_div_u32(u_input.b << (u_input.b % 32u), ~u_input.b)), min(_wgslsmith_add_u32(u_input.b, ~1u), 0u)), 0u | u_input.b);
    global0 = vec3<f32>(_wgslsmith_f_op_vec4_f32(func_2(-13467i, arg_0)).x, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1))))));
    return _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, reverseBits(var_1.b.x), (u_input.a.x >> (u_input.b % 32u)) ^ u_input.a.x, 7233i), vec4<i32>(max(var_1.b.x, _wgslsmith_div_i32(2147483647i, -13869i)), 1i, arg_0.b.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, arg_0.b.x), 8365i, 1i)) << (select(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 20399u, u_input.b, 1u), vec4<u32>(u_input.b, 728u, 4294967295u, 97523u)), (vec4<u32>(u_input.b, 14966u, 29300u, 14187u) & vec4<u32>(u_input.b, 8753u, 91052u, u_input.b)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 64275u, u_input.b), vec4<u32>(12112u, 37669u, u_input.b, u_input.b), vec4<u32>(27852u, 32784u, 0u, 52040u)) % vec4<u32>(32u)), var_1.d) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec3<f32>) -> Struct_2 {
    global2 = array<Struct_3, 28>();
    let var_0 = !arg_1;
    let var_1 = vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), global0.x);
    let var_2 = _wgslsmith_sub_i32(arg_0.x, _wgslsmith_mod_i32(2147483647i | ((arg_0.x | -2147483647i) | _wgslsmith_dot_vec2_i32(vec2<i32>(24552i, u_input.a.x), u_input.a.zy)), u_input.a.x));
    var var_3 = !(!all(!select(vec3<bool>(var_0.x, false, arg_1.x), arg_1.wyz, vec3<bool>(arg_1.x, var_0.x, var_0.x))));
    return Struct_2(vec2<bool>(any(vec3<bool>(all(vec4<bool>(false, true, arg_1.x, arg_1.x)), var_0.x, true)), true), func_5(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, arg_3.x, var_1.x) + vec3<f32>(-1683f, arg_2.x, -514f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(287f, arg_3.x, 1381f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(arg_0.x, Struct_2(var_0.xy, vec4<i32>(arg_0.x, 13671i, u_input.a.x, -39745i))))), Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(13529u, 4294967295u)), 28u)], Struct_3(Struct_2(vec2<bool>(true, var_0.x), vec4<i32>(-46190i, arg_0.x, u_input.a.x, 1i))))), _wgslsmith_f_op_f32(-arg_3.x)));
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    let var_0 = !(!vec4<bool>(true, func_1(vec3<i32>(arg_1.b.x, 2147483647i, arg_0), vec4<bool>(false, arg_1.a.x, arg_2.a.a.x, arg_1.a.x), vec3<f32>(-1981f, global0.x, 813f), _wgslsmith_f_op_vec3_f32(vec3<f32>(398f, global0.x, -550f) * vec3<f32>(1439f, -701f, global0.x))).a.x, false, true));
    let var_1 = var_0.yyy;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1143f, global0.x);
    let var_2 = _wgslsmith_mult_vec4_u32(~vec4<u32>(79541u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, 31116u, 0u), vec4<u32>(31211u, 0u, u_input.b, 1u)), u_input.b, true), ~(~u_input.b), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(26903u, u_input.b))), _wgslsmith_sub_vec4_u32(max(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b)), firstLeadingBit(vec4<u32>(32637u, u_input.b, u_input.b, 0u))), abs(vec4<u32>(0u, 11811u, 37082u, 33004u))), vec4<u32>(max(_wgslsmith_mod_u32(u_input.b, u_input.b), u_input.b), ~(~u_input.b), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(11240u, u_input.b))), 3591u)));
    var var_3 = true;
    return func_1(func_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(abs(-225f)), _wgslsmith_f_op_f32(1454f - global0.x), _wgslsmith_f_op_f32(min(global0.x, global0.x)))), Struct_4(arg_2, global2[_wgslsmith_index_u32(~4294967295u, 28u)])).b.zyx, select(vec4<bool>(var_1.x, !func_4(vec3<f32>(2349f, global0.x, global0.x), vec4<f32>(-1534f, global0.x, global0.x, global0.x), Struct_4(arg_2, arg_2)).a.x, true, !(!var_0.x)), vec4<bool>(var_1.x, false, true, true), var_0), vec3<f32>(698f, _wgslsmith_f_op_vec4_f32(func_2(arg_1.b.x, Struct_2(var_0.wx, vec4<i32>(u_input.a.x, 1i, 16406i, arg_1.b.x)))).x, -416f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(928f, _wgslsmith_f_op_f32(575f * -168f), global0.x))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(select(699f, global0.x, arg_2.a.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(336f, 318f, -1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1000f, global0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, -921f), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -998f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -896f) + global0.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-239f, 1000f, global0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, -1417f, global0.x), vec3<f32>(global0.x, global0.x, 1022f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 224f, 2340f) * vec3<f32>(-105f, -326f, 1000f))), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(1072f)), 622f, -423f))));
    let var_0 = func_6(abs(u_input.a.x), func_1(~vec3<i32>(firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, -2147483647i), vec3<i32>(29936i, -37256i, u_input.a.x)), -2147483647i), !vec4<bool>(true, false, u_input.a.x <= u_input.a.x, u_input.b == u_input.b), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-483f, 123f, global0.x))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), global0.x, -1356f)), global2[_wgslsmith_index_u32(4294967295u, 28u)]);
    let var_1 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1070f + 160f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(global0.x, 1357f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-639f, global0.x, global0.x) - vec3<f32>(global0.x, -120f, -1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-645f, global0.x, global0.x, global0.x))))), Struct_4(global2[_wgslsmith_index_u32(u_input.b, 28u)], global2[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 28u)]));
    var var_2 = !(!func_6(~u_input.a.x, func_4(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, 1308f, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1581f, -232f, -290f, 144f)), Struct_4(Struct_3(var_0), global2[_wgslsmith_index_u32(0u, 28u)])), Struct_3(Struct_2(var_1.a, vec4<i32>(var_1.b.x, 2063i, 1i, u_input.a.x)))).a.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global0.x, global0.x))))))) + global0.x);
    global2 = array<Struct_3, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(0i, var_0.b.x)), global0.x, select(~18672u, ~_wgslsmith_mod_u32(~u_input.b, u_input.b), (!var_0.a.x || true) && (1f != _wgslsmith_f_op_f32(func_3(vec4<i32>(2147483647i, 2147483647i, u_input.a.x, var_1.b.x), Struct_1(var_1.a.x, var_1.b, 1000f, true, global0.x), Struct_1(true, vec4<i32>(var_1.b.x, u_input.a.x, var_1.b.x, 0i), global0.x, false, 1810f), u_input.b)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec4_i32(-var_1.b, select(func_6(u_input.a.x, Struct_2(vec2<bool>(var_0.a.x, var_0.a.x), vec4<i32>(0i, var_1.b.x, u_input.a.x, var_0.b.x)), Struct_3(var_0)).b, vec4<i32>(var_1.b.x, var_0.b.x, -51623i, -35773i), true)), Struct_1(func_1(vec3<i32>(-2147483647i, 17024i, u_input.a.x), !vec4<bool>(var_0.a.x, var_1.a.x, var_1.a.x, var_0.a.x), vec3<f32>(global0.x, -361f, 1079f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-212f, global0.x, global0.x))).a.x, var_0.b, _wgslsmith_f_op_f32(floor(1460f)), true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), -378f))), Struct_1(!var_1.a.x, vec4<i32>(-3675i, -1i, u_input.a.x >> (1u % 32u), func_4(vec3<f32>(115f, -245f, global0.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x), Struct_4(global2[_wgslsmith_index_u32(25798u, 28u)], global2[_wgslsmith_index_u32(27012u, 28u)])).b.x), _wgslsmith_f_op_f32(543f * _wgslsmith_f_op_f32(abs(global0.x))), _wgslsmith_f_op_f32(-global0.x) > _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x))), 43750u)));
}

