struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: f32) -> Struct_1 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b.zx, ~u_input.b.xz), arg_0, countOneBits(-25268i), arg_0);
    var var_1 = arg_2;
    var var_2 = arg_1;
    return Struct_1(~11122u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32) -> i32 {
    let var_0 = select(u_input.b, ~u_input.b, select(select(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), any(vec4<bool>(false, true, false, false))), false), vec3<bool>(true, true, true), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true))));
    let var_1 = -7306i;
    return var_0.x;
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = true;
    var var_1 = true;
    var var_2 = u_input.d.wyz;
    var_0 = !(_wgslsmith_add_i32(func_3(arg_0, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, arg_0.a), u_input.d.yw), _wgslsmith_add_u32(0u, 1238u)), -18468i) == max(~u_input.b.x, (u_input.b.x | u_input.b.x) ^ ~u_input.b.x));
    var var_3 = select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false)), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true)), vec4<bool>(true, true, true, true), true), all(select(vec2<bool>(true, true), vec2<bool>(true, false), false)) != true), select(vec4<bool>(false, !all(vec3<bool>(true, false, false)), true, true), vec4<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), u_input.b.x == func_3(Struct_1(u_input.d.x), vec2<u32>(5437u, var_2.x), 1u), !any(vec4<bool>(true, false, true, false)), arg_0.a != ~var_2.x), false), any(!vec3<bool>(true, false, all(vec4<bool>(false, true, true, false)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(806f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    let var_1 = func_1(u_input.b.x, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2190f, _wgslsmith_f_op_f32(273f - -1075f)) * -1382f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1731f))));
    let var_2 = !vec3<bool>(!any(vec2<bool>(true, true)), all(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), all(vec2<bool>(true, true)));
    var_0 = -1118f;
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, u_input.b.x, -8604i, _wgslsmith_div_i32(u_input.b.x, 9158i & min(u_input.b.x, u_input.b.x))), -vec4<i32>(u_input.b.x, u_input.b.x, ~(-1i), _wgslsmith_clamp_i32(~33682i, u_input.b.x, -2138i)));
    var var_4 = 11308u;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(func_2(Struct_1(u_input.a.x >> (73154u % 32u))))));
    var_3 = min(select(_wgslsmith_add_vec4_i32(vec4<i32>(var_3.x, -39041i, 12682i, u_input.b.x) ^ vec4<i32>(-8968i, 30127i, -2147483647i, u_input.b.x), vec4<i32>(-2147483647i, u_input.b.x, -1i, var_3.x >> (var_1.a % 32u))), _wgslsmith_mult_vec4_i32(min(vec4<i32>(1i, -14766i, -12182i, 2147483647i), min(vec4<i32>(12101i, 35846i, -35238i, var_3.x), vec4<i32>(-2147483647i, -1i, 1i, 1i))), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 5838i, var_3.x, 1i), vec4<i32>(var_3.x, 45577i, 67961i, var_3.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(406i, var_3.x, var_3.x, 4742i), vec4<i32>(-2147483647i, u_input.b.x, 25525i, 1i)))), !any(!vec4<bool>(true, var_2.x, var_2.x, var_2.x))), select(_wgslsmith_div_vec4_i32(vec4<i32>(~(-9824i), reverseBits(var_3.x), u_input.b.x | u_input.b.x, u_input.b.x), -_wgslsmith_div_vec4_i32(vec4<i32>(var_3.x, 2147483647i, -29386i, var_3.x), vec4<i32>(u_input.b.x, var_3.x, 17038i, u_input.b.x))), firstLeadingBit(~(-vec4<i32>(u_input.b.x, 1i, -2147483647i, u_input.b.x))), true));
    let x = u_input.a;
    s_output = StorageBuffer(-var_3.x, ~50333u << (var_1.a % 32u), -539f);
}

