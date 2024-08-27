struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(true, vec3<i32>(-1i, -6947i, 21557i)), 0u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-216f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(620f, -1291f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(937f - 1472f) - _wgslsmith_f_op_f32(f32(-1f) * -1257f)))))));
    let var_1 = firstTrailingBit(0i);
    var var_2 = -_wgslsmith_mult_i32(-_wgslsmith_mod_i32(-50537i, 15494i), _wgslsmith_mult_i32(global0.a.b.x, 2147483647i)) ^ -_wgslsmith_mult_i32(-2147483647i, 1i << (firstLeadingBit(global0.b) % 32u));
    var var_3 = -vec2<i32>(-22464i, ~reverseBits(-15168i));
    var_3 = arg_3.b.yz;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-87i, 12109i, -2147483647i, arg_0), vec4<i32>(-1i) * -vec4<i32>(1035i, var_3.x, -28537i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -23076i), vec2<i32>(u_input.b, arg_3.b.x))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = func_3(u_input.b, ~select(_wgslsmith_add_u32(34427u, 5620u), ~global0.b, !(false | global0.a.a)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(~global0.a.b, min(firstTrailingBit(vec3<i32>(u_input.b, global0.a.b.x, 71797i)), vec3<i32>(-11840i, global0.a.b.x, 57520i) >> (vec3<u32>(62271u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))), -global0.a.b), global0.a);
    var var_1 = Struct_3(global0.a, ~reverseBits(40816u));
    var var_2 = 13728u;
    var_1 = Struct_3(global0.a, _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, global0.b, u_input.a.x), arg_0), global0.b) << (abs(_wgslsmith_clamp_u32(~var_1.b, _wgslsmith_add_u32(0u, global0.b), 0u)) % 32u));
    var var_3 = 4294967295u;
    return Struct_3(Struct_1(true, abs(_wgslsmith_mult_vec3_i32(var_1.a.b, vec3<i32>(1i, 1i, -2147483647i)))), var_1.b);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    global0 = Struct_3(arg_0.a, _wgslsmith_mult_u32(firstLeadingBit(func_2(firstTrailingBit(vec4<u32>(global0.b, u_input.c, 0u, u_input.a.x))).b), 4294967295u));
    let var_0 = arg_1.a;
    let var_1 = vec2<u32>(~0u, ~(~(~global0.b << (16356u % 32u))));
    global0 = arg_0;
    var var_2 = vec3<bool>(true, true, true);
    return arg_0.a;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_3) -> f32 {
    var var_0 = arg_2.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-335f, arg_1, 2169f, -746f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-639f, -673f, 305f, arg_1))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(142f, arg_1, arg_1, arg_1), vec4<f32>(-220f, arg_1, 264f, arg_1))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 432f, arg_1, arg_1) * vec4<f32>(arg_1, arg_1, arg_1, 1461f)) * vec4<f32>(585f, arg_1, arg_1, arg_1)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-330f, 2214f, arg_1, arg_1), vec4<f32>(-2178f, arg_1, -980f, arg_1), false)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1), 1000f, arg_1, var_1.x)));
    let var_2 = var_0.a;
    var var_3 = Struct_2(global0.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -294f));
}

fn func_1() -> vec4<f32> {
    let var_0 = vec3<f32>(-2296f, _wgslsmith_f_op_f32(func_5(~(~_wgslsmith_sub_u32(global0.b, u_input.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(854f + 961f)), -822f), Struct_3(func_4(func_2(vec4<u32>(9816u, 85361u, global0.b, 4294967295u)), Struct_2(global0.a)), firstLeadingBit(_wgslsmith_clamp_u32(global0.b, global0.b, u_input.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1580f, -1591f))))) * 1654f));
    var var_1 = ~_wgslsmith_mod_u32(global0.b, _wgslsmith_mult_u32(66482u, u_input.c));
    global0 = func_2(vec4<u32>(~50131u | global0.b, ~(~u_input.a.x ^ ~global0.b), ~max(_wgslsmith_sub_u32(global0.b, 0u), 34475u ^ global0.b), _wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.b, 1u, 1u), vec4<u32>(4294967295u, global0.b, 4294967295u, u_input.a.x)), u_input.a.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(17897u, 12227u), ~23451u))));
    var_1 = _wgslsmith_div_u32(~(~(~46355u)), global0.b) | func_2(vec4<u32>(~55268u, ~global0.b, ~4294967295u, func_2(vec4<u32>(u_input.a.x, 1u, u_input.c, global0.b) >> (vec4<u32>(1035u, 4294967295u, u_input.c, u_input.c) % vec4<u32>(32u))).b)).b;
    let var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, _wgslsmith_div_i32(1i, -13331i), global0.a.b.x), vec3<i32>(-global0.a.b.x | ~u_input.b, ~(-2147483647i), func_4(Struct_3(global0.a, 1u), Struct_2(Struct_1(global0.a.a, vec3<i32>(u_input.b, 63473i, u_input.b)))).b.x));
    return vec4<f32>(-270f, var_0.x, -415f, -451f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_1());
    let var_1 = vec2<bool>(!(func_2(~vec4<u32>(global0.b, 1u, u_input.c, 50850u)).a.a || (any(vec2<bool>(global0.a.a, global0.a.a)) & !global0.a.a)), global0.a.a);
    global0 = func_2(~(~_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(120812u, 0u, global0.b, 22295u)), ~vec4<u32>(0u, 4334u, global0.b, global0.b))));
    var var_2 = Struct_2(global0.a);
    let var_3 = u_input.b;
    let var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x, 378f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 - var_0))))), var_0.zzx, ~(~u_input.a.x) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(22091u, global0.b), u_input.a.zy << (vec2<u32>(global0.b, u_input.c) % vec2<u32>(32u)), select(vec2<u32>(26830u, global0.b), vec2<u32>(u_input.a.x, 32565u), var_1)), vec2<u32>(1u, abs(u_input.c))) % 32u));
}

