struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<f32>(-120f, -563f, -649f), vec2<u32>(4294967295u, 0u), -1i);

var<private> global1: array<u32, 14> = array<u32, 14>(32109u, 16226u, 55296u, 1u, 16210u, 17090u, 0u, 0u, 55942u, 31073u, 10439u, 3439u, 1u, 0u);

var<private> global2: Struct_2;

var<private> global3: i32 = i32(-2147483648);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec2<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1237f, 1298f), _wgslsmith_f_op_f32(max(arg_0, global0.a.x)))), global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) * _wgslsmith_f_op_f32(f32(-1f) * -1756f))))));
    global0 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-global0.a.x)) + global0.a), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, arg_0, arg_0)))))), abs(global0.b), ~1i);
    let var_1 = arg_1.a;
    let var_2 = Struct_3(var_0, ~(vec2<u32>(~global0.b.x, select(4294967295u, arg_2.x, false)) | reverseBits(vec2<u32>(1u, global0.b.x))), max(32736i, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(global0.c, -2147483647i, 1i, global0.c)), _wgslsmith_div_vec4_i32(min(vec4<i32>(-8465i, global0.c, -51198i, global0.c), vec4<i32>(global0.c, -86418i, -46158i, global0.c)), vec4<i32>(global0.c, global0.c, 0i, -2147483647i) ^ vec4<i32>(-84002i, global0.c, 39988i, global0.c)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(597f, _wgslsmith_div_f32(-363f, _wgslsmith_f_op_f32(step(arg_0, 698f))), global0.a.x))));
    return !(!vec2<bool>(true, var_0.x < _wgslsmith_f_op_f32(-157f - global0.a.x)));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> vec3<i32> {
    let var_0 = vec2<i32>(5349i, _wgslsmith_div_i32(-46725i, -_wgslsmith_dot_vec2_i32(-vec2<i32>(global0.c, 0i), vec2<i32>(-1i, global0.c))));
    let var_1 = u_input.a.yzx;
    global2 = Struct_2(Struct_1(all(vec2<bool>(global2.a.a, any(vec2<bool>(global2.a.a, global2.a.a))))));
    var var_2 = any(select(select(!(!vec2<bool>(global2.a.a, false)), select(func_3(arg_0, Struct_2(Struct_1(global2.a.a)), vec2<u32>(40812u, 1u)), vec2<bool>(false, global2.a.a), select(vec2<bool>(global2.a.a, true), vec2<bool>(false, global2.a.a), false)), all(vec3<bool>(false, global2.a.a, true))), select(!(!vec2<bool>(global2.a.a, global2.a.a)), !func_3(global0.a.x, Struct_2(Struct_1(global2.a.a)), var_1.zx), !(!global2.a.a)), !select(vec2<bool>(true, false), !vec2<bool>(global2.a.a, global2.a.a), !vec2<bool>(true, global2.a.a))));
    let var_3 = select(!(!(!select(vec3<bool>(false, global2.a.a, true), vec3<bool>(global2.a.a, false, true), false))), !vec3<bool>(any(vec3<bool>(true, true, true)), func_3(-175f, Struct_2(Struct_1(global2.a.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.b.x, var_1.x), u_input.a.zz, vec2<u32>(global0.b.x, u_input.a.x))).x, global2.a.a), global2.a.a);
    return _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(reverseBits(global0.c), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(-1i, -32891i, var_0.x, global0.c)), abs(var_0.x)) >> (var_1 % vec3<u32>(32u)), vec3<i32>(i32(-1i) * -68659i, global0.c, firstTrailingBit(~var_0.x))), vec3<i32>(1i, min(var_0.x, -var_0.x), firstTrailingBit(firstLeadingBit(countOneBits(global0.c)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<i32>) -> Struct_3 {
    var var_0 = select(select(!vec3<bool>(global2.a.a, true, true || global2.a.a), vec3<bool>(all(!vec4<bool>(global2.a.a, true, global2.a.a, true)), false, select(true, global2.a.a, false)), vec3<bool>(_wgslsmith_f_op_f32(-global0.a.x) > _wgslsmith_f_op_f32(907f * global0.a.x), any(vec4<bool>(global2.a.a, false, true, false)), global2.a.a)), !vec3<bool>(false, !all(vec3<bool>(global2.a.a, global2.a.a, false)), false), !(!vec3<bool>(true, any(vec3<bool>(global2.a.a, global2.a.a, false)), any(vec2<bool>(global2.a.a, global2.a.a)))));
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -148f, -474f)), vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(global0.a.x + 701f), _wgslsmith_f_op_f32(-global0.a.x)), vec3<bool>(true, global0.a.x < global0.a.x, true))))), ~vec2<u32>(1u, _wgslsmith_clamp_u32(global0.b.x | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 14u)], 14u)], _wgslsmith_mod_u32(0u, 55068u), global0.b.x)), select(~0i, ~(~_wgslsmith_mult_i32(arg_1.x, 10847i)), false));
    var var_1 = !var_0.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, 559f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, 1000f, -1287f, global0.a.x))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), global0.a.x)) * var_2.x);
    return Struct_3(_wgslsmith_f_op_vec3_f32(global0.a * global0.a), u_input.a.yx, _wgslsmith_add_i32(_wgslsmith_mult_i32(reverseBits(global0.c), -3412i), 21924i));
}

fn func_1(arg_0: Struct_3) -> i32 {
    let var_0 = func_4(vec3<i32>(-50670i, global0.c, global0.c), _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(firstTrailingBit(1i), 25580i, global0.c)), min(func_2(arg_0.a.x, _wgslsmith_div_vec3_f32(vec3<f32>(-1673f, global0.a.x, 927f), vec3<f32>(arg_0.a.x, global0.a.x, 152f))), abs(vec3<i32>(-37090i, arg_0.c, 0i) | vec3<i32>(-2147483647i, -4440i, 39043i)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.x, arg_0.a.x, 881f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, 1046f, 455f, var_0.a.x) + vec4<f32>(var_1.x, global0.a.x, global0.a.x, var_0.a.x)), vec4<f32>(var_1.x, var_1.x, var_0.a.x, -706f), vec4<bool>(true, global2.a.a, global2.a.a, global2.a.a))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-663f, 1000f, -266f, -903f) + vec4<f32>(-413f, -1604f, 616f, 199f))))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - 770f) + 1280f), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(656f)))))), vec4<bool>(true, select(true & (1000f <= global0.a.x), global2.a.a, true), any(!vec4<bool>(false, global2.a.a, global2.a.a, global2.a.a)), global2.a.a)));
    var var_3 = 197f;
    var var_4 = global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(15814u, 14u)], 14u)];
    return firstLeadingBit(18761i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_u32(global0.b, _wgslsmith_clamp_vec2_u32(~vec2<u32>(~u_input.a.x, global0.b.x), vec2<u32>(u_input.a.x, u_input.a.x) >> (~(~global0.b) % vec2<u32>(32u)), select(~(global0.b & vec2<u32>(global0.b.x, 0u)), _wgslsmith_clamp_vec2_u32(max(u_input.a.wz, vec2<u32>(90245u, 46844u)), vec2<u32>(u_input.a.x, 4294967295u), global0.b), false)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2707f)) + _wgslsmith_f_op_f32(ceil(global0.a.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(590f, _wgslsmith_f_op_f32(trunc(global0.a.x))))));
    var var_2 = !global2.a.a;
    global3 = func_1(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.a, vec3<f32>(global0.a.x, global0.a.x, global0.a.x)) + global0.a)), var_0, ~(-23431i)));
    global2 = Struct_2(global2.a);
    var_2 = all(vec3<bool>(global2.a.a, 1i >= abs(global0.c), false));
    global0 = func_4(~vec3<i32>(global0.c, _wgslsmith_add_i32(-2147483647i, 1i), global0.c), ~vec3<i32>(1i, global0.c, i32(-1i) * -2147483647i));
    global1 = array<u32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1368f))))));
}

