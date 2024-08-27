struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(57313u, 10636u, 4941u, 0u, 23863u, 27468u, 4294967295u, 23926u, 0u, 0u, 0u);

var<private> global1: Struct_2;

var<private> global2: vec3<f32>;

var<private> global3: f32;

var<private> global4: vec4<f32> = vec4<f32>(-198f, 2113f, 149f, 1452f);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2() -> f32 {
    global4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(878f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1201f, _wgslsmith_f_op_f32(188f + global4.x))), -1665f)), _wgslsmith_f_op_f32(-global2.x), -2032f));
    global0 = array<u32, 11>();
    let var_0 = global1.a.c;
    var var_1 = _wgslsmith_f_op_f32(-global2.x);
    var var_2 = global2.x;
    return global2.x;
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    var var_0 = vec4<bool>(arg_2.c.x, !select(false, arg_2.b.d.d.x, global1.d.d.x), arg_2.a.d.x, true);
    var var_1 = any(!vec4<bool>(false, !any(var_0.wzw), true, true));
    global1 = arg_2.b;
    var var_2 = arg_2;
    var var_3 = true;
    return var_2.b;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global2.zz), vec2<f32>(1f, 1f), false)) * vec2<f32>(_wgslsmith_f_op_f32(-global4.x), -1336f)), _wgslsmith_f_op_f32(floor(1000f)), Struct_3(arg_1.a, arg_1, !arg_1.a.d, ~_wgslsmith_clamp_vec3_i32(vec3<i32>(1300i, u_input.a.x, -2147483647i), vec3<i32>(global1.d.a, global1.d.c, -4914i), u_input.a.wxy), global2.yx)).d, Struct_2(Struct_1(u_input.a.x, -50143i, ~(-1i), global1.a.d, vec3<u32>(select(arg_1.d.e.x, 52732u, arg_0), u_input.b | 51330u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d.e.x, u_input.b, 26892u, 8077u), vec4<u32>(48928u, global0[_wgslsmith_index_u32(u_input.d.x, 11u)], 87366u, 1u)))), 18471u, 4294967295u, arg_1.d), select(arg_1.d.d, !select(!arg_1.d.d, !arg_1.a.d, !global1.d.d.x), any(select(select(vec4<bool>(global1.a.d.x, arg_1.a.d.x, arg_1.d.d.x, arg_0), vec4<bool>(arg_1.d.d.x, false, true, global1.a.d.x), vec4<bool>(global1.a.d.x, true, false, true)), select(vec4<bool>(false, global1.a.d.x, arg_0, true), vec4<bool>(true, true, arg_1.d.d.x, false), false), any(vec4<bool>(global1.a.d.x, true, false, arg_1.a.d.x))))), reverseBits(u_input.a.zxw), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global4.xx, _wgslsmith_f_op_vec2_f32(floor(global2.xx)), select(arg_1.a.d, arg_1.a.d, arg_1.d.d))) + vec2<f32>(_wgslsmith_f_op_f32(max(global2.x, global4.x)), _wgslsmith_f_op_f32(-251f * 1352f)))));
    global2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global4.zyx)));
    let var_1 = all(!(!select(vec3<bool>(arg_1.a.d.x, arg_0, true), vec3<bool>(false, false, false), vec3<bool>(var_0.c.x, true, false))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-global2.yz);
    var var_3 = true;
    return func_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1998f) - global2.yx))) + global2.zz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, var_0.e.x), _wgslsmith_div_vec2_f32(vec2<f32>(460f, -1084f), vec2<f32>(1354f, var_2.x)), !arg_0)) - _wgslsmith_f_op_vec2_f32(-global4.zx)))), _wgslsmith_f_op_f32(select(-900f, _wgslsmith_f_op_f32(global4.x - global4.x), arg_1.a.d.x)), Struct_3(func_3(global4.xw, -1000f, Struct_3(Struct_1(0i, var_0.a.c, global1.a.a, vec2<bool>(true, true), var_0.a.e), arg_1, global1.a.d, min(vec3<i32>(arg_1.a.b, 6203i, -15896i), vec3<i32>(-3819i, u_input.c.x, 27168i)), _wgslsmith_f_op_vec2_f32(sign(global2.zz)))).d, func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_f32(var_2.x * var_2.x)), _wgslsmith_f_op_f32(max(global4.x, _wgslsmith_div_f32(-506f, -911f))), Struct_3(arg_1.a, func_3(vec2<f32>(-1000f, 548f), var_0.e.x, Struct_3(arg_1.d, Struct_2(Struct_1(45898i, var_0.b.a.c, 2147483647i, vec2<bool>(false, arg_1.d.d.x), var_0.a.e), 4294967295u, 10283u, Struct_1(arg_1.d.c, 1i, 0i, global1.d.d, arg_1.d.e)), vec2<bool>(var_0.a.d.x, false), var_0.d, vec2<f32>(var_0.e.x, 1074f))), !arg_1.d.d, _wgslsmith_mod_vec3_i32(var_0.d, u_input.a.yzw), _wgslsmith_f_op_vec2_f32(global4.zz + global4.zx))), !vec2<bool>(true, global1.d.d.x), var_0.d, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(var_0.e.x * -427f))))));
}

fn func_1(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = !(true && global1.d.d.x);
    global1 = func_4(any(select(!select(vec3<bool>(false, false, global1.d.d.x), vec3<bool>(var_0, true, true), vec3<bool>(var_0, true, true)), select(!vec3<bool>(false, true, global1.d.d.x), vec3<bool>(global1.d.d.x, global1.a.d.x, var_0), !var_0), any(vec3<bool>(false, true, false)))), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -928f)), _wgslsmith_f_op_f32(func_2()), Struct_3(Struct_1(1i, -u_input.a.x, 16416i, vec2<bool>(var_0, global1.a.d.x), vec3<u32>(global1.b, global1.c, 4294967295u)), Struct_2(global1.d, reverseBits(global0[_wgslsmith_index_u32(0u, 11u)]), u_input.b, Struct_1(2147483647i, u_input.c.x, 2147483647i, vec2<bool>(false, true), global1.a.e)), global1.a.d, select(vec3<i32>(-13067i, global1.d.a, global1.d.a), u_input.a.xxw & u_input.a.yxx, true), vec2<f32>(_wgslsmith_f_op_f32(max(global2.x, 1543f)), _wgslsmith_f_op_f32(sign(global4.x))))));
    let var_1 = Struct_2(Struct_1(max(max(u_input.c.x, -4268i) | countOneBits(339i), -(~u_input.c.x)), abs(-2147483647i), _wgslsmith_mult_i32(~_wgslsmith_div_i32(13735i, global1.a.c), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-55735i, global1.d.b, -2147483647i), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x))), !(!select(global1.a.d, global1.d.d, vec2<bool>(global1.d.d.x, false))), _wgslsmith_add_vec3_u32(~firstLeadingBit(vec3<u32>(241u, u_input.d.x, global0[_wgslsmith_index_u32(global1.d.e.x, 11u)])), ~_wgslsmith_div_vec3_u32(vec3<u32>(global1.b, global1.d.e.x, 101029u), global1.d.e))), ((~global0[_wgslsmith_index_u32(71234u, 11u)] | _wgslsmith_add_u32(1u, global1.a.e.x)) & _wgslsmith_dot_vec4_u32(vec4<u32>(global1.c, global0[_wgslsmith_index_u32(u_input.d.x, 11u)], 77653u, u_input.d.x), countOneBits(vec4<u32>(27383u, global1.c, global0[_wgslsmith_index_u32(u_input.b, 11u)], global1.c)))) >> (4294967295u % 32u), _wgslsmith_mod_u32(1u, func_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(global4.wx)), arg_0.zx)), _wgslsmith_f_op_f32(ceil(-1104f)), Struct_3(Struct_1(global1.d.a, global1.d.b, global1.d.b, vec2<bool>(false, false), global1.d.e), func_3(vec2<f32>(global2.x, global2.x), arg_0.x, Struct_3(Struct_1(-29064i, u_input.a.x, 49738i, global1.d.d, global1.a.e), Struct_2(Struct_1(-2147483647i, 0i, u_input.c.x, global1.d.d, global1.a.e), global0[_wgslsmith_index_u32(79652u, 11u)], 6965u, global1.d), vec2<bool>(var_0, false), u_input.a.wyy, global2.yy)), vec2<bool>(global1.a.d.x, var_0), _wgslsmith_div_vec3_i32(u_input.a.xxy, vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(835f, global4.x)))).d.e.x), global1.d);
    var var_2 = Struct_3(func_3(vec2<f32>(218f, global4.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -137f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(642f)), _wgslsmith_f_op_f32(select(global2.x, global4.x, false))))), Struct_3(func_3(vec2<f32>(arg_0.x, 1117f), _wgslsmith_f_op_f32(-662f * global2.x), Struct_3(var_1.a, var_1, vec2<bool>(true, var_1.d.d.x), vec3<i32>(u_input.a.x, 30641i, global1.d.a), arg_0.yy)).a, var_1, !global1.d.d, u_input.a.zzy, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global4.x, 560f))), vec2<f32>(arg_0.x, -377f))))).d, var_1, vec2<bool>(false, !(1i > _wgslsmith_sub_i32(global1.a.b, 0i))), _wgslsmith_mod_vec3_i32(vec3<i32>(func_3(arg_0.zz, _wgslsmith_f_op_f32(step(-752f, arg_0.x)), Struct_3(var_1.a, Struct_2(var_1.a, var_1.d.e.x, 4294967295u, global1.a), var_1.d.d, u_input.a.xzx, global4.xy)).a.c, -79728i, abs(~u_input.c.x)), countOneBits(min(u_input.a.xzw << (global1.a.e % vec3<u32>(32u)), vec3<i32>(u_input.a.x, -35941i, global1.a.a)))), vec2<f32>(global4.x, 1009f));
    var var_3 = var_2.b;
    return !global1.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(Struct_1(reverseBits(_wgslsmith_dot_vec4_i32(-u_input.a, -u_input.a)), global1.d.b, _wgslsmith_dot_vec4_i32(select(~vec4<i32>(13091i, u_input.a.x, u_input.a.x, global1.a.a), vec4<i32>(u_input.a.x, global1.d.a, u_input.a.x, -6506i), vec4<bool>(true, false, global1.a.d.x, global1.a.d.x)), select(~u_input.a, u_input.a, true)), func_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -141f), _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-global4.x))), select(~(global1.d.e | vec3<u32>(3489u, 1u, 0u)), ~vec3<u32>(global1.a.e.x, 105192u, 4294967295u) ^ _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, global1.b, 4294967295u), global1.d.e), vec3<bool>(false, true, global1.d.d.x))), ~((_wgslsmith_div_u32(global1.c, global0[_wgslsmith_index_u32(21848u, 11u)]) >> (~1u % 32u)) & u_input.d.x), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~69830u, u_input.b) >> (max(1u, 1u) % 32u), 11u)], global1.d);
    let var_0 = vec3<bool>(global2.x < _wgslsmith_f_op_f32(f32(-1f) * -345f), false, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, 1f)), _wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(989f)))), Struct_3(global1.d, Struct_2(func_3(global4.wx, -376f, Struct_3(global1.d, Struct_2(Struct_1(59931i, 5476i, 45672i, vec2<bool>(true, false), vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], 1u)), u_input.b, 14737u, global1.d), global1.d.d, u_input.a.ywz, vec2<f32>(global2.x, global4.x))).a, abs(global1.c), global1.c, Struct_1(1i, u_input.a.x, global1.d.b, global1.d.d, global1.d.e)), select(global1.d.d, global1.a.d, global1.d.d), u_input.a.zzx, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, 1106f), vec2<f32>(-882f, -1024f), global1.d.d)), global4.xx, select(vec2<bool>(global1.d.d.x, global1.a.d.x), global1.d.d, global1.a.d))))).d.d.x);
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2())));
    let var_2 = 35076u;
    let var_3 = _wgslsmith_f_op_vec2_f32(global4.zy - global2.yx);
    global3 = -1395f;
    var var_4 = Struct_3(Struct_1(u_input.c.x, global1.d.b, -1i, global1.a.d, vec3<u32>(_wgslsmith_sub_u32(~1u, var_2), ~var_2, u_input.d.x)), func_4(any(var_0), Struct_2(Struct_1(global1.d.b, select(1i, u_input.a.x, var_0.x), u_input.c.x ^ -7380i, vec2<bool>(var_0.x, var_0.x), _wgslsmith_clamp_vec3_u32(global1.d.e, vec3<u32>(6403u, u_input.d.x, global0[_wgslsmith_index_u32(4294967295u, 11u)]), global1.d.e)), 38285u, ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2, 11u)], 11u)]), Struct_1(u_input.a.x, u_input.c.x, -1555i, global1.a.d, _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_2, u_input.b), global1.a.e)))), !func_1(global4.yxw), _wgslsmith_add_vec3_i32(u_input.a.zww & vec3<i32>(u_input.a.x, 30562i, u_input.a.x), countOneBits(-u_input.a.yyz)) ^ firstTrailingBit(~reverseBits(vec3<i32>(u_input.a.x, -2147483647i, global1.a.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.x, _wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_vec2_f32(-global4.zy), var_0.x & any(vec4<bool>(global1.a.d.x, true, true, true)))), _wgslsmith_f_op_vec2_f32(trunc(var_3)), var_0.yx)));
    var var_5 = Struct_1(_wgslsmith_add_i32(_wgslsmith_clamp_i32(global1.d.a, -firstLeadingBit(u_input.c.x), u_input.c.x), global1.a.b), ~(-firstLeadingBit(-1i)), firstTrailingBit(1i), func_4(false, var_4.b).a.d, global1.d.e);
    var var_6 = _wgslsmith_sub_u32(11230u | u_input.d.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~global1.a.e.xx, var_4.a.e.zx), ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(11350u, var_2), 28603u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -1i, var_4.b.a.a) << (vec3<u32>(global0[_wgslsmith_index_u32(var_2, 11u)], 0u, 1u) % vec3<u32>(32u)), vec3<i32>(1i, -2147483647i, 28882i) ^ u_input.a.zxx), vec3<i32>(countOneBits(var_4.a.b), _wgslsmith_mult_i32(u_input.a.x, global1.d.a), -31189i)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(~24942u, var_5.e.x, _wgslsmith_add_u32(var_4.b.d.e.x, 4294967295u)), vec3<u32>(var_2, 69765u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(51588u, 47642u), 11u)])) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(var_5.e, func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.e.x, 514f))), _wgslsmith_f_op_f32(f32(-1f) * -1214f), Struct_3(global1.a, func_3(var_4.e, var_1, Struct_3(var_4.a, var_4.b, var_5.d, u_input.a.yww, vec2<f32>(719f, -659f))), func_4(var_0.x, Struct_2(global1.d, 0u, var_4.a.e.x, global1.a)).a.d, vec3<i32>(20255i, u_input.c.x, global1.d.a), global2.xx)).a.e));
}

