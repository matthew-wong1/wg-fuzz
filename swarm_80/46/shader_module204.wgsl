struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(false, true, 20214u, 0i)), Struct_2(Struct_1(false, true, 4294967295u, -2352i)), Struct_2(Struct_1(false, true, 18360u, i32(-2147483648))), Struct_2(Struct_1(true, true, 0u, -50167i)), Struct_2(Struct_1(true, true, 4294967295u, -53125i)));

var<private> global1: Struct_1 = Struct_1(true, false, 4294967295u, -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_2) -> bool {
    global1 = arg_0.a;
    var var_0 = vec3<i32>(arg_0.a.d, _wgslsmith_mult_i32(_wgslsmith_mod_i32(global1.d, _wgslsmith_mod_i32(abs(2147483647i), -1i)), u_input.a), arg_0.a.d);
    var var_1 = var_0.zy;
    var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(-1i), arg_0.a.d, reverseBits(var_0.x)), vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-24309i, 2147483647i, -9585i, var_0.x), vec4<i32>(-24434i, arg_0.a.d, var_0.x, 0i)) | min(firstTrailingBit(global1.d), arg_0.a.d >> (global1.c % 32u)), -27472i, var_0.x));
    var var_2 = !select(select(!vec2<bool>(global1.a, global1.a), vec2<bool>(true, true), select(false, global1.a, all(vec2<bool>(true, true)))), select(select(vec2<bool>(true, global1.b), vec2<bool>(arg_0.a.a, global1.b), vec2<bool>(arg_0.a.b, false)), !(!vec2<bool>(false, arg_0.a.a)), !(!vec2<bool>(true, global1.b))), !arg_0.a.a);
    return true;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> vec2<f32> {
    global0 = array<Struct_2, 5>();
    var var_0 = Struct_1(true, true, global1.c, global1.d << (~4294967295u % 32u));
    var var_1 = !func_3(Struct_2(Struct_1(global1.a, any(vec2<bool>(false, true)), 27883u, 36570i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(763f * 522f), _wgslsmith_f_op_f32(ceil(287f)), _wgslsmith_f_op_f32(floor(-838f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(792f, 262f, global1.a)), _wgslsmith_f_op_f32(1486f * -1065f), _wgslsmith_f_op_f32(min(-1000f, 1666f)))), !vec3<bool>(any(vec2<bool>(global1.a, global1.b)), true, false)))));
    var var_3 = Struct_3(global0[_wgslsmith_index_u32(~43785u, 5u)], ~38265u, Struct_1(false, var_0.a, _wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.c, global1.c, var_0.c) >> (vec3<u32>(global1.c, 1u, 19154u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.c, global1.c, 25766u), vec3<u32>(var_0.c, 1u, 11662u)))), -2147483647i));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1486f, 2433f))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-320f * var_2.x), _wgslsmith_f_op_f32(abs(518f))))), global1.b)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<i32>) -> f32 {
    global0 = array<Struct_2, 5>();
    let var_0 = 0u;
    let var_1 = 1051f;
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(var_1, _wgslsmith_f_op_f32(-401f * var_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), ~vec2<u32>(arg_1.a.c, global1.c)), -arg_3.x ^ arg_0.a.d))));
    var var_3 = Struct_2(arg_0.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(178f * var_1)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<i32>, arg_3: i32) -> vec4<u32> {
    let var_0 = !vec4<bool>(true, !any(!vec4<bool>(false, true, false, arg_1)), global1.b, !all(select(vec3<bool>(global1.a, arg_1, global1.a), vec3<bool>(arg_1, false, false), vec3<bool>(global1.a, false, false))));
    var var_1 = ~((_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(global1.c, 1u, global1.c)), vec3<u32>(global1.c, 46715u, global1.c) ^ vec3<u32>(4294967295u, global1.c, global1.c)) >> (~firstLeadingBit(vec3<u32>(4294967295u, global1.c, global1.c)) % vec3<u32>(32u))) ^ reverseBits(select(countOneBits(vec3<u32>(4294967295u, 55748u, 1u)), vec3<u32>(global1.c, 43177u, global1.c) << (vec3<u32>(global1.c, global1.c, 85458u) % vec3<u32>(32u)), vec3<bool>(global1.b, var_0.x, arg_1))));
    global0 = array<Struct_2, 5>();
    var var_2 = 33146i;
    let var_3 = _wgslsmith_add_vec3_i32(-vec3<i32>(~(-1i), ~arg_3, u_input.a), arg_2) ^ vec3<i32>(~select(arg_3, -24975i, arg_1) | ((i32(-1i) * -29966i) | arg_3), countOneBits(-(~global1.d)), 2147483647i);
    return ~(max(vec4<u32>(var_1.x, var_1.x, global1.c, global1.c), abs(abs(vec4<u32>(global1.c, 1u, 43033u, global1.c)))) >> (vec4<u32>(countOneBits(_wgslsmith_clamp_u32(35812u, global1.c, global1.c)), var_1.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c, 1u), var_1.yz), 26288u >> (global1.c % 32u)), 6336u) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(1u, 27384u) & ~_wgslsmith_mult_u32(global1.c, global1.c), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.c, 4294967295u, global1.c), ~vec3<u32>(global1.c, global1.c, global1.c)) & global1.c, global1.c, ~2440u), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(global1.c, 5u)], global0[_wgslsmith_index_u32(global1.c, 5u)], Struct_3(global0[_wgslsmith_index_u32(4294967295u, 5u)], 0u, Struct_1(global1.b, true, global1.c, u_input.a)), vec4<i32>(2147483647i, 0i, u_input.a, 1i))), _wgslsmith_f_op_f32(f32(-1f) * -370f), 634f, -1260f) - vec4<f32>(242f, _wgslsmith_div_f32(309f, 581f), 1591f, _wgslsmith_f_op_f32(-118f * 1295f))), !(global1.a | !global1.b), ~firstLeadingBit(vec3<i32>(global1.d, -37492i, global1.d)), _wgslsmith_div_i32(firstLeadingBit(firstLeadingBit(global1.d)), u_input.a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-427f, _wgslsmith_f_op_f32(f32(-1f) * -1213f)), vec2<f32>(-1007f, _wgslsmith_f_op_f32(f32(-1f) * -271f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(239f, -308f))), _wgslsmith_div_vec2_f32(vec2<f32>(-650f, 385f), vec2<f32>(1560f, 457f)))) + _wgslsmith_div_vec2_f32(vec2<f32>(490f, 1084f), vec2<f32>(1015f, -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(851f, -1135f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, -1000f))))))), !vec2<bool>(abs(global1.c) >= abs(global1.c), true)));
    var var_2 = Struct_3(Struct_2(Struct_1(any(select(vec3<bool>(global1.b, global1.b, true), vec3<bool>(false, global1.b, false), vec3<bool>(global1.b, global1.a, false))), true, 1u, global1.d)), ~16957u, Struct_1(global1.a, !all(select(vec4<bool>(true, global1.a, global1.a, false), vec4<bool>(false, global1.b, false, global1.a), vec4<bool>(global1.b, global1.b, global1.a, false))), _wgslsmith_mult_u32(global1.c, global1.c), ~u_input.a));
    var_2 = Struct_3(Struct_2(Struct_1(global1.b, var_1.x < _wgslsmith_f_op_f32(step(981f, var_1.x)), var_2.c.c, u_input.a << (~1u % 32u))), 55088u, var_2.a.a);
    let var_3 = Struct_3(Struct_2(Struct_1(var_2.c.b, true, global1.c, max(-1i, u_input.a))), global1.c, Struct_1(false, any(!(!vec3<bool>(true, var_2.a.a.a, var_2.a.a.b))), var_2.b, global1.d));
    let var_4 = false;
    var var_5 = -17954i;
    var_0 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(countOneBits(reverseBits(-2147483647i) | (2147483647i | global1.d)), -((1i ^ global1.d) ^ 0i), ~0i, 6484i), _wgslsmith_clamp_i32(i32(-1i) * -u_input.a, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_2.a.a.d, 1i, var_2.a.a.d, -2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.a.a.d, 24438i, var_2.a.a.d, global1.d), vec4<i32>(2147483647i, -9367i, -55623i, -4938i))) & var_2.a.a.d, _wgslsmith_add_i32(-1i, _wgslsmith_mod_i32(var_3.a.a.d, var_2.a.a.d)) ^ 1i));
}

