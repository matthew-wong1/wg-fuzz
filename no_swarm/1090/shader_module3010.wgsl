struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32 = 18850i;

var<private> global2: array<vec3<f32>, 29>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: vec3<i32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -122f))))) * 1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(-536f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-208f, _wgslsmith_f_op_f32(floor(1100f))))));
    let var_0 = Struct_3(select(vec4<u32>(1u, 33641u, 4294967295u, arg_0), abs(vec4<u32>(arg_0, arg_0, arg_0, u_input.a.x) ^ ~u_input.b), !(1i < arg_1.x)), true, arg_3, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(round(986f)), _wgslsmith_f_op_f32(trunc(1582f)), _wgslsmith_f_op_f32(trunc(-178f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(316f, -273f, -669f))))))), Struct_2(Struct_1(firstLeadingBit(u_input.b.wzz) << (countOneBits(vec3<u32>(u_input.a.x, arg_0, u_input.b.x)) % vec3<u32>(32u)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)))), -175f));
    global1 = -1i;
    let var_1 = var_0.e;
    var var_2 = select(!vec3<bool>(select(false, var_0.b, all(vec4<bool>(true, false, var_1.a.b.x, true))), all(select(vec3<bool>(var_0.e.a.b.x, false, false), vec3<bool>(var_1.a.b.x, true, var_0.b), vec3<bool>(var_0.e.a.b.x, true, var_0.e.a.b.x))), true), vec3<bool>(false, var_0.e.a.b.x, arg_3.x >= abs(u_input.c.x)), vec3<bool>(_wgslsmith_add_u32(arg_0, 9387u) != _wgslsmith_sub_u32(arg_0 >> (1u % 32u), abs(var_0.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.a.x, u_input.b.x) ^ vec2<u32>(4294967295u, arg_0), var_1.a.a.yy) < min(~81361u, u_input.a.x), true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-688f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(trunc(var_1.b))))));
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = ~firstLeadingBit(11369u ^ (countOneBits(4294967295u) << (~arg_0.a.a.x % 32u)));
    let var_1 = Struct_3(u_input.b & u_input.b, all(arg_0.a.b), -_wgslsmith_div_vec3_i32(-firstTrailingBit(vec3<i32>(1i, u_input.c.x, u_input.c.x)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.c.x, u_input.c.x) & vec3<i32>(0i, -66237i, u_input.c.x), min(vec3<i32>(-11615i, 29871i, 2147483647i), vec3<i32>(u_input.c.x, u_input.c.x, 9703i)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global2[_wgslsmith_index_u32(arg_0.a.a.x, 29u)])) + global2[_wgslsmith_index_u32(abs(4294967295u), 29u)]) - vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(trunc(arg_0.b)), _wgslsmith_f_op_f32(func_3(u_input.b.x, vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, 2147483647i), vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(516f, arg_0.b, arg_0.b)))), arg_0);
    var var_2 = 4294967295u;
    let var_3 = _wgslsmith_f_op_f32(-var_1.d.x);
    let var_4 = _wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-21425i, _wgslsmith_dot_vec3_i32(var_1.c, var_1.c), _wgslsmith_sub_i32(1i, u_input.c.x), u_input.c.x), ~(~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), var_1.c.x | ~min(~var_1.c.x, u_input.c.x));
    return var_3;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: i32) -> vec4<bool> {
    global1 = 6697i;
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.d.x, 1475f, -1575f), global2[_wgslsmith_index_u32(4294967295u, 29u)], arg_1.x)), _wgslsmith_f_op_vec3_f32(-arg_2.d)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1454f, -1000f, 1650f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-279f, arg_2.d.x, arg_2.e.b)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.d), _wgslsmith_f_op_vec3_f32(arg_2.d * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-676f, 540f, arg_2.d.x)))))));
    let var_1 = arg_2.e.a;
    global1 = u_input.c.x;
    let var_2 = vec3<u32>(~arg_0.x, var_1.a.x & 1u, arg_0.x ^ (~arg_2.a.x & _wgslsmith_clamp_u32(u_input.a.x, ~arg_2.e.a.a.x, arg_0.x)));
    return select(!(!(!(!vec4<bool>(false, arg_1.x, var_1.b.x, true)))), !(!(!(!vec4<bool>(false, true, arg_1.x, arg_1.x)))), vec4<bool>(all(!(!arg_2.e.a.b)), _wgslsmith_mult_i32(0i, ~13427i) != arg_3, any(select(vec3<bool>(true, arg_2.b, arg_2.e.a.b.x), !vec3<bool>(false, arg_2.e.a.b.x, true), vec3<bool>(false, false, arg_1.x))), true));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = !(!arg_0);
    var var_1 = Struct_2(Struct_1(reverseBits(~vec3<u32>(9071u, u_input.a.x, 1u)), var_0.yw), _wgslsmith_f_op_f32(360f - -210f));
    global0 = _wgslsmith_f_op_f32(func_3(~(~(~var_1.a.a.x)), vec4<i32>(-2147483647i, _wgslsmith_clamp_i32(abs(2147483647i), i32(-1i) * -23166i, firstLeadingBit(arg_1.x)), 1i, _wgslsmith_dot_vec3_i32(arg_1.zwz, arg_1.yzx) ^ _wgslsmith_mult_i32(-1i, 1i)) << (u_input.b % vec4<u32>(32u)), max(vec4<i32>(u_input.c.x, -u_input.c.x, 13392i, ~(-1286i)), arg_1), vec3<i32>(~0i, -48588i, ~_wgslsmith_mod_i32(76404i, _wgslsmith_mult_i32(arg_1.x, 17639i)))));
    var_1 = Struct_2(var_1.a, 376f);
    var var_2 = Struct_3(vec4<u32>(reverseBits(61430u), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.a.a.x, var_1.a.a.x), ~vec3<u32>(u_input.b.x, 1u, u_input.b.x) >> (select(vec3<u32>(12921u, 1u, 0u), vec3<u32>(100554u, 9511u, 34233u), var_0.yxw) % vec3<u32>(32u))), 1u), true, vec3<i32>(u_input.c.x, ~(-u_input.c.x) ^ arg_1.x, -u_input.c.x), global2[_wgslsmith_index_u32(~5750u, 29u)], Struct_2(var_1.a, -1048f));
    return Struct_2(var_1.a, _wgslsmith_f_op_f32(-1659f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    var var_0 = func_5(func_4(vec2<u32>(max(1u, reverseBits(1u)), abs(_wgslsmith_mult_u32(arg_2.a.x, 55085u))), vec2<bool>(!(arg_2.b.x | false), false), Struct_3(vec4<u32>(arg_0, ~1u, u_input.b.x ^ 0u, u_input.a.x), !(!arg_2.b.x), abs(-vec3<i32>(26674i, u_input.c.x, u_input.c.x)), vec3<f32>(_wgslsmith_f_op_f32(step(-482f, -1335f)), _wgslsmith_f_op_f32(func_2(Struct_2(arg_2, arg_1))), 1000f), Struct_2(arg_2, _wgslsmith_f_op_f32(trunc(-485f)))), 19460i), -(~vec4<i32>(firstTrailingBit(u_input.c.x), max(-14144i, 17342i), _wgslsmith_dot_vec2_i32(vec2<i32>(-28867i, 0i), u_input.c), 1i)));
    var var_1 = select(~(u_input.b.xzz >> ((~u_input.b.zzy & vec3<u32>(0u, 4294967295u, 25740u)) % vec3<u32>(32u))), abs(vec3<u32>(29429u, _wgslsmith_mod_u32(reverseBits(var_0.a.a.x), _wgslsmith_mult_u32(60896u, 25487u)), _wgslsmith_mod_u32(max(arg_0, 50672u), _wgslsmith_mod_u32(u_input.b.x, arg_2.a.x)))), !select(!vec3<bool>(arg_2.b.x, false, arg_2.b.x), !vec3<bool>(arg_2.b.x, var_0.a.b.x, true), select(vec3<bool>(true, true, arg_2.b.x), vec3<bool>(true, arg_2.b.x, arg_2.b.x), vec3<bool>(true, var_0.a.b.x, arg_2.b.x))));
    var var_2 = Struct_3(_wgslsmith_clamp_vec4_u32(countOneBits(~u_input.b) | u_input.b, vec4<u32>(10392u, firstLeadingBit(_wgslsmith_clamp_u32(arg_0, var_1.x, u_input.a.x)), max(1u, firstLeadingBit(var_0.a.a.x)), 4294967295u), vec4<u32>(~(~0u), 1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, arg_0, arg_0, u_input.a.x), ~vec4<u32>(var_1.x, 4294967295u, 0u, arg_2.a.x)), arg_2.a.x)), var_0.a.b.x, -vec3<i32>(-u_input.c.x, min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -44660i, -2147483647i), vec3<i32>(2147483647i, u_input.c.x, u_input.c.x)), 21379i), -28339i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_3, arg_1, arg_1))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b, 1151f, var_0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-741f, 1803f, 885f)))), global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_1.x, 4294967295u), 29u)], var_0.a.b.x))), Struct_2(Struct_1(arg_2.a, vec2<bool>(true, true)), 475f));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(func_5(select(vec4<bool>(var_0.a.b.x, true, true, var_0.a.b.x), vec4<bool>(arg_2.b.x, arg_2.b.x, false, false), false), vec4<i32>(u_input.c.x, u_input.c.x, 1037i, u_input.c.x) >> (vec4<u32>(arg_0, var_1.x, var_0.a.a.x, 0u) % vec4<u32>(32u))).b, _wgslsmith_f_op_f32(1823f + _wgslsmith_f_op_f32(arg_3 * arg_1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(func_5(vec4<bool>(arg_2.b.x, var_0.a.b.x, var_0.a.b.x, arg_2.b.x), vec4<i32>(23540i, -2147483647i, 96897i, -2147483647i))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3))))), _wgslsmith_f_op_f32(arg_3 - -780f));
    let var_4 = _wgslsmith_f_op_f32(var_3.x - -752f);
    return func_5(func_4(~vec2<u32>(1u, abs(4294967295u)), arg_2.b, Struct_3(_wgslsmith_mult_vec4_u32(u_input.b >> (u_input.b % vec4<u32>(32u)), var_2.a), true, _wgslsmith_mult_vec3_i32(min(var_2.c, vec3<i32>(u_input.c.x, -10732i, 1i)), -vec3<i32>(var_2.c.x, var_2.c.x, u_input.c.x)), var_3.xyz, var_2.e), i32(-1i) * -var_2.c.x), _wgslsmith_div_vec4_i32(~vec4<i32>(~56828i, -1i, 0i, u_input.c.x), vec4<i32>(_wgslsmith_clamp_i32(var_2.c.x, var_2.c.x, -2147483647i) ^ var_2.c.x, 2147483647i, 42877i, u_input.c.x)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32, arg_3: vec4<f32>) -> vec4<u32> {
    let var_0 = true;
    global1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-31783i, abs(firstLeadingBit(countOneBits(arg_2)))), arg_1.c.zy);
    let var_1 = _wgslsmith_clamp_vec2_u32(min(vec2<u32>(_wgslsmith_clamp_u32(arg_1.a.x, ~arg_1.a.x, ~u_input.b.x), reverseBits(4294967295u)), arg_1.e.a.a.zx), vec2<u32>(firstTrailingBit(arg_1.e.a.a.x), _wgslsmith_mod_u32(~abs(arg_1.a.x), arg_0.a.a.x)), _wgslsmith_mult_vec2_u32(u_input.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.x, arg_0.a.a.x), vec2<u32>(arg_0.a.a.x, arg_1.e.a.a.x))), vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, arg_0.a.a.x), 44528u), select(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.a.x, 1u), u_input.a), arg_1.e.a.a.xx, var_0))));
    var var_2 = func_1(min(23709u, 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-619f - -375f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(795f, arg_3.x) * -349f))), func_1(countOneBits(func_5(vec4<bool>(arg_1.e.a.b.x, var_0, var_0, arg_1.b), vec4<i32>(arg_1.c.x, 0i, 20666i, u_input.c.x) & vec4<i32>(arg_1.c.x, -2147483647i, u_input.c.x, -22601i)).a.a.x), _wgslsmith_f_op_f32(floor(-574f)), Struct_1(~vec3<u32>(var_1.x, arg_0.a.a.x, var_1.x), func_1(u_input.a.x ^ arg_1.a.x, _wgslsmith_f_op_f32(-arg_3.x), arg_1.e.a, _wgslsmith_f_op_f32(func_2(arg_1.e))).a.b), _wgslsmith_f_op_f32(func_3(12060u, vec4<i32>(~28741i, 2147483647i, select(15597i, arg_2, false), abs(-69394i)), ~vec4<i32>(u_input.c.x, arg_2, arg_2, arg_1.c.x), firstTrailingBit(arg_1.c << (vec3<u32>(var_1.x, 4668u, 15096u) % vec3<u32>(32u)))))).a, -103f);
    var var_3 = Struct_1(vec3<u32>(firstLeadingBit(var_1.x), var_1.x, ~(u_input.b.x & ~4294967295u)), vec2<bool>(arg_0.a.b.x, -29297i >= _wgslsmith_add_i32(~89913i, -arg_1.c.x)));
    return vec4<u32>(arg_0.a.a.x, 1u, ~(~(max(arg_0.a.a.x, 50236u) | select(arg_1.a.x, arg_1.a.x, true))), ~(~arg_1.a.x >> (~arg_0.a.a.x % 32u)) << (var_1.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_add_vec4_u32(func_6(func_1(~u_input.a.x, _wgslsmith_div_f32(-108f, -520f), Struct_1(u_input.b.yyz, vec2<bool>(true, true)), _wgslsmith_f_op_f32(select(522f, -755f, true))), Struct_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(55856u, u_input.a.x, u_input.b.x, 13602u), vec4<u32>(26126u, u_input.b.x, 18497u, u_input.a.x), vec4<u32>(u_input.b.x, 17250u, u_input.a.x, u_input.a.x)), false, -vec3<i32>(-2147483647i, 2147483647i, 37497i), _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(4294967295u, 29u)]), func_1(1u, 457f, Struct_1(u_input.b.xxw, vec2<bool>(false, true)), -636f)), u_input.c.x, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1211f), _wgslsmith_f_op_f32(f32(-1f) * -358f), _wgslsmith_f_op_f32(step(459f, -580f)), _wgslsmith_f_op_f32(f32(-1f) * -280f))), _wgslsmith_mult_vec4_u32(countOneBits(func_6(Struct_2(Struct_1(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), vec2<bool>(true, true)), 873f), Struct_3(u_input.b, false, vec3<i32>(u_input.c.x, 0i, 33010i), global2[_wgslsmith_index_u32(u_input.a.x, 29u)], Struct_2(Struct_1(vec3<u32>(6262u, u_input.b.x, 15736u), vec2<bool>(true, false)), -795f)), -34951i, vec4<f32>(1053f, -267f, 671f, -754f))), vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, _wgslsmith_sub_u32(4294967295u, 11590u)))), true, ~vec3<i32>((-12469i << (u_input.a.x % 32u)) << (func_5(vec4<bool>(true, true, false, false), vec4<i32>(-30260i, u_input.c.x, u_input.c.x, u_input.c.x)).a.a.x % 32u), u_input.c.x, -32718i), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(func_1(u_input.b.x, -1000f, Struct_1(u_input.b.zxy, vec2<bool>(true, false)), 211f)))), _wgslsmith_f_op_f32(func_3(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.b.x, u_input.b.x)), vec4<i32>(-1i) * -vec4<i32>(-9656i, 2147483647i, -7030i, u_input.c.x), min(abs(vec4<i32>(u_input.c.x, 1i, 23480i, u_input.c.x)), vec4<i32>(-1i, 21548i, 1i, u_input.c.x)), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(u_input.c.x, 18967i, u_input.c.x)), reverseBits(vec3<i32>(0i, u_input.c.x, u_input.c.x)))))), func_1(countOneBits(firstLeadingBit(u_input.a.x)), _wgslsmith_f_op_f32(round(844f)), func_1(countOneBits(countOneBits(u_input.b.x)), 1000f, func_1(4294967295u ^ u_input.b.x, _wgslsmith_f_op_f32(floor(-1211f)), Struct_1(u_input.b.xzw, vec2<bool>(true, true)), 3119f).a, _wgslsmith_f_op_f32(func_5(vec4<bool>(true, false, false, true), vec4<i32>(-1i, 0i, 22470i, u_input.c.x)).b + _wgslsmith_div_f32(-267f, 210f))).a, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(388f + 307f), 1000f)))));
    let var_1 = Struct_3(select(vec4<u32>(~var_0.e.a.a.x, 4294967295u, u_input.a.x >> (9201u % 32u), u_input.b.x), vec4<u32>(firstTrailingBit(4294967295u) << (~u_input.b.x % 32u), 0u, u_input.b.x, var_0.a.x), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -9443i), var_0.c), _wgslsmith_add_vec3_i32(var_0.c, vec3<i32>(-28107i, var_0.c.x, -6026i))) == -1i), (_wgslsmith_sub_u32(u_input.b.x, firstLeadingBit(u_input.a.x)) >> (_wgslsmith_add_u32(_wgslsmith_clamp_u32(85211u, 1u, u_input.a.x), var_0.e.a.a.x) % 32u)) > _wgslsmith_add_u32(_wgslsmith_div_u32(func_1(88441u, -300f, Struct_1(u_input.b.zyy, vec2<bool>(var_0.b, var_0.b)), var_0.d.x).a.a.x, u_input.b.x), _wgslsmith_div_u32(~22221u, _wgslsmith_div_u32(var_0.e.a.a.x, var_0.e.a.a.x))), var_0.c, vec3<f32>(_wgslsmith_f_op_f32(-1413f - _wgslsmith_div_f32(-742f, -1096f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(vec4<bool>(var_0.e.a.b.x, var_0.b, true, var_0.b), vec4<i32>(-2147483647i, 2374i, u_input.c.x, -6191i)).b * _wgslsmith_f_op_f32(-1577f - var_0.e.b)) + -1529f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-947f + var_0.d.x), _wgslsmith_f_op_f32(ceil(-130f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.x, var_0.e.b) * func_5(vec4<bool>(var_0.e.a.b.x, false, var_0.e.a.b.x, var_0.e.a.b.x), vec4<i32>(u_input.c.x, var_0.c.x, -1i, 0i)).b))), Struct_2(func_5(select(select(vec4<bool>(var_0.b, false, var_0.e.a.b.x, var_0.b), vec4<bool>(true, false, var_0.b, var_0.b), vec4<bool>(var_0.e.a.b.x, var_0.e.a.b.x, true, true)), !vec4<bool>(true, true, true, var_0.b), false), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.c.x, 0i, 1i), vec4<i32>(23021i, 1i, u_input.c.x, 2147483647i)) & (vec4<i32>(-25014i, var_0.c.x, u_input.c.x, u_input.c.x) << (vec4<u32>(var_0.e.a.a.x, 49127u, 43926u, 13109u) % vec4<u32>(32u)))).a, var_0.e.b));
    global0 = _wgslsmith_f_op_f32(abs(var_1.e.b));
    var var_2 = true;
    var_2 = true;
    var var_3 = true;
    var var_4 = u_input.b.x;
    let var_5 = min(99881u, _wgslsmith_sub_u32(max(1u, ~var_1.a.x), 60471u) >> (reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 54757u, 1u), var_1.a)) % 32u));
    var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_div_u32(firstTrailingBit(var_0.e.a.a.x), var_5 << (0u % 32u)), _wgslsmith_clamp_u32(4294967295u, ~(~47134u), 10723u)), vec3<i32>(-1i, max(max(~2147483647i, var_1.c.x), -2147483647i), min(_wgslsmith_add_i32(~var_1.c.x, _wgslsmith_dot_vec3_i32(var_1.c, vec3<i32>(var_1.c.x, var_1.c.x, -2147483647i))), reverseBits(0i))), vec4<u32>(~(~4294967295u), 19985u, func_1(~1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -536f) - -632f), func_5(func_4(vec2<u32>(var_5, 34537u), var_1.e.a.b, var_1, -2147483647i), vec4<i32>(-2147483647i, u_input.c.x, var_0.c.x, var_1.c.x)).a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.e.b + 1000f)))).a.a.x, var_0.a.x << (1u % 32u)), ~_wgslsmith_div_u32(1u, ~var_5));
}

