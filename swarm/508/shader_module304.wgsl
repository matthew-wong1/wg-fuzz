struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(248f, 1061f, 286f, -1129f));

var<private> global1: array<Struct_2, 8>;

var<private> global2: vec2<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(5933u, u_input.d, u_input.d, u_input.a.x), vec4<u32>(79183u, u_input.a.x, 1u, 30658u)) | countOneBits(vec4<u32>(u_input.a.x, 15007u, u_input.a.x, u_input.d)), (vec4<u32>(29898u, u_input.d, 0u, u_input.a.x) | vec4<u32>(58820u, u_input.a.x, u_input.a.x, u_input.d)) | ~vec4<u32>(u_input.d, 37241u, u_input.a.x, u_input.d)), reverseBits(~(~vec4<u32>(u_input.d, 4294967295u, u_input.a.x, u_input.a.x)))), ~_wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.d, 1u, 39409u), vec4<u32>(1u, 4294967295u, u_input.d, 4294967295u), vec4<u32>(0u, 4294967295u, u_input.d, 0u)), ~(~vec4<u32>(1107u, u_input.a.x, 4294967295u, 0u))));
    var var_1 = true;
    global1 = array<Struct_2, 8>();
    var var_2 = all(!select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, any(vec4<bool>(true, false, false, false)))));
    var var_3 = !select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false), true), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), true), vec2<bool>(true, true), (_wgslsmith_add_i32(-1i, u_input.c) != -2147483647i) || true);
    return global0.a.x;
}

fn func_2() -> Struct_2 {
    let var_0 = global2.x;
    global2 = vec2<f32>(_wgslsmith_div_f32(1066f, global2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.x))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.x))))));
    let var_1 = Struct_2(vec4<f32>(-173f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(global0.a.x + 1253f), _wgslsmith_f_op_f32(f32(-1f) * -835f)));
    var var_2 = abs(~(~u_input.a));
    let var_3 = Struct_1(vec2<u32>(var_2.x, u_input.a.x), 2005f, true);
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(987f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -623f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b + global0.a.x)), global2.x));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global1 = array<Struct_2, 8>();
    var var_0 = _wgslsmith_clamp_vec3_i32(-vec3<i32>(~u_input.c, 445i, u_input.c ^ u_input.b), vec3<i32>(reverseBits(1i), (u_input.b & 11293i) << (~u_input.a.x % 32u), u_input.b), vec3<i32>(10272i >> (u_input.a.x % 32u), 1i, abs(u_input.c)) | _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, u_input.b, u_input.b) << (vec3<u32>(u_input.a.x, u_input.d, u_input.a.x) % vec3<u32>(32u)), -vec3<i32>(u_input.c, 15254i, u_input.c))) & countOneBits(vec3<i32>(-1i) * -vec3<i32>(22756i, -70413i, u_input.c));
    var var_1 = true;
    var var_2 = all(vec4<bool>(!(!any(vec3<bool>(false, false, false))), all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))), true, true));
    var_1 = false;
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(2435f * -629f), 1f))));
}

fn func_1() -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(abs(u_input.d), 8u)];
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global2.x) - vec2<f32>(global2.x, global0.a.x))))), vec2<f32>(global2.x, global0.a.x), !vec2<bool>(false, _wgslsmith_f_op_f32(-global2.x) <= _wgslsmith_f_op_f32(-892f - global0.a.x))));
    var var_1 = func_4(func_2());
    var var_2 = Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(exp2(var_0.a.x)), false);
    let var_3 = Struct_1(firstLeadingBit(select(vec2<u32>(9825u, _wgslsmith_sub_u32(u_input.a.x, 35330u)), ~(~u_input.a.zz), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(var_2.b * 1274f))) * _wgslsmith_f_op_f32(f32(-1f) * -1179f)), all(!(!(!vec2<bool>(var_2.c, false)))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global1 = array<Struct_2, 8>();
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a - global0.a), _wgslsmith_f_op_vec4_f32(trunc(global0.a))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(global0.a.x, global2.x, 1116f, global0.a.x)) - _wgslsmith_f_op_vec4_f32(-global0.a)))));
    var var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-17202i, 3i, -36253i, -1i), vec4<i32>(39942i, u_input.b, u_input.c, u_input.c))) >> (((vec4<u32>(u_input.d, 28929u, u_input.d, u_input.a.x) ^ vec4<u32>(u_input.d, 1u, u_input.a.x, 0u)) << (min(vec4<u32>(23473u, 4260u, 0u, 42522u), vec4<u32>(10206u, u_input.a.x, 0u, 11222u)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(u_input.c, _wgslsmith_clamp_i32(u_input.c | -81845i, ~0i, _wgslsmith_clamp_i32(u_input.b, -1i, -6496i)), u_input.b, u_input.b)), countOneBits(reverseBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(32768i, -1i, 1i, u_input.b), vec4<i32>(u_input.b, u_input.b, 26949i, u_input.b)))));
    var var_1 = Struct_1(u_input.a.zz & _wgslsmith_sub_vec2_u32(u_input.a.yy, u_input.a.yx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1339f)))))), countOneBits(-4678i) <= _wgslsmith_dot_vec3_i32(vec3<i32>(0i, ~u_input.b, u_input.b), var_0.yxy));
    let var_2 = 217f;
    var var_3 = vec2<u32>(~1893u, abs(57243u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(57879u, var_1.a.x, var_1.a.x)), vec3<u32>(var_1.a.x, var_1.a.x, 0u))), 4294967295u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_3.x, var_3.x, var_3.x) & vec4<u32>(56488u, u_input.d, 1472u, u_input.a.x), ~vec4<u32>(var_1.a.x, 101898u, 0u, var_3.x)) % 32u), 63457u, reverseBits(var_3.x)), ~vec2<i32>(~abs(var_0.x), -2147483647i << ((0u & var_1.a.x) % 32u)), vec2<f32>(_wgslsmith_div_f32(-1362f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.x * global0.a.x), var_2, true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-func_4(Struct_2(vec4<f32>(1584f, 1094f, global2.x, 482f))).a.x)))), ~vec3<u32>(_wgslsmith_mult_u32(74933u | u_input.d, ~var_1.a.x), 0u, 50484u));
}

