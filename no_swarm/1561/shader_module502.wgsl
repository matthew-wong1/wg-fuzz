struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_3;

var<private> global2: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(1000f, -126f, -153f, -309f), vec4<f32>(1000f, -475f, -213f, 2460f), vec4<f32>(815f, -709f, 754f, 1000f), vec4<f32>(426f, -1426f, -752f, 489f), vec4<f32>(234f, -834f, -1954f, 232f), vec4<f32>(-2074f, 641f, 1767f, 456f), vec4<f32>(1279f, -1589f, -407f, -804f), vec4<f32>(-371f, -1680f, 1377f, -1759f), vec4<f32>(-1155f, -194f, 1075f, -1500f), vec4<f32>(-813f, 1731f, -464f, -318f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: bool) -> vec3<f32> {
    let var_0 = true;
    let var_1 = all(global1.d);
    global2 = array<vec4<f32>, 10>();
    let var_2 = Struct_1((-_wgslsmith_sub_i32(u_input.c, 0i) == u_input.c) || var_1, !(max(select(22244u, 0u, false), ~20453u) <= 57531u), -534f);
    global1 = Struct_3(global1.a, var_2.c, global1.c, !global1.d);
    return vec3<f32>(global1.b, _wgslsmith_div_f32(var_2.c, _wgslsmith_f_op_f32(-var_2.c)), _wgslsmith_f_op_f32(359f + -1000f));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec3<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + global1.c.x)), 1079f, global1.a.c, 1399f) + _wgslsmith_f_op_vec4_f32(min(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(16999u), u_input.a.x), 10u)], _wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(1u, 10u)], true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(47482u, 10u)] * global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), _wgslsmith_div_vec4_f32(vec4<f32>(-2525f, global1.b, -631f, -701f), vec4<f32>(-570f, -120f, arg_1.x, arg_1.x)))))));
    let var_1 = reverseBits(u_input.a.x);
    var var_2 = Struct_2(arg_2, firstTrailingBit(countOneBits(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(66391u, u_input.b, var_1, var_1), vec4<u32>(u_input.b, 9686u, 4294967295u, var_1)), vec4<u32>(53764u, var_1, 27159u, var_1)))), Struct_1(arg_1.x < global1.a.c, !arg_2.x == false, _wgslsmith_f_op_f32(trunc(-1143f))), global1.a);
    let var_3 = 1609f;
    var_2 = Struct_2(vec3<bool>(any(vec4<bool>(var_2.c.a, false, !arg_2.x, true & arg_2.x)), true, false), _wgslsmith_mod_vec4_u32(vec4<u32>(~10u, var_1, _wgslsmith_add_u32(4294967295u, ~4294967295u), ~70179u), abs((var_2.b ^ var_2.b) | ~var_2.b)), Struct_1(var_2.c.a, true, _wgslsmith_f_op_f32(ceil(global1.b))), global1.a);
    return !global1.d;
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    let var_0 = Struct_2(func_4(u_input.c, _wgslsmith_f_op_vec3_f32(func_3(true, _wgslsmith_f_op_f32(804f * -299f) != _wgslsmith_f_op_f32(floor(999f)))), !global1.d), ~firstLeadingBit(firstTrailingBit(~vec4<u32>(55846u, 0u, 1u, 9946u))), Struct_1(global1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1489f))) != global1.b, _wgslsmith_f_op_f32(trunc(global1.b))), Struct_1(true, (!global1.a.a & all(vec4<bool>(global1.a.a, global1.d.x, true, true))) & global1.a.a, -1000f));
    global0 = _wgslsmith_clamp_i32(i32(-1i) * -arg_0.x, u_input.c, _wgslsmith_dot_vec2_i32(countOneBits(min(vec2<i32>(arg_0.x, arg_0.x), arg_0.yy)), ~vec2<i32>(countOneBits(u_input.c), i32(-1i) * -6898i)));
    global2 = array<vec4<f32>, 10>();
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(~max(var_0.b.x, var_0.b.x), 10u)], vec4<f32>(_wgslsmith_f_op_f32(var_0.c.c - -906f), _wgslsmith_f_op_f32(step(-573f, var_0.d.c)), var_0.c.c, 373f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-265f, 237f, global1.b, -212f))))))), vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-global1.a.c)), _wgslsmith_f_op_f32(select(var_0.d.c, -129f, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.c, 525f) - _wgslsmith_f_op_f32(exp2(var_0.d.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c.c)) + 1242f))), _wgslsmith_f_op_f32(-global1.c.x))));
    global0 = -(_wgslsmith_div_i32(~u_input.c, _wgslsmith_div_i32(~11840i, u_input.c)) ^ (_wgslsmith_sub_i32(1i, ~u_input.c) & _wgslsmith_mult_i32(~u_input.c, -arg_0.x)));
    return Struct_3(Struct_1(!global1.a.b, select(true, true, all(func_4(u_input.c, vec3<f32>(-1108f, -748f, 287f), var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_3(global1.a.a, global1.d.x)).x, _wgslsmith_f_op_f32(sign(var_0.d.c)))))), -935f, global1.c, vec3<bool>(var_0.a.x, var_1.x != 1f, !any(select(vec2<bool>(global1.a.b, false), vec2<bool>(false, false), vec2<bool>(true, var_0.a.x)))));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = ~(~arg_0.b.x);
    var var_1 = !select(global1.d, !arg_2.a, false);
    let var_2 = vec4<i32>(-1i, ~(-2147483647i), -1i, _wgslsmith_mod_i32(_wgslsmith_div_i32(~u_input.c, _wgslsmith_sub_i32(u_input.c, u_input.c)) ^ ~(-31564i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_add_i32(u_input.c, -5982i)), vec2<i32>(u_input.c, -1i) >> (vec2<u32>(0u, 14507u) % vec2<u32>(32u)))));
    let var_3 = arg_3;
    var var_4 = 4294967295u;
    return var_3.d;
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> bool {
    var var_0 = arg_0.x;
    global0 = u_input.c;
    var_0 = 1u <= ~u_input.b;
    let var_1 = arg_1.a;
    var var_2 = select(-vec3<i32>(i32(-1i) * -2147483647i, -28853i, -2979i), abs(~(~vec3<i32>(u_input.c, -1i, u_input.c))), arg_1.d) | (-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c) << (vec3<u32>(u_input.a.x, u_input.b, 4294967295u) % vec3<u32>(32u)), vec3<i32>(u_input.c, -1i, u_input.c)) | vec3<i32>(_wgslsmith_mod_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 2147483647i, u_input.c, u_input.c), vec4<i32>(-1i, u_input.c, 27583i, u_input.c))), abs(u_input.c >> (4294967295u % 32u)), -u_input.c));
    return _wgslsmith_f_op_vec3_f32(func_3(true, false)).x >= -1573f;
}

fn func_1() -> Struct_3 {
    let var_0 = vec2<bool>(false, false);
    global0 = u_input.c;
    let var_1 = Struct_1(all(vec3<bool>(!var_0.x, true, !global1.d.x)), true, global1.b);
    var var_2 = global1.a.b;
    let var_3 = Struct_1(func_6(func_5(Struct_2(global1.d, reverseBits(vec4<u32>(u_input.b, 28589u, u_input.b, 0u)), var_1, Struct_1(var_1.a, false, 1370f)), global1.a.c, Struct_2(vec3<bool>(global1.a.b, false, true), vec4<u32>(56021u, 4294967295u, u_input.b, u_input.a.x), var_1, Struct_1(false, global1.a.b, -148f)), func_2(vec4<i32>(2147483647i, 1i, 0i, -2147483647i) | vec4<i32>(-2147483647i, u_input.c, -1i, -1i))), Struct_3(func_2(vec4<i32>(10712i, u_input.c, u_input.c, u_input.c) << (vec4<u32>(35394u, u_input.a.x, u_input.b, u_input.a.x) % vec4<u32>(32u))).a, global1.a.c, global1.c, vec3<bool>(false, true, any(vec2<bool>(false, var_1.b)))), ~(~u_input.b | max(u_input.b, 34404u)), _wgslsmith_add_u32(u_input.a.x, 95407u) << (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, 7861u), vec3<u32>(u_input.a.x, u_input.b, u_input.a.x)), max(vec3<u32>(u_input.a.x, u_input.a.x, u_input.b), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))) % 32u)), func_5(Struct_2(func_4(min(u_input.c, u_input.c), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-174f, global1.a.c, -961f), vec3<f32>(-742f, -1665f, global1.c.x), var_1.b)), !global1.d), vec4<u32>(64847u, u_input.b, max(0u, 0u), ~u_input.b), func_2(select(vec4<i32>(u_input.c, -2147483647i, -1i, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), false)).a, Struct_1(var_1.a, true, _wgslsmith_f_op_f32(-791f - global1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-887f, 2059f)) + -120f)), Struct_2(func_2(~vec4<i32>(-48401i, u_input.c, 0i, u_input.c)).d, reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 13838u, 1u, 10942u), vec4<u32>(u_input.b, u_input.b, 35268u, 1u), vec4<u32>(u_input.a.x, 104694u, u_input.a.x, 4294967295u))), Struct_1(var_0.x, !var_1.b, _wgslsmith_f_op_f32(min(-1050f, 701f))), func_2(vec4<i32>(u_input.c, -5147i, 3628i, -1i)).a), func_2(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c ^ -32958i))).x, _wgslsmith_f_op_f32(floor(-456f)));
    return func_2(vec4<i32>(_wgslsmith_mod_i32(u_input.c, 1305i) & u_input.c, ~u_input.c, -2147483647i, -(~u_input.c) << (u_input.b % 32u)));
}

fn func_7(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-global1.c);
    var var_1 = Struct_2(vec3<bool>(true, func_6(vec3<bool>(152f != var_0.x, true, any(arg_0.xx)), func_2(vec4<i32>(-62518i, u_input.c, 57072i, u_input.c)), arg_2, arg_2), true), vec4<u32>(_wgslsmith_add_u32(arg_2, u_input.b), arg_2, 18375u, ~(~abs(0u))), Struct_1(arg_1.a.a & true, any(!vec2<bool>(global1.a.a, global1.d.x)), _wgslsmith_div_f32(-1098f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), global1.a);
    var var_2 = vec4<u32>(~(~var_1.b.x), 23252u, 17116u, var_1.b.x);
    let var_3 = ~24967u;
    var var_4 = Struct_2(vec3<bool>(false, false, select(true, func_6(global1.d, Struct_3(var_1.d, arg_1.b, global1.c, vec3<bool>(false, arg_1.a.a, false)), 0u, var_2.x) & !arg_0.x, var_1.c.a)), vec4<u32>(abs(arg_2), var_2.x, _wgslsmith_add_u32(arg_2, 4523u), u_input.a.x), Struct_1(true, arg_0.x, _wgslsmith_f_op_f32(-230f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(678f))))), arg_1.a);
    return Struct_2(vec3<bool>(!(!(!arg_1.d.x)), true, true), vec4<u32>(79133u, _wgslsmith_dot_vec2_u32(var_4.b.yy & vec2<u32>(var_1.b.x, arg_2), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(35756u, 39753u), u_input.a))), ~firstLeadingBit(~1u), arg_2), func_1().a, func_2(-vec4<i32>(-1i, firstTrailingBit(2147483647i), -2817i, reverseBits(11801i))).a);
}

fn func_8(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_1 {
    global2 = array<vec4<f32>, 10>();
    var var_0 = -146f;
    let var_1 = func_7(!arg_0.a, Struct_3(func_7(func_2(vec4<i32>(arg_1.x, 12756i, arg_1.x, 2147483647i) & arg_1).d, Struct_3(func_1().a, arg_0.c.c, global1.c, func_2(arg_1).d), _wgslsmith_mod_u32(~u_input.b, ~u_input.b)).d, _wgslsmith_div_f32(-353f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1865f, 689f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.c, -501f, arg_0.d.c) * global1.c))), func_5(func_7(vec3<bool>(true, arg_0.a.x, global1.a.a), func_1(), ~u_input.b), global1.c.x, Struct_2(!vec3<bool>(global1.d.x, false, true), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, 0u), vec4<u32>(1u, u_input.a.x, 13184u, 86294u)), arg_0.d, Struct_1(true, global1.a.a, global1.c.x)), func_1())), u_input.a.x);
    var_0 = -643f;
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2453f * _wgslsmith_f_op_f32(-global1.a.c))));
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(global1.a.c, global1.b);
    var var_1 = func_8(func_7(select(!vec3<bool>(global1.a.b, false, global1.d.x), global1.d, false), func_1(), ~(select(u_input.a.x, u_input.b, global1.a.b) & _wgslsmith_mod_u32(u_input.a.x, u_input.a.x))), firstLeadingBit(~_wgslsmith_add_vec4_i32(min(vec4<i32>(625i, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, 36967i, 40310i, 1i)), ~vec4<i32>(u_input.c, 14160i, u_input.c, -20088i))));
    global1 = func_2(abs(min(firstTrailingBit(vec4<i32>(u_input.c, u_input.c, 2147483647i, 0i) & vec4<i32>(0i, 73332i, u_input.c, u_input.c)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 2147483647i), vec4<i32>(-10518i, -1i, -19070i, u_input.c)))));
    var var_2 = vec3<bool>(any(vec2<bool>(global1.a.b, true)), global1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.c + -825f), var_1.c)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b - 1926f) + _wgslsmith_f_op_f32(-var_1.c))) >= -2090f);
    let var_3 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(max(-2645f, 124f)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(859f, var_1.c, -563f, -690f))))));
    let var_5 = u_input.c;
    var var_6 = Struct_3(Struct_1(all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, var_1.b, var_1.b), !vec4<bool>(var_1.a, var_2.x, true, var_2.x))), global1.b > global1.b, -240f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(183f * var_4.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(140f + var_4.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_4.xwz)), vec3<f32>(-401f, 1081f, _wgslsmith_f_op_f32(var_4.x * 853f))), !global1.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-164f, var_3.x), var_4.yx)))))), u_input.b, vec4<f32>(var_1.c, -1649f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.b)), var_4.x), vec2<u32>(u_input.b, 4294967295u), -(reverseBits(-var_5) | min(u_input.c ^ var_5, u_input.c)));
}

