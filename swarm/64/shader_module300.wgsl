struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> vec2<u32> {
    let var_0 = Struct_1(~u_input.b);
    return _wgslsmith_add_vec2_u32(~reverseBits(~vec2<u32>(1u, u_input.c.x)), _wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(28840u, ~var_0.a)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = func_3(~select(vec4<u32>(0u, 3436u, arg_0.x, 44926u), vec4<u32>(63708u, 23563u, 4294967295u, arg_0.x), false) & ~(~firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.b))), select(18879i, -_wgslsmith_add_i32(2147483647i, -2147483647i), false));
    var var_1 = false | any(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true));
    var var_2 = Struct_1(~var_0.x);
    var var_3 = 85265i;
    var_2 = Struct_1(2840u);
    return Struct_2(Struct_1((~u_input.c.x << (_wgslsmith_mult_u32(var_2.a, 4294967295u) % 32u)) | var_0.x));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> bool {
    let var_0 = 0u;
    var var_1 = 123f;
    var var_2 = func_2(~(~_wgslsmith_clamp_vec3_u32(max(vec3<u32>(657u, 40803u, 4294967295u), vec3<u32>(4689u, var_0, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 0u, 1u), vec3<u32>(var_0, var_0, var_0)), vec3<u32>(56428u, arg_0.a.a, 4205u) | vec3<u32>(var_0, 4294967295u, 4294967295u))));
    let var_3 = 3096i;
    var_2 = func_2(firstTrailingBit(~firstTrailingBit(select(vec3<u32>(4294967295u, 71600u, 630u), vec3<u32>(var_2.a.a, u_input.a.x, u_input.a.x), vec3<bool>(arg_1, true, true)))));
    return !(arg_0.a.a <= (var_0 << ((20763u | _wgslsmith_add_u32(u_input.a.x, u_input.b)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1(Struct_2(Struct_1(u_input.c.x)), true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1017f))) * -252f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(112f, _wgslsmith_div_f32(-176f, _wgslsmith_f_op_f32(f32(-1f) * -535f))))));
    var var_2 = 1u > u_input.a.x;
    var var_3 = !select(vec4<bool>(true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), false, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec3<bool>(false, false, false)), false, any(vec2<bool>(false, false)), all(vec3<bool>(true, false, false))), true), true);
    var_0 = var_3.x;
    var_0 = true;
    var var_4 = vec4<u32>(~(~u_input.a.x), func_3(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 1530u, 3754u, 85866u), ~vec4<u32>(u_input.a.x, 79951u, 4294967295u, 71608u)) & (~vec4<u32>(7735u, 15131u, 0u, 0u) << (~vec4<u32>(121637u, 4294967295u, 4294967295u, u_input.b) % vec4<u32>(32u))), ~firstTrailingBit(i32(-1i) * -18972i)).x, 1u, u_input.a.x);
    let var_5 = !(!select(select(vec4<bool>(var_3.x, false, var_3.x, false), !vec4<bool>(true, var_3.x, true, false), select(vec4<bool>(var_3.x, true, var_3.x, true), vec4<bool>(var_3.x, true, var_3.x, var_3.x), true)), vec4<bool>(false, var_3.x & true, true, all(var_3.yw)), !vec4<bool>(false, true, var_3.x, var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-1i), _wgslsmith_sub_vec4_i32(abs(abs(-vec4<i32>(-2147483647i, -44123i, 57633i, -1i))), reverseBits(vec4<i32>(-2147483647i, -1i, 6846i, -18930i)) << ((vec4<u32>(var_4.x, u_input.a.x, 4294967295u, u_input.b) | vec4<u32>(var_4.x, u_input.c.x, 1u, u_input.a.x)) % vec4<u32>(32u))), var_4.ywz, -35343i);
}

