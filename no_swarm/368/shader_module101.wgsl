struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 14>;

var<private> global1: array<f32, 23> = array<f32, 23>(1024f, -843f, 734f, -731f, 678f, -1646f, -1442f, 317f, -859f, -1014f, -1845f, -1278f, 1328f, 448f, -1219f, -559f, -1000f, 1132f, -538f, -1851f, 752f, 1000f, 750f);

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(i32(-2147483648), vec3<f32>(317f, -762f, -361f), vec2<i32>(-3279i, 1i)), Struct_1(-41136i, vec3<f32>(-925f, 1708f, 1006f), vec2<i32>(i32(-2147483648), 35569i)), Struct_1(-1i, vec3<f32>(-1341f, 158f, 1357f), vec2<i32>(-11747i, i32(-2147483648))), Struct_1(-1i, vec3<f32>(-1367f, -1473f, -1260f), vec2<i32>(35259i, -1i)), Struct_1(29595i, vec3<f32>(-893f, -515f, -651f), vec2<i32>(27721i, 41438i)), Struct_1(-26384i, vec3<f32>(689f, -396f, -251f), vec2<i32>(-22085i, i32(-2147483648))), Struct_1(-1i, vec3<f32>(691f, -245f, -1013f), vec2<i32>(-42498i, 1i)), Struct_1(0i, vec3<f32>(2020f, -1130f, -1412f), vec2<i32>(i32(-2147483648), 38971i)), Struct_1(1i, vec3<f32>(429f, -505f, -276f), vec2<i32>(61777i, 50521i)), Struct_1(2147483647i, vec3<f32>(244f, -383f, -805f), vec2<i32>(9269i, 876i)), Struct_1(1i, vec3<f32>(-1444f, 1430f, 203f), vec2<i32>(-24847i, -41997i)), Struct_1(12480i, vec3<f32>(-243f, -394f, 513f), vec2<i32>(2147483647i, -13151i)), Struct_1(1i, vec3<f32>(276f, -1176f, -1000f), vec2<i32>(-1888i, -21758i)), Struct_1(i32(-2147483648), vec3<f32>(-1000f, -498f, 1572f), vec2<i32>(1i, 1i)), Struct_1(-67378i, vec3<f32>(-531f, 1000f, -1124f), vec2<i32>(-22224i, 19783i)), Struct_1(-23931i, vec3<f32>(347f, 650f, 676f), vec2<i32>(-21498i, 1i)));

var<private> global3: Struct_2 = Struct_2(Struct_1(1i, vec3<f32>(-362f, 1000f, 428f), vec2<i32>(24392i, 0i)), Struct_1(i32(-2147483648), vec3<f32>(-1804f, 648f, 443f), vec2<i32>(1i, 7487i)), 1u, vec2<i32>(-27301i, 37733i));

var<private> global4: Struct_2 = Struct_2(Struct_1(2147483647i, vec3<f32>(1435f, 1931f, 1000f), vec2<i32>(-12546i, 1i)), Struct_1(-45069i, vec3<f32>(-1636f, 578f, -746f), vec2<i32>(-24461i, 2147483647i)), 1u, vec2<i32>(0i, 10700i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_3) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.a.b.x)), global1[_wgslsmith_index_u32(4294967295u, 23u)], _wgslsmith_f_op_f32(f32(-1f) * -1310f), _wgslsmith_f_op_f32(global4.b.b.x - global1[_wgslsmith_index_u32(~4294967295u, 23u)]));
    global4 = Struct_2(global4.a, Struct_1(24191i, vec3<f32>(_wgslsmith_f_op_f32(-379f - _wgslsmith_f_op_f32(round(global4.b.b.x))), _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1076f) * _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(4294967295u, 23u)])))), vec2<i32>(global3.b.c.x | -13448i, _wgslsmith_mult_i32(arg_0.d.c.x, 26440i)) >> (select(u_input.a & vec2<u32>(4294967295u, global4.c), ~vec2<u32>(4294967295u, 0u), true) % vec2<u32>(32u))), 29753u, _wgslsmith_mod_vec2_i32(vec2<i32>(-23869i, -global4.d.x), ~min(global3.d, -arg_0.d.c)));
    global2 = array<Struct_1, 16>();
    let var_1 = !(4294967295u <= reverseBits(global4.c));
    var var_2 = vec3<i32>(global4.d.x, global4.d.x, -firstLeadingBit(3017i));
    return 17608u;
}

fn func_1() -> bool {
    global0 = array<vec3<bool>, 14>();
    let var_0 = min(min(reverseBits(~vec3<i32>(63502i, global3.a.a, 0i)), ~vec3<i32>(global4.d.x, -1i, _wgslsmith_mod_i32(2147483647i, global4.d.x))), (vec3<i32>(-1i, firstLeadingBit(global3.a.a), ~global3.a.c.x) & (-vec3<i32>(0i, -47605i, -19228i) << (reverseBits(vec3<u32>(u_input.c, 27510u, u_input.c)) % vec3<u32>(32u)))) | (~(~vec3<i32>(1i, global4.a.a, global3.a.a)) & vec3<i32>(37330i, -2147483647i, -1i)));
    global0 = array<vec3<bool>, 14>();
    return !(all(vec2<bool>(false, any(vec4<bool>(false, false, true, true)))) && (global3.b.a == (-global4.d.x << (func_2(Struct_3(Struct_1(var_0.x, global3.b.b, vec2<i32>(1i, var_0.x)), vec2<bool>(true, true), vec4<bool>(false, true, false, true), global2[_wgslsmith_index_u32(global3.c, 16u)])) % 32u))));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> vec2<f32> {
    global1 = array<f32, 23>();
    global0 = array<vec3<bool>, 14>();
    var var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(_wgslsmith_div_i32(global3.a.a, 1i), 2147483647i, global3.a.c.x, -1i), max(~(vec4<i32>(-23368i, global3.d.x, -2147483647i, -1i) & vec4<i32>(global3.d.x, -6887i, global4.d.x, global4.b.c.x)), vec4<i32>(global4.d.x, -85165i, global3.a.c.x, 25569i) & _wgslsmith_div_vec4_i32(vec4<i32>(-47603i, global4.a.a, global4.a.a, global3.a.c.x), vec4<i32>(-10099i, 30105i, 2147483647i, global3.a.c.x)))), firstTrailingBit(vec4<i32>(-(i32(-1i) * -2147483647i), _wgslsmith_sub_i32(global3.b.c.x, -2147483647i), firstTrailingBit(abs(global3.d.x)), ~global3.a.c.x)));
    let var_1 = global3.a;
    var var_2 = true;
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, _wgslsmith_f_op_f32(-global4.a.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a.b.x, global3.b.b.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(true, func_1() | true), ~1u)) * _wgslsmith_f_op_vec2_f32(-global4.a.b.zy));
    global4 = Struct_2(global4.b, Struct_1(min(47033i, -2147483647i), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], _wgslsmith_div_f32(-1000f, 516f), global4.a.b.x), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(-global4.d, vec2<i32>(-16342i, global3.d.x) >> (vec2<u32>(1u, 39907u) % vec2<u32>(32u))), global3.b.c)), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.c ^ max(0u, 64886u), ~global4.c, ~abs(u_input.a.x), 78572u), abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 53978u, global3.c), vec4<u32>(19014u, 35923u, 14674u, 0u), vec4<u32>(1560u, 47419u, global4.c, global3.c)))), vec2<i32>(_wgslsmith_dot_vec4_i32(~select(vec4<i32>(global4.d.x, -1i, -2857i, global4.a.c.x), vec4<i32>(global4.b.a, global3.d.x, 12879i, global4.d.x), true), _wgslsmith_sub_vec4_i32(vec4<i32>(global3.a.c.x, global4.d.x, global4.a.c.x, global3.d.x) >> (vec4<u32>(4294967295u, global3.c, 4294967295u, 4294967295u) % vec4<u32>(32u)), -vec4<i32>(global4.a.a, global3.a.a, 0i, global4.a.c.x))), select((global4.a.a | 0i) ^ -2147483647i, _wgslsmith_div_i32(global3.b.c.x, global4.d.x << (global4.c % 32u)), global3.a.c.x >= _wgslsmith_dot_vec2_i32(vec2<i32>(global4.a.c.x, -1i), global3.b.c))));
    let var_1 = Struct_2(Struct_1(global3.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(global4.c, 23u)], global4.a.b.x, global4.a.b.x))), vec2<i32>(~(~2147483647i), -firstTrailingBit(-3733i))), Struct_1(~0i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(global3.b.b)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(102f, 351f, var_0.x), vec3<f32>(var_0.x, global3.b.b.x, global1[_wgslsmith_index_u32(global3.c, 23u)]))), !global0[_wgslsmith_index_u32(global4.c, 14u)])) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4.a.b * vec3<f32>(global4.b.b.x, 507f, global3.a.b.x)))), vec2<i32>(~_wgslsmith_add_i32(global4.b.a, -69176i), ~(-5473i))), _wgslsmith_sub_u32(~(_wgslsmith_clamp_u32(1u, 0u, u_input.b) & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 15567u), vec4<u32>(1u, 4294967295u, global4.c, 0u))), u_input.b), global3.b.c >> (u_input.a % vec2<u32>(32u)));
    let var_2 = ~abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, var_1.c, global4.c), ~vec3<u32>(0u, 4294967295u, global3.c)));
    global4 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(abs(~4415u), ~1u), _wgslsmith_mod_u32(~countOneBits(global4.c), global3.c)), 16u)], var_1.a, 16647u, select(vec2<i32>(min(global3.a.c.x, -2147483647i), global3.b.a | global4.a.a) ^ max(vec2<i32>(global4.d.x, global3.d.x), global3.d), global3.d, false));
    var var_3 = Struct_2(global2[_wgslsmith_index_u32(var_2.x, 16u)], global3.a, global4.c, select(var_1.a.c, vec2<i32>((global3.a.c.x ^ -893i) << (global4.c % 32u), -_wgslsmith_dot_vec4_i32(vec4<i32>(-12064i, global4.a.a, global4.b.c.x, global4.a.c.x), vec4<i32>(-2147483647i, var_1.a.a, -2147483647i, var_1.d.x))), true));
    let var_4 = global4.b;
    var var_5 = 42447i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.b.yy) - vec2<f32>(-762f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(11034u), 23u)]))));
}

