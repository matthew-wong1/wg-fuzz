struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: i32;

var<private> global2: array<bool, 7>;

var<private> global3: vec3<f32> = vec3<f32>(508f, 283f, 384f);

var<private> global4: array<f32, 26> = array<f32, 26>(1638f, 635f, 109f, 1220f, -1332f, 344f, 122f, -1070f, -1281f, -708f, -1288f, -658f, 674f, -860f, -675f, 120f, 477f, -1903f, -1152f, -111f, -768f, 2865f, -1000f, -890f, -1342f, -1092f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<i32>) -> vec3<bool> {
    var var_0 = countOneBits(~vec4<i32>(~(~arg_1.b.x), arg_1.b.x, 9836i, 0i));
    global1 = _wgslsmith_clamp_i32(abs(~(-21976i)), _wgslsmith_dot_vec2_i32(var_0.wx ^ u_input.e, _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, 0i), firstTrailingBit(vec2<i32>(arg_3.x, -26883i)))) & (var_0.x ^ ~(~(-4706i))), select(_wgslsmith_clamp_i32(-u_input.e.x, 32475i, _wgslsmith_div_i32(countOneBits(arg_3.x), 55170i)), ~_wgslsmith_clamp_i32(_wgslsmith_div_i32(-9831i, -2147483647i), arg_3.x, 1i), false));
    var_0 = -vec4<i32>(_wgslsmith_dot_vec4_i32(arg_3, vec4<i32>(select(-1i, 0i, global2[_wgslsmith_index_u32(u_input.b.x, 7u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(-383i, 2147483647i, -18594i, -2147483647i), vec4<i32>(1i, arg_3.x, -94599i, arg_3.x)), -2147483647i, _wgslsmith_mult_i32(arg_1.c, arg_1.c))), _wgslsmith_div_i32(1i, 1940i), _wgslsmith_dot_vec2_i32(~(~vec2<i32>(-17397i, 2147483647i)), countOneBits(vec2<i32>(23872i, var_0.x)) & -u_input.e), reverseBits(-firstTrailingBit(-28345i)));
    var var_1 = _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -37484i) << (u_input.c % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(-1066i, arg_1.c)), max(arg_3.yz, vec2<i32>(var_0.x, 0i))))) <= ~(~(~(i32(-1i) * -2147483647i)));
    var var_2 = vec2<u32>(_wgslsmith_mult_u32(arg_0.x, ~(~countOneBits(arg_0.x))), ~(abs(1u | arg_1.d) >> (~arg_1.d % 32u)));
    return vec3<bool>(!all(!vec4<bool>(arg_2.x, true, global2[_wgslsmith_index_u32(var_2.x, 7u)], true)), arg_2.x, all(select(select(select(vec4<bool>(true, false, true, false), arg_2, arg_2.x), arg_2, false), select(vec4<bool>(arg_2.x, false, true, true), !vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), -105f >= global0[_wgslsmith_index_u32(u_input.d.x, 16u)]), arg_2.x && true)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -706f))), _wgslsmith_f_op_f32(sign(1244f)), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(49415u, 16u)])), -1597f), select(vec3<i32>(2147483647i, -34419i, 88962i), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-36761i, -6073i, arg_1.c), vec3<i32>(arg_0.c, -1i, arg_1.c) & arg_0.b)), func_3(~u_input.d, arg_1, vec4<bool>(false, true, !global2[_wgslsmith_index_u32(arg_1.d, 7u)], 0u <= arg_1.d), -vec4<i32>(2147483647i, u_input.e.x, -2557i, u_input.e.x))), -abs(-1i), ~0u);
    var var_1 = !(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, global2[_wgslsmith_index_u32(61528u, 7u)]), vec2<bool>(global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(arg_0.d, 7u)]), true))));
    global2 = array<bool, 7>();
    var var_2 = arg_1;
    global2 = array<bool, 7>();
    return select(vec3<bool>(true, func_3(u_input.d, Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1083f, arg_0.a.x, var_0.a.x, arg_0.a.x))), arg_1.b, arg_1.c, arg_0.d), select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(var_0.d, 7u)], global2[_wgslsmith_index_u32(1u, 7u)]), vec4<bool>(var_1.x, true, false, global2[_wgslsmith_index_u32(var_2.d, 7u)]), true), select(vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 7u)], var_1.x, var_1.x), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], false, false, var_1.x), global2[_wgslsmith_index_u32(2534u, 7u)]), select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(var_2.d, 7u)]), vec4<bool>(false, true, global2[_wgslsmith_index_u32(arg_0.d, 7u)], false), vec4<bool>(false, var_1.x, global2[_wgslsmith_index_u32(u_input.c.x, 7u)], true))), vec4<i32>(select(arg_0.b.x, var_0.c, true), -1i, max(var_2.b.x, -1i), u_input.e.x << (var_0.d % 32u))).x, any(!func_3(u_input.d, Struct_1(vec4<f32>(var_2.a.x, -914f, -708f, 1000f), vec3<i32>(1833i, var_2.b.x, -2147483647i), arg_1.c, 51278u), vec4<bool>(true, global2[_wgslsmith_index_u32(var_2.d, 7u)], false, false), vec4<i32>(u_input.a, arg_1.b.x, -11837i, 2147483647i)).zx)), !vec3<bool>(any(!vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(arg_0.d, 7u)], false)), true, global2[_wgslsmith_index_u32(~(~var_2.d), 7u)]), false);
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(vec4<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(981u, 26u)]), global0[_wgslsmith_index_u32(~u_input.b.x, 16u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(arg_2.x, 26u)], -128f)), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(57362u, 16u)], 481f))))), _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(min(arg_2.x, 12641u), 16u)] + _wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(0u, 26u)]))))), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(_wgslsmith_mod_vec3_i32(arg_3, arg_3)), max(-arg_3, select(arg_3, vec3<i32>(-43048i, -2147483647i, 0i), false))), vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(20737i, u_input.e.x, arg_3.x, 63555i), vec4<i32>(51777i, u_input.a, -2147483647i, arg_3.x)), 1i, u_input.a)), -(u_input.e.x >> (~(~arg_2.x) % 32u)), 1u);
    global4 = array<f32, 26>();
    global3 = _wgslsmith_f_op_vec3_f32(-var_0.a.yyz);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(174f, 336f, var_0.a.x)))) - vec3<f32>(-635f, -550f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(28051u, 26u)]) - _wgslsmith_div_f32(663f, -110f)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1073f, -1162f, 1140f)))), var_0.a.yxy))));
    let var_2 = _wgslsmith_sub_u32(var_0.d, 1u);
    return var_0;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_4(global2[_wgslsmith_index_u32(~1u, 7u)], select(vec3<bool>(!global2[_wgslsmith_index_u32(arg_2.d, 7u)], true, any(!vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 7u)]))), select(vec3<bool>(false, arg_2.b.x > u_input.a, global2[_wgslsmith_index_u32(u_input.b.x, 7u)] || global2[_wgslsmith_index_u32(arg_2.d, 7u)]), select(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 7u)], true, global2[_wgslsmith_index_u32(21000u, 7u)]), vec3<bool>(true, false, false), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 7u)], false)), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], global2[_wgslsmith_index_u32(92465u, 7u)], global2[_wgslsmith_index_u32(arg_2.d, 7u)]), !vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 7u)], false)), !func_2(arg_2, Struct_1(arg_2.a, vec3<i32>(u_input.a, u_input.e.x, -39722i), arg_2.b.x, arg_2.d))), vec3<bool>(true, all(select(vec4<bool>(false, global2[_wgslsmith_index_u32(31753u, 7u)], true, true), vec4<bool>(false, true, global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(u_input.c.x, 7u)]), vec4<bool>(global2[_wgslsmith_index_u32(2539u, 7u)], false, false, global2[_wgslsmith_index_u32(u_input.d.x, 7u)]))), false)), ~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(0u, u_input.c.x, u_input.c.x, arg_2.d)), vec4<u32>(4294967295u, arg_2.d, 4294967295u, 28600u) | vec4<u32>(arg_2.d, arg_2.d, 1u, u_input.b.x)), abs(vec3<i32>(u_input.e.x, -72344i, _wgslsmith_sub_i32(-54872i, _wgslsmith_mult_i32(u_input.e.x, arg_2.c)))));
    global3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_2.a.yyw * vec3<f32>(1f, 1f, global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(6863u, var_0.d), 26u)])), func_4(true, !func_3(~vec3<u32>(arg_2.d, 0u, var_0.d), func_4(global2[_wgslsmith_index_u32(var_0.d, 7u)], vec3<bool>(global2[_wgslsmith_index_u32(31176u, 7u)], global2[_wgslsmith_index_u32(0u, 7u)], true), vec4<u32>(u_input.c.x, 1u, 1u, 1u), var_0.b), !vec4<bool>(global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(17503u, 7u)], global2[_wgslsmith_index_u32(arg_2.d, 7u)], global2[_wgslsmith_index_u32(0u, 7u)]), firstLeadingBit(vec4<i32>(1i, var_0.b.x, u_input.e.x, 1i))), vec4<u32>(var_0.d, u_input.c.x, abs(70021u), func_4(true, vec3<bool>(false, global2[_wgslsmith_index_u32(31757u, 7u)], global2[_wgslsmith_index_u32(1u, 7u)]), vec4<u32>(u_input.c.x, var_0.d, 0u, 98952u), vec3<i32>(-2147483647i, arg_2.c, 0i)).d ^ ~24813u), select(-vec3<i32>(1i, -52250i, -1i) ^ ~vec3<i32>(54174i, arg_2.c, -2147483647i), reverseBits(~arg_2.b), func_2(Struct_1(var_0.a, arg_2.b, arg_2.c, var_0.d), Struct_1(var_0.a, vec3<i32>(var_0.b.x, u_input.a, -535i), 14361i, 1u)))).a.xzy));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(round(arg_2.a)), ~_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 2147483647i, arg_2.c), arg_2.b), vec3<i32>(32496i, 2147483647i, -44672i)), vec3<i32>(func_4(global2[_wgslsmith_index_u32(4294967295u, 7u)], vec3<bool>(global2[_wgslsmith_index_u32(50137u, 7u)], true, global2[_wgslsmith_index_u32(40485u, 7u)]), vec4<u32>(u_input.d.x, 75085u, arg_2.d, 76958u), arg_2.b).b.x, ~u_input.a, _wgslsmith_div_i32(-1i, var_0.b.x))), 41879i, 31076u);
    var var_2 = ~arg_2.c;
    let var_3 = func_4(true, select(func_3(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d, u_input.b.x, 1u), u_input.d), var_0.d, ~59438u), Struct_1(_wgslsmith_f_op_vec4_f32(step(var_1.a, vec4<f32>(var_1.a.x, -923f, var_1.a.x, arg_0))), var_0.b, abs(arg_2.c), _wgslsmith_clamp_u32(4294967295u, var_0.d, u_input.d.x)), select(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)], false, false), !vec4<bool>(global2[_wgslsmith_index_u32(var_0.d, 7u)], global2[_wgslsmith_index_u32(10844u, 7u)], global2[_wgslsmith_index_u32(0u, 7u)], false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, global2[_wgslsmith_index_u32(77198u, 7u)], global2[_wgslsmith_index_u32(54780u, 7u)], true), global2[_wgslsmith_index_u32(var_0.d, 7u)])), vec4<i32>(_wgslsmith_add_i32(var_1.c, arg_2.b.x), -2147483647i, _wgslsmith_add_i32(var_1.c, arg_2.b.x), i32(-1i) * -2147483647i)), !select(!vec3<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 7u)]), vec3<bool>(false, false, false), !vec3<bool>(global2[_wgslsmith_index_u32(arg_2.d, 7u)], global2[_wgslsmith_index_u32(arg_2.d, 7u)], false)), !(!select(vec3<bool>(global2[_wgslsmith_index_u32(var_1.d, 7u)], global2[_wgslsmith_index_u32(var_0.d, 7u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 7u)], true), vec3<bool>(global2[_wgslsmith_index_u32(arg_2.d, 7u)], true, global2[_wgslsmith_index_u32(u_input.d.x, 7u)])))), reverseBits(vec4<u32>(_wgslsmith_div_u32(~4294967295u, 1u), arg_2.d, 4294967295u, u_input.c.x)), vec3<i32>(~_wgslsmith_mod_i32(-2147483647i, var_0.b.x), 1i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.b.x, arg_2.c, 1i, 0i) ^ vec4<i32>(1i, 12463i, 0i, arg_2.c), vec4<i32>(var_1.b.x, u_input.a, -12438i, var_0.b.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c, -8084i, u_input.a, var_0.c) ^ vec4<i32>(var_0.b.x, -2147483647i, -23781i, arg_2.b.x), vec4<i32>(var_0.b.x, -2147483647i, 0i, 33549i)))));
    return func_4(all(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(arg_2.a + vec4<f32>(-810f, var_0.a.x, var_0.a.x, 1167f)), arg_2.b ^ arg_2.b, -2147483647i, var_1.d | var_1.d), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2.a), var_3.b, _wgslsmith_clamp_i32(-1i, 0i, 2147483647i), 4294967295u))), !func_2(Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(arg_2.d, 16u)], global4[_wgslsmith_index_u32(8338u, 26u)], -1000f, global4[_wgslsmith_index_u32(17867u, 26u)]), var_0.b, firstLeadingBit(26021i), ~var_3.d), Struct_1(_wgslsmith_f_op_vec4_f32(arg_2.a + var_3.a), _wgslsmith_mod_vec3_i32(arg_2.b, vec3<i32>(1i, -2147483647i, arg_2.c)), _wgslsmith_div_i32(arg_2.b.x, var_1.b.x), 0u >> (var_3.d % 32u))), vec4<u32>(~(~(0u >> (1u % 32u))), abs(~_wgslsmith_div_u32(var_0.d, 847u)), 26899u, _wgslsmith_add_u32(var_0.d, var_3.d)), vec3<i32>(var_1.c, _wgslsmith_div_i32(abs(2147483647i ^ var_1.b.x), 1i), var_0.b.x >> (0u % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<i32>) -> vec3<i32> {
    var var_0 = _wgslsmith_div_vec4_f32(arg_0.a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.d.x, arg_1.x), 16u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(50939u, 16u)], arg_0.a.x)), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(arg_1.x, 16u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(67041u, 16u)])) - _wgslsmith_f_op_f32(abs(global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x) * global3.x)))));
    let var_1 = func_4(true, func_3(~vec3<u32>(arg_1.x & 4294967295u, arg_0.d & arg_1.x, u_input.d.x), arg_0, vec4<bool>(global2[_wgslsmith_index_u32(~u_input.b.x, 7u)], false, !func_2(arg_0, arg_0).x, !(global4[_wgslsmith_index_u32(arg_0.d, 26u)] == global3.x)), _wgslsmith_mult_vec4_i32(abs(select(vec4<i32>(-28000i, u_input.e.x, -1i, arg_2.x), vec4<i32>(u_input.a, u_input.e.x, 37232i, arg_0.c), false)), _wgslsmith_clamp_vec4_i32(arg_2, vec4<i32>(0i, -2147483647i, -2147483647i, 0i), vec4<i32>(arg_2.x, u_input.e.x, arg_2.x, 60036i)))), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.d, ~arg_1.x, 133018u, reverseBits(10218u)), ~vec4<u32>(~8251u, max(arg_1.x, arg_1.x), 18365u, arg_0.d << (0u % 32u))), arg_2.zxw).b.zx;
    var var_2 = 175f;
    var var_3 = arg_0;
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(arg_1.x, 26u)] + 668f), func_4(false, vec3<bool>(global2[_wgslsmith_index_u32(15956u, 7u)], global2[_wgslsmith_index_u32(0u, 7u)], true), vec4<u32>(arg_1.x, 0u, var_3.d, var_3.d), arg_2.xyw).a.x, -310f, _wgslsmith_f_op_f32(var_0.x + 1000f)), vec4<f32>(_wgslsmith_f_op_f32(step(-234f, global3.x)), -239f, _wgslsmith_f_op_f32(select(335f, global0[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 7u)])), -622f)))), arg_2.xzz, ~func_1(_wgslsmith_f_op_f32(-132f + 923f), _wgslsmith_f_op_vec3_f32(-arg_0.a.yww), Struct_1(var_3.a, vec3<i32>(var_1.x, var_1.x, -35272i), u_input.a, 11310u)).c | (max(1i, var_3.b.x) & -arg_0.b.x), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.d, var_3.d, var_3.d, arg_1.x) >> (reverseBits(vec4<u32>(34071u, 4294967295u, 69773u, 17317u)) % vec4<u32>(32u)), select(reverseBits(vec4<u32>(0u, var_3.d, arg_0.d, 1u)), max(vec4<u32>(1u, 52068u, arg_0.d, 78467u), vec4<u32>(arg_1.x, 0u, arg_1.x, 1u)), !vec4<bool>(false, global2[_wgslsmith_index_u32(arg_1.x, 7u)], global2[_wgslsmith_index_u32(arg_0.d, 7u)], true))));
    return _wgslsmith_clamp_vec3_i32(func_1(global0[_wgslsmith_index_u32(firstTrailingBit(var_3.d << (0u % 32u)), 16u)], var_3.a.wzz, arg_0).b, _wgslsmith_sub_vec3_i32(~(-var_3.b), func_4(global2[_wgslsmith_index_u32(76326u, 7u)] & global2[_wgslsmith_index_u32(var_4.d, 7u)], vec3<bool>(global2[_wgslsmith_index_u32(4829u, 7u)], global2[_wgslsmith_index_u32(408u, 7u)], false), _wgslsmith_div_vec4_u32(vec4<u32>(44019u, arg_1.x, var_4.d, var_4.d), vec4<u32>(arg_0.d, 4294967295u, var_3.d, 1u)), vec3<i32>(var_4.b.x, 0i, 2147483647i)).b), _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(var_1.x, var_3.c, var_1.x), vec3<i32>(37807i, firstTrailingBit(arg_0.b.x), _wgslsmith_dot_vec2_i32(arg_2.zw, vec2<i32>(arg_2.x, 2147483647i))))) ^ vec3<i32>(select(~var_3.b.x, -1i | u_input.e.x, !global2[_wgslsmith_index_u32(var_4.d, 7u)]) | countOneBits(-2147483647i), firstLeadingBit(-21315i | var_4.c), firstTrailingBit(max(arg_0.c, var_4.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 7>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1190f, 1024f, global3.x, 256f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4[_wgslsmith_index_u32(u_input.d.x, 26u)], -795f, -328f, global0[_wgslsmith_index_u32(0u, 16u)]), vec4<f32>(-580f, -772f, -1034f, -1000f)))), global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(21870u, u_input.d.x, 31059u)), 7u)]))), _wgslsmith_add_vec3_i32(-func_5(func_1(830f, vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 16u)], global0[_wgslsmith_index_u32(73302u, 16u)], 554f), Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(539u, 16u)], global3.x, -1000f, global0[_wgslsmith_index_u32(u_input.d.x, 16u)]), vec3<i32>(u_input.e.x, -7696i, u_input.e.x), -1i, 32727u)), min(vec2<u32>(u_input.c.x, 4294967295u), u_input.d.yz), vec4<i32>(10452i, -17617i, u_input.e.x, 34231i)), -_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 32993i, 1i), vec3<i32>(-2147483647i, u_input.a, 2147483647i))), max(63677i, u_input.e.x), u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~abs(var_0.d) & 167404u), _wgslsmith_f_op_f32(-var_0.a.x));
}

