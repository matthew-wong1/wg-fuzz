struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

var<private> global2: array<u32, 13> = array<u32, 13>(4294967295u, 31095u, 20658u, 1u, 69679u, 32415u, 22007u, 1u, 0u, 14409u, 13052u, 4294967295u, 1u);

var<private> global3: Struct_1 = Struct_1(vec3<u32>(4294967295u, 1u, 45077u), vec3<bool>(true, true, false), vec2<bool>(false, false), vec4<f32>(800f, -299f, 426f, -1269f), vec2<f32>(963f, -666f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    let var_0 = _wgslsmith_add_vec2_u32((vec2<u32>(~0u, _wgslsmith_sub_u32(11410u, global2[_wgslsmith_index_u32(1u, 13u)])) ^ vec2<u32>(~u_input.b.x, global2[_wgslsmith_index_u32(1u, 13u)])) | global3.a.yx, firstLeadingBit(~(~(~global3.a.yx))));
    global3 = Struct_1(_wgslsmith_mod_vec3_u32(max(vec3<u32>(93605u, reverseBits(u_input.b.x), select(u_input.b.x, 39185u, global1.x)), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(27892u, global3.a.x, global3.a.x)), ~global3.a, max(vec3<u32>(66697u, 28327u, 32653u), global3.a))), vec3<u32>(~var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.x, 62898u, 1u, global3.a.x), vec4<u32>(u_input.b.x, var_0.x, u_input.b.x, 1u)), global2[_wgslsmith_index_u32(u_input.b.x, 13u)]) & ~_wgslsmith_add_vec3_u32(global3.a, vec3<u32>(var_0.x, 4294967295u, 4150u))), !(!select(!global3.b, global3.b, !global3.b)), global3.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global3.d)), vec4<f32>(_wgslsmith_f_op_f32(-1000f + global3.e.x), 473f, _wgslsmith_f_op_f32(2205f * global3.d.x), 1386f)) + global3.d), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(862f, -796f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1799f, 1006f) + vec2<f32>(-1279f, arg_0))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 915f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-594f, -1190f)))))));
    let var_1 = Struct_1(~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(1u, var_0.x, var_0.x), global3.a, false), global3.a), countOneBits(global3.a) ^ (global3.a | vec3<u32>(global2[_wgslsmith_index_u32(1u, 13u)], var_0.x, global3.a.x)), global3.a), !(!vec3<bool>(any(vec3<bool>(global1.x, true, global1.x)), !global3.c.x, any(global3.b))), !global3.c, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_div_f32(arg_0, global3.e.x)), _wgslsmith_f_op_f32(1198f * -376f), 222f, arg_0), vec4<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -453f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1245f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1134f) + global3.d.x)))));
    var var_2 = var_1;
    var_2 = var_1;
    return min(~(_wgslsmith_div_vec3_u32(select(var_1.a, vec3<u32>(var_2.a.x, 32373u, 4294967295u), vec3<bool>(false, true, true)), ~vec3<u32>(var_2.a.x, 76868u, var_1.a.x)) & (abs(vec3<u32>(global3.a.x, 4294967295u, u_input.b.x)) >> (var_2.a % vec3<u32>(32u)))), global3.a);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> vec3<bool> {
    let var_0 = Struct_1(max(~_wgslsmith_sub_vec3_u32(arg_1.a, ~arg_1.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), func_3(_wgslsmith_f_op_f32(arg_0.a.e.x + arg_1.d.x)), ~arg_1.a << (vec3<u32>(global3.a.x, global2[_wgslsmith_index_u32(43906u, 13u)], arg_0.a.a.x) % vec3<u32>(32u)))), select(vec3<bool>(global1.x, false, any(select(vec3<bool>(arg_0.a.b.x, global3.c.x, arg_1.c.x), arg_1.b, vec3<bool>(false, true, false)))), select(vec3<bool>(arg_0.a.e.x <= arg_0.a.d.x, all(vec4<bool>(true, true, false, true)), !arg_0.a.b.x), global3.b, !select(vec3<bool>(arg_0.a.c.x, true, true), vec3<bool>(true, arg_1.c.x, true), arg_0.a.b)), !(!(!global3.b))), !(!vec2<bool>(true, any(vec3<bool>(false, arg_0.a.b.x, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_1.d))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1955f, 467f, -799f, -1116f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-202f, arg_0.a.e.x)))))), arg_1.e, false)));
    let var_1 = Struct_2(var_0);
    global2 = array<u32, 13>();
    global0 = vec2<i32>(-(~(~(-4468i))), arg_2);
    var var_2 = ~u_input.a;
    return select(select(select(!(!var_1.a.b), vec3<bool>(true, select(false, var_1.a.b.x, true), global3.c.x), !all(vec2<bool>(false, true))), arg_1.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_1.d.x)))) < arg_0.a.e.x), !select(arg_1.b, !var_1.a.b, !var_1.a.b), var_0.b);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1.b;
    var var_1 = Struct_2(arg_1);
    let var_2 = 27865i;
    let var_3 = all(vec3<bool>(true, any(select(global3.b, select(global3.b, vec3<bool>(global3.c.x, false, true), vec3<bool>(arg_1.b.x, var_0.x, var_1.a.c.x)), true)), var_1.a.b.x));
    var var_4 = var_1.a.a;
    return ~reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_1.a.a.x, 72932u), 13u)]);
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(arg_0.e.x * _wgslsmith_f_op_f32(trunc(arg_0.e.x)));
    let var_1 = global2[_wgslsmith_index_u32(arg_0.a.x, 13u)];
    let var_2 = arg_0;
    var var_3 = Struct_2(var_2);
    global3 = Struct_1(max(var_2.a << (~var_2.a % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(~var_3.a.a >> (~var_3.a.a % vec3<u32>(32u)), ~(~var_3.a.a))), vec3<bool>(true, false, false), !global3.b.zx, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global3.d))), arg_0.e);
    return _wgslsmith_add_u32(func_4(var_2.b.x, Struct_1(max(max(vec3<u32>(arg_0.a.x, var_3.a.a.x, u_input.b.x), global3.a), _wgslsmith_add_vec3_u32(vec3<u32>(63247u, 0u, arg_0.a.x), vec3<u32>(22395u, 22806u, 73165u))), select(global3.b, func_2(Struct_2(Struct_1(vec3<u32>(20371u, arg_0.a.x, 36055u), vec3<bool>(var_2.b.x, false, true), vec2<bool>(var_3.a.c.x, arg_0.b.x), vec4<f32>(-734f, -1000f, var_0, global3.d.x), arg_0.d.wz)), Struct_1(arg_0.a, vec3<bool>(global3.c.x, true, var_2.b.x), global1.zy, vec4<f32>(1445f, 539f, -1368f, var_2.d.x), arg_0.e), 1i), !vec3<bool>(global3.b.x, var_3.a.c.x, true)), vec2<bool>(true, global1.x), var_2.d, global3.d.yy)), 8237u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1104f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(612f)), _wgslsmith_f_op_f32(max(-2684f, global3.d.x)))) + global3.d.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.e.x * -209f)))));
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(global3.a.x, 4294967295u), _wgslsmith_mod_u32(1u, 1u), ~func_1(Struct_1(vec3<u32>(42147u, global2[_wgslsmith_index_u32(45196u, 13u)], global3.a.x), global3.b, global3.b.zy, vec4<f32>(-303f, 1786f, var_0, 1143f), vec2<f32>(var_0, -120f)))), max(~firstTrailingBit(~vec3<u32>(13764u, 28992u, 4294967295u)), abs(~vec3<u32>(26717u, 0u, 1u)) >> (global3.a % vec3<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(exp2(global3.d.x));
    let var_3 = global3.e.x;
    global2 = array<u32, 13>();
    let var_4 = Struct_1(firstTrailingBit(~var_1), global3.b, !select(global3.b.yx, global3.b.yy, global3.b.yx), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1226f, -447f, global3.e.x, -792f), vec4<f32>(687f, 833f, global3.e.x, var_0))) + vec4<f32>(-1000f, global3.d.x, var_0, 633f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -222f, var_0, var_0))))), vec2<f32>(_wgslsmith_f_op_f32(var_0 - 698f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(global3.d.x + -2335f)) + -486f)));
    var_2 = var_4.d.x;
    var var_5 = !var_4.b.x;
    global0 = -u_input.a.zy;
    let x = u_input.a;
    s_output = StorageBuffer(global3.d.x, _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, 1i), firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, global0.x), vec2<i32>(u_input.a.x, -1i), u_input.a.xy)), ~_wgslsmith_div_vec2_i32(u_input.a.yy, u_input.a.zx)), abs(countOneBits(vec2<i32>(0i, -2147483647i) & u_input.a.xx))), 4294967295u, vec4<i32>(_wgslsmith_mult_i32(u_input.a.x >> (1u % 32u), ~u_input.a.x), -2147483647i, ~global0.x, ~_wgslsmith_add_i32(19395i, abs(u_input.a.x))));
}

