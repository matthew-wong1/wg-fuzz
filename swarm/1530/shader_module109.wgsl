struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_2, 12>;

var<private> global2: bool = true;

var<private> global3: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(false, true, vec3<bool>(true, true, true), Struct_1(vec3<i32>(1i, 0i, i32(-2147483648)), vec4<bool>(false, false, true, true)), false), Struct_2(false, true, vec3<bool>(true, false, true), Struct_1(vec3<i32>(-30452i, -26281i, 5664i), vec4<bool>(false, true, false, false)), true), Struct_2(false, true, vec3<bool>(false, true, true), Struct_1(vec3<i32>(1i, 7343i, 79156i), vec4<bool>(true, true, false, true)), false), Struct_2(false, false, vec3<bool>(true, true, true), Struct_1(vec3<i32>(2147483647i, 1i, -1i), vec4<bool>(true, false, true, false)), true), Struct_2(false, false, vec3<bool>(false, false, false), Struct_1(vec3<i32>(-22073i, -1i, -1i), vec4<bool>(false, true, false, true)), true), Struct_2(false, false, vec3<bool>(true, false, false), Struct_1(vec3<i32>(2147483647i, 18283i, -1i), vec4<bool>(true, true, true, false)), false), Struct_2(false, true, vec3<bool>(false, true, true), Struct_1(vec3<i32>(2147483647i, -6677i, 2147483647i), vec4<bool>(true, true, true, true)), false), Struct_2(false, true, vec3<bool>(false, true, false), Struct_1(vec3<i32>(i32(-2147483648), -1i, 0i), vec4<bool>(true, true, true, true)), true), Struct_2(false, false, vec3<bool>(false, false, true), Struct_1(vec3<i32>(0i, -1i, 67244i), vec4<bool>(false, true, true, true)), true), Struct_2(false, true, vec3<bool>(true, false, true), Struct_1(vec3<i32>(8166i, -1i, 0i), vec4<bool>(false, false, true, false)), true), Struct_2(true, false, vec3<bool>(true, false, true), Struct_1(vec3<i32>(-16344i, 0i, -1i), vec4<bool>(true, false, true, true)), true), Struct_2(false, false, vec3<bool>(false, false, true), Struct_1(vec3<i32>(3273i, i32(-2147483648), 9615i), vec4<bool>(true, false, true, true)), true), Struct_2(true, true, vec3<bool>(true, false, true), Struct_1(vec3<i32>(-39668i, i32(-2147483648), -6966i), vec4<bool>(false, true, false, true)), false), Struct_2(true, true, vec3<bool>(true, false, true), Struct_1(vec3<i32>(-33286i, -1i, -1i), vec4<bool>(false, false, true, false)), true), Struct_2(false, false, vec3<bool>(true, true, true), Struct_1(vec3<i32>(2147483647i, -44153i, -54069i), vec4<bool>(true, true, false, false)), true), Struct_2(true, true, vec3<bool>(false, false, false), Struct_1(vec3<i32>(7178i, -1i, -4063i), vec4<bool>(true, false, true, true)), false), Struct_2(true, false, vec3<bool>(false, true, false), Struct_1(vec3<i32>(-1i, 2147483647i, -37544i), vec4<bool>(false, true, false, false)), true), Struct_2(true, true, vec3<bool>(false, true, false), Struct_1(vec3<i32>(-1i, 21703i, i32(-2147483648)), vec4<bool>(false, false, false, true)), false), Struct_2(false, false, vec3<bool>(true, true, true), Struct_1(vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec4<bool>(true, true, true, false)), true), Struct_2(false, true, vec3<bool>(true, false, false), Struct_1(vec3<i32>(2147483647i, 39487i, 2147483647i), vec4<bool>(true, true, false, false)), false), Struct_2(true, false, vec3<bool>(false, true, true), Struct_1(vec3<i32>(47098i, -1i, 1i), vec4<bool>(true, false, false, false)), true), Struct_2(true, false, vec3<bool>(false, true, false), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -17831i), vec4<bool>(true, true, true, false)), true), Struct_2(false, true, vec3<bool>(false, false, true), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<bool>(false, false, true, false)), false), Struct_2(false, false, vec3<bool>(true, false, true), Struct_1(vec3<i32>(i32(-2147483648), 0i, -78468i), vec4<bool>(true, true, false, true)), false), Struct_2(false, true, vec3<bool>(false, false, true), Struct_1(vec3<i32>(-1i, i32(-2147483648), 64543i), vec4<bool>(false, true, true, true)), true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))), arg_0);
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-195f, 134f, 1000f, 762f), _wgslsmith_f_op_vec4_f32(vec4<f32>(137f, global0.x, 996f, 1011f) + vec4<f32>(arg_2.a, arg_2.a, arg_2.a, -374f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a), 200f, arg_2.a, global0.x), vec4<f32>(-638f, -511f, _wgslsmith_f_op_f32(-arg_2.a), func_2(arg_3.d).a)))) * vec4<f32>(-1575f, _wgslsmith_f_op_f32(715f - -725f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-609f))), _wgslsmith_div_f32(global0.x, 494f)));
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global0.xy, vec2<f32>(global0.x, _wgslsmith_f_op_f32(sign(1000f)))), vec2<f32>(1213f, _wgslsmith_f_op_f32(step(2449f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -219f), _wgslsmith_f_op_f32(floor(arg_1.a))))))), !vec2<bool>(any(select(vec2<bool>(arg_2.b.b.x, true), arg_2.b.b.zz, vec2<bool>(arg_2.b.b.x, false))), arg_2.b.b.x)));
    let var_1 = func_2(func_2(Struct_1(-arg_1.b.a, func_2(arg_2.b).b.b)).b);
    let var_2 = u_input.b.x;
    var var_3 = -1000f;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1152f, -103f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1229f, 415f)), vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(var_0 - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.x)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>) -> vec4<f32> {
    let var_0 = ~arg_0.zx;
    var var_1 = _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(func_2(Struct_1(vec3<i32>(1i, 0i, -2147483647i), vec4<bool>(true, true, true, true))).a + _wgslsmith_f_op_f32(-1822f + 1f)));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1621f, -732f, global0.x, arg_1.x) + vec4<f32>(-2192f, 1694f, arg_1.x, 1059f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-123f, 309f, arg_1.x, arg_1.x)))), vec4<f32>(global0.x, -929f, 605f, _wgslsmith_f_op_f32(ceil(842f))), any(vec3<bool>(true, true, true))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-220f, arg_1.x, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) * _wgslsmith_f_op_f32(-2597f * arg_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, arg_1.x, -249f, -875f) * vec4<f32>(global0.x, -474f, arg_1.x, global0.x)), vec4<f32>(global0.x, 807f, 1017f, arg_1.x), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true))))))));
    var var_2 = vec4<bool>(true, true, arg_1.x < _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 706f), (abs(_wgslsmith_mod_u32(var_0.x, var_0.x)) ^ arg_0.x) > 30446u);
    global2 = var_2.x;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(835f, -860f, -1080f, 497f)))))));
}

fn func_1() -> vec3<u32> {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(0u, 40577u), 4294967295u, abs(35673u)), 12u)];
    global3 = array<Struct_2, 25>();
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_4(vec3<u32>(abs(4294967295u), 9020u, u_input.c), _wgslsmith_f_op_vec2_f32(func_3(u_input.b.x, Struct_3(global0.x, Struct_1(var_0.d.a, var_0.d.b)), func_2(var_0.d), global1[_wgslsmith_index_u32(u_input.c, 12u)])))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(755f, 1811f, global0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.x, -149f, -734f) - vec4<f32>(1000f, -884f, 2346f, global0.x))))), !func_2(var_0.d).b.b));
    let var_1 = func_2(var_0.d);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(max(-952f, _wgslsmith_f_op_f32(exp2(global0.x)))), Struct_1(var_0.d.a, select(vec4<bool>(!var_0.c.x, u_input.b.x < 33593u, 2147483647i >= var_0.d.a.x, true), select(vec4<bool>(false, true, false, var_0.a), select(var_0.d.b, vec4<bool>(var_0.e, true, var_1.b.b.x, var_1.b.b.x), false), true), any(select(vec2<bool>(true, true), var_0.c.yz, var_0.d.b.x)))));
    return _wgslsmith_clamp_vec3_u32(firstLeadingBit(firstTrailingBit(~(vec3<u32>(3658u, u_input.b.x, 45527u) ^ vec3<u32>(1u, 105739u, 1u)))), vec3<u32>(select(~_wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.c), 0u, all(var_2.b.b.yz)), _wgslsmith_add_u32(u_input.c << (74742u % 32u), u_input.b.x), u_input.c), vec3<u32>(min(u_input.b.x, 24413u), _wgslsmith_mod_u32(1u, u_input.c), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((vec3<i32>(-2147483647i, countOneBits(1i), 8859i) >> (_wgslsmith_mult_vec3_u32(func_1(), min(vec3<u32>(0u, 0u, u_input.b.x), vec3<u32>(u_input.c, u_input.b.x, 19900u))) % vec3<u32>(32u))) | _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.a, 46233i, u_input.a), vec3<i32>(abs(9478i), u_input.a ^ 45199i, u_input.a | u_input.a)), select(vec4<bool>(true, true, true, true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true)), all(func_2(func_2(Struct_1(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec4<bool>(true, true, false, true))).b).b.b.yxy)));
    var var_1 = func_2(func_2(func_2(var_0).b).b);
    let var_2 = 77180u;
    global1 = array<Struct_2, 12>();
    let var_3 = func_2(var_1.b);
    var var_4 = u_input.b;
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(abs(11285u), ~_wgslsmith_sub_vec4_i32(~(~vec4<i32>(var_3.b.a.x, var_0.a.x, 2147483647i, -11555i)), ~firstTrailingBit(vec4<i32>(-2147483647i, u_input.a, -301i, 25329i))), max(var_4.x, u_input.b.x), u_input.c, var_1.b.a.yy);
}

