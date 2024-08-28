struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: Struct_1;

var<private> global2: f32 = 854f;

var<private> global3: array<vec3<u32>, 5>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> vec2<f32> {
    let var_0 = ~vec4<i32>(_wgslsmith_dot_vec3_i32(~select(vec3<i32>(19859i, arg_0.x, 13914i), arg_0.wzw, vec3<bool>(arg_1, arg_1, arg_1)), arg_0.xyx), -global0[_wgslsmith_index_u32(~max(13054u, 5683u), 11u)], countOneBits(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 11u)]), countOneBits(_wgslsmith_add_i32(~(-31517i), global0[_wgslsmith_index_u32(u_input.a.x, 11u)] << (global1.c % 32u))));
    global2 = _wgslsmith_f_op_f32(-2020f * _wgslsmith_f_op_f32(-global1.d.x));
    let var_1 = _wgslsmith_mod_i32(-42112i, select(_wgslsmith_div_i32(-global0[_wgslsmith_index_u32(30124u, 11u)], -arg_0.x) & _wgslsmith_dot_vec4_i32(vec4<i32>(5532i, var_0.x, -25127i, 1i), -vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(global1.c, 11u)], 39746i, -2147483647i)), -_wgslsmith_clamp_i32(_wgslsmith_div_i32(30401i, 1i), var_0.x, i32(-1i) * -12548i), true));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.e))), _wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -498f)), global1.a.x)), vec2<f32>(global1.e, global1.d.x), u_input.a.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, -250f)) - global1.a.wy))), _wgslsmith_f_op_f32(step(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(253f * global1.d.x), _wgslsmith_f_op_f32(-296f - global1.d.x)))))));
    var var_2 = Struct_1(global1.a, global1.b, select(u_input.a.x, global1.c, false), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1173f, _wgslsmith_f_op_f32(min(global1.e, _wgslsmith_f_op_f32(f32(-1f) * -2297f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.b.x, 1000f))));
    return vec2<f32>(_wgslsmith_f_op_f32(sign(var_2.b.x)), -1444f);
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = any(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), true), false));
    let var_1 = firstLeadingBit(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(-1i, 17078i, global0[_wgslsmith_index_u32(arg_0.c, 11u)]), _wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(arg_0.c, 11u)], -9387i, global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec3<i32>(5687i, 32064i, global0[_wgslsmith_index_u32(arg_0.c, 11u)]))) & _wgslsmith_mod_vec3_i32(vec3<i32>(-6178i, global0[_wgslsmith_index_u32(global1.c, 11u)], global0[_wgslsmith_index_u32(12545u, 11u)]), _wgslsmith_sub_vec3_i32(vec3<i32>(-525i, 58440i, 33658i), vec3<i32>(-34292i, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], 1990i))), vec3<i32>(-1i, global0[_wgslsmith_index_u32(abs(max(global1.c, 4294967295u)), 11u)], -17101i | _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(14784u, 11u)], -19282i))));
    var var_2 = arg_0;
    let var_3 = arg_0;
    var var_4 = Struct_1(vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-270f, -380f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(324f * global1.e))))), 1f, var_2.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.a.x)) - _wgslsmith_f_op_vec2_f32(func_3(vec4<i32>(global0[_wgslsmith_index_u32(95133u, 11u)], -87459i, 26693i, 0i), false)).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-318f, 780f, false)) - -809f))), _wgslsmith_mod_u32(reverseBits(_wgslsmith_mod_u32(firstLeadingBit(15601u), 28371u << (var_3.c % 32u))), ~select(0u, _wgslsmith_div_u32(global1.c, 0u), all(vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a.xz * arg_0.a.xw))), 898f);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.e, _wgslsmith_f_op_f32(-arg_0.d.x)));
}

fn func_2() -> vec2<f32> {
    let var_0 = 2147483647i;
    var var_1 = ~_wgslsmith_sub_u32(~(~0u), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a.x, global1.c), u_input.a.x));
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    global2 = _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1189f, global1.a.x, global1.d.x, global1.e))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(490f, global1.e, global1.a.x, -1229f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(318f, 169f, 1000f, global1.a.x), global1.a, vec4<bool>(false, false, true, false))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global1.b, global1.a.xz)) + _wgslsmith_f_op_vec2_f32(-global1.d))), 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], var_0, -1i, var_0), false)))), -1000f)));
    return global1.d;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<f32>, arg_3: i32) -> vec4<u32> {
    let var_0 = Struct_1(global1.a, _wgslsmith_div_vec2_f32(arg_2.yx, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, arg_2.x)) - vec2<f32>(1184f, arg_2.x)), vec2<f32>(-248f, global1.d.x))), ~(~u_input.a.x) & 17027u, _wgslsmith_f_op_vec2_f32(func_2()), global1.a.x);
    global0 = array<i32, 11>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(var_0.a)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-706f, _wgslsmith_f_op_f32(ceil(1549f))))), ~var_0.c, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, 1068f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2365f, -296f))) + var_0.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(798f * -707f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) - -378f))));
    let var_2 = Struct_1(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(min(288f, -286f)), -295f, _wgslsmith_f_op_f32(773f * var_1.b.x)), var_1.a.yx, firstTrailingBit(_wgslsmith_div_u32(abs(u_input.a.x), 4294967295u) ^ 4294967295u), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2()), var_0.b, vec2<bool>(true, true)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -260f))), -604f) + -1020f));
    let var_3 = true;
    return vec4<u32>(var_2.c, 0u, ~arg_1, ~(~(~max(arg_1, global1.c))));
}

fn func_5(arg_0: vec4<u32>) -> StorageBuffer {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e * -926f)))), -2311f);
    return StorageBuffer(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_f_op_f32(-385f - _wgslsmith_f_op_f32(abs(global1.a.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_div_vec4_u32(abs(~vec4<u32>(1u, global1.c, 3641u, global1.c)) | (func_1(global0[_wgslsmith_index_u32(4294967295u, 11u)], 3757u, vec3<f32>(global1.a.x, global1.d.x, -756f), -2147483647i) & vec4<u32>(u_input.a.x, global1.c, 1u, u_input.a.x)), vec4<u32>(~global1.c, _wgslsmith_div_u32(u_input.a.x, 0u), global1.c, 4294967295u) << (vec4<u32>(global1.c, u_input.a.x, 0u, ~u_input.a.x) % vec4<u32>(32u))));
}

