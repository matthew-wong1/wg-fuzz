struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 7347u;

var<private> global1: Struct_2 = Struct_2(vec2<i32>(55147i, 1i));

var<private> global2: vec4<u32> = vec4<u32>(1u, 14185u, 4294967295u, 1u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> u32 {
    global1 = Struct_2(firstLeadingBit(firstLeadingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_1.a, global1.a, arg_3.a), global1.a))));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + -2233f)))), _wgslsmith_f_op_f32(-arg_2));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1034f + arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -568f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-118f)))))));
    global2 = ~u_input.a;
    return abs(_wgslsmith_div_u32(global2.x, 1u));
}

fn func_2() -> u32 {
    var var_0 = Struct_2(-max(abs(vec2<i32>(u_input.c, global1.a.x)), ~_wgslsmith_mult_vec2_i32(global1.a, vec2<i32>(u_input.c, global1.a.x))));
    global0 = 33474u;
    let var_1 = min(global1.a.x >> (((u_input.a.x | u_input.d.x) ^ func_3(true, Struct_2(vec2<i32>(-26378i, global1.a.x)), 1743f, Struct_2(vec2<i32>(u_input.c, -2147483647i)))) % 32u), _wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, 1i), u_input.c) << (~global2.x % 32u));
    global2 = ~u_input.a;
    var_0 = Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(-23523i, 13047i) & (_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a.x, 12879i), vec2<i32>(u_input.c, -2147483647i)) >> (~global2.yx % vec2<u32>(32u))), var_0.a));
    return ~101610u | global2.x;
}

fn func_4(arg_0: bool, arg_1: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = Struct_2(-_wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, global1.a.x)), vec2<i32>(global1.a.x, 2147483647i) ^ ~vec2<i32>(0i, global1.a.x)));
    var var_2 = var_1;
    var var_3 = u_input.c;
    global0 = _wgslsmith_add_u32(48348u | _wgslsmith_dot_vec4_u32(~(u_input.a ^ vec4<u32>(global2.x, 23906u, global2.x, 36226u)), vec4<u32>(2261u << (global2.x % 32u), 1u, 17229u, global2.x)), _wgslsmith_clamp_u32(60692u, 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 53889u, 1u), u_input.a.yxw)));
    return Struct_2(var_1.a >> (_wgslsmith_mod_vec2_u32(~global2.xy, ~vec2<u32>(0u, u_input.b)) % vec2<u32>(32u)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_1(!((~(-2147483647i) != (global1.a.x << (0u % 32u))) && true), firstLeadingBit(17603i));
    global2 = vec4<u32>(_wgslsmith_sub_u32(countOneBits(~(~35289u)), ~_wgslsmith_mod_u32(func_3(true, Struct_2(vec2<i32>(var_0.b, global1.a.x)), 936f, arg_0), ~0u)), reverseBits(u_input.d.x), u_input.b, 4294967295u);
    global1 = Struct_2(vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.a.x, -36001i, 0i, 2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b, arg_0.a.x, 2147483647i, 17221i), vec4<i32>(global1.a.x, -3378i, var_0.b, u_input.c), vec4<i32>(arg_1.b, var_0.b, -5273i, -42650i)) << (max(u_input.a, u_input.a) % vec4<u32>(32u))), -min(u_input.c, -3959i) & ~_wgslsmith_sub_i32(u_input.c, u_input.c)));
    global2 = _wgslsmith_mult_vec4_u32(abs(vec4<u32>(abs(global2.x << (u_input.d.x % 32u)), arg_2, ~0u, 38791u)), _wgslsmith_add_vec4_u32(vec4<u32>((1u << (arg_2 % 32u)) << (func_3(true, arg_0, -2680f, Struct_2(vec2<i32>(-16251i, 372i))) % 32u), reverseBits(_wgslsmith_mod_u32(arg_2, 7480u)), u_input.a.x, _wgslsmith_div_u32(1u, arg_2)), ~select(u_input.a, _wgslsmith_div_vec4_u32(vec4<u32>(76873u, 0u, 1u, 0u), vec4<u32>(arg_2, 0u, u_input.a.x, global2.x)), vec4<bool>(var_0.a, var_0.a, var_0.a, false))));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-372f, 1066f) * vec2<f32>(1235f, 598f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(414f, 400f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(809f, -642f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-372f, 717f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1289f, 547f) + vec2<f32>(325f, 459f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(281f, -1964f) * vec2<f32>(775f, 613f))))))));
    return func_4(var_0.a, true);
}

fn func_1() -> u32 {
    let var_0 = -(i32(-1i) * -2147483647i) & global1.a.x;
    let var_1 = 1563f;
    let var_2 = Struct_2(vec2<i32>(39025i, -global1.a.x));
    var var_3 = func_5(func_4(func_2() != 1u, true), Struct_1(!any(vec3<bool>(true, true, true)), 2147483647i), _wgslsmith_mod_u32(min(~global2.x, ~global2.x), u_input.d.x) & ~abs(~global2.x));
    var var_4 = Struct_1(!select(true, true, true), max(-28641i, var_3.a.x));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = reverseBits(func_1()) >> (global2.x % 32u);
    let var_0 = global1.a.x;
    let var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, (-1i | global1.a.x) | u_input.c, u_input.c) | (-vec3<i32>(global1.a.x, global1.a.x, 0i) | -vec3<i32>(446i, u_input.c, 2147483647i)), abs(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, global1.a.x, -48873i), vec3<i32>(global1.a.x, u_input.c, u_input.c))) ^ countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(0i, global1.a.x, -20815i), vec3<i32>(global1.a.x, u_input.c, -1029i)))), firstLeadingBit(_wgslsmith_mod_vec3_i32(~(-vec3<i32>(4530i, u_input.c, 1i)), vec3<i32>(select(global1.a.x, -1i, false), _wgslsmith_mod_i32(1i, 5119i), _wgslsmith_mod_i32(u_input.c, global1.a.x)))));
    var var_2 = var_1.yz;
    let var_3 = var_1.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(866f, 1067f, 554f, 260f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(600f, -577f, -372f, 267f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-260f, 841f, 1698f, -572f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -542f), _wgslsmith_f_op_f32(-369f - 366f)))), _wgslsmith_f_op_f32(521f + -127f), _wgslsmith_f_op_f32(f32(-1f) * -1367f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-742f - -1000f)))))));
    let var_5 = select(any(vec3<bool>(true, all(vec3<bool>(true, true, true)), true)), any(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), false)), false) | true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(func_4(any(vec2<bool>(var_5, true)), true).a.x | u_input.c, -2535i), firstLeadingBit(-(~firstTrailingBit(vec4<i32>(var_2.x, 45197i, 2147483647i, -18019i)))));
}

