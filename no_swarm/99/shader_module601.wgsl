struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(199f));

var<private> global1: Struct_1 = Struct_1(1808f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: f32) -> u32 {
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(global0.a.a))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1237f * arg_3), _wgslsmith_div_f32(global0.a.a, -929f)))))));
    var var_1 = ~(~(~vec3<u32>(u_input.a >> (u_input.a % 32u), ~1u, ~11338u)));
    var var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(max(_wgslsmith_sub_u32(u_input.a, var_1.x), var_1.x), u_input.a ^ ~32062u, var_1.x & _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 0u, 0u, var_1.x), vec4<u32>(var_1.x, 4294967295u, 0u, 1u)), 50079u), vec4<u32>(min(276u, var_1.x), ~4294967295u, _wgslsmith_mod_u32(0u, 38581u), 0u) << (~vec4<u32>(var_1.x, 1u, u_input.a, 24075u) % vec4<u32>(32u))), ~(~(~vec4<u32>(var_1.x, u_input.a, u_input.a, 0u) ^ ~vec4<u32>(0u, u_input.a, u_input.a, var_1.x))), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.x, u_input.a, 13093u, u_input.a), ~_wgslsmith_add_vec4_u32(vec4<u32>(22912u, 1u, 4294967295u, u_input.a), vec4<u32>(0u, 0u, u_input.a, 1u))));
    let var_3 = vec2<bool>(all(vec2<bool>(true, true)), _wgslsmith_dot_vec2_u32(~(var_1.xz | var_2.wx), ~_wgslsmith_mod_vec2_u32(var_1.yz, var_1.xy)) > var_1.x);
    return 35917u;
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_2 {
    var var_0 = true;
    var var_1 = ~(vec4<u32>(u_input.a, 52881u, ~(u_input.a ^ u_input.a), u_input.a) & vec4<u32>(~func_3(false, vec3<bool>(true, false, false), vec2<bool>(true, false), 819f), func_3(global0.a.a == 792f, vec3<bool>(true, false, true), vec2<bool>(false, true), _wgslsmith_div_f32(global0.a.a, 1000f)), _wgslsmith_mult_u32(2530u, ~u_input.a), abs(44431u)));
    var_0 = false;
    global1 = global0.a;
    var var_2 = Struct_1(global0.a.a);
    return Struct_2(Struct_1(global1.a));
}

fn func_4(arg_0: Struct_2) -> f32 {
    global0 = func_2(-u_input.b.x, -716f);
    var var_0 = ~_wgslsmith_div_vec3_u32(~(~vec3<u32>(4294967295u, 62595u, u_input.a)) ^ abs(select(vec3<u32>(61123u, 0u, 0u), vec3<u32>(87392u, 48729u, 0u), vec3<bool>(true, false, true))), ~_wgslsmith_add_vec3_u32(~vec3<u32>(100554u, u_input.a, u_input.a), ~vec3<u32>(1u, 1u, u_input.a)));
    global0 = func_2(-2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(270f)), global0.a.a));
    let var_1 = ~firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 1006u, u_input.a, 25065u), countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 12237u, 79195u, var_0.x), vec4<u32>(36399u, 4294967295u, 1u, 0u)))));
    var var_2 = 1u;
    return arg_0.a.a;
}

fn func_1() -> Struct_3 {
    var var_0 = ~abs(max(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(0u, 0u, 4294967295u)), vec3<u32>(4294967295u, 24144u, ~35589u)));
    global1 = global0.a;
    var var_1 = vec3<i32>(countOneBits(~u_input.b.x), 78066i, _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(abs(u_input.b.zxw), vec3<i32>(-5815i, -1i, u_input.b.x)), min(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(34139i, u_input.b.x, u_input.b.x), u_input.b.zww), -vec3<i32>(-16726i, -60064i, u_input.b.x) << (select(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(18238u, var_0.x, var_0.x), false) % vec3<u32>(32u)))));
    let var_2 = 487f;
    let var_3 = vec3<f32>(766f, _wgslsmith_f_op_f32(func_4(func_2(u_input.b.x, global1.a))), _wgslsmith_f_op_f32(func_4(func_2(-(~u_input.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_2)), var_2, true))))));
    return Struct_3(global0.a, func_2(u_input.b.x, var_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = var_0.b;
    var var_1 = any(select(vec3<bool>(true, true, true), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, false)), true));
    let var_2 = 328f;
    let x = u_input.a;
    s_output = StorageBuffer((vec4<u32>(u_input.a >> (52066u % 32u), _wgslsmith_mult_u32(1u, u_input.a), ~92354u, u_input.a) | vec4<u32>(firstLeadingBit(29092u), 0u, firstLeadingBit(1u), 1u)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(4673u, u_input.a, ~4294967295u, reverseBits(1u)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 29135u, 4294967295u, u_input.a), vec4<bool>(true, true, false, true)), vec4<u32>(u_input.a, u_input.a, u_input.a, 36222u))) % vec4<u32>(32u)), 277f);
}

