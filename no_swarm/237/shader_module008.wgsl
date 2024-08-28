struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: vec2<bool>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 2>;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), -8117i);

var<private> global2: array<vec4<u32>, 25>;

var<private> global3: array<vec2<u32>, 14>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(122f, 488f, 788f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1380f, 1000f, -250f)), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 663f, -773f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(400f, -731f, 1000f)))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), vec3<f32>(871f, -1108f, -731f))))));
    global2 = array<vec4<u32>, 25>();
    var var_1 = Struct_4(_wgslsmith_f_op_f32(round(564f)), Struct_3(all(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(109241u, abs(1u)), 14u)], vec2<bool>(true, all(global0[_wgslsmith_index_u32(1u, 2u)])), Struct_1(global1.x), vec2<bool>(any(vec4<bool>(false, true, false, true)), any(vec4<bool>(true, true, true, true)))), 3252u, Struct_1(u_input.a ^ ~global1.x), var_0.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.a * var_1.e), _wgslsmith_f_op_f32(f32(-1f) * -2507f), -250f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a, 283f, -428f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_0.x, var_0.x) - var_0))))))));
    global1 = _wgslsmith_sub_vec2_i32(reverseBits(max(vec2<i32>(u_input.a, 48229i), vec2<i32>(-1i, -1i))), -(~vec2<i32>(global1.x, -19035i)) >> (max(select(vec2<u32>(var_1.b.b.x, u_input.b.x), u_input.b, true), ~vec2<u32>(var_1.c, u_input.b.x)) % vec2<u32>(32u))) & vec2<i32>(~countOneBits(2147483647i), max(-global1.x, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, 12139i, 0i), vec4<i32>(-28499i, 1i, -28619i, -11303i)))));
    return -vec3<i32>(1i, -max(var_1.b.d.a, countOneBits(26514i)), 2147483647i);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-396f, 1122f)) - _wgslsmith_f_op_f32(f32(-1f) * -117f)))) - _wgslsmith_f_op_f32(-1f)), Struct_3(false, u_input.b, vec2<bool>(true, true), Struct_1(u_input.a), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), true)), select(abs(u_input.b.x), 29027u, true == !(39541u == u_input.b.x)), Struct_1(_wgslsmith_mod_i32(u_input.a, _wgslsmith_sub_i32(-1i ^ u_input.a, -u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-710f + 1038f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -557f) - 189f)) - _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(floor(-1121f))))));
    let var_1 = u_input.b.x;
    var var_2 = var_0.b;
    global1 = -(_wgslsmith_mod_vec2_i32(vec2<i32>(-global1.x, var_0.d.a), max(vec2<i32>(u_input.a, 37323i), vec2<i32>(var_2.d.a, global1.x)) ^ abs(vec2<i32>(23629i, var_2.d.a))) << (countOneBits(firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(31275u, 0u), var_2.b))) % vec2<u32>(32u)));
    let var_3 = Struct_5(false);
    return Struct_2(_wgslsmith_add_vec3_i32(func_3() & (vec3<i32>(global1.x, global1.x, u_input.a) << (~vec3<u32>(43886u, var_0.c, var_2.b.x) % vec3<u32>(32u))), vec3<i32>(firstTrailingBit(global1.x ^ -1i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-32507i, var_0.b.d.a, u_input.a, -18875i), vec4<i32>(2147483647i, 2147483647i, var_0.b.d.a, 911i)), -firstLeadingBit(2147483647i))));
}

fn func_1(arg_0: f32) -> f32 {
    global3 = array<vec2<u32>, 14>();
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(916f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-arg_0))))));
    global3 = array<vec2<u32>, 14>();
    let var_2 = Struct_2(~vec3<i32>(reverseBits(var_0.a.x & -5019i), -firstLeadingBit(2147483647i), ~var_0.a.x));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-228f + _wgslsmith_f_op_f32(floor(arg_0)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x * -171f), 3047f)), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), u_input.a == var_0.a.x), u_input.b.x >= _wgslsmith_mod_u32(4294967295u, 28141u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<u32>, 14>();
    global0 = array<vec3<bool>, 2>();
    var var_0 = _wgslsmith_f_op_f32(func_1(-213f));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-843f)), -436f, _wgslsmith_f_op_f32(select(-848f, -2782f, false)))))));
    var var_2 = var_1.xz;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)), -280f, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.b.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(54199u, u_input.b.x) >> (vec2<u32>(89745u, 39512u) % vec2<u32>(32u)), vec2<u32>(0u, u_input.b.x)), _wgslsmith_clamp_u32(~u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x) | (u_input.b.x | u_input.b.x), ~u_input.b.x), _wgslsmith_sub_u32(~(u_input.b.x << (u_input.b.x % 32u)), 0u)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-12863i, 1i, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-27710i, 0i), vec2<i32>(-30403i, -9967i))), vec4<i32>(-_wgslsmith_div_i32(global1.x, -2147483647i), 14414i, -(~global1.x), -global1.x)), 1u);
}

