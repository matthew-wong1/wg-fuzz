struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(816f, 1952f);

var<private> global1: array<vec2<i32>, 7>;

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec2<bool>(true, false), Struct_1(vec2<bool>(false, false), vec3<bool>(false, true, false), vec2<u32>(0u, 75443u), vec4<u32>(25536u, 19228u, 24242u, 101463u))), Struct_2(vec2<bool>(false, true), Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, true), vec2<u32>(0u, 0u), vec4<u32>(0u, 4294967295u, 24306u, 17352u))), Struct_2(vec2<bool>(true, false), Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, true), vec2<u32>(93023u, 105401u), vec4<u32>(1755u, 58600u, 1u, 2324u))), Struct_2(vec2<bool>(false, true), Struct_1(vec2<bool>(false, false), vec3<bool>(false, true, false), vec2<u32>(4294967295u, 1u), vec4<u32>(62716u, 1u, 83280u, 4294967295u))), Struct_2(vec2<bool>(true, false), Struct_1(vec2<bool>(true, true), vec3<bool>(true, true, false), vec2<u32>(61302u, 33394u), vec4<u32>(54636u, 6252u, 68799u, 4294967295u))));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: vec3<bool>) -> f32 {
    global2 = array<Struct_2, 5>();
    let var_0 = u_input.d.x;
    var var_1 = _wgslsmith_clamp_i32(~var_0, 18552i | ~_wgslsmith_clamp_i32(var_0, -var_0, u_input.c), -abs(-1i));
    global1 = array<vec2<i32>, 7>();
    var var_2 = arg_1.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x)));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))) - vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-1042f * global0.x), Struct_1(vec2<bool>(arg_1.x, arg_1.x), vec3<bool>(arg_1.x, false, arg_1.x), vec2<u32>(u_input.b.x, 1u), vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.a)), _wgslsmith_div_f32(375f, global0.x), !arg_1.xyw)))), _wgslsmith_div_f32(global0.x, -1000f)));
    var var_0 = u_input.c;
    var var_1 = u_input.d.x;
    var_0 = 2411i ^ arg_0;
    var_1 = ~u_input.d.x;
    return select(!arg_1.yw, !select(arg_1.yy, select(!arg_1.xz, !arg_1.wy, true), vec2<bool>(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(-global0.x) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + -574f), global0.x)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
    var var_1 = select(arg_0, select(!vec4<bool>(true, true, true, any(vec4<bool>(true, true, true, false))), select(arg_0, !arg_0, vec4<bool>(arg_1.b.x, false, true, true)), vec4<bool>(-1697f <= _wgslsmith_f_op_f32(max(global0.x, global0.x)), !(-1762f <= var_0), !arg_1.a.x, false)), !(!all(!arg_1.a)));
    let var_2 = global2[_wgslsmith_index_u32(firstLeadingBit(~arg_1.d.x), 5u)];
    let var_3 = arg_0;
    var_1 = vec4<bool>(!any(!select(vec4<bool>(arg_1.a.x, false, var_3.x, false), vec4<bool>(false, arg_1.a.x, false, false), arg_1.b.x)), false, all(select(!select(vec2<bool>(false, var_1.x), arg_0.wy, var_2.a), select(!vec2<bool>(false, arg_1.b.x), select(vec2<bool>(var_3.x, var_3.x), arg_1.b.xz, var_2.b.a.x), arg_1.b.x), var_2.b.a.x)), func_1(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.d.wz, u_input.d.zx), -vec2<i32>(u_input.d.x, 31050i), ~vec2<i32>(-2147483647i, u_input.d.x)), vec2<i32>(-1i) * -vec2<i32>(u_input.d.x, -34897i)), var_3).x);
    return (firstTrailingBit(-2147483647i) ^ select(~firstTrailingBit(79699i), i32(-1i) * -u_input.d.x, all(vec3<bool>(false, false, var_1.x)))) < 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 5>();
    global1 = array<vec2<i32>, 7>();
    var var_0 = vec4<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), vec3<bool>(false, true, true))) | true, func_3(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), global0.x < global0.x), Struct_1(func_1(9746i, vec4<bool>(false, true, true, true)), vec3<bool>(true, true, true), u_input.b.zy & u_input.b.xz, vec4<u32>(1u, 1u, u_input.a, 36022u))) & true, func_3(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))), Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), max(vec2<u32>(u_input.b.x, u_input.a), ~u_input.b.zx), ~(~vec4<u32>(u_input.b.x, u_input.a, u_input.a, u_input.a)))), true);
    var var_1 = Struct_1(vec2<bool>(var_0.x, _wgslsmith_sub_u32(14622u, 3197u) <= u_input.a), !vec3<bool>(true, any(vec2<bool>(true, var_0.x)), true), vec2<u32>(_wgslsmith_div_u32(1u, abs(u_input.b.x) << (u_input.b.x % 32u)), 1u), min(_wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(783u, 25349u, 35167u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, u_input.a))), max(vec4<u32>(u_input.a, 4294967295u, u_input.a, 27326u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 4294967295u)))), countOneBits(firstTrailingBit(vec4<u32>(24498u, 39824u, 24771u, u_input.a)))));
    global1 = array<vec2<i32>, 7>();
    var var_2 = Struct_1(!vec2<bool>(var_0.x, !var_0.x != func_3(vec4<bool>(var_0.x, true, false, var_0.x), Struct_1(vec2<bool>(var_0.x, false), var_0.zwy, u_input.b.yz, vec4<u32>(0u, var_1.c.x, 0u, 4685u)))), vec3<bool>(all(!vec4<bool>(true, var_1.b.x, false, var_0.x)), all(!vec4<bool>(var_1.a.x, var_0.x, var_0.x, false)), func_3(!(!vec4<bool>(var_1.a.x, var_0.x, var_0.x, var_1.a.x)), Struct_1(var_0.wz, !var_1.b, u_input.b.xy, var_1.d))), vec2<u32>(u_input.a, reverseBits(~u_input.b.x)), ~_wgslsmith_add_vec4_u32(min(reverseBits(var_1.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 0u), var_1.d, var_1.d)), ~var_1.d >> (~var_1.d % vec4<u32>(32u))));
    let var_3 = Struct_1(!(!select(var_1.b.yy, var_1.a, vec2<bool>(var_2.a.x, false))), !var_2.b, u_input.b.yx ^ vec2<u32>(var_2.c.x, 0u), vec4<u32>(~(u_input.a & var_1.d.x) | 19888u, min(1u, 67782u), ~59798u, _wgslsmith_dot_vec2_u32(~(~u_input.b.yy), var_2.d.xx)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) - _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(trunc(1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, ~var_1.c.x, var_3.c.x, 98954u), _wgslsmith_sub_vec4_u32(~var_2.d, firstTrailingBit(vec4<u32>(var_3.c.x, 17736u, 29981u, var_3.c.x)))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.b.x, 4830u)), ~select(u_input.b.xz, abs(vec2<u32>(4294967295u, 16842u)), var_0.xy)), _wgslsmith_mult_i32(-_wgslsmith_add_i32(abs(u_input.d.x), u_input.c << (u_input.b.x % 32u)), countOneBits(u_input.d.x) ^ -1i), -2147483647i, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_1.d.x, var_1.c.x & 4294967295u, 4294967295u, ~u_input.b.x), var_1.d), ~(~38393u | ~var_2.d.x), _wgslsmith_mult_u32(1u, countOneBits(149809u)) << (0u % 32u)));
}

