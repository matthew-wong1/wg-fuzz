struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec2<bool>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: i32;

var<private> global2: array<Struct_1, 30>;

var<private> global3: array<u32, 23>;

var<private> global4: array<i32, 20>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<f32>) -> vec2<u32> {
    global2 = array<Struct_1, 30>();
    var var_0 = Struct_4(-6343i, Struct_3(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), true))), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), arg_0, -55423i);
    var var_1 = _wgslsmith_f_op_f32(exp2(arg_1.x));
    let var_2 = var_0.b.a.x & any(!select(select(vec3<bool>(true, true, false), var_0.b.a, vec3<bool>(false, false, var_0.c.x)), select(var_0.b.a, var_0.b.a, true), var_0.b.a));
    let var_3 = Struct_2(u_input.c.xw, _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(88556u, 23u)], 23u)], 23u)], firstTrailingBit(u_input.d.x), firstLeadingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 23u)], 23u)], 23u)])), 23u)] << (_wgslsmith_add_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(1u, 23u)], 45727u, u_input.b.x), global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(4294967295u, 23u)], 23u)]) % 32u), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(max(max(u_input.b.x, 1u), ~80370u), u_input.d.x), 23u)]), any(select(select(vec4<bool>(var_2, var_2, var_0.c.x, var_2), vec4<bool>(false, var_2, var_2, false), vec4<bool>(false, var_0.c.x, var_2, var_2)), !vec4<bool>(var_0.b.a.x, true, true, true), vec4<bool>(var_2, var_0.b.a.x, true, var_2))) || var_2);
    return u_input.d.yz;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec4<f32>) -> bool {
    global2 = array<Struct_1, 30>();
    var var_0 = -1250f;
    var var_1 = Struct_2(u_input.c.zw, global3[_wgslsmith_index_u32(firstLeadingBit(1u) ^ (~(~0u) << (~u_input.d.x % 32u)), 23u)], false);
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, ~abs(~vec2<u32>(4294967295u, 1u))), 30u)];
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(arg_3));
    return !any(!vec4<bool>(true, true, true || var_1.c, !arg_1.c));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: f32) -> i32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2022f, arg_2, 1552f), vec3<f32>(2230f, 596f, 115f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2, arg_2, arg_2))))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -555f, arg_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -907f, -1407f))))))));
    global1 = abs(u_input.a);
    let var_1 = _wgslsmith_f_op_f32(trunc(-2132f));
    let var_2 = func_4(~func_3(~abs(1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1345f, var_1, -165f))), Struct_2(firstTrailingBit(select(u_input.c.xz, u_input.c.zx, vec2<bool>(false, false))) << (~(vec2<u32>(arg_1, 4294967295u) >> (vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 23u)], 23u)], 0u) % vec2<u32>(32u))) % vec2<u32>(32u)), max(u_input.b.x, 1u), any(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)))), vec2<u32>(global3[_wgslsmith_index_u32(14328u, 23u)], arg_1), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(288f, var_0.x, var_0.x, 112f), vec4<f32>(var_0.x, -1709f, var_0.x, 995f)) + vec4<f32>(477f, -1576f, _wgslsmith_f_op_f32(-arg_2), arg_2)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(180f, arg_2, 1319f, -438f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, var_1, 1500f, -1009f) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1168f, arg_2, -1659f, -492f)))), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true))))));
    global0 = 94213u;
    return ~(-countOneBits(abs(u_input.a)));
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: vec2<f32>) -> vec3<bool> {
    global2 = array<Struct_1, 30>();
    var var_0 = ~global3[_wgslsmith_index_u32(1u, 23u)];
    let var_1 = max(vec4<u32>(select(reverseBits(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 1u, 0u), vec3<u32>(1u, u_input.d.x, 1u)), arg_0.b.a.x) | ~97854u, 0u, u_input.b.x, max(~reverseBits(0u), 7566u)), vec4<u32>(u_input.e.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(countOneBits(18544u), 23u)], 23u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(u_input.d.yy, vec2<u32>(1u, 49734u)), select(vec2<u32>(13914u, 4294967295u), u_input.e.xx, vec2<bool>(arg_0.b.a.x, arg_0.b.a.x))), 23u)] >> (_wgslsmith_div_u32(firstTrailingBit(1u), 794u) % 32u), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e.x, 23u)], 23u)]));
    var var_2 = reverseBits(u_input.a);
    var var_3 = arg_2.x;
    return select(arg_0.b.a, vec3<bool>(arg_0.b.a.x, any(vec4<bool>(u_input.d.x >= global3[_wgslsmith_index_u32(4294967295u, 23u)], arg_0.b.a.x && arg_0.c.x, arg_0.b.a.x, arg_0.c.x)), !(_wgslsmith_div_f32(2319f, arg_2.x) >= arg_2.x)), !arg_0.b.a);
}

fn func_1(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_3(func_5(Struct_4(_wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(4163u, 20u)], 0i, func_2(arg_0.a, 0u, 1070f)), Struct_3(!vec3<bool>(false, arg_0.c, arg_0.c)), select(!vec2<bool>(arg_0.c, arg_0.c), select(vec2<bool>(true, arg_0.c), vec2<bool>(arg_0.c, arg_0.c), true), select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(true, false), vec2<bool>(true, arg_0.c))), _wgslsmith_mult_i32(arg_0.a.x, -u_input.a), func_2(~arg_0.a, _wgslsmith_mult_u32(arg_0.b, u_input.d.x), -1215f)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, -32850i, arg_0.a.x, u_input.c.x), vec4<i32>(arg_0.a.x, arg_0.a.x, -5030i, u_input.c.x)), _wgslsmith_sub_i32(-global4[_wgslsmith_index_u32(4294967295u, 20u)], firstTrailingBit(u_input.c.x))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(1008f, 485f), _wgslsmith_f_op_f32(f32(-1f) * -1020f))))));
    let var_1 = any(vec3<bool>(false, var_0.a.x, global3[_wgslsmith_index_u32(4294967295u ^ global3[_wgslsmith_index_u32(4294967295u, 23u)], 23u)] >= (global3[_wgslsmith_index_u32(arg_0.b, 23u)] & 52627u))) || true;
    var var_2 = !var_1;
    global2 = array<Struct_1, 30>();
    var_0 = Struct_3(vec3<bool>(var_1, var_0.a.x, true));
    return ~(~abs(u_input.b.x));
}

fn func_6(arg_0: vec4<u32>, arg_1: i32) -> Struct_3 {
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 30u)];
    let var_1 = Struct_4(min(global4[_wgslsmith_index_u32(max(~(~var_0.a), 0u), 20u)], ~(-_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(var_0.a, 20u)], -31730i))), Struct_3(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, false, false)), !func_5(Struct_4(3274i, Struct_3(vec3<bool>(true, true, true)), vec2<bool>(false, true), global4[_wgslsmith_index_u32(u_input.b.x, 20u)], arg_1), u_input.c.x, vec2<f32>(596f, -395f)), !func_5(Struct_4(582i, Struct_3(vec3<bool>(true, true, true)), vec2<bool>(false, false), global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.x, 23u)], 20u)], u_input.c.x), -42640i, vec2<f32>(1089f, 989f)))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), -1i, 18340i);
    let var_2 = var_1.c.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1860f, 1070f, -453f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1423f, -1000f, 228f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(132f, -1140f, 1000f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1155f, -124f, -2420f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2009f, -1707f, 420f) - vec3<f32>(1000f, -430f, -215f))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -735f, -627f) * vec3<f32>(295f, -2289f, -1186f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -631f), _wgslsmith_f_op_f32(187f - 1137f), 1916f)), any(select(!vec4<bool>(true, var_2, true, true), select(vec4<bool>(var_1.c.x, var_2, var_1.b.a.x, var_1.b.a.x), vec4<bool>(var_2, false, var_2, var_1.c.x), vec4<bool>(true, var_2, true, var_1.b.a.x)), true)))));
    global1 = 2147483647i;
    return Struct_3(var_1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(min(-23935i, global4[_wgslsmith_index_u32(~u_input.d.x, 20u)] >> (~max(global3[_wgslsmith_index_u32(49707u, 23u)], global3[_wgslsmith_index_u32(6406u, 23u)]) % 32u)), func_6(_wgslsmith_mod_vec4_u32(vec4<u32>(func_1(Struct_2(vec2<i32>(global4[_wgslsmith_index_u32(0u, 20u)], u_input.a), u_input.b.x, false)), func_1(Struct_2(vec2<i32>(-53107i, u_input.c.x), global3[_wgslsmith_index_u32(3638u, 23u)], false)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e.x, 23u)], 23u)], u_input.e.x), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(1u, 23u)], global3[_wgslsmith_index_u32(u_input.e.x, 23u)], 82838u), ~vec4<u32>(1u, global3[_wgslsmith_index_u32(u_input.d.x, 23u)], global3[_wgslsmith_index_u32(4294967295u, 23u)], 28205u))), -u_input.c.x), vec2<bool>(all(select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), false), global4[_wgslsmith_index_u32(90316u, 20u)] > global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(68584u, 23u)], 20u)])), true), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(select(u_input.c, _wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.a)), true), _wgslsmith_mult_vec4_i32(vec4<i32>(56051i, 2147483647i, global4[_wgslsmith_index_u32(u_input.e.x, 20u)], global4[_wgslsmith_index_u32(4294967295u, 20u)]), select(vec4<i32>(global4[_wgslsmith_index_u32(u_input.d.x, 20u)], global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 23u)], 20u)], global4[_wgslsmith_index_u32(29275u, 20u)], 0i), u_input.c, true))), (vec4<i32>(1i, 0i, u_input.a, 2147483647i) >> (~vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(u_input.b.x, 23u)], u_input.d.x, u_input.d.x) % vec4<u32>(32u))) | vec4<i32>(min(u_input.c.x, -8606i), firstLeadingBit(1i), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(0u, 23u)], global3[_wgslsmith_index_u32(u_input.d.x, 23u)]), 20u)], -1i)), _wgslsmith_mod_i32(60617i, global4[_wgslsmith_index_u32(4294967295u, 20u)]) << (firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, abs(global3[_wgslsmith_index_u32(u_input.e.x, 23u)]), global3[_wgslsmith_index_u32(~4294967295u, 23u)])) % 32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1499f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -507f, -718f));
    global1 = 1i;
    let var_2 = var_0.b;
    var var_3 = ((firstLeadingBit(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d.x, u_input.e.x), 20u)]) ^ 1i) & -44227i) | 22513i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(~(~(~vec2<u32>(0u, u_input.d.x))), u_input.d.zx, vec2<u32>(global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.e.x, 1u, 0u), 23u)], _wgslsmith_div_u32(firstTrailingBit(0u), ~2440u))), reverseBits(countOneBits(u_input.c)));
}

