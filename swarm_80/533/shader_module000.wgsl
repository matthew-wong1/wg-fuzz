struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: u32 = 13638u;

var<private> global2: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> u32 {
    let var_0 = Struct_1(global0.a.a.ww, vec2<u32>(countOneBits(global0.b.b.c), ~firstLeadingBit(select(global2.c, global0.b.c.x, arg_1))), abs(~(u_input.a & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.b.c.x, global2.b.x, 0u), global0.c.c))));
    global1 = 8779u << (0u % 32u);
    let var_1 = u_input.a;
    let var_2 = firstTrailingBit(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a, ~68000u, ~u_input.a, 100696u), abs(vec4<u32>(global0.b.b.c, 1u, 28239u, u_input.a) >> (vec4<u32>(4294967295u, global2.b.x, 18100u, global0.c.c.x) % vec4<u32>(32u))))));
    return u_input.a;
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_2 {
    var var_0 = max(~min(~(~4294967295u), abs(firstTrailingBit(25511u))), 1u);
    global1 = reverseBits(~global0.b.b.c ^ arg_0);
    let var_1 = ~(-32663i);
    var var_2 = global0.b.a;
    let var_3 = reverseBits(~(-vec4<i32>(var_1, -1i, _wgslsmith_mult_i32(var_1, 13072i), var_1)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, 3068f, global0.c.a.x, arg_1)))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-global0.c.b.a.x), -265f, 684f, 1282f)))), Struct_1(global2.a, min(_wgslsmith_mult_vec2_u32(global0.b.b.b, vec2<u32>(23486u, 20335u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), global2.b), vec2<u32>(1u, u_input.a), abs(global2.b))), func_3(-_wgslsmith_div_vec3_i32(var_3.wyz, vec3<i32>(var_3.x, var_3.x, var_1)), any(vec2<bool>(false, false)))), abs(vec4<u32>(4294967295u, ~arg_0, global0.c.b.b.x, 1u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_2) -> vec4<f32> {
    global0 = Struct_3(arg_3, func_2(global0.b.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x - global0.b.b.a.x)))), Struct_2(global0.b.a, arg_3.b, ~(arg_3.c ^ vec4<u32>(57598u, 30360u, 0u, 34053u))));
    global1 = u_input.a;
    var var_0 = any(vec4<bool>(true, any(vec3<bool>(any(vec4<bool>(false, false, true, true)), true, true)), any(vec4<bool>(any(vec3<bool>(false, false, true)), false, false, true)), false));
    global1 = abs(select(4294967295u ^ countOneBits(_wgslsmith_mult_u32(1u, arg_2.x)), ~(~63489u), !(global0.a.a.x > _wgslsmith_f_op_f32(-global0.b.a.x))));
    var var_1 = !all(vec2<bool>(!(-1103f <= global2.a.x), all(vec3<bool>(false, true, false))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -325f))), _wgslsmith_f_op_f32(-438f - _wgslsmith_f_op_f32(trunc(arg_3.b.a.x))), true)), _wgslsmith_f_op_f32(-global2.a.x), -1399f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-181f + global0.c.a.x), -119f, global2.a.x, 1414f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.b.b;
    global0 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(401f, _wgslsmith_f_op_f32(-1020f * -1257f), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-global0.a.b.a.x)))), global0.b.b, global0.b.c), Struct_2(_wgslsmith_f_op_vec4_f32(func_1(global0.a.c.xzy, 0u, ~global0.b.c, global0.a)), global0.a.b, countOneBits(abs(vec4<u32>(12531u, 0u, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, global0.a.b.b.x, global2.c) % vec4<u32>(32u))))), global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(0i, 1i));
}

