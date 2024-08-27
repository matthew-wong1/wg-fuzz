struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: array<vec3<f32>, 15>;

var<private> global2: array<Struct_2, 16>;

var<private> global3: array<Struct_1, 24>;

var<private> global4: array<u32, 4>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_1(min(~(-vec2<i32>(4257i, -2147483647i)) ^ _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.d, -37852i), u_input.a.yy), max(arg_0.c.a, vec2<i32>(arg_0.e, 61091i))), _wgslsmith_sub_vec2_i32(~u_input.a.yw, firstTrailingBit(arg_0.c.a)) | (-u_input.a.xz ^ _wgslsmith_add_vec2_i32(u_input.a.xx, arg_0.c.a))));
    let var_1 = vec3<f32>(520f, 502f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a))))));
    global0 = array<Struct_2, 29>();
    var var_2 = vec2<i32>(~abs(arg_0.e), firstLeadingBit(-31132i));
    global1 = array<vec3<f32>, 15>();
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(137f - 854f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a))))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_2 {
    global2 = array<Struct_2, 16>();
    let var_0 = any(select(vec2<bool>(true, any(vec4<bool>(true, true, true, true))), select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, false, true, true)), true), true), true));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1091f, arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 4u)], 29u)]))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1261f, -606f)))))));
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(arg_1.e, ~reverseBits(-12300i)), (u_input.a.x ^ ~u_input.a.x) | u_input.a.x, abs(-11511i >> (global4[_wgslsmith_index_u32(4294967295u, 4u)] % 32u)) | arg_1.c.a.x, abs(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a.x, arg_1.e), arg_1.b))), ~(max(vec4<i32>(2147483647i, u_input.a.x, 655i, -40298i) << (vec4<u32>(u_input.b, global4[_wgslsmith_index_u32(0u, 4u)], 0u, 4294967295u) % vec4<u32>(32u)), select(u_input.a, vec4<i32>(48796i, 1i, 1i, -9076i), false)) >> (firstLeadingBit(abs(vec4<u32>(37299u, 22325u, u_input.b, 63222u))) % vec4<u32>(32u))), firstLeadingBit(~u_input.a));
    let var_3 = Struct_1(_wgslsmith_sub_vec2_i32(countOneBits(u_input.a.yz & vec2<i32>(u_input.a.x, 54727i)), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-42237i, var_2.x), var_2.xz), vec2<i32>(u_input.a.x, u_input.a.x))) | _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_1.c.a, vec2<i32>(1i, var_2.x), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, -5523i), vec2<i32>(arg_1.c.a.x, 0i))), vec2<i32>(0i, -20538i) | -u_input.a.xw));
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    global3 = array<Struct_1, 24>();
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<f32>(577f, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, -962f) - vec4<f32>(-620f, -1596f, arg_0.a, 1014f)) * vec4<f32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a))))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, arg_0.a, 364f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-141f, arg_0.a, 248f, arg_0.a))))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.a, arg_0.a, -501f, arg_0.a))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-254f, -1670f, arg_0.a, -1044f) + vec4<f32>(988f, -310f, arg_0.a, arg_0.a))), func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a, -1000f, -1470f, arg_0.a), vec4<f32>(1073f, arg_0.a, 1267f, arg_0.a))), func_2(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), Struct_2(arg_0.a, -2147483647i, arg_0.c, 1i, 3595i))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_0.a)))), arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -2458f))));
    global4 = array<u32, 4>();
    global1 = array<vec3<f32>, 15>();
    return func_2(vec4<f32>(-1016f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1076f, _wgslsmith_f_op_f32(-280f * arg_0.a), true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a, arg_0.a)))), arg_0.a, -1197f), func_2(vec4<f32>(_wgslsmith_f_op_f32(func_3(func_2(vec4<f32>(var_1.x, -1867f, var_1.x, 1093f), Struct_2(var_1.x, u_input.a.x, Struct_1(vec2<i32>(-1i, arg_0.e)), arg_0.d, 2147483647i)))), 268f, arg_0.a, _wgslsmith_f_op_f32(-var_1.x)), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -138f, -325f, 1021f) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, var_0.a, -267f, var_0.a), vec4<f32>(253f, arg_0.a, 938f, 1053f))), Struct_2(532f, -1i, Struct_1(u_input.a.zw), arg_1.a.x, 38241i)))).a;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: i32) -> vec2<f32> {
    global4 = array<u32, 4>();
    global0 = array<Struct_2, 29>();
    global2 = array<Struct_2, 16>();
    var var_0 = Struct_1(firstTrailingBit(select(vec2<i32>(arg_2 >> (global4[_wgslsmith_index_u32(87428u, 4u)] % 32u), arg_2), u_input.a.xz, true)));
    global1 = array<vec3<f32>, 15>();
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, 1466f) + vec4<f32>(arg_0, 152f, arg_0, arg_0)), global2[_wgslsmith_index_u32(min(56989u, 4294967295u), 16u)]), global3[_wgslsmith_index_u32(u_input.b, 24u)])), _wgslsmith_f_op_f32(-arg_0)) * vec2<f32>(-140f, arg_0));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.b), 16u)];
    var var_1 = !select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), (var_0.b < -21344i) && false));
    var_1 = !select(vec2<bool>(var_1.x, all(vec2<bool>(true, true))), vec2<bool>(any(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), true), vec2<bool>(true, var_1.x));
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_1.a, -1237f, -930f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, -583f, 481f, arg_1.a))))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-362f, var_0.a, 1266f, arg_1.a)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1073f, var_0.a, 1000f, arg_1.a))))), func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -1629f, 264f, -680f))), vec4<f32>(1422f, var_0.a, var_0.a, arg_0.x)), func_2(vec4<f32>(var_0.a, -158f, -879f, arg_1.a), arg_1)))).c;
    var var_3 = var_1.x;
    return ~global4[_wgslsmith_index_u32(0u, 4u)];
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    global4 = array<u32, 4>();
    let var_0 = Struct_1(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(608f, arg_1.x, arg_1.x, -416f))), global2[_wgslsmith_index_u32(~(global4[_wgslsmith_index_u32(firstLeadingBit(47764u), 4u)] ^ u_input.b), 16u)]).c.a);
    let var_1 = select(vec3<bool>(select(true, !all(vec2<bool>(false, false)), !all(vec3<bool>(false, true, true))), !all(vec3<bool>(false, true, false)), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~0u, 4u)], 4u)], 4u)] <= u_input.b), select(vec3<bool>(false, true, true), vec3<bool>(true, any(vec2<bool>(true, true)), true), true), true);
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(arg_1.x, 296f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(exp2(arg_1.x))))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1016f, arg_1.x, 903f, 575f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -1007f, arg_1.x, -1303f))) - vec4<f32>(_wgslsmith_f_op_f32(arg_1.x + arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -726f), _wgslsmith_div_f32(arg_1.x, arg_1.x))), global2[_wgslsmith_index_u32(~u_input.b, 16u)])).c;
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(714f, 944f, -710f, 944f))))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, var_1.x)))) * _wgslsmith_f_op_f32(sign(-588f))), min(-var_2.a.x, ~arg_2.a.x), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -382f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-174f, arg_1.x, -1493f, arg_1.x) + vec4<f32>(arg_1.x, 238f, arg_1.x, 326f))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -108f), arg_2.a.x, Struct_1(u_input.a.wy), 28211i, _wgslsmith_dot_vec3_i32(u_input.a.wzy, u_input.a.yzy))).c, -(~arg_2.a.x >> (~u_input.b % 32u)), arg_0.a.x)).c;
    return func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x) + vec4<f32>(arg_1.x, -958f, arg_1.x, -530f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(535f, arg_1.x, 401f, arg_1.x))))))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 904f, arg_1.x, 695f) + vec4<f32>(-408f, 285f, arg_1.x, -1474f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-283f, -3114f, arg_1.x, arg_1.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-1512f - 1699f), 1f, _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(10070u, 29u)])), arg_1.x)), global0[_wgslsmith_index_u32(4294967295u, 29u)])).c;
}

fn func_7(arg_0: vec3<i32>, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global4 = array<u32, 4>();
    let var_0 = Struct_1(arg_3.a);
    global1 = array<vec3<f32>, 15>();
    var var_1 = 1u;
    var var_2 = reverseBits(u_input.a);
    return func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(-235f, false, var_0.a.x)).x) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1166f, 1456f)))), _wgslsmith_f_op_vec2_f32(func_1(666f, true, _wgslsmith_add_i32(reverseBits(var_2.x), var_0.a.x))).x, _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_f32(round(461f)), _wgslsmith_sub_i32(var_2.x, var_0.a.x), func_2(vec4<f32>(462f, 665f, -127f, 2531f), global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(57777u, 4u)], 16u)]).c, 1i, 29395i))), 1079f), Struct_2(1000f, _wgslsmith_dot_vec2_i32(-var_0.a, select(func_2(vec4<f32>(-528f, -1460f, -673f, -342f), global2[_wgslsmith_index_u32(arg_2, 16u)]).c.a, vec2<i32>(1i, 39191i), true)), arg_3, ~_wgslsmith_sub_i32(-2147483647i, firstLeadingBit(2147483647i)), reverseBits(-(~var_0.a.x)))).c;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 24>();
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 16u)];
    let var_1 = true;
    global2 = array<Struct_2, 16>();
    let var_2 = func_7(~(-select(vec3<i32>(2147483647i, -46858i, var_0.b), vec3<i32>(12150i, var_0.b, 27202i), false)), u_input.b, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(52824u, global4[_wgslsmith_index_u32(54601u, 4u)], u_input.b), abs(vec3<u32>(0u, 66839u, u_input.b))), func_6(global3[_wgslsmith_index_u32(func_5(_wgslsmith_f_op_vec2_f32(func_1(var_0.a, var_1, u_input.a.x ^ -40181i)), Struct_2(var_0.a, 1i, var_0.c, max(36619i, 1i), 2147483647i)), 24u)], _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-745f, var_0.a) - vec2<f32>(-1000f, var_0.a)), vec2<f32>(var_0.a, var_0.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-134f, -1857f) - vec2<f32>(1732f, -643f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a)), true))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1251f, var_0.a, var_0.a, -1207f) + vec4<f32>(247f, -1521f, -1686f, var_0.a))), Struct_2(_wgslsmith_f_op_f32(min(var_0.a, var_0.a)), 23415i, func_2(vec4<f32>(-169f, var_0.a, var_0.a, var_0.a), Struct_2(-582f, 12138i, Struct_1(u_input.a.wz), var_0.b, var_0.d)).c, var_0.d, ~var_0.d)).c));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, -17625i, -51232i), var_0.e, 50244i << (global4[_wgslsmith_index_u32(0u, 4u)] % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, -20781i, -43146i), vec4<i32>(45014i, -64031i, u_input.a.x, -23046i))), vec3<i32>(var_2.a.x, -max(-1i, var_2.a.x), u_input.a.x));
}

