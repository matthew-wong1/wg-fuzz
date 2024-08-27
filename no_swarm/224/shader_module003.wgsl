struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
    c: vec3<i32>,
    d: Struct_2,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
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

var<private> global0: i32 = 19820i;

var<private> global1: Struct_4;

var<private> global2: bool;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec3<i32>) -> u32 {
    let var_0 = min(abs(~_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.a.x, u_input.a.x, 7994u, 0u), vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 56202u))), max(~(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u))), ~vec4<u32>(1u, 36087u, u_input.a.x & 1u, ~15441u)));
    var var_1 = Struct_3(vec4<bool>(arg_1.b.a.x, arg_1.b.a.x, !(true & !arg_1.b.a.x), false));
    let var_2 = Struct_1(0i, arg_2.b.a.wyw, vec2<u32>(min(_wgslsmith_mod_u32(var_0.x >> (var_0.x % 32u), reverseBits(u_input.a.x)), reverseBits(select(u_input.a.x, 4294967295u, true))), var_0.x));
    global1 = Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))))), global1.b, ~(~(-(vec2<i32>(arg_2.c.x, arg_1.c.x) ^ vec2<i32>(var_2.a, arg_1.c.x)))));
    var var_3 = -arg_1.c.x;
    return u_input.a.x << (97100u % 32u);
}

fn func_2() -> f32 {
    var var_0 = ~_wgslsmith_mod_u32(11377u, u_input.a.x);
    global2 = all(global1.b.a);
    let var_1 = any(vec4<bool>(!any(vec3<bool>(true, false, false)), global1.b.a.x & true, select(func_3(vec4<i32>(0i, u_input.b, 0i, -2147483647i), Struct_4(global1.a, global1.b, vec2<i32>(global1.c.x, global1.c.x)), Struct_4(-2049f, global1.b, global1.c), vec3<i32>(34924i, -61500i, u_input.b)), 15682u, true) >= ~1u, !(u_input.a.x < ~u_input.a.x)));
    return -1049f;
}

fn func_1(arg_0: vec4<u32>) -> vec3<f32> {
    var var_0 = ~u_input.b;
    global0 = global1.c.x;
    global2 = false;
    var var_1 = -global1.c;
    var var_2 = ~arg_0.x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2530f, global1.a, _wgslsmith_f_op_f32(func_2())), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.a), 2455f, _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1073f, -1361f, 1000f))), _wgslsmith_div_vec3_f32(vec3<f32>(-272f, 818f, 388f), vec3<f32>(-713f, global1.a, global1.a))))), select(global1.b.a.wxz, select(global1.b.a.yzz, !vec3<bool>(global1.b.a.x, global1.b.a.x, false), true), true))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>) -> bool {
    let var_0 = arg_0.a;
    global1 = Struct_4(arg_1.x, Struct_3(arg_0.a), global1.c);
    global1 = Struct_4(global1.a, Struct_3(vec4<bool>(!(global1.a <= global1.a), arg_0.a.x, any(arg_0.a) | true, false)), (~(-vec2<i32>(u_input.b, u_input.b)) ^ global1.c) ^ global1.c);
    let var_1 = 4516i;
    var var_2 = global1.a;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(global1.b, _wgslsmith_f_op_vec3_f32(func_1(vec4<u32>(u_input.a.x, ~_wgslsmith_mult_u32(u_input.a.x, 4546u), ~4294967295u, u_input.a.x))));
    var var_0 = -21819i;
    let var_1 = vec2<i32>(~(~u_input.b), min(-_wgslsmith_add_i32(-global1.c.x, global1.c.x), u_input.b));
    var var_2 = ~reverseBits(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 14147i, 0i), _wgslsmith_mult_vec3_i32(vec3<i32>(-35837i, -1i, var_1.x), vec3<i32>(-2147483647i, u_input.b, -8294i))), (vec3<i32>(global1.c.x, 0i, global1.c.x) >> (vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u))) & -vec3<i32>(0i, global1.c.x, global1.c.x)));
    let var_3 = Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(~(u_input.a.x << (u_input.a.x % 32u)), select(~49433u, ~36723u, 1i >= var_1.x), 36274u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(77033u, 777u, u_input.a.x) << (vec3<u32>(25277u, 0u, 1u) % vec3<u32>(32u)), max(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)))), Struct_1(-24070i, global1.b.a.zzz, select(~vec2<u32>(u_input.a.x, 2266u), abs(_wgslsmith_add_vec2_u32(vec2<u32>(27183u, u_input.a.x), u_input.a)), (69164u <= u_input.a.x) & global1.b.a.x)), Struct_1(u_input.b, !select(global1.b.a.wzx, !global1.b.a.wyx, vec3<bool>(false, global1.b.a.x, global1.b.a.x)), ~_wgslsmith_clamp_vec2_u32(u_input.a, ~u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1544f, -802f, -1447f, 144f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, global1.a, 678f, 520f) * vec4<f32>(global1.a, global1.a, global1.a, 1817f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-407f, global1.a, global1.a, global1.a))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec3_f32(func_1(vec4<u32>(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 8546u), 1u, u_input.a.x))).xz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-989f, global1.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(254f, -1352f) * vec2<f32>(1269f, -222f)), false)) - vec2<f32>(global1.a, -1337f))));
    var var_4 = Struct_5(reverseBits(~var_3.a), Struct_4(var_3.d.x, Struct_3(select(vec4<bool>(false, var_3.b.b.x, false, false), select(global1.b.a, vec4<bool>(true, false, var_3.c.b.x, global1.b.a.x), false), true)), ~(~(global1.c | global1.c))), vec3<i32>(~(~(~2147483647i)), 16261i, var_2.x), Struct_2(var_3.a, var_3.b, var_3.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, -624f, global1.a, 705f)) + var_3.d)), _wgslsmith_f_op_vec2_f32(min(var_3.d.xw, vec2<f32>(_wgslsmith_f_op_f32(-var_3.d.x), _wgslsmith_f_op_f32(-567f * 1216f))))), !(!var_3.b.b));
    let var_5 = var_4.c;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(func_3(firstTrailingBit(min(vec4<i32>(var_2.x, var_1.x, 1i, 23111i), vec4<i32>(17756i, 1i, 38868i, global1.c.x))), var_4.b, Struct_4(_wgslsmith_f_op_f32(-var_4.b.a), Struct_3(vec4<bool>(true, global1.b.a.x, false, var_4.d.b.b.x)), vec2<i32>(u_input.b, var_1.x)), var_4.c)), var_3.a.zx);
}

