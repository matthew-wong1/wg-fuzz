struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(10169i, 0i, 8929i, 2147483647i), vec4<i32>(2431i, 2147483647i, 24511i, i32(-2147483648)), vec4<i32>(-24754i, -56279i, i32(-2147483648), 12523i), vec4<i32>(-16426i, i32(-2147483648), -1i, 2147483647i), vec4<i32>(17211i, 1i, -1i, -21401i), vec4<i32>(9844i, 1i, 1i, 1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    global0 = array<vec4<i32>, 6>();
    global0 = array<vec4<i32>, 6>();
    global0 = array<vec4<i32>, 6>();
    var var_0 = ~u_input.b.x;
    let var_1 = ~(u_input.a >> (reverseBits(firstTrailingBit(vec3<u32>(u_input.a.x, 1u, 7639u))) % vec3<u32>(32u)));
    return select(select(vec2<bool>(false, select(true, any(vec3<bool>(false, true, false)), true)), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), true), all(vec4<bool>(true, false, false, true)))), !vec2<bool>(all(vec2<bool>(true, true)), !any(vec2<bool>(true, true))), true);
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = select(select(arg_1.a.b.yz, select(arg_1.a.d.yy, func_3(), false), all(!(!vec4<bool>(true, arg_1.a.b.x, arg_1.a.d.x, false)))), arg_2.d.zz, select(arg_2.d.xy, !arg_1.a.b.yy, true));
    var var_1 = arg_1.a;
    let var_2 = _wgslsmith_f_op_f32(trunc(-845f));
    var_1 = arg_1.a;
    let var_3 = Struct_2(arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.b) - _wgslsmith_f_op_vec4_f32(trunc(arg_1.b))), vec4<u32>(arg_1.d, max(arg_2.a.x, u_input.c.x) & 4294967295u, select(43021u, (arg_2.a.x | 32667u) << (firstLeadingBit(arg_1.d) % 32u), true), ~(~(arg_2.a.x ^ arg_1.a.a.x))), u_input.c.x);
    return select(!vec4<bool>(any(var_1.d.zy), var_3.a.b.x, arg_2.b.x, min(var_3.a.c.x, -48360i) <= _wgslsmith_mod_i32(2147483647i, 19145i)), select(!vec4<bool>(any(vec4<bool>(true, false, arg_2.b.x, false)), false, var_3.a.d.x, true), !select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(var_0.x, false, false, var_3.a.b.x), vec4<bool>(arg_2.d.x, arg_2.b.x, var_0.x, true)), arg_2.d.x & var_3.a.d.x), var_0.x), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: f32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_div_f32(arg_2, 770f))), arg_2, -1364f)));
    global0 = array<vec4<i32>, 6>();
    var var_1 = -(_wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.e.x, -3080i, select(1i, u_input.e.x, false)), _wgslsmith_mult_vec3_i32(vec3<i32>(22947i, -30196i, u_input.e.x), -vec3<i32>(u_input.e.x, 2147483647i, u_input.e.x))) >> (firstLeadingBit(~vec3<u32>(0u, 37191u, 9205u)) % vec3<u32>(32u)));
    let var_2 = vec4<bool>(arg_0.x, arg_0.x, 8059u < ~(~u_input.a.x), false);
    let var_3 = Struct_3(vec4<u32>(~u_input.c.x, arg_1, _wgslsmith_mult_u32(58886u, _wgslsmith_add_u32(max(1u, u_input.a.x), ~u_input.b.x)), 459u | u_input.c.x));
    return Struct_4(var_3);
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-272f, _wgslsmith_f_op_f32(-206f - _wgslsmith_f_op_f32(-1026f * _wgslsmith_f_op_f32(f32(-1f) * -865f))))));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(828f - -294f), 548f, true))));
    let var_1 = func_4(select(vec3<bool>(true, true, false), !vec3<bool>(any(vec4<bool>(false, true, false, false)), true, true), vec3<bool>(true, true, all(func_2(-1917f, Struct_2(Struct_1(u_input.a, vec3<bool>(true, false, true), vec2<i32>(-2147483647i, u_input.e.x), vec3<bool>(true, false, true)), vec4<f32>(-2951f, -1366f, 1000f, -1000f), u_input.c, 4294967295u), Struct_1(u_input.b, vec3<bool>(true, false, true), vec2<i32>(u_input.e.x, 2147483647i), vec3<bool>(true, false, true)))))), u_input.d.x, 1f);
    global0 = array<vec4<i32>, 6>();
    var var_2 = _wgslsmith_sub_i32(u_input.e.x, _wgslsmith_add_i32(~(-84883i), (u_input.e.x | select(0i, 0i, true)) | u_input.e.x));
    return StorageBuffer(~abs(select(_wgslsmith_mult_vec2_i32(vec2<i32>(32910i, 1i), vec2<i32>(u_input.e.x, 48275i)), ~vec2<i32>(u_input.e.x, u_input.e.x), vec2<bool>(true, true))), ~_wgslsmith_mult_vec3_u32(var_1.a.a.wxx, vec3<u32>(u_input.d.x << (var_1.a.a.x % 32u), ~12878u, u_input.d.x ^ 119849u)), ((~vec3<i32>(u_input.e.x, 1i, u_input.e.x) & ~vec3<i32>(0i, 0i, 2147483647i)) >> (var_1.a.a.wyw % vec3<u32>(32u))) >> (abs(_wgslsmith_mod_vec3_u32(~u_input.b, ~var_1.a.a.ywy)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

