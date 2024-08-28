struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(661f, -761f), vec4<u32>(4294967295u, 31134u, 96986u, 23192u), vec3<u32>(0u, 4294967295u, 70568u), 18022i);

var<private> global1: u32;

var<private> global2: i32 = -1i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_add_vec4_u32(~(~(vec4<u32>(global0.b.x, 4294967295u, u_input.c, global0.c.x) & global0.b) >> (global0.b % vec4<u32>(32u))), ~global0.b);
    let var_1 = global0.d <= global0.d;
    var var_2 = Struct_1(vec2<f32>(225f, 398f), abs(~min(~vec4<u32>(0u, var_0.x, 71936u, global0.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.b.x, u_input.b.x, 21616u, 15826u), global0.b))), max(var_0.zzw, global0.c), global0.d);
    var var_3 = var_0.zy;
    var var_4 = global0.c.x;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~var_2.c, _wgslsmith_sub_vec3_u32(~var_0.yzz, firstTrailingBit(reverseBits(global0.b.xxy)))), vec3<u32>(_wgslsmith_div_u32(~_wgslsmith_mult_u32(u_input.c, 1u), u_input.c), 0u, _wgslsmith_sub_u32(global0.b.x, 4294967295u)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(global0.a - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(global0.a))))), _wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(22685u, 0u, 1u, u_input.b.x), vec4<u32>(0u, 75724u, 69288u, 1u)), _wgslsmith_mod_vec4_u32(global0.b, global0.b)), vec4<u32>(global0.c.x, func_3(), global0.c.x, 1u)), global0.b.ywz, arg_0);
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = func_2(_wgslsmith_sub_i32(~1i, -12550i) | ((u_input.a | global0.d) | -1i));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(global0.a.x * global0.a.x), global0.a.x, global0.a.x);
    global0 = func_2(~1i);
    global0 = func_2(_wgslsmith_dot_vec4_i32(~select(vec4<i32>(0i, global0.d, u_input.a, 0i), vec4<i32>(-1i, -7149i, 2147483647i, 0i), true), firstTrailingBit(vec4<i32>(1i, _wgslsmith_add_i32(-25794i, -14070i), global0.d, _wgslsmith_mod_i32(941i, u_input.a)))));
    global2 = global0.d;
    return func_2(0i);
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec2<f32>(780f, _wgslsmith_f_op_f32(max(633f, _wgslsmith_f_op_f32(-arg_2.a.x)))), vec4<u32>(arg_3.c.x & ~16063u, 6114u, ~_wgslsmith_sub_u32(1u, 0u), u_input.c) ^ func_1(any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), false))).b, max(countOneBits(arg_3.b.xyz), vec3<u32>(u_input.c ^ 1u, arg_0, 37803u)), _wgslsmith_div_i32(arg_3.d << (min(3452u, 9828u) % 32u), global0.d));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_2.a + global0.a), ~vec4<u32>(var_0.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, arg_1.x), _wgslsmith_div_vec2_u32(vec2<u32>(61018u, var_0.c.x), global0.b.wy)), ~(~arg_0), _wgslsmith_div_u32(~1u, 1u)), ~(~countOneBits(~var_0.c)), abs(-18498i));
    let var_2 = arg_3;
    global2 = -9379i;
    global1 = ~func_3();
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec2<f32> {
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0.a)) * vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(arg_0.a.x * 858f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(515f, 1007f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(272f, 162f), vec2<f32>(arg_0.a.x, arg_0.a.x))), vec2<bool>(false, true))), arg_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~global0.c.x ^ (_wgslsmith_clamp_u32(29884u, min(u_input.b.x, global0.b.x), ~u_input.c) & u_input.b.x));
    var var_1 = vec4<f32>(-1077f, 1273f, -512f, _wgslsmith_f_op_f32(floor(-773f)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(func_4(86639u, u_input.b.yx << (global0.b.zz % vec2<u32>(32u)), Struct_1(vec2<f32>(1744f, -1468f), vec4<u32>(74059u, 21032u, 26044u, 17993u), vec3<u32>(1u, 110108u, global0.b.x), 14250i), func_1(false)), 1i, func_4(~var_0, u_input.b.yz, Struct_1(vec2<f32>(global0.a.x, -399f), global0.b, vec3<u32>(var_0, global0.b.x, 1u), -1i), func_4(24712u, u_input.b.xy, Struct_1(vec2<f32>(global0.a.x, global0.a.x), vec4<u32>(4294967295u, 0u, 4294967295u, 9904u), vec3<u32>(u_input.b.x, var_0, var_0), u_input.e.x), Struct_1(vec2<f32>(var_1.x, 658f), vec4<u32>(u_input.b.x, global0.c.x, 4294967295u, u_input.b.x), vec3<u32>(1u, u_input.b.x, 4294967295u), global0.d))))) + global0.a), ~(~(firstLeadingBit(global0.b) << (func_1(true).b % vec4<u32>(32u)))), ~(~vec3<u32>(u_input.c, ~global0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.x, u_input.c, var_0), vec3<u32>(global0.b.x, 1u, 0u)))), ~(~global0.d));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(var_1.zx)), _wgslsmith_f_op_vec2_f32(var_1.zz + vec2<f32>(var_2.a.x, -331f)))))), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~global0.b, vec4<u32>(global0.c.x, var_2.c.x, 4294967295u, 4294967295u)), ~_wgslsmith_div_vec4_u32(var_2.b, global0.b)) << (select(~min(vec4<u32>(var_2.c.x, 59206u, var_2.b.x, 2162u), global0.b), _wgslsmith_mod_vec4_u32(global0.b, ~var_2.b), select(52111u <= u_input.b.x, true, true)) % vec4<u32>(32u)), firstTrailingBit(vec3<u32>((global0.b.x | var_2.b.x) ^ ~1u, 7535u, _wgslsmith_dot_vec3_u32(vec3<u32>(1772u, var_0, 1025u), vec3<u32>(103473u, u_input.c, var_2.b.x)) >> (u_input.c % 32u))), func_4(4294967295u ^ var_0, global0.b.wy, func_1(all(vec2<bool>(true, true))), func_2(~(-1i))).d);
    var var_4 = _wgslsmith_f_op_f32(-769f - _wgslsmith_f_op_f32(f32(-1f) * -1481f));
    var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.a.x, 356f, func_2(_wgslsmith_div_i32(global0.d, u_input.e.x) & -var_3.d).a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1337f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1651f, _wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(select(global0.a.x, var_3.a.x, false)), func_1(false).a.x)))));
    var var_5 = var_2.b.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-26890i, max(-(60173i & var_3.d), func_1(false).d << (0u % 32u))), vec2<i32>(-_wgslsmith_sub_i32(global0.d << (0u % 32u), 52669i), 2147483647i));
}

