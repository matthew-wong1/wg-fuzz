struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec2<u32>, 30>;

var<private> global2: array<vec4<f32>, 1>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<f32>) -> vec3<i32> {
    var var_0 = -abs(global0.xz);
    let var_1 = ~(firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, global0.x, 37791i), vec4<i32>(-14102i, var_0.x, global0.x, 1i), vec4<i32>(var_0.x, var_0.x, 1i, global0.x)), vec4<i32>(-2147483647i, -37013i, 28915i, var_0.x) | vec4<i32>(var_0.x, 0i, -14801i, global0.x))) << (26296u % 32u));
    global1 = array<vec2<u32>, 30>();
    var var_2 = Struct_1(~_wgslsmith_sub_vec3_u32(countOneBits(~vec3<u32>(1u, 1603u, 36616u)), countOneBits(~vec3<u32>(29678u, 17500u, 4294967295u))), true, _wgslsmith_f_op_f32(sign(arg_0.x)), ~_wgslsmith_mult_i32(u_input.a.x, -_wgslsmith_clamp_i32(12138i, var_1, u_input.a.x)));
    let var_3 = Struct_1(vec3<u32>(var_2.a.x << (var_2.a.x % 32u), var_2.a.x, 25853u << (0u % 32u)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-603f, -1189f, 0u < var_2.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.c)) - _wgslsmith_f_op_f32(min(-1724f, var_2.c))))), _wgslsmith_dot_vec2_i32(-(vec2<i32>(-1i) * -global0.yz), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a, max(global0.zz, vec2<i32>(2147483647i, var_0.x))), global0.yx)));
    return vec3<i32>(_wgslsmith_mod_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.d, 18860i), global0.yy)), global0.x), _wgslsmith_clamp_i32(var_0.x, 40329i, 25130i), ~var_3.d) >> (~firstLeadingBit(_wgslsmith_clamp_vec3_u32(abs(var_2.a), vec3<u32>(var_2.a.x, var_3.a.x, 69556u), vec3<u32>(47439u, var_3.a.x, var_2.a.x))) % vec3<u32>(32u));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec3<u32> {
    global0 = _wgslsmith_mult_vec3_i32(((vec3<i32>(arg_3.d, arg_3.d, -34026i) ^ min(vec3<i32>(6154i, global0.x, u_input.a.x), vec3<i32>(-33451i, arg_3.d, 1i))) ^ vec3<i32>(1i, _wgslsmith_mod_i32(-25280i, 2147483647i), max(43237i, 52851i))) & countOneBits(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(arg_3.d, -12725i, 0i)), vec3<i32>(arg_3.d, -4899i, 2147483647i))), _wgslsmith_mod_vec3_i32(-func_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-343f, -1000f)))), vec3<i32>(-u_input.a.x, -(-2147483647i ^ global0.x), select(~global0.x, -25019i, false))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -154f))));
    let var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -(9276i << (arg_3.a.x % 32u)), u_input.a.x), _wgslsmith_sub_vec3_i32(abs(~(-vec3<i32>(-32462i, -2147483647i, arg_3.d))), _wgslsmith_sub_vec3_i32(-countOneBits(vec3<i32>(arg_3.d, -1322i, global0.x)), -func_2(vec2<f32>(var_0, -2408f)))), -firstTrailingBit(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_3.d, global0.x, arg_3.d), vec3<i32>(global0.x, 19152i, u_input.a.x)), countOneBits(vec3<i32>(u_input.a.x, 1i, arg_3.d)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-arg_3.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(707f)))))) + _wgslsmith_f_op_f32(-var_0)));
    var var_3 = !select(select(select(arg_1, arg_0, arg_3.b), arg_0, any(!arg_0)), vec4<bool>(false, ~27808u != arg_3.a.x, 3923u >= arg_3.a.x, all(!arg_2)), false);
    return abs(vec3<u32>(0u, _wgslsmith_sub_u32(arg_3.a.x, _wgslsmith_sub_u32(4294967295u, 1u)), _wgslsmith_div_u32(~arg_3.a.x, ~4294967295u))) >> (reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(arg_3.a.x, arg_3.a.x, arg_3.a.x) & vec3<u32>(0u, 1u, arg_3.a.x), arg_3.a)) % vec3<u32>(32u));
}

fn func_1() -> Struct_1 {
    global0 = func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1103f)), 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(430f, -691f) + vec2<f32>(803f, -1228f)))))) >> (select(max(max(select(vec3<u32>(14322u, 62616u, 75384u), vec3<u32>(26207u, 0u, 20741u), vec3<bool>(false, false, false)), ~vec3<u32>(10773u, 1277u, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), func_3(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec3<bool>(false, false, false), Struct_1(vec3<u32>(0u, 0u, 8825u), false, 1000f, 2147483647i)))), abs(vec3<u32>(1u, ~1u, func_3(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec3<bool>(false, false, false), Struct_1(vec3<u32>(45869u, 0u, 556u), true, -1268f, global0.x)).x)), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false))) % vec3<u32>(32u));
    global2 = array<vec4<f32>, 1>();
    let var_0 = -select(vec3<i32>(~1i ^ global0.x, u_input.a.x, i32(-1i) * -global0.x), vec3<i32>(1i, 1i, firstTrailingBit(reverseBits(u_input.a.x))), vec3<bool>(true, true, true));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_add_i32(-_wgslsmith_div_i32(abs(-1i), -9435i), select(1i, _wgslsmith_mod_i32(~global0.x, 24866i), true)), abs(~(_wgslsmith_mult_i32(var_0.x, global0.x) ^ 1i)));
    let var_2 = _wgslsmith_div_u32(~3525u ^ max(abs(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], vec2<u32>(33699u, 15028u))), _wgslsmith_div_u32(~15075u, 48031u)), 0u);
    return Struct_1((~min(vec3<u32>(var_2, 0u, 38462u), vec3<u32>(6685u, var_2, var_2)) ^ vec3<u32>(~var_2, countOneBits(var_2), _wgslsmith_div_u32(1u, 1u))) ^ _wgslsmith_mod_vec3_u32(~vec3<u32>(54575u, var_2, 5235u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2, var_2, 2549u), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2, 1u, var_2), vec3<u32>(1u, 12207u, 4294967295u), vec3<u32>(var_2, 0u, var_2)))), false, _wgslsmith_f_op_f32(round(1132f)), countOneBits(_wgslsmith_add_i32(var_1, 1i)) | u_input.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> bool {
    var var_0 = Struct_1(~_wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(arg_2.a, arg_2.a), ~select(arg_0.a, arg_2.a, arg_1.x)), !arg_1.x, arg_0.c, max(_wgslsmith_add_i32(1i, _wgslsmith_mult_i32(~u_input.a.x, i32(-1i) * -1i)), arg_0.d));
    global2 = array<vec4<f32>, 1>();
    var var_1 = arg_1.xx;
    let var_2 = Struct_1(var_0.a, arg_2.b, arg_2.c, _wgslsmith_div_i32(1i, func_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.c, arg_2.c)))))).x));
    let var_3 = (2485f >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(630f, arg_2.c))))) && all(select(select(vec4<bool>(false, var_1.x, arg_2.b, arg_0.b), select(vec4<bool>(false, true, true, false), vec4<bool>(arg_0.b, false, true, var_2.b), vec4<bool>(var_2.b, false, true, true)), all(vec3<bool>(arg_1.x, var_0.b, true))), !select(vec4<bool>(arg_1.x, false, var_2.b, true), vec4<bool>(var_1.x, var_0.b, var_1.x, var_0.b), var_0.b), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, arg_2.b, true, var_2.b), vec4<bool>(var_0.b, true, true, var_2.b))));
    return any(!(!(!select(vec2<bool>(true, true), vec2<bool>(true, arg_0.b), arg_1.xz))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    global1 = array<vec2<u32>, 30>();
    global0 = firstLeadingBit(vec3<i32>(u_input.a.x, arg_1.d, abs(~arg_1.d)));
    var var_0 = arg_1.a;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = !(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true))));
    let var_2 = func_5(select(vec4<bool>(true, false, true, func_4(Struct_1(vec3<u32>(44478u, 0u, 1u), true, -294f, global0.x), !vec3<bool>(false, true, var_1.x), func_1())), select(!select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x), var_1.x), vec4<bool>(func_4(Struct_1(vec3<u32>(4294967295u, 0u, 61180u), var_1.x, 563f, 0i), vec3<bool>(true, var_1.x, var_1.x), Struct_1(vec3<u32>(47092u, 4294967295u, 15612u), false, 258f, 1i)), var_1.x, var_1.x, true), any(!vec2<bool>(true, var_1.x))), !select(select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x)), !vec4<bool>(false, var_1.x, false, true), vec4<bool>(false, true, false, true))), Struct_1(~select(~vec3<u32>(23150u, 1u, 26919u), ~vec3<u32>(5485u, 34785u, 1u), all(vec2<bool>(true, false))), any(!vec3<bool>(false, false, var_1.x)) && true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-872f, -549f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1453f + -969f))))), ~u_input.a.x), vec4<u32>(~countOneBits(reverseBits(4294967295u)), max(~1u, ~countOneBits(1u)), abs(43681u), reverseBits(func_1().a.x)));
    global1 = array<vec2<u32>, 30>();
    global0 = _wgslsmith_sub_vec3_i32(vec3<i32>(func_1().d, abs(~(~18089i)), _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_sub_i32(-var_2.d, abs(-14843i)), reverseBits(var_2.d))), select(-_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a.x, var_2.d, -2147483647i)), select(vec3<i32>(35131i, global0.x, -1i), vec3<i32>(-26275i, -2147483647i, global0.x), vec3<bool>(var_2.b, var_2.b, var_2.b))), vec3<i32>(~(i32(-1i) * -65419i), -4065i, -1i), vec3<bool>(any(vec4<bool>(true, var_1.x, var_2.b, false)), true, var_2.b & !var_1.x)));
    var_0 = var_1.x;
    var var_3 = 1i;
    var var_4 = var_2;
    let var_5 = vec3<i32>(func_1().d, _wgslsmith_dot_vec2_i32(vec2<i32>(select(_wgslsmith_mod_i32(11506i, 2147483647i), 1i, any(vec2<bool>(var_1.x, var_2.b))), abs(0i)), global0.zx), -17103i);
    let x = u_input.a;
    s_output = StorageBuffer(func_3(!(!select(vec4<bool>(false, var_4.b, var_1.x, var_4.b), vec4<bool>(var_1.x, var_2.b, var_2.b, var_4.b), vec4<bool>(var_4.b, var_1.x, var_2.b, var_4.b))), select(select(select(vec4<bool>(var_2.b, false, var_4.b, false), vec4<bool>(true, true, true, var_2.b), var_1.x), !vec4<bool>(var_4.b, var_4.b, false, var_2.b), select(vec4<bool>(var_1.x, var_1.x, var_2.b, var_1.x), vec4<bool>(false, true, var_4.b, var_4.b), vec4<bool>(var_1.x, var_1.x, false, false))), select(select(vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(false, false, var_1.x, var_2.b), vec4<bool>(var_2.b, var_2.b, true, false)), vec4<bool>(true, var_1.x, var_1.x, var_1.x), select(vec4<bool>(var_2.b, var_4.b, var_2.b, var_2.b), vec4<bool>(var_4.b, true, var_2.b, true), true)), vec4<bool>(true & var_4.b, var_1.x & var_1.x, !var_4.b, -580f >= var_4.c)), !select(vec3<bool>(false, false, var_4.b), vec3<bool>(var_4.b, var_1.x, var_4.b), true), var_2));
}

