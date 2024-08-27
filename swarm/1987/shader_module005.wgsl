struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: bool,
    d: i32,
    e: vec2<f32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: Struct_3 = Struct_3(vec4<f32>(-324f, 257f, 596f, -749f), -39245i, Struct_1(vec4<bool>(false, true, true, false), vec2<f32>(797f, 626f), 13894i), vec2<bool>(false, false), Struct_1(vec4<bool>(true, false, false, false), vec2<f32>(950f, 659f), 1i));

var<private> global1: array<Struct_2, 7>;

var<private> global2: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(-358f, -534f, 131f), vec3<f32>(1000f, -1519f, 2230f), vec3<f32>(-1107f, 135f, -908f), vec3<f32>(-2135f, -1968f, -727f), vec3<f32>(1000f, -1255f, 1011f), vec3<f32>(-328f, 1000f, -664f), vec3<f32>(1092f, 1378f, -1725f), vec3<f32>(1000f, -119f, 646f), vec3<f32>(-1137f, 389f, -2506f), vec3<f32>(497f, -963f, 790f));

var<private> global3: array<Struct_2, 26>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_5) -> bool {
    var var_0 = _wgslsmith_div_u32(0u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0.c.yxx << (arg_0.c.xzw % vec3<u32>(32u)), min(vec3<u32>(0u, arg_0.c.x, 4294967295u), arg_0.c.yyy)), _wgslsmith_div_vec3_u32(arg_0.c.wwy, vec3<u32>(arg_0.c.x, arg_0.c.x, 46556u))), 2954u));
    var var_1 = Struct_4(1u, _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(4294967295u, 10u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x) < 1358f, u_input.a.x, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.e.b.x + _wgslsmith_f_op_f32(global0.a.x * 506f)), -462f), 168f));
    return !arg_0.d.x;
}

fn func_3(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_5(global0.c.b, select(!global0.c.a, !vec4<bool>(arg_0.x || arg_0.x, all(arg_0), !arg_0.x, arg_0.x), false), ~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 0u, 9195u), vec4<u32>(80685u, 47521u, 1u, 36996u)))), global0.c.a);
    let var_1 = select(vec3<bool>(false, true, true), global0.e.a.yyw, global0.c.a.x | true);
    let var_2 = max(4294967295u, 42007u << (~min(var_0.c.x, 0u) % 32u));
    global2 = array<vec3<f32>, 10>();
    let var_3 = Struct_5(_wgslsmith_f_op_vec2_f32(-var_0.a), select(vec4<bool>(false, var_1.x, var_1.x, !(41904i > global0.e.c)), vec4<bool>(all(global0.c.a.xwz), global0.c.a.x == arg_0.x, true, var_1.x), select(var_0.b, select(!vec4<bool>(var_0.d.x, var_1.x, true, false), select(vec4<bool>(global0.e.a.x, false, false, false), var_0.d, var_0.d), select(global0.c.a, vec4<bool>(arg_0.x, false, global0.c.a.x, var_0.d.x), var_0.b)), true)), var_0.c, select(select(var_0.b, !var_0.d, var_0.d), var_0.d, var_0.b.x));
    return Struct_2(-133f, global0.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_5) -> bool {
    let var_0 = u_input.a;
    global3 = array<Struct_2, 26>();
    var var_1 = Struct_4(arg_3.c.x, global2[_wgslsmith_index_u32(~arg_3.c.x, 10u)], func_3(func_3(arg_1.a.zz).b.a.wz).b.a.x, var_0.x, _wgslsmith_f_op_vec2_f32(round(arg_1.b)));
    let var_2 = -1i;
    let var_3 = 965i;
    return any(!(!vec4<bool>(true, all(vec4<bool>(arg_0.a.x, true, true, false)), all(vec3<bool>(arg_3.d.x, arg_1.a.x, arg_2.b.a.x)), arg_1.a.x)));
}

fn func_1() -> vec2<i32> {
    global1 = array<Struct_2, 7>();
    var var_0 = 1u;
    let var_1 = func_4(Struct_1(vec4<bool>(global0.c.a.x, all(vec3<bool>(true, global0.c.a.x, global0.d.x)), global0.d.x, true), _wgslsmith_f_op_vec2_f32(sign(global0.a.wx)), firstLeadingBit(-2147483647i)), Struct_1(global0.e.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.xw), _wgslsmith_f_op_vec2_f32(global0.c.b - global0.a.zw))), -u_input.a.x), func_3(vec2<bool>(func_2(Struct_5(global0.e.b, vec4<bool>(true, global0.c.a.x, global0.d.x, global0.e.a.x), vec4<u32>(1u, 9666u, 10820u, 66272u), global0.e.a)), global0.d.x)), Struct_5(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global0.c.b))), func_3(vec2<bool>(global0.e.a.x, all(global0.c.a))).b.a, vec4<u32>(1u, 1u, 1u, 1u), func_3(select(select(global0.c.a.yx, vec2<bool>(false, false), vec2<bool>(global0.e.a.x, global0.d.x)), global0.c.a.zx, func_3(vec2<bool>(global0.c.a.x, global0.d.x)).b.a.xw)).b.a));
    let var_2 = _wgslsmith_mod_vec3_u32(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), !func_3(global0.c.a.wx).b.a.yyx), select(~(~vec3<u32>(48679u, 0u, 50387u)), vec3<u32>(1u, 1u, 1u), global0.c.a.x)) << (_wgslsmith_div_vec3_u32(vec3<u32>(1u, countOneBits(~54937u), ~min(0u, 0u)), firstTrailingBit(~(~vec3<u32>(0u, 9320u, 0u)))) % vec3<u32>(32u));
    let var_3 = false;
    return abs(u_input.a.yy);
}

fn func_5(arg_0: vec2<i32>) -> i32 {
    var var_0 = !global0.e.a.yx;
    var var_1 = abs(9686i);
    var var_2 = any(vec2<bool>(var_0.x, var_0.x));
    global2 = array<vec3<f32>, 10>();
    let var_3 = global0.e.b.x;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.e;
    var var_1 = vec3<i32>(_wgslsmith_add_i32(-2147483647i, 1i), ~_wgslsmith_div_i32(select(global0.c.c, global0.e.c, global0.e.a.x), min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_0.c), vec2<i32>(global0.b, -37242i)), 0i)), func_5(_wgslsmith_add_vec2_i32(func_1(), vec2<i32>(reverseBits(2147483647i), ~global0.e.c))));
    var var_2 = i32(-1i) * -_wgslsmith_div_i32(var_0.c, global0.c.c);
    let var_3 = vec4<bool>(!all(select(func_3(global0.d).b.a.xw, !vec2<bool>(var_0.a.x, global0.e.a.x), true)), true, false, false);
    global3 = array<Struct_2, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zy);
}

