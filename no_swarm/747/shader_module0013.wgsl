struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = ~select(countOneBits(u_input.e.x), ((u_input.e.x ^ 4294967295u) >> (1700u % 32u)) & (~arg_0.c.b >> (~arg_0.a.x % 32u)), true);
    global0 = vec4<i32>(~(-18797i), global0.x, ~(-44805i), 0i);
    let var_1 = !(!vec3<bool>(2147483647i != ~arg_0.b.x, false, arg_0.c.a));
    let var_2 = Struct_2(u_input.e, abs(vec2<i32>(1i, _wgslsmith_div_i32(i32(-1i) * -24868i, -1i))), Struct_1(arg_0.c.a, 0u));
    global0 = u_input.a;
    return var_2;
}

fn func_3() -> u32 {
    var var_0 = 2147483647i;
    let var_1 = func_2(Struct_2(~(~abs(u_input.e)), u_input.a.zy, func_2(Struct_2(~vec3<u32>(22530u, u_input.c, u_input.c), vec2<i32>(-2147483647i, 2147483647i), Struct_1(true, 13605u))).c));
    global0 = _wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, vec4<i32>(_wgslsmith_mult_i32(1i, ~u_input.d) ^ global0.x, -2147483647i, u_input.d << (u_input.c % 32u), ~u_input.d));
    global0 = u_input.a;
    var var_2 = _wgslsmith_div_vec3_i32((_wgslsmith_mult_vec3_i32(u_input.a.xzy, vec3<i32>(var_1.b.x, 2147483647i, 27785i)) | ((vec3<i32>(-2147483647i, global0.x, -26758i) ^ u_input.a.wwy) >> (var_1.a % vec3<u32>(32u)))) >> (countOneBits(u_input.e) % vec3<u32>(32u)), ~(-vec3<i32>(~0i, global0.x, func_2(var_1).b.x)));
    return max(_wgslsmith_div_u32(u_input.c, u_input.c), ~u_input.e.x) ^ firstLeadingBit(118820u);
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_1 {
    let var_0 = !vec4<bool>(arg_0, !(!arg_1), !any(!vec2<bool>(true, arg_1)), !any(vec2<bool>(arg_1, false)));
    global0 = vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, 1i, global0.x, 0i), u_input.a);
    var var_1 = Struct_2(select(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(~_wgslsmith_mult_u32(769u, u_input.c), 1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(17903u, 18848u, 1u, u_input.c), ~vec4<u32>(4294967295u, u_input.c, 4294967295u, 1u))), arg_0), reverseBits(u_input.a.yy), Struct_1(firstLeadingBit(1i) <= ~global0.x, _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.c, 23465u, 0u, 1u) ^ vec4<u32>(4925u, 4294967295u, u_input.e.x, 4294967295u)), vec4<u32>(1u, u_input.c >> (41713u % 32u), ~u_input.e.x, firstTrailingBit(u_input.e.x)))));
    let var_2 = func_2(Struct_2(var_1.a, -vec2<i32>(1i, -1i), Struct_1(true, ~(~u_input.c))));
    var var_3 = _wgslsmith_mult_u32(~0u, func_3());
    return func_2(var_2).c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> bool {
    let var_0 = func_2(Struct_2(u_input.e, vec2<i32>(countOneBits(reverseBits(global0.x)), global0.x), Struct_1(arg_3.c.a, ~(~arg_0.b))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1336f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-213f, -1706f)))))));
    var var_2 = (-778f == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(816f + _wgslsmith_div_f32(-1440f, -819f))))) | arg_0.a;
    let var_3 = !vec2<bool>(any(!(!vec4<bool>(false, var_0.c.a, arg_0.a, arg_3.c.a))), true);
    var var_4 = func_2(var_0);
    return ~(~func_3()) >= (arg_3.c.b | 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true & select(any(vec2<bool>(true, true)), true, all(vec4<bool>(true, true, true, true))), true, func_4(Struct_1(true, u_input.c), func_1(true, !all(vec2<bool>(false, true))), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), false)), func_2(Struct_2(vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), u_input.a.zz, func_2(Struct_2(u_input.e, u_input.a.zx, Struct_1(false, u_input.c))).c))));
    global0 = _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(global0.x, firstLeadingBit(~0i), -1i, global0.x)), _wgslsmith_add_vec4_i32(u_input.a, _wgslsmith_sub_vec4_i32(max(~u_input.a, vec4<i32>(-5843i, 42146i, 75096i, global0.x)), ~u_input.a ^ -vec4<i32>(u_input.b, 1i, 1i, u_input.b))));
    let var_1 = func_2(func_2(Struct_2(u_input.e, vec2<i32>(1i, 0i), func_1(true, select(true, var_0.x, var_0.x)))));
    var var_2 = func_2(func_2(var_1)).c;
    let var_3 = vec3<bool>(var_2.a, true, !var_2.a);
    let var_4 = ~abs(func_2(var_1).a.yy);
    var_2 = func_1(var_0.x, true);
    let var_5 = var_1.c;
    var_2 = Struct_1(false, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a.wzy, vec3<i32>(-u_input.a.x, 1i, u_input.d)), -13113i));
}

