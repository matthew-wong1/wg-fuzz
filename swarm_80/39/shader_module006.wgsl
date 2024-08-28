struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(-12319i, 2147483647i, i32(-2147483648), 0i, -72850i, 26702i, 12655i);

var<private> global1: Struct_3 = Struct_3(vec2<u32>(1u, 28416u), Struct_2(1u, Struct_1(vec2<u32>(57766u, 4294967295u), 852f, true), 53188u));

var<private> global2: array<bool, 30>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: vec2<bool>) -> bool {
    global0 = array<i32, 7>();
    global0 = array<i32, 7>();
    global2 = array<bool, 30>();
    global2 = array<bool, 30>();
    global0 = array<i32, 7>();
    return false;
}

fn func_2() -> Struct_3 {
    let var_0 = select(vec3<bool>(false, !(!all(vec4<bool>(false, global1.b.b.c, true, global2[_wgslsmith_index_u32(49877u, 30u)]))), global1.b.b.c), !vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 30u)], any(vec4<bool>(global2[_wgslsmith_index_u32(global1.b.a, 30u)], global2[_wgslsmith_index_u32(global1.b.b.a.x, 30u)], false, false))), select(!(!(!vec3<bool>(global2[_wgslsmith_index_u32(global1.b.c, 30u)], global2[_wgslsmith_index_u32(44049u, 30u)], true))), select(vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 30u)], true), vec3<bool>(func_3(global0[_wgslsmith_index_u32(28922u, 7u)], global1.b.b.b, global1.b, vec2<bool>(global1.b.b.c, global2[_wgslsmith_index_u32(global1.b.a, 30u)])), global2[_wgslsmith_index_u32(global1.a.x, 30u)] & global2[_wgslsmith_index_u32(73316u, 30u)], false), global2[_wgslsmith_index_u32(~3525u, 30u)]), global1.b.b.c));
    let var_1 = Struct_3(vec2<u32>(~global1.a.x, global1.b.b.a.x) >> (vec2<u32>(~global1.a.x, reverseBits(max(global1.a.x, 16071u))) % vec2<u32>(32u)), Struct_2(global1.b.a, global1.b.b, ~global1.b.c));
    let var_2 = _wgslsmith_clamp_u32(global1.b.c | (1u << (var_1.b.a % 32u)), _wgslsmith_dot_vec3_u32(countOneBits(max(vec3<u32>(1u, 22241u, var_1.b.b.a.x), vec3<u32>(var_1.b.c, 19206u, 0u))), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.a.x, 29734u, global1.b.c), vec3<u32>(4294967295u, global1.a.x, 90815u)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(50780u, 72386u, 74116u), vec3<u32>(14155u, global1.a.x, 4294967295u))) ^ _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(91855u, var_1.a.x, 19948u) | vec3<u32>(global1.b.c, global1.b.a, var_1.a.x)), vec3<u32>(_wgslsmith_div_u32(global1.b.b.a.x, 1u), 4294967295u, ~global1.a.x)), 0u);
    let var_3 = reverseBits(u_input.a.x);
    var var_4 = 4294967295u;
    return var_1;
}

fn func_1() -> i32 {
    var var_0 = ~global1.b.a;
    let var_1 = max(vec2<u32>(global1.a.x, 1u), ~vec2<u32>(~_wgslsmith_sub_u32(global1.b.c, global1.b.b.a.x), _wgslsmith_mod_u32(~1u, abs(56799u))));
    global1 = func_2();
    var var_2 = global1.b.b;
    var var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.b.b - _wgslsmith_f_op_f32(-1214f - global1.b.b.b))), global1.b.b.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-317f, global1.b.b.b), vec2<f32>(-1491f, 1572f))))))), !var_2.c));
    return _wgslsmith_add_i32(1i, -global0[_wgslsmith_index_u32(var_1.x, 7u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x & u_input.a.x, min(_wgslsmith_mod_i32(-22099i, u_input.a.x), i32(-1i) * -2147483647i), -2147483647i, u_input.a.x), vec4<i32>(0i, ~u_input.a.x & _wgslsmith_div_i32(2147483647i, -2147483647i), -12502i >> (global1.a.x % 32u), _wgslsmith_clamp_i32(func_1(), _wgslsmith_clamp_i32(-2147483647i, 2147483647i, -7842i), func_1()))));
    let var_1 = 29857u;
    let var_2 = -757i;
    let var_3 = _wgslsmith_add_u32(abs(~(~(1u | global1.b.a))), reverseBits(var_1));
    var var_4 = _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(global1.b.b.a, ~vec2<u32>(var_1 | var_1, ~var_1), ~countOneBits(vec2<u32>(var_3, 4294967295u))), vec2<u32>(_wgslsmith_div_u32(31872u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, global1.b.a, global1.a.x, var_3) >> (vec4<u32>(0u, 4294967295u, var_3, var_3) % vec4<u32>(32u)), reverseBits(vec4<u32>(var_1, 4294967295u, 0u, var_3)))), var_3));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, -50394i), ~(~var_0.x)), vec2<i32>(var_2 | 0i, _wgslsmith_mod_i32(var_2, _wgslsmith_div_i32(0i, var_0.x))), ~(u_input.a.xz ^ vec2<i32>(u_input.a.x, -6687i)) << (global1.a % vec2<u32>(32u))), vec3<u32>(countOneBits(~var_4.x), global1.b.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1, 4294967295u, var_1, global1.a.x), min(vec4<u32>(0u, global1.a.x, var_4.x, var_3), vec4<u32>(21659u, var_4.x, 50741u, var_4.x)))) ^ abs(vec3<u32>(var_4.x, var_3, max(var_3, global1.a.x))));
}

