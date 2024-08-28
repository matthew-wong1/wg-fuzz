struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(605f), Struct_1(586f), Struct_1(-1000f), Struct_1(-473f), Struct_1(514f), Struct_1(1000f), Struct_1(766f));

var<private> global3: vec2<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = i32(-1i) * -(i32(-1i) * -(i32(-1i) * -9661i));
    global3 = _wgslsmith_mult_vec2_i32(reverseBits(countOneBits(vec2<i32>(_wgslsmith_mult_i32(var_0, global3.x), min(-2147483647i, global3.x)))), min(vec2<i32>(~global3.x & max(var_0, global3.x), var_0), -((vec2<i32>(0i, global3.x) >> (u_input.b.xy % vec2<u32>(32u))) ^ (vec2<i32>(var_0, var_0) & vec2<i32>(0i, var_0)))));
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(368f, _wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(step(global1.x, global1.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1694f, -223f, -1575f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1170f, global1.x, global1.x)))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1573f, global1.x, global1.x))))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(-726f)), _wgslsmith_f_op_f32(select(global1.x, 209f, false)), global1.x)), _wgslsmith_div_vec3_f32(vec3<f32>(-889f, _wgslsmith_f_op_f32(trunc(1779f)), 372f), vec3<f32>(_wgslsmith_div_f32(global1.x, global1.x), global1.x, global1.x))));
    return false;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> u32 {
    global0 = array<Struct_1, 3>();
    var var_0 = select(!any(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)), !func_3() || arg_1.x, arg_1.x);
    return 43829u;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = ~_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 49925u)), abs(reverseBits(vec4<u32>(u_input.b.x, 68521u, 62070u, u_input.b.x)) >> (~vec4<u32>(1u, 1u, 0u, 0u) % vec4<u32>(32u))));
    let var_1 = max(~(select(vec3<i32>(-73452i, 6601i, global3.x), _wgslsmith_add_vec3_i32(vec3<i32>(global3.x, -18078i, global3.x), vec3<i32>(global3.x, 2147483647i, -25006i)), vec3<bool>(true, false, arg_1.x)) << (vec3<u32>(_wgslsmith_add_u32(var_0.x, var_0.x), _wgslsmith_sub_u32(var_0.x, u_input.a.x), u_input.a.x << (var_0.x % 32u)) % vec3<u32>(32u))), vec3<i32>(global3.x, ~(-41559i), _wgslsmith_clamp_i32(min(_wgslsmith_add_i32(34445i, 1i), global3.x), 1i, global3.x & 8066i)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(-865f + 988f)))));
    let var_3 = select(!select(vec4<bool>(arg_1.x, global3.x < global3.x, any(arg_1), false), vec4<bool>(false, any(vec3<bool>(false, true, arg_1.x)), true, all(vec3<bool>(arg_1.x, true, arg_1.x))), true), select(!select(!vec4<bool>(arg_1.x, arg_1.x, true, true), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(false, false, false, arg_1.x)), select(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_1.x, true, arg_1.x, true), vec4<bool>(false, arg_1.x, arg_1.x, false)), !select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)), vec4<bool>(true, false, true, true)), !vec4<bool>(all(arg_1), true, false, arg_1.x)), _wgslsmith_sub_u32(4294967295u, ~u_input.b.x) < func_2(31229u, select(!vec3<bool>(arg_1.x, false, arg_1.x), !vec3<bool>(arg_1.x, false, true), select(vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(true, false, false)))));
    global2 = array<Struct_1, 7>();
    return var_2;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x << (1u % 32u), u_input.a.x), 7u)];
    let var_1 = func_4(global0[_wgslsmith_index_u32(~select(u_input.a.x, reverseBits(1u) >> (func_2(u_input.b.x, vec3<bool>(false, false, false)) % 32u), any(vec4<bool>(true, true, false, true)) || true), 3u)], vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1660f, global1.x, -680f)));
    let var_2 = func_4(func_4(Struct_1(var_1.a), vec2<bool>(any(vec4<bool>(false, true, true, true)), !(global3.x < -6852i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, -369f, var_1.a), vec3<f32>(global1.x, 461f, -393f)))))), !(!vec2<bool>(66935u >= u_input.b.x, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(344f * global1.x)), -543f, -292f)));
    var var_3 = ~countOneBits(_wgslsmith_mod_vec2_u32(min(_wgslsmith_div_vec2_u32(u_input.a, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 43826u), vec2<u32>(u_input.b.x, 2280u))), u_input.a));
    var var_4 = !select(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), false), true)), vec2<bool>(any(vec2<bool>(true, true)), select(true, u_input.a.x > 1u, false)));
    return func_4(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -544f) * _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + 720f) - _wgslsmith_f_op_f32(-var_0.a)), !any(vec2<bool>(var_4.x, true))))), select(!(!vec2<bool>(true, var_4.x)), vec2<bool>(var_4.x, any(vec2<bool>(var_4.x, var_4.x))), true), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + global1.x) - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, 197f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1431f, var_0.a) - _wgslsmith_f_op_f32(exp2(var_0.a)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1026f, 204f, 1066f), vec3<f32>(arg_0.a, -246f, arg_0.a)))))))));
}

fn func_5(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = global1.xz;
    global0 = array<Struct_1, 3>();
    var var_1 = func_1(Struct_1(global1.x));
    var var_2 = func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(arg_0, vec2<bool>(true, false), vec3<f32>(703f, var_1.a, 1000f)).a * _wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_div_f32(global1.x, 845f))), vec2<bool>(false, all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))) || true), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(round(1454f)), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(269f, var_1.a)), 1601f)))));
    let var_3 = reverseBits(~(~_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(25927u, u_input.b.x, u_input.b.x))));
    return vec3<i32>(select(0i, ~(-7793i), false), global3.x, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, global3.x, 2147483647i, -6062i), reverseBits(vec4<i32>(-7176i, 0i, global3.x, global3.x))), abs(1i)) >> (reverseBits(reverseBits(max(u_input.b.x, u_input.b.x))) % 32u));
}

fn func_6(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: f32) -> Struct_1 {
    let var_0 = vec4<f32>(-399f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -232f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + arg_3)), 1000f);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(341f + 1705f));
    let var_2 = vec2<u32>(max(u_input.a.x, firstTrailingBit(_wgslsmith_mult_u32(~56536u, u_input.b.x))), firstLeadingBit(~(~u_input.a.x)));
    var var_3 = global3.x;
    var_3 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32((-2147483647i << (_wgslsmith_dot_vec3_u32(vec3<u32>(18909u, 4294967295u, 4294967295u), u_input.b) % 32u)) << ((0u & ~var_2.x) % 32u), -(~(~global3.x)), -(i32(-1i) * -2147483647i)), 0i);
    return func_4(Struct_1(-762f), vec2<bool>(true, func_3()), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global1.x, var_0.x), arg_3, _wgslsmith_f_op_f32(step(701f, 1201f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(min(func_5(func_1(global2[_wgslsmith_index_u32(15523u, 7u)])), _wgslsmith_add_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global3.x, -2147483647i), vec3<i32>(0i, 0i, -2147483647i)), vec3<i32>(0i, _wgslsmith_div_i32(global3.x, global3.x), ~11304i))), select(vec4<bool>(true, func_3(), any(vec2<bool>(true, true)) | true, true), vec4<bool>(_wgslsmith_f_op_f32(trunc(312f)) < _wgslsmith_f_op_f32(103f + global1.x), select(false, false, true) != true, func_5(Struct_1(-1839f)).x != ~1i, false), !vec4<bool>(true, true, all(vec2<bool>(false, true)), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1766f * 1244f) * _wgslsmith_f_op_f32(global1.x * 669f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -794f) + _wgslsmith_f_op_f32(f32(-1f) * -297f)))));
    var var_1 = any(vec2<bool>(false, !(!all(vec3<bool>(false, true, true)))));
    let var_2 = global0[_wgslsmith_index_u32(u_input.b.x, 3u)];
    let var_3 = global0[_wgslsmith_index_u32(func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(17909u, u_input.a.x, _wgslsmith_add_u32(u_input.b.x, u_input.a.x), countOneBits(u_input.b.x)), vec4<u32>(~1u, u_input.b.x, abs(41004u), abs(62205u))) | (~u_input.a.x & 4294967295u), !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(func_3(), true, false))), 3u)];
    global1 = _wgslsmith_div_vec3_f32(vec3<f32>(-1061f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(493f, -485f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), vec3<f32>(_wgslsmith_f_op_f32(var_2.a + global1.x), 1000f, var_3.a));
    global0 = array<Struct_1, 3>();
    global3 = func_5(func_4(Struct_1(_wgslsmith_f_op_f32(-675f - _wgslsmith_f_op_f32(step(var_2.a, var_3.a)))), vec2<bool>(all(vec2<bool>(true, true)), !any(vec2<bool>(false, false))), vec3<f32>(var_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), global1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1218f)), _wgslsmith_f_op_f32(round(var_0.a)))))).xy;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.zy, ~min(1u, _wgslsmith_clamp_u32(0u, 76600u, u_input.a.x)) >> (~(u_input.a.x | ~u_input.b.x) % 32u), vec2<u32>(u_input.a.x, 0u));
}

