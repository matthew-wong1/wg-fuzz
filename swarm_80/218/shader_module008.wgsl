struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: f32 = 1895f;

var<private> global2: array<vec3<i32>, 32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_3 {
    return global0.a;
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> bool {
    global1 = 1302f;
    var var_0 = _wgslsmith_sub_i32(~_wgslsmith_mod_i32(u_input.a.x, firstLeadingBit(36943i)) >> (29417u % 32u), _wgslsmith_mod_i32(62296i & _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-2147483647i, global0.a.b.x, -17866i), 1i), 1i));
    global2 = array<vec3<i32>, 32>();
    let var_1 = abs(~firstTrailingBit(_wgslsmith_dot_vec2_i32(-global0.a.b.zy, vec2<i32>(global0.a.b.x, -14348i))));
    var var_2 = global0.a.a;
    return !(!global0.a.c.x);
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    var var_0 = abs(4294967295u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0.a.a.c.x, select(global0.a.a.b, 65599u, true), abs(global0.a.a.c.x)) & select(arg_0.a.a.c.zzw << (global0.a.a.c.yzy % vec3<u32>(32u)), vec3<u32>(1u, 58826u, 4294967295u) | vec3<u32>(81208u, global0.a.a.c.x, 39082u), false), _wgslsmith_mult_vec3_u32(global0.a.a.c.zyx, select(vec3<u32>(global0.a.a.c.x, 0u, 1u), arg_0.a.a.c.xyz, func_3(vec4<f32>(2127f, global0.a.d.a, 1131f, 215f), -46003i))));
    global0 = Struct_4(arg_0.a);
    var var_1 = func_1(!global0.a.c.x, select(2794i, ~(~0i >> (_wgslsmith_add_u32(34074u, global0.a.a.c.x) % 32u)), arg_0.a.c.x)).a.a;
    let var_2 = Struct_3(Struct_2(arg_0.a.d, _wgslsmith_add_u32(15123u, _wgslsmith_sub_u32(global0.a.a.c.x, 53293u)) << (~_wgslsmith_mod_u32(global0.a.a.c.x, 9784u) % 32u), min(global0.a.a.c, _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.a.a.c.x, 39247u, arg_0.a.a.c.x), vec4<u32>(arg_0.a.a.c.x, 0u, global0.a.a.c.x, 109723u)))), countOneBits(~global0.a.b), global0.a.c, func_1(true, _wgslsmith_clamp_i32(reverseBits(-30828i), _wgslsmith_clamp_i32(1i, arg_0.a.b.x, -u_input.a.x), -1i)).a.a);
    let var_3 = abs(~(~(~arg_0.a.a.b << (~var_2.a.b % 32u))));
    return Struct_3(func_1(false, 1i).a, -countOneBits(countOneBits(select(vec3<i32>(-1i, global0.a.b.x, global0.a.b.x), vec3<i32>(global0.a.b.x, 0i, u_input.a.x), true))), var_2.c, global0.a.a.a);
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> StorageBuffer {
    var var_0 = func_1(!(((arg_0 & arg_1.b.x) <= ~arg_1.b.x) || global0.a.c.x), -(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), global0.a.b.xz)) >> (~_wgslsmith_add_u32(arg_1.a.c.x, 4294967295u) % 32u))).a.b;
    var_0 = 4294967295u ^ (arg_1.a.c.x << (abs(arg_1.a.b) % 32u));
    var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global0.a.a.c.zzw, ~vec3<u32>(arg_1.a.c.x, global0.a.a.b, global0.a.a.b)), vec3<u32>(~1u ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(37137u, arg_1.a.c.x, 0u, global0.a.a.c.x), arg_1.a.c), global0.a.a.b, _wgslsmith_add_u32(min(1u, ~arg_1.a.b), countOneBits(countOneBits(1u)))));
    var var_1 = Struct_4(func_2(Struct_4(arg_1)));
    var_1 = Struct_4(Struct_3(Struct_2(global0.a.a.a, _wgslsmith_mult_u32(~global0.a.a.c.x, 38168u), func_1(func_1(false, -2147483647i).c.x, arg_1.b.x).a.c), func_2(Struct_4(global0.a)).b << (arg_1.a.c.zzz % vec3<u32>(32u)), !var_1.a.c, func_2(Struct_4(arg_1)).a.a));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a.a.a, 868f, var_1.a.a.a.a) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.a.a.a, 1000f, global0.a.a.a.a), vec3<f32>(-238f, 361f, -117f), arg_1.c))) + vec3<f32>(arg_1.a.a.a, var_1.a.a.a.a, -386f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(global0.a.b.x | global0.a.b.x, func_2(Struct_4(func_1(true, u_input.a.x))));
}

