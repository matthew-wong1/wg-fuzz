struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 30>;

var<private> global2: vec2<i32> = vec2<i32>(10213i, -37136i);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: vec2<f32>) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(arg_1.d, global0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_3 + vec2<f32>(-1265f, arg_3.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, arg_3.x))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(924f, 1730f))), -2055f), Struct_1(arg_0, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_1.c + vec2<f32>(arg_0, 741f)))), arg_1.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, global0.d) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 881f)))), -1057f));
    global2 = countOneBits(_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(abs(-22124i), 80734i)), max(_wgslsmith_sub_vec2_i32(u_input.a ^ u_input.a, u_input.a), firstLeadingBit(reverseBits(vec2<i32>(u_input.a.x, -1i))))));
    global1 = array<vec3<f32>, 30>();
    global1 = array<vec3<f32>, 30>();
    global0 = var_0.b;
    return select(!vec3<bool>(true, max(8081u, 4294967295u) > _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 6668u), vec2<u32>(37047u, 1279u)), !arg_2 || true), vec3<bool>(!(_wgslsmith_f_op_f32(floor(308f)) >= _wgslsmith_div_f32(global0.b.x, var_0.b.b.x)), true, false), !select(!select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(true, arg_2, arg_2), arg_2), vec3<bool>(arg_2, arg_2, true), !(!vec3<bool>(arg_2, arg_2, false))));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> vec3<f32> {
    let var_0 = Struct_1(global0.b.x, global0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(global0.b.x + -1018f), _wgslsmith_f_op_f32(947f + global0.c.x)), global0.c, (global0.d <= global0.c.x) || (-3247i >= global2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-650f)) * _wgslsmith_f_op_f32(global0.c.x * -1081f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.c.x - 901f))))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1162f * -1186f))) - var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)));
    let var_2 = !(!(!func_3(_wgslsmith_f_op_f32(-473f - global0.d), Struct_1(var_0.b.x, vec2<f32>(var_1.x, -610f), vec2<f32>(-1000f, -184f), var_0.d), false, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, -848f) + global0.c))));
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_0.a) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(717f, 1092f), vec2<f32>(global0.d, -837f)))))))));
    let var_4 = Struct_2(var_0, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global0.b.x, _wgslsmith_f_op_f32(ceil(-289f)))))), _wgslsmith_f_op_vec2_f32(global0.b - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d, 277f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(var_1.x, 891f)), _wgslsmith_f_op_f32(679f - var_1.x))), 895f));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(select(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(5157u, 4294967295u), vec2<u32>(9735u, 4294967295u)), select(false, var_2.x, true)), 30u)], global1[_wgslsmith_index_u32(44127u, 30u)]) + _wgslsmith_f_op_vec3_f32(sign(global1[_wgslsmith_index_u32(1u, 30u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-314f, -250f, -1123f) - global1[_wgslsmith_index_u32(7853u, 30u)]))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_3(~(-1654i), vec4<bool>(true, ((2153i <= u_input.a.x) | any(vec4<bool>(true, true, false, true))) | true, false, false), vec2<i32>(-2147483647i, 2147483647i), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 1u), vec2<u32>(16657u, 4294967295u), true) & vec2<u32>(20816u, 24357u), countOneBits(~vec2<u32>(25708u, 1u))), ~(~(~1u))), vec2<bool>(true, true));
    global0 = Struct_1(-296f, arg_0.zz, _wgslsmith_f_op_vec2_f32(arg_0.yz - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, -2071f) + arg_0.yx) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(656f, arg_0.x)))))), 1000f);
    let var_1 = vec4<u32>(~(_wgslsmith_div_u32(0u, var_0.d) >> (abs(var_0.d) % 32u)), 0u, var_0.d, 108888u >> (var_0.d % 32u)) | firstTrailingBit(~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.d, var_0.d, 22201u, var_0.d), vec4<u32>(var_0.d, 32712u, var_0.d, var_0.d), vec4<u32>(0u, 0u, var_0.d, var_0.d))));
    global1 = array<vec3<f32>, 30>();
    global1 = array<vec3<f32>, 30>();
    return Struct_2(Struct_1(-208f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-311f, global0.c.x), arg_0.xz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0.zx))), var_0.e)), global0.b, arg_0.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c)), arg_0.xz, global0.b.x));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2) -> i32 {
    global1 = array<vec3<f32>, 30>();
    var var_0 = Struct_1(1f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.c))) - _wgslsmith_f_op_vec2_f32(-arg_1.b.b)), func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.b.x, arg_1.a.c.x, -659f) * _wgslsmith_f_op_vec3_f32(ceil(global1[_wgslsmith_index_u32(1u, 30u)]))), _wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(abs(0u), 30u)], _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(8003u, 30u)] * vec3<f32>(1906f, 473f, arg_1.a.c.x)))), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-42375i, 0i, arg_0.x, arg_0.x) & vec4<i32>(u_input.a.x, u_input.a.x, global2.x, global2.x), vec4<i32>(global2.x, 1697i, 0i, global2.x), -vec4<i32>(u_input.a.x, u_input.a.x, global2.x, -2147483647i)), select(abs(vec4<i32>(0i, u_input.a.x, u_input.a.x, global2.x)), vec4<i32>(global2.x, global2.x, 20044i, 12300i), all(vec4<bool>(true, true, true, true))))).b.c, _wgslsmith_f_op_f32(475f * -428f));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.x))), vec2<f32>(_wgslsmith_f_op_f32(-global0.c.x), 1f), var_0.b, 795f);
    var var_2 = Struct_1(534f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1106f, var_0.a) * vec2<f32>(-273f, arg_1.b.d))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(arg_1.a.b, global0.b))))) + vec2<f32>(global0.b.x, -199f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.a, global0.b.x)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(650f, var_0.a))))))), -238f);
    let var_3 = vec4<i32>(arg_0.x, global2.x, _wgslsmith_add_i32(1i, global2.x), (i32(-1i) * -global2.x) << (4294967295u % 32u));
    return i32(-1i) * -arg_0.x;
}

fn func_1() -> vec4<bool> {
    global1 = array<vec3<f32>, 30>();
    let var_0 = all(!select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, false, true, true)), select(true, true, false), false)));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_mult_i32(-countOneBits(firstLeadingBit(-2147483647i)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(global2.x, 794i)) >> (firstLeadingBit(vec2<u32>(89918u, 0u)) % vec2<u32>(32u)), u_input.a)), func_5(-select(-vec3<i32>(-53140i, u_input.a.x, u_input.a.x), vec3<i32>(-2147483647i, -1i, global2.x) ^ vec3<i32>(u_input.a.x, 0i, global2.x), false), func_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_2(-2147483647i, vec4<i32>(u_input.a.x, -24062i, global2.x, u_input.a.x))))), vec4<i32>(u_input.a.x, -1i, -37410i, -2147483647i) | vec4<i32>(global2.x, u_input.a.x, u_input.a.x, global2.x))));
    let var_2 = func_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u << (~select(0u, 4294967295u, var_0) % 32u), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(49370u, 1u), ~2726u)), 30u)], ~vec4<i32>(-23550i, global2.x, 12222i, i32(-1i) * -u_input.a.x)).a;
    var var_3 = false;
    return select(!(!select(!vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(true, var_0, var_0, var_0), !vec4<bool>(var_0, true, false, false))), !vec4<bool>(true, any(vec3<bool>(var_0, true, true)) | true, -421f <= global0.b.x, var_0), false);
}

fn func_6(arg_0: Struct_3, arg_1: vec4<bool>) -> u32 {
    global2 = -arg_0.c ^ arg_0.c;
    var var_0 = _wgslsmith_mod_vec4_u32(abs(~select(vec4<u32>(arg_0.d, 0u, arg_0.d, arg_0.d), vec4<u32>(1u, 0u, 4294967295u, arg_0.d), arg_1) >> (vec4<u32>(1u, arg_0.d, _wgslsmith_add_u32(arg_0.d, 35107u), arg_0.d) % vec4<u32>(32u))), vec4<u32>(51888u, arg_0.d, ~(~(~6535u)), max(~_wgslsmith_div_u32(arg_0.d, arg_0.d), abs(~21051u))));
    var_0 = _wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.d, _wgslsmith_dot_vec2_u32(var_0.zw & vec2<u32>(arg_0.d, 14503u), vec2<u32>(var_0.x, arg_0.d)), 4294967295u << (arg_0.d % 32u), ~arg_0.d >> (_wgslsmith_dot_vec2_u32(var_0.zy, var_0.xx) % 32u)), vec4<u32>(arg_0.d, _wgslsmith_mod_u32(50612u, ~arg_0.d ^ var_0.x), max(~(var_0.x | arg_0.d), arg_0.d), ~(~abs(1u))));
    global2 = arg_0.c;
    global1 = array<vec3<f32>, 30>();
    return _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x >> (var_0.x % 32u), arg_0.d, arg_0.d, _wgslsmith_mult_u32(var_0.x, 43736u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(10829u ^ var_0.x, ~arg_0.d, min(var_0.x, arg_0.d), var_0.x), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, arg_0.d, 80487u), vec4<u32>(arg_0.d, 4294967295u, 757u, 11460u))), ~vec4<u32>(firstLeadingBit(arg_0.d), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(19598u, 1u, arg_0.d)), vec3<u32>(17766u, var_0.x, 39530u)), var_0.x ^ _wgslsmith_mult_u32(arg_0.d, 0u), (var_0.x & 29415u) ^ 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 0u), vec4<u32>(6315u, 1u, 35204u, 2596u)), 1u), vec3<u32>(func_6(Struct_3(global2.x, vec4<bool>(true, false, false, false), u_input.a, 57473u, vec2<bool>(false, true)), func_1()), 1u, 47488u)), ~(~countOneBits(vec3<u32>(1u, 1u, 1u))));
    global2 = vec2<i32>(-2147483647i, u_input.a.x);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(global0.d + -1050f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.b.x * 372f))), _wgslsmith_div_f32(-300f, _wgslsmith_f_op_f32(-global0.d))), vec2<f32>(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -699f)), global0.b.x), func_4(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(9243u, 30u)]), vec4<i32>(2147483647i, -2147483647i, u_input.a.x ^ -2147483647i, 910i)).b);
    var var_2 = 4294967295u;
    var_1 = Struct_2(Struct_1(-129f, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(ceil(-492f)), _wgslsmith_f_op_f32(var_1.a.a * var_1.b.d)))), global0.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.c.x * var_1.a.c.x))), 1242f))), var_1.b);
    global2 = -_wgslsmith_mod_vec2_i32(u_input.a, _wgslsmith_div_vec2_i32(u_input.a, select(_wgslsmith_sub_vec2_i32(u_input.a, u_input.a), vec2<i32>(u_input.a.x, 9486i), all(vec4<bool>(true, false, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, _wgslsmith_f_op_f32(2013f - global0.a), _wgslsmith_div_f32(global0.b.x, global0.a), 255f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a, global0.b.x, 1458f, 974f))))), true | func_1().x)), _wgslsmith_div_vec2_f32(func_4(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(~1u, 30u)] + _wgslsmith_f_op_vec3_f32(min(global1[_wgslsmith_index_u32(1u, 30u)], vec3<f32>(global0.c.x, global0.c.x, 996f)))), ~min(vec4<i32>(1i, -1i, 1i, global2.x), vec4<i32>(2147483647i, global2.x, global2.x, 1i))).b.c, var_1.b.b));
}

