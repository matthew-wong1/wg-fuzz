struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<bool> {
    global0 = array<u32, 7>();
    var var_0 = Struct_2(Struct_1(vec3<bool>((global0[_wgslsmith_index_u32(4294967295u, 7u)] >= global0[_wgslsmith_index_u32(0u, 7u)]) && true, true, true), u_input.a.x), Struct_1(select(select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), select(false, true, false)), vec3<bool>(true, true, true), true | any(vec4<bool>(false, true, false, true))), u_input.a.x), Struct_1(vec3<bool>(!all(vec3<bool>(false, true, false)), true, _wgslsmith_div_u32(18377u, u_input.d) <= ~59788u), _wgslsmith_dot_vec3_i32(reverseBits(u_input.a.yzy), u_input.a.zzw)), Struct_1(vec3<bool>(false, true, true), abs(-min(-1i, u_input.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(309f, -1000f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-952f, 583f)))))));
    let var_1 = Struct_3(~1u);
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.e.x - -375f), _wgslsmith_f_op_f32(max(var_0.e.x, var_0.e.x)))), _wgslsmith_div_f32(844f, var_0.e.x)), 1219f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.e.x, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1608f)))), vec3<f32>(var_0.e.x, 727f, var_0.e.x), true)), select(vec3<bool>(!var_0.c.a.x, var_0.d.a.x, false), !select(vec3<bool>(var_0.d.a.x, var_0.b.a.x, false), var_0.d.a, !var_0.c.a), !(!vec3<bool>(var_0.d.a.x, var_0.c.a.x, var_0.d.a.x)))));
    global0 = array<u32, 7>();
    return select(var_0.b.a, select(vec3<bool>(true, false, var_0.d.a.x), select(select(vec3<bool>(var_0.b.a.x, false, false), var_0.a.a, !var_0.c.a), vec3<bool>(-1i != var_0.d.b, var_0.d.a.x, var_0.b.a.x), true), vec3<bool>(true, true, var_0.d.a.x)), select(select(var_0.a.a, !vec3<bool>(true, var_0.c.a.x, var_0.c.a.x), all(!var_0.b.a.yz)), select(vec3<bool>(true, true, true), var_0.d.a, any(var_0.c.a.yx)), vec3<bool>(var_0.a.a.x, var_0.c.a.x, true)));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> Struct_1 {
    global0 = array<u32, 7>();
    var var_0 = ~(~firstTrailingBit(max(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39940u, 7u)], 7u)], global0[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]), vec3<u32>(709u, u_input.d, 44072u)) | vec3<u32>(1u, global0[_wgslsmith_index_u32(43864u, 7u)], 21943u)));
    var var_1 = Struct_2(Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), -2147483647i), Struct_1(func_3(), -2147483647i), Struct_1(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), -23059i), Struct_1(vec3<bool>(true, true, true), select(41881i, ~(-2147483647i) >> ((var_0.x << (1u % 32u)) % 32u), _wgslsmith_f_op_f32(ceil(1356f)) < _wgslsmith_f_op_f32(max(-329f, -1008f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1174f, 433f) + vec2<f32>(-1029f, 2486f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(115f, -801f)))), vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, 1185f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1536f, 1168f)))));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(~firstLeadingBit(85530u), ~1u & ~u_input.d, ~(~26355u)), select(max(vec3<u32>(1u, global0[_wgslsmith_index_u32(var_0.x, 7u)], 44280u), vec3<u32>(34270u, u_input.d, u_input.d)) >> (select(vec3<u32>(var_0.x, global0[_wgslsmith_index_u32(38816u, 7u)], 36064u), vec3<u32>(0u, global0[_wgslsmith_index_u32(u_input.d, 7u)], 74452u), true) % vec3<u32>(32u)), ~(vec3<u32>(33619u, global0[_wgslsmith_index_u32(var_0.x, 7u)], 1u) ^ vec3<u32>(4294967295u, var_0.x, var_0.x)), var_1.d.a.x)) < _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(0u, 7u)]), _wgslsmith_mod_u32(56673u, ~(~var_0.x)));
    var var_3 = Struct_3(~0u);
    return var_1.d;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_3 {
    global0 = array<u32, 7>();
    let var_0 = !arg_2.x;
    var var_1 = var_0;
    var_1 = true;
    var var_2 = func_2(max(vec4<i32>(i32(-1i) * -1866i, 1i, _wgslsmith_sub_i32(-12125i, 0i), -2147483647i), -vec4<i32>(u_input.c, -12333i, 2147483647i, arg_1.b)) | vec4<i32>(u_input.a.x, -u_input.c, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.ww, vec2<i32>(1i, u_input.a.x)), -vec2<i32>(u_input.a.x, u_input.b)), _wgslsmith_div_i32(29528i, _wgslsmith_clamp_i32(u_input.a.x, 2147483647i, -1023i))), (_wgslsmith_sub_i32(arg_1.b, 16002i) ^ firstLeadingBit(2147483647i)) ^ u_input.c);
    return arg_0;
}

fn func_1(arg_0: i32, arg_1: u32) -> bool {
    var var_0 = func_4(Struct_3(abs(4294967295u & (u_input.d << (global0[_wgslsmith_index_u32(4294967295u, 7u)] % 32u)))), func_2(u_input.a, ~2147483647i), vec2<bool>(true, true), Struct_2(func_2(~vec4<i32>(arg_0, 0i, -30159i, arg_0), -abs(24097i)), Struct_1(vec3<bool>(true, true, true), arg_0), func_2(select(~u_input.a, u_input.a, true), -arg_0), Struct_1(func_2(countOneBits(u_input.a), 1i).a, -16267i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(ceil(-427f))))));
    var_0 = func_4(Struct_3(~firstTrailingBit(~arg_1)), Struct_1(!select(vec3<bool>(true, true, true), func_2(u_input.a, 21764i).a, u_input.c <= u_input.a.x), -firstTrailingBit(arg_0 | -26829i)), !(!vec2<bool>(true, u_input.a.x < 20538i)), Struct_2(Struct_1(vec3<bool>(all(vec4<bool>(false, true, false, false)), func_3().x, false), -273i), func_2(~countOneBits(vec4<i32>(u_input.a.x, 2147483647i, u_input.c, 0i)), ~u_input.a.x), Struct_1(vec3<bool>(true, true, true), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, arg_0, arg_0, 1i)) ^ arg_0), func_2(u_input.a, ~u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(140f, 1050f))))));
    let var_1 = vec3<u32>(global0[_wgslsmith_index_u32(~var_0.a, 7u)], _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, ~1u, _wgslsmith_div_u32(4294967295u, 38573u)), vec3<u32>(var_0.a << (38568u % 32u), 49234u, ~0u) & _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 0u, u_input.d), vec3<u32>(var_0.a, 4294967295u, 4294967295u)), ~vec3<u32>(1u, arg_1, arg_1))), abs(countOneBits(_wgslsmith_div_u32(arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(15042u, 29966u, global0[_wgslsmith_index_u32(u_input.d, 7u)], arg_1), vec4<u32>(27970u, arg_1, 70939u, 87157u))))));
    let var_2 = true;
    var var_3 = select(1i ^ (2147483647i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c, arg_0), u_input.a.xzz)), _wgslsmith_add_i32(-u_input.c, ~(-2147483647i) << (_wgslsmith_dot_vec2_u32(var_1.zz, var_1.yx) % 32u)), any(!(!vec4<bool>(var_2, var_2, var_2, true))));
    return arg_0 <= -48918i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(select(vec3<bool>(true, true, any(vec4<bool>(false, true, true, true))), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), true), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), vec3<bool>(true, false, false), func_1(32560i, 58972u)), true), _wgslsmith_mult_i32(0i, u_input.b));
    var var_1 = 1512f;
    var var_2 = func_2(-vec4<i32>(2147483647i, u_input.c, _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, u_input.a.x), min(var_0.b, 2147483647i)), _wgslsmith_mod_i32(-33249i, -1i) & u_input.c), _wgslsmith_mult_i32(u_input.b, var_0.b));
    let var_3 = _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(u_input.a.xwy, ~_wgslsmith_add_vec3_i32(u_input.a.zxy, vec3<i32>(-2147483647i, var_0.b, 1i))), vec3<i32>((i32(-1i) * -28545i) & -var_0.b, 1i, u_input.a.x) & _wgslsmith_clamp_vec3_i32(firstTrailingBit(select(vec3<i32>(var_0.b, var_0.b, var_2.b), vec3<i32>(var_2.b, u_input.a.x, u_input.c), var_0.a.x)), firstLeadingBit(firstLeadingBit(vec3<i32>(u_input.c, 0i, -37549i))), -vec3<i32>(-1989i, u_input.c, u_input.a.x)));
    let var_4 = vec4<u32>(~(~24836u), ~0u, 1u, _wgslsmith_dot_vec3_u32(~(countOneBits(vec3<u32>(u_input.d, 0u, 1u)) & _wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(u_input.d, 7u)], 1u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], u_input.d, u_input.d))), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 4715u, global0[_wgslsmith_index_u32(77767u, 7u)]) ^ vec3<u32>(global0[_wgslsmith_index_u32(58566u, 7u)], 12829u, u_input.d), vec3<u32>(u_input.d, u_input.d, global0[_wgslsmith_index_u32(1u, 7u)]) >> (vec3<u32>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(u_input.d, 7u)], 48267u) % vec3<u32>(32u))), firstTrailingBit(~vec3<u32>(u_input.d, u_input.d, u_input.d)), select(~vec3<u32>(u_input.d, 30472u, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 32221u, 37959u), vec3<u32>(24344u, 4294967295u, 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 7u)], 7u)], 2184u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11592u, 7u)], 7u)])), func_2(vec4<i32>(-2147483647i, -2147483647i, var_0.b, var_3), -52595i).a))));
    var var_5 = (i32(-1i) * -1i) | u_input.c;
    var var_6 = vec4<i32>(_wgslsmith_sub_i32(-26698i, abs(~u_input.a.x)) & var_0.b, ~u_input.a.x, u_input.c, min(-7131i & (var_0.b << (firstLeadingBit(u_input.d) % 32u)), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~(~var_4.x), ~(~1u)), var_4.x, 1u, -807f, ~_wgslsmith_add_i32(~(~var_6.x), max(-25064i, u_input.a.x)));
}

