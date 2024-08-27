struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false));

var<private> global1: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    return vec3<f32>(-1027f, _wgslsmith_div_f32(550f, _wgslsmith_f_op_f32(global1.b + global1.b)), 1000f);
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec4<bool>, 2>();
    global0 = array<vec4<bool>, 2>();
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(global1.b, global1.b, global1.b), !vec3<bool>(arg_0, arg_0, arg_0))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, global1.b, global1.b), vec3<f32>(626f, global1.b, 665f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global1.b, -1134f) * vec3<f32>(-130f, global1.b, -103f))))), _wgslsmith_f_op_vec3_f32(func_2(Struct_1(_wgslsmith_mult_vec4_u32(arg_1.a, ~vec4<u32>(global1.d.a.x, 746u, 1u, 1u)))))));
    var var_1 = global1.a;
    let var_2 = max(-12874i, u_input.a.x);
    return Struct_1(abs(~(~abs(var_1.a))));
}

fn func_3(arg_0: Struct_2) -> Struct_2 {
    global1 = Struct_2(global1.a, _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -583f), _wgslsmith_f_op_f32(min(-1000f, -1451f)))))), vec2<u32>(global1.c.x, ~(~(~arg_0.c.x))), arg_0.d);
    global0 = array<vec4<bool>, 2>();
    global0 = array<vec4<bool>, 2>();
    global1 = Struct_2(arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(908f, global1.b), -2024f))), global1.c, global1.a);
    var var_0 = global1.c.x;
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global0 = array<vec4<bool>, 2>();
    global1 = Struct_2(arg_1.a, 684f, arg_1.c, arg_0.d);
    global1 = func_3(Struct_2(arg_1.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_2(arg_0.a)).x, arg_0.b)), _wgslsmith_mod_vec2_u32(global1.d.a.yz, global1.d.a.wx ^ _wgslsmith_div_vec2_u32(arg_1.c, vec2<u32>(arg_0.a.a.x, global1.a.a.x))), arg_1.d));
    var var_0 = countOneBits(vec3<u32>(~arg_1.c.x, arg_0.d.a.x, abs(_wgslsmith_sub_u32(func_1(true, global1.a).a.x, select(global1.d.a.x, 4294967295u, true)))));
    let var_1 = max(u_input.a.x, _wgslsmith_clamp_i32(countOneBits(~u_input.b.x), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, -1i, -33778i), u_input.a.xyz) ^ (i32(-1i) * -2147483647i), -40379i));
    return Struct_1(vec4<u32>(var_0.x, ~func_3(arg_1).d.a.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, global1.a.a.x), 16249u) ^ global1.d.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(func_1(true, Struct_1(global1.a.a)).a, _wgslsmith_add_vec4_u32(arg_1.d.a, vec4<u32>(var_0.x, 12528u, arg_1.a.a.x, arg_1.a.a.x))), _wgslsmith_add_vec4_u32(~global1.a.a, vec4<u32>(54428u, arg_0.a.a.x, var_0.x, arg_0.c.x)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<u32>) -> StorageBuffer {
    let var_0 = min(global1.d.a, vec4<u32>(global1.c.x, 4463u, 1u, _wgslsmith_div_u32(4294967295u, global1.c.x)));
    global0 = array<vec4<bool>, 2>();
    var var_1 = true;
    global0 = array<vec4<bool>, 2>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.x, func_4(Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, global1.c.x, 27227u, global1.c.x), vec4<u32>(14665u, 48718u, 0u, arg_2.x))), 614f, vec2<u32>(global1.a.a.x, ~0u), func_4(func_3(Struct_2(global1.a, -366f, arg_2.zz, arg_0)), func_3(Struct_2(Struct_1(vec4<u32>(arg_0.a.x, 1u, global1.c.x, var_0.x)), -989f, arg_2.xy, Struct_1(var_0))))), Struct_2(Struct_1(vec4<u32>(var_0.x, 15223u, 12892u, global1.c.x)), _wgslsmith_f_op_f32(-101f * global1.b), func_4(Struct_2(Struct_1(vec4<u32>(15088u, global1.c.x, arg_0.a.x, 31717u)), -492f, global1.d.a.zy, arg_0), Struct_2(global1.d, global1.b, arg_0.a.zx, arg_0)).a.xy, func_4(func_3(Struct_2(global1.d, -440f, global1.c, global1.a)), Struct_2(global1.d, arg_1.x, arg_2.xx, Struct_1(vec4<u32>(1u, 0u, 2903u, var_0.x)))))).a.x, abs(var_0.x) << (~4294967295u % 32u)), 2u)];
    return StorageBuffer(func_3(Struct_2(Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(global1.d.a.x, 35016u, 71769u, global1.d.a.x), vec4<u32>(48253u, arg_2.x, arg_2.x, global1.a.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * _wgslsmith_f_op_f32(floor(196f))), ~_wgslsmith_mod_vec2_u32(var_0.xz, global1.d.a.zw), func_3(func_3(Struct_2(Struct_1(arg_0.a), global1.b, vec2<u32>(69298u, 1u), arg_0))).a)).a.a, ((~u_input.a.x >> (func_4(Struct_2(Struct_1(global1.a.a), -2610f, arg_0.a.wz, Struct_1(vec4<u32>(var_0.x, 19165u, var_0.x, var_0.x))), Struct_2(Struct_1(arg_0.a), global1.b, vec2<u32>(arg_0.a.x, 128600u), Struct_1(var_0))).a.x % 32u)) | 1i) >> (_wgslsmith_sub_u32(arg_0.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.d.a.x, 4833u, 83902u, 4294967295u), global1.a.a), ~vec4<u32>(arg_2.x, 23310u, arg_0.a.x, var_0.x))) % 32u), vec2<i32>(u_input.b.x, -abs(u_input.a.x)) >> (vec2<u32>(61788u, global1.c.x) % vec2<u32>(32u)), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -46493i;
    var var_1 = Struct_1(global1.d.a);
    var var_2 = Struct_1((vec4<u32>(global1.a.a.x, 4294967295u, ~var_1.a.x, var_1.a.x) >> (global1.a.a % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_u32(var_1.a, _wgslsmith_sub_vec4_u32(max(global1.a.a, vec4<u32>(66982u, 4294967295u, var_1.a.x, global1.c.x)), max(global1.a.a, global1.a.a))));
    let x = u_input.a;
    s_output = func_5(func_4(func_3(Struct_2(global1.a, global1.b, vec2<u32>(0u, var_1.a.x), func_1(false, Struct_1(global1.a.a)))), Struct_2(func_1(false, func_1(true, Struct_1(vec4<u32>(var_2.a.x, 0u, global1.c.x, global1.d.a.x)))), global1.b, vec2<u32>(~var_2.a.x, countOneBits(4294967295u)), global1.a)), vec4<f32>(global1.b, global1.b, 1000f, _wgslsmith_f_op_f32(max(-963f, global1.b))), var_1.a.zzw);
}

