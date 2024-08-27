struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: vec2<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: f32) -> i32 {
    var var_0 = false;
    let var_1 = arg_1;
    return countOneBits(countOneBits(u_input.d.x) & -(abs(u_input.d.x) | -186i));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), select(vec2<bool>(any(vec4<bool>(false, false, false, true)), false), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(true, false), true))), true), !select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, true, false, false)), any(vec2<bool>(false, false)))), select(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, arg_0.x == 691f), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), false))));
    global0 = arg_2.a;
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(-func_2(select(vec3<bool>(false, false, false), vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, var_0.x, var_0.x)), u_input.c.x, arg_2.d.b), arg_1.a.a), ~_wgslsmith_mod_i32(~(-70111i), _wgslsmith_mult_i32(_wgslsmith_div_i32(-1i, arg_2.a), _wgslsmith_dot_vec3_i32(arg_2.b.zxy, vec3<i32>(-2147483647i, arg_2.a, 2147483647i)))), reverseBits(~1i) & arg_2.a);
    var var_2 = arg_1.a.b.xxz & arg_2.b.xyy;
    let var_3 = arg_0.zz;
    return arg_2.d.e;
}

fn func_1(arg_0: vec3<bool>) -> vec2<u32> {
    var var_0 = Struct_2(_wgslsmith_div_i32(u_input.a.x, -u_input.a.x), vec4<i32>(~u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a), u_input.d.x, reverseBits(min(_wgslsmith_mult_i32(-1i, u_input.d.x), _wgslsmith_sub_i32(u_input.d.x, 0i)))), u_input.c.x, Struct_1(~(~vec3<u32>(u_input.c.x, u_input.c.x, 1u)), 533f, ~vec2<u32>(u_input.c.x, u_input.b), _wgslsmith_mult_u32(1u, u_input.b) | 88115u, ~(~select(u_input.c, u_input.c, true))));
    var var_1 = 32154u;
    var_0 = Struct_2(~_wgslsmith_add_i32(~_wgslsmith_sub_i32(var_0.b.x, -2147483647i), abs(~var_0.a)), vec4<i32>(-1i, 0i, min(u_input.d.x, func_2(arg_0, 0u, var_0.d.b) << (~u_input.b % 32u)), var_0.a), 1u | _wgslsmith_dot_vec4_u32(func_3(vec4<f32>(global1.x, global1.x, 724f, global1.x), Struct_3(Struct_2(u_input.d.x, vec4<i32>(u_input.a.x, -24471i, var_0.b.x, var_0.b.x), u_input.b, Struct_1(var_0.d.e.ywx, -773f, vec2<u32>(var_0.c, var_0.c), var_0.d.c.x, vec4<u32>(0u, 4294967295u, 1u, 31155u)))), Struct_2(u_input.d.x, vec4<i32>(-2147483647i, u_input.d.x, u_input.a.x, u_input.d.x), 4294967295u, Struct_1(u_input.c.zyz, global1.x, var_0.d.c, var_0.c, var_0.d.e))) ^ (vec4<u32>(4611u, 23016u, u_input.b, 1u) | u_input.c), ~min(u_input.c, u_input.c)), Struct_1(~(~(~vec3<u32>(var_0.d.e.x, var_0.d.a.x, var_0.c))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(-global1.x))), select(max(var_0.d.c, u_input.c.zw) & _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, 46776u), var_0.d.c), min(firstTrailingBit(vec2<u32>(0u, 103051u)), vec2<u32>(1759u, u_input.b)), !(var_0.b.x < 25155i)), ~(~firstLeadingBit(1u)), ~var_0.d.e));
    var_0 = Struct_2(-56i, var_0.b, u_input.b, var_0.d);
    let var_2 = Struct_1(abs(max(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.b, 1u), vec3<u32>(1u, var_0.d.a.x, 58521u)), _wgslsmith_sub_vec3_u32(u_input.c.wzy << (var_0.d.a % vec3<u32>(32u)), ~var_0.d.a))), _wgslsmith_f_op_f32(var_0.d.b - var_0.d.b), _wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 29145u), vec2<u32>(u_input.c.x, 7396u)) & vec2<u32>(var_0.d.c.x, ~27532u), u_input.c.yy), _wgslsmith_dot_vec2_u32(vec2<u32>(6487u, 4294967295u), firstLeadingBit(firstLeadingBit(vec2<u32>(u_input.c.x, 0u)))), abs(~vec4<u32>(max(var_0.d.e.x, u_input.c.x), _wgslsmith_sub_u32(u_input.c.x, u_input.b), abs(u_input.c.x), 50200u)));
    return _wgslsmith_add_vec2_u32(vec2<u32>(var_0.c, _wgslsmith_add_u32((var_2.e.x ^ 4294967295u) << (countOneBits(var_0.d.e.x) % 32u), ~0u)), abs(vec2<u32>(var_0.c, u_input.b)) >> (_wgslsmith_mod_vec2_u32(max(~vec2<u32>(var_2.d, 1u), vec2<u32>(1u, 1u)), firstLeadingBit(var_0.d.a.zy)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(vec2<u32>(u_input.b, 46016u)) >> (vec2<u32>(59895u, firstTrailingBit(u_input.c.x)) % vec2<u32>(32u)), select(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, 1u), ~vec2<u32>(u_input.b, 1u)), func_1(vec3<bool>(false, true, false)) << (~vec2<u32>(4294967295u, 34766u) % vec2<u32>(32u)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), true)), any(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)))));
}

