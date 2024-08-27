struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<u32, 9> = array<u32, 9>(1u, 1u, 1u, 4294967295u, 4294967295u, 57180u, 0u, 4294967295u, 4294967295u);

var<private> global2: array<vec4<f32>, 15>;

var<private> global3: i32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec4<i32> {
    let var_0 = ~(-(vec3<i32>(_wgslsmith_mod_i32(1i, -4894i), _wgslsmith_add_i32(u_input.b.x, u_input.a.x), 1i) >> (vec3<u32>(~1u, ~63381u, _wgslsmith_sub_u32(0u, global1[_wgslsmith_index_u32(39099u, 9u)])) % vec3<u32>(32u))));
    var var_1 = Struct_1(firstLeadingBit(u_input.b), reverseBits(~(_wgslsmith_sub_i32(31230i, 1i) ^ (u_input.a.x << (29874u % 32u)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_div_f32(global0.x, global0.x), -181f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(408f, global0.x, -1894f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-760f, -626f, global0.x), vec3<f32>(-1525f, global0.x, 1618f)))))));
    var var_2 = Struct_1(_wgslsmith_mult_vec4_i32(-(_wgslsmith_mod_vec4_i32(vec4<i32>(17408i, 2147483647i, -2147483647i, -4937i), var_1.a) >> ((vec4<u32>(55023u, 1u, 23891u, 40137u) << (vec4<u32>(0u, 46632u, 1u, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u))), (vec4<i32>(-1i) * -vec4<i32>(42321i, u_input.e, 2147483647i, var_0.x)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, -2147483647i, var_0.x, 46263i), select(var_1.a, vec4<i32>(1i, u_input.e, var_0.x, -2147483647i), false))), _wgslsmith_mult_i32(var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(2147483647i, u_input.a.x, var_1.a.x), select(vec3<i32>(-2147483647i, 0i, u_input.d), vec3<i32>(1i, 8069i, var_1.b), all(vec3<bool>(false, true, false))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.c.x, global0.x, 877f), _wgslsmith_f_op_vec3_f32(var_1.c - vec3<f32>(var_1.c.x, var_1.c.x, -1082f)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))))))));
    let var_3 = Struct_1(vec4<i32>(-u_input.b.x, firstTrailingBit(abs(_wgslsmith_sub_i32(0i, 1i))), -319i, _wgslsmith_mod_i32(u_input.d, 1i)), u_input.b.x, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.c.x))), _wgslsmith_f_op_f32(abs(var_2.c.x)), -1000f))));
    var_2 = var_3;
    return var_2.a;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec4<i32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_div_vec4_i32(arg_3, ~select(arg_1.a | u_input.b, arg_3 << (vec4<u32>(arg_2, 3870u, u_input.c, global1[_wgslsmith_index_u32(u_input.c, 9u)]) % vec4<u32>(32u)), vec4<bool>(false, false, arg_0, arg_0))), firstLeadingBit(func_3().x), arg_1.c);
    let var_1 = -866f;
    var var_2 = _wgslsmith_clamp_i32(arg_3.x, u_input.d, arg_1.b);
    let var_3 = firstTrailingBit(~_wgslsmith_mult_vec4_u32(~(vec4<u32>(arg_2, 4294967295u, global1[_wgslsmith_index_u32(arg_2, 9u)], 61957u) & vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 9u)], 9u)], 15354u, global1[_wgslsmith_index_u32(0u, 9u)])), vec4<u32>(4294967295u, _wgslsmith_div_u32(u_input.c, arg_2), 8983u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, arg_2), vec2<u32>(arg_2, arg_2)))));
    var_2 = arg_3.x;
    return ~arg_1.a.x;
}

fn func_2() -> vec2<f32> {
    let var_0 = -973f;
    let var_1 = ~10983u;
    global2 = array<vec4<f32>, 15>();
    global3 = func_4(false, Struct_1(func_3(), max((u_input.e | -16033i) ^ ~(-53221i), u_input.b.x), vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), var_0)), u_input.c, _wgslsmith_sub_vec4_i32(abs(abs(u_input.b)), vec4<i32>(1i, ~0i, -5464i, 26003i)) >> (vec4<u32>(var_1, ~43748u, var_1, 51261u) % vec4<u32>(32u)));
    var var_2 = true;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-242f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(global0.x - global0.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2()));
    let var_0 = Struct_1(-vec4<i32>(-1338i, func_3().x, _wgslsmith_mod_i32(u_input.b.x, arg_0.b), 0i), ~arg_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(arg_0.c)))) - arg_0.c));
    let var_1 = _wgslsmith_add_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -arg_0.b, u_input.e), max(_wgslsmith_mod_vec3_i32(var_0.a.zxz, vec3<i32>(2147483647i, 0i, u_input.a.x)), var_0.a.www)), vec3<i32>(~_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b.x, -1i), firstTrailingBit(arg_0.a.wy)), u_input.a.x, _wgslsmith_mult_i32(u_input.b.x, countOneBits(u_input.d))));
    var var_2 = Struct_1(-_wgslsmith_div_vec4_i32(~(~vec4<i32>(var_0.b, 2147483647i, -2147483647i, var_0.a.x)), -vec4<i32>(-22221i, -33410i, 1i, -1i)), -(~1298i), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(var_0.c, vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.c.x, arg_0.c.x, false)), 606f, _wgslsmith_f_op_f32(658f * var_0.c.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, var_0.c.x, -711f) - vec3<f32>(1320f, arg_0.c.x, -1273f)))))))));
    let var_3 = _wgslsmith_f_op_f32(-var_2.c.x);
    return Struct_1(vec4<i32>(arg_0.a.x, 35972i, _wgslsmith_dot_vec3_i32(-vec3<i32>(var_2.b, var_1.x, 14398i), vec3<i32>(-7702i, var_0.b, var_2.b)), -(~_wgslsmith_clamp_i32(var_1.x, -8602i, var_1.x))), u_input.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c) * _wgslsmith_div_vec3_f32(var_2.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(930f, arg_0.c.x, var_3)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> bool {
    var var_0 = any(select(vec3<bool>(true, true, !arg_3.x), select(vec3<bool>(any(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, true)), arg_3.x, any(vec4<bool>(true, arg_3.x, arg_3.x, arg_3.x))), select(select(vec3<bool>(true, arg_3.x, false), vec3<bool>(arg_3.x, true, true), vec3<bool>(false, arg_3.x, arg_3.x)), !vec3<bool>(arg_3.x, false, arg_3.x), arg_3.x & arg_3.x), !(!arg_3.x)), select(vec3<bool>(true, arg_3.x, arg_3.x), select(!vec3<bool>(true, true, arg_3.x), select(vec3<bool>(false, false, false), vec3<bool>(false, arg_3.x, false), vec3<bool>(arg_3.x, arg_3.x, arg_3.x)), all(vec4<bool>(arg_3.x, false, false, true))), select(vec3<bool>(arg_3.x, false, false), vec3<bool>(false, false, true), !vec3<bool>(arg_3.x, true, false)))));
    var var_1 = vec4<i32>(-(~(firstLeadingBit(-837i) & arg_2.b)), _wgslsmith_dot_vec2_i32(arg_2.a.xz, vec2<i32>(~_wgslsmith_div_i32(u_input.a.x, -55784i), -1i)), arg_2.b, -43324i);
    let var_2 = select(_wgslsmith_mult_vec4_u32(max(vec4<u32>(global1[_wgslsmith_index_u32(1u, 9u)], u_input.c, u_input.c, 4294967295u), countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(u_input.c, 9u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(72115u, 9u)], 9u)], 1u))), ~(vec4<u32>(global1[_wgslsmith_index_u32(u_input.c, 9u)], u_input.c, 0u, u_input.c) ^ vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.c, 9u)], u_input.c, global1[_wgslsmith_index_u32(u_input.c, 9u)]))) ^ vec4<u32>(48181u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 9u)] ^ _wgslsmith_div_u32(u_input.c, 9643u), _wgslsmith_sub_u32(4294967295u, u_input.c), global1[_wgslsmith_index_u32((4294967295u << (global1[_wgslsmith_index_u32(14915u, 9u)] % 32u)) | _wgslsmith_dot_vec2_u32(vec2<u32>(33221u, global1[_wgslsmith_index_u32(u_input.c, 9u)]), vec2<u32>(u_input.c, 47986u)), 9u)]), max(vec4<u32>(~1u, ~47466u, _wgslsmith_sub_u32(0u, u_input.c), global1[_wgslsmith_index_u32(1u, 9u)]) << (vec4<u32>(global1[_wgslsmith_index_u32(max(u_input.c, global1[_wgslsmith_index_u32(55052u, 9u)]), 9u)], 6340u << (u_input.c % 32u), reverseBits(u_input.c), global1[_wgslsmith_index_u32(select(4294967295u, u_input.c, false), 9u)]) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(~1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(min(1u, 4294967295u), 9u)], 9u)], 0u, u_input.c))), true);
    global3 = u_input.b.x;
    var var_3 = Struct_1(func_1(func_1(Struct_1(~arg_1.a, -4488i, vec3<f32>(-1000f, 1783f, arg_1.c.x)), !vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x)), !vec4<bool>(true || arg_3.x, !arg_3.x, !arg_3.x, true && arg_3.x)).a, arg_1.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-640f, -1470f, arg_2.c.x) * arg_0.xyz)) + arg_0.wxx));
    return arg_3.x;
}

fn func_6(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(-vec4<i32>(u_input.e, -1i, i32(-1i) * -1i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)) & u_input.b, 1i, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), -1481f)), -1376f, -410f))));
    return func_1(func_1(func_1(func_1(func_1(Struct_1(vec4<i32>(u_input.b.x, -1i, var_0.b, var_0.a.x), 10886i, var_0.c), vec4<bool>(arg_3.x, false, arg_2, arg_2)), !vec4<bool>(arg_2, arg_3.x, false, false)), vec4<bool>(true, arg_3.x, any(arg_3), false)), vec4<bool>(false, !arg_2, _wgslsmith_f_op_f32(-503f - var_0.c.x) != var_0.c.x, !select(false, true, arg_3.x))), select(!select(!vec4<bool>(arg_2, true, false, true), vec4<bool>(true, false, false, arg_2), true), !select(vec4<bool>(arg_3.x, arg_2, arg_2, arg_3.x), select(vec4<bool>(arg_2, arg_2, true, arg_2), vec4<bool>(false, false, arg_2, arg_2), vec4<bool>(arg_2, arg_3.x, true, arg_2)), arg_3.x), !vec4<bool>(arg_3.x && arg_2, false, arg_3.x, all(arg_3.yz))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(abs(abs(55681u) | _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.c, u_input.c), u_input.c)), abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)], u_input.c), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, global1[_wgslsmith_index_u32(38215u, 9u)], 44812u), vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35536u, 9u)], 9u)], global1[_wgslsmith_index_u32(16311u, 9u)]))), 9u)] | ~(~u_input.c), 9u)]), all(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(false, false, true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))))), !vec3<bool>(func_5(global2[_wgslsmith_index_u32(u_input.c, 15u)], Struct_1(u_input.b, u_input.b.x, vec3<f32>(1666f, global0.x, 819f)), func_1(Struct_1(vec4<i32>(u_input.e, 2698i, u_input.e, u_input.b.x), u_input.e, vec3<f32>(global0.x, global0.x, global0.x)), vec4<bool>(false, true, true, false)), vec2<bool>(true, true)), !(global0.x != -1041f), select(all(vec2<bool>(false, false)), func_5(global2[_wgslsmith_index_u32(21450u, 15u)], Struct_1(vec4<i32>(-6050i, u_input.e, u_input.a.x, u_input.b.x), -2147483647i, vec3<f32>(global0.x, 1689f, -259f)), Struct_1(u_input.b, -2147483647i, vec3<f32>(global0.x, -827f, global0.x)), vec2<bool>(true, true)), true)));
    var var_1 = 4294967295u;
    global1 = array<u32, 9>();
    global0 = var_0.c.xy;
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(130519u, 15u)]), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -887f)) - _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -1271f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-132f, var_0.c.x) * _wgslsmith_f_op_f32(sign(-408f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, var_0.c.x) * var_0.c.x), any(vec3<bool>(true, true, true)))), global0.x));
}

