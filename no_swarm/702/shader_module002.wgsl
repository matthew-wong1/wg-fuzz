struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(3430u, 19899u, 44909u), vec3<u32>(59457u, 4294967295u, 0u), vec3<u32>(4294967295u, 28056u, 71707u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 1u, 1526u), vec3<u32>(113142u, 152380u, 25807u), vec3<u32>(1u, 357u, 1u), vec3<u32>(26465u, 0u, 1u), vec3<u32>(0u, 13426u, 0u), vec3<u32>(1u, 0u, 31146u), vec3<u32>(42558u, 1u, 2707u), vec3<u32>(39793u, 109178u, 1u), vec3<u32>(1u, 1u, 9361u), vec3<u32>(30457u, 4294967295u, 0u), vec3<u32>(38517u, 0u, 44618u), vec3<u32>(7787u, 16321u, 1u), vec3<u32>(19638u, 39615u, 1u), vec3<u32>(9198u, 0u, 46228u));

var<private> global2: array<vec3<bool>, 29>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1449f, _wgslsmith_f_op_f32(f32(-1f) * -1145f), 1489f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -194f)), -505f, -509f))));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = vec3<i32>(-(~_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(0i, 2147483647i, u_input.b.x, u_input.b.x)), ~vec4<i32>(u_input.b.x, 34955i, u_input.b.x, u_input.b.x))), -2147483647i, -1i);
    global0 = vec3<bool>((u_input.d.x >> (~(u_input.a.x ^ 41723u) % 32u)) >= _wgslsmith_mod_u32(firstLeadingBit(~4294967295u), _wgslsmith_div_u32(reverseBits(1u), 19810u)), true, any(vec4<bool>(u_input.d.x > u_input.a.x, u_input.d.x > _wgslsmith_clamp_u32(15055u, u_input.d.x, u_input.a.x), all(vec4<bool>(false, arg_0, arg_0, global0.x)), !all(vec4<bool>(global0.x, arg_0, false, global0.x)))));
    global1 = array<vec3<u32>, 18>();
    var var_1 = global0.x && all(select(select(vec4<bool>(false, global0.x, global0.x, global0.x), !vec4<bool>(arg_0, global0.x, global0.x, true), vec4<bool>(true, false, false, true)), vec4<bool>(any(vec3<bool>(arg_0, arg_0, false)), !global0.x, true, global0.x), any(select(global2[_wgslsmith_index_u32(u_input.d.x, 29u)], global2[_wgslsmith_index_u32(u_input.c.x, 29u)], vec3<bool>(global0.x, false, arg_0)))));
    global2 = array<vec3<bool>, 29>();
    return ~min(u_input.c.x, u_input.d.x);
}

fn func_2(arg_0: f32, arg_1: bool) -> vec4<f32> {
    global0 = global2[_wgslsmith_index_u32(4294967295u, 29u)];
    let var_0 = vec3<u32>(~(~(~u_input.c.x)), u_input.a.x, ~(~_wgslsmith_div_u32(0u, u_input.d.x))) | select(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 0u, 13012u), firstTrailingBit(u_input.d))), firstLeadingBit(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 16116u, 88008u), vec3<u32>(0u, u_input.d.x, 30419u), global1[_wgslsmith_index_u32(4294967295u, 18u)])), func_4(!arg_1, _wgslsmith_f_op_vec3_f32(func_3(33964i, Struct_1(u_input.d.x, true), global0.x, Struct_1(u_input.c.x, true))), -545f, arg_0) >= _wgslsmith_div_u32(select(u_input.a.x, 22467u, global0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(u_input.c.x, 4294967295u))));
    var var_1 = Struct_1(var_0.x, !any(vec4<bool>(false, global0.x, global0.x, true)));
    global2 = array<vec3<bool>, 29>();
    var var_2 = abs(_wgslsmith_clamp_vec2_u32(~var_0.yx, vec2<u32>(1u, ~(~var_1.a)), _wgslsmith_div_vec2_u32(select(~var_0.zz, _wgslsmith_clamp_vec2_u32(u_input.d.yx, vec2<u32>(var_1.a, 41051u), u_input.d.zy), var_1.b), var_0.yy)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -233f, arg_0, -430f))), vec4<f32>(_wgslsmith_f_op_f32(arg_0 + 451f), _wgslsmith_f_op_f32(-603f + -207f), arg_0, _wgslsmith_f_op_f32(345f + arg_0))))));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: u32, arg_3: vec2<f32>) -> u32 {
    global0 = select(vec3<bool>(all(select(!vec4<bool>(false, global0.x, false, global0.x), select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(true, true, true, true), vec4<bool>(global0.x, global0.x, global0.x, false)), false)), !(u_input.a.x >= max(115912u, arg_2)), false), !(!select(select(vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x)), vec3<bool>(global0.x, false, global0.x), global2[_wgslsmith_index_u32(527u, 29u)])), vec3<bool>(_wgslsmith_clamp_u32(~arg_0.x, countOneBits(u_input.a.x), 4294967295u) > ~_wgslsmith_mult_u32(arg_0.x, arg_2), (i32(-1i) * -17307i) == ~reverseBits(u_input.b.x), -max(1i, u_input.b.x) < countOneBits(-30895i)));
    let var_0 = _wgslsmith_f_op_vec4_f32(-arg_1);
    let var_1 = Struct_1(arg_0.x, arg_0.x <= arg_2);
    global0 = vec3<bool>(true, any(vec2<bool>(any(select(vec3<bool>(true, false, true), global2[_wgslsmith_index_u32(45823u, 29u)], var_1.b)), var_1.b)), any(global0.zx));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -852f, var_0.x, 202f)) * vec4<f32>(arg_3.x, -1611f, -442f, _wgslsmith_f_op_f32(-var_0.x)))))));
    return 26296u;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = arg_2;
    var var_1 = ~(~(firstTrailingBit(35478u) >> (~arg_2.a % 32u))) ^ ~37095u;
    var_0 = arg_2;
    var var_2 = func_5(firstTrailingBit(u_input.a), _wgslsmith_f_op_vec4_f32(func_2(805f, all(!vec4<bool>(true, arg_0.e.b, arg_1.b, arg_0.b.x)))), var_0.a, _wgslsmith_f_op_vec2_f32(-arg_0.d));
    let var_3 = firstTrailingBit(53720u) << (_wgslsmith_add_u32(~(~1u), u_input.d.x) % 32u);
    return -16249i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.c.x, false & global0.x);
    let var_1 = -(-1i & countOneBits(func_1(Struct_2(true, vec2<bool>(true, global0.x), 1455f, vec2<f32>(145f, -232f), Struct_1(45829u, false)), Struct_1(u_input.c.x, global0.x), Struct_1(var_0.a, global0.x)))) | (_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-2147483647i, 2147483647i), _wgslsmith_clamp_i32(u_input.b.x, -28968i, u_input.b.x), 1i), vec3<i32>(u_input.b.x, u_input.b.x << (1u % 32u), 1i)) >> (select(u_input.d.x ^ _wgslsmith_mult_u32(1u, u_input.d.x), u_input.a.x, true) % 32u));
    global2 = array<vec3<bool>, 29>();
    let var_2 = Struct_2(true, global0.xy, _wgslsmith_f_op_f32(f32(-1f) * -1414f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(707f, 882f))))), Struct_1(countOneBits(_wgslsmith_add_u32(~u_input.d.x, ~var_0.a)), all(!(!vec2<bool>(false, global0.x)))));
    var var_3 = ~firstTrailingBit(_wgslsmith_mult_u32(~var_2.e.a, _wgslsmith_div_u32(0u, var_0.a) ^ _wgslsmith_div_u32(60582u, 21183u)));
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~_wgslsmith_div_u32(var_0.a, _wgslsmith_add_u32(var_2.e.a, var_0.a))), u_input.a.x, func_5(~u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-142f, -646f, -995f, var_2.d.x)) + _wgslsmith_f_op_vec4_f32(func_2(-152f, global0.x))), 4294967295u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.d - vec2<f32>(-164f, var_2.c)), vec2<f32>(-2178f, _wgslsmith_f_op_f32(var_2.d.x * var_2.d.x))))), 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i ^ -var_1, vec3<i32>(-1i) * -u_input.b, ~(~var_2.e.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(688f, _wgslsmith_f_op_f32(1000f - -2271f)))), _wgslsmith_f_op_vec3_f32(func_3(i32(-1i) * -1i, var_2.e, any(!(!vec3<bool>(false, var_4.x, var_2.e.b))), Struct_1(firstLeadingBit(var_2.e.a), any(var_2.b)))).x);
}

