struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-204f, Struct_1(-178f, vec4<f32>(-181f, -1484f, -797f, -1078f), -1i), Struct_2(Struct_1(-1054f, vec4<f32>(649f, 1993f, -320f, 1553f), 1i), vec3<f32>(115f, 863f, -337f), 11737i, Struct_1(-572f, vec4<f32>(-520f, 979f, -1000f, 446f), -1i)), Struct_2(Struct_1(186f, vec4<f32>(-2529f, -1376f, -858f, 801f), -1i), vec3<f32>(-1000f, 1313f, -1000f), 10692i, Struct_1(-511f, vec4<f32>(-378f, 1225f, 1000f, -1041f), 41160i)), true);

var<private> global1: array<vec3<bool>, 27>;

var<private> global2: vec2<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    return 2147483647i;
}

fn func_2(arg_0: Struct_2) -> i32 {
    let var_0 = ~8551u;
    let var_1 = all(select(select(select(!vec4<bool>(global0.e, global0.e, global0.e, global0.e), vec4<bool>(false, global0.e, false, global0.e), vec4<bool>(true, global0.e, global0.e, true)), select(!vec4<bool>(true, global0.e, false, global0.e), vec4<bool>(false, true, global0.e, false), select(vec4<bool>(false, true, global0.e, false), vec4<bool>(global0.e, false, global0.e, global0.e), global0.e)), (global0.e || global0.e) | false), !(!vec4<bool>(false, true, false, global0.e)), true));
    var var_2 = _wgslsmith_div_vec3_i32(abs(min(select(-vec3<i32>(global2.x, global2.x, global2.x), vec3<i32>(-11121i, global2.x, 36847i), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(42683u, 20490u, 1u), 27u)]), -u_input.c)), vec3<i32>(-1i) * -(vec3<i32>(u_input.d.x, 2147483647i, u_input.c.x) & vec3<i32>(arg_0.d.c, -2147483647i, -90i)));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1404f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global0.d.d.b)) * vec4<f32>(1179f, global0.b.a, -752f, global0.a)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(global0.b.b))))), func_3(1u, -(vec4<i32>(global0.d.a.c, global0.b.c, u_input.d.x, var_2.x) << (vec4<u32>(var_0, var_0, 56851u, 0u) % vec4<u32>(32u))), Struct_2(Struct_1(arg_0.d.a, global0.d.d.b, arg_0.d.c), vec3<f32>(arg_0.d.b.x, global0.b.a, -934f), -var_2.x, global0.c.a), Struct_3(arg_0.b.x, arg_0.d, Struct_2(Struct_1(-2112f, global0.c.d.b, -2147483647i), arg_0.b, -11717i, Struct_1(-1089f, vec4<f32>(arg_0.b.x, arg_0.d.b.x, global0.a, arg_0.b.x), 1i)), Struct_2(Struct_1(arg_0.d.b.x, global0.b.b, global2.x), arg_0.a.b.zyw, -23467i, global0.c.d), 59808i == arg_0.a.c))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1361f, _wgslsmith_f_op_f32(select(global0.d.b.x, arg_0.a.b.x, false)), _wgslsmith_f_op_f32(ceil(arg_0.d.b.x))))), vec3<f32>(arg_0.b.x, global0.d.d.b.x, -755f))), global0.b.c, Struct_1(global0.a, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global0.b.a)))), _wgslsmith_div_f32(_wgslsmith_div_f32(953f, 1399f), _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_0.d.b.x, 456f)), global0.c.d.b.x)), -191f), 12742i));
    var var_4 = 2147483647i;
    return min(abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(8287i, 79668i, -2147483647i, arg_0.a.c), min(vec4<i32>(1i, global0.b.c, u_input.c.x, 0i), vec4<i32>(-32101i, arg_0.c, -1i, global0.b.c)))), min(~global2.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.c.x, -30600i), arg_0.c) >> (19072u % 32u)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<i32>) -> i32 {
    var var_0 = Struct_1(-1370f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.a - _wgslsmith_f_op_f32(sign(-275f))) + 250f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a)))), _wgslsmith_f_op_f32(arg_1.b.a + -143f), arg_1.a), _wgslsmith_sub_i32(14934i, _wgslsmith_div_i32(countOneBits(global0.c.c), 29690i)));
    global2 = vec2<i32>(countOneBits(global2.x), arg_2.x >> (50078u % 32u));
    var var_1 = ~vec4<u32>(u_input.b.x, u_input.b.x, 17667u << (_wgslsmith_mult_u32(u_input.a, 0u) % 32u), u_input.b.x);
    let var_2 = abs(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(arg_0.d.c, global2.x, _wgslsmith_add_i32(arg_1.c.d.c, arg_1.d.d.c)), ~arg_2.x, ~_wgslsmith_div_i32(8860i, 1i), arg_1.d.a.c), ~(~abs(vec4<i32>(var_0.c, var_0.c, arg_1.c.c, var_0.c)))));
    var var_3 = arg_1.a;
    return func_2(arg_0) >> (~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, var_1.x, 121167u, u_input.b.x), vec4<u32>(u_input.b.x, var_1.x, var_1.x, 113116u), arg_1.e), ~vec4<u32>(u_input.b.x, 4294967295u, 6585u, 4294967295u)), firstTrailingBit(~u_input.b.x)) % 32u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> Struct_3 {
    return Struct_3(411f, arg_1.a, Struct_2(Struct_1(_wgslsmith_f_op_f32(max(1142f, _wgslsmith_f_op_f32(1332f + -551f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.d.b + vec4<f32>(-1132f, global0.c.d.a, arg_1.b.x, global0.b.a))), 0i ^ global0.d.c), arg_1.b, u_input.c.x, arg_0.c.a), Struct_2(arg_1.a, _wgslsmith_f_op_vec3_f32(select(arg_0.b.b.yzx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.d.d.b.wzz + vec3<f32>(global0.c.d.a, global0.c.b.x, -337f))), true)), i32(-1i) * -13197i, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-233f)) - _wgslsmith_f_op_f32(-1159f - arg_1.d.a)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global0.c.d.b - vec4<f32>(arg_0.c.a.a, arg_1.d.b.x, arg_1.d.b.x, global0.d.a.a)))), _wgslsmith_sub_i32(arg_0.b.c >> (u_input.a % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_1.a.c), vec2<i32>(-17230i, arg_0.d.d.c))))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 27>();
    let var_0 = func_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.c.d.b.x))), global0.d.d, Struct_2(global0.d.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(1078f, -1036f, global0.b.a) + global0.d.a.b.xzx), abs(-65761i), global0.b), Struct_2(global0.d.a, global0.d.a.b.wxw, 1i, Struct_1(_wgslsmith_f_op_f32(ceil(-1600f)), global0.d.d.b, abs(2147483647i))), true), global0.d, ((func_1(Struct_2(global0.c.d, global0.b.b.xyz, u_input.d.x, global0.b), Struct_3(global0.c.a.a, global0.d.a, Struct_2(Struct_1(1202f, vec4<f32>(2131f, global0.b.a, -1264f, -1248f), -48937i), vec3<f32>(-147f, global0.c.d.b.x, -642f), -1i, Struct_1(global0.a, global0.c.a.b, global0.b.c)), global0.d, global0.e), u_input.d) < _wgslsmith_dot_vec4_i32(vec4<i32>(global0.d.d.c, u_input.d.x, 2147483647i, 2147483647i), vec4<i32>(global0.c.d.c, -66667i, global2.x, -1i))) | true) && global0.e);
    var var_1 = Struct_2(Struct_1(1162f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.b.b * vec4<f32>(var_0.b.b.x, global0.c.a.b.x, global0.a, var_0.b.a))))), ~u_input.d.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.d.a.b.x, 999f, _wgslsmith_f_op_f32(select(179f, -772f, true))))), -_wgslsmith_dot_vec4_i32(vec4<i32>(func_1(Struct_2(Struct_1(var_0.a, var_0.b.b, 1i), vec3<f32>(637f, global0.d.a.a, global0.a), 1i, Struct_1(-341f, vec4<f32>(var_0.a, global0.c.d.a, global0.b.a, 135f), -2147483647i)), Struct_3(global0.d.a.b.x, Struct_1(global0.d.d.a, global0.d.d.b, 0i), Struct_2(Struct_1(474f, vec4<f32>(var_0.c.b.x, global0.b.a, var_0.a, 817f), global0.c.a.c), vec3<f32>(var_0.a, var_0.a, -340f), 2147483647i, Struct_1(-350f, vec4<f32>(1063f, var_0.a, -1000f, var_0.c.b.x), u_input.c.x)), var_0.c, global0.e), u_input.c.yz), global2.x >> (u_input.a % 32u), global0.d.d.c, global0.d.d.c), ~vec4<i32>(-24367i, global2.x, 1i, global2.x)), global0.c.a);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(1650f + var_1.d.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.c.d.a, -796f, var_1.b.x, var_0.c.b.x), vec4<f32>(global0.d.d.a, global0.c.b.x, -250f, -530f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.a.b.x, var_1.a.a, var_0.d.d.a, 564f) * var_1.d.b)), vec4<f32>(-599f, -457f, _wgslsmith_f_op_f32(select(723f, -313f, var_0.e)), 1f)) + global0.b.b), _wgslsmith_add_i32(var_0.b.c, -var_1.c));
    global1 = array<vec3<bool>, 27>();
    var var_3 = global2.x;
    global2 = min(vec2<i32>(21420i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.d), u_input.d), func_3(~u_input.a, min(vec4<i32>(1i, global2.x, 2147483647i, global0.c.a.c), vec4<i32>(var_0.d.a.c, -21188i, -7307i, global0.d.a.c)), global0.c, func_4(Struct_3(207f, var_1.d, Struct_2(var_0.d.a, vec3<f32>(var_1.b.x, var_1.b.x, var_0.b.a), 0i, Struct_1(949f, vec4<f32>(global0.b.a, 1893f, global0.a, -670f), var_2.c)), global0.d, false), global0.d, global0.e)))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(i32(-1i) * -15392i, -2147483647i), countOneBits(u_input.c.zz), firstTrailingBit(~u_input.c.zy) & ~vec2<i32>(-1i, u_input.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec4<u32>(u_input.b.x, 23749u, 16782u, 4294967295u))) & ~vec4<u32>(1u, 1u, 1u, 1u), 1i);
}

