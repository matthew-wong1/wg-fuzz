struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0i, 0i, 4294967295u, vec4<bool>(false, false, false, false));

var<private> global1: u32;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(37546i, -1285i, 1u, vec4<bool>(false, false, false, false)), Struct_1(i32(-2147483648), 2147483647i, 3235u, vec4<bool>(false, true, true, true)), Struct_1(i32(-2147483648), 2147483647i, 22642u, vec4<bool>(false, true, false, true)), Struct_1(0i, -18900i, 1u, vec4<bool>(true, true, true, false)));

var<private> global3: Struct_2 = Struct_2(vec2<i32>(1i, i32(-2147483648)), vec3<bool>(true, false, true), Struct_1(0i, 2147483647i, 45437u, vec4<bool>(false, true, false, false)), Struct_1(1i, -21265i, 14963u, vec4<bool>(false, true, true, false)));

var<private> global4: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec2<i32>(44955i, 1i), vec3<bool>(true, true, false), Struct_1(-1i, i32(-2147483648), 22983u, vec4<bool>(true, true, false, true)), Struct_1(-44901i, -4065i, 4294967295u, vec4<bool>(true, false, true, true))), Struct_2(vec2<i32>(2147483647i, 2147483647i), vec3<bool>(true, true, true), Struct_1(-23716i, -20058i, 68840u, vec4<bool>(false, false, false, false)), Struct_1(-23888i, 18085i, 59597u, vec4<bool>(true, true, true, true))), Struct_2(vec2<i32>(39328i, i32(-2147483648)), vec3<bool>(true, false, true), Struct_1(-88854i, -67952i, 61819u, vec4<bool>(true, false, false, true)), Struct_1(1i, 16139i, 0u, vec4<bool>(true, false, true, true))), Struct_2(vec2<i32>(-38481i, -36936i), vec3<bool>(false, false, true), Struct_1(0i, -1i, 4294967295u, vec4<bool>(true, true, true, true)), Struct_1(1i, -53376i, 1u, vec4<bool>(false, true, false, true))), Struct_2(vec2<i32>(2147483647i, -50089i), vec3<bool>(false, true, true), Struct_1(-29799i, -8572i, 0u, vec4<bool>(true, false, true, false)), Struct_1(-3055i, 1i, 20520u, vec4<bool>(true, false, false, true))), Struct_2(vec2<i32>(-1i, 1i), vec3<bool>(true, false, true), Struct_1(4569i, 2147483647i, 4294967295u, vec4<bool>(false, true, true, false)), Struct_1(i32(-2147483648), 52454i, 31921u, vec4<bool>(false, true, false, true))), Struct_2(vec2<i32>(2147483647i, -9342i), vec3<bool>(true, false, false), Struct_1(1i, 2147483647i, 4294967295u, vec4<bool>(false, true, true, true)), Struct_1(-53491i, 20906i, 15219u, vec4<bool>(true, false, false, true))), Struct_2(vec2<i32>(21712i, 1i), vec3<bool>(false, true, true), Struct_1(2147483647i, 11208i, 4294967295u, vec4<bool>(true, true, true, true)), Struct_1(0i, 2147483647i, 71140u, vec4<bool>(false, true, true, true))), Struct_2(vec2<i32>(0i, -54296i), vec3<bool>(true, true, true), Struct_1(-50617i, 12896i, 4294967295u, vec4<bool>(false, false, true, true)), Struct_1(1i, -1i, 4294967295u, vec4<bool>(true, true, true, false))), Struct_2(vec2<i32>(1i, 0i), vec3<bool>(false, true, true), Struct_1(2147483647i, 73849i, 1u, vec4<bool>(false, true, false, true)), Struct_1(-1i, 2147483647i, 37520u, vec4<bool>(true, false, false, true))));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: vec4<i32>) -> Struct_1 {
    global4 = array<Struct_2, 10>();
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.c, arg_0.c) >> (global3.c.c % 32u), 4u)];
    let var_0 = global4[_wgslsmith_index_u32(arg_0.c, 10u)];
    let var_1 = firstTrailingBit(var_0.d.a);
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-607f * 1230f)))))));
    return var_0.d;
}

fn func_3(arg_0: Struct_1) -> i32 {
    global1 = ~func_1(Struct_1(global0.b, -6878i, reverseBits(arg_0.c), arg_0.d), !vec2<bool>(arg_0.d.x, global0.d.x), select(-(vec4<i32>(arg_0.b, 5542i, arg_0.a, global0.a) | vec4<i32>(global3.c.a, global0.a, -12541i, 2147483647i)), vec4<i32>(i32(-1i) * -24006i, ~arg_0.b, arg_0.a, global3.c.a), !global0.d.x), select(select(_wgslsmith_add_vec4_i32(vec4<i32>(17232i, global3.c.a, global0.a, arg_0.b), vec4<i32>(8308i, -1i, 6537i, global3.c.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a, global0.b, global3.d.b, 9020i), vec4<i32>(arg_0.b, -1i, global0.a, global0.a), vec4<i32>(-11496i, global3.d.b, 3023i, global3.c.b)), true || arg_0.d.x), select(~vec4<i32>(global0.b, -1i, global0.b, global0.b), vec4<i32>(global3.d.a, -11061i, global3.c.b, -2147483647i) ^ vec4<i32>(arg_0.a, -37642i, 2147483647i, 20913i), true), _wgslsmith_mult_u32(global0.c, u_input.a.x) > global3.c.c)).c;
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(min(-690f, 365f)), 543f, 689f, -604f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1207f, 2101f, 1067f, 1000f), vec4<f32>(789f, 749f, 1280f, 1000f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-586f, 1016f, 511f, -262f)))))), vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(abs(-329f)), 552f, _wgslsmith_f_op_f32(step(-1421f, -1228f)), -705f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1108f, -690f, -543f, -1472f)))))));
    let var_1 = ~max(_wgslsmith_mod_u32(global3.c.c, u_input.a.x), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(23093u, global0.c, arg_0.c, 32850u)), u_input.a.x));
    global1 = global0.c;
    global4 = array<Struct_2, 10>();
    return -(global3.a.x ^ global3.c.a);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global0.b;
    var var_1 = Struct_2(-abs(_wgslsmith_div_vec2_i32(vec2<i32>(global3.c.b, global0.a) & global3.a, vec2<i32>(global3.c.a, 2147483647i))), vec3<bool>(true, true, true), Struct_1(-func_3(arg_0), _wgslsmith_mod_i32(-(global3.d.a | arg_0.a), -1i), u_input.a.x, select(global3.d.d, select(global3.c.d, select(vec4<bool>(true, global3.b.x, arg_0.d.x, true), arg_0.d, true), true), global3.b.x)), Struct_1(~max(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -12035i, global0.b), vec3<i32>(-20359i, -2147483647i, 32579i)), -global0.b), global0.b, global3.c.c, !select(vec4<bool>(true, false, true, global0.d.x), !vec4<bool>(false, true, global0.d.x, arg_0.d.x), false)));
    let var_2 = Struct_2(vec2<i32>(abs(_wgslsmith_div_i32(-2147483647i, _wgslsmith_add_i32(global3.c.a, var_1.c.b))), _wgslsmith_add_i32(arg_0.b, ~var_1.d.a ^ select(-4992i, 2147483647i, true))), !vec3<bool>(true, true, true || all(vec2<bool>(global0.d.x, global0.d.x))), Struct_1(2147483647i, _wgslsmith_add_i32(global3.a.x & -var_1.a.x, countOneBits(-1i)), func_1(Struct_1(select(0i, global0.b, global0.d.x), arg_0.b | -5246i, 1u, !vec4<bool>(false, false, true, var_1.c.d.x)), !(!vec2<bool>(arg_0.d.x, global3.c.d.x)), select(max(vec4<i32>(var_1.a.x, var_1.c.a, 2147483647i, arg_0.a), vec4<i32>(global3.d.a, 0i, -2147483647i, -1i)), -vec4<i32>(arg_0.a, global3.c.a, -1i, arg_0.a), false), _wgslsmith_sub_vec4_i32(vec4<i32>(56565i, var_1.c.b, var_1.d.b, arg_0.b) << (u_input.a % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b, arg_0.a, var_1.c.a, -29789i), vec4<i32>(global0.b, global3.d.a, global0.b, -2147483647i)))).c, func_1(var_1.d, vec2<bool>(var_1.c.d.x, true), vec4<i32>(_wgslsmith_mult_i32(global3.a.x, 2147483647i), abs(26078i), 1i, -32156i), vec4<i32>(2147483647i, -4156i, var_1.a.x, global3.a.x) ^ vec4<i32>(var_1.c.a, global3.c.a, -10978i, -33739i)).d), func_1(arg_0, vec2<bool>(any(vec3<bool>(var_1.d.d.x, false, global3.b.x)), false), abs(-vec4<i32>(global3.a.x, global3.d.a, 0i, global0.b)) << (vec4<u32>(global0.c, arg_0.c, 10017u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), vec4<i32>(abs(49064i), ~(-2147483647i >> (1u % 32u)), global0.b, -2147483647i)));
    let var_3 = ~firstLeadingBit(vec2<i32>(-var_2.a.x, global0.b)) | min(var_1.a, var_1.a);
    global3 = Struct_2(var_1.a, vec3<bool>(any(vec3<bool>(select(arg_0.d.x, var_1.c.d.x, var_1.d.d.x), all(arg_0.d.wyy), any(var_2.c.d.yxy))), any(var_2.c.d.zz), any(!select(vec2<bool>(global0.d.x, global0.d.x), vec2<bool>(global3.d.d.x, true), false))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(u_input.a.x), global3.c.c), _wgslsmith_mod_vec2_u32(firstLeadingBit(u_input.a.ww), _wgslsmith_clamp_vec2_u32(u_input.a.yx, u_input.a.xw, vec2<u32>(var_1.c.c, 0u)) | abs(u_input.a.xz))), 4u)], func_1(func_1(func_1(func_1(Struct_1(global3.d.b, global0.a, 1u, vec4<bool>(var_2.b.x, true, false, false)), vec2<bool>(false, var_1.c.d.x), vec4<i32>(12994i, global3.a.x, global0.a, -49274i), vec4<i32>(var_2.c.b, -36020i, var_1.a.x, -1i)), global0.d.zx, select(vec4<i32>(175i, 8182i, 1i, -31969i), vec4<i32>(var_1.c.a, -1i, 407i, var_2.c.b), var_1.b.x), vec4<i32>(var_3.x, var_2.a.x, 40313i, -4104i)), vec2<bool>(all(var_1.b.yz), all(var_1.b)), ~vec4<i32>(2147483647i, var_3.x, 51613i, 1476i), vec4<i32>(81962i, abs(-1i), 11738i & arg_0.b, reverseBits(1i))), !select(!vec2<bool>(var_1.b.x, false), vec2<bool>(false, false), arg_0.d.yz), vec4<i32>(-1i) * -(vec4<i32>(13793i, -2147483647i, -13995i, 1431i) << (vec4<u32>(arg_0.c, global3.c.c, var_2.d.c, u_input.a.x) % vec4<u32>(32u))), ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b, global3.a.x, -1i, 6503i), vec4<i32>(35512i, var_3.x, -22330i, var_2.d.a)))));
    return global2[_wgslsmith_index_u32(44963u, 4u)];
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool) -> i32 {
    global0 = Struct_1(~1i, -(~arg_1.c.a), _wgslsmith_clamp_u32(~1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.a.x), min(u_input.a.ww, u_input.a.xx)) ^ func_1(func_1(Struct_1(10615i, arg_0.x, u_input.a.x, vec4<bool>(false, global3.c.d.x, true, false)), vec2<bool>(arg_2, global3.c.d.x), vec4<i32>(global3.d.b, global3.a.x, -1i, global3.c.b), vec4<i32>(arg_1.d.b, -1i, global3.d.b, arg_1.a.x)), global3.c.d.xx, -vec4<i32>(1i, 41973i, 21794i, -5129i), arg_0).c, 0u), global0.d);
    let var_0 = global3.c;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(498f, 1f)), 769f);
    global3 = Struct_2(_wgslsmith_sub_vec2_i32(arg_1.a & select(vec2<i32>(2147483647i, arg_0.x), arg_1.a, !arg_1.b.x), vec2<i32>(global3.c.b, 1i)), vec3<bool>(true, global3.d.d.x, 24767i != var_0.a), Struct_1(-31120i, arg_1.c.a, 4294967295u, func_2(func_2(Struct_1(1i, arg_1.c.b, 33754u, var_0.d))).d), Struct_1(max(~global3.a.x << (_wgslsmith_add_u32(arg_1.c.c, 4294967295u) % 32u), abs(43650i)), var_0.a, var_0.c << (~_wgslsmith_div_u32(52462u, 1u) % 32u), !(!select(var_0.d, global0.d, true))));
    let var_2 = true;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.b, 25425i, global0.b, global3.d.b) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, global0.b, -1i, global3.a.x), vec4<i32>(-72572i, global0.b, global0.a, global3.a.x))) >> (vec4<u32>(1u, ~6019u, 11278u, abs(30255u)) % vec4<u32>(32u)), Struct_2(vec2<i32>(_wgslsmith_div_i32(-1i, 28155i), 8671i), select(!global0.d.xwx, !global3.d.d.wzz, true), Struct_1(global0.b, ~global3.c.a, 0u, select(vec4<bool>(false, global3.d.d.x, global3.b.x, global3.c.d.x), global0.d, global0.d)), func_2(func_1(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], vec2<bool>(global3.b.x, global0.d.x), vec4<i32>(global3.c.b, global0.b, -2147483647i, global0.a), vec4<i32>(0i, -53736i, global0.b, global3.d.a)))), !global0.d.x), global3.d.b >> (select(0u, 18898u, any(global3.d.d)) % 32u), 1u, global3.d.d);
    var var_1 = !global3.d.d.x;
    global4 = array<Struct_2, 10>();
    var var_2 = global0.c;
    let var_3 = _wgslsmith_f_op_f32(-1f);
    let var_4 = Struct_2(-global3.a, var_0.d.zxx, global2[_wgslsmith_index_u32(u_input.a.x, 4u)], func_1(Struct_1(_wgslsmith_clamp_i32(1i, 25724i >> (global0.c % 32u), max(-38963i, global3.a.x)), _wgslsmith_sub_i32(-54253i & global0.b, global0.b), ~(~8830u), vec4<bool>(true, !var_0.d.x, !global0.d.x, var_3 >= -1055f)), select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(Struct_1(-8717i, -2147483647i, 1u, vec4<bool>(false, global0.d.x, global0.d.x, true))).d.xw), ~(~vec4<i32>(1i, global0.b, global0.a, 0i)), abs(vec4<i32>(3657i, ~global3.c.a, -6512i, global0.a >> (u_input.a.x % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(563f * 1000f) - 1390f))), ~(~global0.a));
}

