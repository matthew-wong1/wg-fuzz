struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
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

var<private> global0: Struct_3;

var<private> global1: vec2<f32>;

var<private> global2: array<u32, 11> = array<u32, 11>(12344u, 4294967295u, 4294967295u, 41573u, 19259u, 0u, 1u, 4294967295u, 4294967295u, 4294967295u, 2910u);

var<private> global3: array<Struct_3, 9>;

var<private> global4: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<bool> {
    global2 = array<u32, 11>();
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), global1.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-110f, global1.x, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * global1.x)), global1.x))));
    var var_0 = u_input.b ^ _wgslsmith_add_vec2_u32(~(~(vec2<u32>(4294967295u, 1u) ^ u_input.b)), reverseBits(vec2<u32>(u_input.b.x, ~3446u)));
    let var_1 = _wgslsmith_div_vec4_i32(abs(vec4<i32>(-2398i, global0.b.b, _wgslsmith_dot_vec4_i32(-vec4<i32>(global0.d.b, global0.a.b, 0i, 1i), select(vec4<i32>(global0.a.b, global0.b.b, global0.d.b, global0.d.b), vec4<i32>(2147483647i, -1270i, 1i, 0i), vec4<bool>(true, true, false, false))), _wgslsmith_mult_i32(-20816i, global0.d.b))), abs(vec4<i32>(1i, 1i, 1i, 1i) | select(vec4<i32>(global0.b.b, global0.d.b, 22345i, 12674i), select(vec4<i32>(1i, global0.a.b, 12788i, 1i), vec4<i32>(global0.d.b, 21167i, 0i, -2221i), true), vec4<bool>(true, true, true, true))));
    var_0 = _wgslsmith_clamp_vec2_u32(countOneBits(u_input.b) << (~min(~vec2<u32>(var_0.x, var_0.x), ~u_input.b) % vec2<u32>(32u)), vec2<u32>(u_input.a, var_0.x), u_input.b);
    return !vec3<bool>(false, (global2[_wgslsmith_index_u32(~0u, 11u)] < _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 11u)], 11u)], 11u)], global2[_wgslsmith_index_u32(u_input.a, 11u)]), vec4<u32>(global2[_wgslsmith_index_u32(27771u, 11u)], global2[_wgslsmith_index_u32(var_0.x, 11u)], 27430u, 1003u))) & all(vec2<bool>(false, true)), !(var_1.x >= var_1.x));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_add_vec3_u32(abs(firstLeadingBit(select(vec3<u32>(global2[_wgslsmith_index_u32(82434u, 11u)], 4294967295u, 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18540u, 11u)], 11u)], 11u)], u_input.b.x, 1u) >> (vec3<u32>(u_input.a, 4294967295u, 0u) % vec3<u32>(32u)), func_3()))), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, select(69341u, 4294967295u, false)), 4294967295u), u_input.a, 0u));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-353f, global1.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(global0.b.a.zy, global0.a.a.zy, vec2<bool>(false, false))), vec2<f32>(-926f, -236f), vec2<bool>(arg_0, true)))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(global0.d.a.yx, vec2<f32>(663f, global0.c.x)))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.b.a.x, global0.c.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-963f, 973f) * vec2<f32>(global1.x, -1409f))))))));
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(select(global0.c, global0.c, arg_0)), -max(_wgslsmith_div_i32(global0.a.b, -1i), global0.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-959f + _wgslsmith_f_op_f32(round(1465f))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-716f, -242f, -1000f)))), _wgslsmith_mod_i32(_wgslsmith_div_i32(global0.a.b, global0.d.b) ^ ~global0.d.b, -(global0.a.b | -2147483647i)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-187f, global0.c.x)), _wgslsmith_f_op_f32(276f - -101f)), global1.x, any(!vec4<bool>(arg_0, arg_0, arg_0, true))))), _wgslsmith_f_op_vec3_f32(global0.a.a + global0.c), global0.a);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.c) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x))))));
    let var_2 = -1i;
    return var_1;
}

fn func_1() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(1110f, global0.a.a.x, global0.b.a.x, 269f), vec4<f32>(global0.c.x, global1.x, global1.x, global0.d.c)))))) - vec4<f32>(global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.d.a.x))), global0.d.a.x, global1.x)));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-176f, -1089f, 1701f, -381f), vec4<f32>(448f, global0.b.a.x, 1781f, global1.x)))), vec4<f32>(1094f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(false)) - _wgslsmith_f_op_f32(1027f - -330f)), _wgslsmith_f_op_f32(-319f - _wgslsmith_f_op_f32(-1318f - 734f)), global0.b.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(379f, global1.x, 1903f, var_0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(108f, 1970f, var_0.x, 512f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(854f, global0.a.a.x, global1.x, global1.x) - vec4<f32>(var_0.x, global1.x, global1.x, var_0.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, var_0.x, global0.a.a.x, 1303f), vec4<f32>(global1.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, false))))))));
    global4 = _wgslsmith_mod_i32(global0.b.b, ~abs(-2147483647i));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, global0.b.c, _wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1536f, var_0.x, -826f, 1145f))))));
    global2 = array<u32, 11>();
    return (vec4<u32>(~_wgslsmith_clamp_u32(0u, 1546u, 25081u), ~(~45012u), _wgslsmith_dot_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48319u, 11u)], 11u)], 1u, u_input.b.x), _wgslsmith_mult_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(52788u, 11u)], 56898u, 13725u), vec3<u32>(4294967295u, 1u, 88641u))), 65866u) & vec4<u32>(firstLeadingBit(~20575u), global2[_wgslsmith_index_u32(~1u, 11u)], ~(~u_input.b.x), u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(15549u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(73769u, 11u)], 11u)], 57988u), vec4<u32>(global2[_wgslsmith_index_u32(0u, 11u)], 0u, global2[_wgslsmith_index_u32(4957u, 11u)], u_input.a)) % 32u))) >> (_wgslsmith_add_vec4_u32(~(abs(vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.b.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(75870u, u_input.b.x, 794u, global2[_wgslsmith_index_u32(71118u, 11u)]), vec4<u32>(60513u, 15819u, 26210u, 10377u)) % vec4<u32>(32u))), select(~vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], 4294967295u, u_input.b.x, 13680u) ^ vec4<u32>(u_input.b.x, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 11u)], 11u)], 47632u), vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, 4294967295u)), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], global2[_wgslsmith_index_u32(1u, 11u)]), all(vec2<bool>(false, true)))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~2147483647i;
    var var_1 = func_1();
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b.a)), -countOneBits(i32(-1i) * -19720i), 1114f), Struct_1(global0.d.a, ~global0.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x))) * _wgslsmith_f_op_f32(-1000f * global0.d.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1509f, 736f, global0.a.a.x) - _wgslsmith_f_op_vec3_f32(-global0.c))) - vec3<f32>(1216f, _wgslsmith_f_op_f32(-1668f - 1337f), -983f)), Struct_1(global0.c, (global0.d.b ^ _wgslsmith_mod_i32(global0.b.b, -1i)) | _wgslsmith_mod_i32(global0.b.b, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -809f))));
    global0 = global3[_wgslsmith_index_u32(0u, 9u)];
    let var_3 = global3[_wgslsmith_index_u32(u_input.b.x, 9u)];
    var_1 = vec4<u32>(~_wgslsmith_sub_u32(4294967295u, 45255u), ~u_input.b.x, var_1.x, u_input.a);
    let var_4 = global3[_wgslsmith_index_u32(var_1.x, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-21034i, -2147483647i, 27185i, 31209i), vec4<i32>(global0.d.b, -13485i, 2147483647i, 1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.b.b, -1i), vec2<i32>(39063i, var_3.b.b))), -(~vec3<i32>(0i, var_3.a.b, global0.d.b)))));
}

