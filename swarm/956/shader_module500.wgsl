struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec3<bool>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
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

var<private> global0: array<vec3<u32>, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = Struct_2(reverseBits(reverseBits(vec3<i32>(select(21113i, 2147483647i, true), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), abs(1i)))), abs(-(u_input.b.x | u_input.b.x)) | firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(10055i, 1i, u_input.b.x, u_input.b.x), u_input.b))), select(vec3<bool>(true, true, any(vec2<bool>(true, true))), !vec3<bool>(true, all(vec4<bool>(true, true, true, false)), false), false), select(true, true, true), Struct_1(firstLeadingBit(u_input.b.x) >= min(i32(-1i) * -2147483647i, u_input.b.x), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(786i, u_input.b.x, -2147483647i, -49069i)), abs(vec4<i32>(2147483647i, u_input.b.x, 50291i, u_input.b.x)) | u_input.b), -508f, u_input.a.zx, all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(false, true)))));
    var var_1 = abs(_wgslsmith_div_vec3_u32(global0[_wgslsmith_index_u32(26981u, 16u)], vec3<u32>(u_input.a.x, arg_0, 4261u)));
    var var_2 = 1i >> (abs(_wgslsmith_clamp_u32(var_0.e.d.x, 1u, var_0.e.d.x)) % 32u);
    let var_3 = var_0.e;
    let var_4 = abs(firstLeadingBit(countOneBits(~max(var_3.d, var_3.d))));
    return -(~_wgslsmith_sub_i32(var_3.b, ~_wgslsmith_sub_i32(0i, 2147483647i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<bool>) -> f32 {
    global0 = array<vec3<u32>, 16>();
    global0 = array<vec3<u32>, 16>();
    var var_0 = vec3<i32>(arg_0.b, u_input.b.x ^ arg_0.b, select(func_3(~(~32518u)), arg_0.b, arg_0.a));
    var var_1 = select(firstLeadingBit(_wgslsmith_div_vec3_i32(abs(vec3<i32>(u_input.b.x, 2147483647i, var_0.x)), reverseBits(u_input.b.xyz)) << ((firstTrailingBit(vec3<u32>(40655u, arg_0.d.x, 1u)) ^ firstLeadingBit(global0[_wgslsmith_index_u32(0u, 16u)])) % vec3<u32>(32u))), u_input.b.xyy, !vec3<bool>(true, any(arg_2) | arg_0.a, any(arg_2)));
    var_0 = -_wgslsmith_clamp_vec3_i32(-vec3<i32>(7275i, _wgslsmith_dot_vec2_i32(var_0.xx, var_1.zy), -2126i), -vec3<i32>(~46246i, var_0.x | 41874i, 1i), reverseBits(u_input.b.wyw));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1516f), -752f));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>) -> vec3<bool> {
    var var_0 = max(_wgslsmith_add_vec4_u32(vec4<u32>(max(1486u, ~u_input.a.x), 43683u, abs(1u), 31808u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, u_input.a.x, ~53297u, 1u), _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_1.x, 0u, arg_1.x, 14099u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, 15715u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.a.x))))), vec4<u32>(10341u, u_input.a.x, ~arg_1.x, 4294967295u));
    var var_1 = ~u_input.b.x;
    let var_2 = Struct_1(any(vec2<bool>(true, any(vec4<bool>(true, false, true, false)))), i32(-1i) * -18336i, 1645f, u_input.a.zx, false);
    let var_3 = max(arg_1, ~vec3<u32>(~(var_2.d.x | var_2.d.x), arg_1.x, 0u));
    var var_4 = u_input.b.x;
    return select(select(select(vec3<bool>(true, any(vec3<bool>(var_2.e, var_2.a, var_2.a)), false), select(!vec3<bool>(var_2.e, var_2.e, var_2.e), vec3<bool>(false, true, true), var_2.e), var_2.e), vec3<bool>(false, var_2.e, var_2.e), !select(select(vec3<bool>(var_2.a, false, var_2.e), vec3<bool>(false, false, var_2.e), vec3<bool>(true, true, var_2.a)), select(vec3<bool>(var_2.e, var_2.a, true), vec3<bool>(true, var_2.a, true), vec3<bool>(true, var_2.a, true)), true)), vec3<bool>(709f == var_2.c, var_2.a, true && (false || var_2.a)), !select(select(!vec3<bool>(var_2.a, var_2.a, var_2.a), vec3<bool>(var_2.e, var_2.a, var_2.a), !vec3<bool>(false, var_2.a, var_2.a)), vec3<bool>(true, true, select(true, var_2.a, var_2.e)), true));
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    global0 = array<vec3<u32>, 16>();
    var var_0 = Struct_1(false, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(~u_input.b.x, 41125i), ~(-38356i), _wgslsmith_add_i32(u_input.b.x, 0i)), arg_2.e.c, vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_3.e.d.x, u_input.a.x) ^ _wgslsmith_mod_u32(arg_2.e.d.x, arg_2.e.d.x), 1u), arg_2.e.d.x), true);
    var var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(0i, ~(~arg_1.x), select(-48185i, min(-26290i, -2147483647i), any(select(arg_3.c, arg_3.c, arg_0))), arg_2.a.x), ~(-(~abs(vec4<i32>(var_0.b, arg_2.e.b, arg_3.e.b, u_input.b.x)))));
    let var_2 = vec4<bool>(any(vec2<bool>(arg_3.d, true)), true, false, var_0.b < _wgslsmith_div_i32(arg_2.a.x, ~(-var_0.b)));
    let var_3 = Struct_2(_wgslsmith_clamp_vec3_i32(~(~u_input.b.wzx), vec3<i32>(max(-28322i, 20110i), -14107i, min(-12416i, arg_1.x)), vec3<i32>(firstTrailingBit(-2147483647i), firstLeadingBit(var_1.x), 10144i >> (arg_3.e.d.x % 32u))) >> (vec3<u32>(_wgslsmith_add_u32(~1u, arg_3.e.d.x), var_0.d.x, 1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(63247u, u_input.a.x, 37252u), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)) % 32u)) % vec3<u32>(32u)), 2147483647i, vec3<bool>(arg_0, var_0.d.x == _wgslsmith_sub_u32(firstLeadingBit(var_0.d.x), countOneBits(u_input.a.x)), var_2.x), arg_2.e.e, arg_2.e);
    return arg_3;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = func_5(!arg_0.e.a, -arg_0.a, Struct_2(min(u_input.b.xzw, abs(~vec3<i32>(-2147483647i, -2147483647i, -1i))), ~min(-5058i, -198i | u_input.b.x), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0.e, vec4<f32>(arg_0.e.c, arg_2.x, -278f, arg_2.x), vec3<bool>(arg_0.d, false, false)))), reverseBits(abs(vec3<u32>(u_input.a.x, 4294967295u, 0u)))), arg_0.e.d.x > 7677u, Struct_1(func_4(_wgslsmith_f_op_f32(floor(arg_0.e.c)), global0[_wgslsmith_index_u32(u_input.a.x, 16u)] << (vec3<u32>(arg_0.e.d.x, 24583u, 0u) % vec3<u32>(32u))).x, abs(u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_0.e.c)), arg_0.e.d, arg_0.e.e)), arg_0);
    global0 = array<vec3<u32>, 16>();
    let var_1 = ~arg_1.zx;
    let var_2 = ~_wgslsmith_dot_vec2_u32(~var_1, var_1);
    let var_3 = any(select(vec4<bool>(!arg_0.c.x, var_0.c.x | (true == var_0.e.e), func_4(-175f, ~vec3<u32>(arg_0.e.d.x, var_0.e.d.x, 4294967295u)).x, true), vec4<bool>(var_0.e.e, !(arg_0.e.a && false), func_4(_wgslsmith_f_op_f32(step(arg_2.x, 886f)), ~arg_1).x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(1u, 0u)) < arg_1.x), !select(vec4<bool>(true, var_0.c.x, var_0.d, var_0.c.x), select(vec4<bool>(arg_0.c.x, true, false, var_0.c.x), vec4<bool>(false, arg_0.d, false, false), vec4<bool>(var_0.c.x, false, false, false)), true)));
    return arg_0.e;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1322f + _wgslsmith_f_op_f32(max(511f, _wgslsmith_f_op_f32(f32(-1f) * -539f)))));
    let var_1 = Struct_2(_wgslsmith_mod_vec3_i32(u_input.b.zzx, vec3<i32>(38823i ^ _wgslsmith_mod_i32(arg_2.b, -1i), select(24748i & arg_1.e.b, _wgslsmith_add_i32(1433i, arg_1.b), arg_0.a), _wgslsmith_dot_vec4_i32(abs(u_input.b), -vec4<i32>(-2147483647i, 15354i, 0i, u_input.b.x)))), -82919i, !vec3<bool>(true, all(!arg_1.c), true), !arg_2.a, func_5(func_5(false, vec3<i32>(arg_2.b, arg_3.e.b, firstTrailingBit(arg_3.a.x)), arg_3, arg_3).d, arg_1.a, Struct_2(_wgslsmith_sub_vec3_i32(arg_1.a, u_input.b.zzy), _wgslsmith_mod_i32(arg_2.b, arg_0.b), select(vec3<bool>(true, arg_3.d, false), vec3<bool>(true, arg_2.e, arg_1.e.e), !arg_3.c), func_4(arg_1.e.c, vec3<u32>(arg_3.e.d.x, 75018u, arg_3.e.d.x)).x || arg_1.d, func_5(true || arg_3.c.x, -arg_3.a, func_5(arg_3.d, vec3<i32>(u_input.b.x, -2518i, arg_0.b), arg_1, Struct_2(arg_3.a, 2147483647i, vec3<bool>(false, false, arg_2.e), arg_1.d, Struct_1(true, arg_1.a.x, var_0, arg_3.e.d, arg_3.d))), func_5(true, arg_3.a, arg_1, arg_3)).e), func_5(func_5(true, arg_3.a, func_5(true, u_input.b.wxy, Struct_2(arg_1.a, arg_1.a.x, vec3<bool>(arg_3.e.a, false, true), arg_0.e, arg_0), arg_3), func_5(false, arg_3.a, Struct_2(u_input.b.zww, -12971i, vec3<bool>(true, arg_0.e, true), true, Struct_1(false, -14465i, -2183f, arg_3.e.d, true)), arg_3)).d, _wgslsmith_add_vec3_i32(arg_1.a, vec3<i32>(arg_0.b, 28317i, arg_1.a.x)) | min(vec3<i32>(1i, arg_3.b, -1i), vec3<i32>(-20202i, arg_1.b, u_input.b.x)), func_5(true | arg_0.e, vec3<i32>(2147483647i, 1i, arg_0.b), Struct_2(arg_3.a, 33299i, arg_3.c, true, arg_3.e), Struct_2(arg_1.a, 19821i, vec3<bool>(arg_3.c.x, arg_2.e, true), false, arg_0)), func_5(arg_2.a, ~vec3<i32>(-43845i, arg_3.a.x, -12264i), arg_1, func_5(arg_3.d, arg_1.a, Struct_2(vec3<i32>(arg_1.a.x, arg_3.b, arg_1.a.x), arg_0.b, vec3<bool>(false, true, arg_0.e), false, Struct_1(false, 42826i, -1209f, vec2<u32>(1u, 37307u), false)), Struct_2(u_input.b.xxx, 0i, arg_3.c, arg_2.a, Struct_1(arg_1.e.a, arg_2.b, var_0, arg_2.d, arg_2.a)))))).e);
    var var_2 = abs(vec3<u32>(4294967295u, 0u, 34280u));
    var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(~0u, u_input.a.x >> (arg_1.e.d.x % 32u), 37618u), global0[_wgslsmith_index_u32(abs(4294967295u), 16u)]);
    var var_3 = vec2<u32>(firstTrailingBit(1u), 55340u);
    return _wgslsmith_f_op_f32(-arg_1.e.c) >= _wgslsmith_f_op_f32(-func_1(Struct_2(_wgslsmith_div_vec3_i32(arg_3.a, var_1.a), ~arg_3.a.x, !vec3<bool>(arg_2.e, true, true), !arg_1.c.x, Struct_1(false, u_input.b.x, 272f, vec2<u32>(arg_1.e.d.x, var_1.e.d.x), false)), global0[_wgslsmith_index_u32(var_3.x << (1u % 32u), 16u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.e.c, 557f, arg_3.e.c, -1374f))).c);
}

fn func_7(arg_0: vec4<i32>, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = !func_5(!arg_1.x, arg_0.zwz, Struct_2(~vec3<i32>(arg_0.x, u_input.b.x, 2147483647i) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(101028u, 4294967295u, u_input.a.x), global0[_wgslsmith_index_u32(1199u, 16u)]) % vec3<u32>(32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(-19364i, u_input.b.x), arg_0.zz) | 3497i, vec3<bool>(true, true, true), !(!arg_1.x), func_1(Struct_2(vec3<i32>(2147483647i, 10169i, u_input.b.x), 1i, vec3<bool>(arg_1.x, arg_1.x, false), arg_1.x, Struct_1(true, 42204i, 579f, vec2<u32>(0u, 17976u), arg_1.x)), countOneBits(u_input.a), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 304f, -196f, 510f))))), Struct_2(u_input.b.zwy, select(_wgslsmith_sub_i32(0i, arg_0.x), _wgslsmith_mod_i32(arg_0.x, -65641i), false), arg_1, ~33201u > u_input.a.x, func_5(false, ~vec3<i32>(-1i, -11550i, u_input.b.x), Struct_2(u_input.b.zyy, arg_0.x, vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.x, Struct_1(true, u_input.b.x, -264f, vec2<u32>(0u, 4294967295u), false)), Struct_2(vec3<i32>(u_input.b.x, -2147483647i, 24433i), arg_0.x, vec3<bool>(false, true, false), true, Struct_1(arg_1.x, 0i, 1661f, u_input.a.yz, arg_1.x))).e)).c.xz;
    let var_1 = false;
    let var_2 = firstTrailingBit(i32(-1i) * -(~5820i));
    let var_3 = Struct_1(arg_0.x >= -2147483647i, 0i, 742f, ~_wgslsmith_mod_vec2_u32(u_input.a.xz >> (u_input.a.xy % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(u_input.a.yz, u_input.a.zy)) << (~u_input.a.xx % vec2<u32>(32u)), !any(select(select(arg_1.zy, vec2<bool>(arg_1.x, var_1), false), select(arg_1.yz, vec2<bool>(true, arg_1.x), var_1), arg_1.xz)));
    var_0 = arg_1.yy;
    return func_5(true, u_input.b.zyw, Struct_2(vec3<i32>(u_input.b.x, var_2, -var_3.b >> (u_input.a.x % 32u)), ~firstLeadingBit(~arg_0.x), vec3<bool>(false, func_4(var_3.c, ~global0[_wgslsmith_index_u32(u_input.a.x, 16u)]).x, func_5(true, ~arg_0.wwz, Struct_2(u_input.b.zyx, arg_0.x, arg_1, var_1, var_3), func_5(false, arg_0.yzw, Struct_2(vec3<i32>(-1i, -38631i, 6806i), -74785i, arg_1, false, Struct_1(true, var_3.b, var_3.c, vec2<u32>(2871u, 0u), arg_1.x)), Struct_2(vec3<i32>(-2147483647i, -1i, -10758i), var_3.b, vec3<bool>(false, true, true), true, var_3))).e.e), true, Struct_1(any(!vec4<bool>(false, true, var_3.e, arg_1.x)), 65620i, var_3.c, vec2<u32>(u_input.a.x, ~u_input.a.x), select(u_input.b.x <= 1i, arg_1.x && true, func_4(-382f, u_input.a).x))), func_5(false, u_input.b.wyy, func_5(true, select(arg_0.yyy | vec3<i32>(-2147483647i, -10808i, 45129i), arg_0.xzx, arg_1.x), func_5(true, _wgslsmith_mult_vec3_i32(arg_0.wzy, u_input.b.zyy), Struct_2(u_input.b.zzy, -1i, arg_1, false, Struct_1(true, u_input.b.x, 1745f, u_input.a.yy, false)), Struct_2(arg_0.zyw, var_2, vec3<bool>(var_3.e, var_1, var_0.x), true, Struct_1(false, 19432i, var_3.c, u_input.a.xx, var_3.e))), func_5(var_0.x, vec3<i32>(0i, -1i, u_input.b.x), func_5(var_0.x, vec3<i32>(0i, u_input.b.x, 1i), Struct_2(vec3<i32>(-2134i, arg_0.x, -1i), 0i, arg_1, var_0.x, var_3), Struct_2(u_input.b.yyw, -1867i, vec3<bool>(true, arg_1.x, true), arg_1.x, var_3)), func_5(arg_1.x, arg_0.wzz, Struct_2(vec3<i32>(-2147483647i, var_3.b, u_input.b.x), 9613i, arg_1, false, var_3), Struct_2(vec3<i32>(var_2, -2147483647i, 24496i), arg_0.x, vec3<bool>(var_1, true, true), var_0.x, Struct_1(true, -3785i, -482f, vec2<u32>(45811u, 4294967295u), false))))), Struct_2(countOneBits(vec3<i32>(var_3.b, var_3.b, u_input.b.x)), -23579i, func_5(59846u != var_3.d.x, -arg_0.wwx, Struct_2(vec3<i32>(var_3.b, var_2, -27330i), u_input.b.x, arg_1, var_1, Struct_1(var_1, 1867i, 920f, var_3.d, false)), func_5(var_0.x, vec3<i32>(u_input.b.x, -30737i, var_3.b), Struct_2(vec3<i32>(var_3.b, -2147483647i, -48146i), 15431i, vec3<bool>(var_3.a, true, arg_1.x), false, var_3), Struct_2(vec3<i32>(0i, arg_0.x, var_3.b), var_2, arg_1, true, Struct_1(false, var_3.b, -209f, vec2<u32>(63633u, 26616u), var_0.x)))).c, true, func_5(!var_3.e, arg_0.yyy, func_5(var_3.e, vec3<i32>(1i, 2147483647i, var_3.b), Struct_2(u_input.b.yyw, 0i, arg_1, true, var_3), Struct_2(arg_0.zyx, arg_0.x, arg_1, true, var_3)), Struct_2(u_input.b.yzw, 17702i, vec3<bool>(var_3.a, false, var_0.x), true, Struct_1(false, -30631i, -1281f, var_3.d, true))).e)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 16>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(533f - 1876f), _wgslsmith_f_op_f32(ceil(-1464f)), true))))));
    var var_1 = func_7(_wgslsmith_mult_vec4_i32(u_input.b, u_input.b), vec3<bool>(!func_6(func_1(Struct_2(vec3<i32>(u_input.b.x, -2147483647i, 18207i), u_input.b.x, vec3<bool>(false, false, false), false, Struct_1(true, u_input.b.x, 218f, u_input.a.yz, false)), vec3<u32>(u_input.a.x, 35071u, 25478u), vec4<f32>(1575f, var_0, -617f, -289f)), Struct_2(vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), 2147483647i, vec3<bool>(true, true, false), false, Struct_1(true, u_input.b.x, var_0, vec2<u32>(u_input.a.x, 4294967295u), true)), func_1(Struct_2(vec3<i32>(-23123i, u_input.b.x, u_input.b.x), -2147483647i, vec3<bool>(false, true, true), false, Struct_1(false, u_input.b.x, var_0, vec2<u32>(u_input.a.x, u_input.a.x), true)), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec4<f32>(787f, var_0, -308f, -770f)), Struct_2(vec3<i32>(u_input.b.x, 27215i, 2147483647i), u_input.b.x, vec3<bool>(true, false, true), false, Struct_1(true, 1i, var_0, u_input.a.xx, true))), !any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true))));
    var_1 = func_5(true, _wgslsmith_add_vec3_i32(countOneBits(var_1.a), var_1.a), func_5(func_7(vec4<i32>(-1i, var_1.b, -var_1.e.b, ~u_input.b.x), vec3<bool>(false, true, func_5(true, vec3<i32>(-59556i, 0i, 1i), Struct_2(u_input.b.zxw, var_1.b, var_1.c, true, var_1.e), Struct_2(vec3<i32>(u_input.b.x, var_1.a.x, u_input.b.x), 1i, vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x), var_1.c.x, var_1.e)).e.a)).e.e, abs(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(u_input.b.x, -1i, u_input.b.x)), -vec3<i32>(-2147483647i, 2147483647i, -1i))), func_7(vec4<i32>(func_1(Struct_2(vec3<i32>(-2791i, -2147483647i, -1i), 1i, vec3<bool>(var_1.c.x, var_1.e.a, var_1.c.x), false, var_1.e), vec3<u32>(34310u, u_input.a.x, var_1.e.d.x), vec4<f32>(var_0, var_1.e.c, var_1.e.c, var_1.e.c)).b, u_input.b.x, 1i, var_1.b), var_1.c), func_5(func_6(Struct_1(true, -49978i, var_1.e.c, var_1.e.d, true), Struct_2(var_1.a, 59861i, vec3<bool>(true, false, var_1.d), var_1.e.a, var_1.e), var_1.e, Struct_2(vec3<i32>(0i, 0i, var_1.b), var_1.e.b, vec3<bool>(true, true, var_1.c.x), true, var_1.e)) && true, min(-var_1.a, _wgslsmith_div_vec3_i32(u_input.b.zzx, var_1.a)), func_7(min(vec4<i32>(22594i, var_1.e.b, -37835i, var_1.e.b), vec4<i32>(u_input.b.x, var_1.b, u_input.b.x, u_input.b.x)), !var_1.c), Struct_2(-vec3<i32>(2974i, -25649i, u_input.b.x), u_input.b.x, !vec3<bool>(false, var_1.c.x, true), true, var_1.e))), Struct_2(_wgslsmith_mult_vec3_i32(-var_1.a, var_1.a), -reverseBits(u_input.b.x ^ -2147483647i), select(vec3<bool>(any(vec4<bool>(var_1.e.a, true, true, var_1.c.x)), select(var_1.c.x, false, false), func_5(var_1.c.x, vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), Struct_2(vec3<i32>(2147483647i, 24809i, -5731i), -13577i, var_1.c, true, var_1.e), Struct_2(var_1.a, var_1.b, vec3<bool>(true, false, var_1.c.x), false, Struct_1(var_1.e.e, var_1.b, -1028f, vec2<u32>(40807u, 1u), var_1.c.x))).c.x), vec3<bool>(false, false, var_1.d), !var_1.d), func_5(var_1.e.a, u_input.b.wxz, func_5(var_1.c.x, vec3<i32>(u_input.b.x, var_1.a.x, u_input.b.x) << (global0[_wgslsmith_index_u32(55055u, 16u)] % vec3<u32>(32u)), Struct_2(var_1.a, var_1.a.x, var_1.c, true, Struct_1(true, -5425i, var_1.e.c, u_input.a.xx, var_1.e.e)), func_5(true, var_1.a, Struct_2(var_1.a, 0i, vec3<bool>(true, var_1.c.x, var_1.d), false, Struct_1(false, u_input.b.x, var_1.e.c, vec2<u32>(u_input.a.x, u_input.a.x), var_1.e.a)), Struct_2(vec3<i32>(27233i, 0i, var_1.e.b), u_input.b.x, vec3<bool>(false, true, var_1.e.a), true, Struct_1(var_1.d, var_1.b, var_0, vec2<u32>(37988u, var_1.e.d.x), var_1.d)))), func_7(vec4<i32>(u_input.b.x, var_1.b, -1i, -1i), !var_1.c)).e.e, Struct_1(!(!var_1.c.x), -2147483647i, -1167f, var_1.e.d, true)));
    let var_2 = var_1.c.x;
    global0 = array<vec3<u32>, 16>();
    global0 = array<vec3<u32>, 16>();
    var var_3 = var_1.e.a;
    var var_4 = Struct_2(~_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(var_1.a.x, 2147483647i, -2147483647i)), ~var_1.a, var_1.a), _wgslsmith_mult_vec3_i32(var_1.a, u_input.b.xwz)), 0i, vec3<bool>(!(!func_4(var_1.e.c, global0[_wgslsmith_index_u32(u_input.a.x, 16u)]).x), any(!select(vec4<bool>(false, true, false, false), vec4<bool>(var_1.c.x, var_1.e.a, var_1.e.a, true), vec4<bool>(var_1.e.a, var_1.d, false, var_1.c.x))), !var_1.e.a), var_1.e.d.x != countOneBits(_wgslsmith_mult_u32(max(u_input.a.x, 16364u), 0u)), Struct_1(false, -_wgslsmith_dot_vec4_i32(vec4<i32>(7214i, u_input.b.x, u_input.b.x, 1i), select(vec4<i32>(93686i, 1i, -15778i, var_1.e.b), vec4<i32>(1i, var_1.e.b, 1i, -26006i), var_1.d)), func_1(Struct_2(abs(u_input.b.xxz), -1i, func_5(false, vec3<i32>(u_input.b.x, -51156i, 1i), Struct_2(var_1.a, u_input.b.x, vec3<bool>(false, false, var_1.d), var_1.e.e, Struct_1(var_1.e.a, u_input.b.x, var_1.e.c, u_input.a.yz, var_1.e.e)), Struct_2(u_input.b.wwx, var_1.a.x, var_1.c, var_1.e.e, Struct_1(false, 1i, -354f, vec2<u32>(u_input.a.x, 24140u), false))).c, true, var_1.e), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_1.e.d.x, u_input.a.x), u_input.a), global0[_wgslsmith_index_u32(~59486u, 16u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.c, 439f, 975f, var_1.e.c) + vec4<f32>(-1271f, var_0, 248f, 1000f)))).c, _wgslsmith_div_vec2_u32(vec2<u32>(select(u_input.a.x, 0u, var_1.e.a), var_1.e.d.x), vec2<u32>(var_1.e.d.x & 4294967295u, reverseBits(u_input.a.x))), all(func_7(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, -5103i, -37703i), u_input.b), !vec3<bool>(true, var_1.c.x, var_1.c.x)).c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(max((u_input.a.x >> (var_4.e.d.x % 32u)) << (var_4.e.d.x % 32u), var_4.e.d.x), ~(~(~21379u))));
}

