struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-1243f, 358f, 645f), vec4<bool>(true, false, false, true), true);

var<private> global2: vec4<u32>;

var<private> global3: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(4294967295u, Struct_1(vec3<f32>(693f, -767f, -819f), vec4<bool>(false, true, false, true), true), 902f, 46336i, 74434u), Struct_2(1u, Struct_1(vec3<f32>(-841f, 1005f, 540f), vec4<bool>(true, false, true, true), true), -1265f, -37485i, 6658u), Struct_2(34281u, Struct_1(vec3<f32>(-1000f, -1749f, 749f), vec4<bool>(false, false, true, false), true), -369f, i32(-2147483648), 0u), Struct_2(15453u, Struct_1(vec3<f32>(1672f, 2765f, 666f), vec4<bool>(true, false, false, true), false), 1127f, i32(-2147483648), 1u), Struct_2(0u, Struct_1(vec3<f32>(376f, 817f, -648f), vec4<bool>(true, true, true, true), true), 497f, -6171i, 1u), Struct_2(38305u, Struct_1(vec3<f32>(1215f, 1292f, 840f), vec4<bool>(true, true, false, false), false), 2263f, -28387i, 70381u), Struct_2(4294967295u, Struct_1(vec3<f32>(-1000f, 399f, 2737f), vec4<bool>(true, true, false, false), false), -1000f, 0i, 15277u), Struct_2(1u, Struct_1(vec3<f32>(-393f, -1441f, -684f), vec4<bool>(false, true, true, true), false), -148f, 1i, 4294967295u), Struct_2(0u, Struct_1(vec3<f32>(-166f, -134f, 1282f), vec4<bool>(false, true, true, false), true), 719f, -54329i, 0u), Struct_2(32476u, Struct_1(vec3<f32>(344f, 1747f, -1315f), vec4<bool>(true, false, true, true), true), 867f, 52593i, 21777u), Struct_2(0u, Struct_1(vec3<f32>(1000f, -2153f, -1786f), vec4<bool>(true, false, false, false), true), -399f, 1i, 1u), Struct_2(4294967295u, Struct_1(vec3<f32>(-379f, -1357f, -185f), vec4<bool>(true, false, true, true), true), 837f, -46943i, 28746u), Struct_2(5223u, Struct_1(vec3<f32>(-1135f, -1000f, -178f), vec4<bool>(true, false, true, true), false), -1000f, 30506i, 69201u), Struct_2(8928u, Struct_1(vec3<f32>(-1641f, -160f, -1973f), vec4<bool>(true, true, true, true), true), 1795f, -34253i, 1u), Struct_2(4294967295u, Struct_1(vec3<f32>(-188f, 1016f, 1530f), vec4<bool>(false, true, true, false), true), -153f, 55251i, 17938u), Struct_2(47855u, Struct_1(vec3<f32>(-1150f, -505f, 615f), vec4<bool>(true, false, false, true), false), -350f, -12745i, 0u), Struct_2(0u, Struct_1(vec3<f32>(-2539f, -523f, -1068f), vec4<bool>(true, false, false, false), true), -1100f, 16298i, 17620u), Struct_2(4294967295u, Struct_1(vec3<f32>(863f, -811f, 272f), vec4<bool>(true, false, false, true), false), 210f, 21866i, 38728u), Struct_2(0u, Struct_1(vec3<f32>(-1658f, -1184f, 939f), vec4<bool>(true, false, false, true), false), -351f, i32(-2147483648), 4294967295u), Struct_2(63172u, Struct_1(vec3<f32>(444f, 1000f, 242f), vec4<bool>(true, true, false, false), true), -1850f, -1i, 1u), Struct_2(1u, Struct_1(vec3<f32>(-247f, -155f, 994f), vec4<bool>(false, true, true, false), true), -1000f, 8481i, 4294967295u), Struct_2(1u, Struct_1(vec3<f32>(-453f, 970f, 489f), vec4<bool>(false, true, false, false), true), -1177f, 0i, 1u), Struct_2(55518u, Struct_1(vec3<f32>(-636f, -1137f, -1553f), vec4<bool>(false, true, true, true), false), 2243f, -17784i, 0u), Struct_2(4294967295u, Struct_1(vec3<f32>(-298f, 671f, -549f), vec4<bool>(true, false, false, true), false), -459f, -1i, 25977u), Struct_2(1u, Struct_1(vec3<f32>(878f, 1757f, 1000f), vec4<bool>(true, false, false, true), true), 806f, -16175i, 1431u), Struct_2(0u, Struct_1(vec3<f32>(-811f, -440f, -361f), vec4<bool>(false, false, false, true), true), 109f, -6151i, 1u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> bool {
    var var_0 = global2.x;
    global0 = !vec3<bool>(false, false, !(all(global1.b.xxw) | false));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global1.a + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, 1000f, 833f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-101f, 859f, -1949f) + global1.a))))), vec4<bool>(global0.x, !global1.b.x, true, all(vec2<bool>(true, select(false, false, false)))), !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global1.a.x)))) > _wgslsmith_f_op_f32(global1.a.x - global1.a.x)));
    var var_2 = global2.yzw;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global1.a.x, global1.a.x)), _wgslsmith_f_op_f32(-var_1.a.x), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(789f * global1.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(-1038f, global1.a.x), global1.a.x))), 1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_div_f32(global1.a.x, 803f), var_1.b.x)), _wgslsmith_f_op_f32(min(-959f, -1798f))))));
    return false;
}

fn func_2(arg_0: vec3<u32>) -> vec3<bool> {
    global2 = vec4<u32>(1u, ~((global2.x << (firstTrailingBit(1u) % 32u)) & arg_0.x), ~min(0u ^ global2.x, 66640u ^ global2.x) >> (~_wgslsmith_add_u32(9643u, arg_0.x << (global2.x % 32u)) % 32u), 1u);
    var var_0 = Struct_2(~global2.x, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(1570f + _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1111f - 422f)))), global1.b, func_3(!select(vec2<bool>(false, global0.x), global0.xy, false), ~(~arg_0.x))), -704f, _wgslsmith_add_i32(~u_input.a, u_input.a), ~countOneBits(abs(global2.x)));
    global1 = var_0.b;
    let var_1 = 32657i;
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(33091u, ~(~(~firstLeadingBit(var_0.e)))), 26u)];
    return select(select(var_0.b.b.zxz, var_0.b.b.zwy, vec3<bool>(global1.b.x && !var_0.b.c, var_2.b.b.x, any(vec2<bool>(global0.x, true)))), var_2.b.b.zyz, global1.c == all(!(!global0.xy)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = vec3<bool>(!global1.c, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(select(1181f, 615f, false))), arg_0.a.x)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-295f)) - _wgslsmith_f_op_f32(global1.a.x * 1360f)), all(arg_0.b.wxy));
    global2 = vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~global2.xy, global2.zx), abs(firstLeadingBit(~vec2<u32>(global2.x, global2.x)))), 72869u, global2.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(~48247u, reverseBits(~global2.x), 4294967295u), ~(~(global2.x | 0u))));
    var var_0 = Struct_2(global2.x, arg_0, -420f, u_input.a, global2.x);
    let var_1 = ~(-9895i);
    global1 = Struct_1(arg_0.a, !select(!arg_0.b, vec4<bool>(!var_0.b.b.x, true, true, any(var_0.b.b.yxz)), arg_0.b), all(select(global1.b.zyz, vec3<bool>(var_0.b.b.x, arg_0.c && global0.x, false), select(!var_0.b.b.wxx, !global1.b.wxz, global0.x))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a) - vec3<f32>(-696f, var_0.b.a.x, arg_0.a.x)) * vec3<f32>(_wgslsmith_f_op_f32(select(856f, -914f, false)), -1424f, _wgslsmith_f_op_f32(447f + -1190f))) - arg_0.a), !(!global1.b), global1.b.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> vec3<bool> {
    var var_0 = vec4<bool>(global0.x, _wgslsmith_f_op_f32(-1f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), select(false, !any(vec3<bool>(global0.x, global0.x, global0.x)) || global0.x, true), !(!(-1254f == global1.a.x)));
    let var_1 = func_4(Struct_1(global1.a, !select(global1.b, global1.b, 55520i == u_input.a), all(select(func_2(arg_0), var_0.wzz, vec3<bool>(global1.c, global0.x, var_0.x)))));
    var var_2 = var_1.a;
    let var_3 = Struct_2(reverseBits(~countOneBits(~1u)), Struct_1(global1.a, var_1.b, false), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1150f)), var_2.x, false)), ~max(~(~u_input.a), u_input.a), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32((vec3<u32>(global2.x, 4294967295u, global2.x) >> (vec3<u32>(4294967295u, global2.x, arg_0.x) % vec3<u32>(32u))) << (global2.zxz % vec3<u32>(32u)), vec3<u32>(41931u ^ global2.x, ~global2.x, ~global2.x)), ~_wgslsmith_div_u32(global2.x ^ 1u, global2.x | arg_0.x)));
    global1 = var_3.b;
    return func_2(vec3<u32>(arg_0.x, _wgslsmith_dot_vec2_u32(global2.xw, global2.xx), 22561u >> (min(global2.x, 1u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -446f;
    var var_1 = any(func_1(global2.ywx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-554f, 474f)), _wgslsmith_f_op_f32(ceil(global1.a.x)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -300f), any(vec4<bool>(true, global0.x, true, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(182f, var_0))))))), ~4294967295u, 4294967295u);
}

