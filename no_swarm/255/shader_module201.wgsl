struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(1000f, 600f, 853f));

var<private> global1: bool = false;

var<private> global2: array<vec4<i32>, 20>;

var<private> global3: i32;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>) -> vec4<bool> {
    global1 = select(true, !(!any(vec3<bool>(true, true, true))), true);
    global2 = array<vec4<i32>, 20>();
    var var_0 = vec2<u32>(abs(countOneBits(~u_input.a.x)), ~(~(~u_input.a.x | u_input.a.x)));
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a.x)) - -1042f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * _wgslsmith_f_op_f32(max(global0.a.x, 355f)))), _wgslsmith_f_op_f32(sign(global0.a.x)), -227f));
    global3 = -1i;
    return select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, all(vec3<bool>(false, false, true)), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true)), 344f == _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(777f, global0.a.x) * _wgslsmith_f_op_f32(-global0.a.x)))) != global0.a.x);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<i32>) -> bool {
    var var_0 = ~(~9706u);
    var var_1 = ~u_input.a;
    var var_2 = _wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_sub_vec2_i32(arg_0.d, vec2<i32>(_wgslsmith_mult_i32(-2147483647i, arg_0.b), max(arg_0.d.x, arg_0.c.c.x)))), vec2<i32>(firstTrailingBit(-1i), abs(arg_0.a.c.x)));
    return !(!func_3(min(-arg_0.d, -vec2<i32>(arg_3.x, arg_3.x))).x);
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_5, arg_3: vec3<i32>) -> vec4<u32> {
    var var_0 = func_4(Struct_4(Struct_2(func_3(vec2<i32>(-2147483647i, 21168i)), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(4294967295u, 5327u, 18309u, arg_1.x)), min(arg_2.a.c, arg_2.a.c) | vec2<i32>(2147483647i, arg_0)), ~(-arg_0), Struct_2(vec4<bool>(false, global0.a.x == global0.a.x, func_3(vec2<i32>(1i, arg_0)).x, arg_2.a.a.x), ~u_input.a, reverseBits(-arg_3.xy)), vec2<i32>(arg_3.x, -(14586i | arg_2.a.c.x)), global0.a.xy), ~abs(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 50027u), u_input.a.xy)) >> (_wgslsmith_clamp_vec2_u32(arg_2.a.b, vec2<u32>(62472u, u_input.a.x >> (arg_2.a.b.x % 32u)), vec2<u32>(31919u, u_input.a.x)) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a)), reverseBits(~(-abs(vec2<i32>(-45055i, -2147483647i)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(global0.a)));
    let var_2 = var_1.a.x;
    let var_3 = var_1.a;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.xx) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_3.zx, vec2<f32>(-417f, 268f), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, -191f)))))) + vec2<f32>(_wgslsmith_div_f32(-196f, _wgslsmith_f_op_f32(-415f + _wgslsmith_f_op_f32(max(global0.a.x, var_1.a.x)))), _wgslsmith_f_op_f32(-global0.a.x)));
    return u_input.a;
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: u32) -> Struct_2 {
    global0 = Struct_1(global0.a);
    global3 = _wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_sub_i32(arg_1.b, -704i), firstLeadingBit(~_wgslsmith_sub_i32(-31027i, arg_1.a.c.x)), i32(-1i) * -arg_1.a.c.x, _wgslsmith_mult_i32(arg_1.c.c.x ^ arg_1.c.c.x, ~arg_1.a.c.x)), ~(global2[_wgslsmith_index_u32(0u, 20u)] & _wgslsmith_clamp_vec4_i32(global2[_wgslsmith_index_u32(~arg_2, 20u)], vec4<i32>(arg_1.c.c.x, arg_1.c.c.x, -15897i, arg_1.c.c.x), select(vec4<i32>(arg_1.b, 0i, arg_1.b, 41952i), vec4<i32>(2147483647i, 38840i, arg_1.b, arg_1.a.c.x), arg_1.a.a.x))));
    let var_0 = arg_1.c.a.x;
    var var_1 = any(select(arg_1.c.a.zzy, !vec3<bool>(arg_0, true, false), select(arg_1.a.a.xwz, vec3<bool>(var_0, var_0, arg_0), all(arg_1.a.a)))) && (all(vec3<bool>(true, all(vec4<bool>(arg_1.c.a.x, arg_1.a.a.x, arg_1.a.a.x, false)), false)) && !any(arg_1.c.a.yx));
    global1 = !arg_1.c.a.x;
    return Struct_2(vec4<bool>(func_4(arg_1, vec2<u32>(~43355u, 0u), Struct_1(_wgslsmith_f_op_vec3_f32(floor(global0.a))), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.d.x, -36201i), arg_1.a.c) ^ ~vec2<i32>(45655i, arg_1.c.c.x)), arg_0, all(func_3(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.b, 52377i), vec2<i32>(arg_1.c.c.x, -24333i)))), any(func_3(vec2<i32>(arg_1.d.x, 2147483647i)).zy)), ~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(arg_2, 0u, arg_1.a.b.x, 26183u)), firstTrailingBit(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(48585u, 4294967295u, arg_1.c.b.x, arg_2))), vec4<u32>(arg_2, 49058u, arg_2, ~u_input.a.x)), select(max(arg_1.a.c, vec2<i32>(arg_1.c.c.x, -2147483647i)), _wgslsmith_clamp_vec2_i32(arg_1.d, arg_1.d, vec2<i32>(arg_1.b, 2147483647i)), select(arg_0, true, !var_0)) & abs(_wgslsmith_mod_vec2_i32(max(vec2<i32>(arg_1.a.c.x, 9134i), arg_1.c.c), vec2<i32>(14608i, -1i))));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    let var_0 = func_5(false, Struct_4(Struct_2(vec4<bool>(arg_0.a.x != arg_0.a.x, any(arg_0.a), false, global0.a.x > -1328f), func_2(_wgslsmith_div_i32(0i, arg_0.c.x), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) ^ u_input.a.wzx, Struct_5(Struct_3(vec2<bool>(false, arg_0.a.x), arg_0.b, arg_0.c), vec3<bool>(false, arg_0.a.x, arg_0.a.x), true), vec3<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x)), arg_0.c), max(arg_0.c.x, arg_0.c.x), Struct_2(vec4<bool>(any(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), true, func_4(Struct_4(Struct_2(vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x), vec4<u32>(46128u, u_input.a.x, u_input.a.x, 39765u), arg_0.c), 2147483647i, Struct_2(vec4<bool>(true, arg_0.a.x, false, true), vec4<u32>(u_input.a.x, u_input.a.x, arg_0.b.x, 38605u), arg_0.c), arg_0.c, vec2<f32>(-1257f, 1331f)), vec2<u32>(2831u, 45408u), Struct_1(vec3<f32>(global0.a.x, -1646f, -658f)), arg_0.c), false), _wgslsmith_clamp_vec4_u32(~u_input.a, vec4<u32>(46392u, u_input.a.x, 4294967295u, 288u) & vec4<u32>(4294967295u, u_input.a.x, arg_0.b.x, u_input.a.x), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(arg_0.b.x, 4294967295u, u_input.a.x, 22185u))), countOneBits(arg_0.c ^ vec2<i32>(25233i, arg_0.c.x))), arg_0.c, _wgslsmith_f_op_vec2_f32(floor(global0.a.yz))), ~1u);
    var var_1 = _wgslsmith_mod_vec3_u32(~func_5(true, Struct_4(var_0, arg_0.c.x, var_0, ~var_0.c, _wgslsmith_f_op_vec2_f32(-global0.a.zy)), 47013u).b.ywy, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, _wgslsmith_add_u32(~75415u, ~u_input.a.x), func_5(u_input.a.x <= 106441u, Struct_4(var_0, -92i, var_0, vec2<i32>(arg_0.c.x, arg_0.c.x), vec2<f32>(-1739f, global0.a.x)), u_input.a.x).b.x), vec3<u32>(_wgslsmith_mod_u32(~1u, arg_0.b.x), countOneBits(_wgslsmith_dot_vec2_u32(var_0.b.yy, var_0.b.zw)), u_input.a.x)));
    let var_2 = select(arg_0.a, func_5(true, Struct_4(var_0, 1i << (arg_0.b.x % 32u), var_0, arg_0.c, vec2<f32>(800f, _wgslsmith_f_op_f32(409f - 1000f))), 0u).a.xx, false);
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(step(global0.a.x, -1000f)), global0.a.x, 103f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(799f, global0.a.x, global0.a.x, global0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.a.x, 675f, global0.a.x)), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-426f, global0.a.x, 243f, -279f), vec4<f32>(global0.a.x, global0.a.x, 124f, -780f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a.x, 583f, 1389f, 1723f)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(1098f, global0.a.x, global0.a.x, 422f), vec4<f32>(408f, global0.a.x, -1145f, 1088f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1923f, -1212f, global0.a.x, _wgslsmith_f_op_f32(-global0.a.x))) * vec4<f32>(1f, -1269f, _wgslsmith_f_op_f32(306f + 423f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * _wgslsmith_f_op_f32(-global0.a.x))))));
    global2 = array<vec4<i32>, 20>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(global0.a.x)), global0.a.x, -740f) - _wgslsmith_f_op_vec3_f32(ceil(var_3.wwz))));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: Struct_4) -> f32 {
    let var_0 = select(vec2<u32>(u_input.a.x, ~u_input.a.x), vec2<u32>(49877u, ~4294967295u), func_3(_wgslsmith_sub_vec2_i32(arg_3.c.c, vec2<i32>(_wgslsmith_add_i32(arg_1, arg_1), arg_3.d.x >> (0u % 32u)))).x);
    var var_1 = arg_3;
    var_1 = arg_3;
    let var_2 = arg_3;
    global0 = func_1(Struct_3(var_2.a.a.yx, ~_wgslsmith_add_vec2_u32(var_1.a.b.yw, countOneBits(vec2<u32>(80084u, 1567u))), ~_wgslsmith_mult_vec2_i32(arg_3.c.c, vec2<i32>(-14423i, -1i)) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 136u, var_2.c.b.x, 4294967295u), u_input.a), ~var_1.c.b.x) % vec2<u32>(32u))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.e.x)))), 634f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, !(!select(true, true, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_6(func_1(Struct_3(vec2<bool>(false, false), u_input.a.zw, vec2<i32>(59580i, -1i))), -5492i, firstLeadingBit(33817i), Struct_4(Struct_2(vec4<bool>(true, true, true, true), vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u), vec2<i32>(47837i, 1i)), -12447i, Struct_2(vec4<bool>(false, false, true, true), u_input.a, vec2<i32>(1i, 1i)), vec2<i32>(-9626i, -17048i), global0.a.yz))))) > 1f, true == (reverseBits(21783u << (u_input.a.x % 32u)) <= ~97888u));
    let var_1 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-1262f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)) * -537f)));
    let var_2 = _wgslsmith_dot_vec4_i32(select(vec4<i32>(_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(0u, 20u)] & vec4<i32>(-2147483647i, 1i, -1i, 65931i), vec4<i32>(0i, 2791i, 12199i, -7041i)), firstTrailingBit(i32(-1i) * -1i), ~0i << (select(u_input.a.x, 37963u, var_0.x) % 32u), min(min(-4849i, -10664i), 1i)), -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(17999i, -176i, 0i), vec3<i32>(-23740i, 2147483647i, 47546i)), countOneBits(15185i), ~1i, i32(-1i) * -22791i), any(var_0.wx)), global2[_wgslsmith_index_u32((select(max(u_input.a.x, u_input.a.x), countOneBits(u_input.a.x), var_0.x) << (~firstTrailingBit(1u) % 32u)) >> (_wgslsmith_clamp_u32(u_input.a.x, ~u_input.a.x, ~_wgslsmith_div_u32(u_input.a.x, 19496u)) % 32u), 20u)]);
    global0 = Struct_1(global0.a);
    let var_3 = max(vec2<u32>(0u, ~(1u ^ abs(u_input.a.x))), ~_wgslsmith_add_vec2_u32(u_input.a.wy, vec2<u32>(~u_input.a.x, _wgslsmith_sub_u32(4294967295u, 16134u))));
    global3 = ~(-((i32(-1i) * -5626i) | var_2));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(58045u, 20u)], global2[_wgslsmith_index_u32(var_3.x, 20u)]), _wgslsmith_mult_i32(~var_2, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2, -2147483647i), vec2<i32>(-9990i, var_2)))));
}

