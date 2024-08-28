struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(2147483647i, 1i, 3417i, 39822i), vec4<f32>(-211f, -418f, -666f, 376f), false);

var<private> global1: vec3<u32>;

var<private> global2: vec3<u32> = vec3<u32>(40008u, 71558u, 56472u);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1479f)));
    var var_1 = 1i;
    let var_2 = Struct_1(vec4<i32>(u_input.a.x, global0.a.x, abs(-2147483647i), 2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(global0.b.x * -747f), arg_0.b.x, global0.b.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-763f + -176f), -479f, global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -570f)))), select(arg_0.c, _wgslsmith_clamp_u32(select(u_input.b, global1.x, arg_0.c), abs(global1.x), global2.x) <= ~38844u, true));
    global2 = firstLeadingBit(~vec3<u32>(max(~global1.x, global1.x), _wgslsmith_mult_u32(89839u, countOneBits(u_input.b)), global1.x));
    global0 = Struct_1(-var_2.a, arg_0.b, true);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2.b.x)), 1399f, _wgslsmith_f_op_f32(sign(-146f)), _wgslsmith_f_op_f32(round(479f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(183f, global0.b.x, arg_0.b.x, global0.b.x) + global0.b))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_div_i32(global0.a.x, 0i), -7397i);
    let var_1 = -4581i;
    let var_2 = !select(!select(!vec4<bool>(global0.c, true, global0.c, arg_2.c), !vec4<bool>(false, true, true, global0.c), arg_2.c | true), !select(!vec4<bool>(true, global0.c, true, global0.c), !vec4<bool>(true, arg_2.c, true, arg_0.c), vec4<bool>(true, true, arg_3.c, arg_0.c)), !vec4<bool>(arg_0.c, arg_3.c, true, all(vec4<bool>(false, global0.c, arg_2.c, true))));
    global1 = ~(~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(global2.x, 4294967295u, 1u)), vec3<u32>(0u, ~15836u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 4294967295u, u_input.b), vec3<u32>(global2.x, 39134u, 1u)))));
    let var_3 = true;
    return vec4<i32>(arg_0.a.x, firstTrailingBit(-19104i), (-(2147483647i << (u_input.b % 32u)) ^ _wgslsmith_sub_i32(0i, -2147483647i)) << ((~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), global2.zx) << (4294967295u % 32u)) % 32u), -u_input.a.x);
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = max(1i, abs(~_wgslsmith_dot_vec2_i32(global0.a.ww, global0.a.xx)));
    var var_1 = abs(-5469i);
    let var_2 = Struct_1(abs(-(~global0.a << (vec4<u32>(2538u, 22259u, 33840u, global2.x) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(round(global0.b)), !global0.c);
    var var_3 = Struct_1(_wgslsmith_add_vec4_i32(var_2.a, var_2.a), global0.b, global0.c);
    let var_4 = vec4<u32>(~0u, ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 1u, u_input.b, 45594u), vec4<u32>(global1.x, 43948u, u_input.b, global2.x)), 31352u) >> (~40046u % 32u), u_input.b, 29246u);
    return Struct_1(func_4(Struct_1(_wgslsmith_clamp_vec4_i32(select(var_2.a, vec4<i32>(var_0, var_3.a.x, var_2.a.x, global0.a.x), vec4<bool>(global0.c, var_2.c, var_2.c, false)), var_3.a, vec4<i32>(global0.a.x, 1i, var_0, var_2.a.x)), _wgslsmith_f_op_vec4_f32(func_3(var_2, vec3<i32>(2147483647i, 0i, 0i))), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, global0.b.x, global0.b.x, var_2.b.x))), var_2, var_2), _wgslsmith_f_op_vec4_f32(trunc(global0.b)), true);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: vec4<f32>) -> f32 {
    let var_0 = 4294967295u;
    var var_1 = global0.b.x;
    global0 = func_2(global1.x);
    global2 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(min(~(~vec3<u32>(1u, 47138u, 74543u)), vec3<u32>(global1.x | 11257u, select(var_0, 63376u, true), 1u)), vec3<u32>(arg_2, _wgslsmith_add_u32(select(global2.x, global2.x, global0.c), 0u), max(24214u, 110780u))), ~_wgslsmith_clamp_vec3_u32(abs(firstTrailingBit(vec3<u32>(3127u, 61055u, global1.x))), vec3<u32>(54972u, 25615u, ~u_input.b), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b, 0u), vec3<u32>(0u, global1.x, var_0)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 4294967295u, arg_2), vec3<u32>(0u, u_input.b, global2.x)))));
    global0 = func_2(select(4294967295u, reverseBits(100918u), false || global0.c));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(global0.a.x, global0.b.x, ~571u, global0.b));
    var var_1 = ~(~17181u | global1.x);
    var var_2 = firstTrailingBit(reverseBits(~1u << (~4294967295u % 32u)) ^ global1.x);
    global0 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -global0.a, select(global0.a, vec4<i32>(countOneBits(global0.a.x), u_input.a.x, -6631i, _wgslsmith_sub_i32(u_input.a.x, global0.a.x)), false)), _wgslsmith_f_op_vec4_f32(-global0.b), true);
    let var_3 = func_4(Struct_1(_wgslsmith_sub_vec4_i32(global0.a, vec4<i32>(global0.a.x, ~u_input.a.x, u_input.a.x, 4812i)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-403f, 411f, var_0, -278f), _wgslsmith_f_op_vec4_f32(-global0.b))))), true), global0.b, func_2(global1.x), Struct_1(countOneBits(global0.a), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, -1060f, -652f, _wgslsmith_f_op_f32(max(1000f, -2010f))))), global0.c)).xxx;
    let var_4 = vec4<bool>(false, func_4(func_2(0u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global0.b - vec4<f32>(-1051f, 1709f, 245f, 711f)))), func_2(u_input.b), func_2(~4294967295u)).x != ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global0.a.x) << (global1.yz % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(u_input.a.x, 48816i))), global0.c, global0.c);
    var var_5 = func_2(69426u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.b.yw), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(var_0 * -1112f))), vec2<bool>(global0.c & true, true & all(var_4.xz)))), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, global1.x, 20927u), select(vec3<u32>(global2.x, u_input.b, 1u), vec3<u32>(u_input.b, 4294967295u, 88610u), var_4.wyz)), _wgslsmith_add_vec3_u32(vec3<u32>(global1.x, 2296u, 2412u), vec3<u32>(52322u, global1.x, 0u) >> (vec3<u32>(4294967295u, global1.x, 0u) % vec3<u32>(32u))), abs(vec3<u32>(global2.x, 28702u, 57170u))), vec3<u32>(62062u, min(~0u, ~1u), abs(select(23463u, global2.x, true)))), _wgslsmith_clamp_u32(~1u, ~1u, global2.x));
}

