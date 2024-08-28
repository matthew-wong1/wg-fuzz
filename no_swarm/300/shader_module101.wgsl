struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: bool,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(12676i), 34127i, Struct_2(Struct_1(-10796i), 1u, Struct_1(-1i), Struct_1(-61539i)), Struct_2(Struct_1(-1i), 0u, Struct_1(2147483647i), Struct_1(9561i)), vec4<bool>(true, false, true, false));

var<private> global1: array<bool, 7>;

var<private> global2: array<Struct_1, 23>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = global0.b >= (i32(-1i) * -22757i);
    global0 = Struct_4(Struct_1(global0.a.a), u_input.b.x, global0.c, Struct_2(Struct_1(u_input.b.x), 37527u << (_wgslsmith_div_u32(_wgslsmith_clamp_u32(19739u, global0.d.b, global0.d.b), 15258u) % 32u), Struct_1(u_input.b.x), global0.a), select(!global0.e, !select(select(vec4<bool>(false, false, true, false), global0.e, global1[_wgslsmith_index_u32(4294967295u, 7u)]), global0.e, global0.e), !(!global0.e)));
    var var_1 = global0.d.b;
    global1 = array<bool, 7>();
    var var_2 = Struct_2(Struct_1(global0.b), global0.c.b, Struct_1(~(43980i >> (1u % 32u))), global0.c.c);
    return ~1u;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_4(global2[_wgslsmith_index_u32(reverseBits(4294967295u), 23u)], abs(u_input.b.x), global0.c, Struct_2(global2[_wgslsmith_index_u32(1u, 23u)], 1u, Struct_1(-u_input.a), global0.d.c), vec4<bool>(false, true, !(!global0.e.x), global1[_wgslsmith_index_u32(((global0.c.b >> (global0.d.b % 32u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 33850u, 19197u), vec3<u32>(28249u, global0.c.b, 4294967295u))) >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(75580u, 46263u), vec2<u32>(global0.c.b, global0.c.b)), func_3(1236f)) % 32u), 7u)]));
    var var_1 = -469f;
    global2 = array<Struct_1, 23>();
    let var_2 = Struct_5(Struct_3(Struct_2(Struct_1(abs(u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.d.b, 4294967295u, 1u), vec3<u32>(1u, var_0.c.b, 4294967295u)), Struct_1(1i), global2[_wgslsmith_index_u32(~var_0.d.b, 23u)]), global0.d, var_0.c.b, vec2<i32>(~abs(-2147483647i), 11016i), Struct_1(reverseBits(max(u_input.a, -98388i)))), Struct_3(var_0.d, Struct_2(global0.d.a, firstLeadingBit(2524u << (var_0.d.b % 32u)), Struct_1(global0.c.c.a >> (2504u % 32u)), Struct_1(24713i)), global0.d.b, _wgslsmith_mod_vec2_i32(u_input.b.xy | firstLeadingBit(u_input.b.wx), vec2<i32>(_wgslsmith_sub_i32(-8511i, var_0.d.d.a), abs(global0.d.a.a))), var_0.c.c), arg_1.x, Struct_4(Struct_1(u_input.b.x), abs(global0.a.a), var_0.d, var_0.d, vec4<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.d.b, global0.d.b, 17817u), 7u)], var_0.e.x & all(vec3<bool>(true, true, true)), !(!global0.e.x), any(arg_1))), Struct_4(Struct_1(countOneBits(_wgslsmith_div_i32(3361i, -1002i))), -16081i, Struct_2(Struct_1(-2147483647i), var_0.c.b, global0.a, Struct_1(1i)), global0.c, !vec4<bool>(false, !global1[_wgslsmith_index_u32(33198u, 7u)], true, arg_1.x)));
    let var_3 = global0.e.x;
    return Struct_2(Struct_1(-2147483647i), var_0.c.b, global2[_wgslsmith_index_u32(~4294967295u >> (_wgslsmith_sub_u32(4294967295u, var_0.d.b) % 32u), 23u)], Struct_1(var_2.e.a.a));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: f32) -> vec2<f32> {
    global2 = array<Struct_1, 23>();
    global1 = array<bool, 7>();
    var var_0 = Struct_4(global0.d.a, 1i, func_2(vec3<f32>(_wgslsmith_div_f32(-581f, arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1466f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2 + -390f), _wgslsmith_f_op_f32(exp2(arg_2)), true))), select(!arg_1, global0.e.wyz, arg_1.x)), global0.c, vec4<bool>(select(true, all(global0.e.zx), !any(global0.e)), global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(countOneBits(1u), global0.d.b, firstLeadingBit(32462u))), 7u)], !(!global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(32773u, 54289u), 7u)]), arg_1.x));
    var var_1 = arg_1.x;
    var var_2 = global0.d.b;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(1624f, 1156f), vec2<f32>(-1614f, arg_2)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -6312i;
    global2 = array<Struct_1, 23>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_dot_vec4_i32(u_input.b << (vec4<u32>(4294967295u, 73050u, 13323u, global0.d.b) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.b, global0.b, -26599i, u_input.b.x), u_input.b)), vec3<bool>(false, all(global0.e), global0.e.x), _wgslsmith_f_op_f32(f32(-1f) * -733f)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))));
    let var_2 = Struct_3(global0.c, global0.d, ~(~(~global0.c.b)), -vec2<i32>(29202i & -global0.a.a, u_input.a), global2[_wgslsmith_index_u32(global0.c.b, 23u)]);
    global1 = array<bool, 7>();
    global1 = array<bool, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(-905f, _wgslsmith_f_op_f32(exp2(var_1.x)));
}

