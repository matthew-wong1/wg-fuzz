struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(true, true, true, true, true, true, false, false, false, false, true, true, false, true, true, false, true, true, true, false, true, false, true, false, true, false, true, false, false);

var<private> global1: vec4<bool>;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(0u, 9856u), 96570u, vec4<i32>(0i, 5409i, 9667i, 0i));

var<private> global3: Struct_5;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec3<f32>) -> vec2<u32> {
    var var_0 = Struct_3(Struct_1(global2.a, arg_1, max(-firstTrailingBit(vec4<i32>(u_input.c.x, global2.c.x, u_input.c.x, -1i)), global2.c)), false, Struct_1(abs(vec2<u32>(6645u, 50129u)), 1u, global2.c), arg_2.x);
    var var_1 = vec2<u32>(arg_1, var_0.a.b);
    var var_2 = var_0.a.c.x;
    var var_3 = var_0.c.c.x;
    var_1 = abs(global2.a) ^ ~((global2.a & (global2.a ^ var_0.c.a)) & abs(reverseBits(global2.a)));
    return ~vec2<u32>(abs(reverseBits(var_1.x) ^ ~4294967295u), 54657u);
}

fn func_2(arg_0: i32) -> vec2<u32> {
    global3 = Struct_5(global3.a);
    return firstTrailingBit(~global2.a) | ~(func_3(u_input.a | u_input.a, global2.a.x, vec3<f32>(183f, -184f, 1072f)) << (firstTrailingBit(abs(vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u)));
}

fn func_1() -> i32 {
    var var_0 = Struct_1(select(global2.a, func_2(~(-1i | global2.c.x)), true), global2.a.x, vec4<i32>(_wgslsmith_clamp_i32(u_input.c.x, 1i, global2.c.x >> (~global2.b % 32u)), firstTrailingBit(_wgslsmith_mult_i32(1i, global2.c.x | u_input.b.x)), ~((i32(-1i) * -21404i) & global2.c.x), ~(_wgslsmith_mod_i32(1i, u_input.c.x) ^ (global2.c.x | global2.c.x))));
    let var_1 = ~min(~firstTrailingBit(~vec2<u32>(var_0.a.x, var_0.a.x)), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(4294967295u, 16653u)), func_2(global2.c.x).x));
    global1 = global3.a.a;
    var var_2 = Struct_5(global3.a);
    global3 = Struct_5(Struct_4(!(!vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 29u)], global3.a.a.x, true, false))));
    return ~countOneBits(_wgslsmith_mod_i32(u_input.c.x | -1i, _wgslsmith_dot_vec2_i32(max(vec2<i32>(global2.c.x, -1i), vec2<i32>(2147483647i, u_input.c.x)), abs(var_0.c.wz))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global2.a, 36650u, ~_wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.b.x, -6285i, func_1(), global2.c.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, -54207i, global2.c.x, 6535i) & global2.c, ~vec4<i32>(-1i, global2.c.x, u_input.b.x, global2.c.x))));
    let var_1 = Struct_2(Struct_1(global2.a >> (_wgslsmith_add_vec2_u32(var_0.a, ~vec2<u32>(52829u, global2.b)) % vec2<u32>(32u)), _wgslsmith_sub_u32(global2.a.x, 0u), ~_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(global2.c, vec4<i32>(-12268i, var_0.c.x, u_input.b.x, -38153i)), vec4<i32>(-2147483647i, 36822i, u_input.b.x, -41940i))), Struct_1(~func_3(0u, max(45595u, 6328u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-528f, -622f, -715f))), ~(~57701u), var_0.c));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(-974f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-705f * -431f) + _wgslsmith_f_op_f32(1047f - -327f)), 1008f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(163f, -423f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(759f, -1199f, -955f, 1025f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-983f, 305f, 1799f, 1392f) + vec4<f32>(-1000f, 743f, 134f, -924f))))));
    let var_3 = countOneBits(~var_1.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_vec4_f32(-var_2), _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.c.x, -var_0.c.x, var_1.b.c.x, var_1.b.c.x), -(~vec4<i32>(45152i, -2147483647i, u_input.c.x, 1i))));
}

