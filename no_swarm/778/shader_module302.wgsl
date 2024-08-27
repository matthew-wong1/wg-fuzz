struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 23>;

var<private> global1: array<Struct_3, 16>;

var<private> global2: Struct_3 = Struct_3(-1i);

var<private> global3: array<vec4<i32>, 5>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(1u, 16u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(466f, 1057f), vec2<f32>(2044f, -367f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(857f, 1121f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(482f, 1512f))), vec2<bool>(true, true)))));
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, ~(~select(u_input.e, u_input.e, true))), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(68395u, 0u, u_input.e), vec3<u32>(u_input.e, 2136u, 4294967295u), vec3<u32>(u_input.e, u_input.b.x, u_input.b.x)) >> (select(vec3<u32>(u_input.e, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), false) % vec3<u32>(32u))) >> (vec3<u32>(32078u, u_input.e, 1u) % vec3<u32>(32u)));
    return ~reverseBits(firstLeadingBit(reverseBits(-global2.a)));
}

fn func_2() -> bool {
    let var_0 = Struct_1(firstTrailingBit(firstLeadingBit(~func_3())));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-731f + -2596f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-927f * _wgslsmith_f_op_f32(step(-813f, -1000f)))));
    global3 = array<vec4<i32>, 5>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * vec2<f32>(var_1, var_1))))))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2572f, var_1))));
    let var_3 = select(!vec3<bool>(u_input.b.x > u_input.e, true, false), vec3<bool>(false, all(!select(vec2<bool>(false, false), vec2<bool>(true, false), true)), any(vec2<bool>(true, true))), select(vec3<bool>(select(true, true, 19256u > u_input.e), !all(vec2<bool>(true, false)), true), !vec3<bool>(all(vec3<bool>(true, false, false)), false, true), !(_wgslsmith_f_op_f32(var_1 + var_2.x) > _wgslsmith_f_op_f32(f32(-1f) * -229f))));
    return false;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    global1 = array<Struct_3, 16>();
    global0 = array<vec4<u32>, 23>();
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_3.d, arg_3.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(570f, arg_3.d))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-309f, arg_3.d) - _wgslsmith_div_vec2_f32(vec2<f32>(563f, arg_3.a), vec2<f32>(arg_3.d, -488f))), vec2<bool>(true, func_2()))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a, -120f)) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(480f, -989f), vec2<f32>(arg_3.a, arg_3.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a, arg_3.a))))))));
    let var_1 = 6176u;
    global3 = array<vec4<i32>, 5>();
    return Struct_1(arg_3.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(~4890u, firstLeadingBit(~u_input.e));
    global2 = Struct_3(global2.a);
    let var_1 = global1[_wgslsmith_index_u32(u_input.e, 16u)];
    var var_2 = func_1(global0[_wgslsmith_index_u32(43719u, 23u)], Struct_3(select(1i, _wgslsmith_sub_i32(u_input.a.x >> (var_0 % 32u), u_input.d), false)), -u_input.d, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1364f, 1185f)), -609f)), 1u, ~u_input.a.yx, -1352f, global0[_wgslsmith_index_u32(var_0, 23u)]));
    let var_3 = u_input.c.ywy;
    global2 = Struct_3(-2147483647i);
    var var_4 = -1341f;
    let var_5 = Struct_3(1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1011f, 1011f, 1000f) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1023f, 1000f, -1568f)))), vec3<f32>(_wgslsmith_div_f32(637f, 906f), _wgslsmith_div_f32(-692f, -671f), _wgslsmith_div_f32(-804f, -1483f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1313f)))), -1i);
}

