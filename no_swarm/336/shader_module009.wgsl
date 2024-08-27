struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(312f, -1130f, 620f, 1000f);

var<private> global1: bool = true;

var<private> global2: array<f32, 32>;

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 0u);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<f32> {
    global2 = array<f32, 32>();
    let var_0 = u_input.b << (countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(12034u, _wgslsmith_sub_u32(global3.x, 27807u), u_input.a.x, 1u & global3.x), ~(~vec4<u32>(0u, u_input.a.x, 1u, 2388u)))) % 32u);
    let var_1 = Struct_2(true, _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(u_input.a) ^ vec2<u32>(4294967295u, u_input.a.x), firstLeadingBit(u_input.a)), 32u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), 537f))), ((~vec2<i32>(var_0, u_input.b) & _wgslsmith_add_vec2_i32(vec2<i32>(-73095i, var_0), arg_1.b)) ^ _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(var_0, arg_1.b.x)), -arg_1.b)) >> (~u_input.a % vec2<u32>(32u)), Struct_1(arg_1.a, ~arg_1.b ^ arg_1.b), ~firstLeadingBit(vec4<i32>(arg_1.b.x, arg_1.b.x, -2773i, 0i) << (~vec4<u32>(global3.x, 3612u, global3.x, global3.x) % vec4<u32>(32u))));
    var var_2 = u_input.a;
    var var_3 = firstTrailingBit(_wgslsmith_mult_vec2_i32(var_1.d.b, _wgslsmith_clamp_vec2_i32(firstTrailingBit(select(arg_1.b, arg_1.b, false)), vec2<i32>(~42676i, var_1.e.x >> (0u % 32u)), -vec2<i32>(56603i, arg_1.b.x))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-734f, -348f)), 2140f, 1130f, 2564f), vec4<f32>(209f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 164f)), -629f, global0.x)));
}

fn func_2(arg_0: bool, arg_1: u32) -> i32 {
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-752f, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], -238f, 644f), vec4<f32>(global2[_wgslsmith_index_u32(24808u, 32u)], 604f, 1000f, global0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(545f, 704f, 850f, 2045f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(206f, 1273f, global0.x, 477f), vec4<f32>(global0.x, global2[_wgslsmith_index_u32(0u, 32u)], 399f, -209f))), Struct_1(vec4<bool>(arg_0, arg_0, true, arg_0), vec2<i32>(-16982i, u_input.b)))) - _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-149f, global0.x, global0.x, 971f), vec4<f32>(1985f, global2[_wgslsmith_index_u32(0u, 32u)], -1460f, global0.x))), Struct_1(vec4<bool>(arg_0, true, true, arg_0), vec2<i32>(2147483647i, u_input.b))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-272f, 353f, -1000f, global2[_wgslsmith_index_u32(4294967295u, 32u)])), vec4<f32>(global2[_wgslsmith_index_u32(1u, 32u)], 1764f, 805f, global0.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -926f, -1244f, 683f) * vec4<f32>(global0.x, 701f, global0.x, global0.x)), vec4<f32>(global2[_wgslsmith_index_u32(1u, 32u)], -1299f, global0.x, -315f)))))));
    global1 = all(vec2<bool>(all(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), arg_0)) || arg_0, _wgslsmith_div_i32(abs(-1i), _wgslsmith_sub_i32(-34147i, 34126i)) < u_input.b));
    var var_0 = Struct_1(vec4<bool>(!any(vec3<bool>(arg_0, arg_0, true)), arg_0, true, !(39956u != ~global3.x)), ~(~vec2<i32>(_wgslsmith_add_i32(u_input.b, u_input.b), _wgslsmith_mod_i32(u_input.b, u_input.b))));
    var var_1 = Struct_1(vec4<bool>(!var_0.a.x, select(var_0.a.x, arg_0, !(-627f >= global2[_wgslsmith_index_u32(31489u, 32u)])), !(var_0.a.x && !arg_0), (i32(-1i) * -var_0.b.x) < _wgslsmith_clamp_i32(-2147483647i & var_0.b.x, u_input.b, 16997i)), _wgslsmith_mult_vec2_i32(select(var_0.b, ~(var_0.b >> (u_input.a % vec2<u32>(32u))), false), var_0.b));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 32u)] - -105f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_div_f32(-1410f, -227f))), global2[_wgslsmith_index_u32(countOneBits(u_input.a.x), 32u)]));
    return abs(var_0.b.x);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = -reverseBits(_wgslsmith_mult_i32(-select(31426i, arg_0, false), func_2(arg_3.a.x | arg_1, max(0u, global3.x))));
    var var_1 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), vec4<u32>(_wgslsmith_add_u32(10754u, 26625u), u_input.a.x, 27644u, 0u & u_input.a.x)), vec4<u32>(_wgslsmith_clamp_u32(global3.x, u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(0u, 1u), select(1078u, global3.x, false), u_input.a.x) & (vec4<u32>(global3.x, 52752u, u_input.a.x, 0u) ^ ~vec4<u32>(global3.x, global3.x, 1u, 0u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.a.x, 32u)])))), -334f));
    let var_3 = Struct_2(true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_div_f32(1188f, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(var_1.x, 34028u), var_1.x & var_1.x), 32u)]))), -firstTrailingBit(~(~arg_3.b)), arg_3, ~(arg_2 >> (((vec4<u32>(95009u, u_input.a.x, 41511u, var_1.x) >> (vec4<u32>(var_1.x, 0u, 4294967295u, 8166u) % vec4<u32>(32u))) | (vec4<u32>(u_input.a.x, 12465u, global3.x, var_1.x) >> (vec4<u32>(var_1.x, 29845u, u_input.a.x, 38928u) % vec4<u32>(32u)))) % vec4<u32>(32u))));
    var var_4 = arg_2;
    return !var_3.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(-(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-1i, u_input.b))), reverseBits(select(-vec2<i32>(u_input.b, -1i), vec2<i32>(countOneBits(u_input.b), 1i), true)));
    let var_1 = vec2<i32>(u_input.b, reverseBits(firstLeadingBit(u_input.b)));
    global1 = all(!func_1(u_input.b, true, vec4<i32>(var_1.x, 2147483647i, 2147483647i, 12998i) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global3.x, 1008u), vec4<u32>(u_input.a.x, global3.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), Struct_1(vec4<bool>(false, true, false, true), var_1)));
    global1 = ((_wgslsmith_div_f32(global0.x, 644f) == global2[_wgslsmith_index_u32(4294967295u, 32u)]) && all(select(vec3<bool>(true, true, true), func_1(0i, false, vec4<i32>(51580i, u_input.b, 2147483647i, -2147483647i), Struct_1(vec4<bool>(true, true, false, true), vec2<i32>(u_input.b, 1i))).yzw, vec3<bool>(false, true, false)))) | true;
    let var_2 = Struct_1(vec4<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false))), any(vec3<bool>(all(vec4<bool>(true, false, false, true)), false, any(vec4<bool>(true, false, true, true)))), false, true), var_1);
    let var_3 = _wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.a), _wgslsmith_sub_vec2_u32(~u_input.a, vec2<u32>(6789u, max(reverseBits(17377u), 69204u >> (u_input.a.x % 32u)))));
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_div_i32(-(~var_4.b.x), ~func_2(true, 0u)), -25972i, -reverseBits(1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-580f, global0.x, global0.x)))), var_4.b, 0i >> (var_3.x % 32u), vec3<i32>(i32(-1i) * -17084i, 51070i << (1u % 32u), _wgslsmith_div_i32(_wgslsmith_mult_i32(-48956i, var_4.b.x) ^ -var_4.b.x, -1i)));
}

