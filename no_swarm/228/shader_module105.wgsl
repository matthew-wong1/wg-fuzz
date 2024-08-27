struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    let var_0 = vec4<bool>(all(!vec4<bool>(true, global0.e.x, global0.e.x, true)), false, any(vec2<bool>(false, any(!global0.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(534f)), _wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x))) < -847f);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1001f);
    global0 = Struct_2(0u, Struct_1(var_0.x, global0.b.b | firstTrailingBit(vec4<u32>(u_input.c, 0u, global0.a, 4294967295u))), min(firstLeadingBit(global0.d.yx >> (global0.b.b.xz % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(-(~vec2<i32>(u_input.a, -27923i)), ~(~vec2<i32>(-1i, global0.d.x)))), _wgslsmith_div_vec3_i32(vec3<i32>(firstLeadingBit(u_input.a) ^ -global0.c.x, 0i, -47893i), global0.d & _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, u_input.a, global0.c.x), vec3<i32>(0i, 1i, global0.d.x) & vec3<i32>(global0.d.x, 0i, u_input.a))), !select(!select(vec3<bool>(global0.e.x, true, false), global0.e, var_0.x), global0.e, 4294967295u > firstTrailingBit(u_input.b)));
    global0 = Struct_2(u_input.c ^ _wgslsmith_sub_u32(_wgslsmith_mod_u32(abs(u_input.d), global0.b.b.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(global0.b.b.xxz, vec3<u32>(36362u, global0.b.b.x, 17626u)), abs(vec3<u32>(global0.a, global0.a, 12282u)))), Struct_1(all(global0.e.xz), (global0.b.b | global0.b.b) ^ vec4<u32>(global0.a, firstTrailingBit(global0.a), _wgslsmith_add_u32(0u, 1u), ~u_input.d)), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global0.c.x ^ global0.c.x, min(global0.c.x, u_input.a)), vec2<i32>(reverseBits(-1i), _wgslsmith_mult_i32(-14738i, -5378i))), _wgslsmith_mod_vec2_i32(global0.c ^ -global0.c, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -40048i) & vec2<i32>(2147483647i, 5442i), firstTrailingBit(global0.d.yz)))), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -select(vec3<i32>(global0.c.x, u_input.a, u_input.a), vec3<i32>(global0.c.x, -2147483647i, -24784i), true), global0.d), global0.e);
    var var_2 = -1474f;
    return !select(any(vec3<bool>(any(vec4<bool>(true, true, true, var_0.x)), all(var_0), !global0.b.a)), any(var_0.zx) && !(!global0.b.a), (_wgslsmith_f_op_f32(exp2(arg_0.x)) >= _wgslsmith_div_f32(-390f, 1000f)) & any(var_0));
}

fn func_2() -> Struct_1 {
    global0 = Struct_2(global0.b.b.x, Struct_1(func_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1231f, -474f, 266f)))), _wgslsmith_div_vec4_u32(global0.b.b, _wgslsmith_div_vec4_u32(~global0.b.b, vec4<u32>(4294967295u, 4294967295u, global0.b.b.x, 0u)))), select(vec2<i32>(_wgslsmith_clamp_i32(global0.d.x, _wgslsmith_sub_i32(-2147483647i, global0.d.x), -2147483647i), -1i), global0.c, vec2<bool>(all(vec2<bool>(true, global0.e.x)), global0.c.x < (u_input.a & 99i))), global0.d, global0.e);
    return Struct_1(!(!select(!global0.e.x, global0.e.x, global0.e.x)), global0.b.b);
}

fn func_1() -> u32 {
    let var_0 = false;
    let var_1 = var_0;
    var var_2 = func_2();
    let var_3 = Struct_3(!vec2<bool>(var_0, var_0), Struct_2(0u, func_2(), (-global0.d.xx >> (global0.b.b.zy % vec2<u32>(32u))) | vec2<i32>(reverseBits(12034i), u_input.a | -63559i), abs(-(global0.d << (global0.b.b.wxx % vec3<u32>(32u)))), vec3<bool>(var_1, !(global0.c.x == -26639i), !var_0)), firstLeadingBit(min(~(~var_2.b.zx), global0.b.b.yz)), global0.d.x);
    var var_4 = Struct_3(!select(!vec2<bool>(var_0, global0.b.a), !vec2<bool>(true, var_3.a.x), vec2<bool>(true, global0.b.a)), var_3.b, vec2<u32>(0u, global0.b.b.x), min(var_3.b.c.x, var_3.b.d.x));
    return ~reverseBits(_wgslsmith_sub_u32(8231u, max(var_4.c.x << (var_2.b.x % 32u), _wgslsmith_mult_u32(30339u, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global0.e.zy, Struct_2(func_1(), global0.b, _wgslsmith_mod_vec2_i32(min(vec2<i32>(global0.d.x, -1i), global0.c) << ((global0.b.b.xz & global0.b.b.yx) % vec2<u32>(32u)), countOneBits(~vec2<i32>(u_input.a, u_input.a))), vec3<i32>(149i, 0i, abs(-46877i)), global0.e), global0.b.b.zz, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(global0.d.zy, -vec2<i32>(global0.d.x, u_input.a)), 2147483647i));
    let var_1 = var_0.a.x;
    let var_2 = var_0.b.b;
    var var_3 = Struct_3(!var_0.b.e.xy, Struct_2(_wgslsmith_div_u32(func_1(), firstTrailingBit(_wgslsmith_dot_vec4_u32(var_2.b, var_2.b))), func_2(), var_0.b.c & -vec2<i32>(var_0.b.c.x, 22163i), vec3<i32>(~firstTrailingBit(-23110i), firstLeadingBit(global0.d.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(-14459i, u_input.a, -2147483647i, u_input.a), ~vec4<i32>(global0.d.x, 0i, var_0.d, -16834i))), global0.e), vec2<u32>(global0.a, 18148u), var_0.b.d.x);
    let var_4 = ~countOneBits(func_2().b.x);
    let var_5 = var_0.b.b.b.yzy;
    let var_6 = var_0.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))), _wgslsmith_dot_vec4_u32(~(~abs(vec4<u32>(var_4, u_input.d, 0u, var_3.c.x))), _wgslsmith_mult_vec4_u32(~vec4<u32>(57434u, 26854u, 1u, u_input.c), _wgslsmith_add_vec4_u32(~vec4<u32>(var_2.b.x, 6845u, var_2.b.x, u_input.b), ~vec4<u32>(4294967295u, 0u, var_6.b.x, var_4)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(650f, -204f), _wgslsmith_f_op_f32(796f * -1298f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -410f), _wgslsmith_f_op_f32(trunc(786f)))))));
}

