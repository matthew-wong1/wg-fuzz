struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28>;

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

var<private> global2: f32 = 1473f;

var<private> global3: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(10506u, 0u, 4294967295u, 53107u), vec4<u32>(4294967295u, 4294967295u, 49734u, 143690u), vec4<u32>(1u, 4294967295u, 4501u, 27635u), vec4<u32>(30u, 0u, 0u, 4294967295u), vec4<u32>(12227u, 14575u, 70714u, 17465u), vec4<u32>(43975u, 1u, 1u, 4294967295u), vec4<u32>(28014u, 0u, 39210u, 10350u), vec4<u32>(0u, 1u, 0u, 53666u), vec4<u32>(0u, 4294967295u, 54978u, 4294967295u), vec4<u32>(22263u, 1u, 75525u, 0u), vec4<u32>(4294967295u, 1u, 17306u, 35465u), vec4<u32>(64271u, 4294967295u, 4294967295u, 87033u), vec4<u32>(22485u, 0u, 0u, 1u), vec4<u32>(27075u, 70802u, 12514u, 75966u), vec4<u32>(33977u, 3723u, 21386u, 951u), vec4<u32>(4294967295u, 4294967295u, 20321u, 17633u), vec4<u32>(4294967295u, 4294967295u, 2567u, 12030u), vec4<u32>(36106u, 23425u, 24262u, 4294967295u), vec4<u32>(1u, 4294967295u, 71956u, 4294967295u), vec4<u32>(1u, 0u, 0u, 40428u), vec4<u32>(71672u, 34129u, 4294967295u, 74437u), vec4<u32>(41010u, 12860u, 4294967295u, 7361u), vec4<u32>(10015u, 0u, 24949u, 4294967295u), vec4<u32>(10382u, 78084u, 59833u, 0u), vec4<u32>(23486u, 68769u, 12947u, 33149u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 10500u, 37095u, 4294967295u), vec4<u32>(45433u, 0u, 28091u, 0u), vec4<u32>(34451u, 46954u, 1u, 0u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    global0 = array<vec3<u32>, 28>();
    let var_0 = Struct_2(Struct_1(reverseBits(-vec3<i32>(-1i, -2147483647i, -64682i)), abs(firstTrailingBit(~1i)), select(all(vec4<bool>(global1.x, false, true, true)), all(vec4<bool>(false, false, false, true)), any(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2586f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1022f))), 125f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(463f)), -1000f)))), firstLeadingBit(_wgslsmith_sub_u32(u_input.a, _wgslsmith_sub_u32(16718u, 1u))) << (_wgslsmith_mod_u32(21743u, u_input.a) % 32u), vec4<u32>(_wgslsmith_div_u32(~_wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(2992u, 4294967295u, 1149u, 1u), ~vec4<u32>(u_input.a, 33311u, 0u, 1u))), _wgslsmith_mult_u32(u_input.a, ~(~u_input.a)), 9588u & ~u_input.a, ~0u), vec2<u32>(abs(firstTrailingBit(firstLeadingBit(u_input.a))), _wgslsmith_mod_u32(min(u_input.a, u_input.a) << (~u_input.a % 32u), u_input.a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(888f, -1143f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-890f, -371f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_0.b.zyz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2192f, -445f, -627f))), vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(min(var_0.b.x, -416f)), -1671f), select(vec3<bool>(true, true, global1.x), select(vec3<bool>(false, false, var_0.a.c), vec3<bool>(var_0.a.c, false, false), false), any(vec4<bool>(global1.x, true, true, global1.x)))))));
    global3 = array<vec4<u32>, 29>();
    var var_2 = Struct_2(var_0.a, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(978f)), _wgslsmith_f_op_f32(var_1.x * 356f), true)), _wgslsmith_f_op_f32(abs(var_0.b.x)), var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -675f)))), ~(~(~1u)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(var_0.d.x, 29u)], ~vec4<u32>(4294967295u, var_0.d.x, ~u_input.a, 0u)), 29u)], _wgslsmith_add_vec2_u32(~(~vec2<u32>(4294967295u, 4294967295u)) | ~(var_0.d.wx ^ var_0.d.yy), vec2<u32>(~0u, u_input.a)));
    return abs(0u);
}

fn func_2() -> Struct_1 {
    var var_0 = firstLeadingBit(-1i);
    var var_1 = any(!select(!(!vec3<bool>(global1.x, global1.x, global1.x)), !select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true)), false));
    var var_2 = Struct_2(Struct_1(select(firstTrailingBit(min(vec3<i32>(2147483647i, -1i, -2147483647i), vec3<i32>(1i, -1i, 0i))), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 13278i, 25066i), vec3<bool>(true, any(vec2<bool>(false, true)), true)), ~1i, !all(global1.xy)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-346f, 233f), _wgslsmith_f_op_f32(-763f - -1314f), _wgslsmith_f_op_f32(f32(-1f) * -732f), _wgslsmith_f_op_f32(min(-1075f, -656f))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(269f, -640f, -634f, 1161f))))), _wgslsmith_div_u32(countOneBits(~4294967295u), func_3()), ~vec4<u32>(~u_input.a, u_input.a ^ 0u, ~(~u_input.a), 52034u), select(vec2<u32>(select(u_input.a, u_input.a, global1.x), u_input.a), ~(vec2<u32>(u_input.a, 31801u) ^ vec2<u32>(1u, 62253u)), !all(vec4<bool>(global1.x, global1.x, global1.x, true))) << (vec2<u32>(u_input.a, 31338u) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_div_u32(countOneBits(~firstLeadingBit(~0u)), firstLeadingBit(1u));
    var var_4 = var_2.e.x;
    return Struct_1(vec3<i32>(var_2.a.b, 1i, ~var_2.a.a.x), reverseBits(41340i), true);
}

fn func_1() -> Struct_2 {
    global1 = !vec3<bool>(false, all(!vec3<bool>(false, false, global1.x)), global1.x);
    var var_0 = Struct_1(vec3<i32>(select(42978i, _wgslsmith_mod_i32(~41473i, _wgslsmith_clamp_i32(29587i, 1i, 18302i)), true), firstTrailingBit(-38889i), -select(i32(-1i) * -39319i, 0i, select(false, global1.x, global1.x))), 0i, u_input.a <= u_input.a);
    var var_1 = 0u;
    var var_2 = Struct_2(func_2(), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -130f), -1595f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(663f + 210f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(312f - -1223f), 1000f)))), 0u, global3[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(u_input.a, 28u)], vec3<u32>(6042u, 18945u, 28537u))), 29u)], vec2<u32>(~22295u, 4294967295u));
    var var_3 = any(!vec3<bool>(true, !(global1.x & global1.x), true && global1.x));
    return Struct_2(func_2(), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_2.b.x, -466f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(972f, -1801f, var_2.a.c))), _wgslsmith_f_op_f32(select(var_2.b.x, var_2.b.x, any(!vec4<bool>(global1.x, true, var_0.c, false)))), var_2.b.x), _wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_2.c, 59183u), func_3(), ~u_input.a)), abs(_wgslsmith_add_vec4_u32(~vec4<u32>(27028u, u_input.a, 4294967295u, var_2.c), vec4<u32>(~u_input.a, u_input.a, _wgslsmith_sub_u32(55879u, u_input.a), func_3()))), vec2<u32>(u_input.a, 3052u));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: i32) -> Struct_2 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))));
    global2 = _wgslsmith_f_op_f32(sign(874f));
    var var_0 = global1.x;
    var var_1 = arg_0.a;
    let var_2 = _wgslsmith_f_op_f32(exp2(arg_1.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~reverseBits(firstLeadingBit(vec3<i32>(1i, -16302i, -22269i))), -15449i << (u_input.a % 32u), global1.x);
    var var_1 = func_4(func_1(), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1268f, -839f), _wgslsmith_f_op_f32(-1019f - 689f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-693f, 963f))), vec2<f32>(738f, -1981f)), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, 0u, 17759u), ~(vec3<u32>(u_input.a, 14315u, u_input.a) & global0[_wgslsmith_index_u32(u_input.a, 28u)]), ~global0[_wgslsmith_index_u32(u_input.a, 28u)]), reverseBits(var_0.b));
    var var_2 = ~firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(min(vec2<i32>(-2147483647i, -59070i), var_0.a.yy), vec2<i32>(0i, var_0.b)), vec2<i32>(~var_1.a.b, 4041i)));
    var var_3 = func_1().e;
    var var_4 = any(select(vec2<bool>(false, !any(global1.zx)), vec2<bool>(true, true), !vec2<bool>(true, select(false, true, var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(~func_1().c);
}

