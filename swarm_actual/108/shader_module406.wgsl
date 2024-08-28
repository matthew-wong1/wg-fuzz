struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
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

var<private> global0: Struct_5;

var<private> global1: i32 = 2147483647i;

var<private> global2: vec3<f32>;

var<private> global3: Struct_3;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<bool> {
    var var_0 = global2.x;
    let var_1 = u_input.a.xx | _wgslsmith_div_vec2_i32(-min(abs(u_input.d), ~vec2<i32>(u_input.b, 0i)), u_input.a.yz);
    var_0 = _wgslsmith_f_op_f32(trunc(-1368f));
    let var_2 = reverseBits(_wgslsmith_sub_vec4_u32(abs(abs(vec4<u32>(global0.a, global0.a, 10446u, 112928u))), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(global0.a, global0.a, global0.a, 73060u)), ~(vec4<u32>(global0.a, global0.a, global0.a, global0.a) << (vec4<u32>(21140u, 11051u, global0.a, 26855u) % vec4<u32>(32u))))));
    let var_3 = var_2.xzx;
    return vec3<bool>(global3.a.x, all(select(vec2<bool>(false, true), vec2<bool>(true, true), !global3.a.x)) | global3.a.x, false);
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_2) -> i32 {
    global0 = Struct_5(_wgslsmith_mult_u32(reverseBits(arg_3.a.d), ~global0.a), 583f);
    global1 = ~abs(u_input.b);
    global1 = u_input.a.x;
    let var_0 = false;
    global3 = Struct_3(select(!func_3(), vec3<bool>(true, any(arg_1.a.xy) && var_0, all(!vec4<bool>(arg_1.a.x, true, arg_1.a.x, true))), all(func_3())));
    return -2147483647i;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<f32>) -> f32 {
    let var_0 = countOneBits(vec2<i32>(0i, u_input.d.x)) ^ -vec2<i32>(func_2(arg_0.a.b.x << (global0.a % 32u), Struct_3(vec3<bool>(arg_1.x, false, global3.a.x)), global3.a, arg_0), 2147483647i);
    let var_1 = ~reverseBits(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, global0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 18511u, 1u, global0.a), vec4<u32>(arg_0.a.d, 40657u, global0.a, global0.a))), ~arg_0.a.d, global0.a & abs(1u)));
    var var_2 = select(countOneBits(max(min(vec4<u32>(arg_0.a.d, var_1.x, 1u, arg_0.a.d) >> (vec4<u32>(var_1.x, arg_0.a.d, var_1.x, 2398u) % vec4<u32>(32u)), vec4<u32>(arg_0.a.d, 4294967295u, 0u, global0.a)), min(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.d, 1u, 33433u, 1u), vec4<u32>(12669u, global0.a, 1u, arg_0.a.d)), vec4<u32>(67470u, 9239u, arg_0.a.d, global0.a) & vec4<u32>(global0.a, 28097u, arg_0.a.d, 82286u)))), vec4<u32>(global0.a, global0.a, var_1.x, global0.a), !vec4<bool>(true, func_2(-25748i, Struct_3(global3.a), global3.a, Struct_2(Struct_1(u_input.c.x, arg_0.a.b, global0.b, 0u))) <= var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1323f) >= global0.b, any(vec3<bool>(true, true, arg_1.x)) | !global3.a.x));
    let var_3 = var_2.ww;
    global2 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * arg_2.x) * global2.x)), global3.a.x)), arg_0.a.c, 256f);
    return _wgslsmith_f_op_f32(-global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(false || global3.a.x));
    let var_1 = select(_wgslsmith_clamp_vec3_u32(min(~(vec3<u32>(global0.a, 1u, global0.a) >> (vec3<u32>(0u, global0.a, global0.a) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(vec3<u32>(39290u, 33649u, global0.a) >> (vec3<u32>(1456u, 4294967295u, global0.a) % vec3<u32>(32u)), vec3<u32>(4294967295u, global0.a, global0.a))), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4294967295u, global0.a), global0.a, ~1251u), vec3<u32>(global0.a, firstLeadingBit(global0.a), _wgslsmith_clamp_u32(global0.a, global0.a, 17496u))), vec3<u32>(~global0.a >> (~41281u % 32u), ~global0.a, ~abs(4294967295u))), vec3<u32>(global0.a, ~global0.a, 44901u), global3.a.x && any(vec4<bool>(global3.a.x, 397f > global0.b, all(vec3<bool>(true, true, true)), false)));
    let var_2 = vec3<i32>(min(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.yx, ~vec2<i32>(u_input.c.x, -30210i)), countOneBits(u_input.c.x) | ~u_input.a.x), ~34027i), ~u_input.b, 0i);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 329f)), vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(-7470i, var_2.xy, -365f, var_1.x)), vec2<bool>(global3.a.x, true), vec3<f32>(2219f, global0.b, 483f))) * global2.x)))));
    let var_4 = global3.a.x;
    global3 = Struct_3(global3.a);
    var_0 = !global3.a.x;
    let var_5 = ~(~vec3<u32>(~_wgslsmith_add_u32(global0.a, var_1.x), ~_wgslsmith_clamp_u32(4294967295u, global0.a, 1u), 4294967295u));
    let var_6 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~5280u, firstLeadingBit(var_5.x) | ~global0.a, 1u));
}

