struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(-51862i, -51868i), vec2<i32>(-13652i, -4347i), vec2<i32>(i32(-2147483648), -5173i), vec2<i32>(41006i, 22871i), vec2<i32>(-26936i, -20233i), vec2<i32>(2147483647i, 1i), vec2<i32>(0i, -1i), vec2<i32>(13997i, 56939i), vec2<i32>(-28680i, -1i), vec2<i32>(1i, 30233i), vec2<i32>(-59421i, -1i), vec2<i32>(31158i, 2147483647i), vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, -1i), vec2<i32>(-5442i, 2147483647i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(63863i, 0i), vec2<i32>(2147483647i, -11773i), vec2<i32>(2147483647i, -42320i), vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, 0i), vec2<i32>(54730i, 2147483647i), vec2<i32>(-1i, 6684i), vec2<i32>(-1i, 41199i), vec2<i32>(45266i, 2147483647i), vec2<i32>(27819i, 5938i), vec2<i32>(2147483647i, 32699i), vec2<i32>(1i, 2996i), vec2<i32>(-13259i, 4681i), vec2<i32>(-77416i, -6330i), vec2<i32>(46867i, -19801i), vec2<i32>(-47605i, 34042i));

var<private> global1: Struct_2 = Struct_2(vec2<f32>(-816f, 211f));

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_1, 28>;

var<private> global4: vec3<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -470f), 1000f, 704f))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1127f - global1.a.x), _wgslsmith_f_op_f32(global1.a.x - -288f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a.x), -717f)))));
    var var_1 = vec3<i32>(~(~(-1i)), -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(global4.x, 26911i, -32443i, global4.x)), abs(vec4<i32>(27826i, -2147483647i, -1i, global4.x))) << (reverseBits(u_input.b) % 32u), 14181i);
    global4 = select(-(-vec3<i32>(global4.x, -2147483647i, -39864i) & vec3<i32>(37372i, global4.x, ~1779i)), vec3<i32>(u_input.a, countOneBits(var_1.x), 0i), vec3<bool>(!all(select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, global2.x, global2.x))), !all(vec4<bool>(false, false, global2.x, true)) == any(vec2<bool>(global2.x, global2.x)), (~0u < ~u_input.b) != false));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - global1.a.x))) * 1021f));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global1.a)) - vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1804f))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 655f, var_3.a.x));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(arg_0 << (arg_0 % 32u), 28u)];
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()))));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1780f, -695f) * _wgslsmith_f_op_f32(round(353f))), _wgslsmith_f_op_f32(ceil(-1407f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(671f + arg_2.a.x)))))) * vec3<f32>(global1.a.x, -785f, _wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(step(global1.a.x, _wgslsmith_f_op_f32(min(-156f, arg_2.a.x)))))));
    var var_3 = global1.a.x;
    return global3[_wgslsmith_index_u32(arg_0, 28u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    let var_0 = global2.x;
    global4 = _wgslsmith_clamp_vec3_i32(-max(~firstTrailingBit(vec3<i32>(-44491i, 28115i, -1i)), reverseBits(~vec3<i32>(-9813i, arg_0.a.x, 43795i))), reverseBits(vec3<i32>(_wgslsmith_add_i32(0i, -21121i), ~(global4.x | u_input.a), select(~arg_0.a.x, _wgslsmith_sub_i32(arg_0.a.x, 61546i), false))), select(_wgslsmith_mod_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 12144i, u_input.c.x), vec3<i32>(-2147483647i, 8244i, u_input.a)), vec3<i32>(~1916i, 2147483647i, i32(-1i) * -1i)), ~((vec3<i32>(global4.x, global4.x, 2147483647i) & vec3<i32>(global4.x, 2147483647i, arg_0.a.x)) | vec3<i32>(3697i, 0i, 8011i)), select(!vec3<bool>(true, arg_2, false), vec3<bool>(!global2.x, true, global2.x), !(!vec3<bool>(arg_2, true, arg_2)))));
    var var_1 = !((arg_2 & arg_2) & global2.x);
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1103f, -1420f)), _wgslsmith_f_op_f32(-arg_1.a.x)))));
    var_1 = any(select(!vec4<bool>(17288i != u_input.c.x, false, false, arg_2), vec4<bool>(875f > _wgslsmith_f_op_f32(floor(829f)), true, arg_2 == true, true), !arg_2));
    return arg_1;
}

fn func_1() -> vec2<f32> {
    global1 = func_4(func_2(40293u, vec3<i32>(u_input.c.x & 1i, -13095i, 57038i) << (vec3<u32>(~u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)), Struct_2(global1.a)), Struct_2(global1.a), global2.x);
    global1 = Struct_2(_wgslsmith_div_vec2_f32(global1.a, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-312f + -193f)), global1.a.x)));
    global4 = select(select(-vec3<i32>(global4.x, _wgslsmith_div_i32(global4.x, -1i), ~global4.x), reverseBits(-reverseBits(vec3<i32>(1i, u_input.c.x, global4.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global1.a.x, global1.a.x, false)))) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.a.x - 1000f)))), vec3<i32>(u_input.a | abs(min(-20826i, global4.x)), _wgslsmith_mod_i32(firstLeadingBit(func_2(u_input.b, vec3<i32>(1i, u_input.a, -26891i), Struct_2(vec2<f32>(global1.a.x, global1.a.x))).a.x), select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, global4.x, -13183i), vec3<i32>(global4.x, global4.x, 48101i)), 0i >> (1u % 32u), select(global2.x, global2.x, global2.x))), ~(19953i ^ _wgslsmith_mod_i32(global4.x, -24002i))), any(select(select(vec3<bool>(global2.x, global2.x, true), !vec3<bool>(global2.x, global2.x, false), vec3<bool>(true, true, global2.x)), !select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x), global2.x), !(!global2.x))));
    global4 = -(~(-(vec3<i32>(1i, -24267i, 0i) << (vec3<u32>(u_input.b, u_input.b, 1u) % vec3<u32>(32u)))) & ((abs(vec3<i32>(17541i, global4.x, -64895i)) >> (~vec3<u32>(u_input.b, 67763u, 11493u) % vec3<u32>(32u))) >> (~vec3<u32>(0u, u_input.b, 27612u) % vec3<u32>(32u))));
    let var_0 = global3[_wgslsmith_index_u32(u_input.b, 28u)];
    return _wgslsmith_f_op_vec3_f32(func_3()).zy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 32>();
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(func_1()));
    var var_0 = global3[_wgslsmith_index_u32(u_input.b, 28u)];
    var var_1 = _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b, reverseBits(countOneBits(~u_input.b))), ~u_input.b);
    global4 = vec3<i32>(1i, global4.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.a, var_0.a.x), vec3<i32>(2147483647i, 0i, var_0.a.x)) & func_2(15380u, vec3<i32>(-1i, -3963i, var_0.a.x), Struct_2(vec2<f32>(280f, 600f))).a.x) | (max(abs(~vec3<i32>(global4.x, -14798i, u_input.a)), vec3<i32>(-16215i, u_input.c.x, global4.x) ^ (vec3<i32>(-1i, var_0.a.x, 2559i) << (vec3<u32>(4294967295u, 1u, u_input.b) % vec3<u32>(32u)))) & vec3<i32>(min(abs(u_input.a), select(u_input.a, -21673i, false)), -39760i, -2147483647i));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.a.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global1.a.x)), global1.a.x)) * 265f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.a.x, global1.a.x))));
    global2 = vec3<bool>(true, any(!vec3<bool>(any(vec3<bool>(true, false, false)), -110f >= var_2.x, false)), all(select(vec4<bool>(true, true, 2018u > u_input.b, global2.x), select(vec4<bool>(global2.x, false, global2.x, false), !vec4<bool>(global2.x, global2.x, true, true), global2.x), !vec4<bool>(global2.x, true, global2.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(657f, 9643i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2)));
}

