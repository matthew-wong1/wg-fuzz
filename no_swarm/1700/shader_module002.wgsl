struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: bool,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(661f, -1767f), vec4<f32>(-1000f, -1186f, -391f, -1123f), true, 32698i, vec4<u32>(14532u, 0u, 46379u, 1u));

var<private> global1: array<i32, 4> = array<i32, 4>(i32(-2147483648), i32(-2147483648), -12310i, 0i);

var<private> global2: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(37141u, 101251u, 0u, 0u), vec4<u32>(4294967295u, 0u, 13651u, 1u), vec4<u32>(6522u, 0u, 4294967295u, 4294967295u), vec4<u32>(1259u, 37671u, 0u, 25949u), vec4<u32>(1u, 0u, 35367u, 7267u), vec4<u32>(35856u, 25860u, 20727u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 5412u, 4294967295u), vec4<u32>(0u, 26182u, 0u, 1u), vec4<u32>(99412u, 0u, 27673u, 0u), vec4<u32>(4294967295u, 35568u, 4294967295u, 1u), vec4<u32>(46146u, 34328u, 73292u, 4294967295u), vec4<u32>(1u, 26351u, 21685u, 20384u), vec4<u32>(965u, 4294967295u, 5346u, 26421u), vec4<u32>(4251u, 0u, 52113u, 4294967295u), vec4<u32>(1u, 43276u, 89409u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 22377u), vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec4<u32>(0u, 42198u, 36914u, 50324u), vec4<u32>(102544u, 1629u, 0u, 0u), vec4<u32>(36844u, 4294967295u, 45834u, 1u), vec4<u32>(30604u, 25827u, 47670u, 1u), vec4<u32>(0u, 1170u, 45496u, 46162u), vec4<u32>(4294967295u, 31966u, 4294967295u, 41351u), vec4<u32>(0u, 4294967295u, 4294967295u, 20992u), vec4<u32>(19139u, 1u, 36975u, 44810u), vec4<u32>(67205u, 6995u, 69778u, 1u), vec4<u32>(1u, 6615u, 34383u, 86921u), vec4<u32>(1u, 4294967295u, 17323u, 0u), vec4<u32>(4294967295u, 4294967295u, 1u, 66757u), vec4<u32>(1u, 0u, 1u, 1u), vec4<u32>(35521u, 65822u, 0u, 1u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.a.x, global0.a.x), vec2<f32>(global0.b.x, global0.a.x))))))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(732f * _wgslsmith_f_op_f32(-global0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(560f, _wgslsmith_div_f32(global0.a.x, -2044f))), 316f, _wgslsmith_f_op_f32(floor(-641f))), true, -31806i, vec4<u32>(_wgslsmith_clamp_u32(~global0.e.x, ~(~global0.e.x), ~1u), 7173u, ~u_input.a.x, 55529u));
    var var_1 = _wgslsmith_f_op_vec2_f32(-var_0.b.xy);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1691f)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))))));
    var var_4 = -13496i;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-982f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-228f, var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b.x, -810f)))))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: i32) -> Struct_1 {
    global2 = array<vec4<u32>, 31>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1168f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(all(vec3<bool>(true, true, true)))) * arg_1);
    global0 = Struct_1(global0.b.zx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(global0.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, -2250f, -116f) * global0.b))))), arg_0, -14810i, vec4<u32>(~(~(~64368u)), abs(global0.e.x), ~27483u, abs(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(0u, 1u)), vec2<u32>(95507u, 4294967295u) & vec2<u32>(global0.e.x, u_input.d)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -684f));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, -515f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(1392f)), _wgslsmith_f_op_f32(max(global0.b.x, global0.a.x)), arg_1, _wgslsmith_f_op_f32(-arg_1)))) + global0.b), global1[_wgslsmith_index_u32(~u_input.a.x, 4u)] < (_wgslsmith_mult_i32(firstTrailingBit(31747i), ~global1[_wgslsmith_index_u32(global0.e.x, 4u)]) & ~1i), firstTrailingBit(arg_2), ~(~reverseBits(vec4<u32>(7973u, u_input.a.x, u_input.a.x, u_input.d))));
    return Struct_1(vec2<f32>(-1003f, _wgslsmith_f_op_f32(func_3(all(select(vec4<bool>(false, var_2.c, global0.c, var_2.c), vec4<bool>(false, var_2.c, arg_0, global0.c), false))))), vec4<f32>(-1237f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.b.x, _wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_f32(min(-147f, arg_1))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, var_2.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + 1583f)))), arg_0, ~_wgslsmith_clamp_i32(abs(~(-1i)), u_input.b, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(18607u, 4u)] << (1u % 32u), min(global0.d, global0.d))), _wgslsmith_mod_vec4_u32(u_input.a, var_2.e));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = -1461f;
    global0 = func_2(arg_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1307f - 1000f) - var_0), reverseBits(46429i));
    global2 = array<vec4<u32>, 31>();
    var var_1 = vec3<u32>(~0u, 0u, ~(41178u << (0u % 32u)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.e.x, _wgslsmith_mod_u32(arg_2, 10777u)), ~(arg_1.e.ww >> (vec2<u32>(arg_0.e.x, 58100u) % vec2<u32>(32u)))) % 32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global0.a)) + vec2<f32>(538f, 272f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, arg_3.b.x))))));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.x + _wgslsmith_div_f32(-238f, arg_0.b.x)) - arg_0.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(-1000f + 1129f), any(vec4<bool>(arg_1.c, false, arg_3.c, false))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-691f, -1970f, 1254f, arg_1.a.x)))))), any(select(vec3<bool>(true, true, true), !vec3<bool>(arg_0.c, arg_1.c, false), !select(vec3<bool>(global0.c, true, global0.c), vec3<bool>(true, arg_0.c, false), vec3<bool>(arg_3.c, arg_3.c, arg_3.c)))), global0.d, vec4<u32>(~_wgslsmith_add_u32(u_input.a.x, global0.e.x), arg_1.e.x, ~arg_3.e.x | firstTrailingBit(0u), u_input.d) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 31939u), arg_3.e) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = false;
    var var_1 = _wgslsmith_div_vec4_u32(u_input.a, global0.e);
    let var_2 = func_4(func_2(_wgslsmith_f_op_f32(f32(-1f) * -488f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-940f, global0.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -511f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global0.a.x)))), -_wgslsmith_dot_vec3_i32(~u_input.c, _wgslsmith_sub_vec3_i32(vec3<i32>(13512i, arg_0.x, u_input.b), vec3<i32>(u_input.b, global0.d, 47241i)))), func_2(true, global0.b.x, arg_0.x), max(107886u ^ var_1.x, ~(~(~var_1.x))), func_2(any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, global0.c), vec2<bool>(true, true)), !vec2<bool>(global0.c, global0.c))), _wgslsmith_f_op_f32(f32(-1f) * -878f), 59213i));
    var_1 = global0.e ^ ~reverseBits(~_wgslsmith_add_vec4_u32(vec4<u32>(global0.e.x, 0u, var_1.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 1u, 81145u)));
    let var_3 = 1677f;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)), vec2<f32>(global0.b.x, -1000f), _wgslsmith_div_f32(-211f, -1221f) <= _wgslsmith_f_op_f32(-var_3)))), _wgslsmith_f_op_vec4_f32(-global0.b), var_2.c, -global1[_wgslsmith_index_u32(firstLeadingBit(3075u) >> (~select(var_2.e.x, 1738u, false) % 32u), 4u)], firstTrailingBit(~min(u_input.a, u_input.a)) ^ ~vec4<u32>(_wgslsmith_mod_u32(1u, var_1.x), abs(var_2.e.x), _wgslsmith_div_u32(var_1.x, 1u), 4294967295u));
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = -972f;
    let var_1 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(653f, arg_0.b.x)), -1170f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1140f, 142f, -840f, arg_0.a.x) + vec4<f32>(-2038f, -1744f, global0.a.x, 379f)))), any(vec3<bool>(true, true, true)), 1i, ~select(~vec4<u32>(arg_0.e.x, 0u, 22357u, u_input.d), ~vec4<u32>(u_input.a.x, global0.e.x, arg_0.e.x, 4294967295u), !vec4<bool>(false, true, global0.c, arg_0.c))), Struct_1(arg_0.b.zw, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1906f, -241f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-972f, global0.a.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(970f * global0.b.x))), 205f), true, _wgslsmith_mult_i32(-46436i, _wgslsmith_mod_i32(countOneBits(22542i), max(arg_1, -37527i))), abs(vec4<u32>(global0.e.x, global0.e.x, _wgslsmith_mod_u32(global0.e.x, 9208u), _wgslsmith_dot_vec4_u32(u_input.a, global2[_wgslsmith_index_u32(arg_0.e.x, 31u)])))), _wgslsmith_add_u32(~4294967295u, ~abs(_wgslsmith_mult_u32(arg_0.e.x, 0u))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -606f), _wgslsmith_f_op_f32(step(-799f, global0.b.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 853f) + global0.b.ww)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(269f, -481f), _wgslsmith_f_op_f32(trunc(arg_0.b.x)), global0.b.x, -677f))), arg_0.c, abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(arg_0.e.x, 4u)], arg_1, u_input.c.x), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.d, global0.d, -8485i, 0i), vec4<i32>(2147483647i, 37312i, arg_1, -18371i)))), max(global2[_wgslsmith_index_u32(max(46015u, ~4294967295u), 31u)], arg_0.e)));
    let var_2 = _wgslsmith_f_op_vec2_f32(var_1.a + vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.a.x)), arg_0.a.x))));
    var var_3 = func_2(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true)) - 570f), global1[_wgslsmith_index_u32(1u >> (~min(_wgslsmith_div_u32(18142u, 35878u), var_1.e.x & var_1.e.x) % 32u), 4u)]);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(var_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -840f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), func_4(func_4(Struct_1(global0.a, vec4<f32>(var_1.b.x, var_2.x, var_3.b.x, var_3.b.x), false, -1813i, vec4<u32>(43255u, 0u, global0.e.x, var_1.e.x)), var_1, 1u, Struct_1(vec2<f32>(global0.b.x, var_1.a.x), vec4<f32>(1207f, -628f, global0.a.x, -785f), false, 0i, vec4<u32>(0u, 1u, u_input.d, u_input.a.x))), Struct_1(vec2<f32>(726f, var_3.a.x), arg_0.b, false, 0i, vec4<u32>(u_input.d, u_input.d, 21824u, 0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.e.x, 18219u, 1u), arg_0.e.yzw), func_4(Struct_1(vec2<f32>(arg_0.a.x, -638f), vec4<f32>(-1021f, 1247f, 270f, 810f), arg_0.c, 2147483647i, vec4<u32>(1u, var_3.e.x, 41010u, 90133u)), var_1, 19094u, Struct_1(arg_0.a, var_3.b, false, arg_0.d, vec4<u32>(var_3.e.x, 19459u, 0u, var_1.e.x)))).a.x, global0.a.x)), true, ~(~_wgslsmith_sub_i32(-var_3.d, i32(-1i) * -4993i)), func_2(true, func_1(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -2147483647i, global1[_wgslsmith_index_u32(var_1.e.x, 4u)], arg_0.d), select(vec4<i32>(global1[_wgslsmith_index_u32(0u, 4u)], -1i, 56294i, arg_0.d), vec4<i32>(arg_0.d, arg_0.d, 57680i, -10749i), vec4<bool>(arg_0.c, global0.c, var_1.c, var_1.c)))).a.x, 1i).e);
    return firstLeadingBit(func_4(func_4(arg_0, var_1, 4294967295u, Struct_1(var_2, vec4<f32>(-609f, arg_0.a.x, arg_0.b.x, global0.a.x), var_1.c, arg_0.d, arg_0.e)), var_1, ~arg_0.e.x, func_1(vec4<i32>(0i, -2147483647i, arg_0.d, 0i))).e.x << (arg_0.e.x % 32u)) | ~(~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(_wgslsmith_div_vec4_i32(abs(select(vec4<i32>(-2147483647i, global0.d, 19125i, global1[_wgslsmith_index_u32(0u, 4u)]), vec4<i32>(2147483647i, global0.d, 19963i, global0.d), vec4<bool>(true, true, false, global0.c))), vec4<i32>(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(43506u, 4u)], global0.d), 0i, -global0.d, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0.e.wz, vec2<u32>(global0.e.x, global0.e.x)), 4u)]))), 57531i);
    var_0 = 24524u;
    let var_1 = _wgslsmith_f_op_f32(-global0.a.x);
    var_0 = 4294967295u;
    var var_2 = vec4<u32>(55561u >> (func_1(vec4<i32>(-1i, global1[_wgslsmith_index_u32(4294967295u, 4u)], -34874i, global1[_wgslsmith_index_u32(u_input.d, 4u)])).e.x % 32u), 0u, 95865u, _wgslsmith_div_u32(4294967295u, u_input.d)) | global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(112256u, reverseBits(17398u >> (global0.e.x % 32u))) | 74511u, 31u)];
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global0.a.x + -1000f), _wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec4_i32(vec4<i32>(global0.d, global1[_wgslsmith_index_u32(u_input.d, 4u)], 3902i, global1[_wgslsmith_index_u32(0u, 4u)]), vec4<i32>(0i, 1i, -11901i, -423i))).a.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.b.x)), _wgslsmith_f_op_f32(352f - 169f)))), func_2(global0.c, var_1, 1i).b, global0.c, _wgslsmith_sub_i32(18144i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(u_input.c), abs(u_input.c)), u_input.c)), vec4<u32>(global0.e.x, ~91286u, _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, ~58989u), ~abs(113750u)), func_2(false, -824f, abs(-37560i)).e.x));
    let var_4 = all(vec2<bool>(func_2(true, -695f, abs(_wgslsmith_div_i32(1i, 23449i))).c, global0.c));
    var var_5 = func_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(reverseBits(-vec4<i32>(var_3.d, -37162i, global0.d, global1[_wgslsmith_index_u32(1u, 4u)])), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.d, global0.d, 2147483647i, global0.d) ^ vec4<i32>(global1[_wgslsmith_index_u32(var_3.e.x, 4u)], u_input.e.x, -26970i, var_3.d), vec4<i32>(-3439i, 2147483647i, global1[_wgslsmith_index_u32(global0.e.x, 4u)], global0.d) ^ vec4<i32>(global0.d, 11244i, global1[_wgslsmith_index_u32(4294967295u, 4u)], 20088i), -vec4<i32>(var_3.d, global0.d, global0.d, -2147483647i))), max(_wgslsmith_mod_vec4_i32(~vec4<i32>(var_3.d, u_input.e.x, -2147483647i, global0.d), ~vec4<i32>(-58718i, var_3.d, -2147483647i, global0.d)), -_wgslsmith_mult_vec4_i32(vec4<i32>(global0.d, 33455i, -1i, 228i), vec4<i32>(var_3.d, u_input.b, u_input.b, 84756i))), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.d, -1i, -u_input.b, -457i), vec4<i32>(_wgslsmith_mod_i32(global0.d, 2147483647i), max(-2147483647i, global0.d), var_3.d, _wgslsmith_dot_vec3_i32(vec3<i32>(-188i, u_input.b, global0.d), u_input.c)))));
    var var_6 = func_2(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -197f)), 10855i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_6.b), var_5.a, ~var_5.e.x << (~global0.e.x % 32u));
}

