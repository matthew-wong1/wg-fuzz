struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
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

var<private> global0: array<i32, 19>;

var<private> global1: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    global0 = array<i32, 19>();
    var var_0 = Struct_1(vec4<u32>(min(firstTrailingBit(_wgslsmith_mod_u32(global1.a.x, u_input.b)), reverseBits(~global1.a.x)), u_input.b, _wgslsmith_add_u32(10089u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.x, 91922u) << (global1.a.yz % vec2<u32>(32u)), vec2<u32>(u_input.b, 12173u))), firstLeadingBit(1u)), global1.b, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.b.x + global1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-578f + _wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(-2147483647i, arg_0.x)) ^ vec2<i32>(-1i, global1.d.x), countOneBits(firstTrailingBit(arg_0.zy))) & arg_0.yz, _wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(-arg_1)));
    var var_1 = global1.a.wxz;
    let var_2 = Struct_1(vec4<u32>(global1.a.x, ~(~u_input.b), _wgslsmith_div_u32(abs(var_0.a.x), ~12309u), min(_wgslsmith_mod_u32(var_1.x, u_input.b) ^ ~u_input.b, var_0.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-592f, global1.e)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1 + -405f)))) + vec3<f32>(143f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.b.x, arg_1))), var_0.e)), var_0.b.zz, global1.d | min(vec2<i32>(-1i, global0[_wgslsmith_index_u32(u_input.b, 19u)]) & var_0.d, ~(~vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(10140u, 19u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c.x))) * -254f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(145f + 517f), false)), _wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(316f - global1.b.x))))));
    var var_3 = any(vec2<bool>(arg_1 > _wgslsmith_f_op_f32(var_2.e + -1065f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_2.e)))) >= _wgslsmith_f_op_f32(select(arg_1, -1576f, arg_0.x >= 1i))));
    return ~var_1.x;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(728f * -945f))));
    let var_1 = Struct_1(vec4<u32>(4294967295u, global1.a.x >> (~u_input.b % 32u), ~func_3(vec4<i32>(59069i, 20080i, u_input.a.x, -12674i) >> (vec4<u32>(33388u, 1u, global1.a.x, u_input.b) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-888f - 800f)), 50761u), global1.b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global1.c.x, arg_0), _wgslsmith_f_op_f32(round(485f))) + vec2<f32>(_wgslsmith_f_op_f32(-var_0), -235f)))), ~select(-reverseBits(u_input.a), u_input.a, vec2<bool>(true, false)), arg_0);
    let var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(37041i, -2147483647i, var_1.d.x, var_1.d.x) | (vec4<i32>(global1.d.x, u_input.a.x, var_1.d.x, 1i) << (vec4<u32>(4294967295u, 1u, u_input.b, u_input.b) % vec4<u32>(32u))), firstTrailingBit(vec4<i32>(var_1.d.x, -2147483647i, -2147483647i, 7295i))) >> (_wgslsmith_mult_vec4_u32(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 27849u, u_input.b), var_1.a, vec4<u32>(u_input.b, 4294967295u, 34656u, 49337u)), _wgslsmith_add_vec4_u32(var_1.a, var_1.a)), ~firstLeadingBit(vec4<u32>(var_1.a.x, global1.a.x, 2973u, 11999u))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>((var_1.d.x | global0[_wgslsmith_index_u32(var_1.a.x, 19u)]) ^ global0[_wgslsmith_index_u32(max(var_1.a.x, u_input.b), 19u)], firstLeadingBit(_wgslsmith_mult_i32(global1.d.x, -1i)), -47289i, 26492i >> (func_3(vec4<i32>(global0[_wgslsmith_index_u32(17182u, 19u)], -31661i, -2147483647i, global1.d.x), 808f) % 32u)), select(max(vec4<i32>(u_input.a.x, 15583i, -2147483647i, -2147483647i), vec4<i32>(u_input.a.x, 1i, global0[_wgslsmith_index_u32(var_1.a.x, 19u)], -14015i)) ^ abs(vec4<i32>(6909i, global0[_wgslsmith_index_u32(var_1.a.x, 19u)], global1.d.x, u_input.a.x)), ~(-vec4<i32>(-28569i, -17982i, 54370i, 1i)), true)), ~(~_wgslsmith_mult_vec4_i32(~vec4<i32>(var_1.d.x, global0[_wgslsmith_index_u32(var_1.a.x, 19u)], -2147483647i, var_1.d.x), vec4<i32>(-26216i, global0[_wgslsmith_index_u32(var_1.a.x, 19u)], var_1.d.x, 1i))));
    var var_3 = vec4<bool>(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(857f)) - _wgslsmith_f_op_f32(select(var_0, -228f, true))))) >= arg_0, all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true), false), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_1.a.x, 19u)], 1i) > _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -20671i, global1.d.x, 37936i), var_2))), false);
    var var_4 = 0i;
    return Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u >> (global1.a.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(5028u, 5130u, global1.a.x, global1.a.x), vec4<u32>(1u, 4294967295u, 50456u, u_input.b)), _wgslsmith_mult_u32(4294967295u, var_1.a.x), min(var_1.a.x, global1.a.x)), reverseBits(var_1.a)), global1.a), var_1.b, _wgslsmith_f_op_vec2_f32(floor(var_1.c)), vec2<i32>(var_2.x, abs(global0[_wgslsmith_index_u32(select(u_input.b, 1u, false & var_3.x), 19u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, -2099f))) + _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(303f * arg_0)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: vec2<f32>) -> i32 {
    let var_0 = global1.a.yw;
    global1 = func_2(arg_1.c.x);
    let var_1 = Struct_1(arg_1.a & global1.a, _wgslsmith_f_op_vec3_f32(trunc(global1.b)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(661f, -1000f))))), vec2<i32>(global0[_wgslsmith_index_u32(30409u, 19u)], ~arg_1.d.x) << (abs(~firstLeadingBit(global1.a.yy)) % vec2<u32>(32u)), _wgslsmith_div_f32(1566f, 755f));
    global1 = Struct_1(~(~vec4<u32>(min(arg_0, 32044u), arg_1.a.x, 1u, 1u)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_1.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b))))), var_1.b.yx, _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(-5310i, global0[_wgslsmith_index_u32(27885u, 19u)]), arg_1.d), firstTrailingBit(vec2<i32>(u_input.a.x, arg_1.d.x) | var_1.d)), _wgslsmith_f_op_f32(floor(-2201f)));
    global0 = array<i32, 19>();
    return global0[_wgslsmith_index_u32(arg_1.a.x, 19u)];
}

fn func_1() -> vec2<f32> {
    var var_0 = vec2<i32>(func_4(~(~19770u >> (1u % 32u)), func_2(_wgslsmith_div_f32(1156f, global1.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1751f + 649f)), global1.b.yz), u_input.a.x);
    global0 = array<i32, 19>();
    let var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(global1.a, vec4<u32>(u_input.b, abs(u_input.b | global1.a.x), func_3(~vec4<i32>(-1i, 2043i, 2147483647i, global0[_wgslsmith_index_u32(global1.a.x, 19u)]), _wgslsmith_f_op_f32(-global1.e)), _wgslsmith_mod_u32(4294967295u, ~global1.a.x)), abs(~reverseBits(vec4<u32>(22258u, global1.a.x, 0u, u_input.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.b - _wgslsmith_f_op_vec3_f32(-global1.b))) * vec3<f32>(1177f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1953f, global1.e, false)), _wgslsmith_f_op_f32(max(global1.e, global1.e)))), global1.e)), global1.c, -global1.d, _wgslsmith_f_op_f32(select(global1.e, global1.e, true)));
    let var_2 = ~vec4<u32>(u_input.b, ~_wgslsmith_dot_vec3_u32(~var_1.a.yxz, min(vec3<u32>(global1.a.x, 1u, u_input.b), vec3<u32>(var_1.a.x, 1u, 4294967295u))), u_input.b << (func_3(~vec4<i32>(u_input.a.x, -2147483647i, 10108i, 1i), var_1.b.x) % 32u), ~(~var_1.a.x));
    var var_3 = var_1.a.x;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_1(reverseBits(~(vec4<u32>(u_input.b, u_input.b, 0u, 4294967295u) & global1.a) & global1.a), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-404f)), _wgslsmith_f_op_f32(-arg_0.e)) * _wgslsmith_f_op_f32(-func_2(arg_3).c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - _wgslsmith_f_op_f32(-479f * 1412f)), _wgslsmith_f_op_f32(-arg_0.b.x)), arg_0.e), global1.b.zz, vec2<i32>(-(~u_input.a.x), _wgslsmith_mod_i32(-func_4(global1.a.x, arg_0, 2133f, arg_0.c), countOneBits(abs(arg_0.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1()).x));
    let var_1 = select(max(~_wgslsmith_add_vec4_u32(min(vec4<u32>(4294967295u, 1u, 9788u, u_input.b), global1.a), vec4<u32>(0u, 91500u, 0u, var_0.a.x)), arg_0.a), max(~vec4<u32>(~60769u, 0u, 36702u, u_input.b), vec4<u32>(_wgslsmith_mult_u32(1u, 1u), 36506u, ~reverseBits(arg_0.a.x), global1.a.x)), !arg_1.x);
    let var_2 = ~(~((_wgslsmith_mod_u32(var_1.x, var_1.x) << (abs(global1.a.x) % 32u)) >> (_wgslsmith_mod_u32(min(59940u, 39438u), u_input.b) % 32u)));
    let var_3 = Struct_1(var_1 & ~var_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-112f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e * -401f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.c.x, 296f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-2114f)), -457f) + arg_0.b.yy), u_input.a, var_0.e);
    global1 = Struct_1(~(~var_0.a), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2121f, _wgslsmith_f_op_vec2_f32(func_1()).x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(615f, -619f)))), vec3<f32>(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(trunc(-765f)))), 659f, _wgslsmith_f_op_f32(min(-2210f, -180f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-var_3.b.x)), vec2<f32>(_wgslsmith_f_op_f32(max(var_3.e, arg_0.b.x)), _wgslsmith_f_op_f32(abs(var_0.c.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1136f, 2041f), vec2<f32>(1274f, arg_0.c.x), false))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, 1298f) * vec2<f32>(-841f, -632f))))), !(!vec2<bool>(true, arg_2)))), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(abs(var_0.d), _wgslsmith_div_vec2_i32(u_input.a, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 51536i), vec2<i32>(2147483647i, 36125i)))), var_0.d), var_0.b.x);
    return Struct_1(~var_3.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_0.b)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_3.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))), countOneBits(global1.d) ^ reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(global1.a.x, 19u)], 2147483647i), vec2<i32>(-2147483647i, u_input.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_3.b.x, var_0.b.x)), var_3.b.x)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec2<u32>(abs(arg_0.a.x), _wgslsmith_mod_u32(4294967295u, max(4294967295u, max(u_input.b, global1.a.x)) << (~arg_0.a.x % 32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-790f, _wgslsmith_f_op_f32(-1000f - -788f), arg_0.c.x, 861f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.e), _wgslsmith_f_op_f32(-global1.e), _wgslsmith_f_op_f32(-arg_1.c.x), -1486f))) - vec4<f32>(global1.c.x, arg_0.c.x, -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-636f * arg_0.b.x))))));
    var var_2 = vec2<bool>(true, any(select(vec2<bool>(any(vec4<bool>(false, false, true, true)), true), select(vec2<bool>(false, true), vec2<bool>(true, true), all(vec3<bool>(true, false, false))), vec2<bool>(false, true))));
    let var_3 = func_2(var_1.x);
    var_2 = vec2<bool>(!var_2.x & true, false);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(Struct_1(select(vec4<u32>(global1.a.x, 73778u, global1.a.x, 1u), abs(vec4<u32>(42536u, 31804u, global1.a.x, u_input.b)), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b) + _wgslsmith_f_op_vec3_f32(-global1.b)), _wgslsmith_f_op_vec2_f32(func_1()), u_input.a, _wgslsmith_f_op_f32(749f + global1.e)), vec2<bool>(true, true), abs(-6659i) >= (global0[_wgslsmith_index_u32(global1.a.x, 19u)] << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, 4294967295u, 10598u), vec4<u32>(global1.a.x, 4294967295u, u_input.b, 0u)) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1()).x))), Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(global1.b + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b + vec3<f32>(global1.c.x, global1.e, global1.e)), _wgslsmith_f_op_vec3_f32(global1.b * vec3<f32>(-916f, global1.c.x, global1.e)))), vec2<f32>(-1506f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.b.x - 334f)))), global1.d, global1.e));
    let var_1 = Struct_1(vec4<u32>(var_0.a.x, 0u, ~global1.a.x, select(firstTrailingBit(1u), firstLeadingBit(~u_input.b), (-682f < global1.e) || (global1.a.x == 0u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.b, var_0.b)), _wgslsmith_f_op_vec3_f32(-var_0.b))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) * _wgslsmith_f_op_f32(-global1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -663f)), 1797f)), var_0.b.yy, var_0.d, _wgslsmith_f_op_f32(-985f - var_0.c.x));
    let var_2 = ~global1.a.x;
    var var_3 = ~_wgslsmith_clamp_vec2_u32(select(vec2<u32>(var_0.a.x, var_2), ~abs(var_1.a.xx), !select(vec2<bool>(true, false), vec2<bool>(true, false), true)), max(~_wgslsmith_sub_vec2_u32(global1.a.zx, var_0.a.xx), global1.a.xx), ~(_wgslsmith_mult_vec2_u32(var_0.a.zz, global1.a.xz) & ~vec2<u32>(1u, 6238u)));
    let var_4 = var_1.a;
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -960f)) * func_2(global1.e).b.x);
    var var_6 = Struct_1(select(max(vec4<u32>(~var_3.x, _wgslsmith_clamp_u32(5022u, global1.a.x, var_4.x), _wgslsmith_mod_u32(1u, var_2), _wgslsmith_sub_u32(var_0.a.x, 36486u)), vec4<u32>(1u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(19761u, 1u, 4294967295u, var_4.x), vec4<u32>(21043u, 0u, 4294967295u, var_3.x)), _wgslsmith_dot_vec3_u32(global1.a.yxz, vec3<u32>(var_2, var_2, 0u)))), vec4<u32>(~17794u, u_input.b, 4294967295u, ~_wgslsmith_sub_u32(u_input.b, 62187u)), !(var_0.c.x >= _wgslsmith_f_op_f32(trunc(var_1.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b + var_0.b)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(global1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -523f))), vec2<f32>(-482f, _wgslsmith_f_op_f32(trunc(func_6(var_1, Struct_1(var_0.a, var_0.b, vec2<f32>(var_1.e, var_1.e), u_input.a, -2102f)).b.x))), vec2<bool>(true, true))), vec2<i32>(func_6(var_1, func_5(Struct_1(vec4<u32>(u_input.b, var_3.x, 19877u, 17124u), var_1.b, vec2<f32>(1224f, var_0.e), var_0.d, 566f), vec2<bool>(false, true), false, 553f)).d.x >> (0u % 32u), var_0.d.x), _wgslsmith_f_op_f32(min(global1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -224f))));
    var var_7 = select(select(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, false, true, true), !(var_4.x < var_2)), select(vec4<bool>(true, all(vec3<bool>(true, true, false)), true, any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false)), !all(select(vec2<bool>(false, false), vec2<bool>(false, false), true))), vec4<bool>(true, !all(vec3<bool>(true, true, true)), true, false), !all(vec4<bool>(true, true, true, true)));
    var var_8 = -41401i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_5(Struct_1(vec4<u32>(var_2, 41034u, 4294967295u, 28166u), var_6.b, vec2<f32>(var_6.c.x, -655f), vec2<i32>(var_0.d.x, var_6.d.x), 589f), vec2<bool>(var_7.x, var_7.x), all(var_7.xx), 194f).c.x) * -1112f));
}

