struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: i32,
    d: bool,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 16>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1859f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(671f)))))));
    let var_1 = -775f;
    global1 = array<Struct_2, 16>();
    global0 = arg_0;
    let var_2 = 1i;
    return arg_0;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, arg_3, 816f) + vec3<f32>(arg_3, 1319f, -224f))))) - vec3<f32>(-1000f, _wgslsmith_f_op_f32(exp2(arg_3)), arg_3));
    var var_1 = select(select(!vec4<bool>(all(vec3<bool>(false, false, true)), true, true, any(vec4<bool>(true, false, false, false))), !vec4<bool>(var_0.x == arg_3, any(vec2<bool>(true, true)), false, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true))), !(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true))), !all(vec4<bool>(2005u == arg_2.a.x, false, true, true)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -413f)), arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(779f * var_0.x) + _wgslsmith_f_op_f32(-var_0.x))) + arg_3), _wgslsmith_f_op_f32(var_0.x + var_0.x));
    let var_3 = Struct_5(~vec2<u32>(min(4294967295u, arg_1.b.x), ~min(arg_0.x, 1u)), ~countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 9489u, 0u, arg_0.x), vec4<u32>(global0.e.b.x, arg_0.x, 55670u, 1u), vec4<u32>(11182u, arg_1.c, 57364u, arg_0.x))) << (vec4<u32>(~(~arg_2.a.x), arg_2.b.c, ~48251u, ~76357u) % vec4<u32>(32u)), Struct_4(Struct_3(vec3<f32>(var_0.x, -1355f, _wgslsmith_f_op_f32(-501f - arg_3))), arg_2.b.b, _wgslsmith_mult_i32(~arg_1.a.x, abs(~arg_1.a.x)), ~arg_2.c.a.x < arg_1.a.x, Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_2 + vec3<f32>(2095f, var_0.x, 1000f)))))));
    let var_4 = var_3.c.e;
    return func_2(func_2(arg_2));
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_1(vec3<i32>(~_wgslsmith_mod_i32(-2147483647i ^ u_input.a.x, ~u_input.a.x), global0.b.a.x, global0.e.a.x), global0.c.b, _wgslsmith_sub_u32(50451u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 103536u), vec4<u32>(global0.e.b.x, ~4294967295u, _wgslsmith_add_u32(4294967295u, global0.d.x), global0.a.x))));
    var var_1 = var_0.c;
    global0 = func_3(global0.a.xy, Struct_1(_wgslsmith_add_vec3_i32(global0.b.a, var_0.a), ~global0.e.b, global0.b.c), func_2(global1[_wgslsmith_index_u32(global0.e.c, 16u)]), -483f);
    let var_2 = 4940u;
    var_1 = reverseBits(var_2);
    return Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(678f, -197f, 1490f))) + vec3<f32>(_wgslsmith_f_op_f32(sign(-791f)), 1131f, -287f))), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, var_0.b.x, 25792u) & (vec3<u32>(47321u, 63215u, 4294967295u) ^ var_0.b)), vec3<u32>(var_2, func_2(func_2(global1[_wgslsmith_index_u32(2117u, 16u)])).b.b.x, 4294967295u)), 0i, -1000f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -234f))) * -345f), Struct_3(vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(885f - 417f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1542f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_4(Struct_3(var_0.e.a), global0.e.b, firstLeadingBit(global0.b.a.x & ~var_0.c), var_0.d, func_1().a);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.e.a.x))), 432f);
    global1 = array<Struct_2, 16>();
    let var_2 = var_0.a.a.x;
    var var_3 = Struct_2(func_1().b, Struct_1(-abs(-vec3<i32>(var_0.c, var_0.c, global0.c.a.x)), global0.b.b, 4294967295u), Struct_1(-max(global0.b.a, global0.b.a | vec3<i32>(0i, u_input.c.x, -43130i)), var_0.b ^ vec3<u32>(65519u >> (0u % 32u), global0.c.b.x, var_0.b.x), global0.b.c), func_1().b.zz, Struct_1(u_input.b, reverseBits(global0.b.b), reverseBits(max(1u, 70934u))));
    var_3 = func_3(var_3.b.b.zy, Struct_1(countOneBits(-abs(global0.b.a)), vec3<u32>(global0.c.b.x, var_0.b.x, _wgslsmith_div_u32(1u, var_0.b.x)), ~abs(max(52252u, var_0.b.x))), global1[_wgslsmith_index_u32(min(var_3.b.c, var_0.b.x), 16u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1)) + 1007f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(reverseBits(~global0.e.a.x & -2147483647i), -var_0.c));
}

