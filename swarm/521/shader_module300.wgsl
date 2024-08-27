struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_2;

var<private> global2: array<u32, 5>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1175f, -514f, -1079f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, global0.x, 368f, global0.x))))))));
    global2 = array<u32, 5>();
    let var_1 = Struct_1(0u ^ _wgslsmith_sub_u32(u_input.a.x, u_input.b), ~abs(u_input.a));
    global1 = Struct_2(~(~vec4<i32>(reverseBits(u_input.d.x), ~global1.a.x, global1.a.x << (var_1.b.x % 32u), global1.a.x)), global1.b, _wgslsmith_mod_vec3_u32(abs(global1.c), vec3<u32>(9884u & _wgslsmith_add_u32(63410u, global2[_wgslsmith_index_u32(var_1.a, 5u)]), u_input.b, global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, global1.c.x), 5u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(437f)) * global1.d));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(924f - var_0.x)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(var_2.a * -308f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x - global0.x), -917f))))) + 1417f);
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * 1072f) + _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) * arg_2)));
    var var_1 = 47600u;
    var var_2 = vec4<f32>(global1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * arg_2), 1341f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1105f)))));
    let var_3 = _wgslsmith_div_i32(-2147483647i, global1.a.x);
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(floor(-716f)))), _wgslsmith_f_op_f32(-1080f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-123f * -715f), _wgslsmith_div_f32(780f, -510f))) + _wgslsmith_f_op_f32(min(346f, 133f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d * 742f) * _wgslsmith_div_f32(546f, -676f)) * 582f) - _wgslsmith_f_op_f32(-arg_2)), -872f);
    return Struct_3(255f, Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~17280u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 5u)], 5u)], u_input.b, global2[_wgslsmith_index_u32(1u, 5u)], u_input.b), vec4<u32>(u_input.c, u_input.c, 0u, 69358u)), 1u), ~(~1195u)), 5u)], _wgslsmith_clamp_vec2_u32(~u_input.a, vec2<u32>(min(global2[_wgslsmith_index_u32(1u, 5u)], 1u), firstTrailingBit(38597u)), ~_wgslsmith_add_vec2_u32(global1.c.yz, u_input.a))), _wgslsmith_f_op_f32(-arg_2));
}

fn func_4(arg_0: Struct_3) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-419f, 1691f) + vec2<f32>(global1.d, global1.d))))), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-arg_0.a)), vec2<bool>(global1.b.x, true)))));
    let var_0 = Struct_1(abs(~_wgslsmith_div_u32(0u, global1.c.x >> (58372u % 32u))), global1.c.xz);
    global1 = Struct_2(global1.a, select(!(!(!vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x))), select(select(vec4<bool>(global1.b.x, global1.b.x, false, global1.b.x), !vec4<bool>(true, global1.b.x, global1.b.x, true), select(global1.b, vec4<bool>(false, global1.b.x, false, false), false)), vec4<bool>(all(vec3<bool>(true, true, global1.b.x)), !global1.b.x, all(vec2<bool>(global1.b.x, false)), true), global1.b.x), vec4<bool>(true, true, !(false & global1.b.x), 49814i > global1.a.x)), _wgslsmith_mult_vec3_u32(~firstLeadingBit(~vec3<u32>(57463u, arg_0.b.b.x, 4294967295u)), global1.c), global1.d);
    let var_1 = func_2(select(select(select(!global1.b, vec4<bool>(global1.b.x, true, global1.b.x, global1.b.x), false), vec4<bool>(arg_0.b.a > var_0.b.x, true, 1u < global2[_wgslsmith_index_u32(4294967295u, 5u)], global1.b.x), select(35911i <= global1.a.x, true, all(global1.b))), vec4<bool>(!all(global1.b.zzz), global1.b.x, true, !global1.b.x), !global1.b), false, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3021f + 908f))));
    let var_2 = false;
    return ~(~select(~var_0.b.x, 1u, true));
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = vec2<u32>(3488u, ~func_4(func_2(global1.b, true, global1.d)) << (min(6113u, u_input.c >> (_wgslsmith_add_u32(global1.c.x, 4294967295u) % 32u)) % 32u));
    var var_1 = func_2(vec4<bool>(true, true, global1.b.x, all(vec4<bool>(global1.b.x, global1.b.x, true, arg_0 && arg_0))), false, global1.d);
    var var_2 = func_2(global1.b, true, global1.d);
    global1 = Struct_2(vec4<i32>(u_input.d.x, -(~43221i) & u_input.d.x, reverseBits(_wgslsmith_sub_i32(max(global1.a.x, u_input.d.x), _wgslsmith_mod_i32(u_input.d.x, u_input.d.x))), _wgslsmith_dot_vec4_i32(-global1.a >> (vec4<u32>(u_input.b, 1394u, 45473u, var_0.x) % vec4<u32>(32u)), ~vec4<i32>(40876i, 51252i, u_input.d.x, 2147483647i))), !select(!vec4<bool>(arg_0, arg_0, global1.b.x, true), !select(vec4<bool>(true, arg_0, false, arg_0), global1.b, true), false), vec3<u32>(firstLeadingBit(func_4(Struct_3(1176f, Struct_1(global2[_wgslsmith_index_u32(29764u, 5u)], vec2<u32>(var_1.b.a, 50491u)), -501f))), _wgslsmith_mod_u32(var_0.x, ~global1.c.x >> (1402u % 32u)), 4294967295u), -870f);
    var var_3 = func_2(!(!vec4<bool>(global1.b.x, global1.b.x, false, true)), true, _wgslsmith_f_op_f32(-global1.d));
    return Struct_2(~global1.a, !vec4<bool>(true, true & global1.b.x, select(false, var_2.a != -554f, global1.b.x), u_input.d.x <= countOneBits(-2147483647i)), global1.c, 611f);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_0.x;
    let var_1 = select(vec3<bool>(!arg_0.x, all(!vec3<bool>(false, false, arg_1.b.x)), func_1(true).b.x), !vec3<bool>(arg_0.x, any(global1.b.yz), arg_0.x), true | all(vec3<bool>(true, true, true)));
    var var_2 = ~global1.c.x;
    var var_3 = 0u;
    global1 = arg_1;
    return Struct_1(u_input.c >> (~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.b, global1.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(8008u, global2[_wgslsmith_index_u32(32918u, 5u)], arg_1.c.x, global2[_wgslsmith_index_u32(4294967295u, 5u)]), vec4<u32>(arg_1.c.x, global2[_wgslsmith_index_u32(4294967295u, 5u)], arg_1.c.x, global1.c.x))), 5u)] % 32u), ~arg_1.c.zx);
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>) -> bool {
    var var_0 = func_2(global1.b, _wgslsmith_f_op_f32(-global0.x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1.b, false, -1090f).a * -883f)), global1.d);
    let var_1 = ~vec2<u32>(69581u, 26908u);
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_2.xw - arg_2.yy)));
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(491f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d, -991f) + _wgslsmith_f_op_f32(arg_2.x - -543f))))), Struct_1(reverseBits(u_input.a.x), vec2<u32>(var_1.x, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(global1.c.x, var_1.x)), min(u_input.a, vec2<u32>(4294967295u, 46189u))))), _wgslsmith_f_op_f32(f32(-1f) * -576f));
    let var_2 = false;
    return select(global0.x != _wgslsmith_f_op_f32(-global1.d), var_2, any(vec4<bool>(any(func_1(false).b), true, !var_2, any(!vec3<bool>(false, var_2, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d, 897f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, _wgslsmith_f_op_f32(max(885f, -221f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-292f, -866f), vec2<f32>(-536f, -1528f))), func_6(1u, func_5(vec4<bool>(true, true, global1.b.x, global1.b.x), func_1(false)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, 598f, 725f, global0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(1744f, global0.x, global1.d, 2580f), vec4<f32>(global1.d, 1228f, -1283f, global1.d))))))));
    let var_0 = func_2(global1.b, global1.b.x, _wgslsmith_f_op_f32(step(-1388f, global0.x)));
    let var_1 = var_0.c;
    var var_2 = global1.b.xz;
    let var_3 = vec3<u32>(u_input.c, func_2(!func_1(var_2.x).b, false, var_1).b.b.x, 1u);
    var var_4 = func_5(global1.b, func_1(false));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<u32>(~_wgslsmith_add_u32(0u, 0u), var_3.x, ~4294967295u & max(global2[_wgslsmith_index_u32(0u, 5u)], u_input.b), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_3.zy, u_input.a), var_4.b), 5u)])), var_0.c, global1.a.x, 0i, 25732u);
}

