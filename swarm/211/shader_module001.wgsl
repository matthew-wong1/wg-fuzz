struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: Struct_1 = Struct_1(vec4<f32>(669f, -1371f, -787f, 708f), vec4<i32>(-12022i, 9933i, 2147483647i, 1i));

var<private> global3: vec3<f32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.a)), min(select(global2.b | (global2.b << (vec4<u32>(u_input.d.x, u_input.e, 45322u, global0.x) % vec4<u32>(32u))), -vec4<i32>(global2.b.x, -32331i, u_input.c, global2.b.x) << (vec4<u32>(4384u, u_input.e, global0.x, 0u) % vec4<u32>(32u)), all(!vec2<bool>(true, global1.x))), -(~global2.b)));
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(-global2.a), -_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(var_0.b, -var_0.b), countOneBits(vec4<i32>(var_0.b.x, -29078i, u_input.b, -1i))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2331f - 111f));
    var_1 = 411f;
    var var_2 = Struct_2(select(!vec4<bool>(true, any(vec3<bool>(false, false, global1.x)), all(vec2<bool>(global1.x, global1.x)), false && global1.x), vec4<bool>(true, (global1.x | false) && false, any(!vec3<bool>(global1.x, true, global1.x)), false), global1.x));
    return Struct_2(!var_2.a);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> u32 {
    global1 = !(!vec2<bool>(_wgslsmith_clamp_u32(u_input.e, 7412u, 41866u) != (1u << (1u % 32u)), true));
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-831f)), -1269f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.a.x)) - _wgslsmith_f_op_f32(-global2.a.x)))), 220f, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2101f, global3.x, 477f, -1000f), vec4<f32>(-311f, -436f, global3.x, 213f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-641f, 618f, global3.x, global3.x), vec4<f32>(-2192f, global3.x, -890f, 1322f))))))));
    let var_1 = -2147483647i;
    global1 = !select(vec2<bool>(select(true, !arg_2, true), var_0.a.x), select(select(!var_0.a.wz, var_0.a.yy, true), func_2(global2.a.yzx, 1393f, global2.a).a.zz, arg_1.a.zy), var_0.a.wz);
    var var_2 = ~global0.x;
    return 4294967295u;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: Struct_2) -> i32 {
    global1 = vec2<bool>(false, !all(arg_3.a.yyz));
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_2.x >> (global0.x % 32u), _wgslsmith_sub_u32(1u, arg_2.x), _wgslsmith_add_u32(72409u, 24755u)), 31053u) | global0.x, func_3(~(-global2.b.x), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(869f, 1000f, -328f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.x, global2.a.x)), global2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) > _wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(697f - arg_1.x))), ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(33090u, 1u, 1u, 4294967295u)), ~vec4<u32>(0u, global0.x, 42163u, 60022u)), _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(20765u, 1u), arg_2.x), _wgslsmith_add_u32(global0.x << (u_input.a % 32u), 8071u)) & ~1u);
    let var_1 = true;
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global3.x, global3.x)))), _wgslsmith_f_op_f32(f32(-1f) * -263f), 467f), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.x), global3.x)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1288f, 773f)))), arg_3.a.zyy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2.a.x, 311f), 343f, arg_2.x <= u_input.d.x)))), vec4<f32>(1287f, _wgslsmith_f_op_f32(trunc(-1325f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)))), 1193f));
    global1 = vec2<bool>(global1.x, all(vec3<bool>(true && global1.x, global1.x && false, true)) || all(func_2(vec3<f32>(1050f, global3.x, 507f), _wgslsmith_f_op_f32(sign(-123f)), _wgslsmith_f_op_vec4_f32(-global2.a)).a.yy));
    return -1i;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(!(!select(arg_0.a, arg_0.a, vec4<bool>(true, false, arg_1, true))));
    let var_1 = Struct_2(var_0.a);
    let var_2 = arg_3.a.x;
    global0 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 28040u, 0u) << (vec3<u32>(4294967295u, global0.x, u_input.e) % vec3<u32>(32u)), vec3<u32>(u_input.d.x, ~global0.x, _wgslsmith_clamp_u32(u_input.d.x, u_input.a, global0.x))), ~_wgslsmith_div_u32(global0.x, global0.x) >> (~(u_input.d.x | 4294967295u) % 32u)), vec2<u32>(u_input.e, 12389u));
    var var_3 = ~_wgslsmith_div_i32(_wgslsmith_clamp_i32(select(firstTrailingBit(-26390i), -2147483647i, arg_1), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-5227i, arg_2.x, -50431i)), arg_2 << (vec3<u32>(52547u, u_input.d.x, u_input.a) % vec3<u32>(32u))), func_1(_wgslsmith_div_vec3_i32(vec3<i32>(global2.b.x, 0i, -2147483647i), vec3<i32>(-31077i, 2147483647i, arg_3.b.x)), vec3<f32>(var_2, -280f, -150f), reverseBits(vec3<u32>(u_input.a, global0.x, u_input.e)), func_2(global2.a.xxw, arg_3.a.x, arg_3.a))), _wgslsmith_dot_vec4_i32(vec4<i32>(-3085i, 56511i, global2.b.x, -44778i), global2.b) & u_input.c);
    return Struct_1(arg_3.a, firstTrailingBit(abs(select(vec4<i32>(arg_2.x, u_input.b, 2147483647i, 20756i), -vec4<i32>(arg_2.x, arg_3.b.x, -1i, 2147483647i), arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(vec4<bool>(false, false, true, false)), false, vec3<i32>(_wgslsmith_dot_vec4_i32(global2.b, ~(~vec4<i32>(global2.b.x, u_input.b, global2.b.x, -23457i))), _wgslsmith_div_i32(-func_1(vec3<i32>(u_input.b, -2147483647i, -1i), global2.a.yxz, vec3<u32>(23047u, u_input.d.x, u_input.d.x), Struct_2(vec4<bool>(true, false, false, true))), -24312i), u_input.c), Struct_1(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(1374f - _wgslsmith_f_op_f32(f32(-1f) * -659f)), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, 1000f))), abs(reverseBits(countOneBits(global2.b)))));
    var var_1 = var_0.a.x;
    let var_2 = global2.b.xzy;
    let var_3 = func_4(Struct_2(select(select(vec4<bool>(false, global1.x, global1.x, true), !vec4<bool>(global1.x, true, true, false), vec4<bool>(global1.x, global1.x, global1.x, global1.x)), !select(vec4<bool>(true, global1.x, true, false), vec4<bool>(global1.x, false, false, true), global1.x), vec4<bool>(false, !global1.x, all(vec2<bool>(true, global1.x)), global1.x))), all(select(select(!vec3<bool>(true, false, global1.x), func_2(var_0.a.wzz, var_0.a.x, vec4<f32>(692f, 374f, -1172f, var_0.a.x)).a.zzz, !vec3<bool>(global1.x, false, true)), !vec3<bool>(global1.x, global1.x, true), global1.x)), -vec3<i32>(_wgslsmith_add_i32(0i, 4353i), var_2.x, var_0.b.x), Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), vec4<i32>(-1i, var_2.x, firstLeadingBit(1i | u_input.b), abs(2147483647i))));
    let var_4 = false;
    global2 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, ~(~select(62398u, 32658u, var_4)), ~(global0.x >> (~u_input.e % 32u)), ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.d.x, u_input.a, 4294967295u)), max(vec3<u32>(global0.x, 83080u, u_input.a), vec3<u32>(0u, global0.x, 0u)))), global2.b.x, -var_0.b.x, global0.x);
}

