struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: array<Struct_1, 11>;

var<private> global2: array<i32, 30>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: u32) -> bool {
    let var_0 = ~u_input.c.x;
    global1 = array<Struct_1, 11>();
    let var_1 = vec2<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(arg_0.b.b), 0i, -2147483647i), _wgslsmith_clamp_vec3_i32(arg_0.c.wyw, -(vec3<i32>(arg_0.c.x, global2[_wgslsmith_index_u32(1u, 30u)], -11105i) << (vec3<u32>(41816u, 34153u, 0u) % vec3<u32>(32u))), arg_0.a)));
    global2 = array<i32, 30>();
    var var_2 = vec2<bool>(!(!select(select(arg_1.x, true, arg_1.x), arg_1.x, all(vec3<bool>(false, arg_1.x, arg_1.x)))), any(select(!vec2<bool>(arg_1.x, false), vec2<bool>(arg_1.x, arg_1.x), !arg_1.zw)) & true);
    return var_2.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(917f, 165f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-534f, -1960f))))))));
    var var_1 = vec4<bool>(false, all(arg_3.a.yw), all(vec4<bool>(arg_1.a, arg_1.a, select(arg_1.a || arg_3.d.x, arg_1.a, true), func_3(Struct_4(arg_1.b, Struct_1(33550u, 25928i, arg_1.c.c), vec4<i32>(-1i, global2[_wgslsmith_index_u32(1u, 30u)], arg_3.c.b.x, arg_2.x), var_0.x), select(vec4<bool>(true, arg_1.a, true, arg_3.c.a), vec4<bool>(true, false, arg_1.a, arg_3.a.x), vec4<bool>(arg_1.a, false, true, true)), Struct_1(63280u, -1i, u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.x, 30570u), 5u)]))), true);
    let var_2 = abs(vec4<u32>(~u_input.a.x, 5410u, min(reverseBits(~arg_0.x), 25012u & ~arg_3.c.c.c.x), u_input.c.x));
    var var_3 = 4294967295u;
    let var_4 = !arg_3.a;
    return -917f;
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = ~u_input.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1254f, 2320f, 1034f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(133f, -403f, -1928f, -2911f))), vec4<f32>(-1048f, _wgslsmith_f_op_f32(812f - 717f), -946f, -1158f))) - vec4<f32>(132f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-986f * -351f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<u32>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(u_input.c.x, 5u)]), Struct_2(true, vec3<i32>(1i, -2147483647i, u_input.b), global1[_wgslsmith_index_u32(20885u, 11u)]), vec3<i32>(global2[_wgslsmith_index_u32(var_0.x, 30u)], u_input.b, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 30u)]), Struct_3(vec4<bool>(arg_0, true, true, arg_0), Struct_1(var_0.x, global2[_wgslsmith_index_u32(var_0.x, 30u)], vec4<u32>(u_input.d.x, 28514u, global0[_wgslsmith_index_u32(1u, 5u)], 73777u)), Struct_2(false, vec3<i32>(u_input.b, -2147483647i, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 30u)]), global1[_wgslsmith_index_u32(77362u, 11u)]), vec3<bool>(true, true, arg_0)))) + _wgslsmith_f_op_f32(abs(-802f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -879f)))))));
    return reverseBits(_wgslsmith_div_i32(countOneBits(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(1u, 30u)])), ~global2[_wgslsmith_index_u32(var_0.x, 30u)] | ~(-20333i)) | ~global2[_wgslsmith_index_u32(var_0.x, 30u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    global1 = array<Struct_1, 11>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(269f, _wgslsmith_f_op_f32(f32(-1f) * -1883f)))), -211f));
    var_0 = func_1(all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), true), true)));
    var var_2 = var_1.x;
    var var_3 = Struct_4(min(vec3<i32>(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global2[_wgslsmith_index_u32(28073u, 30u)], global2[_wgslsmith_index_u32(133691u, 30u)]), vec3<i32>(u_input.b, 1i, u_input.b))), func_1(true), -(~global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 5u)], 30u)])), select(vec3<i32>(global2[_wgslsmith_index_u32(20244u, 30u)], global2[_wgslsmith_index_u32(16807u, 30u)], -43693i), -vec3<i32>(u_input.b, global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10892u, 5u)], 30u)]), var_1.x >= 132f) | _wgslsmith_add_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(0u, 30u)], u_input.b, u_input.b) << (vec3<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 5u)], global0[_wgslsmith_index_u32(48495u, 5u)], global0[_wgslsmith_index_u32(315u, 5u)]) % vec3<u32>(32u)), vec3<i32>(1i, 24816i, u_input.b))), global1[_wgslsmith_index_u32(u_input.d.x, 11u)], min(vec4<i32>(1i, (u_input.b & u_input.b) >> (1u % 32u), _wgslsmith_div_i32(-global2[_wgslsmith_index_u32(28770u, 30u)], ~global2[_wgslsmith_index_u32(u_input.d.x, 30u)]), -2147483647i), vec4<i32>(~select(0i, 49232i, true), _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(107635u, 5u)], 5u)], 30u)] << (u_input.c.x % 32u), _wgslsmith_div_i32(20545i, u_input.b), -19458i), 38166i, -2147483647i)), -1431f);
    global1 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d) + var_3.d) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec3<u32>(14143u, var_3.b.c.x, u_input.a.x), Struct_2(false, vec3<i32>(u_input.b, -27905i, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48543u, 5u)], 5u)], 30u)]), Struct_1(var_3.b.a, var_3.b.b, u_input.d)), var_3.a, Struct_3(vec4<bool>(true, false, true, false), global1[_wgslsmith_index_u32(4294967295u, 11u)], Struct_2(false, var_3.c.xww, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58644u, 5u)], 5u)], 11u)]), vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(abs(var_1.x))))), 0i & ~(~_wgslsmith_mult_i32(-10858i, global2[_wgslsmith_index_u32(u_input.c.x, 30u)])), 536f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-393f, -137f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2103f, var_1.x))), _wgslsmith_div_vec2_f32(vec2<f32>(var_3.d, var_1.x), vec2<f32>(-575f, var_1.x))), select(true, true, true))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-753f, 174f)) + 803f), var_1.x)));
}

