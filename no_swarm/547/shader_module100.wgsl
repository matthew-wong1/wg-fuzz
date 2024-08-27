struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec3<u32> = vec3<u32>(980u, 1u, 47697u);

var<private> global2: array<i32, 9>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32) -> i32 {
    let var_0 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_1) * _wgslsmith_f_op_f32(f32(-1f) * -103f)), 495f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, arg_1, arg_1)))), vec3<f32>(arg_1, -669f, 425f))))), u_input.c);
    var var_1 = Struct_2(vec4<i32>(-29317i, 9644i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 60445i), u_input.c.xy), firstLeadingBit(44695i)), var_0.d.x) << (~(~max(vec4<u32>(31430u, 4871u, var_0.a, var_0.a), u_input.a)) % vec4<u32>(32u)), var_0, Struct_1(countOneBits(0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1489f, var_0.c.x), _wgslsmith_f_op_vec2_f32(var_0.b + vec2<f32>(var_0.c.x, var_0.b.x))))), _wgslsmith_f_op_vec3_f32(abs(var_0.c)), u_input.c));
    global1 = ~u_input.a.wyz;
    var var_2 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a, u_input.a.x << (var_0.a % 32u), firstTrailingBit(1u)), u_input.a.zyy, abs(min(u_input.d.wxw, vec3<u32>(u_input.d.x, var_1.c.a, var_0.a)))), u_input.a.xwz) & _wgslsmith_div_vec3_u32(vec3<u32>(1u, var_0.a, min(0u, 0u) & firstLeadingBit(u_input.b)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b & 1u, _wgslsmith_mult_u32(global1.x, var_0.a), 106341u), _wgslsmith_sub_vec3_u32(u_input.a.xww, u_input.d.xzz)));
    var var_3 = any(vec3<bool>(false, true, select(true, -1i > u_input.c.x, all(vec2<bool>(global0.x, global0.x))))) | true;
    return countOneBits(reverseBits(-9230i & u_input.c.x));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global1 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.d.x, 0u, ~4294967295u) & countOneBits(vec3<u32>(u_input.b, global1.x, 62968u)), u_input.d.zyz, ~u_input.a.xzx);
    global2 = array<i32, 9>();
    var var_0 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, _wgslsmith_add_u32(global1.x, 1u), _wgslsmith_div_u32(u_input.b, global1.x), 16994u), abs(u_input.d | u_input.d)) & ~0u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(404f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -134f), _wgslsmith_f_op_f32(floor(791f))))) * vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1639f), -652f)), -1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1120f, 289f, 502f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-566f, 936f, -581f) - vec3<f32>(1000f, -1504f, 692f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-473f, -625f, -1430f), vec3<f32>(326f, 732f, -1341f)))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-119f, -1000f, -1960f))), _wgslsmith_div_vec3_f32(vec3<f32>(715f, -312f, -372f), vec3<f32>(109f, -533f, -626f))))))), vec4<i32>(func_3(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1499f)), _wgslsmith_f_op_f32(sign(-1000f)))), ~(-(1i | global2[_wgslsmith_index_u32(global1.x, 9u)])), _wgslsmith_sub_i32(u_input.c.x, max(1i, global2[_wgslsmith_index_u32(4294967295u, 9u)])) >> (~(~42698u) % 32u), u_input.c.x));
    var var_1 = (u_input.d.x ^ 42832u) >> (~global1.x % 32u);
    global2 = array<i32, 9>();
    return Struct_1(global1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), _wgslsmith_f_op_f32(-452f + var_0.b.x)), vec2<f32>(_wgslsmith_div_f32(var_0.c.x, var_0.c.x), _wgslsmith_f_op_f32(-var_0.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1648f, var_0.c.x, -1000f) + var_0.c))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c)))), ~vec4<i32>(594i, ~var_0.d.x & abs(var_0.d.x), global2[_wgslsmith_index_u32(u_input.a.x & _wgslsmith_mod_u32(45947u, u_input.d.x), 9u)], var_0.d.x));
}

fn func_1() -> u32 {
    let var_0 = func_2((~1u != global1.x) | any(vec2<bool>(global0.x || global0.x, false)));
    var var_1 = Struct_2(~countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 2147483647i, u_input.c.x, u_input.c.x), u_input.c) << (firstTrailingBit(vec4<u32>(0u, global1.x, 1u, u_input.d.x)) % vec4<u32>(32u))), Struct_1(1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.c.zy)))), vec3<f32>(323f, -716f, _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(exp2(var_0.c.x)))), var_0.d), func_2(select(true, !global0.x & true, any(vec3<bool>(global0.x, global0.x, true)) && false)));
    let var_2 = var_1.c.d.zzy;
    let var_3 = select(vec2<bool>(select(true, min(u_input.d.x, var_1.c.a) < _wgslsmith_mod_u32(13910u, var_1.c.a), any(vec4<bool>(global0.x, true, global0.x, global0.x))), all(select(!vec4<bool>(false, global0.x, true, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, false, false, false), true), !vec4<bool>(global0.x, false, false, global0.x)))), !global0.zy, any(!select(vec2<bool>(false, global0.x), global0.zy, global0.zz)));
    let var_4 = _wgslsmith_mult_vec2_i32(~(vec2<i32>(~18547i, 1i) >> (~(~u_input.d.yx) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(~vec2<i32>(var_1.a.x, i32(-1i) * -2775i), ~select(u_input.c.yy, -var_2.zy, !vec2<bool>(var_3.x, true)), min(vec2<i32>(8524i, var_0.d.x), vec2<i32>(u_input.c.x, 11757i))));
    return ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.c.a, 12534u, global1.x, 4294967295u), abs(max(vec4<u32>(var_1.b.a, 49053u, var_1.c.a, 34279u), u_input.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec3<bool>(false, !all(vec2<bool>(true, true)) | global0.x, func_1() <= 48060u), vec3<bool>(all(vec2<bool>(global0.x, 4294967295u >= global1.x)), any(vec2<bool>(true, false)) | false, true), select(vec3<bool>(true, true, true), vec3<bool>(select(global0.x, 0u != global1.x, true), u_input.b > _wgslsmith_sub_u32(50772u, 0u), !global0.x), true));
    var var_0 = vec4<bool>(true, false, true, global1.x > firstTrailingBit(func_1()));
    global0 = !vec3<bool>(((-1i == global2[_wgslsmith_index_u32(u_input.d.x, 9u)]) & global0.x) & false, any(select(!var_0.xyx, !var_0.www, true)), all(vec4<bool>(any(vec4<bool>(global0.x, global0.x, global0.x, var_0.x)), global0.x, global1.x <= 7032u, false && var_0.x)));
    global2 = array<i32, 9>();
    var var_1 = u_input.c.x;
    let var_2 = Struct_2(~(~countOneBits(countOneBits(u_input.c))), Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1947f, -1050f) - _wgslsmith_div_vec2_f32(vec2<f32>(699f, 1664f), vec2<f32>(1000f, 823f))) * vec2<f32>(_wgslsmith_f_op_f32(-465f - -947f), _wgslsmith_f_op_f32(-856f + -860f))), vec3<f32>(_wgslsmith_f_op_f32(round(1572f)), 1182f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-964f, -392f)), 950f)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(20270i, global2[_wgslsmith_index_u32(u_input.b, 9u)], global2[_wgslsmith_index_u32(8317u, 9u)], -3372i) >> (u_input.a % vec4<u32>(32u)), select(vec4<i32>(0i, -1i, u_input.c.x, 18751i), u_input.c, global0.x))), func_2(true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_2.c.b.x, 237f), -(u_input.c.zz << (~vec2<u32>(global1.x, 0u) % vec2<u32>(32u))));
}

