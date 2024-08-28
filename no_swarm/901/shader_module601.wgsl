struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-960f);

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(1011f), Struct_1(626f)), Struct_2(Struct_1(1028f), Struct_1(651f)), Struct_2(Struct_1(1108f), Struct_1(1674f)), Struct_2(Struct_1(-1270f), Struct_1(526f)), Struct_2(Struct_1(-1053f), Struct_1(-735f)), Struct_2(Struct_1(833f), Struct_1(-361f)), Struct_2(Struct_1(971f), Struct_1(402f)), Struct_2(Struct_1(-109f), Struct_1(1000f)), Struct_2(Struct_1(-548f), Struct_1(1614f)), Struct_2(Struct_1(-1019f), Struct_1(105f)), Struct_2(Struct_1(449f), Struct_1(247f)), Struct_2(Struct_1(447f), Struct_1(-1582f)), Struct_2(Struct_1(169f), Struct_1(445f)), Struct_2(Struct_1(706f), Struct_1(-814f)), Struct_2(Struct_1(-917f), Struct_1(1119f)), Struct_2(Struct_1(-462f), Struct_1(1431f)), Struct_2(Struct_1(1233f), Struct_1(480f)), Struct_2(Struct_1(-1000f), Struct_1(-755f)));

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global3: array<f32, 27> = array<f32, 27>(385f, -1086f, -678f, -900f, 587f, 632f, -1507f, -970f, 436f, 1049f, -906f, -1000f, -603f, -445f, 445f, 1442f, 1497f, 1205f, 889f, -986f, 576f, -713f, -406f, 2263f, -1877f, -681f, -261f);

var<private> global4: bool = false;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(_wgslsmith_add_u32(71315u, 24332u), u_input.e), _wgslsmith_clamp_u32(~(~(49918u ^ arg_0.x)), 53578u, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, arg_0.x, 8074u, 19684u), vec4<u32>(u_input.b, 66137u, u_input.d, u_input.b)), abs(0u)))), 18u)];
    return ~(-1i) ^ u_input.a.x;
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_3, arg_3: f32) -> Struct_4 {
    global0 = arg_2.d.b;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), global0.a))));
    let var_1 = global2.x;
    global1 = array<Struct_2, 18>();
    var var_2 = Struct_4(vec2<i32>(-1i) * -vec2<i32>(2147483647i | u_input.a.x, ~u_input.a.x), arg_2.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(169f, _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(9877u, 27u)], 1000f)), _wgslsmith_f_op_f32(global0.a * arg_1), _wgslsmith_f_op_f32(max(-652f, 542f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(328f, global0.a, 774f, var_0.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, arg_1, -2481f, -338f) + vec4<f32>(995f, arg_1, global3[_wgslsmith_index_u32(u_input.d, 27u)], -1837f)))))));
    return Struct_4(vec2<i32>(_wgslsmith_div_i32(max(~0i, -1i), ~1464i), 1i), Struct_1(var_2.c.x), vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.a)), _wgslsmith_f_op_f32(select(var_2.b.a, -261f, true && global2.x)), -1000f, -1175f));
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_4 {
    let var_0 = global2.zw;
    global1 = array<Struct_2, 18>();
    let var_1 = func_3(vec2<i32>(max(u_input.a.x, abs(u_input.a.x)), _wgslsmith_mult_i32(arg_1, func_2(vec3<u32>(0u, 0u, u_input.c.x), Struct_1(global3[_wgslsmith_index_u32(u_input.c.x, 27u)]))) | -(i32(-1i) * -1i)), -464f, Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * -307f) + 1144f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-442f, -536f)) - vec2<f32>(global3[_wgslsmith_index_u32(55570u, 27u)], -462f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1141f, -392f), vec2<f32>(-1284f, 1000f), vec2<bool>(false, true))), _wgslsmith_div_vec2_f32(vec2<f32>(global0.a, 623f), vec2<f32>(1000f, 1072f))))), abs(arg_1), Struct_2(Struct_1(_wgslsmith_f_op_f32(global0.a - global0.a)), Struct_1(_wgslsmith_f_op_f32(min(-1824f, global0.a))))), global0.a);
    let var_2 = global2.xxx;
    global1 = array<Struct_2, 18>();
    return var_1;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_4, arg_3: Struct_4) -> StorageBuffer {
    global3 = array<f32, 27>();
    var var_0 = select(vec4<bool>(true, true, all(select(global2.wy, vec2<bool>(true, global2.x), !global2.ww)), !(u_input.a.x >= _wgslsmith_div_i32(-2147483647i, 32820i))), vec4<bool>(u_input.a.x == arg_2.a.x, true, false, !all(global2.wwx)), all(!global2.xzx));
    global2 = !(!(!vec4<bool>(arg_0 == true, any(vec4<bool>(global2.x, arg_0, global2.x, global2.x)), 1u <= u_input.d, false)));
    global1 = array<Struct_2, 18>();
    let var_1 = arg_3.b;
    return StorageBuffer(arg_2.c.xxw, _wgslsmith_add_vec4_u32(u_input.c << ((_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, arg_1, 37492u, 1u), vec4<u32>(18568u, u_input.b, 1u, 4294967295u)) << (_wgslsmith_div_vec4_u32(vec4<u32>(33929u, u_input.d, u_input.c.x, arg_1), vec4<u32>(arg_1, arg_1, 89564u, 58533u)) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(abs(u_input.c ^ vec4<u32>(arg_1, 27323u, 6777u, 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(global2.x, 30097u, Struct_4(~firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.a.yx, vec2<i32>(-18678i, u_input.a.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))), vec4<f32>(1899f, _wgslsmith_f_op_f32(step(-1113f, -156f)), -606f, _wgslsmith_f_op_f32(-1004f + -868f))), func_1(~u_input.c.x, ~((2147483647i ^ u_input.a.x) | u_input.a.x)));
}

