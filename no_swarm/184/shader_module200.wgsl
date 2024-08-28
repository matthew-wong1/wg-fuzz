struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec4<u32>;

var<private> global2: vec4<bool>;

var<private> global3: Struct_1;

var<private> global4: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    global3 = Struct_1(4294967295u, -1623f, _wgslsmith_add_u32(~arg_1, ~arg_2.a), _wgslsmith_f_op_vec4_f32(min(global3.d, global4.d)));
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(12924i, -(~global0.x)), ~(-global0.x)), global0.x, max(-_wgslsmith_div_i32(1i, 14611i), global0.x));
    let var_1 = select(!(!(!select(vec3<bool>(true, true, true), global2.xzy, global2.zxw))), global2.www, global2.x);
    var var_2 = abs(max(~(~vec4<u32>(arg_0, u_input.a, 1u, 34014u)), vec4<u32>(firstLeadingBit(u_input.a), 54641u, _wgslsmith_mod_u32(1u, 59409u), arg_1))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(36745u, firstTrailingBit(742u), 103438u, 13589u), vec4<u32>(max(18360u, u_input.a), u_input.b.x, _wgslsmith_div_u32(u_input.b.x, 22725u) | (global1.x ^ 72393u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b, u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(60511u, arg_3.a, 11456u), vec3<u32>(arg_1, 1u, 1u))))) % vec4<u32>(32u));
    var var_3 = var_0.xx;
    return select(!(!(!select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(true, true, global2.x, false), global2.x))), !select(select(vec4<bool>(true, var_1.x, true, true), !vec4<bool>(global2.x, false, false, var_1.x), global2.x), vec4<bool>(true, var_1.x | false, true, all(global2.zwy)), var_1.x), true);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global3 = arg_2;
    global2 = select(select(func_3(4294967295u, global3.a, arg_2, Struct_1(u_input.b.x << (40208u % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1457f), arg_2.c & 0u, _wgslsmith_f_op_vec4_f32(arg_2.d * vec4<f32>(global3.d.x, global4.d.x, arg_2.d.x, global3.b)))), !select(select(vec4<bool>(false, false, global2.x, global2.x), vec4<bool>(true, false, false, false), global2.x), vec4<bool>(global2.x, global2.x, false, false), vec4<bool>(global2.x, false, true, global2.x)), select(!(!vec4<bool>(global2.x, global2.x, false, global2.x)), func_3(global4.c, 28760u, arg_2, arg_2), !func_3(arg_2.c, 28133u, arg_2, Struct_1(4294967295u, global3.b, 67158u, arg_2.d)).x)), vec4<bool>((firstTrailingBit(global0.x) < 2147483647i) && !(-158f > arg_2.d.x), arg_2.b >= _wgslsmith_f_op_f32(round(-661f)), global2.x, func_3(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, 1u), global1.zwz & global1.zwz), arg_2, arg_2).x), func_3(global3.c, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, ~0u, 36141u >> (arg_2.a % 32u)), u_input.b), arg_2, arg_2));
    var var_0 = Struct_1(0u, _wgslsmith_div_f32(global3.b, -1190f), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(abs(arg_2.a), ~4294967295u, _wgslsmith_div_u32(84347u, global1.x), 4294967295u), ~vec4<u32>(24602u, u_input.a, 0u, 46953u) << (_wgslsmith_sub_vec4_u32(vec4<u32>(global3.c, 15040u, 0u, 19005u), vec4<u32>(46700u, 65396u, global4.c, global3.a)) % vec4<u32>(32u)), firstLeadingBit(~vec4<u32>(57059u, global3.a, 0u, 0u))), vec4<u32>(u_input.a, 8761u, ~(~arg_2.c), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, global4.a, 100649u, global3.a)), vec4<u32>(global1.x, 22345u, arg_2.c, 1u)))), global3.d);
    global0 = abs(arg_1 & arg_1);
    var var_1 = _wgslsmith_add_i32(~(arg_1.x ^ _wgslsmith_sub_i32(-26324i, -1i)) | ~66157i, _wgslsmith_mult_i32((i32(-1i) * -25398i) ^ global0.x, -16809i) | ~_wgslsmith_mod_i32(-25687i, arg_0.x));
    return Struct_1(min(78510u, _wgslsmith_dot_vec4_u32(select(reverseBits(vec4<u32>(arg_2.a, u_input.a, global1.x, 0u)), vec4<u32>(global4.a, 4294967295u, arg_2.a, arg_2.c), !vec4<bool>(global2.x, global2.x, global2.x, true)), ~_wgslsmith_add_vec4_u32(vec4<u32>(17620u, arg_2.a, global4.a, 30177u), vec4<u32>(arg_2.a, 32764u, global1.x, 26573u)))), _wgslsmith_f_op_f32(f32(-1f) * -387f), arg_2.c, _wgslsmith_div_vec4_f32(global4.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.d * vec4<f32>(arg_3, -1000f, -1037f, global3.b))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.d.yxz), _wgslsmith_f_op_vec3_f32(ceil(arg_0.d.xyz))))));
    let var_1 = vec2<bool>(true, true);
    var var_2 = arg_0;
    let var_3 = arg_1;
    var var_4 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a, 45139u), vec2<u32>(arg_0.a, global1.x)), u_input.b.xz), _wgslsmith_dot_vec4_u32(var_3 & ~var_3, vec4<u32>(~9617u, global4.a, var_3.x, 1u >> (0u % 32u)))), _wgslsmith_dot_vec3_u32(u_input.b, abs(~(~vec3<u32>(12222u, 4294967295u, arg_0.a)))), 4294967295u << (_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(var_3, vec4<u32>(37496u, 100645u, var_3.x, arg_1.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_1.x, var_2.a, 34341u), var_3 | vec4<u32>(var_3.x, 1u, 14277u, global4.c))) % 32u), 1u);
    return func_2(_wgslsmith_add_vec4_i32(reverseBits(~(-vec4<i32>(4233i, 0i, global0.x, global0.x))), min(vec4<i32>(global0.x | -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, -2147483647i, 0i), vec4<i32>(global0.x, -1i, global0.x, global0.x)), global0.x, _wgslsmith_clamp_i32(global0.x, -16915i, global0.x)), vec4<i32>(86138i, countOneBits(30893i), ~global0.x, countOneBits(-45745i)))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(global0.x), min(-15761i, 2547i), select(global0.x, global0.x, false)), vec3<i32>(1i, abs(global0.x), global0.x & global0.x)), firstLeadingBit(firstTrailingBit(8364i) | ~global0.x)), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x - global3.d.x)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1) -> f32 {
    global0 = _wgslsmith_mult_vec2_i32(max(~(abs(vec2<i32>(0i, global0.x)) & ~vec2<i32>(global0.x, 4566i)), _wgslsmith_add_vec2_i32(vec2<i32>(0i | global0.x, -global0.x), _wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, global0.x) << (vec2<u32>(global4.a, 4294967295u) % vec2<u32>(32u)), vec2<i32>(0i, -1i)))), ~select(-select(vec2<i32>(-23136i, global0.x), vec2<i32>(global0.x, 14725i), false), vec2<i32>(reverseBits(global0.x), 0i), vec2<bool>(any(vec2<bool>(false, true)), true)));
    global3 = Struct_1(_wgslsmith_clamp_u32(~global4.c & global1.x, arg_1.a, 1u), global3.d.x, global4.a, arg_1.d);
    let var_0 = !(!arg_0.x);
    let var_1 = arg_1;
    let var_2 = vec4<bool>(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.d.x - _wgslsmith_f_op_f32(min(2803f, -1494f))), _wgslsmith_div_f32(-707f, _wgslsmith_f_op_f32(floor(var_1.b)))) > func_2(-_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, -1i), vec4<i32>(-20112i, -2438i, global0.x, global0.x)), select(_wgslsmith_add_vec2_i32(vec2<i32>(16741i, 0i), vec2<i32>(global0.x, global0.x)), ~vec2<i32>(-2343i, -22141i), select(vec2<bool>(arg_0.x, true), vec2<bool>(false, arg_0.x), vec2<bool>(false, var_0))), Struct_1(0u, -933f, 40118u, _wgslsmith_f_op_vec4_f32(global3.d + global3.d)), _wgslsmith_f_op_f32(step(124f, 173f))).d.x, !(!arg_0.x), true);
    return func_4(var_1, ~vec4<u32>(var_1.a, 1u, 4294967295u, u_input.b.x | ~var_1.a), u_input.b.zz).b;
}

fn func_6(arg_0: vec4<i32>, arg_1: f32) -> Struct_1 {
    let var_0 = func_2(arg_0, ~firstLeadingBit(vec2<i32>(0i, 0i)), func_4(Struct_1(_wgslsmith_mult_u32(u_input.b.x >> (0u % 32u), _wgslsmith_add_u32(1u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, 217f)), u_input.a, vec4<f32>(_wgslsmith_f_op_f32(-1255f + global4.b), global3.d.x, -478f, _wgslsmith_f_op_f32(-arg_1))), ~firstLeadingBit(vec4<u32>(41394u, 0u, 0u, 60161u)), vec2<u32>(11745u, global1.x) & abs(vec2<u32>(global1.x, global4.a) & vec2<u32>(global4.a, u_input.b.x))), _wgslsmith_f_op_f32(round(func_2(reverseBits(reverseBits(vec4<i32>(-87055i, arg_0.x, -1i, -4454i))), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-16438i, 0i), arg_0.zz), arg_0.xx), func_4(func_4(Struct_1(global4.c, 1958f, 0u, global4.d), vec4<u32>(global1.x, global4.c, 11698u, 47578u), global1.xx), ~vec4<u32>(42358u, 38088u, global4.a, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(global4.a, global1.x), u_input.b.zy)), 1f).b)));
    global3 = Struct_1(global1.x, -501f, firstLeadingBit(~4294967295u & global1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, _wgslsmith_f_op_f32(f32(-1f) * -568f), _wgslsmith_f_op_f32(exp2(global4.b)), global3.b))));
    global3 = func_4(var_0, ~vec4<u32>(u_input.a, ~global3.c, 27326u, 0u), abs(abs(global1.xz)));
    global2 = !(!select(vec4<bool>(global2.x, all(vec3<bool>(true, global2.x, true)), all(global2.xx), all(vec2<bool>(false, false))), vec4<bool>(true | global2.x, any(vec4<bool>(false, false, true, global2.x)), global2.x, !global2.x), false));
    global1 = ~vec4<u32>(global3.c, ~(~u_input.b.x), firstTrailingBit(4294967295u), u_input.b.x);
    return var_0;
}

fn func_7(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>, arg_3: vec4<i32>) -> Struct_1 {
    global2 = !select(select(!select(vec4<bool>(global2.x, false, global2.x, global2.x), vec4<bool>(global2.x, true, global2.x, false), false), vec4<bool>(0u >= global1.x, any(vec2<bool>(global2.x, global2.x)), any(global2.xw), !global2.x), _wgslsmith_f_op_f32(-global3.d.x) == _wgslsmith_f_op_f32(f32(-1f) * -229f)), !(!select(vec4<bool>(true, global2.x, true, false), vec4<bool>(global2.x, false, false, global2.x), vec4<bool>(true, global2.x, true, false))), !vec4<bool>(true, true, true, global2.x));
    let var_0 = Struct_1(~global1.x, _wgslsmith_f_op_f32(func_5(vec3<bool>(true, true, false), arg_0)), ~func_4(Struct_1(global3.a, _wgslsmith_f_op_f32(global3.b + 457f), ~u_input.b.x, func_6(vec4<i32>(34690i, arg_1, global0.x, 49975i), 2079f).d), abs(min(arg_2, vec4<u32>(arg_0.c, 14746u, arg_2.x, arg_2.x))), arg_2.yw).a, _wgslsmith_f_op_vec4_f32(max(func_4(Struct_1(~49426u, arg_0.d.x, ~4294967295u, vec4<f32>(888f, arg_0.b, global3.d.x, 1515f)), arg_2, _wgslsmith_mult_vec2_u32(vec2<u32>(3214u, 3121u), vec2<u32>(125676u, global4.a))).d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.d - global4.d) - global3.d)))));
    var var_1 = func_6(arg_3, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.d.x))), -961f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global3.d.x, var_0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1190f) * arg_0.d.x)))));
    var var_2 = func_2(-arg_3, firstTrailingBit(vec2<i32>(reverseBits(arg_3.x), -_wgslsmith_add_i32(-16048i, 0i))), func_2(arg_3, arg_3.xy, arg_0, _wgslsmith_f_op_f32(1316f * _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -619f) + -823f));
    var var_3 = arg_0;
    return Struct_1(_wgslsmith_dot_vec2_u32(max(~global1.zx, ~global1.zx), vec2<u32>(~var_3.c, arg_0.a ^ 4294967295u)) | var_0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -484f))), func_2(countOneBits(arg_3), arg_3.zw, Struct_1(var_2.a, 1149f, var_2.c, vec4<f32>(2101f, 1181f, -863f, -1261f)), _wgslsmith_f_op_f32(sign(var_2.d.x))).b) - -698f), func_6(-_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 1i, 33290i) & arg_3, arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b)))).c, var_2.d);
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<u32>(~(~0u) & firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, u_input.b.x), 1u)), _wgslsmith_sub_u32(global3.c ^ _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(global1.x, global3.c)), u_input.b.xz), 6069u));
    global4 = func_7(func_6(vec4<i32>(~global0.x, -(global0.x >> (2167u % 32u)), ~(-global0.x), ~max(global0.x, global0.x)), _wgslsmith_f_op_f32(func_5(!(!vec3<bool>(false, global2.x, true)), func_4(func_2(vec4<i32>(-27307i, 0i, global0.x, 1i), vec2<i32>(global0.x, global0.x), Struct_1(5794u, -1431f, 49472u, global4.d), 1000f), abs(vec4<u32>(0u, 4294967295u, u_input.b.x, global4.a)), ~var_0)))), _wgslsmith_dot_vec2_i32(countOneBits(abs(vec2<i32>(-1i, global0.x)) & (vec2<i32>(global0.x, 0i) ^ vec2<i32>(global0.x, 0i))), firstTrailingBit(select(vec2<i32>(-15818i, global0.x) ^ vec2<i32>(-26431i, global0.x), vec2<i32>(75443i, global0.x) >> (var_0 % vec2<u32>(32u)), true))), firstLeadingBit(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.x, global1.x), vec3<u32>(0u, global3.c, 0u)), 1u, ~abs(95323u), ~global4.c)), _wgslsmith_add_vec4_i32(vec4<i32>(global0.x << (global3.c % 32u), _wgslsmith_mod_i32(-2147483647i, global0.x), _wgslsmith_sub_i32(-38990i, global0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(45196i, global0.x, global0.x, -369i), vec4<i32>(global0.x, 10507i, global0.x, global0.x))), abs(-vec4<i32>(0i, -1i, global0.x, 0i))) | vec4<i32>(~(i32(-1i) * -1i), _wgslsmith_sub_i32(firstLeadingBit(global0.x), global0.x), countOneBits(global0.x), 65349i));
    var var_1 = _wgslsmith_div_u32(29825u | (4294967295u | global1.x), _wgslsmith_div_u32(abs(var_0.x), 0u));
    var var_2 = func_6(vec4<i32>(~select(global0.x, _wgslsmith_div_i32(global0.x, global0.x), global2.x), -(~select(2147483647i, 50502i, false)), 0i >> (global4.a % 32u), 2147483647i), global4.b);
    var var_3 = Struct_1(~global4.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.d.x)) + func_4(Struct_1(min(34584u, 1u), _wgslsmith_f_op_f32(step(global3.d.x, global3.b)), var_0.x, global4.d), vec4<u32>(1u, 19643u << (var_0.x % 32u), _wgslsmith_mult_u32(29326u, global1.x), _wgslsmith_mod_u32(0u, global1.x)), vec2<u32>(0u, global4.c)).d.x), 1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b + 1344f), _wgslsmith_f_op_f32(-var_2.d.x)), 197f, _wgslsmith_div_f32(-193f, _wgslsmith_f_op_f32(ceil(global4.d.x))))));
    return Struct_1(min(~u_input.b.x, _wgslsmith_add_u32(global4.a >> (global4.a % 32u), 1u) >> (global3.c % 32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b), -1000f) * -1000f), _wgslsmith_div_u32(45525u, global3.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b, -1757f, var_2.b, var_2.b)))), _wgslsmith_f_op_vec4_f32(-var_3.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.x, global4.d.x, 93601u, global4.d);
    let var_1 = ~15482u;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.d.x, global4.d.x) + _wgslsmith_f_op_vec3_f32(ceil(global3.d.wyz))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, -657f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -247f, 2828f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d.zyz))));
    let var_3 = 0u;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.xy - vec2<f32>(var_2.x, global3.d.x)) + vec2<f32>(global3.b, var_0.b));
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.b, u_input.b, false), vec3<i32>(_wgslsmith_mod_i32(1i, global0.x), max(global0.x, 1i), _wgslsmith_mult_i32(countOneBits(2147483647i), _wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647i, 1i), _wgslsmith_sub_i32(-2147483647i, global0.x)))));
}

