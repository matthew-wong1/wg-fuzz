struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(1i, 1i), vec2<i32>(-1i, -1i), vec2<i32>(33703i, -34692i), vec2<i32>(-8197i, i32(-2147483648)), vec2<i32>(0i, 0i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, 2147483647i), vec2<i32>(-59788i, -20143i), vec2<i32>(-1i, -10759i), vec2<i32>(21977i, -5958i), vec2<i32>(0i, 2147483647i), vec2<i32>(2147483647i, -16159i), vec2<i32>(1i, 0i), vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, 1i), vec2<i32>(37131i, 30368i), vec2<i32>(1i, 1i), vec2<i32>(i32(-2147483648), 34005i), vec2<i32>(i32(-2147483648), 71950i));

var<private> global1: array<vec4<u32>, 23>;

var<private> global2: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    global2 = Struct_1(select(select(vec3<bool>(true, true, true), !global2.a, false), !vec3<bool>(global2.a.x, global2.a.x, true), any(!global2.a)));
    var var_0 = min(~vec3<u32>(1u, ~(4294967295u & u_input.a), min(~u_input.a, abs(u_input.a))), vec3<u32>(min(0u, _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, u_input.a), ~33099u)), 1u, 28375u));
    global1 = array<vec4<u32>, 23>();
    global2 = Struct_1(vec3<bool>(true, true, any(vec4<bool>(true, global2.a.x, false, true | global2.a.x))));
    var_0 = vec3<u32>(~var_0.x, ~u_input.a, min(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, ~0u), _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(51248u, 30071u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(0u, 1u), vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_div_vec2_u32(var_0.yy, var_0.yx))), ~var_0.x));
    return _wgslsmith_f_op_f32(f32(-1f) * -537f);
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), 1f)));
    var var_1 = _wgslsmith_div_vec4_i32(~reverseBits(vec4<i32>(2147483647i, -2147483647i, 1i, -41969i)), ~abs(~vec4<i32>(1i, 65610i, -2147483647i, 0i))) ^ countOneBits(vec4<i32>(_wgslsmith_mult_i32(1i, 29717i), firstTrailingBit(2147483647i), 1i, 17068i));
    return u_input.a;
}

fn func_1() -> Struct_2 {
    var var_0 = ~min(vec2<u32>(min(~3150u, u_input.a), 3853u), abs(~vec2<u32>(28570u, u_input.a) & abs(vec2<u32>(u_input.a, u_input.a))));
    var_0 = vec2<u32>(func_2(), ~_wgslsmith_sub_u32(0u, u_input.a)) ^ (vec2<u32>(~17902u, 35689u) ^ (_wgslsmith_div_vec2_u32(max(vec2<u32>(var_0.x, 1u), vec2<u32>(u_input.a, 43854u)), ~vec2<u32>(u_input.a, u_input.a)) & select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 46396u), vec2<u32>(var_0.x, 32908u)), countOneBits(vec2<u32>(4294967295u, u_input.a)), vec2<bool>(global2.a.x, global2.a.x))));
    var var_1 = Struct_1(!global2.a);
    global2 = Struct_1(global2.a);
    global1 = array<vec4<u32>, 23>();
    return Struct_2(i32(-1i) * -firstLeadingBit(0i), vec4<f32>(-779f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -751f)) - _wgslsmith_f_op_f32(abs(-942f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -783f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1498f * -952f), _wgslsmith_f_op_f32(-1838f - 1408f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * 695f)), Struct_1(!vec3<bool>(true, all(vec2<bool>(true, var_1.a.x)), all(vec4<bool>(false, global2.a.x, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 23>();
    global1 = array<vec4<u32>, 23>();
    var var_0 = _wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(3990u, 23u)] << (global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.a | ~u_input.a), 23u)] % vec4<u32>(32u)), ~vec4<u32>(firstLeadingBit(0u), abs(_wgslsmith_mod_u32(u_input.a, 1u)), ~u_input.a, u_input.a));
    global0 = array<vec2<i32>, 19>();
    let var_1 = func_1();
    var var_2 = var_1.a;
    var var_3 = Struct_1(!var_1.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zy, abs(var_0.xw), ~vec4<u32>(u_input.a, 1u, reverseBits(0u), 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.b.x * var_1.b.x), _wgslsmith_f_op_f32(var_1.b.x + var_1.b.x), var_1.b.x != 807f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1815f)) - _wgslsmith_f_op_f32(trunc(var_1.b.x))))) - -671f), u_input.a);
}

