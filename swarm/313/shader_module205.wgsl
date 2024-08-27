struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(-627f, -456f, 415f, 994f), vec4<f32>(335f, -1171f, 1999f, -145f), vec4<f32>(-1725f, -334f, 236f, 361f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    var var_0 = !(!((u_input.c > _wgslsmith_add_i32(2147483647i, u_input.c)) != all(vec4<bool>(true, true, true, true))));
    let var_1 = !all(vec2<bool>(true, true));
    let var_2 = _wgslsmith_clamp_vec2_i32(~reverseBits(reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, 2147483647i), vec2<i32>(26314i, -1i)))), vec2<i32>(firstLeadingBit(min(i32(-1i) * -1i, u_input.c)), -firstLeadingBit(u_input.d)), vec2<i32>(-u_input.c, 1i));
    global0 = array<vec4<f32>, 3>();
    let var_3 = Struct_1(1u, 4294967295u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(426f, -1000f)));
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1000f, -137f)))))) <= 1000f, global0[_wgslsmith_index_u32(u_input.a, 3u)]);
    let var_1 = Struct_1(reverseBits(24559u | min(~u_input.b, ~68880u)), ~_wgslsmith_div_u32(abs(_wgslsmith_add_u32(20176u, 59333u)), ~_wgslsmith_div_u32(u_input.b, u_input.b)));
    let var_2 = Struct_5(_wgslsmith_sub_i32(-1007i, u_input.c), Struct_4(var_1));
    let var_3 = var_0.a;
    var var_4 = _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(func_3()));
    return var_0.b;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_2()), global0[_wgslsmith_index_u32(u_input.a, 3u)]))));
    global0 = array<vec4<f32>, 3>();
    let var_1 = vec2<bool>(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(u_input.a, 3544u, 1u), 24700u | u_input.a) >= (~59036u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 44891u) & vec2<u32>(35573u, 40079u), ~vec2<u32>(u_input.b, u_input.a)) % 32u)), true);
    var var_2 = abs(firstLeadingBit(-vec2<i32>(22544i, 1i)));
    let var_3 = abs(vec2<i32>(~_wgslsmith_div_i32(_wgslsmith_sub_i32(var_2.x, -26037i), countOneBits(var_2.x)), 63i));
    return Struct_3(any(vec3<bool>(all(select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, true, var_1.x), var_1.x)), true, false)), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(countOneBits(u_input.a), 4294967295u | u_input.b)), 3u)] * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = var_0.a;
    global0 = array<vec4<f32>, 3>();
    let var_2 = i32(-1i) * -abs(u_input.d >> (_wgslsmith_dot_vec4_u32(vec4<u32>(40199u, 16526u, 1u, u_input.b), vec4<u32>(u_input.a, u_input.b, 1u, u_input.b)) % 32u));
    let var_3 = !(!vec3<bool>(all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, var_0.a, true), vec4<bool>(var_0.a, true, true, var_0.a))), _wgslsmith_f_op_f32(func_3()) >= _wgslsmith_f_op_f32(var_0.b.x * -1594f), true));
    let var_4 = var_0.b.zy;
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x)), 972f)), _wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x * 1000f)) + 198f)), _wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1421f), _wgslsmith_f_op_f32(min(var_4.x, var_4.x))))));
    global0 = array<vec4<f32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(10820i, abs(~_wgslsmith_div_vec4_i32(vec4<i32>(var_2, u_input.d, var_2, -2147483647i) >> (vec4<u32>(4294967295u, 36871u, 6912u, u_input.a) % vec4<u32>(32u)), reverseBits(vec4<i32>(-62844i, 95213i, var_2, 52012i)))), vec2<u32>(firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.b))), ~51623u), var_4.x, ~firstTrailingBit(u_input.c));
}

