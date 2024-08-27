struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -978f;

var<private> global1: array<Struct_3, 6>;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = -(_wgslsmith_mod_vec4_i32(vec4<i32>(countOneBits(2147483647i), arg_0.a.e, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.e, -3995i), vec2<i32>(15510i, 2131i)), arg_0.a.e), max(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a.c, 2147483647i, arg_0.a.c, -3370i), vec4<i32>(-2147483647i, arg_0.a.c, 2147483647i, 1i)), vec4<i32>(1i, 1i, arg_0.a.e, arg_0.a.c))) ^ ~vec4<i32>(arg_0.a.e, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.c, arg_0.a.e), vec2<i32>(-1i, arg_0.a.c)), ~arg_0.a.c, arg_0.a.c));
    global2 = !vec2<bool>(!(!global2.x) & global2.x, ~(~u_input.a.x) > reverseBits(~arg_0.a.b));
    var var_1 = _wgslsmith_clamp_vec2_i32(-_wgslsmith_mult_vec2_i32(-var_0.ww << (~u_input.a.zy % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -6651i, var_0.x), vec3<i32>(var_0.x, arg_0.a.e, arg_0.a.c)), -31110i)), vec2<i32>(min(firstTrailingBit(var_0.x >> (arg_0.a.b % 32u)), (-61452i << (u_input.a.x % 32u)) | _wgslsmith_add_i32(2147483647i, -104392i)), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0.a.c, -24573i, -1i), ~vec3<i32>(var_0.x, arg_0.a.c, var_0.x))), var_0.xx);
    var var_2 = global1[_wgslsmith_index_u32(11374u << (abs(u_input.a.x) % 32u), 6u)];
    var var_3 = arg_0;
    return var_3.a;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -888f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.a.x, arg_1.a.a.x)), _wgslsmith_f_op_f32(sign(arg_0.a.a.x)));
    global1 = array<Struct_3, 6>();
    let var_1 = _wgslsmith_dot_vec2_u32(~(~arg_1.b.xw) & abs(select(vec2<u32>(u_input.a.x, 0u), arg_0.b.wz, false)), vec2<u32>(arg_1.b.x, arg_1.a.b)) >= 60378u;
    let var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-63044i, -2982i, select(-3025i, 72663i, false), _wgslsmith_mod_i32(arg_0.a.c, arg_2.x)), -select(vec4<i32>(0i, 0i, 2147483647i, -2147483647i), vec4<i32>(arg_1.a.e, arg_0.a.e, arg_0.a.c, arg_2.x), vec4<bool>(true, global2.x, false, var_1))), _wgslsmith_div_i32(-11447i, abs(-16189i)), -39091i >> (func_2(arg_1).b % 32u), i32(-1i) * -1i) & vec4<i32>(-24598i, ~func_2(arg_0).c, arg_1.a.e, _wgslsmith_div_i32(0i, -arg_2.x) >> (countOneBits(1u) % 32u));
    global0 = _wgslsmith_f_op_f32(1243f * _wgslsmith_f_op_f32(-arg_1.a.d));
    return select(var_2.x, var_2.x, global2.x);
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = func_2(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(arg_3.a, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_3.a.x, -903f, -2789f), arg_3.a)))), ~0u, arg_3.c, arg_2, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, arg_3.c, arg_3.e, arg_3.c)), vec4<i32>(0i, 2147483647i, -39204i, -17354i))), vec4<u32>(_wgslsmith_clamp_u32(~57530u, 4294967295u, 1u), ~(~arg_0), ~4746u, 93671u)));
    var var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(~(~_wgslsmith_div_u32(arg_0, 1u))), 6u)];
    return _wgslsmith_sub_i32(func_3(Struct_2(arg_3, select(vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x), u_input.a, true) << (~vec4<u32>(var_1.c.b, 0u, arg_0, 0u) % vec4<u32>(32u))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.b.a), arg_3.b, var_0.e, _wgslsmith_f_op_f32(233f + 459f), 2147483647i), ~vec4<u32>(1u, var_0.b, 4294967295u, arg_1.x)), vec4<i32>(var_0.c, var_1.b.c ^ 2147483647i, arg_3.e, firstLeadingBit(_wgslsmith_sub_i32(22903i, arg_3.c)))), ~_wgslsmith_mod_i32(-var_0.e, ~firstLeadingBit(arg_3.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -max(func_1(u_input.a.x, select(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 4172u, u_input.a.x), true), 2549f, Struct_1(vec3<f32>(441f, -333f, 2103f), u_input.a.x, -2147483647i, 229f, 43940i)) >> (14021u % 32u), func_2(Struct_2(Struct_1(vec3<f32>(1637f, -409f, 206f), u_input.a.x, -26400i, -845f, 15968i), vec4<u32>(u_input.a.x, 20446u, u_input.a.x, u_input.a.x))).c);
    var var_1 = false;
    var_1 = any(vec3<bool>(any(!(!vec4<bool>(false, global2.x, global2.x, true))), true, any(select(vec3<bool>(false, false, global2.x), vec3<bool>(global2.x, true, true), vec3<bool>(global2.x, false, true)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-666f * -1082f), _wgslsmith_f_op_f32(410f - 454f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1760f)) - func_2(Struct_2(Struct_1(vec3<f32>(1154f, 551f, -815f), 0u, var_0, 156f, var_0), vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 1u))).d), _wgslsmith_f_op_f32(f32(-1f) * -529f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-962f, _wgslsmith_f_op_f32(-182f - 871f), _wgslsmith_f_op_f32(f32(-1f) * -360f)))));
    var var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(max(min(~33396i, 7586i), -var_0 | var_0), _wgslsmith_sub_i32(var_0, ~var_0) ^ _wgslsmith_mult_i32(var_0, var_0 ^ var_0)), -abs(~vec2<i32>(30392i, -2147483647i) >> ((vec2<u32>(1u, u_input.a.x) & u_input.a.xz) % vec2<u32>(32u))));
    let var_4 = global1[_wgslsmith_index_u32(0u, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x))), u_input.a.wz, 1u);
}

