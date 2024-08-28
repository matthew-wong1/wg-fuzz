struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = Struct_4(~vec2<u32>(u_input.a, u_input.a));
    global0 = Struct_4(~(~(~reverseBits(vec2<u32>(44159u, arg_0.a.d.x)))));
    global0 = Struct_4(~abs(~arg_0.a.d.zz | arg_0.a.b));
    let var_0 = Struct_2(arg_0.a.a, vec2<u32>(~(~_wgslsmith_add_u32(u_input.a, global0.a.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_0.a.c.a), vec2<u32>(u_input.a, 4294967295u)) & vec2<u32>(86118u, arg_0.a.d.x), abs(vec2<u32>(arg_0.a.b.x, global0.a.x)))), arg_0.a.c, vec3<u32>(arg_0.a.c.a, _wgslsmith_dot_vec2_u32(select(~arg_0.a.d.yy, vec2<u32>(45307u, u_input.a), global0.a.x < u_input.a), arg_0.a.d.yz), ~(~19960u)));
    let var_1 = select(_wgslsmith_div_u32(arg_0.a.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(var_0.d.x, var_0.d.x), global0.a.x, ~arg_0.a.c.a, var_0.d.x >> (u_input.a % 32u)), (vec4<u32>(u_input.a, 4294967295u, u_input.a, arg_0.a.b.x) ^ vec4<u32>(125883u, 65083u, var_0.b.x, u_input.a)) | select(vec4<u32>(19664u, 9492u, 1u, 19008u), vec4<u32>(49602u, arg_0.a.d.x, global0.a.x, 8027u), arg_0.a.a.x))), global0.a.x, !var_0.a.x);
    return arg_0.a.c.a;
}

fn func_2() -> Struct_4 {
    return Struct_4(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(abs(~global0.a), vec2<u32>(func_3(Struct_3(Struct_2(vec2<bool>(false, false), global0.a, Struct_1(global0.a.x, u_input.b.yx), vec3<u32>(global0.a.x, u_input.a, 1718u)))), u_input.a)), firstLeadingBit(~abs(vec2<u32>(29643u, u_input.a))), global0.a));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: u32) -> u32 {
    global0 = func_2();
    let var_0 = arg_0.x;
    global0 = func_2();
    global0 = Struct_4(global0.a);
    let var_1 = var_0;
    return func_3(Struct_3(Struct_2(vec2<bool>(any(vec3<bool>(true, arg_1.a.x, true)), all(vec2<bool>(arg_1.a.x, arg_1.a.x))), firstTrailingBit(~vec2<u32>(global0.a.x, 0u)), arg_1.c, vec3<u32>(countOneBits(arg_1.b.x), ~arg_1.c.a, arg_2))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> Struct_4 {
    global0 = func_2();
    let var_0 = arg_1.b.x;
    let var_1 = arg_1;
    global0 = arg_0;
    var var_2 = Struct_5(_wgslsmith_mod_u32(~(40809u & arg_0.a.x), arg_1.a & ~global0.a.x) << (global0.a.x % 32u), func_2(), Struct_1(1u, vec2<i32>(-1i, _wgslsmith_mult_i32(2147483647i, var_1.b.x))), reverseBits(29663i), Struct_1(u_input.a, ~(vec2<i32>(-1i) * -vec2<i32>(arg_1.b.x, var_1.b.x))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_4((global0.a & ~global0.a) & global0.a), Struct_1(abs(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-628f, 1163f, -1590f, -715f)), Struct_2(vec2<bool>(true, false), vec2<u32>(4294967295u, 79765u), Struct_1(13439u, vec2<i32>(1i, u_input.b.x)), vec3<u32>(4294967295u, global0.a.x, 58110u)), abs(55341u))), select(firstLeadingBit(reverseBits(u_input.b.zx)), -_wgslsmith_clamp_vec2_i32(u_input.b.yx, u_input.b.xz, vec2<i32>(u_input.b.x, u_input.b.x)), false)));
    let var_0 = !(!select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), all(vec2<bool>(false, true)))));
    global0 = Struct_4(~(~vec2<u32>(_wgslsmith_dot_vec2_u32(global0.a, global0.a), ~0u)));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-766f)), -1643f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-225f)) * _wgslsmith_f_op_f32(-877f + -1763f))), -500f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-428f + _wgslsmith_f_op_f32(f32(-1f) * -389f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-204f, -2200f))))), vec4<f32>(834f, -2571f, -358f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(990f)), -1242f), 638f))));
    let var_2 = ~69491u & u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(3455u, u_input.a), vec2<u32>(u_input.a, var_2)), ~vec2<u32>(var_2, u_input.a)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 42514u, var_2, var_2), ~vec4<u32>(1u, var_2, 17730u, global0.a.x))), u_input.a, 48909u, ~countOneBits(u_input.a << (1u % 32u))), -2147483647i, _wgslsmith_mod_vec2_u32(global0.a, vec2<u32>(global0.a.x & 1u, 1u)));
}

