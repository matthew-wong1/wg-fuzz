struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: vec4<u32>) -> vec4<u32> {
    var var_0 = global0.b;
    let var_1 = i32(-1i) * -1i;
    var_0 = Struct_3(true, ~arg_3.x, Struct_2(-(u_input.c >> (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c.b.a, 0u, var_0.b, 83990u), global0.a) % vec4<u32>(32u))), global0.b.c.b));
    let var_2 = ~4294967295u;
    let var_3 = Struct_5(vec4<u32>(arg_1.b & ~(25720u ^ var_0.c.b.a), abs(var_2) | arg_3.x, abs(arg_3.x), ~var_0.b));
    return vec4<u32>(~arg_1.b, _wgslsmith_add_u32(var_0.b, countOneBits(abs(7433u)) ^ countOneBits(~var_3.a.x)), var_2, select(26754u, ~34262u, select(_wgslsmith_f_op_f32(round(874f)) == _wgslsmith_f_op_f32(max(841f, arg_2)), !all(vec4<bool>(global0.b.a, global0.b.a, var_0.a, arg_1.a)), !all(vec4<bool>(false, global0.b.a, global0.b.a, true)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_4 {
    global0 = Struct_4(vec4<u32>(~_wgslsmith_add_u32(arg_1.c.b.a & arg_1.c.b.a, 4294967295u), _wgslsmith_mult_u32(global0.b.c.b.a, global0.a.x), u_input.a.x, 1u), global0.b);
    let var_0 = Struct_2(-(~(~countOneBits(vec4<i32>(arg_1.c.a.x, -25676i, global0.b.c.a.x, -2147483647i)))), global0.b.c.b);
    global0 = Struct_4(_wgslsmith_sub_vec4_u32(countOneBits(~abs(global0.a)), ~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(global0.a, global0.a), func_3(arg_1.b, global0.b, 236f, global0.a))), arg_1);
    global0 = Struct_4(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 2651u), Struct_3(!(arg_1.a | any(arg_0.ww)), 21373u, global0.b.c));
    let var_1 = Struct_4(global0.a, global0.b);
    return var_1;
}

fn func_1() -> Struct_3 {
    global0 = func_2(vec4<bool>(!global0.b.a, !(!global0.b.a), global0.b.a, !(!global0.b.a)), global0.b);
    let var_0 = !vec4<bool>(all(select(!vec2<bool>(global0.b.a, global0.b.a), vec2<bool>(global0.b.a, false), vec2<bool>(false, false))), all(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(global0.b.a, global0.b.a))), true, true);
    let var_1 = select(firstTrailingBit(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(2792u, 4294967295u, 1u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(global0.b.c.b.a, 95767u, global0.a.x) | vec3<u32>(27197u, global0.a.x, global0.b.c.b.a)), select(global0.a.xyz, ~global0.a.xyw, !var_0.wwz))), vec3<u32>(~global0.a.x, ~(~u_input.a.x), _wgslsmith_mod_u32(global0.b.b, global0.b.b)), false);
    let var_2 = global0.b.c;
    global0 = func_2(!(!vec4<bool>(true, true, all(vec2<bool>(global0.b.a, global0.b.a)), all(vec3<bool>(global0.b.a, false, true)))), global0.b);
    return func_2(select(select(select(select(var_0, vec4<bool>(global0.b.a, false, true, var_0.x), true), var_0, var_0), !(!vec4<bool>(global0.b.a, false, true, false)), true), vec4<bool>(true, !var_0.x && global0.b.a, !all(var_0), global0.b.a), !(!(!var_0))), func_2(vec4<bool>(all(select(var_0, vec4<bool>(true, var_0.x, false, var_0.x), var_0)), !global0.b.a, !global0.b.a, false), global0.b).b).b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(~global0.a, func_1());
    let var_0 = global0.b.c;
    let var_1 = vec3<bool>(func_1().a, global0.b.a, false);
    global0 = func_2(select(select(!select(vec4<bool>(false, true, true, var_1.x), vec4<bool>(var_1.x, var_1.x, global0.b.a, var_1.x), vec4<bool>(false, false, false, global0.b.a)), vec4<bool>(global0.a.x != 151794u, var_1.x & var_1.x, global0.b.c.b.a != global0.a.x, any(var_1.yz)), vec4<bool>(false, var_1.x | global0.b.a, true, any(vec3<bool>(global0.b.a, global0.b.a, global0.b.a)))), select(select(select(vec4<bool>(global0.b.a, true, global0.b.a, false), vec4<bool>(global0.b.a, false, false, false), vec4<bool>(var_1.x, global0.b.a, true, global0.b.a)), vec4<bool>(true, global0.b.a, var_1.x, global0.b.a), !vec4<bool>(true, global0.b.a, false, global0.b.a)), select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), select(vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(var_1.x, var_1.x, global0.b.a, global0.b.a), false), !var_1.x), vec4<bool>(true, true, true, var_1.x)), true), Struct_3(var_1.x, 1u, global0.b.c));
    var var_2 = ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(reverseBits(~u_input.a), _wgslsmith_div_vec2_u32(global0.a.zz, _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a.x, 78210u), global0.a.wz, u_input.a))), func_3(~u_input.a.x, func_2(vec4<bool>(var_1.x, false, true, true), global0.b).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-973f))), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(72916u, global0.b.c.b.a, var_0.b.a, var_0.b.a), vec4<u32>(4294967295u, u_input.a.x, 1u, var_0.b.a)))).x);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a);
}

