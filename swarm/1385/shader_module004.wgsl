struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(1u, true, Struct_1(false, true, vec4<f32>(-1000f, -908f, -1304f, 495f), 0u), false, -1000f);

var<private> global1: i32 = 2147483647i;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec3<i32> {
    global1 = abs(0i);
    global1 = ~u_input.a;
    global0 = Struct_4(_wgslsmith_add_u32(~((21190u >> (u_input.d.x % 32u)) & _wgslsmith_div_u32(u_input.b.x, u_input.d.x)), u_input.d.x), (global0.c.b & select(global0.d, select(true, true, global0.c.a), true)) || all(select(vec3<bool>(true, global0.c.a, global0.b), !vec3<bool>(false, global0.c.a, global0.b), !global0.b)), Struct_1(any(!vec3<bool>(global0.b, global0.c.a, true)), true, global0.c.c, u_input.d.x), true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.c.c.x, -1816f))))));
    let var_0 = 36278i;
    global0 = Struct_4(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global0.a, global0.c.d, global0.c.d), vec4<u32>(35780u, u_input.d.x, 1u, 102840u)), reverseBits(vec4<u32>(global0.c.d, u_input.c, 4294967295u, 68838u))), 0u) >> (u_input.b.x % 32u), !global0.b && true, Struct_1(global0.b, true, _wgslsmith_f_op_vec4_f32(-global0.c.c), u_input.b.x), all(vec2<bool>(all(select(vec4<bool>(global0.c.b, false, global0.b, global0.d), vec4<bool>(global0.c.a, global0.d, global0.d, global0.d), vec4<bool>(global0.c.b, true, false, false))), true)), 1000f);
    return -_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, var_0, u_input.a), _wgslsmith_mod_vec3_i32(max(vec3<i32>(var_0, 48i, -3212i), vec3<i32>(var_0, var_0, -73488i)), vec3<i32>(var_0, -1i, 1i)), (vec3<i32>(u_input.a, -59577i, u_input.a) << (vec3<u32>(global0.a, 35689u, u_input.b.x) % vec3<u32>(32u))) & ~vec3<i32>(var_0, var_0, 36279i)), (-vec3<i32>(-2147483647i, var_0, u_input.a) >> (~u_input.b % vec3<u32>(32u))) >> (vec3<u32>(~global0.c.d, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.d, 1u, global0.c.d), u_input.b), 4294967295u) % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: vec2<i32>) -> Struct_5 {
    global1 = -(~((firstTrailingBit(u_input.a) >> (select(u_input.d.x, u_input.b.x, arg_1) % 32u)) & -63180i));
    let var_0 = Struct_1(global0.b, any(!(!vec2<bool>(global0.b, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_0.c.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c.c)))) - _wgslsmith_f_op_vec4_f32(arg_0.c.c + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c.c.x, -501f, -3479f, 368f), global0.c.c))), arg_0.a);
    global1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-(~arg_2.x), ~u_input.a), abs(select(max(firstLeadingBit(vec2<i32>(0i, u_input.a)), ~vec2<i32>(-23327i, -2147483647i)), arg_2, arg_1 != !arg_0.b)));
    var var_1 = 30806u;
    let var_2 = _wgslsmith_mult_vec3_i32(func_3(), ~(-abs(vec3<i32>(-2147483647i, arg_2.x, 12834i))));
    return Struct_5(Struct_3(false, global0.a), Struct_2(~vec2<i32>(-1i, 10148i & arg_2.x)));
}

fn func_4(arg_0: f32, arg_1: Struct_5) -> vec2<bool> {
    let var_0 = select(countOneBits(u_input.b), vec3<u32>(_wgslsmith_dot_vec3_u32(min(u_input.b, min(u_input.b, u_input.b)), ~u_input.b), global0.c.d, arg_1.a.b), select(!vec3<bool>(arg_1.a.a, any(vec3<bool>(global0.d, arg_1.a.a, arg_1.a.a)), arg_1.a.a || arg_1.a.a), !(!(!vec3<bool>(true, arg_1.a.a, arg_1.a.a))), true));
    var var_1 = !(global0.c.a || (true || any(!vec2<bool>(false, global0.d))));
    var var_2 = ~vec3<u32>(abs(_wgslsmith_mod_u32(7524u, 28057u)) << (u_input.d.x % 32u), 0u, abs(_wgslsmith_sub_u32(var_0.x, ~72100u)));
    let var_3 = global0.c;
    var var_4 = ~var_3.d;
    return vec2<bool>(true, true || (_wgslsmith_div_i32(firstTrailingBit(u_input.a), func_2(Struct_4(u_input.d.x, var_3.a, Struct_1(arg_1.a.a, arg_1.a.a, vec4<f32>(-2857f, global0.e, var_3.c.x, var_3.c.x), var_2.x), arg_1.a.a, 275f), false, vec2<i32>(arg_1.b.a.x, 2147483647i)).b.a.x) <= abs(_wgslsmith_clamp_i32(-1i, arg_1.b.a.x, arg_1.b.a.x))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_5, arg_3: Struct_5) -> f32 {
    global1 = 49522i;
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e + 532f))))));
    global0 = Struct_4(10067u, !all(select(vec2<bool>(arg_3.a.a, false), arg_1.yz, select(vec2<bool>(false, true), vec2<bool>(false, false), global0.c.b))), global0.c, all(select(!arg_1.yz, func_4(391f, func_2(Struct_4(58380u, true, global0.c, true, 113f), arg_0.a, vec2<i32>(arg_2.b.a.x, arg_2.b.a.x))), !arg_1.wz)), var_0);
    let var_1 = arg_3.a.a;
    let var_2 = Struct_5(func_2(Struct_4(~countOneBits(arg_0.b), !(-14555i != u_input.a), global0.c, all(arg_1.xx), _wgslsmith_div_f32(-429f, -1000f)), var_1, vec2<i32>(2147483647i, _wgslsmith_sub_i32(~u_input.a, ~(-3757i)))).a, arg_2.b);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(u_input.d.x, true, global0.c, false, _wgslsmith_f_op_f32(trunc(global0.c.c.x)));
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~((vec4<u32>(1602u, 20979u, 112231u, global0.a) & vec4<u32>(global0.c.d, 4912u, 0u, global0.c.d)) >> (~vec4<u32>(global0.c.d, 3109u, 1u, global0.a) % vec4<u32>(32u))), vec4<u32>(u_input.c, global0.a, u_input.c ^ 9399u, u_input.d.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, u_input.b.x, global0.a, global0.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, global0.c.d, u_input.c, global0.a), vec4<u32>(1u, 36870u, u_input.d.x, u_input.c)) ^ ~vec4<u32>(u_input.b.x, 1161u, global0.c.d, u_input.b.x)) & countOneBits(~(~vec4<u32>(u_input.c, 1u, 32058u, global0.c.d))));
    global0 = Struct_4(82791u, true, global0.c, all(select(vec4<bool>(true, any(vec3<bool>(global0.d, global0.d, false)), false, any(vec3<bool>(global0.b, false, global0.c.b))), vec4<bool>(global0.c.a, any(vec3<bool>(global0.c.a, true, global0.d)), !global0.b, select(global0.c.a, global0.c.b, global0.b)), false)), global0.e);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(false, 9727u), vec4<bool>(global0.b, true, false, false), Struct_5(Struct_3(true, global0.c.d), Struct_2(vec2<i32>(5580i, 13609i))), Struct_5(Struct_3(true, var_0.x), Struct_2(vec2<i32>(u_input.a, 0i))))))) - _wgslsmith_f_op_f32(func_1(func_2(Struct_4(0u, true, global0.c, true, global0.c.c.x), true, func_3().yy).a, !vec4<bool>(global0.b, true, global0.c.a, false), Struct_5(func_2(Struct_4(2423u, true, Struct_1(false, global0.b, vec4<f32>(-2019f, global0.e, 1413f, 168f), var_0.x), true, 222f), true, vec2<i32>(-2887i, u_input.a)).a, Struct_2(vec2<i32>(-563i, u_input.a))), Struct_5(Struct_3(true, global0.a), Struct_2(vec2<i32>(u_input.a, -1i)))))), _wgslsmith_f_op_f32(step(1178f, global0.c.c.x)));
    var var_2 = Struct_5(Struct_3(global0.b, u_input.d.x), Struct_2(vec2<i32>(u_input.a, _wgslsmith_add_i32(~u_input.a, ~0i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-38292i, 19114i), vec2<i32>(firstLeadingBit(_wgslsmith_mult_i32(-1i, ~0i)), u_input.a), abs(u_input.c), i32(-1i) * -u_input.a, abs(-52608i) << (1u % 32u));
}

