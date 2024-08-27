struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(316f, 141f, -1843f);

var<private> global1: Struct_4 = Struct_4(Struct_3(vec4<f32>(-1033f, 120f, 1247f, 192f)), false, Struct_1(0u, vec2<i32>(1i, 22665i)), Struct_2(vec4<u32>(0u, 15295u, 51477u, 1u), vec2<f32>(159f, -103f)), -1549f);

var<private> global2: array<vec3<f32>, 22>;

var<private> global3: u32 = 4294967295u;

var<private> global4: array<vec2<i32>, 28>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_5) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1334f, -1227f))) - _wgslsmith_f_op_f32(step(global1.e, 1000f)));
    global4 = array<vec2<i32>, 28>();
    var var_1 = global1.c;
    var var_2 = Struct_1(4294967295u, -(~global1.c.b));
    global3 = 0u;
    return 0u;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_5) -> bool {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(func_3(vec2<f32>(global1.e, global1.d.b.x), _wgslsmith_mult_i32(33989i, -18760i), select(vec3<bool>(global1.b, false, false), vec3<bool>(false, false, false), vec3<bool>(global1.b, global1.b, global1.b)), arg_2), ~func_3(global0.xy, u_input.a.x, vec3<bool>(false, true, arg_2.a), Struct_5(false, arg_2.c, arg_2.b, 1u))), countOneBits(abs(0u >> (global1.d.a.x % 32u)))), global1.d.a.yx);
    let var_1 = true;
    return !(select(global1.c.b.x, 1i, all(select(vec4<bool>(true, true, var_1, true), vec4<bool>(true, true, global1.b, true), vec4<bool>(global1.b, true, false, false)))) <= arg_1.b.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec3<i32>) -> bool {
    let var_0 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(arg_2, vec3<i32>(-1902i, -24820i, arg_2.x)), 1i), arg_2.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~global1.c.b, vec2<i32>(-15353i, u_input.c.x) << ((global1.d.a.yx ^ global1.d.a.xy) % vec2<u32>(32u))), i32(-1i) * -2147483647i), min(i32(-1i) * -35352i, -_wgslsmith_sub_i32(u_input.c.x & 2147483647i, u_input.a.x)), -2219i);
    var var_1 = arg_0.xyw;
    var var_2 = ~var_0;
    global3 = global1.c.a;
    let var_3 = false;
    return all(vec4<bool>(arg_0.x, !arg_1.x, all(arg_0.wyy), all(vec4<bool>(!arg_1.x, var_3, true & arg_0.x, func_2(arg_0.x, Struct_1(85778u, vec2<i32>(11194i, -36058i)), Struct_5(var_1.x, Struct_3(vec4<f32>(-251f, 890f, global0.x, 533f)), Struct_3(global1.a.a), global1.d.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(!select(vec4<bool>(true, false, true, global1.b), vec4<bool>(global1.b, global1.b, global1.b, true), true), !vec4<bool>(global1.b, global1.b, global1.b, false), true), vec4<bool>(all(vec2<bool>(global1.b, global1.d.a.x <= global1.d.a.x)), func_1(vec4<bool>(false, false, !global1.b, global1.b), vec3<bool>(global1.b & global1.b, true, global1.b), reverseBits(u_input.c)), true, global1.b), select(select(!vec4<bool>(false, true, true, global1.b), vec4<bool>(global1.b, global1.b, !global1.b, !global1.b), func_1(vec4<bool>(true, global1.b, global1.b, global1.b), vec3<bool>(false, global1.b, false), u_input.c) && all(vec4<bool>(global1.b, false, global1.b, global1.b))), !(!select(vec4<bool>(global1.b, false, global1.b, global1.b), vec4<bool>(true, true, true, false), false)), global1.b));
    global3 = _wgslsmith_dot_vec3_u32(global1.d.a.yww, vec3<u32>(~0u, 1u, _wgslsmith_div_u32(global1.c.a, firstTrailingBit(4417u) << ((global1.d.a.x ^ u_input.b) % 32u))));
    let var_1 = ~_wgslsmith_dot_vec4_u32(firstTrailingBit(countOneBits(global1.d.a & vec4<u32>(24711u, 108648u, u_input.d, global1.d.a.x))), max(vec4<u32>(1u, 0u, global1.c.a, 1u) ^ (global1.d.a & global1.d.a), global1.d.a));
    let var_2 = false;
    var var_3 = u_input.c;
    let var_4 = var_0.wyy;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<u32>(firstLeadingBit(var_1), 1u, abs(var_1))) | global1.d.a.zyy);
}

