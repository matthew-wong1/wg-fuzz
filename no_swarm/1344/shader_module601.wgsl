struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1094f;

var<private> global1: array<u32, 7>;

var<private> global2: vec2<u32>;

var<private> global3: array<Struct_2, 17>;

var<private> global4: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: i32, arg_3: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1905f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1584f)), (global2.x >= abs(u_input.e.x)) && (true & any(global4[_wgslsmith_index_u32(global2.x, 16u)])))));
    let var_1 = global4[_wgslsmith_index_u32(~4294967295u << (_wgslsmith_mult_u32(51725u, arg_1 & 47191u) % 32u), 16u)];
    let var_2 = arg_2;
    var var_3 = -vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(abs(-9558i), i32(-1i) * -9740i), var_2), 0i, ~(~(u_input.b.x << (arg_3 % 32u))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(508f + _wgslsmith_f_op_f32(arg_0.x - -696f))))), 1000f);
    return ~min(~0u ^ reverseBits(_wgslsmith_clamp_u32(91438u, 1u, 0u)), ~u_input.e.x);
}

fn func_2() -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(565f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2189f) * 1443f)))));
    let var_0 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.c, u_input.c), ~u_input.a.x) >= firstLeadingBit(-_wgslsmith_div_i32(0i, u_input.b.x)), !vec4<bool>(all(vec2<bool>(true, true)), true, !(u_input.b.x != u_input.c), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), false))));
    global2 = vec2<u32>(~global2.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(6030u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global2.x, 7u)], _wgslsmith_mod_u32(1u, 1u), func_3(vec2<f32>(-1066f, 370f), 1u, 1i, u_input.e.x)), 1u)), 7u)]);
    let var_1 = select(select(vec2<bool>(false, true), select(select(select(vec2<bool>(true, var_0.a), vec2<bool>(true, false), var_0.b.xy), var_0.b.yy, select(var_0.b.yz, var_0.b.yx, var_0.b.x)), var_0.b.zw, _wgslsmith_f_op_f32(round(-445f)) == -692f), select(select(vec2<bool>(true, true), var_0.b.xz, vec2<bool>(false, true)), vec2<bool>(true, all(vec3<bool>(false, true, var_0.b.x))), all(vec3<bool>(false, true, false)))), select(var_0.b.yx, select(var_0.b.zw, !vec2<bool>(false, var_0.b.x), true), !var_0.b.wz), false);
    let var_2 = Struct_1(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global2.x, 81569u, 22638u, 0u)), ~vec4<u32>(62193u, 15691u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.x, 7u)], 7u)], 7u)], 7u)], global2.x)), 1u), u_input.e.x, ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.e.x, 7u)] << (11700u % 32u), ~global1[_wgslsmith_index_u32(global2.x, 7u)])), var_0.b.x, select(select(vec4<bool>(var_0.b.x, true, false, true), !var_0.b, !(var_0.a || var_1.x)), select(select(vec4<bool>(false, var_1.x, var_1.x, true), select(vec4<bool>(var_1.x, false, var_0.a, false), vec4<bool>(var_1.x, true, true, true), var_0.b), var_1.x), select(var_0.b, !var_0.b, !var_0.b), var_0.b.x), !var_1.x), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-262f * -130f) + 196f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-292f)) * _wgslsmith_f_op_f32(f32(-1f) * -579f)), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(f32(-1f) * -835f))), -3411f));
    return Struct_2(true, var_2.c);
}

fn func_1() -> u32 {
    var var_0 = func_2();
    var var_1 = ~(vec2<u32>(~4294967295u, 12651u) >> (~firstTrailingBit(~u_input.e.zx) % vec2<u32>(32u)));
    global1 = array<u32, 7>();
    var var_2 = all(var_0.b.yz);
    var_1 = _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(11434u, 7u)], 2486u), ~1u)) ^ _wgslsmith_mult_vec2_u32(~u_input.e.yz, u_input.e.xz), _wgslsmith_mult_vec2_u32(select(u_input.e.yz, _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, 8709u), vec2<u32>(27855u, 15246u)), u_input.e.yx | u_input.e.xx), vec2<bool>(select(var_0.a, var_0.b.x, true), all(vec3<bool>(var_0.a, var_0.a, var_0.b.x)))), (max(vec2<u32>(var_1.x, 89476u), u_input.e.yy) << (_wgslsmith_sub_vec2_u32(u_input.e.xz, vec2<u32>(3529u, 4294967295u)) % vec2<u32>(32u))) & vec2<u32>(88758u, global2.x)));
    return abs(_wgslsmith_mult_u32(reverseBits(global2.x << (_wgslsmith_sub_u32(u_input.e.x, 1u) % 32u)), u_input.d));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_4, arg_3: vec3<u32>) -> StorageBuffer {
    let var_0 = ~(~arg_2.a.yy) | (_wgslsmith_mult_vec2_u32(firstTrailingBit(~u_input.e.yy), arg_2.a.yx) | ~(~vec2<u32>(21981u, arg_0)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-672f, _wgslsmith_f_op_f32(min(584f, 919f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -250f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1967f, -112f, false)))) + -2708f) + -914f), _wgslsmith_f_op_f32(floor(-1257f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-500f, var_1.x, -1110f, var_1.x), vec4<f32>(var_1.x, 165f, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.x, -461f, var_1.x))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(959f, -727f, -714f, 1062f), vec4<f32>(-796f, var_1.x, 1197f, var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 490f, 163f, var_1.x)))), func_2().b.x)))), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, !(-arg_1 <= -6425i), (~u_input.e.x > ~4294967295u) || any(vec2<bool>(false, true)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1784f, var_1.x, -832f));
    return StorageBuffer(~_wgslsmith_mult_u32(~var_0.x, var_0.x), _wgslsmith_div_f32(-752f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(var_2.x - var_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x))))), arg_2.a.zz, var_2, _wgslsmith_f_op_vec3_f32(-var_1.wzw));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(), _wgslsmith_mod_i32(select(~u_input.b.x, 30815i, false), min(~0i, -(~(-13633i)))), Struct_4((u_input.e | vec3<u32>(global2.x, u_input.d, global1[_wgslsmith_index_u32(40081u, 7u)])) >> (~vec3<u32>(global1[_wgslsmith_index_u32(global2.x, 7u)], 0u, global2.x) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~u_input.e << (u_input.e % vec3<u32>(32u)), vec3<u32>(u_input.e.x, ~57363u, _wgslsmith_clamp_u32(72408u, u_input.e.x, 42586u))), vec3<u32>(global1[_wgslsmith_index_u32(~firstLeadingBit(4294967295u), 7u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.d) << ((4294967295u & u_input.d) % 32u), 7u)], min(_wgslsmith_mod_u32(global2.x, u_input.d), u_input.d))));
}

