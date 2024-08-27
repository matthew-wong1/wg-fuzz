struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = !vec2<bool>(!all(select(vec3<bool>(arg_0.d, false, false), vec3<bool>(arg_0.d, true, false), vec3<bool>(true, arg_0.d, true))), !any(select(vec2<bool>(arg_0.d, arg_0.d), vec2<bool>(arg_0.d, arg_0.d), arg_0.d)));
    var var_1 = select(~select(~(-2147483647i), _wgslsmith_add_i32(1i, reverseBits(-3286i)), !var_0.x), min(select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 2387i, global0.x), vec3<i32>(0i, global0.x, u_input.c)), ~global0.x, !arg_0.d) | firstLeadingBit(global0.x), u_input.c), false);
    var_1 = u_input.c;
    var_1 = 0i;
    let var_2 = 1110f;
    return !var_0;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: u32) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_0)))), arg_0, arg_0);
    var var_1 = true;
    let var_2 = Struct_1(~_wgslsmith_add_vec3_u32(countOneBits(min(vec3<u32>(4437u, arg_2, 0u), u_input.d.wxw)), ~(~vec3<u32>(64649u, arg_2, arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -809f) * 2116f), -reverseBits(16352i) | u_input.c, false, global0.x);
    var var_3 = select(max(~abs(var_2.a.zy) & (abs(var_2.a.zz) & vec2<u32>(arg_1, 15607u)), vec2<u32>(~(~u_input.d.x), ~arg_2)), ~u_input.a.xz, select(select(vec2<bool>(var_2.d, !var_2.d), vec2<bool>(select(var_2.d, false, var_2.d), true), false), func_3(Struct_1(u_input.a ^ var_2.a, _wgslsmith_f_op_f32(-arg_0), 39909i, var_2.d, u_input.c)), vec2<bool>(true, all(select(vec4<bool>(false, var_2.d, var_2.d, true), vec4<bool>(var_2.d, var_2.d, false, true), vec4<bool>(false, var_2.d, var_2.d, true))))));
    var var_4 = ~_wgslsmith_add_u32(arg_2, 39002u) >= arg_1;
    return Struct_2(~(vec2<u32>(_wgslsmith_mod_u32(1u, 4294967295u), 55425u) & vec2<u32>(~u_input.a.x, ~arg_2)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> i32 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(513f - 210f)) + 1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-772f, -1164f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1394f + 566f))))));
    global0 = ~(~arg_0);
    global0 = vec3<i32>(firstLeadingBit(-select(arg_0.x | 7986i, arg_0.x, var_0)), -firstTrailingBit(min(_wgslsmith_clamp_i32(3996i, global0.x, -3593i), 1i)), global0.x);
    global0 = vec3<i32>(u_input.c, reverseBits(arg_0.x), u_input.c);
    return 1i;
}

fn func_1() -> StorageBuffer {
    global0 = vec3<i32>(-(i32(-1i) * -_wgslsmith_mult_i32(-2147483647i, 0i)), (-20770i | func_4(~vec3<i32>(global0.x, -16682i, u_input.c), func_2(728f, u_input.e, 27984u))) >> (~25856u % 32u), u_input.c);
    var var_0 = vec3<u32>(u_input.b, reverseBits(62878u), ~u_input.b);
    var_0 = ~max(_wgslsmith_add_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 4294967295u, var_0.x), vec3<u32>(1u, 33346u, 1u))), ~select(u_input.d.yyw, u_input.d.xyz, vec3<bool>(true, true, true))), reverseBits(abs(vec3<u32>(1u, u_input.d.x, var_0.x)) << (select(u_input.a, u_input.d.xzz, true) % vec3<u32>(32u))));
    let var_1 = vec4<i32>(_wgslsmith_div_i32(u_input.c, u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(-17498i, u_input.c, global0.x), _wgslsmith_div_vec3_i32(select(vec3<i32>(-24256i, -5261i, global0.x), vec3<i32>(u_input.c, 0i, u_input.c), vec3<bool>(false, false, true)) >> (reverseBits(vec3<u32>(var_0.x, 108275u, 4294967295u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_add_i32(global0.x, u_input.c), _wgslsmith_clamp_i32(u_input.c, global0.x, -16333i), 1i))), _wgslsmith_clamp_i32(-1i, ~_wgslsmith_div_i32(-1i, global0.x) & global0.x, -2147483647i), ~(~(~min(global0.x, global0.x))));
    let var_2 = ~_wgslsmith_mod_vec4_u32(u_input.d | _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 66255u, var_0.x, 1u), vec4<u32>(var_0.x, 55034u, 17190u, 4294967295u)), u_input.d | vec4<u32>(u_input.b, u_input.b, u_input.a.x, 7212u)), ~u_input.d);
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 1f), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(var_2, u_input.d), var_2), ~countOneBits(78012u)) & _wgslsmith_clamp_vec2_u32(vec2<u32>(~0u, u_input.a.x), ~(~vec2<u32>(u_input.b, 0u)), vec2<u32>(~0u, 0u & var_0.x)), ~(~firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, u_input.b), vec2<u32>(0u, u_input.a.x)))), abs(_wgslsmith_mult_vec3_u32(firstLeadingBit(~u_input.d.wzy), reverseBits(u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

