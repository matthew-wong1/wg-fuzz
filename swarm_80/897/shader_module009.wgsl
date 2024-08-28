struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(0i, 1i, i32(-2147483648), 21478i), vec4<i32>(2147483647i, -1i, -1i, -44508i), vec4<i32>(2561i, 37736i, -21501i, -1i), vec4<i32>(-1695i, -10248i, 0i, 1i), vec4<i32>(0i, 8447i, 17882i, 0i), vec4<i32>(-1i, 1i, -12568i, 13381i), vec4<i32>(4784i, i32(-2147483648), 2147483647i, 1i), vec4<i32>(-31007i, -9000i, 0i, -20264i), vec4<i32>(23093i, 13142i, -24193i, 2147483647i), vec4<i32>(1i, -30328i, i32(-2147483648), 0i));

var<private> global1: vec3<f32>;

var<private> global2: array<f32, 19>;

var<private> global3: f32 = -588f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(622f + -295f));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec3<u32>, arg_3: vec2<i32>) -> vec2<i32> {
    var var_0 = _wgslsmith_add_vec2_i32(u_input.a, u_input.a >> (~vec2<u32>(18232u, 67456u) % vec2<u32>(32u))) >> (arg_2.zy % vec2<u32>(32u));
    global0 = array<vec4<i32>, 10>();
    global3 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1438f * global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.x << (1u % 32u), 4294967295u), 19u)]))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) * _wgslsmith_f_op_f32(573f - -1363f))))));
    let var_2 = arg_0.b.x;
    return u_input.a;
}

fn func_1() -> f32 {
    let var_0 = Struct_3(Struct_1(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_3(Struct_2(vec3<f32>(-928f, 2007f, -2176f), vec2<bool>(false, false), global1.zy), _wgslsmith_f_op_f32(func_2()), abs(vec3<u32>(0u, 1u, 33817u)), _wgslsmith_sub_vec2_i32(u_input.a, u_input.a)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), !all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), -u_input.b, u_input.b), 1000f, max(u_input.a, u_input.a));
    global2 = array<f32, 19>();
    var var_1 = -26092i;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2500f, global1.x, 1196f) + vec3<f32>(-2360f, var_0.b, var_0.b)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b, -1250f, 159f))) - vec3<f32>(global2[_wgslsmith_index_u32(9869u, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)], global1.x))))), vec2<bool>(true, all(var_0.a.a)), _wgslsmith_f_op_vec2_f32(global1.xz + vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(416f)), _wgslsmith_div_f32(-1179f, var_0.b))), global1.x)));
    let var_3 = abs(select(~1u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 39776u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(55830u, 59915u), vec2<u32>(16426u, 41360u)))), countOneBits(firstTrailingBit(1u)) > 1u));
    return global2[_wgslsmith_index_u32(~max(~(~(~1u)), var_3), 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1385f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 19u)] * global2[_wgslsmith_index_u32(16569u, 19u)]) - _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-global1.x))));
    global3 = _wgslsmith_f_op_f32(func_2());
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(1u, firstTrailingBit(~4294967295u)), 0u, 1u, 0u), reverseBits(reverseBits(~vec4<u32>(1u, 1u, 1u, 1u))), vec4<u32>(4294967295u, min(max(10270u, ~44820u), 4294967295u), 35721u, _wgslsmith_mod_u32(~4294967295u, 43961u)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) * _wgslsmith_f_op_f32(766f + global1.x)), 1462f, _wgslsmith_f_op_f32(exp2(global1.x)), global1.x);
    var var_2 = Struct_4(u_input.c, -2147483647i, (firstTrailingBit(var_0) ^ vec4<u32>(var_0.x ^ var_0.x, ~33307u, var_0.x, _wgslsmith_sub_u32(var_0.x, var_0.x))) << (select(vec4<u32>(_wgslsmith_div_u32(4294967295u, var_0.x), 18702u, var_0.x, 4294967295u), vec4<u32>(43513u, var_0.x, var_0.x, 223u) << ((vec4<u32>(96274u, 46450u, 40655u, var_0.x) & vec4<u32>(var_0.x, var_0.x, 3569u, var_0.x)) % vec4<u32>(32u)), true) % vec4<u32>(32u)), -1983f, !(select(any(vec3<bool>(false, true, true)), all(vec2<bool>(false, false)), true) || true));
    let var_3 = Struct_4(-51535i, var_2.a, countOneBits(var_2.c | vec4<u32>(~45949u, max(var_2.c.x, 0u), ~19230u, ~34797u)), _wgslsmith_f_op_f32(max(var_1.x, -682f)), any(select(select(!vec4<bool>(true, true, var_2.e, true), !vec4<bool>(var_2.e, var_2.e, true, var_2.e), vec4<bool>(true, false, var_2.e, true)), vec4<bool>(true, true, var_2.e, !var_2.e), var_2.e)));
    let var_4 = select(!select(!(!vec4<bool>(false, var_3.e, var_3.e, var_2.e)), select(!vec4<bool>(var_3.e, var_3.e, var_3.e, var_3.e), select(vec4<bool>(false, true, var_2.e, var_2.e), vec4<bool>(false, false, true, true), vec4<bool>(true, false, var_3.e, true)), all(vec3<bool>(var_3.e, false, true))), var_3.e), select(vec4<bool>((u_input.a.x << (2237u % 32u)) <= ~(-62811i), !all(vec4<bool>(var_2.e, var_3.e, true, false)), var_2.a <= -var_2.a, true), vec4<bool>(any(vec3<bool>(true, true, true)), var_3.e, var_3.e, any(select(vec3<bool>(false, true, false), vec3<bool>(var_3.e, false, var_2.e), var_2.e))), all(vec4<bool>(true, true, false, true))), select(vec4<bool>(true, true | var_3.e, false, any(!vec3<bool>(var_2.e, var_2.e, var_2.e))), vec4<bool>(true, var_3.e, var_2.e, (u_input.a.x | 1i) < firstLeadingBit(var_3.a)), var_2.e));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(4294967295u, 10u)], -vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.b, -11765i), min(u_input.b, var_3.a)), ~(~u_input.c), ~16167i));
}

