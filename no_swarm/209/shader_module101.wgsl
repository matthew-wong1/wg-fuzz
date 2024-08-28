struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(149f, -974f, -614f), vec2<f32>(301f, -2030f), 2147483647i, vec3<i32>(2147483647i, -34289i, i32(-2147483648)), vec3<bool>(false, true, false));

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<f32>(-377f, -1205f, 249f), vec2<f32>(-782f, 1009f), 1i, vec3<i32>(-38626i, i32(-2147483648), 40381i), vec3<bool>(true, false, false)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_4) -> f32 {
    global1 = arg_2.c.b.a.e.yx;
    var var_0 = arg_2.c.e;
    var_0 = 1u;
    var_0 = 1u;
    var var_1 = arg_2.c.a;
    return 1000f;
}

fn func_2() -> vec2<i32> {
    var var_0 = true;
    global2 = Struct_2(global2.a);
    var_0 = max(global0.d.x, _wgslsmith_div_i32(-18377i, ~global2.a.c)) != -1i;
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(global2.a), Struct_1(_wgslsmith_div_vec3_f32(global2.a.a, vec3<f32>(-2054f, global2.a.b.x, 748f)), _wgslsmith_f_op_vec2_f32(-global2.a.a.xz), _wgslsmith_mult_i32(global0.c, u_input.a.x), vec3<i32>(2147483647i, -86227i, global2.a.c) ^ global2.a.d, select(vec3<bool>(global2.a.e.x, true, false), vec3<bool>(false, global1.x, true), global2.a.e)), Struct_4(u_input.b << (1u % 32u), vec4<f32>(885f, -1000f, global0.b.x, -798f), Struct_3(global2.a, Struct_2(global2.a), global2.a.a, 773f, 0u)))), _wgslsmith_f_op_f32(func_3(Struct_2(global2.a), global2.a, Struct_4(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 69694u, u_input.d, 41789u), u_input.e), vec4<f32>(global2.a.a.x, global2.a.a.x, -916f, 453f), Struct_3(global2.a, Struct_2(Struct_1(vec3<f32>(574f, 1000f, 1000f), global2.a.b, global2.a.d.x, vec3<i32>(global2.a.d.x, -23273i, global0.c), global0.e)), vec3<f32>(-1060f, 351f, global2.a.b.x), global2.a.a.x, u_input.e.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -724f) * _wgslsmith_f_op_f32(ceil(global2.a.a.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-168f * 640f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1343f, _wgslsmith_div_f32(-593f, -566f)))))), 15502i, global0.d, vec3<bool>(any(global0.e.zx), any(vec4<bool>(true, global2.a.e.x, global1.x, true)), !global2.a.e.x));
    let var_2 = vec4<f32>(990f, global2.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global2.a.b.x))))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2564f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.x))))));
    return var_1.d.yx;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: f32) -> u32 {
    var var_0 = 1u;
    var var_1 = -vec2<i32>(~global2.a.d.x, _wgslsmith_dot_vec2_i32(-func_2(), ~vec2<i32>(global0.d.x, u_input.a.x)));
    global0 = Struct_1(vec3<f32>(arg_0.a.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)))), global2.a.a.x), vec2<f32>(_wgslsmith_f_op_f32(-global2.a.a.x), _wgslsmith_f_op_f32(sign(1329f))), 1i, _wgslsmith_mult_vec3_i32(vec3<i32>(max(arg_0.a.c, u_input.a.x), global2.a.c, global2.a.d.x), global2.a.d), arg_0.a.e);
    var var_2 = !(!vec4<bool>(false, ~u_input.e.x != 1u, true, _wgslsmith_mod_u32(u_input.c, u_input.b) < 4294967295u));
    let var_3 = ~_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, _wgslsmith_sub_i32(u_input.a.x, -52786i), global0.c, arg_0.a.c), ~(~(vec4<i32>(18669i, var_1.x, -5925i, -18004i) << (u_input.e % vec4<u32>(32u)))));
    return u_input.d >> (_wgslsmith_sub_u32(4294967295u, 22360u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(global0.d.yx >> (vec2<u32>(1u, u_input.b) % vec2<u32>(32u)), u_input.a >> (~abs(countOneBits(vec2<u32>(u_input.e.x, u_input.c))) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-405f - global2.a.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.a.a.x))))), _wgslsmith_f_op_f32(global2.a.b.x - -327f), -887f));
    var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 2147483647i), u_input.a);
    global0 = global2.a;
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(95221u, ~(u_input.c ^ func_1(Struct_2(Struct_1(vec3<f32>(1106f, -308f, 230f), global2.a.b, 44945i, vec3<i32>(global0.d.x, global2.a.d.x, var_0.x), global2.a.e)), vec4<bool>(global0.e.x, global1.x, global1.x, global0.e.x), global2.a.b.x)), u_input.e.x, 0u | (max(u_input.d, u_input.e.x) | _wgslsmith_clamp_u32(u_input.d, u_input.d, u_input.c))), (abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 1u, 4349u), u_input.e)) >> (_wgslsmith_add_vec4_u32(u_input.e, vec4<u32>(u_input.e.x, u_input.d, u_input.c, u_input.d)) % vec4<u32>(32u))) << (u_input.e % vec4<u32>(32u)));
    var var_3 = Struct_2(Struct_1(global2.a.a, global2.a.a.xx, _wgslsmith_dot_vec4_i32(~firstTrailingBit(vec4<i32>(global2.a.d.x, -1i, u_input.a.x, -7347i)), -(~vec4<i32>(global2.a.d.x, global2.a.d.x, -37978i, 1i))), max(-select(vec3<i32>(var_0.x, u_input.a.x, global0.d.x), global2.a.d, global2.a.e), max(global0.d, max(global2.a.d, global2.a.d))), !vec3<bool>(all(global2.a.e), true, true)));
    var var_4 = global2.a.d;
    var var_5 = 37045i;
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.x, max(~var_3.a.d, min(abs(~vec3<i32>(2147483647i, var_4.x, var_4.x)), global0.d)), firstLeadingBit(1u), select(~(-var_4.zx & var_3.a.d.xy), firstTrailingBit(firstTrailingBit(vec2<i32>(93629i, var_0.x)) >> (vec2<u32>(u_input.b, 20912u) % vec2<u32>(32u))), global0.e.zx));
}

