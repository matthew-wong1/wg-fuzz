struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: u32 = 0u;

var<private> global2: Struct_1;

var<private> global3: vec3<bool> = vec3<bool>(true, false, true);

var<private> global4: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: u32) -> vec4<f32> {
    var var_0 = true;
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.a)))))));
}

fn func_2(arg_0: bool, arg_1: i32) -> f32 {
    global2 = Struct_1(global2.a, global4.d, true, _wgslsmith_div_u32(78298u, _wgslsmith_mult_u32(u_input.c.x, countOneBits(firstLeadingBit(71266u)))), global2.a.x);
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_vec4_u32(vec4<u32>(global2.d, countOneBits(u_input.c.x), abs(4294967295u), ~global2.d), firstTrailingBit(vec4<u32>(1120u, global2.d, global2.d, 25523u) ^ vec4<u32>(0u, global2.d, global2.d, global2.d))), vec4<u32>(1u, global0.x & 1u, global0.x, u_input.c.x), _wgslsmith_mult_u32(u_input.c.x, ~global2.d))), i32(-1i) * -(-u_input.a.x >> (global2.d % 32u)), !(!(global4.a > _wgslsmith_f_op_f32(-1692f - -253f))), 0u, _wgslsmith_f_op_f32(f32(-1f) * -1379f));
    let var_1 = Struct_5(19555i, var_0.d, global3.x);
    return -481f;
}

fn func_1() -> bool {
    var var_0 = global4.a;
    let var_1 = min(_wgslsmith_clamp_vec2_i32(u_input.b.xy, _wgslsmith_sub_vec2_i32(global4.c.yy, _wgslsmith_sub_vec2_i32(abs(u_input.b.zx), select(vec2<i32>(-8028i, global4.d), vec2<i32>(global4.d, global2.b), false))), countOneBits(u_input.a.zy >> (_wgslsmith_mult_vec2_u32(vec2<u32>(global2.d, global0.x), vec2<u32>(0u, u_input.c.x)) % vec2<u32>(32u)))), global4.c.ww);
    var var_2 = firstLeadingBit(global2.d);
    let var_3 = _wgslsmith_f_op_f32(func_2(any(vec3<bool>(any(select(vec4<bool>(true, true, global2.c, global2.c), vec4<bool>(true, false, true, false), global3.x)), global2.c, true)), -(~firstTrailingBit(-27170i))));
    let var_4 = Struct_2(-337f, select(global4.b, vec2<bool>(reverseBits(19872u) != u_input.c.x, any(select(vec4<bool>(false, global2.c, false, global4.b.x), vec4<bool>(global2.c, true, global3.x, false), global2.c))), global4.b.x), select(global4.e, max(-u_input.b, -global4.c), false), -(~(-16306i)), max(vec4<i32>(1i, 0i, -30162i, select(2147483647i, ~global2.b, !global2.c)), u_input.b));
    return any(!select(vec3<bool>(var_4.b.x, any(vec4<bool>(global2.c, global2.c, false, false)), !global4.b.x), select(vec3<bool>(global4.b.x, false, true), select(vec3<bool>(global2.c, false, false), vec3<bool>(true, true, global2.c), var_4.b.x), global4.b.x), !vec3<bool>(global4.b.x, global2.c, global4.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!global2.c, func_1(), countOneBits(74i) < u_input.b.x, true);
    var var_1 = 1i;
    global4 = Struct_2(-585f, var_0.xy, select(_wgslsmith_sub_vec4_i32(select(-u_input.b, ~vec4<i32>(1i, global4.e.x, 18602i, global2.b), !global2.c), firstTrailingBit(u_input.b)), u_input.b, !var_0), global4.e.x, vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~global4.e.wz, u_input.a.xy), 1i), ((global2.b & global4.d) << (0u % 32u)) | _wgslsmith_clamp_i32(global2.b, 0i, min(23309i, -6391i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(8045i, global4.d), vec2<i32>(u_input.a.x, 28368i)) ^ 21929i, global4.d));
    var_1 = 1i;
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.a) - global2.a))), abs(_wgslsmith_clamp_i32(~0i, 2147483647i, 1i)), true, 3366u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global4.a))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, -503f, min(2024u, global2.d));
}

