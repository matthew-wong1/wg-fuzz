struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec2<u32>(4294967295u, 4294967295u), true), Struct_2(vec2<u32>(28159u, 1u), true), Struct_2(vec2<u32>(1u, 4294967295u), true), Struct_2(vec2<u32>(11122u, 4294967295u), true), Struct_2(vec2<u32>(4294967295u, 8470u), false), Struct_2(vec2<u32>(4294967295u, 49883u), false), Struct_2(vec2<u32>(8115u, 0u), false), Struct_2(vec2<u32>(22808u, 81889u), false), Struct_2(vec2<u32>(78990u, 16383u), true), Struct_2(vec2<u32>(1u, 63002u), false), Struct_2(vec2<u32>(70558u, 51565u), true), Struct_2(vec2<u32>(32871u, 0u), true), Struct_2(vec2<u32>(1u, 51937u), true), Struct_2(vec2<u32>(51682u, 0u), false), Struct_2(vec2<u32>(4294967295u, 56139u), true), Struct_2(vec2<u32>(0u, 1u), false));

var<private> global1: f32 = -1248f;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<f32>(-446f, -719f, -120f)), Struct_1(vec3<f32>(313f, 217f, 1000f)), Struct_1(vec3<f32>(-617f, -1764f, 213f)), Struct_1(vec3<f32>(662f, 598f, 100f)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: i32) -> bool {
    let var_0 = Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(~u_input.a.x, u_input.a.x) >> (~u_input.a.xx % vec2<u32>(32u)), ~(~vec2<u32>(30609u, 12103u) >> (select(vec2<u32>(14387u, u_input.a.x), vec2<u32>(1u, u_input.a.x), true) % vec2<u32>(32u)))), !all(vec2<bool>(true, false)) | true);
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    global2 = array<Struct_1, 4>();
    let var_1 = var_0.b == var_0.b;
    return ((~min(u_input.a.x, u_input.a.x) >> (var_0.a.x % 32u)) > firstTrailingBit(u_input.a.x)) | var_1;
}

fn func_2(arg_0: bool, arg_1: f32) -> vec3<bool> {
    var var_0 = any(!vec4<bool>(!func_3(arg_1, -155f, u_input.c), arg_0, true, all(!vec2<bool>(arg_0, true))));
    var_0 = select(any(vec3<bool>(~u_input.b.x <= ~u_input.d, select(true, arg_0, arg_0) & all(vec2<bool>(arg_0, false)), true != (u_input.b.x > -26910i))), 613f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 290f))), true);
    var var_1 = u_input.a.yxx;
    let var_2 = Struct_3(u_input.a.zxz, _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(-arg_1))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, ~max(~0u, 1u)), 4u)], !(!select(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0)), !vec2<bool>(true, arg_0), true)));
    var var_3 = global0[_wgslsmith_index_u32(11625u, 16u)];
    return select(!(!select(vec3<bool>(false, var_3.b, true), vec3<bool>(var_3.b, arg_0, true), any(vec4<bool>(false, arg_0, false, arg_0)))), select(vec3<bool>(any(vec2<bool>(true, true)), !any(vec3<bool>(false, false, false)), u_input.c == ~u_input.c), !(!(!vec3<bool>(arg_0, true, var_2.d.x))), arg_0), true);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_1 {
    global0 = array<Struct_2, 16>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-696f))));
    global2 = array<Struct_1, 4>();
    var var_1 = func_2(arg_2.b, 1f);
    var_1 = !(!func_2(false, -1148f));
    return global2[_wgslsmith_index_u32(54150u, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(2147483647i, 2147483647i);
    let var_1 = !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(false, false, true))), true), true);
    global2 = array<Struct_1, 4>();
    let var_2 = func_1(391f, vec2<i32>(_wgslsmith_clamp_i32(17579i, u_input.b.x, u_input.b.x), u_input.d), Struct_2(_wgslsmith_div_vec2_u32(~u_input.a.zw, firstTrailingBit(~vec2<u32>(u_input.a.x, u_input.a.x))), true), _wgslsmith_div_vec3_u32(u_input.a.xyz, vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 1u))), firstTrailingBit(u_input.a.x), _wgslsmith_add_u32(select(1u, u_input.a.x, true), max(u_input.a.x, 0u)))));
    global0 = array<Struct_2, 16>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_2.a.yy)))))));
    let var_4 = -940f;
    var var_5 = Struct_3(~abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 35807u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.wwz, vec3<u32>(19103u, u_input.a.x, u_input.a.x))), var_3.x, func_1(var_2.a.x, ~u_input.b.zx, global0[_wgslsmith_index_u32(~u_input.a.x, 16u)], vec3<u32>(~120618u, 23644u, reverseBits(67378u)) | vec3<u32>(28410u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x)), countOneBits(u_input.a.x))), !(!vec2<bool>(u_input.d > -22721i, false)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d, ~firstTrailingBit(u_input.c), _wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(floor(-937f)))));
}

