struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-726f, -11934i, false, vec3<i32>(44587i, 1i, 2147483647i));

var<private> global1: array<u32, 9>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = arg_0.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -958f), -1336f))));
    global0 = arg_0.c.a;
    global0 = Struct_1(var_0.a.a, -57044i, !(!var_0.a.c), _wgslsmith_clamp_vec3_i32(global0.d, select(arg_0.e.d, -vec3<i32>(0i, -1i, 17252i), true), min(vec3<i32>(_wgslsmith_div_i32(-1i, arg_0.a.b.x), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(21450i, arg_0.a.b.x, -40063i, global0.d.x), vec4<i32>(2147483647i, arg_0.a.b.x, 0i, global0.d.x))), select(-var_0.a.d, _wgslsmith_div_vec3_i32(var_0.a.d, vec3<i32>(arg_0.c.b.x, -21763i, -21498i)), vec3<bool>(var_0.a.c, arg_0.a.a.c, false)))));
    let var_2 = select(select(!vec3<bool>(any(vec4<bool>(true, true, false, var_0.a.c)), 18105u >= u_input.a, var_0.a.c), !vec3<bool>(arg_0.e.b < 1i, arg_0.d.x < -497f, !arg_0.e.c), select(false, !all(vec3<bool>(true, false, global0.c)), all(!vec2<bool>(arg_0.e.c, var_0.a.c)))), select(vec3<bool>(true, true, true), select(!(!vec3<bool>(true, global0.c, false)), !vec3<bool>(global0.c, true, global0.c), !global0.c), select(vec3<bool>(any(vec4<bool>(true, global0.c, var_0.a.c, true)), var_0.a.c, arg_0.c.a.c | arg_0.c.a.c), select(vec3<bool>(var_0.a.c, arg_0.a.a.c, true), !vec3<bool>(var_0.a.c, global0.c, arg_0.c.a.c), 26360i <= arg_0.c.a.b), select(any(vec4<bool>(arg_0.e.c, var_0.a.c, true, global0.c)), all(vec2<bool>(true, true)), any(vec3<bool>(true, global0.c, false))))), vec3<bool>(true, all(vec3<bool>(select(false, var_0.a.c, global0.c), true, true)), any(select(vec3<bool>(var_0.a.c, false, false), !vec3<bool>(true, arg_0.c.a.c, global0.c), all(vec2<bool>(global0.c, global0.c))))));
    return global0.b;
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<bool>) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -997f)), -1i, arg_2.x, ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-32408i, 25243i, arg_0), max(vec3<i32>(2147483647i, 0i, global0.b), vec3<i32>(arg_0, -635i, arg_0)), global0.d << (vec3<u32>(u_input.a, 1u, 1u) % vec3<u32>(32u)))), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(~(-67603i), global0.b)), _wgslsmith_add_vec2_i32(global0.d.zy, -(global0.d.yy << (vec2<u32>(77539u, global1[_wgslsmith_index_u32(u_input.a, 9u)]) % vec2<u32>(32u))))));
    let var_1 = Struct_2(var_0.a, global0.d.zx);
    global0 = var_1.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-918f, 507f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a + 367f) * _wgslsmith_f_op_f32(-100f + -540f)) - -739f), _wgslsmith_f_op_f32(-189f + var_0.a.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(742f, var_0.a.a, 134f, var_1.a.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1568f, 2036f, 568f))) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.a, var_0.a.a, var_0.a.a, -949f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1239f, 135f, var_0.a.a, var_1.a.a)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a, global0.a, 1383f, -688f) + vec4<f32>(2102f, var_0.a.a, -313f, global0.a))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-175f, 641f, var_0.a.a, -494f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(562f, 273f, -276f, -982f) - vec4<f32>(global0.a, var_0.a.a, 576f, -1709f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * _wgslsmith_f_op_f32(max(1056f, -713f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.a, -294f)))));
    let var_3 = arg_1;
    return reverseBits(4294967295u);
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: vec2<bool>) -> vec2<f32> {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2.x, 1749f), arg_2.x)), ~global0.b, all(vec3<bool>(arg_3.x, arg_0, true)), firstTrailingBit(max(global0.d, vec3<i32>(global0.b, global0.d.x, global0.d.x)))), global0.d.zy), arg_2.x, Struct_2(Struct_1(410f, _wgslsmith_add_i32(global0.d.x, ~global0.d.x), any(!arg_3), abs(firstLeadingBit(vec3<i32>(global0.b, -65830i, 15155i)))), global0.d.zy), arg_2.zxw, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), -42293i, !(!all(vec4<bool>(true, false, true, global0.c))), (_wgslsmith_mult_vec3_i32(global0.d, vec3<i32>(global0.d.x, global0.d.x, -18562i)) >> ((vec3<u32>(13369u, u_input.a, arg_1.x) & vec3<u32>(11163u, 33201u, 1u)) % vec3<u32>(32u))) << ((~vec3<u32>(arg_1.x, 15129u, 4294967295u) >> (~vec3<u32>(u_input.a, 4294967295u, 2540u) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_1 = reverseBits(_wgslsmith_mod_vec3_u32(select(reverseBits(vec3<u32>(u_input.a, 46469u, 32166u)) ^ (vec3<u32>(arg_1.x, 0u, arg_1.x) << (vec3<u32>(arg_1.x, arg_1.x, 0u) % vec3<u32>(32u))), ~firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 9u)], 9u)], arg_1.x, arg_1.x)), select(true, var_0.a.a.c | false, any(vec3<bool>(false, arg_3.x, true)))), select(vec3<u32>(1u, 33389u ^ u_input.a, 66056u), vec3<u32>(_wgslsmith_clamp_u32(1847u, u_input.a, 1u), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(128519u, 0u), 9u)], _wgslsmith_mult_u32(u_input.a, 0u)), select(select(vec3<bool>(global0.c, arg_3.x, global0.c), vec3<bool>(arg_3.x, true, true), vec3<bool>(var_0.c.a.c, var_0.a.a.c, false)), !vec3<bool>(false, false, global0.c), vec3<bool>(global0.c, arg_3.x, true)))));
    global1 = array<u32, 9>();
    var var_2 = ~(~1u);
    let var_3 = Struct_3(Struct_2(var_0.c.a, -(vec2<i32>(17712i, var_0.a.b.x) & vec2<i32>(var_0.e.d.x, global0.b))), 1000f, Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + global0.a)), _wgslsmith_add_i32(var_0.c.b.x, -var_0.c.b.x), arg_3.x, vec3<i32>(_wgslsmith_dot_vec3_i32(var_0.a.a.d, global0.d), 0i, ~global0.b)), global0.d.yy), vec3<f32>(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * var_0.e.a) - _wgslsmith_f_op_f32(f32(-1f) * -549f)), _wgslsmith_f_op_f32(-arg_2.x)), 532f), var_0.e);
    return var_3.d.yz;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_1 {
    global0 = arg_1.a.a;
    let var_0 = _wgslsmith_f_op_vec2_f32(func_5(arg_1.c.a.c, vec2<u32>(1u, func_4(firstTrailingBit(func_3(Struct_3(Struct_2(arg_1.e, vec2<i32>(1i, 2147483647i)), 740f, Struct_2(Struct_1(805f, -2147483647i, arg_2.x, arg_1.a.a.d), global0.d.xx), vec3<f32>(-1665f, -1029f, arg_1.c.a.a), Struct_1(arg_1.d.x, -2147483647i, arg_2.x, vec3<i32>(arg_1.a.b.x, 22307i, -2147483647i))))), arg_2.xw, !arg_2.yz)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.a)), _wgslsmith_f_op_f32(min(-464f, -848f)), global0.a, 106f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1562f), _wgslsmith_f_op_f32(sign(-1399f)), -395f, -1762f))), select(select(vec4<bool>(arg_1.a.a.c, global0.c, arg_1.a.a.c, true), !vec4<bool>(true, arg_1.e.c, arg_2.x, true), global0.b >= global0.d.x), select(select(vec4<bool>(global0.c, arg_2.x, arg_2.x, true), vec4<bool>(global0.c, global0.c, arg_1.c.a.c, global0.c), true), select(vec4<bool>(global0.c, true, arg_2.x, arg_2.x), arg_2, arg_2), select(arg_2, vec4<bool>(arg_2.x, global0.c, global0.c, global0.c), false)), !any(arg_2)))), arg_2.xx));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_1.e.a)))), _wgslsmith_f_op_f32(max(845f, 1152f))))), _wgslsmith_f_op_f32(-var_0.x));
    global1 = array<u32, 9>();
    var var_2 = -(global0.b & arg_1.a.b.x);
    return arg_1.a.a;
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: bool) -> vec4<i32> {
    var var_0 = global0.b;
    var var_1 = 4294967295u;
    global1 = array<u32, 9>();
    var_1 = 60228u;
    var var_2 = func_2(_wgslsmith_div_f32(1436f, 1804f), Struct_3(Struct_2(func_2(global0.a, Struct_3(Struct_2(Struct_1(global0.a, 24068i, arg_3, global0.d), global0.d.zy), global0.a, Struct_2(arg_1, arg_2.zx), vec3<f32>(-1210f, 1247f, arg_1.a), Struct_1(213f, arg_0.x, false, arg_1.d)), !vec4<bool>(global0.c, global0.c, arg_3, false)), arg_0.zx), -597f, Struct_2(Struct_1(765f, arg_2.x, false, -vec3<i32>(-8862i, -31722i, arg_0.x)), global0.d.zz & ~vec2<i32>(arg_0.x, arg_1.d.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, 375f, -925f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(175f, global0.a, -384f) - vec3<f32>(660f, global0.a, global0.a))))), arg_1), !(!(!vec4<bool>(global0.c, false, global0.c, true))));
    return firstLeadingBit(min(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b, 22042i, arg_1.d.x, -33533i), max(vec4<i32>(global0.b, -16929i, global0.b, arg_1.d.x), vec4<i32>(2147483647i, var_2.b, arg_2.x, -27726i))), -2147483647i, 44720i, _wgslsmith_mod_i32(arg_0.x & 1i, -1i)), ~vec4<i32>(_wgslsmith_sub_i32(2147483647i, arg_2.x), _wgslsmith_mult_i32(global0.d.x, 0i), arg_1.d.x, 0i)));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_3) -> Struct_3 {
    global0 = Struct_1(-252f, -2147483647i, false, global0.d);
    global0 = Struct_1(arg_2.a.a.a, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(global0.b, global0.b, -8415i, -2147483647i), vec4<i32>(global0.b, -2147483647i, 2147483647i, arg_2.c.b.x), vec4<bool>(arg_2.e.c, false, false, false)) ^ (vec4<i32>(2147483647i, global0.d.x, global0.d.x, arg_2.a.b.x) ^ vec4<i32>(arg_2.a.b.x, global0.b, global0.d.x, -66750i)), func_6(firstTrailingBit(arg_2.e.d), func_2(arg_1, arg_2, vec4<bool>(false, true, global0.c, false)), ~vec3<i32>(-41462i, arg_2.a.b.x, global0.b), 12253i <= global0.d.x), func_6(vec3<i32>(global0.d.x, arg_2.c.b.x, -24913i), Struct_1(-283f, 70742i, false, vec3<i32>(global0.d.x, 69173i, arg_2.e.d.x)), abs(global0.d), func_2(1530f, Struct_3(arg_2.c, -1220f, Struct_2(Struct_1(-1380f, arg_2.a.b.x, arg_2.e.c, vec3<i32>(31303i, arg_2.e.b, -2147483647i)), vec2<i32>(arg_2.a.a.d.x, -22338i)), vec3<f32>(-457f, arg_2.e.a, -332f), Struct_1(arg_1, global0.d.x, global0.c, vec3<i32>(arg_2.e.d.x, -2147483647i, arg_2.a.b.x))), vec4<bool>(global0.c, global0.c, global0.c, true)).c)), _wgslsmith_mod_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 42284i, global0.b, arg_2.a.a.d.x), vec4<i32>(arg_2.c.b.x, -44464i, arg_2.c.a.d.x, 33634i)), abs(vec4<i32>(-33784i, arg_2.c.a.b, arg_2.c.a.d.x, arg_2.e.b)), true), min(vec4<i32>(global0.d.x, 1i, 12305i, arg_2.c.a.b), -vec4<i32>(-1i, 1i, global0.d.x, global0.d.x)))), arg_2.a.a.c, vec3<i32>(~reverseBits(_wgslsmith_dot_vec2_i32(global0.d.zy, vec2<i32>(arg_2.c.b.x, global0.d.x))), -firstTrailingBit(arg_2.e.d.x), global0.d.x));
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) + _wgslsmith_f_op_f32(-642f + -784f)), abs(-global0.d.x), all(select(select(vec4<bool>(arg_2.a.a.c, global0.c, false, global0.c), vec4<bool>(true, false, arg_2.a.a.c, arg_2.e.c), true), !vec4<bool>(true, global0.c, true, true), !vec4<bool>(false, false, arg_2.a.a.c, arg_2.c.a.c))), _wgslsmith_add_vec3_i32(func_6(vec3<i32>(0i, arg_2.e.d.x, -2147483647i), Struct_1(arg_2.e.a, 23901i, true, global0.d), vec3<i32>(-2147483647i, arg_2.e.b, global0.d.x), arg_2.c.a.c).zww, abs(global0.d)) | func_6(~global0.d, func_2(-440f, Struct_3(arg_2.c, -957f, Struct_2(arg_2.e, global0.d.zx), vec3<f32>(arg_1, -293f, 1439f), arg_2.a.a), vec4<bool>(global0.c, true, global0.c, global0.c)), func_6(vec3<i32>(28415i, global0.d.x, global0.d.x), arg_2.e, vec3<i32>(arg_2.c.b.x, 2147483647i, arg_2.e.d.x), true).zzz, true).xwy), -func_6(func_2(_wgslsmith_f_op_f32(step(406f, -789f)), arg_2, select(vec4<bool>(false, false, false, true), vec4<bool>(global0.c, global0.c, global0.c, global0.c), vec4<bool>(global0.c, arg_2.c.a.c, global0.c, false))).d, Struct_1(-146f, min(arg_2.c.a.b, global0.b), any(vec4<bool>(arg_2.c.a.c, false, true, true)), -vec3<i32>(24142i, arg_2.c.b.x, global0.d.x)), arg_2.e.d, true).zz);
    var var_1 = Struct_2(func_2(863f, arg_2, vec4<bool>(-1i >= _wgslsmith_clamp_i32(10120i, var_0.a.d.x, var_0.b.x), true, true, select(true, var_0.a.c, global0.a != arg_2.b))), firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.b, -1i), firstLeadingBit(func_6(vec3<i32>(global0.b, arg_2.a.b.x, 0i), arg_2.c.a, vec3<i32>(arg_2.e.b, 2147483647i, 1i), arg_2.a.a.c).yw))));
    var var_2 = countOneBits(select(min(-2147483647i >> (~arg_0.x % 32u), _wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i, -17545i), global0.d.x ^ 23544i)), _wgslsmith_mod_i32(_wgslsmith_div_i32(var_1.a.b, _wgslsmith_sub_i32(46277i, 13554i)), -(~(-1060i))), true));
    return arg_2;
}

fn func_7(arg_0: u32, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    var var_0 = firstLeadingBit(_wgslsmith_sub_i32(~_wgslsmith_clamp_i32(global0.b, 1i, 0i), arg_2.c.b.x)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, 20476u) | abs(vec2<u32>(1u, u_input.a)), abs(vec2<u32>(global1[_wgslsmith_index_u32(~u_input.a, 9u)], countOneBits(u_input.a)))) % 32u);
    global0 = Struct_1(_wgslsmith_f_op_f32(228f * -1000f), ~(func_2(global0.a, arg_2, select(vec4<bool>(arg_2.c.a.c, false, arg_1, arg_2.e.c), vec4<bool>(false, true, true, true), false)).b >> (_wgslsmith_mult_u32(arg_0, ~u_input.a) % 32u)), all(select(!select(vec2<bool>(arg_1, arg_2.e.c), vec2<bool>(false, arg_1), arg_2.c.a.c), vec2<bool>(true, true | arg_1), false)), arg_2.e.d);
    var var_1 = global0.d;
    var var_2 = reverseBits(arg_2.a.a.d);
    var_0 = 1i;
    return arg_2.a.a;
}

fn func_8(arg_0: Struct_2) -> Struct_3 {
    global0 = Struct_1(global0.a, _wgslsmith_mod_i32(global0.b, _wgslsmith_add_i32(abs(-1i), global0.d.x) >> (u_input.a % 32u)), any(vec4<bool>(true, !func_1(vec2<u32>(59154u, global1[_wgslsmith_index_u32(u_input.a, 9u)]), -1253f, Struct_3(arg_0, 247f, arg_0, vec3<f32>(arg_0.a.a, -954f, arg_0.a.a), arg_0.a)).e.c, global0.c, !any(vec4<bool>(false, true, true, true)))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(2147483647i, global0.b), 1i, max(1i, 1i), countOneBits(arg_0.b.x)), firstLeadingBit(vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, 0i))), arg_0.b.x, 0i));
    global1 = array<u32, 9>();
    let var_0 = (vec3<i32>(~global0.d.x | arg_0.b.x, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(global0.d.x, arg_0.a.b, global0.d.x)), ~global0.d), _wgslsmith_dot_vec2_i32(arg_0.b, global0.d.yz)) & select(vec3<i32>(-1i, -22255i, -58540i), _wgslsmith_mod_vec3_i32(global0.d >> (vec3<u32>(92716u, 1u, u_input.a) % vec3<u32>(32u)), arg_0.a.d & vec3<i32>(global0.b, arg_0.b.x, -17578i)), select(select(vec3<bool>(arg_0.a.c, global0.c, arg_0.a.c), vec3<bool>(false, false, arg_0.a.c), false), select(vec3<bool>(global0.c, true, arg_0.a.c), vec3<bool>(global0.c, global0.c, false), global0.c), vec3<bool>(true, true, true)))) ^ vec3<i32>(_wgslsmith_sub_i32(~0i, -14759i) | firstTrailingBit(global0.b), 17727i, ~_wgslsmith_mod_i32(firstTrailingBit(global0.d.x), _wgslsmith_clamp_i32(global0.b, -2147483647i, arg_0.a.d.x)));
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_div_i32(-(~global0.b), -var_0.x), var_0.x);
    global1 = array<u32, 9>();
    return Struct_3(Struct_2(func_2(_wgslsmith_f_op_f32(trunc(arg_0.a.a)), func_1(~vec2<u32>(u_input.a, u_input.a), 1f, func_1(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 9u)], 9u)], 9u)], 0u), arg_0.a.a, Struct_3(arg_0, arg_0.a.a, arg_0, vec3<f32>(265f, arg_0.a.a, global0.a), arg_0.a))), vec4<bool>(arg_0.a.c, false | arg_0.a.c, any(vec4<bool>(global0.c, arg_0.a.c, global0.c, global0.c)), true)), select(~(~vec2<i32>(var_0.x, arg_0.a.b)), func_1(_wgslsmith_mult_vec2_u32(vec2<u32>(14075u, 37965u), vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20874u, 9u)], 9u)])), 1793f, func_1(vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], u_input.a), 1813f, Struct_3(arg_0, global0.a, Struct_2(Struct_1(arg_0.a.a, var_1, false, global0.d), vec2<i32>(var_0.x, var_1)), vec3<f32>(arg_0.a.a, arg_0.a.a, 396f), Struct_1(global0.a, -1i, false, vec3<i32>(30073i, var_1, var_1))))).e.d.xx, global0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 605f)), func_1(~vec2<u32>(~0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16640u, 9u)], 9u)], 9u)] >> (u_input.a % 32u)), global0.a, Struct_3(Struct_2(arg_0.a, ~arg_0.b), -211f, arg_0, vec3<f32>(_wgslsmith_f_op_f32(abs(338f)), 1000f, _wgslsmith_f_op_f32(-604f + -768f)), func_7(min(0u, 4294967295u), true, func_1(vec2<u32>(0u, u_input.a), 1757f, Struct_3(Struct_2(arg_0.a, global0.d.zx), arg_0.a.a, Struct_2(arg_0.a, global0.d.zx), vec3<f32>(-660f, arg_0.a.a, -1641f), Struct_1(arg_0.a.a, global0.b, false, global0.d)))))).a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -278f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a.a)))), 596f, _wgslsmith_f_op_vec2_f32(func_5(arg_0.a.c, ~vec2<u32>(u_input.a, 37387u) << ((vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 9u)], 9u)], u_input.a) >> (vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(37127u, 9u)]) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a, global0.a, arg_0.a.a, global0.a))), select(select(vec2<bool>(true, global0.c), vec2<bool>(true, global0.c), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(global0.c, arg_0.a.c), vec2<bool>(global0.c, arg_0.a.c))))).x), arg_0.a);
}

fn func_9(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32) -> Struct_3 {
    var var_0 = Struct_2(func_2(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-1099f * -1870f)), Struct_3(Struct_2(arg_0.a, vec2<i32>(4222i, arg_1.c.a.b)), -1332f, func_8(func_8(Struct_2(Struct_1(310f, arg_0.b.x, true, arg_1.e.d), arg_1.c.b)).a).c, vec3<f32>(-682f, 727f, _wgslsmith_f_op_f32(arg_1.d.x * -975f)), arg_0.a), !(!select(vec4<bool>(false, true, global0.c, false), vec4<bool>(true, true, arg_1.e.c, global0.c), vec4<bool>(true, arg_0.a.c, arg_1.e.c, false)))), ~vec2<i32>(global0.b, ~(-52103i) & reverseBits(global0.d.x)));
    var var_1 = func_8(func_1(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(80349u, u_input.a, u_input.a), ~vec3<u32>(23724u, global1[_wgslsmith_index_u32(48594u, 9u)], u_input.a)), 65387u), arg_0.a.a, func_1(vec2<u32>(countOneBits(0u), 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - 200f) - _wgslsmith_div_f32(-578f, -1566f)), Struct_3(func_1(vec2<u32>(u_input.a, 0u), 1504f, Struct_3(arg_0, arg_1.b, arg_1.a, vec3<f32>(1410f, arg_0.a.a, arg_2), arg_0.a)).c, arg_2, func_8(Struct_2(var_0.a, var_0.b)).c, _wgslsmith_f_op_vec3_f32(-arg_1.d), arg_1.c.a))).a).c;
    let var_2 = ~((countOneBits(~vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32888u, 9u)], 9u)], 9u)], 4294967295u)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 0u), firstLeadingBit(vec3<u32>(28526u, u_input.a, 0u)))) ^ min(vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(15786u, 9u)], u_input.a), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(4294967295u, 4294967295u, 1u)), ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 9u)], 9u)], 0u, u_input.a))));
    global0 = var_1.a;
    let var_3 = (~countOneBits(4294967295u << (global1[_wgslsmith_index_u32(4294967295u, 9u)] % 32u)) != ~(~(~var_2.x))) | any(select(select(vec4<bool>(false, arg_0.a.c, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, arg_1.c.a.c), vec4<bool>(arg_1.c.a.c, true, arg_0.a.c, false)), !vec4<bool>(var_1.a.c, arg_1.a.a.c, false, var_1.a.c)), select(vec4<bool>(var_0.a.c, var_0.a.c, global0.c, true), !vec4<bool>(true, global0.c, arg_1.c.a.c, true), select(vec4<bool>(true, var_0.a.c, arg_1.a.a.c, arg_0.a.c), vec4<bool>(var_1.a.c, global0.c, global0.c, arg_1.c.a.c), vec4<bool>(arg_1.a.a.c, arg_1.e.c, false, false))), false));
    return Struct_3(Struct_2(func_1(vec2<u32>(_wgslsmith_mod_u32(36173u, global1[_wgslsmith_index_u32(u_input.a, 9u)]), 51113u), _wgslsmith_f_op_f32(f32(-1f) * -998f), arg_1).e, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.a.d.x, global0.d.x, arg_0.b.x, var_1.a.b) >> (vec4<u32>(30477u, 34254u, 55076u, var_2.x) % vec4<u32>(32u)), -vec4<i32>(1i, -1i, var_0.a.d.x, var_0.a.d.x)), -1i)), _wgslsmith_f_op_f32(floor(-134f)), Struct_2(func_2(arg_1.d.x, Struct_3(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -609f), arg_1.a, vec3<f32>(-438f, var_1.a.a, -345f), func_8(arg_0).a.a), !(!vec4<bool>(true, false, var_3, var_3))), var_1.b), _wgslsmith_f_op_vec3_f32(arg_1.d * _wgslsmith_f_op_vec3_f32(func_8(arg_1.a).d + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.a, -704f, var_1.a.a)))))), Struct_1(func_1(var_2.yy, arg_1.d.x, Struct_3(arg_0, 1680f, arg_0, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1203f, global0.a, arg_1.d.x))), var_0.a)).d.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(min(var_0.a.d.x, -2147483647i), var_1.b.x), -89032i), true, -vec3<i32>(var_0.b.x, _wgslsmith_mod_i32(global0.d.x, var_1.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.b, arg_0.b.x, var_0.a.b, global0.b), vec4<i32>(arg_1.c.a.d.x, 21190i, -9843i, var_0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_9(Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global0.a)))), global0.d.x ^ countOneBits(15192i), true, vec3<i32>(-1i, abs(global0.b), 5751i)), (reverseBits(global0.d.zy) ^ vec2<i32>(2147483647i, -71930i)) >> (((vec2<u32>(global1[_wgslsmith_index_u32(41107u, 9u)], global1[_wgslsmith_index_u32(4502u, 9u)]) >> (vec2<u32>(0u, global1[_wgslsmith_index_u32(83740u, 9u)]) % vec2<u32>(32u))) ^ ~vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u))), func_8(Struct_2(func_7(0u, global0.c, func_1(vec2<u32>(67007u, 0u), global0.a, Struct_3(Struct_2(Struct_1(global0.a, -8672i, global0.c, global0.d), vec2<i32>(global0.d.x, global0.d.x)), 320f, Struct_2(Struct_1(452f, global0.d.x, false, global0.d), vec2<i32>(-41186i, global0.d.x)), vec3<f32>(global0.a, 1110f, global0.a), Struct_1(2869f, global0.d.x, true, global0.d)))), global0.d.yx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) * global0.a) - global0.a));
    let var_1 = func_8(func_9(var_0.a, Struct_3(func_9(func_1(vec2<u32>(global1[_wgslsmith_index_u32(1u, 9u)], 38626u), global0.a, Struct_3(Struct_2(Struct_1(393f, 5502i, false, vec3<i32>(1i, 0i, -69572i)), vec2<i32>(11424i, var_0.a.a.b)), global0.a, var_0.a, vec3<f32>(global0.a, -784f, var_0.a.a.a), Struct_1(var_0.b, -27562i, true, global0.d))).c, Struct_3(var_0.c, 566f, Struct_2(Struct_1(-1485f, global0.b, true, vec3<i32>(-18081i, global0.b, var_0.a.a.d.x)), vec2<i32>(var_0.c.b.x, 2147483647i)), var_0.d, Struct_1(-763f, global0.d.x, false, var_0.e.d)), _wgslsmith_f_op_f32(global0.a + global0.a)).c, var_0.b, var_0.c, _wgslsmith_div_vec3_f32(vec3<f32>(global0.a, 129f, global0.a), vec3<f32>(global0.a, 1506f, var_0.b)), var_0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -384f), _wgslsmith_f_op_f32(f32(-1f) * -1059f), !var_0.a.a.c)))).c).c;
    var_0 = func_9(Struct_2(func_7(~(12482u << (global1[_wgslsmith_index_u32(50570u, 9u)] % 32u)), !(global0.c | var_0.c.a.c), func_9(func_8(Struct_2(var_0.c.a, vec2<i32>(0i, var_1.b.x))).c, func_9(var_1, Struct_3(var_1, var_1.a.a, var_0.a, var_0.d, Struct_1(global0.a, var_0.a.a.b, true, var_0.e.d)), -1605f), _wgslsmith_f_op_f32(var_0.d.x + 586f))), vec2<i32>(~1i, 0i)), Struct_3(Struct_2(var_1.a, func_7(~0u, var_0.e.c | global0.c, Struct_3(var_0.a, global0.a, var_0.c, var_0.d, Struct_1(846f, 1i, true, var_0.c.a.d))).d.yz), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.e.a - _wgslsmith_f_op_f32(-var_1.a.a)))), func_1(vec2<u32>(5980u, ~global1[_wgslsmith_index_u32(46857u, 9u)]), -391f, func_9(Struct_2(var_1.a, vec2<i32>(global0.b, var_1.a.b)), func_9(var_1, Struct_3(var_1, 284f, var_0.a, var_0.d, Struct_1(global0.a, var_0.e.b, true, global0.d)), 460f), _wgslsmith_f_op_f32(-var_0.b))).a, var_0.d, var_0.e), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(233f, var_1.a.a)))) * _wgslsmith_f_op_f32(func_1(vec2<u32>(8016u, 80980u), 1671f, Struct_3(Struct_2(var_0.a.a, global0.d.xx), var_0.a.a.a, Struct_2(Struct_1(var_1.a.a, 0i, true, vec3<i32>(1i, var_0.e.d.x, 60290i)), global0.d.xz), vec3<f32>(var_0.c.a.a, -1067f, -1336f), var_0.e)).a.a.a + 721f)), var_0.b)));
    let var_2 = func_1(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(u_input.a, 9u)]), 9u)], 9u)] & 1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], 37243u, global1[_wgslsmith_index_u32(4294967295u, 9u)], 1u), vec4<u32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31808u, 9u)], 9u)], 0u)) & ~global1[_wgslsmith_index_u32(~106965u, 9u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-367f - 242f)), Struct_3(Struct_2(func_7(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 9u)], !global0.c, func_9(var_0.c, Struct_3(var_0.c, var_0.b, Struct_2(Struct_1(-1000f, -2147483647i, var_1.a.c, vec3<i32>(var_1.b.x, -13460i, global0.b)), vec2<i32>(-1i, var_1.b.x)), var_0.d, Struct_1(-150f, -14674i, var_1.a.c, var_0.e.d)), global0.a)), vec2<i32>(1i, ~global0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a, -1000f)) * _wgslsmith_f_op_f32(-var_0.d.x)) * _wgslsmith_div_f32(func_7(0u, true, Struct_3(var_1, global0.a, Struct_2(var_1.a, vec2<i32>(global0.d.x, var_0.e.d.x)), vec3<f32>(var_1.a.a, global0.a, var_1.a.a), Struct_1(433f, global0.d.x, var_0.c.a.c, global0.d))).a, _wgslsmith_f_op_f32(round(var_1.a.a)))), func_8(Struct_2(Struct_1(-1000f, 1i, false, vec3<i32>(global0.b, global0.d.x, 17843i)), vec2<i32>(global0.b, var_0.a.b.x))).a, vec3<f32>(-591f, 1491f, 1228f), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1816f, -422f)))), global0.b, var_0.e.c, vec3<i32>(global0.d.x, ~2147483647i, _wgslsmith_clamp_i32(19992i, 21464i, var_0.e.b))))).b;
    let var_3 = vec2<bool>(true, var_0.e.c);
    let var_4 = _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.d.x, ~(var_1.a.b ^ var_0.c.a.b), _wgslsmith_div_i32(func_7(u_input.a, true, Struct_3(var_1, -426f, Struct_2(var_0.c.a, global0.d.xz), var_0.d, Struct_1(global0.a, -16382i, false, var_1.a.d))).d.x, 0i), global0.b), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.d.x, -14520i >> (global1[_wgslsmith_index_u32(u_input.a, 9u)] % 32u), -var_1.b.x, 1i), vec4<i32>(57351i, var_1.a.b, var_1.a.b, func_7(70039u, false, Struct_3(var_1, var_1.a.a, Struct_2(Struct_1(-1025f, -1i, true, var_0.e.d), vec2<i32>(-48418i, -1i)), var_0.d, Struct_1(global0.a, 2147483647i, false, vec3<i32>(var_1.a.b, 0i, var_1.a.b)))).b))), ~reverseBits(-(~vec4<i32>(-21195i, 19462i, -3411i, var_0.e.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~((vec2<u32>(39478u, 22292u) ^ vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(0u, 9u)])) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(48982u, 9u)], 4294967295u), vec2<u32>(u_input.a, 1u), vec2<u32>(29108u, global1[_wgslsmith_index_u32(0u, 9u)])) % vec2<u32>(32u)))), 921f, -(~(-(var_1.a.d ^ var_0.a.a.d))), vec4<f32>(func_1(_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(11778u, 0u)), -230f, Struct_3(Struct_2(Struct_1(353f, 2147483647i, false, var_4.zxw), vec2<i32>(1i, var_4.x)), -569f, func_8(Struct_2(var_0.a.a, vec2<i32>(1i, var_4.x))).c, var_0.d, Struct_1(global0.a, var_0.a.a.d.x, true, vec3<i32>(var_1.a.d.x, global0.d.x, var_0.a.a.b)))).c.a.a, -1000f, 497f, -1087f));
}

