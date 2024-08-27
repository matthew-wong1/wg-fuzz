struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = vec2<f32>(-1050f, arg_1.c);
    let var_1 = 1u;
    global0 = !select(select(vec4<bool>(true, global0.x, global0.x, all(vec4<bool>(global0.x, global0.x, global0.x, global0.x))), !vec4<bool>(true, global0.x, global0.x, true), select(vec4<bool>(global0.x, true, global0.x, true), !vec4<bool>(global0.x, global0.x, true, global0.x), global0.x == global0.x)), select(select(vec4<bool>(global0.x, global0.x, false, global0.x), !vec4<bool>(false, true, false, global0.x), !vec4<bool>(true, false, false, global0.x)), !(!vec4<bool>(global0.x, global0.x, false, false)), !(!vec4<bool>(global0.x, true, global0.x, global0.x))), true);
    let var_2 = min(var_1, var_1);
    var var_3 = any(vec2<bool>(!select(select(false, global0.x, true), global0.x != false, !global0.x), true));
    return vec4<i32>(-2147483647i >> (~(~var_1) % 32u), select(reverseBits(_wgslsmith_add_i32(select(-6471i, arg_1.b.x, false), -39180i ^ u_input.b)), ~max(17103i, 30821i), true), u_input.b, -2147483647i ^ ~u_input.a);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec3<u32>, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_1(-2147483647i, max(_wgslsmith_mult_vec4_i32(abs(select(vec4<i32>(u_input.a, -2147483647i, 18384i, u_input.a), vec4<i32>(2385i, u_input.c.x, 2147483647i, 10847i), global0.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 15257i, u_input.b, 4500i), vec4<i32>(u_input.b, 1i, -1i, 2147483647i)) << (vec4<u32>(0u, arg_2.x, 0u, 28069u) % vec4<u32>(32u))), func_3(Struct_1(firstTrailingBit(2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, u_input.a, u_input.c.x), vec4<i32>(u_input.b, u_input.c.x, u_input.c.x, -51019i)), _wgslsmith_f_op_f32(arg_0 - arg_0)), Struct_1(max(u_input.a, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.c.x, u_input.a, u_input.b), vec4<i32>(u_input.c.x, u_input.a, -3795i, -2147483647i)), 1129f))), arg_1);
    global0 = select(select(select(vec4<bool>(global0.x & true, any(vec4<bool>(false, true, false, global0.x)), global0.x, global0.x), select(!vec4<bool>(false, false, false, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), any(vec4<bool>(global0.x, false, false, true))), false), !select(select(vec4<bool>(false, true, true, global0.x), vec4<bool>(global0.x, false, true, true), true), vec4<bool>(global0.x, global0.x, true, global0.x), global0.x), !(!any(vec3<bool>(global0.x, false, false)))), select(vec4<bool>(!(u_input.c.x > 1i), true, !(global0.x | global0.x), global0.x), !(!(!vec4<bool>(global0.x, true, false, global0.x))), !(!(global0.x & global0.x))), any(vec3<bool>(false, _wgslsmith_f_op_f32(step(var_0.c, 134f)) <= _wgslsmith_f_op_f32(f32(-1f) * -918f), global0.x)));
    let var_1 = true;
    let var_2 = true | all(select(global0.xx, global0.yy, select(vec2<bool>(var_1, false), global0.wy, !global0.yw)));
    var var_3 = Struct_1(u_input.a, vec4<i32>(_wgslsmith_mult_i32(reverseBits(6016i << (arg_2.x % 32u)), _wgslsmith_mult_i32(u_input.b, u_input.a) >> (select(arg_2.x, arg_2.x, global0.x) % 32u)), _wgslsmith_add_i32(max(~3174i, 23831i), u_input.b), firstTrailingBit(~(~u_input.a)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(0i | u_input.c.x, u_input.a, ~0i), var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1))));
    return var_0;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-501f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c)))), _wgslsmith_div_f32(-294f, 1026f), vec3<u32>(1u, ~_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 21587u, 4294967295u), vec3<u32>(42713u, 0u, 1u))), _wgslsmith_add_u32(~countOneBits(4294967295u), 1u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -524f) * _wgslsmith_div_f32(759f, 1015f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(940f - arg_0.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.c, arg_0.c)))), false)));
    var var_1 = global0.yzz;
    let var_2 = Struct_1(~u_input.b, abs(var_0.b), _wgslsmith_f_op_f32(select(arg_0.c, 218f, true)));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.c))))) - arg_0.c), _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_2.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.c))))), any(!vec4<bool>(true, false, var_1.x, var_1.x))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>) -> vec2<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_f_op_f32(round(564f)), _wgslsmith_f_op_f32(min(-1311f, -144f)), vec3<u32>(64618u, 0u, 41693u), _wgslsmith_f_op_f32(ceil(-1130f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(588f + -2774f))) - -894f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(126f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1032f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -114f) - _wgslsmith_f_op_f32(round(-1000f))) + -1000f), -608f);
    global0 = !vec4<bool>(any(select(select(vec4<bool>(global0.x, arg_1.x, arg_1.x, false), vec4<bool>(true, arg_0.x, arg_1.x, false), true), !vec4<bool>(true, global0.x, false, arg_1.x), select(vec4<bool>(true, true, arg_1.x, true), vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(true, true, false, global0.x)))), true, select(true, false, true), !arg_1.x);
    let var_1 = false;
    let var_2 = -(-1i >> (1u % 32u));
    global0 = !select(select(!(!vec4<bool>(arg_0.x, false, false, false)), !select(vec4<bool>(true, var_1, false, false), vec4<bool>(var_1, false, false, global0.x), arg_0.x), vec4<bool>(true, true, true, true)), !select(!vec4<bool>(var_1, false, global0.x, true), vec4<bool>(arg_1.x, arg_1.x, global0.x, true), select(true, true, true)), _wgslsmith_mod_u32(19188u, 4294967295u) >= select(4294967295u, 16182u, true));
    return vec2<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(_wgslsmith_add_u32(0u, 1u), 0u >> (1u % 32u))), vec2<u32>(4294967295u, max(1u, 5564u))), ~(~(~(~20933u))));
}

fn func_5(arg_0: vec2<u32>) -> vec2<bool> {
    var var_0 = select(select(!(!select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, false, global0.x))), select(vec4<bool>(global0.x, select(true, global0.x, global0.x), all(vec4<bool>(global0.x, global0.x, false, global0.x)), any(vec2<bool>(global0.x, global0.x))), vec4<bool>(true, all(global0.wwy), global0.x, all(vec4<bool>(false, global0.x, false, global0.x))), false), any(vec3<bool>(!global0.x, true, false))), vec4<bool>(!(global0.x && global0.x), any(select(select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(global0.x, false, true, global0.x), global0.x), !vec4<bool>(global0.x, false, false, true), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, true, global0.x, false), global0.x))), !select(true, false, false) != true, global0.x), !vec4<bool>(!(global0.x || global0.x), select(true, u_input.b == u_input.a, !global0.x), any(select(vec3<bool>(global0.x, false, true), vec3<bool>(true, true, global0.x), true)), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1305f, -916f)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1047f), -2460f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(992f, 289f)), _wgslsmith_div_vec2_f32(vec2<f32>(-267f, 1319f), vec2<f32>(-1811f, 996f)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1421f))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(526f, 762f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(592f, -603f)))), any(vec4<bool>(true, var_0.x, var_0.x, global0.x))))));
    let var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1007f)) + var_1.x))) - _wgslsmith_f_op_f32(func_4(func_2(-1000f, _wgslsmith_f_op_f32(floor(var_1.x)), ~vec3<u32>(25889u, arg_0.x, arg_0.x), var_1.x)))), _wgslsmith_f_op_f32(-var_1.x), ~abs(vec3<u32>(arg_0.x, countOneBits(arg_0.x), 1u & arg_0.x)), 787f);
    global0 = !select(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, global0.x, true, global0.x), !vec4<bool>(var_0.x, var_0.x, global0.x, var_0.x)), !select(vec4<bool>(true, var_0.x, true, global0.x), vec4<bool>(var_0.x, global0.x, false, global0.x), !global0.x), vec4<bool>(true, true, global0.x, any(var_0.yw)));
    let var_3 = _wgslsmith_div_f32(-333f, var_1.x);
    return var_0.yw;
}

fn func_6(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: u32, arg_3: vec4<bool>) -> bool {
    var var_0 = func_3(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, 391f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), vec3<u32>(~1u, arg_2, ~arg_2), _wgslsmith_f_op_f32(step(1344f, arg_1.x))), func_2(-644f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), 1000f)))), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(4294967295u, arg_2, 4294967295u) ^ vec3<u32>(arg_2, arg_2, arg_2)), vec3<u32>(53445u | arg_2, arg_2 ^ 0u, reverseBits(arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -679f)))).wzy;
    var_0 = vec3<i32>(var_0.x, var_0.x, -1i) & ~(-countOneBits(vec3<i32>(1i, u_input.c.x, 40180i)));
    let var_1 = arg_1.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-673f, var_1) * 599f));
    var_0 = -max(-countOneBits(vec3<i32>(var_0.x, 2147483647i, -20362i)), firstLeadingBit(-vec3<i32>(-2147483647i, var_0.x, -1i))) | vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.xy, -vec2<i32>(-1i, var_0.x)), -firstTrailingBit(-42851i), u_input.a);
    return !(u_input.a < var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_6(select(func_5(func_1(global0.zz, vec3<bool>(global0.x, global0.x, false))), select(vec2<bool>(false, global0.x), global0.xw, vec2<bool>(false, global0.x)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-124f, -413f, 1217f, -212f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(442f, -104f, 1047f, 1685f) - vec4<f32>(317f, -782f, 748f, -322f))))), ~(~27011u >> (1u % 32u)), vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(11098i, u_input.c.x, u_input.a), vec3<i32>(-27256i, -1i, 1i)) < u_input.c.x, all(vec3<bool>(true, true, false)), true, all(global0.ywx))) || (u_input.b == -(~_wgslsmith_add_i32(-2147483647i, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 4294967295u, 49505u, 52826u), vec4<bool>(true, true, true, global0.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(16680u, 4961u, 62735u)), vec3<u32>(1u, 1u, 1u)), 1u, abs(~57406u), ~(~27502u))), abs(abs(vec2<i32>(1i, u_input.a))));
}

