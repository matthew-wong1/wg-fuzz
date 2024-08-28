struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3) -> bool {
    return 0u >= max(u_input.a.x, u_input.a.x);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: u32) -> Struct_2 {
    let var_0 = arg_0.a;
    let var_1 = any(select(!select(select(vec2<bool>(arg_0.b.a, false), vec2<bool>(true, false), true), vec2<bool>(true, true), true), vec2<bool>(true, arg_0.b.a || any(vec4<bool>(true, arg_0.b.a, arg_0.b.a, false))), any(vec3<bool>(all(vec4<bool>(false, arg_0.b.a, arg_0.b.a, true)), all(vec4<bool>(arg_0.b.a, arg_0.b.a, false, false)), select(true, false, true)))));
    let var_2 = arg_1.x;
    let var_3 = vec3<bool>(all(select(!select(vec2<bool>(var_1, arg_0.b.a), vec2<bool>(arg_0.b.a, false), vec2<bool>(var_1, true)), select(!vec2<bool>(var_1, var_1), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), any(select(vec3<bool>(var_1, arg_0.b.a, arg_0.b.a), vec3<bool>(true, true, false), vec3<bool>(true, arg_0.b.a, arg_0.b.a))))), false, all(vec4<bool>(true, var_1, var_1, false)));
    var var_4 = arg_0.a.yy;
    return Struct_2(-vec3<i32>(-_wgslsmith_add_i32(-11624i, -1i), -38727i, -_wgslsmith_mult_i32(-1i, -2147483647i)), arg_0.b);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: f32, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = func_3(Struct_2(vec3<i32>(50403i, 1i, _wgslsmith_mult_i32(1i, 1i)), Struct_1(func_2(Struct_3(Struct_2(vec3<i32>(-19785i, -1i, 42432i), Struct_1(true)), false)) || true)), firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 28331u), ~vec3<u32>(103105u, u_input.a.x, 35964u)), ~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.x), arg_3), abs(countOneBits(u_input.a.x)))), ~reverseBits(_wgslsmith_mult_u32(arg_3.x, ~1u)));
    let var_1 = -func_3(func_3(Struct_2(vec3<i32>(var_0.a.x, 1i, var_0.a.x), var_0.b), _wgslsmith_div_vec4_u32(~vec4<u32>(20456u, arg_0.x, u_input.a.x, arg_0.x), vec4<u32>(2924u, arg_0.x, 1u, arg_0.x)), 1u), firstLeadingBit(~(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, arg_3.x) ^ vec4<u32>(arg_3.x, 1u, 7129u, u_input.a.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(17264u, arg_0.x), 27115u >> (0u % 32u), _wgslsmith_div_u32(4294967295u, arg_3.x)), min(~vec3<u32>(arg_3.x, 1u, u_input.a.x), reverseBits(vec3<u32>(1u, u_input.a.x, arg_3.x))))).a;
    var_0 = Struct_2(~(-vec3<i32>(2147483647i, _wgslsmith_clamp_i32(var_1.x, var_1.x, -27777i), var_0.a.x)), Struct_1(!(!(!var_0.b.a))));
    var_0 = func_3(Struct_2(countOneBits(~_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, var_1.x), vec3<i32>(var_1.x, 32312i, var_0.a.x))), func_3(Struct_2(vec3<i32>(var_0.a.x, var_1.x, 0i), func_3(Struct_2(var_1, var_0.b), vec4<u32>(arg_0.x, 4294967295u, 61568u, arg_3.x), arg_0.x).b), abs(vec4<u32>(21549u, arg_3.x, 1u, u_input.a.x)) << (vec4<u32>(arg_0.x, u_input.a.x, u_input.a.x, 27531u) % vec4<u32>(32u)), ~min(arg_0.x, 1u)).b), ~(~vec4<u32>(_wgslsmith_sub_u32(arg_3.x, 1u), arg_3.x, arg_3.x & 1u, 0u)), firstLeadingBit(arg_3.x) | (u_input.a.x | ~0u));
    var_0 = func_3(Struct_2(~(~vec3<i32>(-1i, 43817i, var_0.a.x)), Struct_1(true && (false & var_0.b.a))), vec4<u32>(min(~select(arg_3.x, 68894u, var_0.b.a), _wgslsmith_sub_u32(reverseBits(arg_3.x), ~4294967295u)), ~1u, arg_3.x, ~(arg_3.x & 0u) & firstTrailingBit(u_input.a.x)), ~1u);
    return Struct_2(_wgslsmith_div_vec3_i32(var_0.a, vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.a.zz, var_0.a.xx), -var_0.a.yz), ~(var_1.x & -2147483647i), var_0.a.x)), func_3(Struct_2(vec3<i32>(var_0.a.x, var_1.x & var_0.a.x, var_0.a.x), var_0.b), firstLeadingBit(max(vec4<u32>(1u, arg_0.x, arg_3.x, 0u) | vec4<u32>(5999u, arg_0.x, arg_0.x, 7636u), ~vec4<u32>(arg_3.x, arg_3.x, arg_3.x, 4294967295u))), u_input.a.x).b);
}

fn func_4(arg_0: Struct_3) -> f32 {
    var var_0 = firstLeadingBit(vec4<u32>(28757u, 4294967295u, u_input.a.x, ~u_input.a.x));
    let var_1 = arg_0.a;
    let var_2 = arg_0.a.b;
    var var_3 = abs(firstTrailingBit(vec4<i32>(2147483647i, i32(-1i) * -2147483647i, countOneBits(-22727i), abs(~17842i))));
    let var_4 = vec4<bool>(arg_0.b, false, true, var_2.a && all(select(vec2<bool>(true, true), select(vec2<bool>(arg_0.b, false), vec2<bool>(false, arg_0.b), vec2<bool>(var_2.a, var_1.b.a)), arg_0.b)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1762f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(304f + 234f)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1285f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-379f - 1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(abs(u_input.a.x) <= 20524u);
    var var_1 = _wgslsmith_f_op_f32(func_4(Struct_3(func_1(u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-616f, 632f, 617f, -152f)), 963f, _wgslsmith_sub_vec2_u32(u_input.a, max(vec2<u32>(u_input.a.x, 29061u), vec2<u32>(0u, 1611u)))), true)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1184f));
    var_1 = _wgslsmith_f_op_f32(select(238f, var_2, false));
    var var_3 = ~(~firstLeadingBit(countOneBits(abs(vec4<u32>(1u, u_input.a.x, 0u, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, var_2, 1792f)), vec4<f32>(_wgslsmith_f_op_f32(var_2 * 349f), var_2, var_2, var_2), var_0.a))), vec3<u32>(_wgslsmith_div_u32(~(~u_input.a.x), ~abs(u_input.a.x)), countOneBits(var_3.x), 13572u), vec3<i32>(i32(-1i) * -func_3(Struct_2(vec3<i32>(-20827i, 32749i, -1i), var_0), vec4<u32>(2226u, u_input.a.x, var_3.x, 23199u), u_input.a.x).a.x, 2147483647i, 38755i));
}

