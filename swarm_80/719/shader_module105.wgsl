struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 21> = array<f32, 21>(-296f, -571f, -1147f, -825f, 785f, 1239f, 689f, -311f, 198f, 143f, -1693f, -1725f, -857f, -298f, 347f, -334f, -611f, 519f, 1560f, 817f, -911f);

var<private> global2: bool = false;

var<private> global3: vec4<i32> = vec4<i32>(-6168i, 72208i, -9096i, 2147483647i);

var<private> global4: i32 = -57291i;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> vec4<u32> {
    var var_0 = false;
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(~31594u), 21u)] - global1[_wgslsmith_index_u32(firstTrailingBit(~u_input.b.x), 21u)]), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.e, 2107f)))))), -min(firstTrailingBit(-3851i), arg_0), global0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a, 2247f))), 877f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) + 965f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-173f)) * _wgslsmith_div_f32(189f, -1000f))), global0.b, -40286i, -u_input.a.wxy, _wgslsmith_f_op_f32(1065f * global0.a)), Struct_2(13857i), u_input.b.wx, Struct_1(global0.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, 402f)), vec2<f32>(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 21u)])), _wgslsmith_f_op_f32(abs(777f)))), countOneBits(1500i), reverseBits(~vec3<i32>(30185i, -1i, arg_0) | _wgslsmith_div_vec3_i32(global3.zyx, vec3<i32>(-1i, u_input.a.x, arg_0))), global1[_wgslsmith_index_u32(50274u, 21u)]));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e, var_1.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1072f))));
    var var_3 = 41201u;
    var var_4 = Struct_3(var_1.b, Struct_1(-1211f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e.e, var_2.x))), _wgslsmith_div_i32(-3842i, i32(-1i) * -u_input.a.x), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, -28733i, global0.c) & vec3<i32>(arg_0, -57483i, -60701i), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, global0.d.x), vec3<i32>(1i, arg_0, u_input.a.x))), _wgslsmith_mult_vec3_i32(max(u_input.a.ywy, vec3<i32>(1i, -1i, var_1.b.d.x)), vec3<i32>(global0.c, 46693i, arg_0))), var_1.b.e), Struct_2(i32(-1i) * -global0.c), u_input.b.yx, var_1.e);
    return vec4<u32>(u_input.b.x, u_input.b.x, abs(firstLeadingBit(var_4.d.x) << (17742u % 32u)), u_input.b.x) & ~_wgslsmith_mult_vec4_u32(u_input.b & vec4<u32>(var_1.d.x, u_input.b.x, u_input.b.x, var_1.d.x), u_input.b);
}

fn func_2(arg_0: i32, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(arg_0, _wgslsmith_mod_i32(arg_1, -29322i), ~(-2147483647i), -27820i), ~vec4<i32>(_wgslsmith_add_i32(arg_1, 2147483647i), countOneBits(-15510i), -global3.x, global3.x)), u_input.a);
    global0 = Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b))), arg_1, vec3<i32>(global3.x, -abs(~(-24774i)), -2147483647i), global0.a);
    var var_1 = ((_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, arg_1, -2147483647i, arg_0), vec4<i32>(1i, 1i, global3.x, global0.d.x)) & vec4<i32>(abs(global3.x), _wgslsmith_sub_i32(21033i, global0.c), _wgslsmith_mult_i32(27500i, global3.x), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -63578i), vec2<i32>(29599i, u_input.a.x)))) << (func_3(var_0.x) % vec4<u32>(32u))) >> (select(~(~vec4<u32>(44026u, u_input.b.x, 42695u, 1u) & (vec4<u32>(u_input.b.x, 42583u, u_input.b.x, u_input.b.x) | u_input.b)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x), u_input.b) | ~_wgslsmith_div_vec4_u32(vec4<u32>(8681u, 1u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 27353u, 21289u, u_input.b.x)), true) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -566f) + -763f)))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-702f, _wgslsmith_f_op_f32(trunc(global0.a))))), _wgslsmith_f_op_vec2_f32(-global0.b), -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(global3.x, u_input.a.x, global0.c, var_1.x) ^ u_input.a), ~_wgslsmith_div_vec4_i32(u_input.a, u_input.a)), -vec3<i32>(-32613i >> (abs(u_input.b.x) % 32u), u_input.a.x, ~abs(global3.x)), global0.a);
    return 1i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    global3 = reverseBits(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(24781i, arg_0.c, max(1i, -2147483647i), firstLeadingBit(-2147483647i))), vec4<i32>(-1i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(-1i, arg_1.e.c, 1i), global0.c), firstLeadingBit(~arg_1.b.d.x), 13596i)));
    global3 = vec4<i32>(10961i, u_input.a.x, arg_1.c.a, _wgslsmith_mod_i32(~(_wgslsmith_dot_vec4_i32(vec4<i32>(30712i, 2147483647i, 2147483647i, 1i), vec4<i32>(arg_0.c, 44043i, -27223i, 2147483647i)) & (arg_1.e.c | -2147483647i)), _wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i, _wgslsmith_mod_i32(u_input.a.x, -20004i)), u_input.a.x)));
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-2096f)))), global0.b, _wgslsmith_div_i32(arg_0.c, -51926i) | _wgslsmith_div_i32(arg_1.a.c, ~global0.c), vec3<i32>(global3.x >> (arg_1.d.x % 32u), _wgslsmith_sub_i32(-58590i, 0i), select(~2147483647i, global0.c, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(111074u, 21u)] * global0.e)))), arg_0, arg_1.c, max(arg_1.d, vec2<u32>(1u, reverseBits(~6444u))), arg_1.a);
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -496f);
    return Struct_3(arg_0, arg_1.e, arg_1.c, var_0.d, arg_1.a);
}

fn func_5(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = abs(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d.x, ~0u), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.xy, vec2<u32>(4294967295u, arg_0)), _wgslsmith_div_vec2_u32(arg_1.d, vec2<u32>(1u, 57296u)), arg_1.d))));
    global3 = u_input.a;
    var var_1 = reverseBits(arg_1.e.c);
    var var_2 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(343f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1016f))), i32(-1i) * -2147483647i, select(arg_1.e.d, ~global0.d, vec3<bool>(any(vec2<bool>(true, false)), all(vec3<bool>(true, true, true)), select(false, true, true))), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.b.x, 21u)]))), arg_1).b;
    var_1 = -1i;
    return arg_1.b;
}

fn func_1() -> bool {
    global0 = func_5(_wgslsmith_mod_u32(~u_input.b.x, ~(~(~8556u))), func_4(Struct_1(_wgslsmith_f_op_f32(ceil(-560f)), global0.b, func_2(global0.d.x, 2129i), ~_wgslsmith_add_vec3_i32(vec3<i32>(global3.x, 2147483647i, -9973i), vec3<i32>(1i, 0i, 26690i)), _wgslsmith_f_op_f32(max(-1037f, _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(61178u, 21u)], 746f, false))))), Struct_3(Struct_1(global0.e, _wgslsmith_f_op_vec2_f32(-global0.b), countOneBits(global3.x), global3.yyw, _wgslsmith_div_f32(-399f, -375f)), Struct_1(_wgslsmith_f_op_f32(min(134f, global1[_wgslsmith_index_u32(u_input.b.x, 21u)])), vec2<f32>(-1152f, -999f), global0.d.x, global0.d | vec3<i32>(-35836i, 1i, 0i), 1411f), Struct_2(-32063i), vec2<u32>(0u, 4294967295u) | firstLeadingBit(vec2<u32>(u_input.b.x, 14479u)), Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(-global0.b), -u_input.a.x, abs(u_input.a.zzx), -1000f))));
    let var_0 = select(select(vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), true), !vec2<bool>(any(vec3<bool>(false, false, true)), false), all(vec2<bool>(true, all(vec4<bool>(false, false, true, true))))), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), global1[_wgslsmith_index_u32(u_input.b.x, 21u)] >= 1897f)), true), !any(vec2<bool>(true, true)));
    var var_1 = vec4<bool>(!(any(vec4<bool>(false, false, true, false)) & var_0.x), true, !(u_input.b.x == func_4(Struct_1(global1[_wgslsmith_index_u32(1u, 21u)], vec2<f32>(1000f, global0.e), global3.x, vec3<i32>(global3.x, -53006i, 36131i), -1241f), Struct_3(Struct_1(global0.a, vec2<f32>(global0.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), 66689i, global3.zwy, 1036f), Struct_1(global0.a, vec2<f32>(1000f, global0.b.x), global0.c, vec3<i32>(1i, 45743i, u_input.a.x), global1[_wgslsmith_index_u32(33762u, 21u)]), Struct_2(u_input.a.x), vec2<u32>(4294967295u, 4294967295u), Struct_1(global0.e, global0.b, 30858i, u_input.a.yzx, 1095f))).d.x) | !(!(var_0.x || false)), var_0.x);
    global2 = all(!select(var_1.xy, select(!var_1.wz, vec2<bool>(true, var_1.x), any(var_1.yyz)), select(var_1.yx, !vec2<bool>(var_0.x, false), global0.c <= 2147483647i)));
    let var_2 = global0.c & select(global0.c >> (~(~25206u) % 32u), firstLeadingBit(global0.c), !all(!vec4<bool>(var_0.x, var_1.x, true, var_1.x)));
    return !(all(!select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(true, var_1.x, var_0.x, false), vec4<bool>(true, var_0.x, true, var_1.x))) & any(var_1.xzw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.x & min(abs(-26236i), -17246i);
    let var_1 = (select(true, func_1(), true) & any(vec2<bool>(false, true))) && !(!(!(u_input.b.x > 20288u)));
    global3 = u_input.a;
    let var_2 = func_4(Struct_1(938f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, global1[_wgslsmith_index_u32(u_input.b.x, 21u)]) - vec2<f32>(-123f, -191f))) + _wgslsmith_f_op_vec2_f32(-global0.b)), ~max(global3.x, ~global0.d.x), select(-(global0.d & global3.yxy), ~vec3<i32>(-31922i, global0.c, -2147483647i), var_1), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 21u)])))))), func_4(func_4(func_4(func_5(1u, Struct_3(Struct_1(-624f, vec2<f32>(global0.a, global1[_wgslsmith_index_u32(19792u, 21u)]), 0i, vec3<i32>(18725i, 1i, 31313i), global1[_wgslsmith_index_u32(32462u, 21u)]), Struct_1(global1[_wgslsmith_index_u32(1u, 21u)], vec2<f32>(-2410f, -606f), global0.c, vec3<i32>(global3.x, global3.x, global0.c), 1701f), Struct_2(2147483647i), vec2<u32>(u_input.b.x, 4294967295u), Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], global0.b, -12505i, vec3<i32>(u_input.a.x, 11130i, -2147483647i), global1[_wgslsmith_index_u32(u_input.b.x, 21u)]))), func_4(Struct_1(global0.b.x, global0.b, global0.c, global3.wwy, global0.e), Struct_3(Struct_1(global1[_wgslsmith_index_u32(0u, 21u)], vec2<f32>(919f, -138f), global0.c, vec3<i32>(1i, global3.x, 2147483647i), -264f), Struct_1(-981f, global0.b, -1i, vec3<i32>(-2147483647i, 60583i, -2147483647i), global0.b.x), Struct_2(2147483647i), u_input.b.zz, Struct_1(global0.b.x, global0.b, global3.x, global3.zyx, global1[_wgslsmith_index_u32(u_input.b.x, 21u)])))).b, Struct_3(func_5(u_input.b.x, Struct_3(Struct_1(global0.b.x, vec2<f32>(1589f, global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), global3.x, vec3<i32>(global3.x, u_input.a.x, -3635i), global0.e), Struct_1(1212f, vec2<f32>(global0.b.x, 1328f), -2147483647i, u_input.a.xyx, global0.b.x), Struct_2(3476i), vec2<u32>(13868u, u_input.b.x), Struct_1(1351f, global0.b, global0.c, vec3<i32>(-1i, 0i, global0.d.x), global0.a))), func_4(Struct_1(global1[_wgslsmith_index_u32(37543u, 21u)], global0.b, -19964i, vec3<i32>(u_input.a.x, global0.c, global0.c), global1[_wgslsmith_index_u32(4342u, 21u)]), Struct_3(Struct_1(-159f, vec2<f32>(-851f, global0.b.x), 36012i, vec3<i32>(global3.x, 2147483647i, -2147483647i), global1[_wgslsmith_index_u32(1u, 21u)]), Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], vec2<f32>(global0.a, 1040f), global0.d.x, u_input.a.zzx, -1414f), Struct_2(-14909i), vec2<u32>(4294967295u, u_input.b.x), Struct_1(-266f, vec2<f32>(global1[_wgslsmith_index_u32(1065u, 21u)], global0.a), -2147483647i, global3.wzx, global0.a))).e, Struct_2(12377i), vec2<u32>(24881u, 4294967295u), func_4(Struct_1(global0.e, vec2<f32>(-192f, global0.b.x), 2147483647i, global0.d, 374f), Struct_3(Struct_1(188f, global0.b, global3.x, u_input.a.wzw, global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), Struct_1(-240f, vec2<f32>(global0.b.x, 338f), -15077i, vec3<i32>(global0.d.x, -32367i, global3.x), global0.a), Struct_2(global3.x), u_input.b.zw, Struct_1(-2287f, global0.b, u_input.a.x, vec3<i32>(global0.d.x, global3.x, 2147483647i), -567f))).e)).a, func_4(func_4(func_5(u_input.b.x, Struct_3(Struct_1(global1[_wgslsmith_index_u32(0u, 21u)], vec2<f32>(-3188f, global0.e), 11026i, global0.d, 451f), Struct_1(1536f, vec2<f32>(global0.b.x, 226f), 1i, global0.d, global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), Struct_2(2147483647i), vec2<u32>(u_input.b.x, u_input.b.x), Struct_1(1364f, global0.b, -2147483647i, vec3<i32>(global0.c, global3.x, global0.c), -1469f))), Struct_3(Struct_1(825f, global0.b, global3.x, vec3<i32>(global3.x, 21989i, global3.x), 399f), Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], vec2<f32>(global0.a, global0.b.x), -31564i, vec3<i32>(27603i, global0.d.x, global3.x), global0.a), Struct_2(-53141i), u_input.b.yy, Struct_1(679f, global0.b, 20038i, u_input.a.ywx, global0.b.x))).b, func_4(Struct_1(-1249f, vec2<f32>(1207f, -319f), 2147483647i, global3.zww, global0.a), Struct_3(Struct_1(global0.b.x, global0.b, 9062i, vec3<i32>(global3.x, u_input.a.x, -21419i), global1[_wgslsmith_index_u32(1u, 21u)]), Struct_1(-717f, global0.b, 0i, global3.yxy, global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), Struct_2(13654i), u_input.b.wy, Struct_1(global0.e, global0.b, global3.x, vec3<i32>(global3.x, -2147483647i, global0.c), 613f))))));
    var var_3 = reverseBits(~countOneBits(vec4<u32>(var_2.d.x, 4294967295u, var_2.d.x, 3372u)) | ~(~min(u_input.b, vec4<u32>(u_input.b.x, 1u, 0u, 0u))));
    var_0 = func_4(func_5(1u, func_4(var_2.b, func_4(var_2.a, func_4(var_2.a, Struct_3(var_2.a, var_2.a, Struct_2(-1i), var_2.d, Struct_1(-1265f, global0.b, global3.x, global0.d, global0.a)))))), var_2).e.d.x;
    let var_4 = Struct_2(func_2(_wgslsmith_div_i32(1i, -1i), -1i) | var_2.c.a);
    global0 = Struct_1(global0.a, vec2<f32>(1312f, -1556f), _wgslsmith_sub_i32(_wgslsmith_div_i32(-10655i, var_2.b.d.x & var_2.c.a) << (firstLeadingBit(_wgslsmith_div_u32(var_2.d.x, var_3.x)) % 32u), countOneBits(_wgslsmith_clamp_i32(_wgslsmith_div_i32(39746i, -1i), -37488i, _wgslsmith_sub_i32(37862i, 0i)))), -max(vec3<i32>(~(-11983i), var_4.a, global0.d.x), -u_input.a.yyx & select(vec3<i32>(0i, 2147483647i, -31204i), var_2.e.d, vec3<bool>(true, var_1, var_1))), _wgslsmith_f_op_f32(f32(-1f) * -1097f));
    var var_5 = 32068i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1443f, 477f, 1000f, 1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2.b.a, global0.a, var_2.a.b.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2074f, global1[_wgslsmith_index_u32(var_3.x, 21u)], -279f, var_2.e.e))), (_wgslsmith_div_i32(-15505i, global0.c) >> (_wgslsmith_mult_u32(var_3.x, u_input.b.x) % 32u)) > _wgslsmith_dot_vec2_i32(-global0.d.zy, vec2<i32>(global0.c, global3.x)))));
}

