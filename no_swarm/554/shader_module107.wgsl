struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 2>;

var<private> global1: Struct_2 = Struct_2(vec2<i32>(i32(-2147483648), 1i), Struct_1(vec4<i32>(45620i, -30437i, 18025i, i32(-2147483648)), -553f, false), Struct_1(vec4<i32>(23425i, 2147483647i, -1i, -19012i), -1000f, false), vec4<i32>(66919i, 21206i, 50648i, 7742i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    global1 = arg_2;
    let var_0 = global1.c.b;
    global0 = array<vec2<i32>, 2>();
    let var_1 = arg_2;
    global0 = array<vec2<i32>, 2>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(492f + _wgslsmith_f_op_f32(-var_1.c.b)), 1000f));
}

fn func_2(arg_0: bool) -> vec2<u32> {
    let var_0 = 0i;
    let var_1 = false & (select(_wgslsmith_div_i32(-2147483647i, u_input.a), select(-1i, 51013i, select(true, true, true)), arg_0) >= global1.a.x);
    global0 = array<vec2<i32>, 2>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1857f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(sign(global1.b.b)), global1.b, Struct_2(vec2<i32>(-7526i, 17502i), Struct_1(global1.b.a, global1.c.b, false), global1.c, global1.b.a))))));
    var var_3 = !vec3<bool>(any(vec4<bool>(true, !var_1, arg_0 != false, any(vec4<bool>(var_1, true, false, true)))), false, !global1.b.c);
    return _wgslsmith_add_vec2_u32(~(~abs(countOneBits(vec2<u32>(8403u, 23755u)))), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 0u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(39804u, 4294967295u), vec2<u32>(5227u, 106866u)), 1u)), vec2<u32>(0u, _wgslsmith_clamp_u32(1u, 0u, 0u)) & vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(22266u, 14845u, 4294967295u), vec3<u32>(0u, 1u, 44970u)))));
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(~arg_0.x >> (arg_0.x % 32u)), min(~1u, _wgslsmith_mult_u32(0u, ~0u))), vec2<u32>(arg_0.x, arg_0.x));
    var var_1 = Struct_2(abs(vec2<i32>(u_input.b, u_input.b)), global1.c, global1.c, abs(global1.d));
    var var_2 = global1.c.c;
    var var_3 = var_1.a.x;
    var_0 = ((4294967295u >> (arg_0.x % 32u)) >> (arg_0.x % 32u)) >> (abs(_wgslsmith_clamp_u32(4294967295u, 15610u, arg_0.x)) % 32u);
    return Struct_1(_wgslsmith_sub_vec4_i32(var_1.b.a, vec4<i32>(1i, -abs(1i), global1.d.x, reverseBits(_wgslsmith_clamp_i32(global1.b.a.x, u_input.b, var_1.b.a.x)))), -467f, !all(select(vec2<bool>(false, var_1.c.c), vec2<bool>(var_1.c.c, global1.c.c), any(vec4<bool>(false, var_1.b.c, global1.c.c, global1.c.c)))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> u32 {
    var var_0 = ~(~(~min(select(vec4<u32>(658u, 4294967295u, 4294967295u, 48869u), vec4<u32>(0u, 9538u, 39169u, 0u), true), vec4<u32>(18132u, 4294967295u, 52933u, 90242u))));
    var_0 = vec4<u32>(var_0.x, 0u, 0u, ~1u);
    let var_1 = vec4<bool>(true, arg_2.c.c, false, all(vec3<bool>(true, global1.c.c, any(!vec2<bool>(arg_2.b.c, false)))));
    let var_2 = true;
    var var_3 = arg_2;
    return var_0.x;
}

fn func_1() -> Struct_2 {
    let var_0 = ~vec2<u32>(1u, 1u);
    var var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1184f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-111f, global1.c.b), _wgslsmith_f_op_f32(-1063f + global1.b.b)) - _wgslsmith_div_f32(global1.b.b, global1.c.b)), 436f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-970f - 1f) + _wgslsmith_f_op_f32(global1.b.b + _wgslsmith_f_op_f32(exp2(global1.b.b)))))));
    let var_2 = ~(~vec3<u32>(_wgslsmith_div_u32(var_0.x, _wgslsmith_dot_vec2_u32(var_0, vec2<u32>(8075u, var_0.x))), 83693u, reverseBits(37869u)));
    var var_3 = ~global1.c.a;
    return Struct_2(global0[_wgslsmith_index_u32(func_5(Struct_1(global1.c.a, var_1.x, any(!vec3<bool>(false, global1.b.c, false))), -611f, Struct_2(~(-vec2<i32>(var_3.x, u_input.a)), Struct_1(global1.b.a, _wgslsmith_f_op_f32(floor(var_1.x)), true), func_4(func_2(global1.c.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(3118i, u_input.b, 30909i, 2147483647i), vec4<i32>(global1.b.a.x, 2147483647i, u_input.b, -29192i)))), 2u)], func_4(vec2<u32>(abs(_wgslsmith_mod_u32(var_0.x, var_0.x)), ~var_2.x)), global1.c, countOneBits(select(_wgslsmith_mult_vec4_i32(global1.d, vec4<i32>(global1.b.a.x, global1.c.a.x, var_3.x, global1.b.a.x)) | _wgslsmith_clamp_vec4_i32(global1.b.a, vec4<i32>(u_input.b, 2147483647i, -69056i, global1.b.a.x), global1.c.a), -global1.c.a, any(!vec4<bool>(false, global1.b.c, global1.b.c, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = func_1();
    var var_1 = -129f;
    var var_2 = global1.b;
    var var_3 = func_1();
    var var_4 = firstLeadingBit(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(33576i, _wgslsmith_add_vec2_u32(~_wgslsmith_add_vec2_u32(max(vec2<u32>(0u, 38582u), vec2<u32>(14005u, 35941u)), select(vec2<u32>(10751u, 1u), vec2<u32>(0u, 0u), false)), ~vec2<u32>(_wgslsmith_div_u32(4294967295u, 32288u), 1u)));
}

