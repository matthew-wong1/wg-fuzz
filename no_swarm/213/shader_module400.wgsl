struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3;

var<private> global2: vec4<u32> = vec4<u32>(1u, 12299u, 11469u, 81554u);

var<private> global3: i32 = -1i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_5(u_input.a);
    return Struct_3(global1.a);
}

fn func_3() -> i32 {
    let var_0 = Struct_2(true, Struct_1(all(vec3<bool>(true, true, true)) | any(vec3<bool>(true, true, true))), _wgslsmith_div_u32(global2.x, ~0u));
    global2 = _wgslsmith_div_vec4_u32(abs(~(~vec4<u32>(global2.x, 55858u, var_0.c, var_0.c))), ~countOneBits(vec4<u32>(var_0.c, ~1u, 4294967295u, ~var_0.c)));
    var var_1 = Struct_2(true, var_0.b, 6693u);
    let var_2 = var_0;
    let var_3 = Struct_2(any(!(!vec4<bool>(var_1.a, true, var_0.a, var_2.a))), Struct_1(!(select(true, var_0.a, false) || var_0.a)), min(var_0.c, reverseBits(~global2.x)) | var_1.c);
    return _wgslsmith_dot_vec2_i32(firstLeadingBit(-select(abs(vec2<i32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_i32(vec2<i32>(-54887i, -43664i), vec2<i32>(-28363i, u_input.a)), all(vec4<bool>(true, true, var_2.b.a, var_2.b.a)))), vec2<i32>(22036i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 13353i, -2147483647i, 0i), -vec4<i32>(-1i, 30905i, u_input.a, 22758i)), u_input.a << (select(0u, 51409u, true) % 32u), 31053i)));
}

fn func_1(arg_0: vec3<bool>) -> Struct_4 {
    global1 = func_2();
    return Struct_4(Struct_1(~(-2147483647i) == _wgslsmith_clamp_i32(func_3(), i32(-1i) * -2147483647i, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.a;
    var var_0 = func_1(vec3<bool>(!(true | any(vec4<bool>(false, true, true, true))), !all(vec2<bool>(true, true)), !(!(global1.a.x > -249f))));
    let var_1 = Struct_2(global1.a.x >= 421f, func_1(select(vec3<bool>(true, all(vec2<bool>(true, var_0.a.a)), var_0.a.a), !vec3<bool>(false, var_0.a.a, var_0.a.a), true)).a, global2.x);
    global0 = firstTrailingBit(_wgslsmith_add_u32(100831u, _wgslsmith_mod_u32(1u, var_1.c)));
    global2 = select(~select(vec4<u32>(var_1.c, global2.x, 1u, var_1.c), select(vec4<u32>(global2.x, global2.x, 8039u, var_1.c), vec4<u32>(global2.x, var_1.c, var_1.c, global2.x), vec4<bool>(var_0.a.a, var_1.a, true, var_0.a.a)), false) | ~vec4<u32>(firstTrailingBit(var_1.c), global2.x, ~4294967295u, global2.x), ~(~(~(~vec4<u32>(80274u, 26303u, global2.x, var_1.c)))), select(vec4<bool>(var_1.b.a, u_input.a <= 63478i, var_1.b.a, _wgslsmith_f_op_f32(-global1.a.x) <= global1.a.x), vec4<bool>(true, !func_1(vec3<bool>(true, true, var_1.b.a)).a.a, true, _wgslsmith_mod_u32(41213u, var_1.c) > 1u), vec4<bool>(true, all(select(vec2<bool>(false, var_0.a.a), vec2<bool>(true, var_1.b.a), vec2<bool>(false, true))), false, !select(true, var_0.a.a, true))));
    var var_2 = Struct_2(var_0.a.a, var_0.a, _wgslsmith_clamp_u32(global2.x, ~(~global2.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, 0u), 38208u | abs(var_1.c))));
    global2 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(32937u, _wgslsmith_dot_vec2_u32(global2.yx, global2.yz), 4294967295u, 21934u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.c, global2.x, 38686u, 1u), vec4<u32>(4294967295u, var_1.c, 0u, 1u), vec4<u32>(31869u, global2.x, 35975u, var_2.c)), vec4<bool>(all(vec4<bool>(false, var_2.b.a, var_2.a, var_2.b.a)), true, any(vec4<bool>(false, var_2.a, var_2.b.a, true)), var_1.a || var_1.b.a)), ~vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.c, 4294967295u, var_2.c), vec4<u32>(var_1.c, 27473u, var_2.c, 44931u)), 42738u, countOneBits(var_2.c))), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(global2.xzz | global2.yxw, global2.xyw), _wgslsmith_mod_u32(0u, ~var_1.c), 1u), ~firstLeadingBit(min(vec4<u32>(9722u, 4294967295u, 28766u, var_1.c), vec4<u32>(global2.x, var_1.c, 1u, 0u))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, 12520u, 4294967295u, 0u), vec4<u32>(31488u, global2.x, 4294967295u, 77401u), vec4<u32>(var_2.c, var_2.c, global2.x, 0u)), vec4<u32>(16390u, var_1.c, 0u, var_1.c)), ~vec4<u32>(var_2.c, var_2.c, var_1.c, 4294967295u) ^ countOneBits(vec4<u32>(36717u, 0u, 0u, var_1.c)))));
    let var_3 = !(!(!vec4<bool>(false && var_2.a, var_2.b.a | var_2.a, all(vec3<bool>(var_0.a.a, false, true)), 1i >= u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-2452f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1380f, -414f)))), global2.xww, ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, -35317i) | min(vec4<i32>(u_input.a, u_input.a, -37614i, u_input.a), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a)), -select(vec4<i32>(21091i, 39586i, -2147483647i, u_input.a), vec4<i32>(u_input.a, -31240i, u_input.a, u_input.a), true)));
}

