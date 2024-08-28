struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_5 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 678f;

var<private> global1: i32;

var<private> global2: Struct_4;

var<private> global3: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(13324i, 2147483647i, -1i, 90928i), vec4<i32>(0i, 1i, -10596i, 0i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_3) -> vec2<u32> {
    let var_0 = -arg_0.x << (~u_input.a.x % 32u);
    let var_1 = _wgslsmith_clamp_u32(firstLeadingBit(42107u), u_input.a.x, firstTrailingBit(_wgslsmith_div_u32(55038u, 4294967295u)));
    global3 = array<vec4<i32>, 2>();
    let var_2 = arg_2.c.x;
    let var_3 = !any(vec4<bool>(all(select(vec3<bool>(false, global2.a.a.x, false), vec3<bool>(global2.a.a.x, false, global2.a.a.x), vec3<bool>(arg_1, false, true))), global2.a.a.x, arg_1 && (arg_0.x <= global2.a.c), !(!arg_1)));
    return vec2<u32>(global2.c.x, 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: i32) -> vec3<u32> {
    global2 = arg_2;
    var var_0 = _wgslsmith_sub_i32(10504i >> (0u % 32u), -22798i);
    var var_1 = global2.a.b.wzx;
    var var_2 = !((-arg_2.a.c > arg_2.a.c) && any(!vec3<bool>(arg_2.a.a.x, false, arg_2.a.a.x)));
    var var_3 = arg_2.b.x;
    return ~(~(arg_2.c.xyz >> (abs(arg_2.c.zwz) % vec3<u32>(32u))));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_5, arg_3: f32) -> Struct_2 {
    var var_0 = arg_1;
    var var_1 = global2.a.b;
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(~(~arg_0.x << (u_input.a.x % 32u)), -arg_1), 2147483647i, -20436i);
    var_0 = -2147483647i;
    let var_3 = Struct_4(global2.a, _wgslsmith_mod_vec2_u32(max(select(vec2<u32>(global2.b.x, 4294967295u), global2.b >> (u_input.a.zw % vec2<u32>(32u)), arg_2.b.x), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(global2.b, vec2<u32>(u_input.a.x, 75770u)), min(vec2<u32>(28631u, 1u), vec2<u32>(u_input.a.x, 13135u)))), ~(vec2<u32>(u_input.a.x, 6240u) | func_2(vec3<i32>(2147483647i, arg_0.x, 0i), true, Struct_3(Struct_2(global2.a.c, 4294967295u), vec3<i32>(global2.a.c, -5377i, 2147483647i), global2.a.b.zwx)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(func_3(Struct_3(Struct_2(arg_1, global2.b.x), vec3<i32>(arg_2.a, arg_0.x, global2.a.c), var_1.zzy), vec3<bool>(global2.a.a.x, arg_2.b.x, arg_2.b.x), Struct_4(Struct_1(global2.a.a, global2.a.b, arg_0.x, var_1.x), u_input.a.yz, u_input.a, arg_1), global2.a.c), vec3<u32>(71260u, u_input.a.x, 0u) ^ vec3<u32>(37156u, u_input.a.x, global2.b.x)), reverseBits(_wgslsmith_add_u32(global2.c.x, 0u)), _wgslsmith_mod_u32(max(u_input.a.x, 0u), 41359u), ~abs(80351u)), global2.c, global2.c), arg_1);
    return Struct_2(arg_1, ~global2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-17992i, global2.d)), _wgslsmith_sub_i32(abs(1i), -1i), select(global2.a.c, -global2.a.c, true)), global2.d, Struct_5(abs(global2.d), !(!(!vec3<bool>(global2.a.a.x, false, false)))), -1584f);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~68793u))), abs(~54342u), global2.c.yy, var_0.b, _wgslsmith_mod_vec4_u32(~firstTrailingBit(vec4<u32>(18915u, 22080u, global2.c.x, global2.c.x)), ~vec4<u32>(~u_input.a.x, countOneBits(u_input.a.x), ~3957u, 24873u)));
}

