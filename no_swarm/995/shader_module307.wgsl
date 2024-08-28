struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(false, Struct_2(97984u, -821f, Struct_1(0u, vec4<u32>(42548u, 0u, 49207u, 26695u), vec2<i32>(2147483647i, 25349i)), vec4<f32>(550f, 1000f, 110f, 175f)));

var<private> global1: u32 = 1u;

var<private> global2: Struct_5 = Struct_5(true, Struct_2(89400u, -1465f, Struct_1(4294967295u, vec4<u32>(4294967295u, 16791u, 48913u, 0u), vec2<i32>(-31142i, -31595i)), vec4<f32>(-1501f, 927f, 266f, 204f)));

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_3, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> f32 {
    var var_0 = global2.b.d.x;
    global3 = !(!select(vec2<bool>(any(vec4<bool>(global2.a, global2.a, false, global0.a)), select(true, false, global0.a)), !(!vec2<bool>(global0.a, false)), select(!vec2<bool>(global3.x, global3.x), select(vec2<bool>(true, false), vec2<bool>(false, global3.x), global3.x), vec2<bool>(true, true))));
    return _wgslsmith_f_op_f32(-140f - _wgslsmith_f_op_f32(-234f - -785f));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> vec4<bool> {
    global4 = array<Struct_3, 4>();
    var var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(822f - _wgslsmith_f_op_f32(func_3(global2.b.c.b, firstLeadingBit(global0.b.c.c.x)))) * global2.b.b));
    var var_1 = global0.b.c;
    global0 = Struct_5(any(!vec3<bool>(true, false, all(vec3<bool>(global3.x, global0.a, global0.a)))), global0.b);
    let var_2 = Struct_2(47033u ^ firstTrailingBit(countOneBits(~63831u)), _wgslsmith_f_op_f32(-global2.b.b), global2.b.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.b, _wgslsmith_f_op_f32(-147f * global0.b.d.x), -1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a * 837f), _wgslsmith_f_op_f32(ceil(989f))))) + vec4<f32>(_wgslsmith_f_op_f32(max(global0.b.b, _wgslsmith_f_op_f32(f32(-1f) * -554f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2295f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, 1019f)) + -1000f), -153f)));
    return !vec4<bool>(all(vec2<bool>(true, any(vec4<bool>(false, true, true, true)))), false, !(!global0.a), global3.x);
}

fn func_1() -> Struct_5 {
    global4 = array<Struct_3, 4>();
    let var_0 = select(vec4<bool>(global2.a, !any(vec3<bool>(true, true, true)), global3.x | true, false), !select(select(func_2(1096f, global2.b.c.b.zz), select(vec4<bool>(global2.a, global0.a, true, false), vec4<bool>(global2.a, true, true, global0.a), vec4<bool>(global2.a, global0.a, global0.a, false)), select(true, global0.a, true)), !vec4<bool>(true, global3.x, false, global2.a), select(select(vec4<bool>(global2.a, global2.a, global0.a, global2.a), vec4<bool>(global3.x, global0.a, false, global0.a), vec4<bool>(false, global0.a, true, true)), vec4<bool>(global0.a, false, true, global2.a), true)), true);
    let var_1 = _wgslsmith_f_op_vec2_f32(-global2.b.d.zx);
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.b.c.a, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(global2.b.c.a, global2.b.a, 1u, 25739u), global0.b.c.b, true), max(vec4<u32>(u_input.a, u_input.a, 1u, 0u), global2.b.c.b)), 36916u), ~vec2<u32>(4294967295u, ~global2.b.a)), ~_wgslsmith_add_u32(abs(~global2.b.c.b.x), global0.b.c.a)), 4u)];
    global0 = Struct_5(all(vec3<bool>(var_0.x, global3.x, global3.x)), global2.b);
    return Struct_5(all(var_0.xzx), Struct_2(abs(select(~12510u, 4294967295u, true)), _wgslsmith_f_op_f32(f32(-1f) * -666f), Struct_1(~abs(global0.b.a), global0.b.c.b, ~vec2<i32>(global2.b.c.c.x, global0.b.c.c.x)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1647f))), -1897f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -119f) - _wgslsmith_f_op_f32(round(740f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - 705f))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_5) -> vec4<f32> {
    global0 = func_1();
    var var_0 = ~5148u & arg_2.b.c.b.x;
    global3 = !vec2<bool>(arg_2.b.b >= _wgslsmith_div_f32(global0.b.d.x, arg_2.b.b), false);
    global1 = 0u;
    let var_1 = _wgslsmith_f_op_f32(-global2.b.d.x);
    return global2.b.d;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_3, 4>();
    global0 = Struct_5(global0.a, Struct_2(53930u, -1856f, Struct_1(_wgslsmith_div_u32(max(49746u, u_input.a), u_input.a), vec4<u32>(~4294967295u, global0.b.c.a, ~8676u, u_input.a), max(vec2<i32>(13784i, 38445i), vec2<i32>(global2.b.c.c.x, global0.b.c.c.x))), _wgslsmith_f_op_vec4_f32(func_4(reverseBits(~(-888i)), abs(global2.b.c.c.x), func_1()))));
    global4 = array<Struct_3, 4>();
    var var_0 = abs(1u);
    global2 = Struct_5(any(!func_2(_wgslsmith_f_op_f32(round(1157f)), global2.b.c.b.xw)), Struct_2(global2.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1().b.b) - global0.b.b), global0.b.c, _wgslsmith_f_op_vec4_f32(select(global0.b.d, vec4<f32>(_wgslsmith_f_op_f32(602f * -1000f), _wgslsmith_f_op_f32(1135f + 327f), _wgslsmith_f_op_f32(ceil(global2.b.b)), _wgslsmith_f_op_f32(f32(-1f) * -760f)), !(!vec4<bool>(true, false, global2.a, global2.a))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.d.x, global2.b.b, global2.b.b, -918f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(round(813f)), _wgslsmith_f_op_f32(select(1875f, -359f, global3.x)), 1f, -230f)))));
    let var_2 = global0.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(~(-1i), global2.b.c.c.x), var_2.c.x, -(~global2.b.c.c.x), _wgslsmith_sub_i32(-1i, _wgslsmith_sub_i32(global2.b.c.c.x, global2.b.c.c.x))), _wgslsmith_clamp_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.c.x, 8707i, global2.b.c.c.x, 1i), vec4<i32>(10818i, global0.b.c.c.x, global0.b.c.c.x, global0.b.c.c.x))), -abs(vec4<i32>(7824i, global0.b.c.c.x, global2.b.c.c.x, var_2.c.x)), -_wgslsmith_add_vec4_i32(vec4<i32>(global0.b.c.c.x, var_2.c.x, var_2.c.x, global2.b.c.c.x), vec4<i32>(-36422i, global2.b.c.c.x, -2147483647i, global0.b.c.c.x)))));
}

