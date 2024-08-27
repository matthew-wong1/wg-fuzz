struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<vec4<i32>, 19>;

var<private> global2: vec4<i32> = vec4<i32>(14616i, -28365i, -1i, 22149i);

var<private> global3: array<f32, 27>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>) -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 27u)] * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(30929u, 27u)]), _wgslsmith_f_op_f32(sign(-2867f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1275f)), 548f))), 371f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c, 27u)]))));
    global1 = array<vec4<i32>, 19>();
    global2 = vec4<i32>(-(~2147483647i ^ _wgslsmith_dot_vec2_i32(arg_0.zx << (vec2<u32>(1u, 28311u) % vec2<u32>(32u)), arg_0.zy)), u_input.a.x, _wgslsmith_add_i32(-2147483647i, firstTrailingBit(_wgslsmith_div_i32(i32(-1i) * -31676i, global2.x ^ 33703i))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a, min(abs(global2.wyy), ~vec3<i32>(14914i, -12683i, arg_0.x))), vec3<i32>(-1127i, 9137i, reverseBits(arg_0.x << (0u % 32u)))));
    let var_1 = vec2<i32>(max(abs(-firstTrailingBit(1341i)), _wgslsmith_add_i32(arg_0.x, abs(_wgslsmith_dot_vec2_i32(arg_0.zz, vec2<i32>(global2.x, 2147483647i))))), -25776i);
    let var_2 = vec2<u32>(40554u >> (_wgslsmith_mult_u32(~1u, u_input.c) % 32u), 4294967295u);
    return global0.x;
}

fn func_2() -> u32 {
    global3 = array<f32, 27>();
    global0 = select(!(!(!select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), global0.x))), select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, false), vec2<bool>(true, true)), true), select(vec2<bool>(true, true), !vec2<bool>(global0.x, global0.x), !global0.x), ~4294967295u < ~u_input.c), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x)), vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x)), true), !vec2<bool>(any(vec3<bool>(global0.x, true, true)), func_3(vec4<i32>(-1i, global2.x, global2.x, global2.x)))), true);
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_div_i32(-17690i, ~max(~32369i, u_input.d)), -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global2.x, 46335i, 2147483647i, -13898i), global1[_wgslsmith_index_u32(u_input.c, 19u)]), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 4294967295u), 19u)], ~vec4<i32>(0i, -1i, global2.x, u_input.a.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1i, global2.x), vec4<i32>(2147483647i, u_input.d, global2.x, u_input.b.x), vec4<i32>(2147483647i, -2147483647i, global2.x, -54373i)) & ~vec4<i32>(u_input.d, u_input.a.x, global2.x, global2.x)));
    return u_input.c;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: i32) -> Struct_5 {
    let var_0 = reverseBits(~_wgslsmith_sub_i32(reverseBits(global2.x), arg_1.x));
    let var_1 = u_input.c;
    global1 = array<vec4<i32>, 19>();
    var var_2 = countOneBits(vec4<u32>(~23507u, 69059u, u_input.c, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~1u, var_1), reverseBits(abs(4294967295u)), func_2())));
    let var_3 = all(select(vec3<bool>(true, true, true), select(!(!vec3<bool>(global0.x, false, global0.x)), !select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, false, global0.x), vec3<bool>(global0.x, true, true)), vec3<bool>(global0.x, !global0.x, global0.x | global0.x)), global0.x));
    return Struct_5(var_3, _wgslsmith_clamp_vec3_u32(~var_2.xyz, min(var_2.xww ^ ~vec3<u32>(arg_0, 50291u, u_input.c), ~var_2.zxy), abs(var_2.ywz)), Struct_3(arg_1.xx, var_3, Struct_2(var_0, var_2.x, Struct_1(1i, 623f, 599f))), _wgslsmith_dot_vec3_i32(abs(min(vec3<i32>(1026i, -2147483647i, 1i), u_input.a << (var_2.zyx % vec3<u32>(32u)))), vec3<i32>(1i, _wgslsmith_div_i32(_wgslsmith_sub_i32(0i, -2147483647i), i32(-1i) * -33276i), -global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 27>();
    let var_0 = func_1(min(~_wgslsmith_add_u32(22927u, u_input.c), 1u), reverseBits(vec3<i32>(-u_input.b.x, abs(global2.x), _wgslsmith_mod_i32(u_input.e, u_input.e))), ~_wgslsmith_clamp_i32(0i, ~(i32(-1i) * -32137i), 30957i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-342f)) + _wgslsmith_f_op_f32(var_0.c.c.c.c + 1512f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.c.c.b, 643f) - 711f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1240f + _wgslsmith_f_op_f32(f32(-1f) * -1013f)))), _wgslsmith_mod_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.d, u_input.d, var_0.c.c.c.a), u_input.b.zyw) >> (var_0.b % vec3<u32>(32u)), ~abs(global2.zwx)), u_input.e);
}

