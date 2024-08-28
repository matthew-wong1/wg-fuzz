struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec3<u32>(4294967295u, 5125u, 4294967295u)), Struct_3(vec3<u32>(1u, 90225u, 15423u)), Struct_3(vec3<u32>(33023u, 4294967295u, 0u)), Struct_3(vec3<u32>(1u, 4294967295u, 0u)), Struct_3(vec3<u32>(1u, 1u, 1u)), Struct_3(vec3<u32>(17380u, 19725u, 1u)), Struct_3(vec3<u32>(6280u, 34106u, 50674u)), Struct_3(vec3<u32>(28736u, 1u, 11735u)), Struct_3(vec3<u32>(2834u, 30973u, 4695u)), Struct_3(vec3<u32>(75827u, 12194u, 1329u)), Struct_3(vec3<u32>(0u, 1u, 0u)), Struct_3(vec3<u32>(3887u, 13752u, 1u)), Struct_3(vec3<u32>(0u, 0u, 64011u)), Struct_3(vec3<u32>(0u, 19472u, 26492u)), Struct_3(vec3<u32>(0u, 1u, 7607u)), Struct_3(vec3<u32>(78704u, 24599u, 73406u)), Struct_3(vec3<u32>(22953u, 6006u, 51074u)));

var<private> global1: vec3<i32>;

var<private> global2: array<vec2<f32>, 5>;

var<private> global3: vec4<f32> = vec4<f32>(-1000f, 187f, 121f, -493f);

var<private> global4: array<bool, 24> = array<bool, 24>(true, true, true, true, true, true, true, true, true, true, true, true, false, false, true, true, true, false, false, false, false, true, false, true);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_3) -> f32 {
    return 643f;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(580f, arg_2.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(519f * _wgslsmith_f_op_f32(round(-428f)))), _wgslsmith_f_op_f32(func_3(all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(580f, global3.x, arg_1.e.x, arg_2.a.e.x) + vec4<f32>(global3.x, 475f, -360f, arg_2.a.c)) + _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, arg_0.x, arg_1.c, arg_1.c), vec4<f32>(arg_1.e.x, 851f, global3.x, -769f))), global0[_wgslsmith_index_u32(abs(arg_1.b & 33957u), 17u)]))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.c, -1116f, 1000f, global3.x)))))));
    var var_0 = select(select(select(vec3<bool>(global4[_wgslsmith_index_u32(min(71298u, arg_2.a.b), 24u)], all(vec4<bool>(global4[_wgslsmith_index_u32(arg_1.b, 24u)], arg_1.d.x, false, global4[_wgslsmith_index_u32(arg_2.a.b, 24u)])), true), select(select(vec3<bool>(global4[_wgslsmith_index_u32(0u, 24u)], arg_1.d.x, false), vec3<bool>(arg_2.a.d.x, arg_1.d.x, true), vec3<bool>(arg_2.a.d.x, false, arg_1.d.x)), vec3<bool>(false, arg_2.a.d.x, false), arg_1.d.x), !(!vec3<bool>(global4[_wgslsmith_index_u32(arg_2.a.b, 24u)], false, arg_1.d.x))), !select(!vec3<bool>(true, true, global4[_wgslsmith_index_u32(arg_1.b, 24u)]), vec3<bool>(false, arg_1.d.x, arg_2.a.d.x), select(vec3<bool>(global4[_wgslsmith_index_u32(16756u, 24u)], false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), vec3<bool>(-34919i < _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.x, u_input.c), arg_1.a), true, false)), vec3<bool>(!(arg_1.d.x || any(arg_1.d)), (-arg_2.b >> (4294967295u % 32u)) > ~(-53830i), true), true);
    global2 = array<vec2<f32>, 5>();
    let var_1 = firstLeadingBit(0u);
    let var_2 = 0i;
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(min(u_input.b.wwy, vec3<u32>(var_1, arg_1.b, 22860u)), vec3<u32>(60372u, 11439u >> (arg_1.b % 32u), min(arg_1.b, arg_1.b))), arg_1.b) << (38887u % 32u);
}

fn func_4(arg_0: u32, arg_1: u32) -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(~abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, global1.x), global1.zx)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, u_input.d, 4294967295u, arg_0)), ~u_input.b) ^ _wgslsmith_clamp_u32(abs(4294967295u), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(92799u, 1u, arg_0, 18709u)), 61208u), 1f, !select(select(vec2<bool>(global4[_wgslsmith_index_u32(arg_1, 24u)], false), vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.b.x, 24u)]), global4[_wgslsmith_index_u32(u_input.d, 24u)]), select(vec2<bool>(false, false), vec2<bool>(false, true), global4[_wgslsmith_index_u32(1u, 24u)]), select(vec2<bool>(global4[_wgslsmith_index_u32(1u, 24u)], false), vec2<bool>(true, global4[_wgslsmith_index_u32(12181u, 24u)]), vec2<bool>(global4[_wgslsmith_index_u32(arg_1, 24u)], true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-599f))), global3.x)), _wgslsmith_dot_vec3_i32(~(~(-vec3<i32>(u_input.c, -6457i, 10575i))), _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(u_input.c, -1i, u_input.c)) >> ((u_input.b.wzz << (u_input.b.xwx % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, 1i), vec3<i32>(0i, -23782i, global1.x)))));
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.a.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -1216f), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.x, var_0.a.c))))));
    var var_1 = -4829i;
    var var_2 = all(vec4<bool>(!global4[_wgslsmith_index_u32(reverseBits(~39828u), 24u)], any(select(!vec3<bool>(var_0.a.d.x, false, false), select(vec3<bool>(var_0.a.d.x, false, true), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 24u)], global4[_wgslsmith_index_u32(u_input.b.x, 24u)], var_0.a.d.x), var_0.a.d.x), false)), any(select(select(vec3<bool>(false, true, var_0.a.d.x), vec3<bool>(false, true, global4[_wgslsmith_index_u32(u_input.a.x, 24u)]), var_0.a.d.x), select(vec3<bool>(false, global4[_wgslsmith_index_u32(arg_1, 24u)], false), vec3<bool>(false, true, true), vec3<bool>(var_0.a.d.x, var_0.a.d.x, false)), true)), true));
    global3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.e.x, 1084f, global3.x, 565f), vec4<f32>(-591f, 2038f, global3.x, var_0.a.c))), _wgslsmith_div_vec4_f32(vec4<f32>(601f, var_0.a.c, 984f, 2318f), vec4<f32>(var_0.a.c, global3.x, 446f, var_0.a.e.x)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, var_0.a.c))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-849f, 1429f, 1480f, -1047f))))), vec4<f32>(_wgslsmith_f_op_f32(var_0.a.c - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, -241f)), var_0.a.e.x, -1085f))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global2[_wgslsmith_index_u32(2656u, 5u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.xy))))));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: vec4<f32>) -> bool {
    let var_0 = global4[_wgslsmith_index_u32(arg_0.a.b, 24u)];
    var var_1 = Struct_1(-_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(arg_0.a.a, ~global1.zy), ~reverseBits(vec2<i32>(-9251i, global1.x))), ~arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-840f)))) * -1286f), vec2<bool>(!((-1000f > arg_0.a.e.x) || any(arg_0.a.d)), reverseBits(arg_2) > _wgslsmith_add_u32(22200u, 1u)), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_add_u32(u_input.d & arg_0.a.b, 1u) ^ arg_0.a.b, firstLeadingBit(func_2(global3.yy, arg_0.a, Struct_2(Struct_1(vec2<i32>(u_input.c, -2147483647i), arg_0.a.b, -244f, arg_0.a.d, vec2<f32>(1347f, 1000f)), -1i))) >> (_wgslsmith_div_u32(7093u, u_input.a.x) % 32u))));
    global0 = array<Struct_3, 17>();
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(4294967295u, firstLeadingBit(~1u)), 17u)];
    global1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(firstLeadingBit(-28202i), 0i, ~(-u_input.c)), select(select(_wgslsmith_mod_vec3_i32(vec3<i32>(31679i, u_input.c, 4853i) | vec3<i32>(-663i, 9435i, -2147483647i), abs(vec3<i32>(2147483647i, -1i, 37604i))), abs(-vec3<i32>(20539i, var_1.a.x, -8125i)), !select(vec3<bool>(true, global4[_wgslsmith_index_u32(arg_0.a.b, 24u)], global4[_wgslsmith_index_u32(var_1.b, 24u)]), vec3<bool>(true, var_1.d.x, arg_0.a.d.x), vec3<bool>(arg_1, true, false))), abs(reverseBits(vec3<i32>(2147483647i, global1.x, arg_0.a.a.x) >> (u_input.b.wxy % vec3<u32>(32u)))), !select(select(vec3<bool>(false, true, true), vec3<bool>(var_1.d.x, false, false), global4[_wgslsmith_index_u32(var_1.b, 24u)]), vec3<bool>(true, false, true), !vec3<bool>(true, arg_1, arg_1))), ~reverseBits(countOneBits(-vec3<i32>(-11981i, -2147483647i, u_input.c))));
    return all(vec4<bool>(all(!var_1.d) && !(arg_3.x < var_1.e.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_3.x, -518f)), -267f)) < _wgslsmith_f_op_f32(arg_3.x * -1083f), !(!any(vec3<bool>(var_1.d.x, arg_0.a.d.x, true))), false | arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(vec2<i32>(abs(5406i), _wgslsmith_div_i32(0i, _wgslsmith_sub_i32(-46283i, 1i))), u_input.a.x, _wgslsmith_f_op_f32(-global3.x), vec2<bool>(!func_1(Struct_2(Struct_1(vec2<i32>(u_input.c, global1.x), 86578u, 931f, vec2<bool>(global4[_wgslsmith_index_u32(u_input.d, 24u)], true), global3.yy), u_input.c), global4[_wgslsmith_index_u32(25746u, 24u)], u_input.d, vec4<f32>(global3.x, global3.x, global3.x, -773f)), any(vec4<bool>(true, global4[_wgslsmith_index_u32(26770u, 24u)], true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-508f, global3.x), vec2<f32>(global3.x, global3.x)))))), ~1i);
    let var_1 = vec4<u32>(~firstTrailingBit(var_0.a.b), firstLeadingBit(4294967295u), ~(~u_input.b.x), 1u);
    let var_2 = global1.x;
    let var_3 = Struct_2(var_0.a, u_input.c);
    global4 = array<bool, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(3341i, -18679i, var_0.b));
}

