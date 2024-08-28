struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 5>;

var<private> global2: array<vec2<f32>, 19>;

var<private> global3: array<Struct_2, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: i32) -> Struct_2 {
    var var_0 = u_input.a.x | arg_2;
    var var_1 = arg_1.x;
    let var_2 = global3[_wgslsmith_index_u32(~1u >> (u_input.b % 32u), 23u)];
    var var_3 = ~(-(~u_input.a));
    let var_4 = -_wgslsmith_div_vec2_i32(vec2<i32>(-45990i, _wgslsmith_mult_i32(arg_0.x, var_3.x)) & var_3.wy, -arg_0.zy);
    return global3[_wgslsmith_index_u32(u_input.b, 23u)];
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: i32) -> vec4<u32> {
    global3 = array<Struct_2, 23>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(19504u, 4294967295u, 51136u), 5u)]) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1)))) + global1[_wgslsmith_index_u32(min(firstLeadingBit(arg_0.a.x), 95724u) & _wgslsmith_mult_u32(u_input.b, min(~0u, 1u)), 5u)]);
    let var_1 = Struct_3(arg_2);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(floor(arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(11983u, 5u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_1)))), arg_2) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.b, 5u)], -1141f)))), _wgslsmith_f_op_f32(abs(-948f)))));
    let var_3 = Struct_4(true);
    return vec4<u32>(0u, ~(~min(4984u, u_input.b) | arg_0.b.a.x), _wgslsmith_mult_u32(_wgslsmith_mod_u32(75813u, arg_0.c.a.x), 4294967295u), _wgslsmith_mult_u32(0u, 1u));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b | u_input.b, ~1u), 5u)]))), _wgslsmith_f_op_f32(681f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b, 5u)], -293f) - _wgslsmith_div_f32(arg_1.a, 1733f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1319f - -2724f)))), global1[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(firstTrailingBit(u_input.b), _wgslsmith_div_u32(1u, 1u)), ~_wgslsmith_clamp_u32(u_input.b, u_input.b, 22540u), !arg_0.a), 5u)] >= _wgslsmith_f_op_f32(max(-730f, _wgslsmith_f_op_f32(-216f - _wgslsmith_f_op_f32(-arg_1.a))))));
    let var_1 = ~firstLeadingBit(func_3(func_2(u_input.a.zxy, global2[_wgslsmith_index_u32(0u, 19u)], max(arg_2.x, u_input.a.x)), _wgslsmith_f_op_f32(arg_1.a + 1438f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a * -1000f), _wgslsmith_f_op_f32(trunc(-1051f)), select(true, true, true))), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_2.x, arg_2.x, u_input.a.x), arg_2.x)));
    let var_2 = arg_1;
    var var_3 = Struct_2(vec4<u32>(43632u, _wgslsmith_mult_u32(u_input.b, ~25967u), ~17482u, ~u_input.b), func_2(vec3<i32>(-1i, 6132i, min(arg_2.x >> (var_1.x % 32u), _wgslsmith_add_i32(arg_2.x, 1i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1548f, -1844f))))), -arg_2.x).b, func_2(vec3<i32>(countOneBits(~1i), 2147483647i, u_input.c), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(~10534u, 19u)]))), 51432i).c, -7936i ^ min(_wgslsmith_div_i32(-u_input.c, firstTrailingBit(1i)), u_input.a.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_2.a)), global1[_wgslsmith_index_u32(1u, 5u)], true)), _wgslsmith_f_op_f32(-func_2(vec3<i32>(arg_2.x, 2147483647i, 1i), vec2<f32>(arg_1.a, global1[_wgslsmith_index_u32(var_1.x, 5u)]), arg_2.x).b.b), 687f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1412f, 1913f), 908f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(140f + 132f), _wgslsmith_f_op_f32(min(-1000f, -2538f)), -1552f, global1[_wgslsmith_index_u32(~var_1.x, 5u)])), !arg_0.a)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-var_3.e.xw);
    return Struct_1(~var_1.xxx, 1339f, _wgslsmith_f_op_f32(max(-303f, 419f)), global2[_wgslsmith_index_u32(4294967295u, 19u)]);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_4 {
    let var_0 = ~(4294967295u & (~(~arg_2.x) << (~(~u_input.b) % 32u)));
    let var_1 = u_input.a.x;
    global2 = array<vec2<f32>, 19>();
    return Struct_4(false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b;
    global0 = u_input.b;
    var var_0 = _wgslsmith_f_op_f32(-844f * _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(countOneBits(~(~u_input.b)), 5u)])));
    let var_1 = func_4(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(337f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~4294967295u, 5u)]) - -654f)), vec3<u32>(u_input.b, min(4294967295u << (u_input.b % 32u), select(u_input.b, u_input.b, false)), 1247u) >> (_wgslsmith_div_vec3_u32(reverseBits(~vec3<u32>(4294967295u, 15234u, u_input.b)), vec3<u32>(12870u, ~u_input.b, u_input.b | u_input.b)) % vec3<u32>(32u)), func_1(Struct_4(true), Struct_3(global1[_wgslsmith_index_u32(firstTrailingBit(~9920u), 5u)]), max(firstTrailingBit(vec3<i32>(-7885i, u_input.c, u_input.a.x)) & -u_input.a.zyy, vec3<i32>(u_input.c, u_input.c, u_input.c))));
    global2 = array<vec2<f32>, 19>();
    var_0 = -151f;
    var var_2 = -u_input.c;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(u_input.b, 5u)], 319f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1[_wgslsmith_index_u32(30143u, 5u)], -1000f, global1[_wgslsmith_index_u32(u_input.b, 5u)]))))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-100f + global1[_wgslsmith_index_u32(u_input.b, 5u)])), -851f)));
    let x = u_input.a;
    s_output = StorageBuffer(-462f, _wgslsmith_add_vec2_u32(~select(vec2<u32>(75286u, 34017u), ~vec2<u32>(u_input.b, 4294967295u), false), vec2<u32>(4294967295u, u_input.b & 0u)));
}

