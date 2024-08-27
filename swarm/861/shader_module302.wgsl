struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<f32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, 1u, vec3<f32>(-1980f, -149f, 1001f), Struct_1(-1i, vec3<bool>(false, true, true), vec2<f32>(1751f, 1281f), -1000f, vec3<i32>(2147483647i, 0i, 0i)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    let var_0 = global0.d.e.x;
    let var_1 = reverseBits(vec2<u32>(25018u & ~abs(global0.b), ~(~(global0.b ^ 0u))));
    var var_2 = 35571u;
    let var_3 = -62141i;
    var var_4 = 1i;
    return -32489i;
}

fn func_2() -> i32 {
    global0 = Struct_2(global0.d.b.x, global0.b, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-436f, global0.c.x, global0.c.x)) + vec3<f32>(1f, 1f, 1f)))), global0.c)), Struct_1((~2147483647i << (global0.b % 32u)) & global0.d.e.x, select(vec3<bool>(true, true, true), vec3<bool>(false, true, global0.d.b.x), !vec3<bool>(global0.d.b.x, global0.a, false)), global0.c.xx, _wgslsmith_f_op_f32(global0.d.c.x + global0.c.x), abs(global0.d.e)));
    var var_0 = vec4<i32>(_wgslsmith_div_i32(reverseBits(-1i), global0.d.a & firstTrailingBit(global0.d.e.x)), ~_wgslsmith_clamp_i32(func_3(), global0.d.e.x, global0.d.e.x), 29078i, 1i);
    global0 = Struct_2(true, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(global0.b, global0.b, global0.b, 4294967295u), ~vec4<u32>(global0.b, 0u, 4294967295u, global0.b)), vec4<u32>(~4294967295u, global0.b >> (global0.b % 32u), ~global0.b, 14790u)), 8601u), _wgslsmith_f_op_vec3_f32(global0.c + global0.c), Struct_1(-30289i, !global0.d.b, global0.d.c, global0.c.x, global0.d.e));
    var_0 = _wgslsmith_sub_vec4_i32(abs(max(-vec4<i32>(-1i, 53225i, 35341i, global0.d.e.x), ~vec4<i32>(4733i, 43218i, var_0.x, u_input.b.x))), -vec4<i32>(46438i, global0.d.a, var_0.x, 1i) ^ (vec4<i32>(-1i) * -vec4<i32>(global0.d.e.x, -32261i, 1i, 0i))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(0u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, 0u, global0.b), vec3<u32>(global0.b, global0.b, global0.b)), global0.b), 79735u ^ global0.b, ~global0.b), ~vec4<u32>(global0.b, abs(0u), ~39232u, ~global0.b)) % vec4<u32>(32u));
    var var_1 = select(!vec3<bool>(true && global0.a, global0.d.b.x, true), !select(!global0.d.b, global0.d.b, !(global0.a & false)), global0.d.b);
    return 0i;
}

fn func_1() -> i32 {
    var var_0 = ~(~vec3<u32>(global0.b & firstLeadingBit(global0.b), global0.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(14544u, global0.b, global0.b), vec3<u32>(global0.b, 23459u, 14282u))));
    var var_1 = global0.d;
    let var_2 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(~2233i, func_2(), -max(-1i, 8970i)), u_input.a), var_1.b, vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -811f)))), 769f, global0.d.e);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c.x))) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)))), 2534u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -317f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -104f), -260f)), -1028f)), global0.d);
    let var_4 = global0.d.d;
    return -(i32(-1i) * -(~(-8574i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global0.d.b.x, 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.c, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1402f, global0.d.c.x, global0.d.c.x))), true))), global0.d);
    global0 = Struct_2(~func_1() == -26059i, 14014u, _wgslsmith_f_op_vec3_f32(select(global0.c, global0.c, var_0.d.b)), var_0.d);
    global0 = Struct_2(false, 0u, global0.c, Struct_1(_wgslsmith_mult_i32(10280i, _wgslsmith_mod_i32(0i, u_input.b.x)), global0.d.b, vec2<f32>(var_0.d.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.c.x * var_0.c.x), global0.d.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -706f), -516f))), -global0.d.e));
    var var_1 = all(select(!select(!vec4<bool>(true, var_0.a, var_0.a, global0.a), !vec4<bool>(global0.a, true, var_0.a, global0.d.b.x), true), select(!(!vec4<bool>(global0.a, global0.a, var_0.d.b.x, var_0.a)), select(vec4<bool>(global0.a, var_0.a, global0.d.b.x, true), vec4<bool>(true, true, global0.a, global0.d.b.x), select(vec4<bool>(var_0.d.b.x, global0.d.b.x, false, false), vec4<bool>(global0.d.b.x, var_0.a, var_0.a, true), global0.d.b.x)), select(vec4<bool>(var_0.d.b.x, var_0.a, var_0.a, false), vec4<bool>(false, true, true, true), false)), all(select(select(vec4<bool>(var_0.d.b.x, true, global0.a, var_0.d.b.x), vec4<bool>(var_0.a, var_0.a, true, true), vec4<bool>(global0.d.b.x, var_0.d.b.x, global0.d.b.x, global0.a)), !vec4<bool>(true, false, false, global0.a), false))));
    var_1 = all(select(!select(select(var_0.d.b, var_0.d.b, false), select(vec3<bool>(var_0.d.b.x, false, true), vec3<bool>(true, global0.a, global0.d.b.x), global0.d.b), !var_0.d.b), vec3<bool>(any(!vec3<bool>(global0.a, global0.a, false)), !global0.d.b.x, false), any(var_0.d.b)));
    var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.d) + var_0.c.x));
    var var_3 = select(var_0.d.b.zz, global0.d.b.xx, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(global0.b, 1u), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(577f * var_2))), -1000f, 387f), _wgslsmith_f_op_vec3_f32(-global0.c))), u_input.b.x, 15435u, 30590u);
}

