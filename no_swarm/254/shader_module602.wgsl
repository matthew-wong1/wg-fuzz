struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = arg_1.a.x;
    let var_1 = arg_2;
    var var_2 = arg_1;
    var var_3 = arg_1;
    var var_4 = !(!(!vec4<bool>(var_1.b.x, !arg_2.b.x, arg_2.b.x, false)));
    return global0.b;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec3<u32> {
    let var_0 = arg_0;
    global0 = arg_0;
    global0 = Struct_1(~min(~reverseBits(vec3<u32>(1u, arg_0.a.x, arg_1.c.x)), arg_1.c), !global0.b, vec3<u32>(arg_0.c.x, abs(abs(1u)), ~var_0.a.x), vec3<bool>((true & arg_1.d.x) != false, 0u >= ~(~global0.a.x), !arg_0.b.x));
    let var_1 = true;
    global0 = Struct_1(vec3<u32>(~arg_1.c.x, ~_wgslsmith_mod_u32(~global0.c.x, 62159u), 102973u >> ((~arg_0.a.x >> (_wgslsmith_div_u32(36713u, arg_1.a.x) % 32u)) % 32u)), arg_1.b, _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(firstTrailingBit(max(arg_0.a, vec3<u32>(4294967295u, var_0.c.x, arg_0.c.x))), arg_0.c, reverseBits(vec3<u32>(68918u, var_0.a.x, 4294967295u))), var_0.a, ~vec3<u32>(~global0.c.x, 13120u, var_0.c.x)), arg_0.b.xxx);
    return min(select(arg_1.c, var_0.a, !all(select(global0.b.zzz, vec3<bool>(false, arg_1.d.x, var_1), global0.b.x))), reverseBits((global0.a ^ ~arg_0.c) & ((vec3<u32>(41661u, 1u, arg_0.c.x) & vec3<u32>(arg_0.c.x, arg_1.c.x, var_0.c.x)) << (vec3<u32>(arg_0.c.x, var_0.a.x, arg_1.a.x) % vec3<u32>(32u)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: u32) -> vec3<bool> {
    var var_0 = select(arg_1.c.x, 1256u, global0.b.x);
    var var_1 = arg_0;
    var_1 = Struct_1(arg_0.a << (var_1.a % vec3<u32>(32u)), func_2(arg_0.c, arg_1, arg_1), ~arg_1.c ^ reverseBits(abs(func_3(arg_0, arg_0, 24413i))), global0.d);
    return vec3<bool>(func_2(vec3<u32>(var_1.c.x, _wgslsmith_add_u32(6177u, arg_0.c.x), arg_3), Struct_1(~vec3<u32>(arg_1.c.x, 249u, 0u), select(arg_1.b, vec4<bool>(true, global0.b.x, arg_0.b.x, var_1.b.x), global0.b.x | arg_0.b.x), vec3<u32>(arg_1.c.x, 0u, ~global0.c.x), select(global0.b.xww, vec3<bool>(arg_0.d.x, arg_0.b.x, true), arg_0.d)), Struct_1(abs(global0.a), global0.b, ~reverseBits(vec3<u32>(arg_3, 0u, arg_3)), !global0.d)).x, var_1.b.x, arg_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(select(global0.a, vec3<u32>(max(_wgslsmith_div_u32(global0.a.x, 20098u), ~14389u), 0u, 4294967295u), vec3<bool>(~63487u > global0.a.x, any(global0.b.xy), _wgslsmith_f_op_f32(sign(-863f)) >= -446f)), global0.b, ~countOneBits(vec3<u32>(firstLeadingBit(66923u), ~global0.c.x, global0.a.x)), select(!select(global0.b.xxz, func_1(Struct_1(vec3<u32>(global0.c.x, global0.a.x, 0u), vec4<bool>(global0.d.x, true, false, global0.d.x), global0.c, vec3<bool>(true, global0.b.x, global0.b.x)), Struct_1(global0.c, global0.b, vec3<u32>(global0.a.x, global0.a.x, global0.a.x), global0.b.zwz), u_input.b.xyx, global0.a.x), func_2(vec3<u32>(57370u, global0.a.x, global0.a.x), Struct_1(vec3<u32>(54328u, 4294967295u, 7600u), global0.b, global0.a, vec3<bool>(true, global0.d.x, true)), Struct_1(global0.a, vec4<bool>(false, false, global0.d.x, global0.b.x), global0.c, global0.b.zyx)).xyz), select(!global0.b.ywz, func_1(Struct_1(global0.c, vec4<bool>(global0.b.x, global0.b.x, true, global0.d.x), global0.c, vec3<bool>(global0.b.x, global0.d.x, false)), Struct_1(vec3<u32>(global0.a.x, 4294967295u, global0.c.x), vec4<bool>(global0.b.x, global0.d.x, false, true), vec3<u32>(global0.c.x, 1u, global0.a.x), global0.b.yyw), vec3<i32>(u_input.a, 74565i, u_input.b.x), ~global0.c.x), select(func_1(Struct_1(vec3<u32>(global0.c.x, global0.c.x, 1u), vec4<bool>(global0.d.x, global0.b.x, global0.d.x, true), global0.a, global0.b.yxx), Struct_1(global0.c, global0.b, vec3<u32>(global0.a.x, 4294967295u, global0.a.x), global0.d), vec3<i32>(u_input.b.x, u_input.b.x, u_input.a), 43053u), vec3<bool>(true, true, false), vec3<bool>(true, global0.d.x, false))), func_2(_wgslsmith_sub_vec3_u32(min(vec3<u32>(35814u, 94559u, 1u), vec3<u32>(global0.c.x, 7576u, 4294967295u)), vec3<u32>(4294967295u, global0.c.x, global0.a.x)), Struct_1(vec3<u32>(4294967295u, global0.c.x, 47018u), !global0.b, vec3<u32>(19648u, 1u, 112160u), vec3<bool>(global0.d.x, true, global0.d.x)), Struct_1(global0.c, vec4<bool>(false, false, false, false), vec3<u32>(1u, global0.a.x, global0.a.x), select(vec3<bool>(global0.d.x, global0.d.x, false), vec3<bool>(global0.b.x, global0.b.x, false), vec3<bool>(global0.b.x, true, global0.d.x)))).yzw));
    var var_0 = Struct_1(vec3<u32>(~30714u, 4866u, global0.c.x), !select(global0.b, global0.b, global0.d.x | false), global0.a, global0.b.zww);
    let var_1 = _wgslsmith_div_i32(-(~_wgslsmith_dot_vec4_i32(~u_input.b, u_input.b)), u_input.a);
    global0 = Struct_1(~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(select(global0.c, vec3<u32>(var_0.a.x, var_0.a.x, global0.a.x), true), firstTrailingBit(vec3<u32>(0u, global0.a.x, 0u))), countOneBits(_wgslsmith_mod_vec3_u32(global0.a, vec3<u32>(4294967295u, var_0.c.x, 110993u)))), vec4<bool>(var_0.b.x, global0.d.x, true, (_wgslsmith_dot_vec3_u32(global0.c, vec3<u32>(global0.a.x, 4294967295u, var_0.c.x)) != 41448u) && all(!global0.d)), global0.c, select(global0.b.zzx, func_2(~_wgslsmith_add_vec3_u32(vec3<u32>(global0.c.x, 4294967295u, global0.a.x), vec3<u32>(4294967295u, 1u, var_0.c.x)), Struct_1(max(var_0.a, var_0.a), func_2(vec3<u32>(var_0.a.x, 55795u, 0u), Struct_1(vec3<u32>(0u, global0.a.x, 18704u), vec4<bool>(global0.b.x, true, false, global0.d.x), vec3<u32>(1u, global0.a.x, 1u), vec3<bool>(false, false, var_0.b.x)), Struct_1(global0.c, vec4<bool>(global0.d.x, true, false, var_0.d.x), vec3<u32>(global0.c.x, global0.c.x, 1u), global0.b.xzx)), ~vec3<u32>(1u, 0u, 1u), global0.d), Struct_1(global0.a, select(var_0.b, var_0.b, vec4<bool>(false, global0.d.x, false, global0.b.x)), abs(vec3<u32>(0u, global0.a.x, 0u)), !vec3<bool>(true, true, global0.b.x))).xxy, vec3<bool>(false, -1i < _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, var_1, -10435i, 0i), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, 21983i)), 0u < global0.c.x)));
    var var_2 = Struct_1(_wgslsmith_mult_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.x, 0u, global0.c.x) << (var_0.a % vec3<u32>(32u)), countOneBits(vec3<u32>(global0.a.x, 5669u, var_0.a.x))), min(var_0.a, var_0.a), !global0.d), ~abs(max(var_0.a, global0.a))), select(select(select(!global0.b, !vec4<bool>(var_0.d.x, true, var_0.b.x, false), any(vec2<bool>(var_0.d.x, global0.d.x))), var_0.b, vec4<bool>(var_0.b.x, !var_0.d.x, true, all(vec4<bool>(global0.b.x, global0.d.x, false, false)))), vec4<bool>(var_0.d.x, var_0.b.x, true != func_2(vec3<u32>(19539u, 4294967295u, 27191u), Struct_1(global0.c, var_0.b, vec3<u32>(41464u, 1u, 636u), vec3<bool>(global0.d.x, true, false)), Struct_1(var_0.c, vec4<bool>(false, global0.d.x, global0.b.x, var_0.d.x), global0.a, vec3<bool>(true, var_0.b.x, global0.b.x))).x, !var_0.b.x | global0.b.x), func_2(vec3<u32>(1u, 0u, var_0.c.x) << (~vec3<u32>(8785u, 34853u, 0u) % vec3<u32>(32u)), Struct_1(vec3<u32>(var_0.c.x, 1512u, var_0.a.x), vec4<bool>(true, global0.d.x, var_0.d.x, global0.d.x), reverseBits(vec3<u32>(47202u, 43802u, global0.c.x)), vec3<bool>(false, true, global0.b.x)), Struct_1(~vec3<u32>(4294967295u, 30092u, 611u), global0.b, vec3<u32>(5079u, var_0.a.x, 44138u), !global0.b.zwx)).x), firstTrailingBit(~var_0.a), global0.b.wyx);
    var var_3 = _wgslsmith_add_vec4_i32(~((_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, var_1, 3657i, -2147483647i), u_input.b) & (u_input.b << (vec4<u32>(1u, var_0.a.x, 5940u, 4294967295u) % vec4<u32>(32u)))) << (vec4<u32>(0u >> (var_0.a.x % 32u), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, 1u, 125881u, 1u), vec4<u32>(var_0.a.x, global0.a.x, 43141u, global0.c.x)), 12417u) % vec4<u32>(32u))), u_input.b);
    var var_4 = !var_2.d.x;
    var_3 = firstLeadingBit(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.x);
}

