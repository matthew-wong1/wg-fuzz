struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_3,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_4 = Struct_4(vec3<i32>(0i, 32262i, 2147483647i), Struct_1(vec3<f32>(552f, -243f, 564f)), Struct_3(Struct_2(Struct_1(vec3<f32>(926f, 3463f, 616f)), vec2<bool>(true, false)), 13984u, Struct_1(vec3<f32>(1388f, 1000f, 609f)), vec2<bool>(false, true), Struct_1(vec3<f32>(-792f, -394f, 519f))), vec3<f32>(1210f, 1643f, -359f));

var<private> global2: array<bool, 23>;

var<private> global3: array<Struct_5, 15>;

var<private> global4: f32 = 1723f;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: f32, arg_3: Struct_2) -> i32 {
    global1 = arg_1;
    return countOneBits(_wgslsmith_sub_i32(countOneBits(1i), _wgslsmith_div_i32(max(abs(global1.a.x), global1.a.x), 2147483647i)));
}

fn func_2() -> vec4<i32> {
    var var_0 = 26602u;
    let var_1 = global3[_wgslsmith_index_u32(4294967295u, 15u)];
    var var_2 = vec3<i32>(i32(-1i) * -2147483647i, 1i, _wgslsmith_sub_i32(-var_1.b, 16186i << (global1.c.b % 32u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(844f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1113f, _wgslsmith_f_op_f32(f32(-1f) * -1959f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.a.xy), vec2<f32>(var_1.d, -637f)))));
    let var_4 = (~vec4<i32>(select(-2147483647i, global1.a.x, global1.c.a.b.x), var_1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, global1.a.x, 2147483647i, var_2.x), vec4<i32>(13773i, 23414i, -8228i, var_1.b)), var_2.x & var_1.b) ^ (vec4<i32>(func_3(global2[_wgslsmith_index_u32(u_input.c.x, 23u)], Struct_4(global1.a, Struct_1(vec3<f32>(global1.c.a.a.a.x, var_1.d, var_3.x)), Struct_3(Struct_2(Struct_1(vec3<f32>(291f, 669f, var_3.x)), vec2<bool>(true, false)), 28921u, var_1.c, vec2<bool>(true, false), Struct_1(vec3<f32>(377f, var_3.x, global1.c.a.a.a.x))), vec3<f32>(1527f, global1.c.e.a.x, var_1.c.a.x)), var_3.x, global1.c.a), var_2.x, i32(-1i) * -2147483647i, _wgslsmith_sub_i32(1i, global1.a.x)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(-14396i, var_2.x, global1.a.x, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(global1.a.x, 75049i, -9715i, -1i), vec4<i32>(var_1.b, -51435i, 1i, var_2.x))))) & select(_wgslsmith_add_vec4_i32(firstTrailingBit(firstLeadingBit(vec4<i32>(29422i, 44399i, global1.a.x, -29711i))), firstLeadingBit(~vec4<i32>(413i, var_1.b, var_1.b, 2147483647i))), -vec4<i32>(select(var_2.x, global1.a.x, global2[_wgslsmith_index_u32(4294967295u, 23u)]), -14149i, global1.a.x, -var_2.x), select(select(vec4<bool>(global2[_wgslsmith_index_u32(34220u, 23u)], global2[_wgslsmith_index_u32(34586u, 23u)], global2[_wgslsmith_index_u32(17189u, 23u)], true), vec4<bool>(global1.c.a.b.x, global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)], global1.c.a.b.x), all(vec4<bool>(false, true, global2[_wgslsmith_index_u32(1u, 23u)], false))), select(select(vec4<bool>(global1.c.d.x, global2[_wgslsmith_index_u32(global1.c.b, 23u)], global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(u_input.c.x, 23u)]), vec4<bool>(true, true, global2[_wgslsmith_index_u32(18575u, 23u)], false), vec4<bool>(false, false, false, false)), vec4<bool>(false, global1.c.d.x, global2[_wgslsmith_index_u32(global1.c.b, 23u)], global2[_wgslsmith_index_u32(u_input.c.x, 23u)]), !vec4<bool>(false, global1.c.d.x, true, true)), all(select(vec3<bool>(true, global1.c.a.b.x, false), vec3<bool>(global2[_wgslsmith_index_u32(0u, 23u)], false, true), vec3<bool>(global1.c.d.x, true, true)))));
    return var_4 | vec4<i32>(~var_4.x << ((_wgslsmith_mod_u32(0u, 25056u) ^ abs(global1.c.b)) % 32u), ~reverseBits(-67898i), ~_wgslsmith_sub_i32(7030i, -var_4.x), -max(-1i, ~(-2147483647i)));
}

fn func_1() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c.a.a.a.zx) * _wgslsmith_f_op_vec2_f32(global1.b.a.yz * vec2<f32>(487f, global1.c.c.a.x)))));
    let var_1 = global1.b;
    let var_2 = vec4<u32>(29080u, ~u_input.b, u_input.b, 24543u);
    var var_3 = ~max(vec4<i32>(1i, global1.a.x, 0i, global1.a.x), vec4<i32>(-global1.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, global1.a.x), global1.a.xz), _wgslsmith_clamp_i32(global1.a.x, global1.a.x, global1.a.x), abs(1i)) ^ (max(vec4<i32>(0i, 1i, -1i, 2147483647i), vec4<i32>(global1.a.x, global1.a.x, 38069i, global1.a.x)) >> (~vec4<u32>(u_input.a, u_input.a, 4294967295u, global1.c.b) % vec4<u32>(32u))));
    var_3 = _wgslsmith_mult_vec4_i32(func_2(), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(-24784i, var_3.x, -1i, var_3.x), firstTrailingBit(vec4<i32>(8125i, -2147483647i, 69478i, global1.a.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -1i, global1.a.x, global1.a.x) << (var_2 % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_3.x, var_3.x, -1i, -2147483647i), vec4<i32>(42310i, global1.a.x, global1.a.x, var_3.x))))) << (vec4<u32>(~abs(~u_input.d), 2896u, ~((var_2.x | 79602u) | ~var_2.x), max(global1.c.b, ~var_2.x)) % vec4<u32>(32u));
    return vec3<i32>(i32(-1i) * -73401i, 18347i << (var_2.x % 32u), _wgslsmith_mult_i32(-(~(var_3.x & var_3.x)), _wgslsmith_sub_i32(0i, i32(-1i) * -2147483647i) >> (((u_input.c.x | 93183u) << (min(39753u, global1.c.b) % 32u)) % 32u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: vec2<bool>) -> Struct_4 {
    global0 = 0u;
    var var_0 = 1061f;
    return Struct_4(func_1(), Struct_1(global1.d), global1.c, global1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 23>();
    let var_0 = _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, global1.c.b), ~u_input.c), u_input.c)), vec3<u32>(~(global1.c.b & max(1u, global1.c.b)), global1.c.b, _wgslsmith_sub_u32(~0u, _wgslsmith_add_u32(~global1.c.b, u_input.a << (global1.c.b % 32u)))));
    global1 = func_4(firstTrailingBit(abs(~u_input.c.yx)), func_1(), global1.c.a.b);
    let var_1 = ~(max(func_2().xyw, -(vec3<i32>(global1.a.x, global1.a.x, global1.a.x) ^ vec3<i32>(-2869i, global1.a.x, 61269i))) | -vec3<i32>(16984i, global1.a.x, global1.a.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1484f, global1.d.x, 633f, global1.d.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-651f, global1.c.c.a.x, global1.d.x, 163f), vec4<f32>(global1.c.a.a.a.x, -313f, global1.d.x, global1.c.a.a.a.x))))), vec4<bool>(global1.c.a.b.x, true, all(select(vec2<bool>(global2[_wgslsmith_index_u32(var_0, 23u)], global1.c.d.x), vec2<bool>(true, global2[_wgslsmith_index_u32(var_0, 23u)]), global2[_wgslsmith_index_u32(5666u, 23u)])), true))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-641f, global1.d.x, global1.d.x, -1175f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1074f, -628f, -937f, global1.b.a.x) - vec4<f32>(1468f, global1.b.a.x, global1.c.a.a.a.x, global1.d.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-915f, 616f, global1.b.a.x, 455f))) * vec4<f32>(-618f, 651f, 836f, global1.c.e.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(769f, -996f, 714f, global1.c.e.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1.c.a.a.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2))), 1u, var_1.x);
}

