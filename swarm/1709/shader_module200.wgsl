struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<i32, 7>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec3<f32> {
    global0 = vec4<f32>(global0.x, -1393f, 1040f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x - -1800f), 1837f, true))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 177f) + _wgslsmith_f_op_f32(abs(global0.x))), global0.x, -218f, global0.x);
    let var_0 = _wgslsmith_f_op_f32(max(global0.x, global0.x));
    let var_1 = Struct_2(vec4<bool>(true, select(true, true, all(vec2<bool>(true, true))), true, all(vec4<bool>(true, true, true, true)) | false), Struct_1(u_input.a.xz, -firstTrailingBit(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], -1i)), abs(vec4<i32>(global1[_wgslsmith_index_u32(~1u, 7u)], ~(-2147483647i), _wgslsmith_clamp_i32(u_input.b, 0i, global1[_wgslsmith_index_u32(1u, 7u)]), 1i)), !vec4<bool>(true, false, all(vec2<bool>(false, true)), true), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(1u, 0u, u_input.a.x, u_input.a.x) << (vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))))));
    global1 = array<i32, 7>();
    return _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1427f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -274f))) - _wgslsmith_f_op_f32(trunc(global0.x))), -645f), global0.zzx));
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    let var_0 = Struct_5(u_input.b, Struct_3(arg_0.e, all(vec4<bool>(false, arg_0.e.b.d.x, all(arg_0.e.a), true)), Struct_2(vec4<bool>(arg_0.e.a.x, false, !arg_0.e.a.x, arg_0.e.b.d.x), arg_0.e.b), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.e.b.b.x, global1[_wgslsmith_index_u32(21778u, 7u)], -1i, -2147483647i), _wgslsmith_mult_vec4_i32(arg_0.e.b.c, vec4<i32>(1i, arg_0.d.x, global1[_wgslsmith_index_u32(21492u, 7u)], 0i))), arg_0.a), arg_0.e), arg_0.e, _wgslsmith_f_op_vec3_f32(func_3()));
    var var_1 = 1u;
    let var_2 = select(vec4<bool>(false, false, any(!(!vec3<bool>(arg_0.e.a.x, false, var_0.c.a.x))), var_0.c.a.x), var_0.b.a.b.d, false);
    let var_3 = (~(42547u << (arg_0.e.b.a.x % 32u)) | firstLeadingBit(_wgslsmith_clamp_u32(reverseBits(4294967295u), arg_0.e.b.e.x, arg_0.e.b.e.x))) | _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, arg_0.e.b.a.x, arg_0.e.b.a.x) ^ arg_0.e.b.e) >> (~arg_0.e.b.e % vec4<u32>(32u)), vec4<u32>(u_input.a.x, 18134u, var_0.b.c.b.a.x, ~42523u));
    var var_4 = ~(countOneBits(vec2<i32>(_wgslsmith_mod_i32(u_input.b, 1i), 1i)) ^ ~(firstLeadingBit(var_0.b.a.b.c.zy) >> (~arg_0.e.b.e.xw % vec2<u32>(32u))));
    return var_0.b;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_3) -> f32 {
    var var_0 = ~arg_2.a.b.b.x;
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-2467f)), -2576f, _wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, global0.x, 507f)))))))));
    var_1 = arg_2.c.b.d.x != false;
    var_0 = _wgslsmith_dot_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.e.b.c.x, global1[_wgslsmith_index_u32(~67083u, 7u)], _wgslsmith_mod_i32(arg_2.a.b.b.x, u_input.b), -arg_1.x), arg_2.d), abs(~arg_3.e.b.c), !arg_3.c.b.d.x), vec4<i32>(_wgslsmith_add_i32(-1i, arg_3.a.b.b.x), arg_2.a.b.c.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(-52855i, u_input.b), ~vec2<i32>(arg_3.a.b.b.x, arg_2.a.b.c.x)), vec2<i32>(arg_1.x, ~arg_1.x)), arg_1.x << (~u_input.a.x % 32u)));
    return _wgslsmith_f_op_f32(abs(-532f));
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> f32 {
    let var_0 = arg_1.b;
    global1 = array<i32, 7>();
    global1 = array<i32, 7>();
    var var_1 = vec4<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(1u >> (0u % 32u), -vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(arg_1.e.b.a.x, 7u)], 2147483647i), func_2(Struct_4(arg_1.a, var_0, u_input.b, arg_1.d, arg_1.e)), Struct_3(arg_1.e, arg_0, Struct_2(vec4<bool>(arg_1.e.a.x, true, false, arg_0), Struct_1(vec2<u32>(111996u, 24109u), arg_1.a.zx, arg_1.a, vec4<bool>(arg_0, arg_1.e.a.x, true, arg_1.e.b.d.x), vec4<u32>(0u, 0u, 30678u, u_input.a.x))), vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 7u)], u_input.b, 0i), Struct_2(vec4<bool>(false, arg_1.e.b.d.x, arg_1.e.b.d.x, arg_0), arg_1.e.b)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1413f) * _wgslsmith_f_op_f32(max(global0.x, -765f)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b)) * -396f), !arg_1.e.b.d.x, false);
    let var_2 = _wgslsmith_clamp_vec2_u32(~(~(~u_input.a.zy << (_wgslsmith_clamp_vec2_u32(arg_1.e.b.e.wy, arg_1.e.b.a, vec2<u32>(u_input.a.x, 4294967295u)) % vec2<u32>(32u)))), vec2<u32>(37027u, arg_1.e.b.e.x ^ abs(arg_1.e.b.a.x)), abs(select(vec2<u32>(select(arg_1.e.b.a.x, 88223u, arg_1.e.b.d.x), ~arg_1.e.b.a.x), _wgslsmith_div_vec2_u32(u_input.a.xx, arg_1.e.b.a) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a.x), arg_1.e.b.a), _wgslsmith_f_op_f32(max(372f, arg_1.b)) == _wgslsmith_div_f32(1073f, -788f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(max(623f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(510f - arg_1.b))))) - _wgslsmith_f_op_f32(1f + var_0));
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_4) -> vec4<bool> {
    var var_0 = arg_1;
    var var_1 = arg_2.e.b;
    return vec4<bool>(any(arg_2.e.a.wyw), arg_2.b < _wgslsmith_f_op_f32(step(576f, 394f)), !func_2(arg_2).a.a.x, var_1.d.x & var_1.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(firstTrailingBit(vec4<i32>(~global1[_wgslsmith_index_u32(firstLeadingBit(36786u), 7u)], -2147483647i, 2147483647i, _wgslsmith_add_i32(2147483647i, firstTrailingBit(-1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1000f))))), 0i, vec3<i32>(~_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 4779i) | ~(~1i), u_input.b ^ reverseBits(firstTrailingBit(30360i)), 13861i), Struct_2(func_5(global0.x, vec4<f32>(_wgslsmith_f_op_f32(func_1(false, Struct_4(vec4<i32>(u_input.b, 1i, 2147483647i, -24768i), 591f, -15374i, vec3<i32>(-2147483647i, -42012i, -1i), Struct_2(vec4<bool>(false, false, true, false), Struct_1(vec2<u32>(u_input.a.x, 44907u), vec2<i32>(u_input.b, u_input.b), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)], -1i, 2147483647i), vec4<bool>(true, false, false, true), vec4<u32>(u_input.a.x, 69583u, u_input.a.x, u_input.a.x)))))), _wgslsmith_f_op_vec3_f32(func_3()).x, global0.x, -1070f), Struct_4(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 11282i, u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], -11325i, u_input.b, u_input.b)), -1000f, func_2(Struct_4(vec4<i32>(2147483647i, 12393i, -2147483647i, 2147483647i), global0.x, -2147483647i, vec3<i32>(11298i, 10430i, u_input.b), Struct_2(vec4<bool>(true, false, true, true), Struct_1(u_input.a.zy, vec2<i32>(-19240i, u_input.b), vec4<i32>(-2147483647i, u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 34580i), vec4<bool>(true, false, false, false), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x))))).d.x, vec3<i32>(u_input.b, u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]) ^ vec3<i32>(-24211i, 1i, u_input.b), Struct_2(vec4<bool>(true, false, false, true), Struct_1(vec2<u32>(u_input.a.x, 70101u), vec2<i32>(u_input.b, 12529i), vec4<i32>(1i, 1i, global1[_wgslsmith_index_u32(u_input.a.x, 7u)], u_input.b), vec4<bool>(false, true, true, true), vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u))))), Struct_1(~vec2<u32>(u_input.a.x, u_input.a.x), vec2<i32>(_wgslsmith_mult_i32(-1i, global1[_wgslsmith_index_u32(4294967295u, 7u)]), 1i), -(vec4<i32>(global1[_wgslsmith_index_u32(1u, 7u)], u_input.b, -6657i, u_input.b) >> (vec4<u32>(11116u, 0u, 1u, 0u) % vec4<u32>(32u))), vec4<bool>(true, false, true, all(vec3<bool>(false, true, false))), func_2(Struct_4(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b), -1000f, -30805i, vec3<i32>(u_input.b, -2147483647i, -57484i), Struct_2(vec4<bool>(false, true, false, false), Struct_1(u_input.a.xx, vec2<i32>(1i, u_input.b), vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(63572u, 7u)], global1[_wgslsmith_index_u32(24810u, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec4<bool>(true, false, false, false), vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 4294967295u))))).c.b.e)));
    var_0 = Struct_4(~(vec4<i32>(-1i) * -min(var_0.a, var_0.e.b.c)), -110f, (0i ^ global1[_wgslsmith_index_u32(~(u_input.a.x << (u_input.a.x % 32u)), 7u)]) ^ -var_0.c, var_0.e.b.c.zyy, Struct_2(func_2(Struct_4(var_0.a, _wgslsmith_f_op_f32(var_0.b - -130f), 0i, select(var_0.e.b.c.wzy, vec3<i32>(4108i, var_0.d.x, 7255i), vec3<bool>(var_0.e.a.x, true, var_0.e.a.x)), var_0.e)).e.a, func_2(Struct_4(vec4<i32>(var_0.c, var_0.a.x, -1i, var_0.a.x), _wgslsmith_f_op_f32(-var_0.b), abs(0i), ~vec3<i32>(47383i, 26711i, 62821i), Struct_2(vec4<bool>(false, var_0.e.b.d.x, false, true), var_0.e.b))).c.b));
    var_0 = Struct_4(-_wgslsmith_mod_vec4_i32(var_0.e.b.c << (vec4<u32>(var_0.e.b.e.x, 4294967295u, 32606u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(var_0.e.b.c, var_0.e.b.c) ^ var_0.a), 159f, ~var_0.d.x, select(vec3<i32>(firstTrailingBit(_wgslsmith_div_i32(u_input.b, -2147483647i)), _wgslsmith_mod_i32(countOneBits(-49356i), global1[_wgslsmith_index_u32(1u, 7u)] & global1[_wgslsmith_index_u32(11282u, 7u)]), -34015i), _wgslsmith_mult_vec3_i32(abs(countOneBits(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 7u)], u_input.b))), firstLeadingBit(-vec3<i32>(global1[_wgslsmith_index_u32(31804u, 7u)], 14665i, var_0.c))), true), func_2(Struct_4(-abs(vec4<i32>(2147483647i, 5497i, 64588i, 2147483647i)), -331f, var_0.d.x, vec3<i32>(1i, 0i, global1[_wgslsmith_index_u32(57513u, 7u)] >> (u_input.a.x % 32u)), func_2(Struct_4(vec4<i32>(24057i, -1i, -24567i, -4282i), global0.x, global1[_wgslsmith_index_u32(u_input.a.x, 7u)], var_0.d, Struct_2(vec4<bool>(false, var_0.e.a.x, var_0.e.a.x, false), var_0.e.b))).c)).c);
    let var_1 = vec2<i32>(-34138i, _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(var_0.e.b.c.wwx, vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], var_0.d.x, 36320i)), -1i << (var_0.e.b.e.x % 32u)), _wgslsmith_dot_vec2_i32(var_0.a.zz, var_0.d.zy))) >> (~vec2<u32>(min(u_input.a.x, ~var_0.e.b.e.x), _wgslsmith_sub_u32(u_input.a.x, 28292u) & u_input.a.x) % vec2<u32>(32u));
    var_0 = Struct_4(firstTrailingBit(-(~var_0.a)), global0.x, var_0.e.b.c.x, _wgslsmith_add_vec3_i32(vec3<i32>(firstLeadingBit(_wgslsmith_div_i32(-295i, var_0.a.x)), _wgslsmith_add_i32(-1i, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], -1i)), u_input.b), _wgslsmith_sub_vec3_i32(-var_0.d, var_0.a.wwz)), Struct_2(vec4<bool>(var_0.e.b.d.x, any(func_2(Struct_4(var_0.e.b.c, var_0.b, 2147483647i, var_0.e.b.c.zyz, var_0.e)).e.b.d.yx), true, var_0.e.a.x), func_2(Struct_4(~vec4<i32>(-21872i, 28187i, var_0.c, global1[_wgslsmith_index_u32(var_0.e.b.e.x, 7u)]), global0.x, u_input.b, -vec3<i32>(927i, 38928i, 2046i), Struct_2(vec4<bool>(var_0.e.b.d.x, var_0.e.b.d.x, false, false), Struct_1(vec2<u32>(u_input.a.x, 71278u), vec2<i32>(1i, var_1.x), vec4<i32>(var_1.x, var_1.x, u_input.b, var_1.x), var_0.e.a, vec4<u32>(u_input.a.x, 1u, var_0.e.b.e.x, u_input.a.x))))).c.b));
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1083f, -1224f), _wgslsmith_f_op_f32(-2376f - global0.x), -196f, -556f)))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1716f)) * -473f), _wgslsmith_f_op_f32(abs(var_0.b)))), global0.x, var_0.b, global0.x)));
    let var_2 = true;
    global0 = vec4<f32>(-1161f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-781f, global0.x)))), global0.x, var_0.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, -1013f, -951f, 1842f), vec4<f32>(2045f, global0.x, 618f, -1486f)))) - vec4<f32>(_wgslsmith_div_f32(1398f, -1688f), _wgslsmith_f_op_f32(select(global0.x, var_0.b, var_0.e.a.x)), -1000f, _wgslsmith_f_op_vec3_f32(func_3()).x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(1u), ~0u);
}

