struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2034f, -45896i, -874f);

var<private> global1: Struct_2 = Struct_2(Struct_1(2161f, 0i, -970f), Struct_1(634f, -55340i, -2919f), vec3<u32>(44082u, 1u, 0u));

var<private> global2: array<Struct_1, 11>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: vec3<f32>) -> f32 {
    global2 = array<Struct_1, 11>();
    let var_0 = 1i;
    global2 = array<Struct_1, 11>();
    global2 = array<Struct_1, 11>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.c * global1.b.a), _wgslsmith_f_op_f32(floor(global0.c)), 316f, global0.c) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.c, -532f, arg_2.x, -374f) * vec4<f32>(global1.a.c, global1.b.a, global0.a, global1.a.a))))), global1.b, _wgslsmith_f_op_f32(f32(-1f) * -888f));
    return _wgslsmith_f_op_f32(step(arg_2.x, global0.c));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>) -> f32 {
    var var_0 = 152f;
    let var_1 = vec3<bool>(!arg_0.x, any(select(!(!arg_0), select(vec2<bool>(arg_0.x, false), select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(true, arg_0.x), true), true | arg_0.x), !arg_0.x)), any(vec4<bool>(true, any(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(false, false, arg_0.x, arg_0.x))), arg_0.x, !(!arg_0.x))));
    let var_2 = !vec2<bool>(all(!arg_0) & arg_0.x, false);
    global2 = array<Struct_1, 11>();
    let var_3 = 345f;
    return 597f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    let var_0 = !(!select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), true)), vec4<bool>(true, true, any(vec4<bool>(false, true, true, true)), true)));
    global2 = array<Struct_1, 11>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.c, _wgslsmith_div_f32(-1000f, global0.a)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, global0.c)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.c, global0.a)))));
    global2 = array<Struct_1, 11>();
    let var_2 = u_input.c.x;
    return arg_1.c;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_2) -> u32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(346f, arg_3.a.a) * _wgslsmith_f_op_f32(global0.c + global1.b.a)), arg_1.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(arg_3.c, global1.c.xx, vec3<f32>(242f, global0.a, -101f)))))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_0.wz, vec4<u32>(arg_3.c.x, global1.c.x, 1u, arg_3.c.x))), _wgslsmith_f_op_f32(arg_3.b.a + 1000f)), -54899i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.b.c)) + _wgslsmith_f_op_f32(827f - arg_3.b.a))), vec4<i32>(arg_3.b.b, arg_1.b, 7442i | _wgslsmith_mult_i32(global0.b, arg_1.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, arg_2.x, -29358i, 2147483647i) ^ u_input.a, _wgslsmith_sub_vec4_i32(vec4<i32>(6285i, 1i, global1.b.b, 37830i), vec4<i32>(41519i, 77957i, u_input.d, 1i)))))), global0.b ^ _wgslsmith_clamp_i32(6597i, arg_1.b, select(-arg_3.a.b, arg_1.b, all(vec3<bool>(arg_0.x, arg_0.x, false)))), _wgslsmith_f_op_f32(round(-316f)));
    let var_0 = ~vec4<u32>(~global1.c.x, ~68742u, u_input.c.x, 1u);
    var var_1 = 0i;
    global2 = array<Struct_1, 11>();
    var_1 = _wgslsmith_add_i32((_wgslsmith_mod_i32(-arg_2.x, -5539i) ^ 11102i) >> (min(~global1.c.x, 10161u) % 32u), abs(~(-7692i)));
    return global1.c.x;
}

fn func_5(arg_0: bool, arg_1: vec4<u32>) -> f32 {
    var var_0 = firstLeadingBit(reverseBits(~global1.c >> (abs(vec3<u32>(u_input.c.x, 0u, 0u)) % vec3<u32>(32u))));
    var_0 = vec3<u32>(arg_1.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(27509u, 1u), _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_1.x, var_0.x), 22902u)), u_input.c.x, ~1u), u_input.c.x);
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(~4294967295u, 11u)], Struct_1(global0.a, 1i, global1.b.c), vec3<u32>(15410u, 1u, var_0.x));
    global0 = Struct_1(153f, 2147483647i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1017f))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -507f))) * global1.a.a));
    var var_2 = ~(var_0.xy ^ ~vec2<u32>(12339u, 1u));
    return _wgslsmith_f_op_f32(-var_1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-1f), u_input.d, global0.c), Struct_1(_wgslsmith_f_op_f32(func_5(!all(vec4<bool>(true, true, true, false)), vec4<u32>(func_1(vec4<bool>(false, true, false, true), global2[_wgslsmith_index_u32(global1.c.x, 11u)], vec2<i32>(-1i, 9967i), Struct_2(Struct_1(global0.a, -1i, global1.b.c), global2[_wgslsmith_index_u32(global1.c.x, 11u)], global1.c)), max(3524u, 4723u), ~u_input.c.x, ~0u))), _wgslsmith_mod_i32(u_input.d, _wgslsmith_clamp_i32(u_input.a.x, ~u_input.a.x, u_input.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a) - _wgslsmith_div_f32(global0.a, -1914f)), -1693f)), vec3<u32>(countOneBits(_wgslsmith_add_u32(45233u, 65593u) | ~global1.c.x), 1u, 7543u));
    global0 = Struct_1(964f, u_input.d | (_wgslsmith_mult_i32(u_input.d >> (u_input.c.x % 32u), abs(1i)) & -reverseBits(u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.c))));
    let var_0 = _wgslsmith_f_op_f32(-global1.b.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(-var_0))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global1.b.a))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, 594f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1068f, 519f), vec2<f32>(global1.a.a, 352f)))), vec2<f32>(global0.a, _wgslsmith_f_op_f32(select(-546f, global1.a.c, true))))));
    global0 = Struct_1(var_1.x, _wgslsmith_add_i32(global0.b, global0.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a))), 849f, !all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)))));
    let var_2 = Struct_2(global2[_wgslsmith_index_u32(4257u, 11u)], global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, 1u, u_input.c.x) ^ max(4294967295u & (u_input.c.x & 4294967295u), countOneBits(~4294967295u)), 11u)], ~vec3<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(3001u, 34895u, global1.c.x, 89235u), vec4<u32>(8051u, global1.c.x, 4294967295u, global1.c.x))), ~14180u, 30895u));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.a * _wgslsmith_div_f32(2028f, var_2.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(2194f)))) - -460f)));
}

