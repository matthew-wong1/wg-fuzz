struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(-1508f, 1000f, 308f), vec3<f32>(669f, -206f, 1226f), vec3<f32>(-1262f, 385f, -2184f), vec3<f32>(-365f, -143f, -1582f), vec3<f32>(392f, -299f, 1762f), vec3<f32>(-253f, -1077f, 692f), vec3<f32>(2136f, -1278f, -753f), vec3<f32>(2057f, -1164f, 1629f), vec3<f32>(861f, -615f, -492f), vec3<f32>(-1953f, -2003f, -1681f), vec3<f32>(1158f, -1481f, 1120f), vec3<f32>(1510f, -502f, -1719f), vec3<f32>(1265f, 1778f, -1000f), vec3<f32>(1396f, -100f, 780f), vec3<f32>(-1109f, 510f, 647f), vec3<f32>(-1552f, -134f, 157f), vec3<f32>(1000f, -313f, 698f), vec3<f32>(-1928f, 673f, 1146f), vec3<f32>(419f, -752f, 1512f), vec3<f32>(-642f, -1153f, 242f), vec3<f32>(1172f, 2191f, -1916f), vec3<f32>(1130f, 600f, -1122f), vec3<f32>(297f, 1485f, 612f), vec3<f32>(-607f, -1117f, -197f));

var<private> global2: f32 = -940f;

var<private> global3: array<bool, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: f32, arg_1: bool) -> u32 {
    global3 = array<bool, 29>();
    return u_input.a;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec2<f32> {
    global2 = 840f;
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), 482f, arg_0, 960f) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-502f, _wgslsmith_f_op_f32(arg_1.a.x * global0.a.x))), arg_0, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))), 811f));
    global1 = array<vec3<f32>, 24>();
    let var_1 = Struct_3(vec4<f32>(-741f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1265f, _wgslsmith_f_op_f32(max(global0.a.x, var_0.x))) - var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.a.x, -655f), _wgslsmith_f_op_f32(min(152f, -1247f))))), -483f), Struct_1(_wgslsmith_f_op_vec3_f32(select(arg_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a - vec3<f32>(arg_1.a.x, global0.a.x, arg_0))), vec3<bool>(false, global0.c, !global3[_wgslsmith_index_u32(33054u, 29u)]))), global0.b, all(select(!vec4<bool>(false, arg_1.c, false, arg_1.c), !vec4<bool>(global0.c, false, false, true), select(vec4<bool>(arg_1.c, global0.c, global0.c, global0.c), vec4<bool>(true, true, false, true), global0.c))), ~(~(~47306u))), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(0u), global0.b), 29u)]);
    global3 = array<bool, 29>();
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * global0.a.x)))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_1));
    var var_1 = 203f;
    return global3[_wgslsmith_index_u32(~max(~(~1u), 36834u), 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 24>();
    var var_0 = vec2<bool>(u_input.a >= firstTrailingBit(select(func_1(877f, false), global0.d, func_2(global3[_wgslsmith_index_u32(4294967295u, 29u)], Struct_1(vec3<f32>(-809f, -250f, global0.a.x), global0.b, global0.c, global0.d), vec3<u32>(global0.d, 10079u, u_input.a)))), func_2(-11487i > firstTrailingBit(select(u_input.c, u_input.c, true)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, global0.a.x)), ~(~4294967295u), global3[_wgslsmith_index_u32(global0.b, 29u)], ~(u_input.a >> (u_input.a % 32u))), reverseBits(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(7025u, 12869u, u_input.a), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(26190u, u_input.a, u_input.a)), select(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(15374u, u_input.a, u_input.a), vec3<bool>(true, global0.c, global3[_wgslsmith_index_u32(global0.d, 29u)]))))));
    let var_1 = 716f;
    var_0 = select(select(!vec2<bool>(global3[_wgslsmith_index_u32(global0.b, 29u)], var_0.x), select(vec2<bool>(any(vec4<bool>(true, var_0.x, false, false)), true), select(select(vec2<bool>(true, false), vec2<bool>(global3[_wgslsmith_index_u32(1u, 29u)], global3[_wgslsmith_index_u32(60201u, 29u)]), true), vec2<bool>(var_0.x, global0.c), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 29u)], true)), all(!vec2<bool>(true, var_0.x))), global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(abs(u_input.a), _wgslsmith_div_u32(u_input.a, u_input.a)), 29u)]), select(select(!select(vec2<bool>(true, true), vec2<bool>(global0.c, true), true), vec2<bool>(global0.c, var_0.x), _wgslsmith_f_op_f32(floor(190f)) < global0.a.x), select(select(vec2<bool>(true, true), !vec2<bool>(var_0.x, false), true), vec2<bool>(true, true), vec2<bool>(true, !global0.c)), all(select(!vec4<bool>(var_0.x, false, global3[_wgslsmith_index_u32(65417u, 29u)], var_0.x), !vec4<bool>(global0.c, true, global3[_wgslsmith_index_u32(u_input.a, 29u)], true), vec4<bool>(global0.c, global3[_wgslsmith_index_u32(1u, 29u)], var_0.x, false)))), true);
    let var_2 = firstLeadingBit(_wgslsmith_mod_vec2_i32(u_input.b.xx, countOneBits(vec2<i32>(u_input.b.x, -1i) << (_wgslsmith_mult_vec2_u32(vec2<u32>(15996u, global0.b), vec2<u32>(4294967295u, global0.d)) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(vec4<u32>(global0.d, 1u, u_input.a, 4294967295u) >> (vec4<u32>(global0.d, 1u, 4294967295u, global0.d) % vec4<u32>(32u)), vec4<u32>(min(0u, u_input.a), 67399u, _wgslsmith_mod_u32(u_input.a, 4294967295u), 0u)), ((_wgslsmith_div_vec4_i32(vec4<i32>(0i, 2147483647i, var_2.x, var_2.x), vec4<i32>(var_2.x, u_input.b.x, 0i, 1i)) & vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x)) ^ select(vec4<i32>(-18389i, 28410i, -27179i, var_2.x), _wgslsmith_add_vec4_i32(u_input.b, u_input.b), vec4<bool>(var_0.x, global0.c, false, false))) | ~vec4<i32>(abs(u_input.b.x), ~(-1i), u_input.c, select(0i, 1992i, var_0.x)), reverseBits(u_input.c));
}

