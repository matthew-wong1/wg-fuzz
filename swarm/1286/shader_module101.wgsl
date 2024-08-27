struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global1: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(-37401i, 2147483647i), vec2<i32>(21220i, -27688i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(3844i, i32(-2147483648)), vec2<i32>(-12323i, 1i), vec2<i32>(10628i, 30361i), vec2<i32>(2147483647i, 0i), vec2<i32>(1i, 22037i), vec2<i32>(1i, 51941i), vec2<i32>(2147483647i, 23516i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1i, 1i), vec2<i32>(-68499i, -1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(0i, 992i), vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), -31013i), vec2<i32>(-4317i, -43924i), vec2<i32>(56785i, -21235i), vec2<i32>(i32(-2147483648), -18308i), vec2<i32>(2147483647i, -68303i), vec2<i32>(0i, 24346i), vec2<i32>(1i, 44512i), vec2<i32>(21453i, 2147483647i), vec2<i32>(-1i, 47191i), vec2<i32>(1i, 5725i));

var<private> global2: array<Struct_2, 16>;

var<private> global3: Struct_3;

var<private> global4: array<i32, 30> = array<i32, 30>(-1i, -2878i, i32(-2147483648), -1i, 0i, 2147483647i, -31188i, 0i, 2147483647i, -5086i, 2147483647i, 0i, -20872i, 28352i, i32(-2147483648), 1i, 22643i, 0i, 2147483647i, 11030i, -14844i, 7549i, 1i, 26591i, 1i, -37687i, i32(-2147483648), 40754i, -1i, -52262i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    var var_0 = any(!global0.wz);
    var_0 = any(global0.wzx) | global0.x;
    var_0 = global3.b >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x + 528f)))));
    var var_1 = Struct_3(global3.a, _wgslsmith_f_op_f32(-global3.b));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)))));
    return 0u;
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> vec3<u32> {
    var var_0 = Struct_5(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 3511u), ~u_input.b), 1u, min(~40802u, 4294967295u >> (arg_0 % 32u)) ^ ~(arg_0 ^ u_input.b.x)), _wgslsmith_div_vec4_i32(max(global3.a.a, select(vec4<i32>(global3.a.a.x, 1482i, -23184i, 9605i) | global3.a.a, global3.a.a | vec4<i32>(global3.a.a.x, -24375i, 2147483647i, global4[_wgslsmith_index_u32(arg_0, 30u)]), vec4<bool>(false, global0.x, true, false))), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 30u)], -2147483647i, global3.a.a.x, global4[_wgslsmith_index_u32(8562u, 30u)]), global3.a.a ^ vec4<i32>(37667i, u_input.a.x, -25068i, -17370i)), _wgslsmith_mult_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 30u)], global4[_wgslsmith_index_u32(77285u, 30u)], -13833i, -2147483647i), select(global3.a.a, global3.a.a, global0.x)))), Struct_3(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(global3.b * arg_1.x)))), ~(-_wgslsmith_add_vec4_i32(~global3.a.a, -global3.a.a)));
    var_0 = Struct_5(abs(4294967295u), -(~global3.a.a), Struct_3(global3.a, global3.b), vec4<i32>(-4001i, ~var_0.b.x, var_0.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(global3.a.a.xwx, var_0.d.yzz), _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(21239i, 0i, global3.a.a.x)), -global3.a.a.wwx))));
    var var_1 = -33115i;
    let var_2 = var_0.a;
    var var_3 = select(vec3<bool>(select(global0.x | true, _wgslsmith_sub_u32(arg_0, 54811u) < var_0.a, global0.x != true), !global0.x, true), !vec3<bool>(global0.x, all(select(vec2<bool>(global0.x, false), global0.yy, global0.wz)), !all(vec2<bool>(false, global0.x))), global0.x);
    return min(~u_input.b, vec3<u32>(min(abs(_wgslsmith_sub_u32(4294967295u, 3151u)), ~firstTrailingBit(var_0.a)), 45769u, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_0.a, 14219u)), vec2<u32>(1u, ~0u))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, global4[_wgslsmith_index_u32(1u, 30u)]), countOneBits(vec4<i32>(global3.a.a.x, global3.a.a.x, 15621i, global4[_wgslsmith_index_u32(u_input.b.x, 30u)]))), _wgslsmith_clamp_i32(global3.a.a.x, ~global4[_wgslsmith_index_u32(u_input.b.x, 30u)], global3.a.a.x), firstTrailingBit(global3.a.a.x) ^ (0i << (u_input.b.x % 32u)), global3.a.a.x)), -1000f);
    var var_1 = arg_0.x;
    var var_2 = Struct_2(vec2<i32>(min((i32(-1i) * -1i) ^ global3.a.a.x, global3.a.a.x), u_input.a.x), u_input.b.x, ~1u);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -136f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b + -507f))))), 443f);
    global2 = array<Struct_2, 16>();
    return Struct_3(Struct_1(global3.a.a), 1647f);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: bool) -> Struct_3 {
    global1 = array<vec2<i32>, 27>();
    global4 = array<i32, 30>();
    global3 = func_4(vec4<bool>(global0.x, arg_2, (_wgslsmith_f_op_f32(ceil(-1000f)) != -1000f) != select(u_input.b.x > u_input.b.x, true, true), true), func_3(func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(global3.b, global3.b, 1249f, 1204f), vec4<f32>(global3.b, global3.b, 729f, global3.b))))), vec3<f32>(_wgslsmith_f_op_f32(global3.b + global3.b), 1253f, _wgslsmith_f_op_f32(830f + _wgslsmith_f_op_f32(-1117f + global3.b)))));
    global0 = !vec4<bool>(!(!(-214f == global3.b)), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b.x, 70332u)), vec2<u32>(63838u, u_input.b.x)) == u_input.b.x, any(!vec4<bool>(arg_2, true, true, false)), !arg_2);
    var var_0 = u_input.b;
    return func_4(select(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(true, true, arg_2, true)), select(vec4<bool>(false, true, global0.x, true), select(vec4<bool>(true, arg_0.x, arg_2, true), vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(true, false, arg_2, false)), select(vec4<bool>(false, true, arg_2, arg_2), vec4<bool>(arg_2, arg_2, false, true), vec4<bool>(arg_0.x, arg_0.x, false, arg_2))), all(global0.xy)), select(!select(vec4<bool>(false, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, false, global0.x, global0.x), vec4<bool>(global0.x, true, true, arg_0.x)), vec4<bool>(true, true, true, true), global0.x), vec4<bool>(global0.x, arg_0.x, select(false, all(vec4<bool>(true, arg_2, false, false)), false), true)), max(u_input.b, select(vec3<u32>(var_0.x, 0u, u_input.b.x), countOneBits(~u_input.b), (32740u & var_0.x) != 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(-1379f, global3.a.a);
    global2 = array<Struct_2, 16>();
    let var_1 = func_1(!select(!global0.yxy, select(!global0.zxy, select(vec3<bool>(global0.x, false, false), global0.zzz, true), !vec3<bool>(global0.x, global0.x, false)), true), u_input.a, true);
    let var_2 = var_0.b.x;
    global1 = array<vec2<i32>, 27>();
    global3 = Struct_3(func_1(!select(vec3<bool>(false, global0.x, true), global0.zzw, false), select(vec3<i32>(func_4(vec4<bool>(false, global0.x, global0.x, global0.x), u_input.b).a.a.x, var_2 << (1u % 32u), -var_2), global3.a.a.xzw, all(select(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, false)))), global0.x).a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1718f)) + _wgslsmith_f_op_f32(-var_1.b)), var_1.b)));
    let var_3 = !global0.x;
    let var_4 = Struct_5(~1u, -(~var_1.a.a) << (vec4<u32>(reverseBits(~u_input.b.x), select(u_input.b.x, u_input.b.x, var_3) >> (_wgslsmith_div_u32(u_input.b.x, 21953u) % 32u), u_input.b.x, u_input.b.x) % vec4<u32>(32u)), Struct_3(Struct_1(vec4<i32>(-1i, 1i, 42106i, -28085i)), _wgslsmith_f_op_f32(var_0.a + global3.b)), func_1(global0.yzx, _wgslsmith_mult_vec3_i32(u_input.a, u_input.a), true).a.a);
    var var_5 = func_1(vec3<bool>(var_3, !(~var_4.d.x == ~91935i), any(!(!global0.wyz))), ~(~vec3<i32>(i32(-1i) * -25592i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.a.x, u_input.a.x, 2147483647i), vec3<i32>(0i, var_2, var_0.b.x)))), !(!select(any(vec4<bool>(global0.x, true, true, true)), true | global0.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(31362i, vec4<u32>(u_input.b.x, u_input.b.x, max(var_4.a, ~max(var_4.a, var_4.a)), 0u));
}

