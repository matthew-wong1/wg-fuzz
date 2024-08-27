struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: vec2<bool>,
    d: f32,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(true, true, true, true, true, true, false, true, true, true, true, false);

var<private> global1: u32;

var<private> global2: Struct_3 = Struct_3(1i, Struct_1(vec3<f32>(-1812f, -455f, -685f)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: i32) -> vec2<u32> {
    let var_0 = global2.a;
    return vec2<u32>(firstTrailingBit(0u), u_input.a);
}

fn func_3(arg_0: bool, arg_1: bool) -> f32 {
    global1 = 5183u ^ u_input.a;
    global0 = array<bool, 12>();
    global0 = array<bool, 12>();
    global2 = Struct_3(global2.a, global2.b);
    global2 = Struct_3((~(~0i) | u_input.b) | _wgslsmith_clamp_i32(u_input.b, abs(1i), u_input.b), Struct_1(global2.b.a));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global2.b.a.x, 180f)), _wgslsmith_f_op_f32(min(global2.b.a.x, 1008f))))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2.b.a.x, global2.b.a.x), _wgslsmith_f_op_f32(-global2.b.a.x), true)), -1083f)), _wgslsmith_div_f32(global2.b.a.x, _wgslsmith_f_op_f32(round(1977f))))));
}

fn func_2() -> vec4<f32> {
    var var_0 = global2.b;
    global0 = array<bool, 12>();
    var var_1 = Struct_5(Struct_2(global2.b, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global2.b.a.x, 882f)), var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1109f), !all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 12u)], false)))), select(select(vec3<i32>(1i, 1i, 1i), _wgslsmith_div_vec3_i32(vec3<i32>(-12438i, -2147483647i, -87940i), vec3<i32>(2147483647i, u_input.b, 1i)), !global0[_wgslsmith_index_u32(98743u, 12u)]), vec3<i32>(global2.a, -2147483647i, -16946i) << (~vec3<u32>(1u, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<bool>(!global0[_wgslsmith_index_u32(1u, 12u)], all(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(6701u, 12u)])), global0[_wgslsmith_index_u32(abs(0u), 12u)])), global2.b));
    var var_2 = !vec4<bool>(false, all(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 12u)], true, global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)])), !(_wgslsmith_f_op_f32(floor(-1171f)) <= -984f), !(!select(false, false, false)));
    var_2 = vec4<bool>(true, select(true, false, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) < -1766f, false);
    return vec4<f32>(var_1.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(var_2.x, true)), var_0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-var_1.a.a.a.x)))), var_0.a.x);
}

fn func_4(arg_0: vec4<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x + -1112f))), _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 54182u), 12u)], !global0[_wgslsmith_index_u32(0u, 12u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.a.x * -379f)), -851f))));
    var var_1 = -_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.b, 43306i, 2147483647i), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(global2.a, -36781i, global2.a)), ~vec3<i32>(u_input.b, -1i, global2.a))), vec3<i32>(-(~global2.a), ~(-44729i), 22344i));
    let var_2 = abs(1i);
    var var_3 = true;
    let var_4 = Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, -1563f, -435f), vec3<f32>(var_0.x, arg_0.x, -1748f), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 12u)], false, global0[_wgslsmith_index_u32(27881u, 12u)]))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1696f, -1652f, -327f))))), global2.b.a.x, _wgslsmith_clamp_vec3_i32(-vec3<i32>(-22991i, 1i, global2.a), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, var_2, 1i), vec3<i32>(16976i, var_2, -2147483647i)), select(vec3<i32>(global2.a, 46764i, u_input.b) | vec3<i32>(u_input.b, -5187i, var_2), vec3<i32>(var_2, var_2, global2.a), global0[_wgslsmith_index_u32(33192u, 12u)])), global2.b));
    return vec2<u32>(~(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, 39347u, 0u)), max(29442u, u_input.a))), 47204u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(60722u, _wgslsmith_mod_u32(u_input.a, 1u)), ~u_input.a);
    var var_1 = 1u;
    var var_2 = func_1(_wgslsmith_clamp_i32(~firstTrailingBit(firstLeadingBit(-2147483647i)), -1i, u_input.b));
    var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()))));
    var_2 = ~vec2<u32>(~countOneBits(u_input.a), func_1(-40305i).x) << (_wgslsmith_add_vec2_u32(firstLeadingBit(abs(~vec2<u32>(19671u, u_input.a))), vec2<u32>(82818u, ~var_0.x)) % vec2<u32>(32u));
    var var_3 = global0[_wgslsmith_index_u32(~4022u, 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, reverseBits(firstTrailingBit(-_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.b, -1i, global2.a), vec4<i32>(u_input.b, u_input.b, -26004i, 2147483647i)))), vec2<i32>(~select(u_input.b, 0i, global0[_wgslsmith_index_u32(1u, 12u)]) >> (func_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.b.a.x, global2.b.a.x, global2.b.a.x, global2.b.a.x), vec4<f32>(global2.b.a.x, global2.b.a.x, 473f, 834f)))).x % 32u), -44711i));
}

