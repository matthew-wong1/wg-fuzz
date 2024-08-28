struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
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

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<bool, 29>;

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(2147483647i, Struct_2(vec4<i32>(0i, 1i, -9359i, -1i), 1000f), vec2<i32>(1i, 2147483647i)), Struct_4(0i, Struct_2(vec4<i32>(-1i, -15618i, 0i, 1i), -1412f), vec2<i32>(28415i, 19399i)), Struct_4(-4280i, Struct_2(vec4<i32>(-15709i, -36713i, -2690i, -1i), -419f), vec2<i32>(-33714i, -1i)), Struct_4(-21803i, Struct_2(vec4<i32>(2147483647i, -23647i, i32(-2147483648), 0i), -805f), vec2<i32>(-9074i, 23172i)), Struct_4(i32(-2147483648), Struct_2(vec4<i32>(-33077i, 9359i, 0i, -70252i), -524f), vec2<i32>(37162i, 14711i)), Struct_4(1i, Struct_2(vec4<i32>(49368i, 2147483647i, -23110i, -1i), -1115f), vec2<i32>(1i, 0i)), Struct_4(i32(-2147483648), Struct_2(vec4<i32>(0i, 1i, 1i, 12293i), 1602f), vec2<i32>(14891i, 5807i)), Struct_4(-38534i, Struct_2(vec4<i32>(0i, -1329i, 21852i, -1i), 366f), vec2<i32>(i32(-2147483648), -1i)), Struct_4(i32(-2147483648), Struct_2(vec4<i32>(-8629i, 18097i, 2147483647i, -1i), -2062f), vec2<i32>(-43532i, 69144i)), Struct_4(36054i, Struct_2(vec4<i32>(1i, 23913i, -17480i, -3242i), 388f), vec2<i32>(0i, 2147483647i)), Struct_4(-10196i, Struct_2(vec4<i32>(i32(-2147483648), 34101i, 31824i, 1i), -104f), vec2<i32>(-1i, 2147483647i)), Struct_4(15697i, Struct_2(vec4<i32>(1i, 20730i, -29480i, -68565i), 1003f), vec2<i32>(0i, -24102i)), Struct_4(11877i, Struct_2(vec4<i32>(57486i, 2147483647i, i32(-2147483648), -44002i), -651f), vec2<i32>(2147483647i, -1917i)), Struct_4(42572i, Struct_2(vec4<i32>(i32(-2147483648), -75055i, 0i, 36243i), -1443f), vec2<i32>(23906i, 2147483647i)), Struct_4(-35796i, Struct_2(vec4<i32>(-14931i, -32335i, 0i, 2650i), -1000f), vec2<i32>(12647i, 1i)), Struct_4(2147483647i, Struct_2(vec4<i32>(49366i, 17562i, 1i, -10209i), -304f), vec2<i32>(0i, -17958i)), Struct_4(-10512i, Struct_2(vec4<i32>(1i, 24691i, -2700i, 0i), 936f), vec2<i32>(-13018i, -20376i)), Struct_4(23840i, Struct_2(vec4<i32>(1i, 0i, 0i, -9455i), 737f), vec2<i32>(i32(-2147483648), 4733i)), Struct_4(-44454i, Struct_2(vec4<i32>(-9557i, i32(-2147483648), 2147483647i, 0i), 221f), vec2<i32>(2147483647i, 0i)), Struct_4(45399i, Struct_2(vec4<i32>(1i, -1i, 6465i, 1i), -1881f), vec2<i32>(0i, -1i)), Struct_4(2147483647i, Struct_2(vec4<i32>(-21684i, i32(-2147483648), -6428i, i32(-2147483648)), -445f), vec2<i32>(1i, -1i)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3, arg_3: vec2<u32>) -> vec2<f32> {
    var var_0 = 0u;
    let var_1 = Struct_5(vec4<u32>(firstLeadingBit(27121u), global2.x, ~(global2.x & arg_2.a.x), _wgslsmith_dot_vec2_u32(global2.xz, vec2<u32>(arg_2.a.x, countOneBits(1u)))), global0[_wgslsmith_index_u32(global2.x, 19u)], Struct_3(vec3<u32>(_wgslsmith_div_u32(arg_2.a.x, ~1u), 1u, 0u), _wgslsmith_f_op_f32(abs(-1625f))), select(-_wgslsmith_sub_i32(select(arg_0.a.x, u_input.d.x, true), select(u_input.e.x, u_input.c, true)), ~(i32(-1i) * -2529i), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(24133u, 0u, 43900u)), firstTrailingBit(~vec3<u32>(1425u, 4294967295u, 1u))), 29u)]));
    var_0 = 4294967295u;
    global1 = array<bool, 29>();
    global3 = array<Struct_4, 21>();
    return vec2<f32>(1000f, _wgslsmith_f_op_f32(arg_2.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -597f) * arg_1) + 1000f)));
}

fn func_2() -> Struct_3 {
    let var_0 = global2.x;
    var var_1 = vec3<bool>(false, !all(!select(vec2<bool>(global1[_wgslsmith_index_u32(88482u, 29u)], true), vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(global2.x, 29u)], global1[_wgslsmith_index_u32(global2.x, 29u)]))), global1[_wgslsmith_index_u32(global2.x, 29u)] | (~_wgslsmith_mod_u32(0u, global2.x) != 0u));
    var var_2 = Struct_3(vec3<u32>(_wgslsmith_div_u32(global2.x, min(global2.x, 4294967295u)) & countOneBits(global2.x), 1u, ~43872u), _wgslsmith_f_op_f32(f32(-1f) * -1096f));
    var var_3 = _wgslsmith_dot_vec3_u32(var_2.a, ~vec3<u32>(4294967295u, 4294967295u, 4294967295u));
    let var_4 = _wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec4<i32>(~u_input.c, 14768i, abs(u_input.c), countOneBits(1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2106f + 1163f))), var_2.b, Struct_3(~(~vec3<u32>(30284u, global2.x, 67084u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.a.x, var_2.a.x, var_2.a.x), vec3<u32>(25750u, 1u, global2.x))), 1414f), vec2<u32>(var_2.a.x, global2.x)));
    return Struct_3(_wgslsmith_sub_vec3_u32(select(~vec3<u32>(16337u, 22103u, global2.x), vec3<u32>(global2.x, ~global2.x, 0u), select(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, global1[_wgslsmith_index_u32(global2.x, 29u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(global2.x, 29u)], var_1.x)), vec3<bool>(global1[_wgslsmith_index_u32(4809u, 29u)], true, var_1.x), select(vec3<bool>(var_1.x, global1[_wgslsmith_index_u32(50013u, 29u)], true), vec3<bool>(true, var_1.x, var_1.x), var_1.x))), _wgslsmith_clamp_vec3_u32(select(firstLeadingBit(vec3<u32>(var_2.a.x, 23436u, 1u)), min(vec3<u32>(4294967295u, 4294967295u, global2.x), var_2.a), false), vec3<u32>(~66532u, ~var_2.a.x, ~1u), abs(_wgslsmith_add_vec3_u32(var_2.a, var_2.a)))), -656f);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: f32) -> bool {
    global2 = ~firstTrailingBit(_wgslsmith_div_vec3_u32(~arg_0.a, vec3<u32>(1u, 10811u, 1u)) | vec3<u32>(_wgslsmith_div_u32(arg_0.a.x, arg_0.a.x), _wgslsmith_mult_u32(global2.x, 43242u), firstTrailingBit(arg_0.a.x)));
    return global1[_wgslsmith_index_u32(arg_0.a.x, 29u)];
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: i32, arg_3: u32) -> vec2<bool> {
    global1 = array<bool, 29>();
    global0 = array<Struct_1, 19>();
    let var_0 = _wgslsmith_f_op_vec3_f32(arg_1 + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)));
    global0 = array<Struct_1, 19>();
    let var_1 = !((arg_2 <= (-50098i >> (~arg_3 % 32u))) & any(arg_0.yw));
    return vec2<bool>(var_1 != !(true || global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 12448u), 29u)]), true & func_4(func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1, arg_1, var_1)) + _wgslsmith_f_op_vec3_f32(arg_1 * var_0)), arg_1.x));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1340f, arg_3.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1546f)), _wgslsmith_f_op_f32(sign(271f))), arg_3.b > _wgslsmith_f_op_f32(arg_3.b + 485f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_3.b, arg_3.b))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1861f)) - _wgslsmith_f_op_f32(func_2().b + -704f))));
    global1 = array<bool, 29>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-165f, 1443f, 154f, -544f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.b, var_0, var_0, 676f) * vec4<f32>(arg_3.b, arg_3.b, arg_2.b.b, 1000f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(478f, var_0, -578f, 866f)))))) * vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2.b.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1300f * arg_3.b))), _wgslsmith_f_op_f32(-arg_2.b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(-arg_2.b.b)))));
    global1 = array<bool, 29>();
    global1 = array<bool, 29>();
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<u32>(_wgslsmith_mult_u32(global2.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, global2.x), min(vec2<u32>(0u, global2.x), global2.xy)) ^ _wgslsmith_mod_u32(global2.x, ~1u)), 0u, 2992u);
    var var_0 = func_5(select(vec3<u32>(countOneBits(_wgslsmith_sub_u32(global2.x, 4294967295u)), global2.x, ~global2.x), vec3<u32>(~0u, global2.x, 4294967295u), all(func_1(!vec4<bool>(global1[_wgslsmith_index_u32(global2.x, 29u)], global1[_wgslsmith_index_u32(global2.x, 29u)], true, global1[_wgslsmith_index_u32(global2.x, 29u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1539f, -274f, -761f)), u_input.e.x, global2.x))), vec3<bool>(!(global1[_wgslsmith_index_u32(0u, 29u)] && global1[_wgslsmith_index_u32(global2.x, 29u)]) || false, true, true), Struct_4(_wgslsmith_mod_i32(~u_input.d.x, firstLeadingBit(u_input.b.x)) >> (reverseBits(global2.x ^ global2.x) % 32u), Struct_2(vec4<i32>(_wgslsmith_div_i32(u_input.a.x, -49969i), u_input.a.x | -2147483647i, 1i, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1984f + -845f))), u_input.e ^ firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.e.x, u_input.c), u_input.b))), Struct_2(select(vec4<i32>(_wgslsmith_sub_i32(u_input.d.x, -40090i), _wgslsmith_dot_vec2_i32(u_input.a, u_input.e), _wgslsmith_clamp_i32(2147483647i, 2147483647i, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(37156i, 1i), u_input.a)), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(1i, u_input.b.x, 1i, 12324i)), abs(vec4<i32>(u_input.d.x, 2147483647i, -1677i, 33864i))), any(vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 29u)])) | (global1[_wgslsmith_index_u32(4294967295u, 29u)] | true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -925f), -717f, true)))));
    var var_1 = true;
    global1 = array<bool, 29>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, 840f, var_0.b) - vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, var_0.b, -1469f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(u_input.d.x, ~29303i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(var_0.a, var_0.a, vec4<i32>(var_0.a.x, -6823i, 2147483647i, 22098i)), ~vec4<i32>(1i, var_0.a.x, var_0.a.x, -13852i)))));
}

