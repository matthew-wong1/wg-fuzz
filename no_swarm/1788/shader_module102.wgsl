struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec4<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: vec4<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> bool {
    global1 = vec4<bool>(true, true, true, true);
    return all(!(!(!select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, false, false), global1.xyx))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    global1 = select(vec4<bool>(any(!global1.zyz), func_3(-929f, _wgslsmith_f_op_vec2_f32(arg_0.a.b.zy * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b.x, arg_1.a.b.x)))), select(true, any(global1.xz), global1.x), !any(global0[_wgslsmith_index_u32(~1u, 32u)])), vec4<bool>(!global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-228f + arg_0.a.b.x) + -393f) <= _wgslsmith_f_op_f32(-arg_0.a.b.x), select(true, any(!vec3<bool>(false, global1.x, global1.x)), func_3(arg_0.a.b.x, _wgslsmith_f_op_vec2_f32(arg_1.a.b.xy + vec2<f32>(arg_0.a.b.x, 539f)))), true), false);
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.a, u_input.a.x, 4294967295u) ^ _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a.x, 1581u), vec3<u32>(u_input.a.x, u_input.a.x, arg_1.a.a)), _wgslsmith_mult_vec3_u32(~vec3<u32>(arg_1.a.a, u_input.a.x, arg_0.a.d), vec3<u32>(98079u, u_input.a.x, 3901u) ^ vec3<u32>(8189u, arg_0.a.a, u_input.a.x))) ^ ~(~2591u), _wgslsmith_f_op_vec3_f32(arg_1.a.b * arg_1.a.b), _wgslsmith_mult_vec2_i32(abs(-vec2<i32>(arg_0.a.c.x, arg_0.a.c.x)), arg_0.a.c) >> (reverseBits(_wgslsmith_div_vec2_u32(u_input.a, u_input.a)) % vec2<u32>(32u)), ~arg_1.a.d);
    var var_1 = -arg_0.a.c.x;
    global0 = array<vec2<bool>, 32>();
    var var_2 = Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~0u | ~u_input.a.x, arg_0.a.d, 8690u), 32u)], arg_1.a.b.yx);
    return _wgslsmith_f_op_f32(f32(-1f) * -173f);
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(arg_2.a.b * vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_3, 376f)), _wgslsmith_f_op_f32(select(arg_1, arg_2.a.b.x, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1256f)), _wgslsmith_div_f32(1448f, -653f)));
    global0 = array<vec2<bool>, 32>();
    var var_1 = Struct_5(arg_0.zx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yy + vec2<f32>(-316f, -503f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, arg_1) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_2.a.b.yz))))));
    let var_2 = ~_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) ^ firstTrailingBit(4294967295u), ~15120u >> (_wgslsmith_mult_u32(u_input.a.x, arg_2.a.a) % 32u)));
    var var_3 = vec3<u32>(_wgslsmith_div_u32(max(var_2, ~u_input.a.x), var_2), u_input.a.x, 35821u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x + var_0.x) + _wgslsmith_f_op_f32(-arg_2.a.b.x)))), var_1.b.x, !global1.x)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(463f + -1680f))));
}

fn func_1() -> Struct_2 {
    global1 = select(vec4<bool>(global1.x, _wgslsmith_f_op_f32(func_4(vec3<bool>(global1.x, global1.x, global1.x), _wgslsmith_f_op_f32(sign(-140f)), Struct_2(Struct_1(u_input.a.x, vec3<f32>(377f, 1000f, -534f), vec2<i32>(-2147483647i, 0i), 24225u)), _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(4294967295u, vec3<f32>(891f, 150f, 1763f), vec2<i32>(-24408i, -2147483647i), u_input.a.x)), Struct_2(Struct_1(15379u, vec3<f32>(818f, -489f, -929f), vec2<i32>(-2198i, 1i), 8817u)))))) >= _wgslsmith_div_f32(_wgslsmith_div_f32(1222f, -341f), _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(u_input.a.x, vec3<f32>(-322f, -294f, -782f), vec2<i32>(45069i, 2147483647i), u_input.a.x)), Struct_2(Struct_1(4294967295u, vec3<f32>(-187f, -674f, -1661f), vec2<i32>(-1i, -1i), u_input.a.x))))), global1.x, all(vec2<bool>(true, false))), !vec4<bool>(!all(vec2<bool>(false, global1.x)), any(global1.xz), !any(global1.wzy), true), false);
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_u32(~0u, u_input.a.x), vec3<f32>(1f, 1f, 1f), ~vec2<i32>(i32(-1i) * -1i, firstTrailingBit(16209i)), 4294967295u));
    return Struct_2(var_0.a);
}

fn func_5(arg_0: Struct_2) -> Struct_4 {
    var var_0 = vec3<i32>(-1i) * -(~reverseBits(~vec3<i32>(17658i, arg_0.a.c.x, 0i)));
    var var_1 = select(~_wgslsmith_mult_i32(-61705i, arg_0.a.c.x) >= (i32(-1i) * -64148i), 52487u >= _wgslsmith_clamp_u32(0u, 13777u, 0u), global1.x);
    var var_2 = ~_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a.x, 1u, 4294967295u), ~vec4<u32>(0u, 97217u, u_input.a.x, arg_0.a.d), ~vec4<u32>(92937u, 0u, 4294967295u, 0u)), vec4<u32>(23868u, arg_0.a.d, ~(arg_0.a.d << (arg_0.a.a % 32u)), ~1u));
    let var_3 = abs(var_0.yx);
    var_1 = all(vec4<bool>(false, func_3(arg_0.a.b.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(arg_0.a.b.xx, arg_0.a.b.xz)))), false, !(!global1.x) || global1.x));
    return Struct_4(Struct_2(func_1().a), -53125i, !select(!(!vec4<bool>(false, true, global1.x, false)), !select(vec4<bool>(false, global1.x, false, false), vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(false, global1.x, global1.x, true)), select(!vec4<bool>(global1.x, true, global1.x, global1.x), !vec4<bool>(true, global1.x, false, true), -39775i != var_0.x)), Struct_1(~55558u, arg_0.a.b, var_0.zy, _wgslsmith_clamp_u32(abs(arg_0.a.d), ~(~26152u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a.x, arg_0.a.a), _wgslsmith_div_u32(0u, arg_0.a.a)))), 4294967295u);
}

fn func_6(arg_0: Struct_4) -> Struct_1 {
    let var_0 = ~(~vec4<u32>(firstLeadingBit(arg_0.e), 1u, arg_0.a.a.d, 0u)) | _wgslsmith_add_vec4_u32(vec4<u32>(0u, 32878u, _wgslsmith_sub_u32(49088u, abs(arg_0.a.a.d)), ~arg_0.e | _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.e, u_input.a.x, u_input.a.x), vec3<u32>(68677u, arg_0.e, arg_0.e))), ~firstLeadingBit(vec4<u32>(0u, 50964u, u_input.a.x, u_input.a.x) >> (vec4<u32>(44621u, arg_0.e, 1u, u_input.a.x) % vec4<u32>(32u))));
    var var_1 = -vec3<i32>(_wgslsmith_div_i32(-2721i, -arg_0.a.a.c.x) | countOneBits(arg_0.d.c.x), 26503i, ~(max(0i, -44859i) ^ (arg_0.a.a.c.x >> (1u % 32u))));
    let var_2 = vec4<f32>(312f, -1641f, func_5(Struct_2(arg_0.a.a)).a.a.b.x, func_5(arg_0.a).d.b.x);
    var_1 = _wgslsmith_clamp_vec3_i32(min(_wgslsmith_sub_vec3_i32((vec3<i32>(arg_0.b, 42253i, var_1.x) ^ vec3<i32>(arg_0.d.c.x, -10224i, 25398i)) << (var_0.wyx % vec3<u32>(32u)), -firstLeadingBit(vec3<i32>(var_1.x, -2147483647i, -74276i))), vec3<i32>(firstTrailingBit(2147483647i) >> (arg_0.e % 32u), -29436i, 0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(arg_0.a.a.c.x, 1254i, 9600i), vec3<i32>(_wgslsmith_sub_i32(-1i, 2147483647i), 43683i, var_1.x ^ -24057i)) | _wgslsmith_mult_vec3_i32(firstLeadingBit(~vec3<i32>(2147483647i, 1768i, 1i)), ~vec3<i32>(var_1.x, arg_0.a.a.c.x, arg_0.d.c.x) & vec3<i32>(1i, 1i, arg_0.b)), firstTrailingBit(_wgslsmith_div_vec3_i32(~(vec3<i32>(25447i, var_1.x, -26934i) ^ vec3<i32>(var_1.x, -21020i, -15347i)), select(~vec3<i32>(67811i, var_1.x, arg_0.d.c.x), vec3<i32>(arg_0.a.a.c.x, -20772i, -18481i) << (vec3<u32>(16727u, 869u, 1u) % vec3<u32>(32u)), global1.x && true))));
    var_1 = ~vec3<i32>(var_1.x, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_1.x, -21874i, -1320i, -1i)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.d.c.x, var_1.x, arg_0.b, var_1.x), vec4<i32>(var_1.x, 11302i, arg_0.a.a.c.x, var_1.x))) ^ var_1.x, 1i);
    return Struct_1(~(~0u), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -1269f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(225f + -440f))) + arg_0.d.b), vec2<i32>(countOneBits(~(~1i)), -abs(-54059i)), firstLeadingBit(func_1().a.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_1()));
    let var_1 = ~(~(~_wgslsmith_clamp_u32(8577u, u_input.a.x, abs(u_input.a.x))));
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(abs(-(~var_0.c.x)), i32(-1i) * -_wgslsmith_sub_i32(var_0.c.x, 1i), var_0.c.x), vec3<i32>(var_0.c.x, var_0.c.x, func_5(Struct_2(var_0)).b) & reverseBits(vec3<i32>(var_0.c.x, -17476i, var_0.c.x)));
    let var_3 = _wgslsmith_mod_u32(~47949u, 59331u);
    var var_4 = 38068i;
    var_4 = ~min(_wgslsmith_clamp_i32(16335i, ~var_0.c.x, max(var_2.x, i32(-1i) * -8859i)), var_2.x);
    var var_5 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(861f, _wgslsmith_f_op_f32(1411f + 519f), var_0.b.x, -1000f)))))));
    var_4 = ~var_0.c.x;
    var_4 = 1i << (_wgslsmith_sub_u32(~0u, ~(u_input.a.x ^ 56262u) | _wgslsmith_dot_vec2_u32(max(u_input.a, vec2<u32>(1u, var_0.a)), ~u_input.a)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.c.x, var_0.c.x, var_0.c.x, -1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, -13332i, -1i, var_0.c.x), vec4<i32>(var_0.c.x, var_0.c.x, var_2.x, -10197i), vec4<i32>(-1i, 0i, var_2.x, var_2.x))) ^ vec4<i32>(var_2.x, -1i, -var_0.c.x, ~1i)), max(_wgslsmith_clamp_vec2_i32(var_2.yx >> (u_input.a % vec2<u32>(32u)), var_2.yz, min(_wgslsmith_add_vec2_i32(vec2<i32>(1i, var_0.c.x), vec2<i32>(var_0.c.x, 2147483647i)), -var_2.zy)), _wgslsmith_mult_vec2_i32(func_1().a.c, func_1().a.c)), abs(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, var_2.x), var_0.c.x) & ~var_2.x), _wgslsmith_mult_i32(select(var_2.x, _wgslsmith_add_i32(-25528i, -1i), global1.x & !global1.x), -1i));
}

