struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<u32>,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: u32 = 22925u;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    global0 = vec2<bool>(!global0.x, !select(!(global0.x || global0.x), global0.x, all(!vec4<bool>(true, true, global0.x, global0.x))));
    var var_0 = select(select(select(!(!vec3<bool>(false, global0.x, global0.x)), vec3<bool>(!global0.x, true, true), vec3<bool>(true, any(vec2<bool>(true, false)), !global0.x)), select(!(!vec3<bool>(global0.x, global0.x, true)), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x), global0.x), select(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, false, true), true), vec3<bool>(global0.x, global0.x, false), !vec3<bool>(global0.x, true, global0.x))), -559f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1523f, -417f, true)), _wgslsmith_f_op_f32(f32(-1f) * -805f))), select(!select(vec3<bool>(true, true, global0.x), !vec3<bool>(global0.x, false, false), !global0.x), !(!(!vec3<bool>(false, global0.x, global0.x))), all(!(!vec2<bool>(global0.x, global0.x)))), !global0.x);
    var var_1 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-753f, 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1755f * -1000f) + _wgslsmith_f_op_f32(step(1298f, -150f))) + 328f), 1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-745f * 1301f), _wgslsmith_f_op_f32(round(341f)), true != global0.x)), -2399f))), Struct_2(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(39117i, -22755i, 1i, 29224i)), select(vec4<i32>(-1i, -2147483647i, 0i, -1i), vec4<i32>(2147483647i, -43962i, -1i, -2147483647i), vec4<bool>(true, false, var_0.x, false)) >> (vec4<u32>(u_input.a, 33663u, 1471u, u_input.a) % vec4<u32>(32u))), 1521f, _wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)), any(vec2<bool>(var_0.x, 0u == u_input.a)), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-641f, 1216f, 132f, -105f))), min(reverseBits(vec3<u32>(u_input.a, u_input.a, u_input.a)), ~vec3<u32>(4294967295u, 4294967295u, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-250f))), vec2<i32>(-9451i, _wgslsmith_mult_i32(1i, 30702i)), vec4<u32>(select(u_input.a, u_input.a, global0.x), firstLeadingBit(u_input.a), ~4294967295u, _wgslsmith_add_u32(0u, 1u)))), _wgslsmith_add_vec3_u32(~vec3<u32>(~2077u, u_input.a, ~u_input.a), ~_wgslsmith_div_vec3_u32(~vec3<u32>(17709u, u_input.a, 4294967295u), vec3<u32>(4294967295u, u_input.a, u_input.a))), vec4<bool>(true, true, !(!(0u < u_input.a)), any(select(vec4<bool>(true, var_0.x, global0.x, true), select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(global0.x, var_0.x, var_0.x, global0.x), vec4<bool>(var_0.x, global0.x, var_0.x, false)), vec4<bool>(true, true, true, true)))), select(!var_0.zy, select(select(!vec2<bool>(global0.x, true), var_0.xx, !global0.x), var_0.yy, var_0.yy), select(any(vec4<bool>(false, var_0.x, global0.x, global0.x)), global0.x, var_0.x)));
    let var_2 = select(var_1.d.zyy, select(vec3<bool>(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(53603u, 1u, var_1.c.x, 2475u), vec4<u32>(u_input.a, 4294967295u, 4294967295u, var_1.c.x)) < abs(var_1.c.x), -1000f == _wgslsmith_f_op_f32(-var_1.a.x)), var_1.d.yyx, var_0.x), vec3<bool>(var_1.b.d, false, !any(!vec3<bool>(true, global0.x, true))));
    global0 = vec2<bool>(any(select(var_1.d.yyy, vec3<bool>(any(vec2<bool>(false, false)), false, true), !var_2)), true);
    return -1i;
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 1073f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2319f, -240f))), _wgslsmith_f_op_f32(-354f * _wgslsmith_f_op_f32(max(154f, -355f)))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(-812f)), -1210f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2008f + -337f)), _wgslsmith_f_op_f32(f32(-1f) * -246f))), Struct_2(abs(vec4<i32>(func_3(), 1i, ~(-17604i), reverseBits(4380i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -380f) + _wgslsmith_f_op_f32(min(-1467f, 1275f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-534f, 271f)), _wgslsmith_f_op_f32(round(1308f)))), vec3<i32>(countOneBits(22812i), 0i, -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(404f - -839f) * _wgslsmith_f_op_f32(round(-1215f))) <= _wgslsmith_f_op_f32(select(1f, 287f, true)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(1000f * 1425f), _wgslsmith_f_op_f32(-719f - 1273f), 813f, -1410f), abs(vec3<u32>(1u, u_input.a, 1u) ^ vec3<u32>(u_input.a, u_input.a, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(859f, 948f)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, -1i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<i32>(-2147483647i, 0i)), max(~vec4<u32>(u_input.a, 45615u, u_input.a, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u))))), vec3<u32>(75276u, reverseBits(0u), ~(~4294967295u)), select(!vec4<bool>(true, false, false, !global0.x), select(vec4<bool>(false, true, 62564u != u_input.a, select(global0.x, true, global0.x)), select(vec4<bool>(true, false, true, global0.x), select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, true), global0.x), select(false, true, global0.x)), true), all(vec3<bool>(true, true, true))), !select(select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, true), true), !(!vec2<bool>(global0.x, global0.x)), !any(vec4<bool>(false, true, global0.x, global0.x))));
    var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.e.a.x, var_0.a.x, var_0.b.b, var_0.a.x)), vec4<f32>(var_0.b.e.a.x, var_0.a.x, -1063f, var_0.b.b), !global0.x))))), var_0.b, countOneBits(~_wgslsmith_div_vec3_u32(var_0.b.e.b, countOneBits(var_0.b.e.b))), vec4<bool>(true, var_0.d.x, any(select(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(var_0.e.x, global0.x, global0.x), var_0.d.yyz), var_0.d.zzx, vec3<bool>(true, global0.x, global0.x))), var_0.b.d & (_wgslsmith_dot_vec3_u32(var_0.b.e.b, vec3<u32>(4294967295u, var_0.c.x, var_0.c.x)) > min(u_input.a, 4294967295u))), !vec2<bool>((var_0.e.x | global0.x) | true, all(select(var_0.d.xyy, var_0.d.wzz, vec3<bool>(true, global0.x, true)))));
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(1i, ~_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, var_0.b.a.x, 0i, 2147483647i), reverseBits(var_0.b.a))), _wgslsmith_add_vec2_i32(-vec2<i32>(i32(-1i) * -2147483647i, 0i), vec2<i32>(reverseBits(-var_0.b.e.d.x), 1i)));
    var var_2 = abs(u_input.a);
    var var_3 = var_0.a;
    return firstTrailingBit(vec3<u32>(~(~(~var_0.c.x)), max(~u_input.a, ~abs(80644u)), _wgslsmith_clamp_u32(~(~var_0.b.e.b.x), ~u_input.a, 1u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> i32 {
    let var_0 = vec3<u32>(~(~4294967295u << (_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_1, 38622u), _wgslsmith_mod_u32(4294967295u, arg_1)) % 32u)), _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(arg_1, arg_0.x, arg_0.x))), max(func_2(), vec3<u32>(~arg_0.x, 4294967295u, u_input.a))), ~31271u);
    var var_1 = Struct_4(Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(func_3(), -2294i, _wgslsmith_mult_i32(16582i, 0i), select(2147483647i, -14699i, true)), select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-2147483647i, 24444i, -2147483647i, 2147483647i), global0.x)), 291f, _wgslsmith_mult_vec3_i32(select(vec3<i32>(0i, 1i, -3876i), vec3<i32>(2147483647i, 0i, -1i), vec3<bool>(false, true, false)), vec3<i32>(-1i, 3223i, 0i)) ^ ~vec3<i32>(-7470i, -2147483647i, 2147483647i), !(~u_input.a < firstTrailingBit(var_0.x)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(356f, -872f, 666f, -715f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(506f, 712f, 875f, -830f) * vec4<f32>(-2476f, -314f, 695f, 353f))), vec3<u32>(var_0.x, 1u << (arg_1 % 32u), var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(687f))), ~vec2<i32>(1i, -875i) << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), ~vec4<u32>(var_0.x, u_input.a, 1u, 4294967295u) | (vec4<u32>(0u, 5201u, 0u, var_0.x) << (vec4<u32>(var_0.x, 83498u, 4294967295u, var_0.x) % vec4<u32>(32u))))), Struct_2(select(vec4<i32>(abs(0i), 1i, _wgslsmith_div_i32(18490i, -16776i), _wgslsmith_dot_vec4_i32(vec4<i32>(-38414i, 1i, 0i, -15677i), vec4<i32>(-2147483647i, 0i, -37438i, 9606i))), abs(~vec4<i32>(-1i, 54681i, -61053i, -1i)), vec4<bool>(true, true, true, true)), -321f, -(~max(vec3<i32>(18917i, -2147483647i, 0i), vec3<i32>(1i, -29027i, 2147483647i))), !(global0.x | global0.x), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1289f), _wgslsmith_f_op_f32(206f + -1309f), _wgslsmith_f_op_f32(f32(-1f) * -480f), -469f), _wgslsmith_div_vec3_u32(reverseBits(var_0), var_0 << (vec3<u32>(0u, u_input.a, u_input.a) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2619f)), firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(-38271i, 21389i))), vec4<u32>(4294967295u, 1u, ~u_input.a, arg_0.x))), Struct_2(vec4<i32>(~countOneBits(11748i), -50977i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(18700i, 2147483647i), vec2<i32>(-2147483647i, -2147483647i), false), vec2<i32>(-982i, 1i) << (var_0.yz % vec2<u32>(32u))), -firstLeadingBit(-14998i)), _wgslsmith_f_op_f32(1f - 2315f), vec3<i32>(1i << (1u % 32u), abs(2147483647i), firstTrailingBit(_wgslsmith_add_i32(0i, -24029i))), true, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(453f, -1000f, 593f, 261f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(860f, 895f, -1560f, 1498f) + vec4<f32>(-294f, -492f, 1250f, 1447f))), ~countOneBits(arg_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1044f * 719f), _wgslsmith_f_op_f32(round(1000f)))), vec2<i32>(i32(-1i) * -39777i, min(13539i, 19116i)), ~_wgslsmith_add_vec4_u32(vec4<u32>(107444u, arg_1, 4294967295u, 21952u), vec4<u32>(arg_1, 3774u, arg_0.x, u_input.a)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.e.c, var_1.a.e.c) * var_1.a.e.a.wx)));
    global0 = select(vec2<bool>(all(vec4<bool>(true, true, true, global0.x)) == !(var_1.b.d && true), global0.x), select(!vec2<bool>(all(vec4<bool>(true, var_1.a.d, global0.x, var_1.b.d)), false), !(!select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, var_1.a.d), vec2<bool>(var_1.b.d, true))), all(select(!vec4<bool>(true, global0.x, var_1.c.d, global0.x), vec4<bool>(var_1.c.d, true, global0.x, false), true))), true);
    let var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1891f, 160f, 1112f, var_1.a.e.c)), vec4<f32>(var_1.b.e.a.x, 597f, 422f, -498f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(310f, -2355f, -1000f, var_1.b.b)))))), var_1.b, reverseBits(select(~var_1.b.e.e.ywy, ~var_0, true)), vec4<bool>(global0.x, true | global0.x, true, global0.x), vec2<bool>(global0.x, true));
    return -(-_wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-10336i, -14770i), vec2<i32>(-4168i, 28285i)), _wgslsmith_div_i32(var_1.c.a.x, -37154i)) >> (86886u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 4294967295u);
    var var_0 = u_input.a;
    var var_1 = vec3<u32>(~u_input.a, ~17446u, 9199u);
    var var_2 = Struct_4(Struct_2(~vec4<i32>(5721i, func_1(vec3<u32>(99734u, 1u, u_input.a), 33872u), ~(-2147483647i), func_1(vec3<u32>(94522u, 0u, var_1.x), u_input.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1260f) * _wgslsmith_f_op_f32(round(-171f))))), ~(vec3<i32>(1i, 1i, 1i) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), !global0.x, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-107f, 1368f, 634f, 216f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1265f, -1000f, -542f, -354f)))), min(vec3<u32>(1u, var_1.x, 0u) ^ vec3<u32>(13244u, var_1.x, var_1.x), select(vec3<u32>(var_1.x, 19481u, var_1.x), vec3<u32>(var_1.x, u_input.a, 78086u), vec3<bool>(global0.x, false, true))), _wgslsmith_f_op_f32(357f - _wgslsmith_f_op_f32(-387f * -185f)), -select(vec2<i32>(-2147483647i, -8454i), vec2<i32>(1i, -1i), vec2<bool>(global0.x, global0.x)), ~vec4<u32>(u_input.a, 4294967295u, 88497u, var_1.x))), Struct_2(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -13355i, 2147483647i, 26171i), vec4<i32>(-1i, 1i, -2147483647i, -1i))) << (_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 42629u, var_1.x, 21083u), countOneBits(vec4<u32>(var_1.x, 39171u, 0u, var_1.x))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(649f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-442f)), _wgslsmith_f_op_f32(sign(795f))))), _wgslsmith_div_vec3_i32(-vec3<i32>(13537i, -1i, 1i), select(~vec3<i32>(4053i, -1i, -103937i), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 14372i, -62814i), vec3<i32>(1i, 1i, 29455i)), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, global0.x, true)))), global0.x, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-851f, -1000f, -972f, 800f))), reverseBits(vec3<u32>(var_1.x, u_input.a, 38402u)) | firstTrailingBit(vec3<u32>(0u, var_1.x, 2265u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(625f - 1000f), _wgslsmith_f_op_f32(-1214f + 726f))), reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-7306i, 1i), vec2<i32>(-2147483647i, 33646i), vec2<i32>(-8874i, -39041i))), vec4<u32>(1u, ~var_1.x, 29343u, ~15897u))), Struct_2(firstLeadingBit(abs(vec4<i32>(-1341i, -2147483647i, -2147483647i, -17961i) >> (vec4<u32>(103926u, var_1.x, 70920u, 1u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(595f * -2245f) + -159f)), -select(abs(vec3<i32>(-2147483647i, -44360i, -8584i)), vec3<i32>(1i, 1i, 1i), true), false, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1769f, 1979f, 198f, -704f), vec4<f32>(802f, 556f, 586f, 220f)))), ~max(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, var_1.x, 39695u)), -686f, _wgslsmith_clamp_vec2_i32(~vec2<i32>(-2147483647i, 11559i), vec2<i32>(0i, -2147483647i) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(-4493i, -17872i))), firstTrailingBit(vec4<u32>(u_input.a, 83855u, var_1.x, u_input.a)))));
    var var_3 = var_2.a;
    let var_4 = Struct_5(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(min(1833f, _wgslsmith_f_op_f32(-var_3.e.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -920f)), var_3.b, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, -1866f), -147f))))), var_2.a, var_3.e.b, !select(select(!vec4<bool>(true, var_2.a.d, var_2.c.d, true), !vec4<bool>(true, false, true, global0.x), !vec4<bool>(global0.x, var_3.d, global0.x, true)), !vec4<bool>(var_3.d, var_3.d, true, var_2.b.d), select(vec4<bool>(false, false, var_2.a.d, var_2.b.d), vec4<bool>(false, var_2.a.d, global0.x, var_2.b.d), vec4<bool>(true, var_3.d, var_3.d, true))), select(vec2<bool>(true, var_2.a.d), select(vec2<bool>(any(vec4<bool>(true, var_3.d, true, false)), !global0.x), !vec2<bool>(global0.x, global0.x), vec2<bool>(true, var_3.d)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_4.a.x)), var_2.b.e.b.zz << ((abs(_wgslsmith_mult_vec2_u32(vec2<u32>(61799u, var_1.x), var_4.b.e.e.zw)) | select(firstTrailingBit(var_2.a.e.b.yx), var_4.b.e.b.yx, any(vec3<bool>(false, false, true)))) % vec2<u32>(32u)), 0u, 53637u, var_4.a.x);
}

