struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<u32> = vec4<u32>(42539u, 1u, 4294967295u, 69831u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: vec2<bool>, arg_3: vec3<bool>) -> bool {
    global0 = ~45035u;
    var var_0 = Struct_3(vec2<bool>(any(!(!arg_2)), arg_2.x), Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.c, 2147483647i, -25447i) ^ max(vec4<i32>(50225i, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, -2147483647i, u_input.c, u_input.c)), countOneBits(vec4<i32>(2147483647i, -30362i, 8306i, -11979i))), !arg_3, Struct_1(vec2<bool>(false, any(vec2<bool>(arg_3.x, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1, -231f), vec2<f32>(arg_1, arg_1)))), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(arg_0.a.x, 0u, global1.x)), vec3<u32>(5345u, 46181u, arg_0.a.x)), arg_0.a.x, vec2<f32>(1000f, _wgslsmith_f_op_f32(min(-678f, arg_1))))), false, arg_1);
    var_0 = Struct_3(select(vec2<bool>(all(vec4<bool>(arg_2.x, true, false, true)), arg_2.x != true), arg_2, var_0.b.b.x && false), Struct_2(-vec4<i32>(var_0.b.a.x, -2147483647i, _wgslsmith_clamp_i32(var_0.b.a.x, u_input.c, var_0.b.a.x), firstLeadingBit(var_0.b.a.x)), var_0.b.b, Struct_1(arg_2, vec2<f32>(_wgslsmith_f_op_f32(trunc(-1686f)), _wgslsmith_f_op_f32(ceil(arg_1))), ~(~var_0.b.c.c), 4294967295u, var_0.b.c.e)), true, var_0.d);
    var_0 = Struct_3(!select(!arg_2, select(vec2<bool>(arg_3.x, arg_2.x), select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(true, false), true), !var_0.c), any(vec4<bool>(false, var_0.c, arg_3.x, arg_2.x)) & true), var_0.b, arg_3.x, arg_1);
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 907f, var_0.b.c.b.x) - vec3<f32>(-1417f, 258f, -1342f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.c.e.x, var_0.d, arg_1)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, arg_1, var_0.b.c.e.x))), var_0.b.b)), vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(1443f + 259f), _wgslsmith_f_op_f32(floor(-277f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(620f, -216f, var_0.d) - vec3<f32>(698f, var_0.d, -389f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -539f, -1000f)), all(vec4<bool>(arg_2.x, true, arg_3.x, true)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 1015f, -1000f) - vec3<f32>(-1444f, 396f, -1563f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(348f, var_0.d, arg_1) - vec3<f32>(270f, -1000f, var_0.d)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.c.b.x), _wgslsmith_f_op_f32(-890f - 1000f), !arg_2.x))))));
    return any(arg_3);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: u32) -> Struct_2 {
    let var_0 = select(vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), false)) && true, (~u_input.a == 1u) && true, all(vec4<bool>(true, true, true, true)), true), vec4<bool>(true, true, true, true), !select(func_3(Struct_4(vec2<u32>(0u, global1.x)), -1234f, select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)), 11604u < arg_2, true));
    global0 = _wgslsmith_div_u32(~(~_wgslsmith_div_u32(abs(25666u), arg_2)), u_input.a);
    var var_1 = any(!vec2<bool>(var_0.x, true));
    var var_2 = Struct_4(countOneBits(~vec2<u32>(34681u, _wgslsmith_dot_vec3_u32(global1.wyx, vec3<u32>(10292u, 25490u, 12841u)))));
    global0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(global1.x >> (~var_2.a.x % 32u), 45879u), select(u_input.b, u_input.a, any(var_0.xyw)), _wgslsmith_mod_u32(~u_input.b, 1u)), ~global1.zyw);
    return Struct_2(vec4<i32>(~(-u_input.c), ~reverseBits(-1i), firstTrailingBit(28256i) ^ abs(u_input.c), ~u_input.c & (arg_0.x ^ -2554i)) ^ _wgslsmith_add_vec4_i32(-arg_0, _wgslsmith_add_vec4_i32(abs(vec4<i32>(arg_0.x, u_input.c, arg_0.x, u_input.c)), arg_0)), var_0.zww, Struct_1(select(select(var_0.zw, !vec2<bool>(var_0.x, var_0.x), true), var_0.wy, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 456f) + vec2<f32>(251f, arg_1)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-416f, arg_1), vec2<f32>(arg_1, -2038f), false)))), _wgslsmith_add_vec3_u32(max(~global1.yzw, _wgslsmith_clamp_vec3_u32(global1.zwy, vec3<u32>(var_2.a.x, u_input.b, 1u), vec3<u32>(var_2.a.x, 103804u, 8726u))), firstLeadingBit(~global1.zwx)), 29055u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-1378f)), _wgslsmith_f_op_f32(f32(-1f) * -230f)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: f32) -> Struct_2 {
    let var_0 = ~max(vec3<i32>(u_input.c, min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -48859i, 23310i), vec3<i32>(0i, u_input.c, u_input.c)), 2147483647i & u_input.c), -u_input.c ^ -14527i), abs(vec3<i32>(u_input.c, 34367i, u_input.c) | (vec3<i32>(u_input.c, -51123i, -33346i) ^ vec3<i32>(u_input.c, u_input.c, u_input.c))));
    let var_1 = func_2(vec4<i32>(max(0i, u_input.c), _wgslsmith_sub_i32(i32(-1i) * -548i, u_input.c), var_0.x, abs(1i)), 333f, 4294967295u);
    let var_2 = Struct_4(_wgslsmith_div_vec2_u32(arg_0.xy, ~(~_wgslsmith_div_vec2_u32(var_1.c.c.zy, arg_0.zy))));
    var var_3 = Struct_4(vec2<u32>((global1.x | ~4294967295u) >> (var_2.a.x % 32u), 31648u));
    let var_4 = func_2(var_1.a << (~vec4<u32>(4294967295u, _wgslsmith_mod_u32(var_1.c.d, var_1.c.d), var_1.c.d, ~32044u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + var_1.c.b.x) + _wgslsmith_f_op_f32(-1913f * -695f)) * -1095f), countOneBits(min(countOneBits(~var_2.a.x), _wgslsmith_add_u32(87613u, var_3.a.x)))).b;
    return var_1;
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = func_1(vec4<u32>(~firstTrailingBit(abs(36780u)), ~(1u << (_wgslsmith_add_u32(global1.x, arg_2.b.c.d) % 32u)), _wgslsmith_dot_vec3_u32(countOneBits(arg_2.b.c.c), vec3<u32>(u_input.b, arg_0, arg_2.b.c.d)) & _wgslsmith_dot_vec3_u32(global1.zyw, ~vec3<u32>(27116u, 34723u, 0u)), countOneBits(90587u)), !arg_2.a, select(select(vec4<bool>(global1.x >= u_input.b, -140f == arg_2.d, true, true), select(!vec4<bool>(arg_2.c, arg_2.b.b.x, false, true), !vec4<bool>(arg_2.a.x, arg_2.b.c.a.x, arg_2.a.x, arg_2.b.c.a.x), any(vec3<bool>(false, arg_2.c, arg_2.c))), vec4<bool>(true, true, true, true)), select(vec4<bool>(arg_2.a.x, arg_2.b.c.a.x, false, any(vec2<bool>(arg_2.b.c.a.x, false))), select(select(vec4<bool>(true, arg_2.a.x, arg_2.b.c.a.x, true), vec4<bool>(false, arg_2.c, arg_2.c, true), vec4<bool>(arg_2.b.c.a.x, arg_2.c, arg_2.a.x, true)), select(vec4<bool>(true, true, arg_2.a.x, true), vec4<bool>(arg_2.c, false, arg_2.c, false), true), all(arg_2.b.b)), select(vec4<bool>(arg_2.a.x, arg_2.c, false, arg_2.c), vec4<bool>(true, true, arg_2.a.x, false), !vec4<bool>(arg_2.b.c.a.x, arg_2.b.c.a.x, arg_2.a.x, true))), !vec4<bool>(true, true, !arg_2.c, any(vec3<bool>(true, arg_2.c, arg_2.c)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)).c;
    global0 = firstLeadingBit(~_wgslsmith_mult_u32(25754u, arg_2.b.c.d));
    var var_1 = _wgslsmith_add_u32(~(~firstTrailingBit(abs(49957u))), 11048u);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(306f, -822f, -367f)))))))));
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1062f, -1088f)), _wgslsmith_f_op_f32(var_2.x + -208f), arg_2.b.b.x))), var_0.e.x, any(!vec2<bool>(arg_2.a.x, arg_2.b.c.a.x)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x));
    return arg_2.b.c;
}

fn func_5(arg_0: Struct_1) -> i32 {
    let var_0 = u_input.c;
    var var_1 = Struct_1(arg_0.a, arg_0.b, global1.wxy, _wgslsmith_mult_u32(~(global1.x & 27635u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~arg_0.c.xx, ~vec2<u32>(arg_0.c.x, 0u), arg_0.c.xy), abs(_wgslsmith_sub_vec2_u32(arg_0.c.zx, arg_0.c.xz)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(arg_0.d, vec2<i32>(-13753i, -2147483647i), Struct_3(vec2<bool>(true, arg_0.a.x), Struct_2(vec4<i32>(-1i, 60127i, u_input.c, -2147483647i), vec3<bool>(arg_0.a.x, arg_0.a.x, false), arg_0), true, arg_0.b.x)).e * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(307f, -1293f), vec2<f32>(-1000f, arg_0.e.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, -701f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.e.x), arg_0.e.x))));
    global1 = _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(22998u, 4294967295u, arg_0.c.x, 0u) >> ((_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.d, u_input.b, arg_0.c.x, 72353u), vec4<u32>(4294967295u, 54401u, var_1.d, global1.x)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(47816u, 1u, 19552u, u_input.b), vec4<u32>(1u, u_input.a, 63220u, 22633u))) % vec4<u32>(32u)), ~(~vec4<u32>(arg_0.d, 36535u, var_1.c.x, 0u)) ^ ~vec4<u32>(31397u, 4294967295u, 26117u, 3055u)), firstTrailingBit(~(vec4<u32>(56780u, 793u, 37317u, u_input.b) ^ vec4<u32>(global1.x, 27643u, u_input.a, 1u)) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, var_1.c.x, global1.x, u_input.a), vec4<u32>(global1.x, u_input.b, u_input.b, 1u)) % vec4<u32>(32u))));
    var var_2 = vec4<i32>(var_0 ^ _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, 57862i), vec3<i32>(u_input.c, 939i, u_input.c)), ~vec3<i32>(-7204i, -1i, u_input.c)), (u_input.c & _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, u_input.c, 0i, 1i), vec4<i32>(-11775i, -1i, 0i, var_0))) & ((-18953i >> (arg_0.c.x % 32u)) & -u_input.c), var_0, u_input.c) << (vec4<u32>(1u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(30391u, 4294967295u, global1.x, 26527u), vec4<u32>(4294967295u, 0u, 60507u, arg_0.c.x), vec4<bool>(arg_0.a.x, arg_0.a.x, var_1.a.x, arg_0.a.x)), ~vec4<u32>(arg_0.d, global1.x, var_1.c.x, 0u)) | ~max(arg_0.c.x, global1.x), ~_wgslsmith_mod_u32(global1.x, _wgslsmith_mult_u32(arg_0.c.x, 1u)), select(1u, 0u, -1000f < _wgslsmith_f_op_f32(-var_1.e.x))) % vec4<u32>(32u));
    var var_3 = 33781u;
    return (-31194i << (~firstTrailingBit(67210u) % 32u)) | reverseBits(-(~var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(_wgslsmith_mult_vec2_i32(abs(firstLeadingBit(vec2<i32>(-61568i, u_input.c))), vec2<i32>(~(-1i), u_input.c))) & ~(-abs(_wgslsmith_div_vec2_i32(vec2<i32>(91255i, -14551i), vec2<i32>(12977i, u_input.c))));
    var_0 = vec2<i32>(-3656i, func_5(func_4(u_input.a, select(vec2<i32>(0i, -11510i), vec2<i32>(var_0.x, 1i), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), Struct_3(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), func_1(vec4<u32>(56578u, u_input.b, u_input.b, 4294967295u), vec2<bool>(false, true), vec4<bool>(false, true, false, true), 120f), true, _wgslsmith_f_op_f32(-452f * -1000f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(431f, -741f, -1000f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(959f, 133f, 848f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-356f, 1000f, 660f), vec3<f32>(578f, 1490f, 623f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(315f, -136f, 778f), vec3<f32>(-1000f, -1000f, 1589f), vec3<bool>(true, true, true))) * vec3<f32>(-684f, 1340f, -871f)))));
    var var_2 = ~vec4<i32>(var_0.x, -firstLeadingBit(-2147483647i), var_0.x, 1i) & ~(min(_wgslsmith_mult_vec4_i32(vec4<i32>(-8748i, u_input.c, var_0.x, -1i), vec4<i32>(u_input.c, -2147483647i, 0i, 23054i)), abs(vec4<i32>(u_input.c, -10033i, var_0.x, var_0.x))) | -_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, -2147483647i, var_0.x, -12628i), vec4<i32>(0i, u_input.c, var_0.x, 1i)));
    var var_3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(vec2<i32>(-8655i, 5120i), countOneBits(func_2(max(vec4<i32>(var_2.x, var_2.x, 2147483647i, var_2.x), vec4<i32>(var_2.x, u_input.c, 1i, -45507i)), 2111f, 0u).a.zy)), ~func_2(-_wgslsmith_clamp_vec4_i32(vec4<i32>(19574i, var_0.x, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.c, -30737i, -2147483647i), vec4<i32>(0i, 6417i, u_input.c, u_input.c)), 994f, 4639u).c.c.zz, var_2.wz, _wgslsmith_f_op_f32(var_1.x + var_1.x));
}

