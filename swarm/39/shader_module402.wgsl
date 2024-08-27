struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, 0i, 11764i, 0i);

var<private> global1: vec2<f32>;

var<private> global2: array<f32, 23>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>) -> vec4<u32> {
    let var_0 = any(!vec4<bool>(false, true, _wgslsmith_f_op_f32(abs(1304f)) != _wgslsmith_f_op_f32(round(global1.x)), !(global2[_wgslsmith_index_u32(u_input.a.x, 23u)] >= -121f)));
    var var_1 = ~(~vec4<u32>(~(u_input.a.x >> (36571u % 32u)), 19097u, _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_mult_u32(1u, u_input.a.x), firstTrailingBit(38143u)), ~(48274u << (u_input.a.x % 32u))));
    var var_2 = Struct_1(-abs(1i >> (firstLeadingBit(u_input.a.x) % 32u)));
    var_2 = Struct_1(_wgslsmith_mod_i32(var_2.a | max(46194i, -51558i), abs(~(-16536i))));
    var_2 = Struct_1(var_2.a);
    return select(vec4<u32>(8960u, _wgslsmith_dot_vec3_u32(vec3<u32>(21254u, var_1.x, 4294967295u), vec3<u32>(~var_1.x, _wgslsmith_mult_u32(u_input.a.x, 4294967295u), ~1u)), var_1.x << (firstTrailingBit(firstLeadingBit(var_1.x)) % 32u), ~_wgslsmith_add_u32(28751u, var_1.x & 46331u)), _wgslsmith_div_vec4_u32(~u_input.a, firstTrailingBit(~u_input.a) << (_wgslsmith_sub_vec4_u32(max(u_input.a, vec4<u32>(39277u, u_input.a.x, var_1.x, 66844u)), ~vec4<u32>(0u, u_input.a.x, 71710u, u_input.a.x)) % vec4<u32>(32u))), !(global2[_wgslsmith_index_u32(abs(min(50520u, 75988u)), 23u)] != _wgslsmith_f_op_f32(1691f * global1.x)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1708f)) + 495f);
    return firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(max(_wgslsmith_div_i32(-2147483647i, arg_0.a), 2147483647i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-5908i, arg_0.a), _wgslsmith_sub_i32(-45858i, -2147483647i)), global0.x, min(2147483647i, arg_0.a ^ 6003i)), firstLeadingBit(~vec4<i32>(16983i, global0.x, 15364i, global0.x))));
}

fn func_2() -> vec4<i32> {
    var var_0 = _wgslsmith_sub_vec2_i32(~vec2<i32>(global0.x, ~(~9978i)), _wgslsmith_mult_vec2_i32(-vec2<i32>(2147483647i, global0.x), countOneBits(~vec2<i32>(global0.x, global0.x))));
    let var_1 = vec2<u32>(u_input.a.x, 60755u);
    let var_2 = false;
    var var_3 = 0i;
    global2 = array<f32, 23>();
    return func_4(Struct_1(abs(-(i32(-1i) * -5848i))), !(!(global1.x < global1.x)), _wgslsmith_add_vec4_u32(u_input.a, func_3(select(select(vec2<bool>(var_2, false), vec2<bool>(var_2, true), false), vec2<bool>(var_2, false), vec2<bool>(true, var_2)))), Struct_1(20209i));
}

fn func_1() -> i32 {
    var var_0 = abs(~(~u_input.a.x));
    var var_1 = Struct_1(abs(global0.x));
    let var_2 = global0.x;
    var var_3 = vec4<i32>(_wgslsmith_mult_i32(var_1.a, -1i & max(global0.x, 2147483647i)) >> (_wgslsmith_mult_u32(~u_input.a.x, u_input.a.x) % 32u), ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, var_1.a, -15392i) ^ vec4<i32>(var_1.a, global0.x, -28276i, global0.x), func_2())), (-global0.x ^ -2147483647i) ^ global0.x, ~func_4(Struct_1(_wgslsmith_div_i32(global0.x, var_1.a)), any(vec4<bool>(true, true, false, true)), (u_input.a | u_input.a) | vec4<u32>(u_input.a.x, 55029u, 18212u, u_input.a.x), Struct_1(firstLeadingBit(global0.x))).x);
    let var_4 = vec4<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), (-15647i < var_1.a) | (var_3.x != 1i))), !(true & (false || (1901u > u_input.a.x))), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(max(0u, u_input.a.x), 23u)])) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-539f)))));
    return _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(~var_3.x, _wgslsmith_dot_vec3_i32(var_3.xwy, global0.xzw)), var_3.yx), vec2<i32>(max(global0.x, -45238i), global0.x) | vec2<i32>(-global0.x, _wgslsmith_div_i32(global0.x, global0.x))), vec2<i32>(4690i, -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 23>();
    let var_0 = vec2<i32>(global0.x, -(global0.x & -2147483647i));
    let var_1 = Struct_1(-2147483647i);
    let var_2 = _wgslsmith_clamp_vec3_u32(u_input.a.wxx, (vec3<u32>(abs(57841u), ~u_input.a.x, u_input.a.x) & u_input.a.yzz) ^ _wgslsmith_sub_vec3_u32(u_input.a.yyx, ~(~vec3<u32>(0u, 1u, u_input.a.x))), u_input.a.wxy);
    global0 = vec4<i32>(-1i, countOneBits(~(~var_0.x) >> (min(var_2.x, _wgslsmith_add_u32(u_input.a.x, 9395u)) % 32u)), 0i, _wgslsmith_div_i32(_wgslsmith_div_i32(func_1(), ~global0.x) >> (~1u % 32u), -_wgslsmith_add_i32(_wgslsmith_clamp_i32(13436i, var_1.a, 2147483647i), var_1.a << (var_2.x % 32u))));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(829f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1683f, 277f), _wgslsmith_f_op_f32(floor(-603f)))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(firstLeadingBit(96516u), 23u)], _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(0u, 23u)], global1.x), vec2<f32>(global2[_wgslsmith_index_u32(37046u, 23u)], global1.x)) + _wgslsmith_div_vec2_f32(vec2<f32>(global1.x, -613f), vec2<f32>(global1.x, -470f)))), !select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    let var_4 = Struct_1(10143i);
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a.wxw, u_input.a.wxw), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1434f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-115f * 857f))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, global1.x) - vec2<f32>(-263f, global2[_wgslsmith_index_u32(0u, 23u)])), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(884f, 266f)))))))));
}

