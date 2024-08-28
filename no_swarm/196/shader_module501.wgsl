struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<u32>;

var<private> global2: array<u32, 5> = array<u32, 5>(1u, 4294967295u, 4510u, 0u, 27711u);

var<private> global3: Struct_3 = Struct_3(vec3<bool>(false, true, false), Struct_1(vec2<u32>(18598u, 0u), vec4<bool>(false, true, false, false), vec2<bool>(false, false), 57875u, vec2<u32>(0u, 1u)), vec2<f32>(1000f, 841f), Struct_1(vec2<u32>(1u, 117736u), vec4<bool>(true, true, true, true), vec2<bool>(true, false), 8284u, vec2<u32>(4294967295u, 4294967295u)));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_2) -> vec2<i32> {
    global3 = Struct_3(vec3<bool>(1i > arg_3.a, global3.d.b.x, all(global3.d.b)), Struct_1(global3.b.a, select(!select(arg_3.b.b, vec4<bool>(arg_3.b.b.x, arg_3.b.b.x, arg_3.c, false), false), vec4<bool>(true, global3.a.x, any(vec4<bool>(false, global3.d.b.x, false, true)), true), !(!vec4<bool>(true, false, false, arg_3.b.c.x))), select(select(arg_3.b.c, vec2<bool>(true, false), true), vec2<bool>(all(global3.d.c), arg_1.x == arg_0.x), arg_3.b.b.ww), firstTrailingBit(4294967295u), abs(abs(~vec2<u32>(0u, 11190u)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.yz))), global3.b);
    var var_0 = ~_wgslsmith_div_vec3_i32(abs(max(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -15349i, arg_3.a), vec3<i32>(29594i, arg_3.a, u_input.a)), vec3<i32>(arg_3.a, u_input.a, 2147483647i))), (vec3<i32>(-1i) * -vec3<i32>(u_input.a, 1i, u_input.a)) >> (vec3<u32>(63606u, max(1u, 30032u), ~arg_3.b.a.x) % vec3<u32>(32u)));
    global1 = vec2<u32>(_wgslsmith_div_u32(u_input.b, ~20394u), select(~(~arg_3.b.a.x), min(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global3.b.d, 5u)], 76108u, 36244u), vec3<u32>(4294967295u, 4294967295u, 53717u)), countOneBits(10223u)), true) | ~78724u);
    var var_1 = Struct_2(1i, global3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-140f))) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - arg_0.x), 1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_3.d * arg_3.d))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1728f, -131f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, 310f)))));
    let var_2 = Struct_1(global3.b.a, select(vec4<bool>(false, true, true, false), arg_3.b.b, !arg_3.b.b), !select(!vec2<bool>(var_1.b.c.x, true), vec2<bool>(global3.b.b.x, global3.a.x), _wgslsmith_f_op_f32(-global3.c.x) > _wgslsmith_f_op_f32(1197f + -415f)), ~global2[_wgslsmith_index_u32(4294967295u, 5u)] | 38237u, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(arg_2, arg_2), arg_3.b.e.x ^ 1u) | global1.x, firstLeadingBit(_wgslsmith_clamp_u32(global3.d.e.x, 81515u, arg_2))));
    return -(vec2<i32>(-1i) * -(countOneBits(var_0.yy) ^ var_0.yx));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = ~(min(~vec2<i32>(-1i, -74586i), ~vec2<i32>(u_input.a, arg_0.a)) & (func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(2682f, arg_0.d.x, -489f) * vec3<f32>(2064f, 2397f, 1466f)), vec3<f32>(-1000f, global3.c.x, -246f), countOneBits(global2[_wgslsmith_index_u32(0u, 5u)]), arg_0) & max(-vec2<i32>(-35641i, u_input.a), vec2<i32>(1i, 1i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-379f, -2596f, 466f)));
    let var_2 = global3.b.e;
    return Struct_1(~(vec2<u32>(_wgslsmith_clamp_u32(8880u, u_input.b, arg_0.b.d), firstTrailingBit(4294967295u)) ^ global3.d.e), vec4<bool>(true, false, false, !all(vec3<bool>(false, global3.b.b.x, arg_0.c))), arg_0.b.b.wy, 14932u, vec2<u32>(~1u, _wgslsmith_add_u32(var_2.x, 0u)) ^ arg_0.b.e);
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> vec4<i32> {
    global1 = ~arg_1.b.a;
    var var_0 = _wgslsmith_f_op_f32(-global3.c.x);
    var var_1 = Struct_3(select(vec3<bool>((u_input.a | u_input.a) != u_input.a, true, -arg_1.a < _wgslsmith_dot_vec2_i32(vec2<i32>(44942i, 0i), vec2<i32>(arg_1.a, 1i))), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, arg_0, global3.d.c.x), true), !global3.d.b.xzw, vec3<bool>(global3.a.x, false, arg_0)), select(arg_1.b.b.wzy, arg_1.b.b.zyy, vec3<bool>(global3.d.b.x, global3.a.x, arg_1.b.c.x)), all(select(vec2<bool>(arg_0, global3.d.b.x), arg_1.b.b.zw, arg_1.b.b.zy))), select(all(global3.b.b), true, false)), global3.d, _wgslsmith_f_op_vec2_f32(trunc(arg_1.d)), func_2(arg_1));
    global0 = _wgslsmith_sub_i32(arg_1.a, _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a, -1i << (firstTrailingBit(37709u) % 32u)), min(_wgslsmith_mod_i32(reverseBits(u_input.a), i32(-1i) * -1i), -1i)));
    var var_2 = func_2(Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(select(vec2<i32>(-27705i, arg_1.a), vec2<i32>(u_input.a, -1i), var_1.a.xy), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, u_input.a))), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.a, 1i), vec2<i32>(68054i, arg_1.a)) ^ vec2<i32>(-12993i, u_input.a)), Struct_1(~vec2<u32>(0u, global2[_wgslsmith_index_u32(global3.b.d, 5u)]), !global3.d.b, global3.b.b.xx, arg_1.b.a.x, _wgslsmith_clamp_vec2_u32(var_1.d.a, global3.b.a, vec2<u32>(4294967295u, 4456u)) ^ arg_1.b.a), true, _wgslsmith_f_op_vec2_f32(select(var_1.c, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, -1117f)))), !vec2<bool>(arg_0, true)))));
    return ~vec4<i32>(~(-(u_input.a << (u_input.b % 32u))), _wgslsmith_dot_vec3_i32(select(vec3<i32>(52680i, 87132i, -30050i), vec3<i32>(arg_1.a, u_input.a, arg_1.a), vec3<bool>(true, true, global3.a.x)) & vec3<i32>(arg_1.a, 1i, u_input.a), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, arg_1.a, arg_1.a), vec3<i32>(u_input.a, 42843i, -43330i), vec3<i32>(-52544i, u_input.a, -1i)), firstLeadingBit(vec3<i32>(-2147483647i, arg_1.a, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -5270i, arg_1.a), vec3<i32>(u_input.a, -40874i, u_input.a)))), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 35589i, ~3506i, _wgslsmith_mod_i32(arg_1.a, 28609i)), ~vec4<i32>(u_input.a, 0i, u_input.a, 2147483647i)), -u_input.a | _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_1.a, arg_1.a), vec3<i32>(u_input.a, u_input.a, -1i)), _wgslsmith_mod_i32(20641i, u_input.a)));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(~firstTrailingBit(-min(arg_3.a, 0i)), Struct_1(vec2<u32>(u_input.b, abs(~global2[_wgslsmith_index_u32(1u, 5u)])), !func_2(Struct_2(-24633i, Struct_1(vec2<u32>(global1.x, 1u), global3.d.b, arg_3.b.b.xw, arg_3.b.e.x, vec2<u32>(global3.b.e.x, 23950u)), true, vec2<f32>(arg_0, global3.c.x))).b, !vec2<bool>(true, !global3.b.c.x), 19347u, ~_wgslsmith_div_vec2_u32(global3.b.e, vec2<u32>(arg_1, 31298u))), global3.d.b.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(444f, arg_3.d.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_3.d, vec2<f32>(280f, global3.c.x)) - arg_3.d)))));
    let var_1 = Struct_3(select(!select(vec3<bool>(var_0.c, var_0.b.b.x, true), select(var_0.b.b.wzz, vec3<bool>(global3.d.c.x, var_0.c, true), false), arg_3.c), vec3<bool>(!var_0.b.b.x == var_0.c, arg_3.d.x == var_0.d.x, var_0.b.a.x <= 0u), !select(!var_0.b.b.zyz, vec3<bool>(arg_3.c, false, arg_3.b.b.x), global3.b.b.x)), Struct_1(vec2<u32>(14113u, 62100u | ~global1.x), select(!(!arg_3.b.b), !global3.d.b, arg_3.b.b), !(!(!arg_3.b.c)), 4294967295u, var_0.b.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.c.x, -1150f))), arg_0)), var_0.b);
    var var_2 = -firstLeadingBit(-(_wgslsmith_mod_vec3_i32(arg_2.zyx, vec3<i32>(-2156i, 2147483647i, 2147483647i)) | min(vec3<i32>(u_input.a, -29969i, -32425i), vec3<i32>(0i, arg_3.a, var_0.a))));
    global0 = max(var_2.x, ~var_2.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-101f, arg_0, -259f, 338f) - vec4<f32>(1122f, -427f, 1268f, -968f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.c.x, -920f, 695f, 619f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, -458f, -267f, 101f) * vec4<f32>(global3.c.x, 1572f, 828f, var_0.d.x)))))))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(1773f, global3.d.d, _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, u_input.a) & _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.a, -9394i, -2147483647i), vec4<i32>(1i, -1i, u_input.a, 2147483647i)), ~(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), ~func_1(global3.d.b.x & global3.d.c.x, Struct_2(u_input.a, Struct_1(vec2<u32>(4294967295u, global3.d.a.x), vec4<bool>(global3.b.b.x, false, true, global3.b.c.x), global3.d.b.yw, global2[_wgslsmith_index_u32(84750u, 5u)], global3.b.e), true, global3.c))), Struct_2(0i, global3.d, global3.d.c.x, global3.c));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~global1.x, ~min(var_0.b.d, ~1u)), var_0.b.e);
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-215f, -625f, global3.c.x, var_0.d.x)))));
    var var_3 = global3.b.b;
    var var_4 = vec3<bool>(!((func_2(Struct_2(1i, global3.d, false, vec2<f32>(-284f, 1475f))).d >= max(2084u, 29532u)) || true), !var_3.x, global3.c.x >= var_2.x);
    global2 = array<u32, 5>();
    var var_5 = var_4.xz;
    let var_6 = var_0.a;
    let var_7 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(-6418i, ~abs(vec3<u32>(~64438u, abs(global3.b.d), ~1u)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a >> (var_7 % 32u), 17160i), -vec2<i32>(-2147483647i, 2147483647i)));
}

