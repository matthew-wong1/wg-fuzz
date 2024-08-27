struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = ~(~min(~(~vec3<u32>(4294967295u, 0u, 15274u)), vec3<u32>(~24583u, 1u, ~0u)));
    var var_1 = Struct_1(u_input.a.yxx);
    let var_2 = select(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))), select(vec4<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(1u, 8u)])), any(vec2<bool>(true, true)), ~arg_0 >= _wgslsmith_sub_i32(global0.a.x, u_input.b), false), vec4<bool>(select(true, true, true), true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), true), var_0.x != _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 1u), _wgslsmith_mult_vec2_u32(var_0.yx, var_0.yz))), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true), all(vec4<bool>(false, true, false, false)))));
    let var_3 = Struct_1((firstLeadingBit(global0.a) << (~vec3<u32>(27198u, 12730u, 81050u) % vec3<u32>(32u))) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0.x, 70084u, 14423u) & _wgslsmith_sub_vec3_u32(vec3<u32>(33245u, var_0.x, var_0.x), vec3<u32>(24344u, var_0.x, var_0.x)), ~vec3<u32>(1u, 0u, var_0.x), vec3<u32>(1u ^ var_0.x, ~13240u, reverseBits(14292u))) % vec3<u32>(32u)));
    var_0 = _wgslsmith_add_vec3_u32(select(~_wgslsmith_mult_vec3_u32(vec3<u32>(66655u, 12512u, 4294967295u), vec3<u32>(0u, var_0.x, 1u)) ^ vec3<u32>(4294967295u, 4294967295u, var_0.x), ~(~(~vec3<u32>(39697u, var_0.x, var_0.x))), !select(select(vec3<bool>(true, true, var_2.x), var_2.yzy, true), vec3<bool>(true, var_2.x, true), !global1[_wgslsmith_index_u32(var_0.x, 8u)])), ~(~firstLeadingBit(vec3<u32>(var_0.x, var_0.x, 6375u))));
    return 0u;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2223f)));
    let var_1 = Struct_1(abs(global0.a | u_input.a.xxx));
    let var_2 = Struct_2(var_1.a.x, u_input.a);
    let var_3 = vec4<bool>(!(func_3(global0.a.x) >= countOneBits(4294967295u)) || (-(~(-2147483647i)) > var_1.a.x), true, !(!select(true, any(global1[_wgslsmith_index_u32(0u, 8u)]), true)), any(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(false, false))));
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = Struct_1(reverseBits(arg_1.b.yww) >> (firstTrailingBit(vec3<u32>(74881u, select(42634u, 4294967295u, false), 1897u)) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-850f, -272f, -1044f) - vec3<f32>(1000f, 786f, -912f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-645f, 981f, -810f), vec3<f32>(-2470f, -308f, 731f)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -862f), _wgslsmith_f_op_f32(trunc(1607f)), _wgslsmith_f_op_f32(f32(-1f) * -1697f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -638f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-120f)) - 737f), _wgslsmith_f_op_f32(f32(-1f) * -207f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -559f) + -1470f) - _wgslsmith_f_op_f32(f32(-1f) * -560f))));
    let var_2 = Struct_2(77371i, max(-vec4<i32>(-1i, 14947i, 6044i, -28472i), _wgslsmith_add_vec4_i32(vec4<i32>(82462i, arg_0.b.x, 0i, u_input.a.x), ~vec4<i32>(-2147483647i, arg_0.b.x, u_input.a.x, u_input.a.x))) | -u_input.a);
    let var_3 = var_0.a;
    var var_4 = _wgslsmith_f_op_f32(-var_1.x);
    return _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-765f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x * 1734f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1243f - _wgslsmith_f_op_f32(max(1107f, var_1.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -403f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x)))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<bool>) -> Struct_2 {
    global0 = Struct_1(u_input.a.yyw);
    global0 = Struct_1(global0.a);
    let var_0 = ~_wgslsmith_clamp_u32(~(~_wgslsmith_mod_u32(13246u, 32766u)), 4294967295u, 20876u);
    var var_1 = 1f;
    global0 = Struct_1(u_input.a.zzw);
    return func_2(func_2(func_2(func_2(func_2(Struct_2(u_input.b, u_input.a), global0.a.xz, vec4<f32>(241f, arg_0.x, arg_0.x, 1582f), var_0), -vec2<i32>(u_input.b, -2147483647i), vec4<f32>(arg_0.x, arg_0.x, 890f, arg_0.x), var_0), countOneBits(reverseBits(global0.a.xz)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1733f, arg_0.x, -1386f, arg_0.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1000f, arg_0.x, arg_0.x))), ~(~4294967295u)), u_input.c, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1746f + arg_0.x)), _wgslsmith_f_op_f32(abs(1f))), ~39601u), max(-countOneBits(select(global0.a.zz, vec2<i32>(-60522i, 1i), vec2<bool>(arg_1.x, arg_1.x))), vec2<i32>(u_input.c.x, ~global0.a.x) & ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(global0.a.x, u_input.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1531f)), -839f)), _wgslsmith_f_op_f32(arg_0.x + arg_0.x), -475f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1342f)))) - _wgslsmith_f_op_vec4_f32(floor(arg_0))), 1u);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, ~1u, ~4294967295u, ~4294967295u), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(1u, 12954u, 1284u, 0u), vec4<u32>(81331u, 8743u, 1u, 4294967295u)), ~vec4<u32>(25217u, 4294967295u, 15177u, 29543u), ~vec4<u32>(0u, 6661u, 1u, 167u))), select(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(_wgslsmith_mod_u32(0u, 21380u), 1u, ~32406u, _wgslsmith_sub_u32(32624u, 16552u)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(26030u, 1u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 19975u), vec4<u32>(3982u, 0u, 58274u, 53152u)), vec4<u32>(1u, 1u, 1u, 1u)), !(u_input.c.x > u_input.a.x)), all(vec3<bool>(false, true, true)) || true));
    global0 = Struct_1(arg_0.a);
    let var_1 = Struct_2(arg_0.a.x, -(~select(arg_1.b, firstLeadingBit(vec4<i32>(global0.a.x, -1i, 2147483647i, arg_1.b.x)), vec4<bool>(false, true, false, true))));
    global0 = arg_0;
    let var_2 = Struct_2(~min(-1i, 42428i), select(~vec4<i32>(~global0.a.x, i32(-1i) * -31694i, abs(-81868i), countOneBits(arg_1.b.x)), vec4<i32>(_wgslsmith_div_i32(-arg_0.a.x, -907i), ~(-1i), max(arg_1.b.x, -arg_1.a), func_5(vec4<f32>(1148f, 119f, 312f, 336f), vec4<bool>(true, true, true, true)).a), vec4<bool>(select(true, true, true), any(vec3<bool>(true, true, true)), false || select(true, true, false), any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)))));
    return arg_0;
}

fn func_7(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> Struct_1 {
    let var_0 = func_6(func_6(func_6(Struct_1(vec3<i32>(13793i, arg_0.a.x, 47634i)), func_5(vec4<f32>(1366f, -679f, 669f, 292f), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true))), func_2(func_2(Struct_2(-2147483647i, u_input.a), arg_0.a.yy, _wgslsmith_f_op_vec4_f32(vec4<f32>(837f, -1433f, -780f, 380f) + vec4<f32>(2174f, -863f, 320f, -531f)), arg_1 ^ 4294967295u), arg_0.a.yz, vec4<f32>(-858f, _wgslsmith_f_op_f32(163f * 1258f), _wgslsmith_div_f32(470f, -204f), _wgslsmith_f_op_f32(min(-737f, 222f))), 69057u)), func_5(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-665f - -1136f), _wgslsmith_f_op_f32(round(1572f)), _wgslsmith_div_f32(1000f, -1844f), -141f), vec4<f32>(_wgslsmith_f_op_f32(round(-398f)), _wgslsmith_f_op_f32(-1725f - 675f), _wgslsmith_f_op_vec4_f32(func_4(Struct_2(-1i, vec4<i32>(60450i, arg_0.a.x, global0.a.x, -3724i)), Struct_2(-2147483647i, u_input.a))).x, _wgslsmith_div_f32(433f, 1539f)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false), true))), vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), false, true, true)));
    var var_1 = func_2(Struct_2(-1i, ~vec4<i32>(-36498i, firstTrailingBit(2147483647i), func_2(Struct_2(2147483647i, vec4<i32>(-14956i, arg_0.a.x, global0.a.x, -49299i)), vec2<i32>(var_0.a.x, -2147483647i), vec4<f32>(-387f, -278f, -713f, -583f), 4294967295u).a, 2147483647i)), -vec2<i32>(49257i, min(_wgslsmith_mod_i32(24475i, global0.a.x), ~(-2147483647i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 147f, -629f, -630f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(-1000f, 344f, 2718f, 1671f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1189f, _wgslsmith_f_op_f32(sign(1022f)), _wgslsmith_f_op_f32(round(732f)), _wgslsmith_f_op_f32(1846f * 1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_2(var_0.a.x, u_input.a), Struct_2(16402i, u_input.a))))))), arg_1);
    var var_2 = ~select(-(func_2(Struct_2(arg_0.a.x, vec4<i32>(-1i, 0i, u_input.b, -11853i)), vec2<i32>(global0.a.x, u_input.b), vec4<f32>(2928f, 132f, 138f, -1105f), arg_1).a & 19867i), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(-5491i, -10827i, global0.a.x, 2147483647i), vec4<i32>(23317i, var_0.a.x, var_0.a.x, var_0.a.x)) >> (firstTrailingBit(26327u) % 32u)), _wgslsmith_f_op_f32(-444f + _wgslsmith_f_op_vec4_f32(func_4(Struct_2(var_0.a.x, var_1.b), Struct_2(71429i, vec4<i32>(0i, 18031i, 0i, 86456i)))).x) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-271f)) - _wgslsmith_f_op_f32(min(900f, 1466f))));
    global1 = array<vec3<bool>, 8>();
    let var_3 = Struct_2(i32(-1i) * -_wgslsmith_mod_i32(var_1.b.x | u_input.a.x, -arg_0.a.x), u_input.a);
    return Struct_1(arg_0.a & (vec3<i32>(~var_3.b.x, var_1.b.x, select(var_1.b.x, 1i, false)) | var_0.a));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: bool) -> Struct_1 {
    let var_0 = 8716u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-997f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -860f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(467f * -2622f)))));
    global0 = func_7(func_6(Struct_1(global0.a), func_5(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(arg_0, vec4<i32>(arg_0, arg_0, arg_0, u_input.a.x)), func_2(Struct_2(0i, vec4<i32>(global0.a.x, u_input.a.x, arg_0, u_input.b)), vec2<i32>(arg_0, 5463i), vec4<f32>(990f, 1125f, arg_1.x, arg_1.x), 4294967295u))), !(!vec4<bool>(true, false, true, arg_3)))), func_3(u_input.b), ~24844u);
    var var_2 = !global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(min(min(arg_2.x, arg_2.x), select(34967u, 47499u, true)), _wgslsmith_mult_u32(71970u, _wgslsmith_add_u32(arg_2.x, var_0))), 8u)];
    let var_3 = Struct_1(vec3<i32>(-1i) * -(max(vec3<i32>(u_input.b, global0.a.x, -1i), u_input.a.wzy) | (global0.a | vec3<i32>(u_input.c.x, arg_0, arg_0))));
    return func_7(var_3, var_0, 29502u);
}

fn func_8(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = func_7(func_6(func_1(firstTrailingBit(2147483647i | arg_3.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(570f, arg_1, 1767f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -386f, 733f) * vec3<f32>(319f, arg_1, -147f))), max(~vec4<u32>(74557u, 17364u, 1u, 7469u), vec4<u32>(1u, 8704u, 4294967295u, 0u)), false), func_5(vec4<f32>(-744f, _wgslsmith_f_op_f32(floor(-248f)), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1293f)), vec4<bool>(true, all(global1[_wgslsmith_index_u32(4294967295u, 8u)]), true, select(true, true, true)))), ~reverseBits(39984u), _wgslsmith_dot_vec2_u32(~vec2<u32>(abs(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(72814u, 100388u), vec2<u32>(1u, 21070u))), vec2<u32>(1u, 1u)));
    let var_1 = firstLeadingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(func_6(func_1(-1i, vec3<f32>(-562f, arg_1, 836f), vec4<u32>(0u, 10173u, 1u, 4294967295u), false), arg_3).a.xx, u_input.c, reverseBits(vec2<i32>(42629i, arg_3.b.x))), vec2<i32>(33181i, _wgslsmith_div_i32(1i, ~arg_3.a))));
    var_0 = func_1(arg_0.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.x, arg_2.x, 380f))))) - vec3<f32>(-316f, -1350f, arg_2.x))), ~(~(~firstLeadingBit(vec4<u32>(50607u, 1u, 52524u, 1u)))), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true)));
    global1 = array<vec3<bool>, 8>();
    let var_2 = ~vec2<i32>(arg_3.a, var_1.x);
    return Struct_1(-_wgslsmith_sub_vec3_i32(arg_3.b.xyz, arg_0.a & _wgslsmith_mod_vec3_i32(vec3<i32>(arg_3.a, 0i, 0i), vec3<i32>(-16713i, var_0.a.x, 47272i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global0.a.x, max(vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(1i, 1i), max(-1i, global0.a.x) ^ 1i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a.x, 80692i, -1611i)), global0.a)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a.x, u_input.b, u_input.c.x, 28594i), -u_input.a, _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global0.a.x, u_input.b, -25706i), vec4<i32>(-2147483647i, u_input.a.x, global0.a.x, 24723i)))));
    var var_1 = func_8(func_1(_wgslsmith_mult_i32(-33553i, ~var_0.a), vec3<f32>(1f, 1f, 1f), vec4<u32>(abs(abs(4294967295u)), ~(~4294967295u), ~select(38448u, 0u, true), abs(1u)), true), -1093f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-775f, -1062f)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-587f, _wgslsmith_f_op_f32(-1477f * 534f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-164f, 727f))), vec2<bool>(true, true)))), func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1354f, 385f, -857f, 1000f) * vec4<f32>(-1172f, -677f, 924f, 1116f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(845f, -1317f, 693f, -213f), vec4<f32>(824f, -615f, -394f, 2210f))))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(3635f, -1569f, 1108f, -602f)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)));
    let var_2 = Struct_2(countOneBits(-(~var_1.a.x) ^ ~global0.a.x), firstTrailingBit(vec4<i32>(var_1.a.x, select(var_1.a.x & 1i, -1i, true), ~_wgslsmith_div_i32(global0.a.x, -1i), u_input.b)));
    global1 = array<vec3<bool>, 8>();
    var_1 = func_6(func_6(func_1(firstTrailingBit(u_input.c.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1429f), _wgslsmith_f_op_f32(floor(-1223f)), _wgslsmith_f_op_vec4_f32(func_4(Struct_2(2147483647i, vec4<i32>(var_1.a.x, u_input.c.x, global0.a.x, -35524i)), var_2)).x), max(vec4<u32>(0u, 62265u, 26266u, 0u), ~vec4<u32>(99966u, 92738u, 13839u, 19714u)), any(vec3<bool>(false, true, true))), var_2), func_2(func_2(var_2, func_2(Struct_2(var_0.a, vec4<i32>(var_1.a.x, var_0.a, global0.a.x, 1335i)), var_0.b.xx | vec2<i32>(global0.a.x, -19620i), _wgslsmith_f_op_vec4_f32(func_4(var_2, Struct_2(var_0.b.x, var_0.b))), _wgslsmith_add_u32(0u, 0u)).b.xy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(185f, 1768f, 212f, 511f), vec4<f32>(172f, -420f, -1430f, -2142f)))), _wgslsmith_mod_u32(~99451u, ~8016u)), vec2<i32>(i32(-1i) * -var_1.a.x, -1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(185f, 1246f, 494f, 488f), _wgslsmith_f_op_vec4_f32(vec4<f32>(124f, -419f, 246f, -1946f) + vec4<f32>(-568f, -124f, -715f, 1415f))) - vec4<f32>(403f, _wgslsmith_f_op_f32(-416f - -164f), -1726f, _wgslsmith_f_op_f32(select(486f, 811f, false)))), ~reverseBits(_wgslsmith_add_u32(35833u, 25157u))));
    let var_3 = max(abs(_wgslsmith_sub_vec2_i32(select(var_1.a.yx, -var_2.b.yy, select(false, true, true)), u_input.c)), var_0.b.ww >> (~(~vec2<u32>(43816u, 41936u)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(1000f * -145f), _wgslsmith_f_op_f32(677f + -178f), -1089f))), vec3<f32>(581f, 795f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-288f, -1343f)))), select(global1[_wgslsmith_index_u32(~1u, 8u)], vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), global1[_wgslsmith_index_u32(1u, 8u)], false), vec3<bool>(true, true, true), true)))), func_2(var_2, vec2<i32>(abs(countOneBits(var_1.a.x)), i32(-1i) * -var_1.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1179f + -208f), _wgslsmith_f_op_f32(-1329f - 114f), _wgslsmith_f_op_f32(select(1980f, 882f, true)), _wgslsmith_f_op_f32(-1466f * -811f))), _wgslsmith_sub_u32(~1u, ~abs(1u))).b.zyx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-547f))));
}

