struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: u32;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f), arg_1.a), !vec2<bool>(select(2278f <= arg_2.a, !arg_0.x, select(arg_1.b.x, arg_0.x, arg_1.c)), any(arg_0)), !arg_0.x, ~(~max(-1i, _wgslsmith_sub_i32(arg_1.d, 0i))));
    global0 = array<u32, 24>();
    global1 = global0[_wgslsmith_index_u32(1u, 24u)];
    global0 = array<u32, 24>();
    var var_1 = min(~vec4<u32>(~global0[_wgslsmith_index_u32(16275u, 24u)], abs(global0[_wgslsmith_index_u32(0u, 24u)] << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(684u, 24u)], 24u)], 24u)], 24u)] % 32u)), global0[_wgslsmith_index_u32(~(~4294967295u), 24u)], firstLeadingBit(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32748u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)]))), vec4<u32>(global0[_wgslsmith_index_u32(1u, 24u)], ~abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)]) << (~4294967295u % 32u), global0[_wgslsmith_index_u32(1254u, 24u)], 27850u));
    return vec2<bool>(all(vec4<bool>(!any(vec2<bool>(var_0.b.x, arg_0.x)), !all(arg_0), arg_2.b.x, arg_1.c)), true);
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = !any(select(!func_3(vec3<bool>(arg_1.b.x, true, arg_1.b.x), Struct_1(arg_0, vec2<bool>(false, false), arg_1.c, arg_1.d), Struct_1(arg_0, arg_1.b, false, -12843i)), arg_1.b, vec2<bool>(true, true)));
    var_0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 24u)]), ~global0[_wgslsmith_index_u32(0u, 24u)], 1u), vec3<u32>(1u, _wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 24u)]), min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 24u)], 4294967295u))) != global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)];
    global1 = ~_wgslsmith_add_u32(27361u, ~(1u & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~1u, 24u)], 24u)]));
    var var_1 = abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(max(38990u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 24u)]) & global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 7316u), 24u)], _wgslsmith_mod_u32(1u, 1u)), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41909u, 24u)], 24u)], 24u)], 24u)], global0[_wgslsmith_index_u32(13402u, 24u)]) << (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39750u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 0u, global0[_wgslsmith_index_u32(57123u, 24u)]) % vec3<u32>(32u))), firstLeadingBit(vec3<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 24u)], 24u)]))), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4304u, 24u)], 24u)], 24u)], global0[_wgslsmith_index_u32(63467u, 24u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17399u, 24u)], 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47535u, 24u)], 24u)], 24u)], 24u)], 24u)], 16678u) & vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7182u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34619u, 24u)], 24u)], 4294967295u)), vec3<u32>(~1u, global0[_wgslsmith_index_u32(1u, 24u)], ~global0[_wgslsmith_index_u32(4294967295u, 24u)]), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 24u)], 0u) << (vec3<u32>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15234u, 24u)], 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]) % vec3<u32>(32u)), ~vec3<u32>(56509u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39055u, 24u)], 24u)], 24u)], 1u)))));
    var_1 = vec3<u32>(var_1.x, global0[_wgslsmith_index_u32(4294967295u, 24u)], ~1u);
    return var_1.x;
}

fn func_2() -> Struct_1 {
    global1 = _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(532f * 1999f) * _wgslsmith_f_op_f32(floor(1638f))) - _wgslsmith_f_op_f32(sign(444f))), Struct_1(535f, func_3(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), Struct_1(1024f, vec2<bool>(false, false), false, 10528i), Struct_1(446f, vec2<bool>(true, true), true, -7809i)), false, _wgslsmith_sub_i32(u_input.a.x, 9422i))), 24u)], ~global0[_wgslsmith_index_u32(~21899u, 24u)] & ~21589u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(42669u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8855u, 24u)], 24u)] << (4294967295u % 32u), 24u)]), 24u)], ~_wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(~71677u, 24u)])));
    var var_0 = select(vec4<u32>(~(~select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], global0[_wgslsmith_index_u32(39333u, 24u)], true)), ~(~global0[_wgslsmith_index_u32(1u, 24u)]), ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(90024u, 24u)], 24u)], 24u)]) >> (5843u % 32u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)], 24u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16814u, 24u)], 24u)]) << (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2792u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)]) % vec3<u32>(32u))), vec3<u32>(1u, global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]) | reverseBits(vec3<u32>(75968u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2009u, 24u)], 24u)], 24u)], 4294967295u)))), vec4<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)], 24u)], 33860u) & ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29129u, 24u)], 24u)], 24u)], 24u)], _wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u & global0[_wgslsmith_index_u32(885u, 24u)], 24u)], _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(62999u, 24u)], 24u)], global0[_wgslsmith_index_u32(9183u, 24u)]))), _wgslsmith_mult_u32(abs(10674u) >> (global0[_wgslsmith_index_u32(4294967295u, 24u)] % 32u), 1u), max(~_wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(4294967295u, 24u)]), _wgslsmith_clamp_u32(1u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21144u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 43840u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)]), 24u)], 4294967295u)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(44118u, global0[_wgslsmith_index_u32(1u, 24u)], 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 24u)]) & vec4<u32>(107193u, 9831u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(62482u, 24u)], 24u)], 0u)), countOneBits(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48953u, 24u)], 24u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72104u, 24u)], 24u)], 24u)], 4294967295u))), 24u)], 24u)]), !(!(26599i < (u_input.a.x | 2147483647i))));
    let var_1 = Struct_1(-1768f, vec2<bool>(u_input.a.x != ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, 33442i, 10083i), vec4<i32>(10259i, 1i, -32674i, u_input.a.x)), select(any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), true, false)), true, u_input.a.x);
    let var_2 = 0u;
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a), -627f))));
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec2<bool> {
    var var_0 = 226f;
    var_0 = -860f;
    global1 = 1u;
    let var_1 = 4294967295u;
    var var_2 = vec4<u32>(4294967295u, ~(~(global0[_wgslsmith_index_u32(4294967295u, 24u)] >> (global0[_wgslsmith_index_u32(var_1, 24u)] % 32u)) ^ firstLeadingBit(1u)), ~global0[_wgslsmith_index_u32(0u, 24u)], ~var_1);
    return arg_0.b;
}

fn func_6(arg_0: vec2<bool>, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1134f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-452f, -914f, arg_0.x)))) - -135f), arg_0, any(select(select(select(vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(true, false, arg_0.x, arg_0.x)), select(vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, true, arg_0.x)), !(!vec4<bool>(arg_0.x, true, true, arg_0.x)))), ~(-((2147483647i << (arg_1 % 32u)) >> (1u % 32u))));
    let var_1 = var_0.a;
    var var_2 = Struct_1(var_0.a, var_0.b, all(arg_0), 0i);
    var var_3 = func_2();
    var_2 = func_2();
    return func_2();
}

fn func_1() -> vec2<bool> {
    global0 = array<u32, 24>();
    let var_0 = func_6(select(select(vec2<bool>(true, true), func_5(func_2(), func_2(), -2305i >> (global0[_wgslsmith_index_u32(45246u, 24u)] % 32u)), true != any(vec2<bool>(true, true))), !vec2<bool>(true, any(vec3<bool>(true, true, true))), vec2<bool>(true, 26381i <= (1i ^ u_input.a.x))), ~1u);
    var var_1 = Struct_1(var_0.a, !(!func_6(var_0.b, 0u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)]).b), true, u_input.a.x);
    var var_2 = Struct_1(-1000f, vec2<bool>(!all(select(vec4<bool>(var_0.c, var_0.c, false, true), vec4<bool>(true, false, var_0.b.x, var_1.b.x), false)), firstTrailingBit(~61566u) >= (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37265u, 24u)], 24u)], 24u)] >> (~global0[_wgslsmith_index_u32(0u, 24u)] % 32u))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~11805u, ~_wgslsmith_add_u32(15569u, 0u)), 24u)] < 52718u, 2147483647i ^ select(firstTrailingBit(firstTrailingBit(2147483647i)), var_1.d, true));
    var var_3 = _wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(~countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 6665u, global0[_wgslsmith_index_u32(1u, 24u)])), abs(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)]) ^ vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23060u, 24u)], 24u)], global0[_wgslsmith_index_u32(23617u, 24u)]))), vec3<u32>(1u, ~firstTrailingBit(37555u), ~(~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26301u, 24u)], 24u)], global0[_wgslsmith_index_u32(39465u, 24u)]))));
    return !vec2<bool>(select(var_1.c || var_0.b.x, true, var_1.b.x) & all(vec3<bool>(false, true, var_0.c)), true);
}

fn func_7(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global1 = select(~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(62332u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], 17559u, 4294967295u), vec4<u32>(64660u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48478u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13536u, 24u)], 24u)], 24u)], 4294967295u)) & _wgslsmith_add_u32(1u, 1u), ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)])), 24u)], _wgslsmith_div_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(1u, 24u)], abs(global0[_wgslsmith_index_u32(1u, 24u)])), 1u) << (_wgslsmith_mult_u32(countOneBits(global0[_wgslsmith_index_u32(4294967295u, 24u)]), ~func_4(648f, Struct_1(1112f, arg_1.b, arg_1.b.x, u_input.a.x))) % 32u), true);
    global1 = 23189u;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -305f), 662f)))) - 296f);
    let var_1 = _wgslsmith_mult_vec2_u32(((~vec2<u32>(global0[_wgslsmith_index_u32(34066u, 24u)], 4294967295u) & ~vec2<u32>(0u, 5880u)) | vec2<u32>(select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2384u, 24u)], 24u)], 24u)], 123922u, arg_1.c), 4294967295u)) ^ vec2<u32>(~max(0u, 4294967295u), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50505u, 24u)], 24u)], 24u)], 24u)] >> (global0[_wgslsmith_index_u32(0u, 24u)] % 32u), ~0u)), ~abs(~(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27977u, 24u)], 24u)], 24u)], 47601u) | vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 0u))));
    global0 = array<u32, 24>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x >> (35322u % 32u), ~u_input.a.x), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.ww)), -10183i, _wgslsmith_div_i32(u_input.a.x, u_input.a.x ^ abs(u_input.a.x))) >= ~firstLeadingBit(2147483647i);
    let var_1 = _wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(firstTrailingBit(u_input.a.x), -2147483647i), ~vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.a, ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i)) ^ 41061i, ~(~u_input.a.x) | -2147483647i));
    let var_2 = _wgslsmith_mult_i32(-var_1, 2147483647i);
    var var_3 = ~abs(-1i);
    let var_4 = func_7(~_wgslsmith_sub_i32(-(10865i & var_2), u_input.a.x), Struct_1(-361f, !(!func_1()), !(!any(vec2<bool>(false, false))), ~u_input.a.x));
    var_3 = ~(-5228i);
    var var_5 = vec3<bool>(func_3(vec3<bool>(false, var_4.b.x, all(vec4<bool>(var_4.b.x, false, true, var_4.b.x))), var_4, func_7(_wgslsmith_mult_i32(var_4.d, -var_1), func_2())).x, var_4.c, false && any(!(!vec3<bool>(var_4.b.x, var_4.b.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1285f), 1f, 1238f));
}

