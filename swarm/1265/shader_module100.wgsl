struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec2<f32>(168f, 1713f), 0i, Struct_2(vec2<f32>(-276f, -360f), Struct_1(421f), false, 17715i)), Struct_3(vec2<f32>(-1000f, 526f), -26876i, Struct_2(vec2<f32>(-575f, -179f), Struct_1(-1302f), false, 2147483647i)), Struct_3(vec2<f32>(-1788f, 2034f), -1i, Struct_2(vec2<f32>(208f, 1115f), Struct_1(-977f), false, 10352i)), Struct_3(vec2<f32>(1337f, -105f), -62201i, Struct_2(vec2<f32>(1000f, -1834f), Struct_1(-654f), false, 1i)), Struct_3(vec2<f32>(-507f, 102f), -49753i, Struct_2(vec2<f32>(-1587f, -573f), Struct_1(-777f), false, 8255i)), Struct_3(vec2<f32>(139f, -1376f), 52137i, Struct_2(vec2<f32>(1048f, 640f), Struct_1(1000f), true, 5419i)), Struct_3(vec2<f32>(-532f, 949f), 6101i, Struct_2(vec2<f32>(-1792f, 1783f), Struct_1(102f), false, 2147483647i)), Struct_3(vec2<f32>(-587f, 1000f), -17642i, Struct_2(vec2<f32>(655f, 420f), Struct_1(-876f), false, 0i)), Struct_3(vec2<f32>(466f, -152f), 0i, Struct_2(vec2<f32>(-776f, 1189f), Struct_1(-292f), false, -1i)), Struct_3(vec2<f32>(465f, -816f), -1i, Struct_2(vec2<f32>(1614f, 307f), Struct_1(167f), true, -12017i)), Struct_3(vec2<f32>(-601f, -1068f), 1i, Struct_2(vec2<f32>(2009f, -1000f), Struct_1(881f), false, 39432i)), Struct_3(vec2<f32>(-3224f, -242f), i32(-2147483648), Struct_2(vec2<f32>(-1140f, 1285f), Struct_1(-705f), false, 1i)), Struct_3(vec2<f32>(-748f, -503f), 2851i, Struct_2(vec2<f32>(-299f, -1911f), Struct_1(-1104f), true, 2808i)), Struct_3(vec2<f32>(-325f, 1166f), i32(-2147483648), Struct_2(vec2<f32>(-557f, 1011f), Struct_1(1058f), false, -52055i)), Struct_3(vec2<f32>(223f, 1051f), -1i, Struct_2(vec2<f32>(1312f, 2236f), Struct_1(1000f), true, 1i)), Struct_3(vec2<f32>(1008f, 522f), 2147483647i, Struct_2(vec2<f32>(-1110f, 889f), Struct_1(721f), true, 24963i)));

var<private> global1: vec4<i32> = vec4<i32>(-67276i, i32(-2147483648), 2147483647i, 12837i);

var<private> global2: Struct_3;

var<private> global3: vec2<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(4294967295u, u_input.b.x >> (~(u_input.b.x >> (global3.x % 32u)) % 32u))), 16u)];
    let var_1 = ~(-vec3<i32>(global2.b, 7400i, reverseBits(-8415i) & _wgslsmith_mod_i32(-1i, global1.x)));
    var var_2 = u_input.a < var_1.x;
    var_2 = true;
    var var_3 = -2147483647i;
    return -58060i;
}

fn func_2() -> vec4<i32> {
    global0 = array<Struct_3, 16>();
    let var_0 = Struct_1(global2.a.x);
    global3 = vec2<u32>(u_input.d, u_input.b.x);
    global1 = -(~(-select(vec4<i32>(-38516i, global2.b, global2.c.d, global2.b) >> (vec4<u32>(4294967295u, u_input.d, 0u, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(global1.x, 25179i, global1.x, -17979i), vec4<bool>(true, global2.c.c, global2.c.c, true))));
    var var_1 = !global2.c.c;
    return _wgslsmith_mod_vec4_i32(~countOneBits(~(vec4<i32>(global1.x, -2147483647i, global1.x, -1i) << (vec4<u32>(1u, u_input.d, 97273u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_add_vec4_i32(~(-vec4<i32>(1i, 0i, -44940i, -1i)), select(vec4<i32>(func_3(), abs(global1.x), global2.b, -global1.x), (vec4<i32>(u_input.a, 32121i, u_input.a, global2.b) ^ vec4<i32>(u_input.c.x, 2147483647i, u_input.a, 1i)) & vec4<i32>(-59204i, 0i, global1.x, 29302i), select(!vec4<bool>(global2.c.c, global2.c.c, global2.c.c, global2.c.c), select(vec4<bool>(global2.c.c, true, false, global2.c.c), vec4<bool>(false, true, true, global2.c.c), global2.c.c), false))));
}

fn func_1() -> f32 {
    global1 = ~(func_2() >> (abs(vec4<u32>(76116u, 1u, abs(u_input.d), ~global3.x)) % vec4<u32>(32u)));
    global3 = select(vec2<u32>(1u, u_input.b.x), vec2<u32>(~(global3.x ^ 96415u) << (~(~u_input.d) % 32u), _wgslsmith_mult_u32(global3.x, u_input.b.x)), false);
    global2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.c.b.a - global2.c.b.a))))), global2.c.b.a), -1i | -global1.x, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.c.b.a, global2.c.a.x), global2.c.a, vec2<bool>(true, false))))), global2.c.b, false, -_wgslsmith_sub_i32(24059i, -1i) ^ global2.c.d));
    global0 = array<Struct_3, 16>();
    global3 = vec2<u32>(61428u, _wgslsmith_add_u32(1u, 13684u));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.a.x - global2.a.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global2.c.a.x)))), global2.c.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(all(select(select(select(vec3<bool>(true, true, false), vec3<bool>(global2.c.c, global2.c.c, false), false), vec3<bool>(true, true, true), select(vec3<bool>(global2.c.c, true, false), vec3<bool>(true, global2.c.c, global2.c.c), global2.c.c)), !(!vec3<bool>(global2.c.c, global2.c.c, false)), vec3<bool>(true, true, false))), false & (_wgslsmith_f_op_f32(func_1()) < global2.c.b.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.b.a - global2.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -289f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(646f)) + 584f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(228f + global2.a.x) * global2.c.a.x) - -1106f));
    global2 = Struct_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global2.a, vec2<f32>(-263f, global2.a.x))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1013f, global2.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.a.x + global2.a.x))), -1894f))), -abs(495i), global2.c);
    var var_1 = _wgslsmith_add_u32(~_wgslsmith_add_u32(~global3.x, u_input.d), ~u_input.d);
    var var_2 = vec4<u32>(53261u, ~abs(global3.x), 0u, _wgslsmith_mult_u32(~9430u, ~global3.x));
    var var_3 = global2.c;
    var var_4 = select(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_3.d, global2.c.d, -26205i, global1.x), max(vec4<i32>(global1.x, global1.x, -41051i, var_3.d), vec4<i32>(1i, global1.x, var_3.d, 2147483647i))), (min(global2.c.d, global2.c.d) ^ (u_input.a ^ global1.x)) >> (~firstTrailingBit(67153u) % 32u)), firstLeadingBit(global1.yz), 1i <= ((var_3.d << (56987u % 32u)) ^ ~(global1.x | global2.c.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(666f, 1000f, -765f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1061f, 1032f, 779f))), vec3<f32>(var_3.b.a, -572f, var_3.a.x), vec3<bool>(false, var_3.c, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.b.a, global2.a.x, -1720f, var_3.a.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(select(1000f, 411f, var_3.c)), _wgslsmith_f_op_f32(638f * 121f), -1003f))), -_wgslsmith_sub_vec2_i32(vec2<i32>(countOneBits(1i), 2147483647i), firstLeadingBit(~global1.wy)), -(abs(u_input.c) << (~vec3<u32>(global3.x, 4294967295u, global3.x) % vec3<u32>(32u))));
}

