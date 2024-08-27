struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(true, true, false, true, true, false, false, true, true, false);

var<private> global1: vec3<f32> = vec3<f32>(-402f, -162f, 1000f);

var<private> global2: array<bool, 24> = array<bool, 24>(false, true, true, false, false, false, false, false, true, true, true, true, true, false, false, false, true, true, true, true, false, false, false, true);

var<private> global3: bool;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32, arg_1: i32) -> bool {
    global3 = 716f >= _wgslsmith_f_op_f32(-1149f * _wgslsmith_f_op_f32(round(1839f)));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(round(943f)));
    let var_0 = max(reverseBits(select(vec2<u32>(u_input.a.x, select(u_input.a.x, u_input.a.x, true)), countOneBits(vec2<u32>(u_input.a.x, u_input.b) & vec2<u32>(63781u, u_input.b)), !(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], true)))), ~(reverseBits(u_input.a.ww) ^ ~vec2<u32>(u_input.a.x, 4294967295u)));
    let var_1 = Struct_2(Struct_1(countOneBits(reverseBits(vec4<u32>(u_input.a.x, var_0.x, u_input.b, var_0.x))) >> (u_input.a % vec4<u32>(32u)), !vec4<bool>(global2[_wgslsmith_index_u32(~u_input.b, 24u)], global2[_wgslsmith_index_u32(u_input.a.x, 24u)] | true, all(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 10u)])), any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(313f + -495f), _wgslsmith_f_op_f32(f32(-1f) * -1249f), 340f))), _wgslsmith_mult_vec3_u32(~(~u_input.a.xyw) << (u_input.a.xwx % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(u_input.a.zwy, ~vec3<u32>(var_0.x, 4294967295u, var_0.x) >> (vec3<u32>(var_0.x, 48179u, 4294967295u) % vec3<u32>(32u)), select(u_input.a.wwz, firstLeadingBit(u_input.a.ywx), !vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(38592u, 10u)], false)))));
    var var_2 = Struct_4(var_1.a, var_1, select(select(vec4<bool>(global0[_wgslsmith_index_u32(abs(var_0.x), 10u)], all(var_1.a.b.yz), true, true), select(!var_1.a.b, select(var_1.a.b, vec4<bool>(global2[_wgslsmith_index_u32(42987u, 24u)], true, true, global0[_wgslsmith_index_u32(7776u, 10u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 10u)], global0[_wgslsmith_index_u32(3879u, 10u)], global2[_wgslsmith_index_u32(0u, 24u)])), true), select(var_1.a.b, select(vec4<bool>(false, true, var_1.a.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 10u)], false), var_1.a.b), select(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(var_0.x, 24u)], var_1.a.b.x), var_1.a.b, true))), !select(vec4<bool>(true, var_1.a.b.x, true, false), !var_1.a.b, any(var_1.a.b.yzw)), true), Struct_3(Struct_1(~var_1.a.a, select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 24u)], var_1.a.b.x, true, global2[_wgslsmith_index_u32(u_input.b, 24u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 10u)], false, var_1.a.b.x, global0[_wgslsmith_index_u32(1829u, 10u)]), !var_1.a.b), vec4<f32>(global1.x, -1047f, _wgslsmith_f_op_f32(max(arg_0, -1000f)), _wgslsmith_div_f32(913f, -132f))), Struct_1(var_1.a.a, vec4<bool>(arg_1 < -2147483647i, true, true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, global1.x, global1.x, var_1.a.c.x))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, global1.x, arg_0, global1.x), vec4<f32>(arg_0, -711f, -1055f, -838f))))), var_1, Struct_2(var_1.a, _wgslsmith_mult_vec3_u32(select(var_1.b, vec3<u32>(18000u, 1u, var_1.a.a.x), var_1.a.b.ywy), _wgslsmith_mult_vec3_u32(var_1.a.a.zwx, var_1.b))), 51165u));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> vec3<f32> {
    var var_0 = -_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec3_i32(min(-vec3<i32>(33315i, -2147483647i, 1i), ~vec3<i32>(-21046i, 2147483647i, -96425i)), vec3<i32>(~(-78450i), 22836i, -2147483647i)));
    global2 = array<bool, 24>();
    let var_1 = Struct_3(arg_0, arg_2.c.a, arg_2.c, Struct_2(Struct_1(arg_2.a.a, select(!arg_2.d.a.b, vec4<bool>(false, true, global0[_wgslsmith_index_u32(arg_2.e, 10u)], false), arg_1), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, arg_2.d.a.c.x, -160f, arg_2.b.c.x) - vec4<f32>(global1.x, 188f, arg_0.c.x, arg_0.c.x)), vec4<f32>(-1000f, global1.x, arg_0.c.x, -818f)))), abs(reverseBits(arg_2.a.a.yxy))), _wgslsmith_clamp_u32(~1u, reverseBits(u_input.a.x), _wgslsmith_mod_u32(~0u, 1u)));
    let var_2 = arg_2.c;
    var var_3 = Struct_1(~arg_0.a, vec4<bool>(true, all(vec2<bool>(false, var_1.a.b.x)), var_2.a.b.x, true), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_2.c.a.c.x, _wgslsmith_f_op_f32(arg_2.d.a.c.x * -944f))), 425f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(247f - var_2.a.c.x)))), -143f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(498f, _wgslsmith_f_op_f32(-var_1.d.a.c.x))))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_3.c.x)), _wgslsmith_f_op_f32(-arg_2.c.a.c.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.b.c.x), 327f))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.a.c.x), _wgslsmith_f_op_f32(max(var_3.c.x, -1954f))), arg_0.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.d.a.c.x), -627f)))), _wgslsmith_f_op_vec3_f32(exp2(arg_2.b.c.wyw)));
}

fn func_2() -> u32 {
    global1 = _wgslsmith_f_op_vec3_f32(func_4(Struct_1(~(~abs(u_input.a)), vec4<bool>(false, false, !(!global2[_wgslsmith_index_u32(0u, 24u)]), func_3(global1.x, 13338i) | global2[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(829f, 440f, global1.x, global1.x))))))), false, Struct_3(Struct_1(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(38711u, u_input.b, u_input.a.x, 4294967295u)), u_input.a ^ vec4<u32>(4294967295u, 4294967295u, 0u, u_input.a.x), u_input.a << (vec4<u32>(u_input.b, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(u_input.b, 10u)]), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 24u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 24u)], false), global2[_wgslsmith_index_u32(u_input.a.x ^ u_input.b, 24u)]), vec4<f32>(-2634f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.x, _wgslsmith_f_op_f32(max(global1.x, -452f)))), Struct_1(~vec4<u32>(u_input.b, u_input.a.x, 0u, u_input.b), !select(vec4<bool>(global0[_wgslsmith_index_u32(76032u, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)], true), vec4<bool>(global0[_wgslsmith_index_u32(13394u, 10u)], global2[_wgslsmith_index_u32(u_input.b, 24u)], false, global2[_wgslsmith_index_u32(u_input.b, 24u)]), global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x), -1142f, -1358f)), Struct_2(Struct_1(vec4<u32>(u_input.b, 4294967295u, 1132u, u_input.a.x), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], true), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -733f, 1272f) + vec4<f32>(-1000f, global1.x, 1083f, global1.x))), ~vec3<u32>(37892u, 4294967295u, u_input.b)), Struct_2(Struct_1(~u_input.a, select(vec4<bool>(global2[_wgslsmith_index_u32(108111u, 24u)], global2[_wgslsmith_index_u32(u_input.b, 24u)], global2[_wgslsmith_index_u32(u_input.b, 24u)], global2[_wgslsmith_index_u32(33856u, 24u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(u_input.b, 10u)], false), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(0u, 24u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1131f, global1.x, global1.x))), vec3<u32>(u_input.a.x >> (4294967295u % 32u), u_input.b, u_input.a.x & 41168u)), u_input.a.x)));
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(~_wgslsmith_clamp_i32(max(0i, -15831i), ~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(14572i, 1i, -23930i), vec3<i32>(2147483647i, 1i, 1i))), _wgslsmith_clamp_i32(firstLeadingBit(1i), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -53227i), -vec2<i32>(-62450i, 1i)))), countOneBits(-10106i));
    let var_1 = Struct_3(Struct_1(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, firstTrailingBit(u_input.a)), vec4<bool>(false, true, 114657u < _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, global1.x, 531f, global1.x), vec4<f32>(global1.x, global1.x, -1000f, -730f)))))), Struct_1(_wgslsmith_sub_vec4_u32(~(u_input.a >> (vec4<u32>(u_input.a.x, 37060u, u_input.b, 74006u) % vec4<u32>(32u))), min(~vec4<u32>(u_input.b, 0u, u_input.a.x, u_input.a.x), ~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a.x))), !(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(u_input.b, 24u)], true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1042f, global1.x, 1078f, global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -795f, 198f, 1650f))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-619f, -397f, -697f, 1385f), vec4<f32>(global1.x, global1.x, 727f, global1.x), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(u_input.b, 10u)], false))), _wgslsmith_div_vec4_f32(vec4<f32>(468f, 382f, global1.x, global1.x), vec4<f32>(global1.x, 1283f, -1590f, 482f)))))), Struct_2(Struct_1(~min(u_input.a, u_input.a), vec4<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(11061u, 24u)], true, true, false)), true, 1u <= u_input.a.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(41199u, 4294967295u, u_input.b, u_input.b), u_input.a), 10u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-883f, global1.x, -1323f, 1574f), vec4<f32>(global1.x, -896f, global1.x, global1.x)) - vec4<f32>(-608f, global1.x, 426f, -2271f))), vec3<u32>(u_input.a.x, 1u, _wgslsmith_dot_vec3_u32(select(u_input.a.zwx, vec3<u32>(4294967295u, u_input.b, 0u), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(u_input.b, 10u)])), u_input.a.xww))), Struct_2(Struct_1(select(vec4<u32>(10772u, 96046u, 4294967295u, 40770u), u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(26677u, 10u)], false, global2[_wgslsmith_index_u32(11542u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 10u)])), vec4<bool>(global0[_wgslsmith_index_u32(~1u, 10u)], global2[_wgslsmith_index_u32(u_input.b, 24u)] & global0[_wgslsmith_index_u32(12547u, 10u)], all(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(5226u, 24u)])), global1.x <= global1.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 1050f, 807f) - vec4<f32>(-510f, global1.x, 375f, global1.x))))), _wgslsmith_div_vec3_u32(vec3<u32>(abs(70228u), u_input.b, u_input.a.x), vec3<u32>(1419u, u_input.a.x, _wgslsmith_mod_u32(u_input.b, 19946u)))), 31681u ^ u_input.b);
    var var_2 = 64636u;
    let var_3 = 1434u;
    return ~var_1.e;
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = global0[_wgslsmith_index_u32(select(22871u, func_2(), true), 10u)];
    global3 = global0[_wgslsmith_index_u32(u_input.b, 10u)];
    global1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-817f, _wgslsmith_f_op_f32(f32(-1f) * -1231f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -472f) - 842f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(319f, 1572f, 814f) + vec3<f32>(-1451f, 1231f, 1227f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-765f, -652f, 825f) * vec3<f32>(-277f, 1000f, global1.x))) * vec3<f32>(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(u_input.a, vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 10u)], true, global2[_wgslsmith_index_u32(4294967295u, 24u)]), vec4<f32>(global1.x, -544f, global1.x, 760f)), false, Struct_3(Struct_1(var_0, vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 24u)], global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec4<f32>(global1.x, 1719f, -1048f, global1.x)), Struct_1(u_input.a, vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 10u)], true, global2[_wgslsmith_index_u32(u_input.b, 24u)]), vec4<f32>(1009f, -1111f, global1.x, -1405f)), Struct_2(Struct_1(vec4<u32>(4294967295u, u_input.b, u_input.a.x, 31831u), vec4<bool>(global0[_wgslsmith_index_u32(0u, 10u)], true, global0[_wgslsmith_index_u32(4294967295u, 10u)], true), vec4<f32>(-303f, 1885f, global1.x, 1546f)), vec3<u32>(8083u, 1u, 1613u)), Struct_2(Struct_1(u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(0u, 10u)], true, true, false), vec4<f32>(1443f, 603f, global1.x, global1.x)), vec3<u32>(0u, u_input.a.x, 0u)), 1u))).x, 1588f, _wgslsmith_div_f32(674f, global1.x)))), vec3<f32>(_wgslsmith_f_op_f32(max(-755f, _wgslsmith_f_op_f32(2821f + _wgslsmith_div_f32(global1.x, global1.x)))), global1.x, global1.x)));
    let var_2 = Struct_3(Struct_1(u_input.a, vec4<bool>(true, true, true, true), vec4<f32>(global1.x, global1.x, global1.x, 466f)), Struct_1(vec4<u32>(_wgslsmith_sub_u32(~23914u, firstLeadingBit(0u)), abs(~21939u), _wgslsmith_add_u32(1u, ~u_input.b), ~(var_0.x ^ var_0.x)), select(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(u_input.b, 10u)], true)), vec4<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], false)), true, !global2[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(~var_0.x, 10u)]), all(select(vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 10u)], global2[_wgslsmith_index_u32(var_0.x, 24u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 10u)], global2[_wgslsmith_index_u32(u_input.b, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(453f, -358f, global1.x, global1.x) + vec4<f32>(1011f, global1.x, global1.x, global1.x)))))), Struct_2(Struct_1(u_input.a, vec4<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u | var_0.x, 10u)], false), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -350f), global1.x, _wgslsmith_f_op_f32(-global1.x), global1.x)), abs(u_input.a.yzx)), Struct_2(Struct_1(~u_input.a, !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(var_0.x, 24u)], true, true), vec4<f32>(731f, global1.x, _wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_div_f32(global1.x, -234f))), select(var_0.xxx, abs(select(vec3<u32>(var_0.x, 44753u, 4294967295u), var_0.yww, false)), global0[_wgslsmith_index_u32(54885u, 10u)])), 4294967295u);
    return Struct_1(vec4<u32>(_wgslsmith_mod_u32(~var_0.x, 4294967295u), _wgslsmith_mod_u32(var_2.c.a.a.x, _wgslsmith_div_u32(106154u | var_2.e, var_0.x >> (1u % 32u))), u_input.a.x ^ var_0.x, var_0.x), !select(var_2.b.b, vec4<bool>(true, var_2.a.a.x <= 31488u, any(vec2<bool>(var_2.b.b.x, global2[_wgslsmith_index_u32(var_2.e, 24u)])), !global2[_wgslsmith_index_u32(u_input.b, 24u)]), select(true, global0[_wgslsmith_index_u32(40641u, 10u)], true)), vec4<f32>(-429f, _wgslsmith_f_op_f32(f32(-1f) * -760f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.c.x - global1.x)), 192f))));
}

fn func_5(arg_0: Struct_4, arg_1: u32) -> Struct_1 {
    var var_0 = -327f;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(107f, _wgslsmith_f_op_f32(arg_0.d.a.c.x + arg_0.b.a.c.x), _wgslsmith_div_f32(2040f, global1.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 1420f) + vec3<f32>(-313f, global1.x, global1.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(947f, -1000f, global1.x)))))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.a.a.x, ~23857u), 10u)];
    global3 = false;
    var var_3 = firstLeadingBit(~0i);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_4(func_1(), Struct_2(Struct_1(~u_input.a, !vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a.x, 24u)], global2[_wgslsmith_index_u32(u_input.a.x, 24u)]), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 695f, global1.x, -1646f), vec4<f32>(global1.x, global1.x, 1000f, 224f))), ~(~vec3<u32>(u_input.b, u_input.b, u_input.b))), !(!func_1().b), Struct_3(Struct_1(min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b), vec4<u32>(u_input.b, u_input.a.x, u_input.b, u_input.a.x)), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 24u)], false, global2[_wgslsmith_index_u32(7380u, 24u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(1622f, 1200f, global1.x, global1.x) + vec4<f32>(1000f, -139f, global1.x, -161f))), Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(70805u, u_input.b, u_input.b, 4294967295u), vec4<u32>(u_input.a.x, 139599u, u_input.a.x, u_input.b)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], true, global2[_wgslsmith_index_u32(0u, 24u)], true), vec4<f32>(global1.x, 873f, 1000f, -1107f)), Struct_2(Struct_1(u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], true, true, global0[_wgslsmith_index_u32(16658u, 10u)]), vec4<f32>(-790f, 1811f, global1.x, global1.x)), ~u_input.a.yxy), Struct_2(func_1(), vec3<u32>(u_input.a.x, u_input.b, u_input.a.x)), _wgslsmith_clamp_u32(u_input.b, u_input.a.x, ~u_input.b))), 31639u);
    global3 = global2[_wgslsmith_index_u32(64265u, 24u)];
    let var_1 = func_1().a.x;
    var var_2 = Struct_1(u_input.a, vec4<bool>(true, all(var_0.b), true, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(541f - -314f)), -1i)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c - var_0.c))))));
    var var_3 = ~(-4250i);
    let var_4 = (max(-1i, -reverseBits(-2147483647i)) >> ((min(_wgslsmith_mult_u32(4294967295u, u_input.a.x), 53031u) | ~u_input.b) % 32u)) << (~_wgslsmith_mult_u32(0u, var_0.a.x) % 32u);
    global0 = array<bool, 10>();
    var var_5 = Struct_4(Struct_1(vec4<u32>(var_0.a.x, _wgslsmith_clamp_u32(u_input.a.x, var_1, _wgslsmith_clamp_u32(4294967295u, var_1, var_2.a.x)), ~abs(7102u), var_0.a.x), select(func_1().b, !func_5(Struct_4(var_0, Struct_2(var_0, vec3<u32>(41786u, 4294967295u, u_input.a.x)), vec4<bool>(global2[_wgslsmith_index_u32(25116u, 24u)], global0[_wgslsmith_index_u32(var_2.a.x, 10u)], var_0.b.x, false), Struct_3(Struct_1(var_0.a, vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 10u)], true, false), var_0.c), var_0, Struct_2(Struct_1(vec4<u32>(4294967295u, var_0.a.x, var_0.a.x, 4294967295u), vec4<bool>(var_0.b.x, true, false, global2[_wgslsmith_index_u32(4294967295u, 24u)]), var_0.c), vec3<u32>(15516u, var_0.a.x, var_0.a.x)), Struct_2(Struct_1(vec4<u32>(0u, 6155u, u_input.a.x, 0u), var_2.b, var_2.c), var_0.a.zzz), 68325u)), 4294967295u).b, !select(var_0.b, var_2.b, var_0.b.x)), vec4<f32>(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec4<u32>(60354u, 1u, var_1, var_0.a.x), vec4<bool>(false, false, var_2.b.x, global0[_wgslsmith_index_u32(911u, 10u)]), vec4<f32>(-245f, 266f, global1.x, -169f)), select(true, true, true), Struct_3(Struct_1(var_2.a, vec4<bool>(var_2.b.x, global2[_wgslsmith_index_u32(u_input.a.x, 24u)], false, true), vec4<f32>(var_2.c.x, var_0.c.x, 1004f, var_0.c.x)), var_0, Struct_2(var_0, vec3<u32>(70049u, u_input.a.x, var_0.a.x)), Struct_2(var_0, var_2.a.wwx), 1u))).x, 1f, _wgslsmith_div_f32(848f, _wgslsmith_f_op_f32(max(1014f, global1.x))), 1244f)), Struct_2(Struct_1(_wgslsmith_add_vec4_u32(var_2.a >> (u_input.a % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 36921u, var_2.a.x, u_input.a.x), var_2.a)), select(var_2.b, vec4<bool>(true, global0[_wgslsmith_index_u32(var_2.a.x, 10u)], global0[_wgslsmith_index_u32(18089u, 10u)], var_0.b.x), !var_2.b), vec4<f32>(498f, _wgslsmith_f_op_f32(-var_2.c.x), var_2.c.x, _wgslsmith_f_op_f32(ceil(-899f)))), var_2.a.xxw), var_0.b, Struct_3(Struct_1(var_0.a, select(var_0.b, vec4<bool>(var_2.b.x, true, true, var_2.b.x), var_2.b), var_0.c), var_0, Struct_2(func_1(), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, var_1, var_0.a.x), vec3<u32>(var_2.a.x, 1u, u_input.a.x), u_input.a.zzx) << (func_5(Struct_4(var_0, Struct_2(var_0, var_2.a.xyz), vec4<bool>(true, false, global2[_wgslsmith_index_u32(var_1, 24u)], false), Struct_3(var_0, Struct_1(var_0.a, var_2.b, vec4<f32>(867f, 655f, -395f, global1.x)), Struct_2(var_0, vec3<u32>(var_1, var_1, 0u)), Struct_2(var_0, vec3<u32>(1u, var_0.a.x, 1u)), 58103u)), 23580u).a.wyw % vec3<u32>(32u))), Struct_2(func_1(), var_2.a.xyz ^ var_0.a.yyz), abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 4294967295u), ~vec2<u32>(var_2.a.x, var_1)))));
    global0 = array<bool, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

