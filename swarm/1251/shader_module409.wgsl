struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: bool,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: bool,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true), vec2<u32>(2741u, 4932u), true, -832f, vec4<i32>(-1i, 1i, 73176i, 2147483647i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    var var_0 = -7025i;
    var_0 = _wgslsmith_div_i32(2147483647i, -(~(~(i32(-1i) * -16406i))));
    global0 = Struct_1(vec2<bool>(!(!(!global0.c)), true), _wgslsmith_clamp_vec2_u32(~vec2<u32>(~global0.b.x, _wgslsmith_div_u32(63786u, global0.b.x)), global0.b, abs(global0.b)), !(global0.a.x & arg_0.x), 162f, ~vec4<i32>(firstLeadingBit(global0.e.x), -1549i, u_input.b.x, _wgslsmith_add_i32(global0.e.x, select(u_input.c, 36876i, false))));
    global0 = Struct_1(select(select(vec2<bool>(true, true), !vec2<bool>(arg_0.x, arg_0.x), select(vec2<bool>(global0.c, global0.c), !global0.a, !global0.a)), !(!select(vec2<bool>(global0.c, global0.c), arg_0.zz, global0.c)), !select(global0.a, select(global0.a, global0.a, true), global0.c)), ~vec2<u32>(global0.b.x, ~(global0.b.x ^ 18847u)), any(vec3<bool>(all(select(vec3<bool>(global0.c, false, false), arg_0.yxy, arg_0.x)), false, all(vec4<bool>(true, global0.c, false, global0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global0.d)))) * global0.d), u_input.b);
    let var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-max(global0.e | global0.e, u_input.b | vec4<i32>(33380i, global0.e.x, -40182i, u_input.b.x)), -vec4<i32>(global0.e.x, u_input.b.x, u_input.a, -1i) << (firstTrailingBit(~vec4<u32>(global0.b.x, global0.b.x, global0.b.x, 30900u)) % vec4<u32>(32u))), 1i);
    return i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_sub_i32(0i, _wgslsmith_mod_i32(-27063i, -78786i)), u_input.c);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: u32, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = global0.a;
    let var_1 = Struct_1(select(select(vec2<bool>(var_0.x, global0.a.x), !vec2<bool>(var_0.x, global0.c), !select(vec2<bool>(true, false), vec2<bool>(var_0.x, true), vec2<bool>(true, true))), !(!select(vec2<bool>(global0.a.x, true), global0.a, global0.a)), arg_3.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))), countOneBits(vec2<u32>(4433u, ~(~0u))), any(select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, global0.a.x), vec3<bool>(true, true, false)), vec3<bool>(global0.a.x, select(true, global0.c, true), all(vec4<bool>(true, true, false, global0.c))), vec3<bool>(true, true, true))), 1454f, select(-abs(_wgslsmith_add_vec4_i32(global0.e, vec4<i32>(global0.e.x, 11820i, global0.e.x, 1i))), -(~(-vec4<i32>(2147483647i, -10702i, u_input.b.x, u_input.b.x))), global0.a.x & var_0.x));
    var var_2 = Struct_2(~_wgslsmith_div_vec4_i32(reverseBits(firstTrailingBit(vec4<i32>(57439i, -47201i, u_input.b.x, 28168i))), u_input.b), Struct_1(var_1.a, vec2<u32>(select(arg_2, 39239u, global0.a.x) ^ 4294967295u, var_1.b.x), var_0.x, -762f, _wgslsmith_mod_vec4_i32(vec4<i32>(~var_1.e.x, reverseBits(arg_0), func_3(vec4<bool>(var_1.a.x, false, true, global0.c)), 28464i), vec4<i32>(-global0.e.x, abs(var_1.e.x), ~arg_0, _wgslsmith_dot_vec3_i32(global0.e.xyy, global0.e.zzw)))), var_1, var_1);
    var var_3 = firstTrailingBit(select(vec4<i32>(abs(var_1.e.x), 0i & arg_0, ~1i, firstTrailingBit(0i)), -reverseBits(vec4<i32>(49953i, var_1.e.x, arg_0, -14522i)), !select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_1.c, var_2.c.a.x, true, false), vec4<bool>(var_2.d.c, false, var_2.b.c, var_0.x)))) | vec4<i32>(var_2.c.e.x, ~var_2.b.e.x, -2147483647i, countOneBits(0i));
    global0 = var_2.b;
    return var_2.c;
}

fn func_4(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(-1900f)), 422f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1005f)), 1f);
    var var_1 = reverseBits(vec2<u32>(19139u, arg_0.c.x));
    let var_2 = select(select(select(select(vec4<bool>(arg_0.b.a.x, false, false, arg_0.b.c), vec4<bool>(true, true, global0.c, arg_0.b.a.x), true), !vec4<bool>(global0.c, false, true, global0.a.x), vec4<bool>(!global0.a.x, true, true, true)), select(select(select(vec4<bool>(global0.a.x, global0.a.x, true, false), vec4<bool>(false, global0.a.x, false, false), global0.a.x), !vec4<bool>(global0.a.x, arg_0.b.c, arg_0.b.c, global0.a.x), any(vec3<bool>(global0.c, true, arg_0.b.a.x))), vec4<bool>(all(vec2<bool>(false, global0.c)), global0.a.x, true, true), vec4<bool>(true, global0.c, true & arg_0.b.a.x, true)), arg_0.b.a.x), select(vec4<bool>(false, true, false, arg_0.b.c), vec4<bool>(all(!vec4<bool>(global0.a.x, arg_0.b.a.x, true, arg_0.b.a.x)), false, all(select(arg_0.b.a, vec2<bool>(arg_0.b.c, false), vec2<bool>(global0.c, true))), select(func_2(arg_0.a.x, var_0.zy, arg_0.b.b.x, var_0.yxz).a.x, true, true)), all(select(vec2<bool>(true, arg_0.b.c), vec2<bool>(global0.c, global0.a.x), true))), all(select(select(!vec4<bool>(arg_0.b.a.x, global0.a.x, false, global0.a.x), vec4<bool>(arg_0.b.c, false, true, arg_0.b.c), true), select(select(vec4<bool>(global0.c, global0.c, arg_0.b.a.x, arg_0.b.a.x), vec4<bool>(true, global0.a.x, arg_0.b.a.x, arg_0.b.a.x), false), select(vec4<bool>(global0.c, global0.a.x, true, global0.c), vec4<bool>(global0.a.x, arg_0.b.c, true, true), false), vec4<bool>(arg_0.b.c, global0.c, true, false)), vec4<bool>(true, false, true, false && arg_0.b.a.x))));
    global0 = arg_0.b;
    var var_3 = Struct_4(global0.d, arg_0.b.b.x, ~(~countOneBits(select(global0.e, vec4<i32>(0i, -75749i, u_input.c, global0.e.x), var_2.x))), vec3<f32>(-519f, global0.d, var_0.x));
    return vec2<bool>(global0.a.x | all(var_2), true);
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = Struct_1(func_4(Struct_3(abs(vec4<i32>(14317i, 0i, 2147483647i, u_input.c)), func_2(global0.e.x, vec2<f32>(-412f, global0.d), 17618u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, global0.d, global0.d))), select(vec3<u32>(0u, global0.b.x, global0.b.x), ~vec3<u32>(global0.b.x, 62274u, global0.b.x), !global0.c))), vec2<u32>(~global0.b.x, 14965u >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 48529u, 0u, 4294967295u), vec4<u32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x)) % 32u)), false, 430f, vec4<i32>(-u_input.b.x, ~(~11579i), ~func_2(1i, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, global0.d) - vec2<f32>(global0.d, 235f)), _wgslsmith_sub_u32(26200u, global0.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(563f, global0.d, global0.d) * vec3<f32>(-462f, global0.d, global0.d))).e.x, func_2((global0.e.x >> (8388u % 32u)) & ~2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-143f, global0.d))), _wgslsmith_mod_u32(9332u | global0.b.x, global0.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, global0.d, -2658f))).e.x));
    global0 = func_2(u_input.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1595f, global0.d)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.d, global0.d), vec2<f32>(global0.d, global0.d)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(204f, global0.d) - vec2<f32>(global0.d, global0.d))), _wgslsmith_f_op_vec2_f32(vec2<f32>(367f, 311f) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1009f, 1026f), vec2<f32>(global0.d, global0.d)))))))), ~global0.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d, 654f, -762f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.d, global0.d, global0.d))))))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) - -1000f), _wgslsmith_f_op_f32(step(253f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.d + 822f)))))));
    global0 = func_2(_wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(global0.e, vec4<i32>(global0.e.x, global0.e.x, u_input.b.x, global0.e.x)), select(global0.e, vec4<i32>(u_input.c, -56362i, 55585i, -1436i), arg_0)), vec4<i32>(global0.e.x, select(u_input.c & -20987i, ~u_input.c, true), firstLeadingBit(1i), u_input.b.x)), var_0, global0.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(813f, var_0.x, 935f)))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(round(global0.d)))), _wgslsmith_add_u32(global0.b.x, global0.b.x), global0.e, vec3<f32>(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(f32(-1f) * -774f), -129f));
    return func_2(-1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(252f, 1722f) - _wgslsmith_f_op_vec2_f32(select(var_1.d.zy, var_1.d.yx, global0.a))), var_0) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_1.d.x), var_1.d.xx) - var_0))), 94885u, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - -1056f), _wgslsmith_div_f32(-1000f, 799f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-369f * global0.d) * _wgslsmith_f_op_f32(global0.d - -704f)) + 705f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!global0.a, countOneBits(reverseBits(~vec2<u32>(global0.b.x, 0u)) | global0.b), all(select(select(select(vec3<bool>(global0.c, global0.a.x, false), vec3<bool>(false, false, false), vec3<bool>(global0.a.x, global0.c, false)), vec3<bool>(true, global0.a.x, global0.c), true | global0.c), vec3<bool>(true, true, true), vec3<bool>(true, global0.a.x, all(vec3<bool>(true, true, true))))), global0.d, vec4<i32>(((u_input.b.x >> (1u % 32u)) ^ -2147483647i) | u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.b.zzy, u_input.b.xwx), -1i) << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, global0.b.x), select(18857u, 0u, global0.c)) % 32u), 2147483647i, _wgslsmith_mod_i32(1i, -1i)));
    global0 = func_1(any(var_0.a));
    global0 = func_2(_wgslsmith_dot_vec2_i32(global0.e.zx, func_2(23445i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, global0.d) * vec2<f32>(var_0.d, 301f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1258f, var_0.d) * vec2<f32>(global0.d, 864f))), ~func_2(0i, vec2<f32>(var_0.d, -733f), var_0.b.x, vec3<f32>(global0.d, -476f, var_0.d)).b.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1777f, 1369f, global0.d))))).e.wx), vec2<f32>(1062f, _wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(trunc(global0.d)))), 1u, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1014f, _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -871f)))))));
    let var_1 = vec3<bool>(false, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.e.x, global0.e.x), -vec2<i32>(u_input.b.x, u_input.a)), func_3(vec4<bool>(true, true, true, true)), -1i) < 1i, !all(func_4(Struct_3(u_input.b, Struct_1(global0.a, vec2<u32>(1003u, 20227u), global0.a.x, 682f, vec4<i32>(-1i, u_input.a, -29314i, global0.e.x)), vec3<u32>(var_0.b.x, 40476u, 9862u)))));
    var_0 = Struct_1(!select(vec2<bool>(!var_1.x, var_1.x & global0.c), func_1(false || var_0.a.x).a, !(var_0.a.x || global0.a.x)), global0.b, !(global0.b.x > global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), ~min(vec4<i32>(-32383i, var_0.e.x, -u_input.a, global0.e.x), vec4<i32>(func_1(var_1.x).e.x, ~global0.e.x, _wgslsmith_mod_i32(70024i, 14487i), u_input.b.x)));
    global0 = Struct_1(select(func_4(Struct_3(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 7119i, -12466i, global0.e.x), u_input.b), func_2(global0.e.x, vec2<f32>(-462f, -1134f), var_0.b.x, vec3<f32>(global0.d, -611f, -637f)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, global0.b.x, var_0.b.x), vec3<u32>(0u, 22581u, var_0.b.x)))), vec2<bool>((-43493i | global0.e.x) > -9530i, true & var_1.x), var_0.c), ~(_wgslsmith_sub_vec2_u32(~global0.b, global0.b) << (global0.b % vec2<u32>(32u))), !all(select(!vec4<bool>(true, var_1.x, true, var_0.c), vec4<bool>(var_1.x, var_1.x, false, var_0.c), !vec4<bool>(var_0.c, var_0.a.x, var_0.c, var_1.x))), func_2(48371i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, var_0.d) - vec2<f32>(986f, -578f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(123f, -932f) * vec2<f32>(global0.d, global0.d)))), global0.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.d, 570f, -376f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.d, -1246f, global0.d))), func_2(var_0.e.x, vec2<f32>(global0.d, var_0.d), 1u, vec3<f32>(global0.d, -457f, global0.d)).a.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(882f, var_0.d, var_0.d), vec3<f32>(global0.d, 132f, 844f), global0.c))))).d, -firstLeadingBit(u_input.b));
    var_0 = Struct_1(vec2<bool>(all(var_1.yy), false), ~((vec2<u32>(var_0.b.x, 79786u) | (vec2<u32>(0u, 88442u) ^ vec2<u32>(global0.b.x, global0.b.x))) << (~reverseBits(var_0.b) % vec2<u32>(32u))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-349f + 450f)))), global0.e);
    let var_2 = ~select(_wgslsmith_mult_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.b.x, 0u, 4294967295u), vec3<u32>(global0.b.x, var_0.b.x, var_0.b.x)), firstTrailingBit(vec3<u32>(global0.b.x, 0u, 0u))), _wgslsmith_add_vec3_u32(~(vec3<u32>(63278u, 59470u, 1u) << (vec3<u32>(58410u, global0.b.x, 48374u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.b.x, var_0.b.x, 1u), vec3<u32>(var_0.b.x, var_0.b.x, 0u)) | abs(vec3<u32>(0u, 46075u, 1369u))), global0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_0.b.x), countOneBits(~(~vec4<u32>(49373u, 0u, var_0.b.x, global0.b.x) | vec4<u32>(global0.b.x, 46420u, 10689u, global0.b.x))), func_1(true).b);
}

