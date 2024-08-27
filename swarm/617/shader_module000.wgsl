struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(29758i, 2147483647i);

var<private> global1: Struct_1 = Struct_1(vec2<u32>(2978u, 0u), vec2<bool>(true, true));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> u32 {
    global1 = Struct_1(~countOneBits(countOneBits(~vec2<u32>(0u, global1.a.x))), global1.b);
    return u_input.b;
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_3(u_input.b, _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, global1.a.x, 34218u), select(vec3<u32>(38457u, 4294967295u, 4294967295u), ~vec3<u32>(global1.a.x, 4294967295u, 4294967295u), true)) << (firstTrailingBit(~vec3<u32>(global1.a.x, global1.a.x, 20038u) ^ (vec3<u32>(1u, 0u, u_input.b) >> (vec3<u32>(u_input.b, u_input.b, 1u) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    global1 = Struct_1(vec2<u32>(max(firstTrailingBit(global1.a.x), 1u), 1u), vec2<bool>(select(true, true, 2147483647i == u_input.c) | global1.b.x, false));
    global1 = Struct_1(vec2<u32>(global1.a.x, 34706u | _wgslsmith_mult_u32(max(global1.a.x, var_0.b.x), ~0u)), vec2<bool>(false, !(!(!global1.b.x))));
    global1 = Struct_1(global1.a, vec2<bool>(false, true && any(global1.b)));
    let var_1 = -u_input.d;
    return select(~vec2<u32>(u_input.b, u_input.b), ~(~(~var_0.b.yz)), !select(global1.b, select(global1.b, global1.b, global1.b.x), global1.b));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = false;
    global0 = ~min(-(u_input.d.yx & u_input.d.xy), _wgslsmith_add_vec2_i32(vec2<i32>(-70885i, u_input.c), -vec2<i32>(-1i, global0.x))) | firstLeadingBit(vec2<i32>(1i, i32(-1i) * -4866i));
    let var_1 = Struct_3(_wgslsmith_sub_u32(global1.a.x, _wgslsmith_dot_vec2_u32(global1.a, func_3())), vec3<u32>(u_input.b >> (10961u % 32u), 1u, global1.a.x));
    let var_2 = ~(~_wgslsmith_clamp_u32(0u, u_input.b, 71042u));
    let var_3 = Struct_3(global1.a.x ^ (~u_input.b & var_2), _wgslsmith_mod_vec3_u32(var_1.b, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, reverseBits(40344u), global1.a.x), min(vec3<u32>(global1.a.x, 1u, 4294967295u) & vec3<u32>(1u, 93963u, u_input.b), countOneBits(vec3<u32>(u_input.b, var_1.a, 0u))))));
    return Struct_1(reverseBits(vec2<u32>(_wgslsmith_div_u32(firstLeadingBit(global1.a.x), 4294967295u | var_2), ~abs(0u))), vec2<bool>(true, (var_2 < ~0u) & !arg_2));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = min(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.a.x, 1u, 230u, 85698u), select(vec4<u32>(u_input.b, 22915u, 15253u, arg_1.a.a.x), vec4<u32>(u_input.b, 47903u, arg_1.a.a.x, 56161u), false)), vec4<u32>(global1.a.x, _wgslsmith_mult_u32(u_input.b, arg_1.a.a.x), arg_1.a.a.x, 1u << (1u % 32u))), vec4<u32>(arg_1.a.a.x, ~global1.a.x, _wgslsmith_add_u32(~0u, ~u_input.b), max(~global1.a.x, 0u))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(82716u), ~12059u, ~52260u, min(u_input.b, 0u)), firstLeadingBit(min(vec4<u32>(65917u, 38968u, u_input.b, 0u), vec4<u32>(0u, arg_1.d, global1.a.x, arg_1.d))), countOneBits(select(vec4<u32>(6922u, 10254u, 4294967295u, u_input.b), vec4<u32>(1u, 34527u, 1u, 76604u), vec4<bool>(false, global1.b.x, false, arg_1.a.b.x)))));
    let var_1 = _wgslsmith_dot_vec2_u32(max(_wgslsmith_div_vec2_u32(func_3(), arg_1.a.a ^ arg_1.a.a), var_0.zx) >> (min(vec2<u32>(~0u, 30709u), vec2<u32>(arg_1.a.a.x, var_0.x)) % vec2<u32>(32u)), vec2<u32>(min(abs(_wgslsmith_mod_u32(var_0.x, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(7094u, 0u), arg_1.a.a)), firstLeadingBit(select(_wgslsmith_sub_u32(var_0.x, 76781u), _wgslsmith_add_u32(var_0.x, u_input.b), any(vec3<bool>(arg_1.a.b.x, arg_1.c.x, false))))));
    global0 = reverseBits(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, arg_0, -28349i, -8994i), vec4<i32>(~(-9889i), _wgslsmith_add_i32(35542i, arg_2.x), global0.x << (u_input.b % 32u), 1i)), arg_2.x));
    global1 = arg_1.a;
    global1 = func_2(!arg_1.c, ~_wgslsmith_mod_i32(1i, abs(1i)), arg_1.c.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(u_input.b, vec3<u32>(u_input.b, ~u_input.b << (~func_1() % 32u), u_input.b));
    let var_1 = _wgslsmith_f_op_f32(-603f * 289f);
    let var_2 = vec2<f32>(-1061f, -568f);
    let var_3 = func_4(-2684i, Struct_2(func_2(vec2<bool>(global1.b.x || global1.b.x, -5007i >= global0.x), global0.x, false), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.x, -1519f))))))), select(!global1.b, func_2(global1.b, _wgslsmith_div_i32(global0.x, u_input.c), func_2(vec2<bool>(global1.b.x, global1.b.x), 0i, global1.b.x).b.x).b, true), 4294967295u, _wgslsmith_f_op_f32(-352f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)))), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-13486i, u_input.a), u_input.d.yz), u_input.d.zx));
    let var_4 = func_4(0i, func_4(90296i, var_3, ~(~_wgslsmith_add_vec2_i32(u_input.d.zy, vec2<i32>(-1i, 1i)))), max(u_input.d.yx, -vec2<i32>(~5033i, select(2147483647i, 2147483647i, var_3.c.x))));
    let var_5 = Struct_3(~(~var_3.d) & _wgslsmith_mult_u32(abs(~var_4.a.a.x), ~abs(global1.a.x)), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(min(var_4.a.a.x, ~func_2(func_2(var_3.a.b, u_input.a, var_3.c.x).b, -24450i, !global1.b.x).a.x), select(vec2<u32>(7113u, func_2(!vec2<bool>(var_3.a.b.x, true), global0.x, true).a.x), ~(~vec2<u32>(var_4.d, 4294967295u)), !var_4.a.b.x));
}

