struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec4<i32>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<u32>(12349u, 64024u, 17861u), Struct_3(vec4<i32>(-52501i, -66579i, -1i, 0i), Struct_2(Struct_1(true, 32939u, 1u), 8141u), vec4<i32>(-1i, -27625i, -7693i, 61290i), 529f, vec3<bool>(false, true, false)), true, Struct_3(vec4<i32>(-1i, 14118i, 6412i, 0i), Struct_2(Struct_1(true, 48153u, 17880u), 0u), vec4<i32>(55272i, -63998i, 7610i, 53104i), 334f, vec3<bool>(false, false, false)));

var<private> global1: array<Struct_1, 18>;

var<private> global2: array<vec4<f32>, 8>;

var<private> global3: array<Struct_2, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = any(select(select(select(vec4<bool>(global0.d.e.x, true, true, global0.d.e.x), vec4<bool>(arg_0.x, global0.c, global0.d.e.x, true), false), select(vec4<bool>(true, global0.c, false, global0.d.e.x), vec4<bool>(global0.d.e.x, true, false, false), false), select(vec4<bool>(false, arg_0.x, false, global0.c), vec4<bool>(false, arg_0.x, false, false), arg_0.x)), vec4<bool>(!global0.b.e.x, true, global0.d.b.a.a, true), false)) & global0.b.e.x;
    let var_1 = countOneBits(~firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(71075u, 26522u), ~global0.d.b.a.b)));
    let var_2 = Struct_2(Struct_1(~global0.b.c.x <= _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(global0.b.a.x, 2147483647i)), firstTrailingBit(vec2<i32>(global0.d.c.x, global0.b.a.x))), abs(_wgslsmith_mult_u32(0u, 7777u)), ~1u), countOneBits(_wgslsmith_add_u32(64318u, u_input.b)));
    let var_3 = Struct_4((global0.a << (vec3<u32>(global0.a.x, 47705u << (u_input.b % 32u), 1u) % vec3<u32>(32u))) << ((global0.a & vec3<u32>(~62951u, ~47192u, 0u)) % vec3<u32>(32u)), Struct_3(global0.b.c, Struct_2(Struct_1(false, firstLeadingBit(var_2.b), ~global0.d.b.a.b), 1u), global0.d.a ^ countOneBits(min(global0.b.a, global0.b.c)), _wgslsmith_f_op_f32(-1f), select(select(select(global0.b.e, global0.d.e, global0.b.e), !global0.d.e, global0.d.e), global0.d.e, global0.d.e)), select(arg_0.x, true, true), global0.b);
    global1 = array<Struct_1, 18>();
    return ~(~0u);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: f32) -> vec3<bool> {
    var var_0 = Struct_1(all(vec4<bool>(all(global0.d.e.xy), true, global0.d.e.x, !global0.c)), ~(~func_3(vec2<bool>(true, true)) | ((arg_1.x | arg_1.x) | u_input.e)), u_input.b);
    var var_1 = ~countOneBits(global0.d.c.x);
    let var_2 = -(~max(_wgslsmith_div_i32(~2147483647i, _wgslsmith_mod_i32(global0.d.c.x, -1i)), -49246i));
    let var_3 = Struct_2(Struct_1(max(abs(-35822i), var_2) < ~(var_2 & 0i), abs(4294967295u), abs(func_3(vec2<bool>(false, true)))), _wgslsmith_mult_u32(abs(32023u), ~(~33609u)));
    var var_4 = global0.d.a.zwy;
    return global0.d.e;
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    var var_0 = !select(vec2<bool>(any(global0.b.e.yx), global0.b.e.x), global0.b.e.xx, vec2<bool>(any(func_2(vec4<u32>(global0.d.b.b, 110540u, 18802u, u_input.e), vec3<u32>(global0.a.x, global0.b.b.b, 4294967295u), 390f)), true));
    let var_1 = var_0.x;
    return ~11376u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_clamp_vec2_u32(min(vec2<u32>(~19474u, min(global0.b.b.a.b, 1u)), ~vec2<u32>(15878u, 6301u)), vec2<u32>(9434u << (func_1(vec2<f32>(global0.d.d, global0.b.d)) % 32u), ~12629u), firstTrailingBit(vec2<u32>(~global0.d.b.a.c, reverseBits(u_input.c)))), global0.a.xy, global0.c);
    var var_1 = ~(reverseBits(~global0.a.x) >> ((var_0.x ^ ~92912u) % 32u)) >> (firstLeadingBit(_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(u_input.d, u_input.c)), firstLeadingBit(vec2<u32>(60774u, var_0.x)))) % 32u);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(1105f)), _wgslsmith_f_op_f32(-1f));
    let var_3 = global0.b.a.x;
    var var_4 = vec3<bool>(true, all(func_2(~vec4<u32>(var_0.x, 1u, var_0.x, var_0.x), vec3<u32>(1u, global0.b.b.a.c, global0.b.b.b), 422f)), true);
    var var_5 = Struct_2(global1[_wgslsmith_index_u32(34779u, 18u)], 108182u);
    global3 = array<Struct_2, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(global0.d.c.yyw, global0.b.a.x, global0.d.a.x, global0.b.c.zz, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.x)) * _wgslsmith_f_op_f32(-1526f * var_2.x)), _wgslsmith_f_op_f32(-1581f + _wgslsmith_f_op_f32(select(var_2.x, global0.d.d, var_4.x))), _wgslsmith_f_op_f32(f32(-1f) * -453f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-830f, var_2.x, global0.b.d)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 162f, 240f), vec3<f32>(-2200f, 500f, var_2.x)))) * vec3<f32>(799f, _wgslsmith_f_op_f32(step(var_2.x, 1185f)), _wgslsmith_f_op_f32(sign(global0.b.d))))));
}

