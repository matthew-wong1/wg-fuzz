struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(58808i, -1i, -21489i), vec3<i32>(-1i, 18210i, 19250i), vec3<i32>(-1i, 1i, 3253i), vec3<i32>(i32(-2147483648), 16422i, 2147483647i), vec3<i32>(85299i, -14942i, 2147483647i), vec3<i32>(-25514i, 2147483647i, 0i), vec3<i32>(2147483647i, 13142i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 2147483647i, 13166i), vec3<i32>(1i, 22542i, 1i), vec3<i32>(-1i, 0i, -1i), vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<i32>(38612i, 2147483647i, 1i), vec3<i32>(2147483647i, -10015i, -2556i), vec3<i32>(-3772i, -12557i, 2147483647i), vec3<i32>(-10767i, -1i, 1i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = Struct_2(Struct_1(true, true, abs(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.a.x))), true));
    let var_1 = Struct_1(false, any(!(!vec4<bool>(false, var_0.a.a, var_0.a.d, false))), ~vec4<u32>(~(~4294967295u), 65959u, ~var_0.a.c.x, u_input.a.x), var_0.a.b);
    let var_2 = var_0.a;
    global0 = array<vec3<i32>, 17>();
    let var_3 = 0i;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(242f + 1007f), 1032f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(964f)))) <= -386f;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1390f))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(682f)) * _wgslsmith_f_op_f32(f32(-1f) * -174f));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(304f + _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(trunc(-1336f))))))));
    var var_1 = Struct_2(arg_3.a);
    var_0 = 2532f;
    return select(!(!select(select(arg_2.xz, arg_2.xz, arg_2.xy), vec2<bool>(arg_2.x, false), arg_0 | true)), !(!select(!arg_2.xy, select(vec2<bool>(true, false), arg_2.zx, arg_2.xx), true)), true);
}

fn func_1() -> Struct_1 {
    var var_0 = select(select(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true)), vec2<bool>(false, true), !all(vec3<bool>(false, false, false)) | true), vec2<bool>(true, select(true, true, func_2(true))), !func_3(any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), 4294967295u, select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), Struct_2(Struct_1(false, true, u_input.a, true))));
    let var_1 = _wgslsmith_mod_i32(~abs(-(~(-21271i))), 36967i);
    let var_2 = Struct_1(var_0.x, false, vec4<u32>(13131u << (reverseBits(0u) % 32u), 1u, reverseBits(u_input.b), _wgslsmith_mult_u32(4294967295u, u_input.b)), var_0.x);
    var var_3 = select(select(vec2<i32>(select(-17545i, -7399i, false), var_1 >> (0u % 32u)) ^ vec2<i32>(-1i | var_1, i32(-1i) * -2147483647i), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, var_1)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, var_1), vec2<i32>(-1i, -2147483647i))), reverseBits(~vec2<i32>(-36256i, -85134i))), true), vec2<i32>(_wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(30212i, var_1), vec2<i32>(-2147483647i, var_1)), -31904i), var_1), any(!(!(!vec4<bool>(var_0.x, false, false, var_2.b)))));
    var var_4 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(u_input.a.x), _wgslsmith_mod_u32(var_2.c.x, 1u), ~20761u, 4294967295u), min(vec4<u32>(2505u, 35374u, u_input.b, u_input.a.x), abs(u_input.a))) & u_input.b, _wgslsmith_mult_u32(var_2.c.x, select(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 68091u, 59253u), vec3<u32>(1u, 41029u, u_input.a.x)), ~(~0u), var_0.x)), var_2.c.x, u_input.b);
    return Struct_1(!(!all(vec3<bool>(true, true, true))), var_2.d, firstLeadingBit(_wgslsmith_sub_vec4_u32(~var_2.c, vec4<u32>(4556u, 20121u, u_input.b, 2130u) >> (vec4<u32>(19389u, var_2.c.x, var_2.c.x, u_input.b) % vec4<u32>(32u))) & vec4<u32>(~40800u, var_4.x, _wgslsmith_dot_vec4_u32(vec4<u32>(11154u, 32623u, var_2.c.x, 6843u), vec4<u32>(1u, 52905u, 88264u, 60909u)), var_2.c.x)), any(vec3<bool>(true, false, var_2.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1());
    var var_1 = _wgslsmith_mod_i32(6574i, min(-(~abs(-13613i)), 1i));
    let var_2 = var_0;
    var var_3 = var_2;
    global0 = array<vec3<i32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1365f * -986f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1155f)))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -262f) + _wgslsmith_f_op_f32(select(-1318f, 1000f, var_2.a.d))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(398f - 855f)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(557f - 2378f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(145f, -513f)))))));
}

