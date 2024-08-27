struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 30> = array<f32, 30>(990f, 837f, -1383f, 1271f, 1000f, 1161f, -512f, 675f, 806f, -277f, 959f, 1000f, 1562f, 710f, 792f, -343f, 252f, -427f, 496f, -1000f, -1451f, 856f, 294f, -326f, 742f, -614f, -565f, -941f, 1000f, 217f);

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(1u, 544u, 0i), Struct_1(1u, 62005u, 16218i), Struct_1(1u, 4294967295u, -1222i), Struct_1(0u, 1u, 37590i), Struct_1(27017u, 0u, -73377i), Struct_1(29288u, 1u, 56977i), Struct_1(30647u, 1u, i32(-2147483648)), Struct_1(49885u, 36290u, -14926i), Struct_1(4294967295u, 4294967295u, 40127i), Struct_1(0u, 8651u, 6642i), Struct_1(0u, 1u, 20133i), Struct_1(1u, 0u, -1i), Struct_1(1u, 1u, -11885i), Struct_1(12365u, 0u, 0i), Struct_1(0u, 24009u, i32(-2147483648)), Struct_1(4294967295u, 0u, -1i), Struct_1(4294967295u, 0u, -17682i), Struct_1(3251u, 0u, i32(-2147483648)), Struct_1(4294967295u, 4294967295u, -1i), Struct_1(1u, 32289u, -1i), Struct_1(4294967295u, 29210u, 18109i), Struct_1(6748u, 25290u, 24005i), Struct_1(4294967295u, 1u, 10842i), Struct_1(0u, 4789u, 1i), Struct_1(55844u, 14946u, 2147483647i), Struct_1(76800u, 0u, i32(-2147483648)), Struct_1(0u, 1u, 60841i), Struct_1(0u, 4294967295u, 2147483647i), Struct_1(0u, 0u, -41558i), Struct_1(1u, 123057u, 1i), Struct_1(4294967295u, 7565u, 38246i));

var<private> global3: f32 = -114f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<u32>) -> f32 {
    let var_0 = ~(~26582u) ^ ~(~_wgslsmith_div_u32(arg_2.x, 305u) | reverseBits(~global0.d.x));
    global1 = array<f32, 30>();
    global3 = global0.c.x;
    let var_1 = Struct_3(_wgslsmith_mult_vec2_i32(abs(countOneBits(~vec2<i32>(1i, -8031i))), _wgslsmith_add_vec2_i32(u_input.c.xz, abs(u_input.c.yy))));
    var var_2 = Struct_1(var_0, countOneBits(~arg_2.x) >> (_wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(~49028u, 1u, 53297u)) % 32u), 1i);
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2034f + global1[_wgslsmith_index_u32(var_2.a, 30u)])))), 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -785f), -379f))) + _wgslsmith_f_op_f32(f32(-1f) * -1200f))));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-994f, global0.a, _wgslsmith_f_op_f32(func_3(global0.b.b, vec2<i32>(_wgslsmith_sub_i32(global0.b.c, global0.b.c), 1i), firstLeadingBit(~vec4<u32>(20981u, 4294967295u, global0.b.b, global0.b.a))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c.yzy - vec3<f32>(155f, global0.c.x, global1[_wgslsmith_index_u32(global0.b.a, 30u)])) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1356f, 226f, arg_1), global0.c.wxz))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c.yzy * global0.c.yyw)) * vec3<f32>(-1154f, _wgslsmith_f_op_f32(func_3(global0.b.a, vec2<i32>(arg_0, global0.b.c), vec4<u32>(1u, global0.d.x, global0.d.x, global0.b.b))), _wgslsmith_f_op_f32(select(976f, global0.a, false)))), vec3<bool>(true, !(global0.b.a == global0.b.b), !all(vec2<bool>(global0.e.x, global0.e.x))))));
    return Struct_2(_wgslsmith_f_op_f32(select(1412f, 578f, global0.e.x)), global0.b, vec4<f32>(1f, 438f, _wgslsmith_f_op_f32(f32(-1f) * -519f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(countOneBits(global0.d.x), countOneBits(vec2<i32>(global0.b.c, -40814i)), select(vec4<u32>(51010u, 43387u, 0u, 4294967295u), vec4<u32>(33990u, 584u, 1u, 4294967295u), true)))))), ~abs(reverseBits(vec2<u32>(1u, global0.b.b))), !select(select(vec2<bool>(global0.e.x, global0.e.x), vec2<bool>(false, global0.e.x), select(global0.e, vec2<bool>(global0.e.x, true), false)), vec2<bool>(global0.e.x | global0.e.x, global0.e.x | false), global0.e.x));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> vec2<i32> {
    let var_0 = select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(arg_3, arg_3, true, arg_3)) && !arg_3, any(select(vec3<bool>(arg_3, arg_3, arg_3), select(vec3<bool>(arg_1.e.x, global0.e.x, true), vec3<bool>(arg_1.e.x, arg_1.e.x, true), global0.e.x), global0.b.c >= 1i)), arg_1.b.c < global0.b.c), any(!(!global0.e)));
    global0 = func_2(arg_1.b.c, -1750f);
    let var_1 = global0.e;
    let var_2 = select(var_0.x, !select((arg_2.a >> (global0.d.x % 32u)) <= 67704u, true, true), true);
    var var_3 = 23506i;
    return ~abs(firstLeadingBit(-vec2<i32>(-1i, 65972i)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_2) -> StorageBuffer {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(4294967295u, 30u)], _wgslsmith_f_op_f32(f32(-1f) * -351f))))));
    let var_0 = _wgslsmith_clamp_vec3_u32(max(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.b, 5878u, 0u) & vec3<u32>(0u, global0.d.x, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.b, 1u, 28083u), vec3<u32>(4294967295u, global0.d.x, global0.b.a))), _wgslsmith_mult_vec3_u32(select(abs(vec3<u32>(global0.b.b, global0.b.b, 50306u)), ~vec3<u32>(2101u, 118211u, arg_3.d.x), false | arg_3.e.x), firstLeadingBit(vec3<u32>(0u, 96914u, arg_3.b.a)))), abs(vec3<u32>(1u, 0u, ~30324u)), select(vec3<u32>(arg_1.b, ~arg_1.a, ~4410u), vec3<u32>(~arg_3.b.a, global0.b.b, 30152u), vec3<bool>(any(vec4<bool>(global0.e.x, false, global0.e.x, false)), true, true)) | ~vec3<u32>(4294967295u, 31589u, 63652u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(abs(0u) & ~global0.d.x, 30u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.a, 30u)] - global1[_wgslsmith_index_u32(global0.b.a, 30u)]), _wgslsmith_f_op_f32(arg_3.a * global1[_wgslsmith_index_u32(global0.d.x, 30u)]), true)) - global1[_wgslsmith_index_u32(~4294967295u, 30u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 405f), arg_3.a));
    var var_2 = select(arg_0.a.x, 7460i, !all(select(!vec4<bool>(global0.e.x, arg_3.e.x, global0.e.x, true), vec4<bool>(true, arg_3.e.x, arg_3.e.x, true), select(vec4<bool>(global0.e.x, false, false, arg_3.e.x), vec4<bool>(true, false, global0.e.x, true), vec4<bool>(global0.e.x, false, global0.e.x, global0.e.x)))));
    let var_3 = Struct_3(u_input.a.xx);
    return StorageBuffer(u_input.a.yy, vec4<u32>(max(abs(arg_1.a), min(~arg_1.a, 0u << (arg_3.b.a % 32u))), func_2(_wgslsmith_mult_i32(-1i, -1i | arg_3.b.c), _wgslsmith_f_op_f32(-483f * _wgslsmith_f_op_f32(trunc(var_1.x)))).b.a, ~(arg_1.b >> (countOneBits(global0.d.x) % 32u)), _wgslsmith_mult_u32(var_0.x, 22001u)), _wgslsmith_add_u32(~arg_3.d.x, _wgslsmith_add_u32(func_2(min(3135i, arg_0.a.x), _wgslsmith_div_f32(2725f, 120f)).d.x, var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(global0.b.a, 59524u, global0.b.b >> (_wgslsmith_mod_u32(global0.b.b, ~0u) % 32u)) ^ ~vec3<u32>(global0.d.x | global0.b.a, global0.d.x, 13223u);
    let x = u_input.a;
    s_output = func_4(Struct_3(select(_wgslsmith_mult_vec2_i32(func_1(global0.a, Struct_2(-405f, Struct_1(23451u, 4294967295u, global0.b.c), global0.c, vec2<u32>(global0.b.b, 4294967295u), vec2<bool>(global0.e.x, global0.e.x)), Struct_1(4294967295u, 14058u, 1i), global0.e.x), firstTrailingBit(u_input.a.yx)), u_input.a.zz, global0.e)), func_2(_wgslsmith_sub_i32(-global0.b.c | (global0.b.c & -2147483647i), select(global0.b.c, -31569i & u_input.b, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) * _wgslsmith_f_op_f32(-global0.a)), -137f)).b, Struct_3(vec2<i32>(-global0.b.c, _wgslsmith_add_i32(-global0.b.c, -u_input.a.x))), func_2(abs(countOneBits(u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(923f, -595f)) * global1[_wgslsmith_index_u32(global0.b.a, 30u)])));
}

