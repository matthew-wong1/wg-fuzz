struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -36848i;

var<private> global1: vec4<u32>;

var<private> global2: i32 = -4162i;

var<private> global3: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: u32) -> vec3<bool> {
    var var_0 = vec2<bool>(arg_1.d, false);
    let var_1 = Struct_2(select(vec4<bool>(false, var_0.x, true, !arg_1.c), select(select(!vec4<bool>(var_0.x, arg_1.d, false, false), !vec4<bool>(arg_1.c, false, true, false), vec4<bool>(arg_1.d, arg_1.c, var_0.x, var_0.x)), !vec4<bool>(true, arg_1.d, false, true), select(!vec4<bool>(arg_1.c, true, true, false), select(vec4<bool>(false, true, arg_1.c, true), vec4<bool>(arg_1.c, true, false, true), true), false)), vec4<bool>(any(vec3<bool>(arg_1.d, arg_1.c, true)), false, true, false)), min(min(-vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(1i, u_input.b) | vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 27878i) << (global1.zw % vec2<u32>(32u)), ~vec2<i32>(u_input.b, 7613i))) >> (~arg_2.yx % vec2<u32>(32u)), vec4<i32>(-50197i, ~(-u_input.a.x), firstLeadingBit(-u_input.a.x), _wgslsmith_add_i32(-(~u_input.b), reverseBits(-1i))), arg_1);
    global0 = u_input.b;
    let var_2 = arg_2 & reverseBits(vec3<u32>(arg_1.a, ~arg_1.a, 1u) ^ max(max(vec3<u32>(5307u, arg_3, 31770u), vec3<u32>(37282u, 3636u, 4294967295u)), vec3<u32>(arg_1.a, arg_3, arg_1.a)));
    let var_3 = arg_1.c;
    return vec3<bool>(!var_0.x, false, -1644f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.b.x * arg_0), _wgslsmith_f_op_f32(exp2(arg_0)), all(var_1.a.wz))) - _wgslsmith_f_op_f32(f32(-1f) * -2169f)));
}

fn func_2(arg_0: u32) -> vec4<i32> {
    let var_0 = select(select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, true)), !func_3(-429f, Struct_1(u_input.c, vec2<f32>(2530f, -1390f), true, true), vec3<u32>(u_input.c, 24672u, 4294967295u), 0u)), !select(func_3(-360f, Struct_1(0u, vec2<f32>(-364f, -1103f), true, true), global1.xzw, 0u), vec3<bool>(true, false, true), true), vec3<bool>(_wgslsmith_f_op_f32(select(2290f, -1000f, false)) < _wgslsmith_f_op_f32(f32(-1f) * -785f), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false)), false)), vec3<bool>(true, false, true | select(true, select(true, true, true), true)), select(vec3<bool>(false, any(vec2<bool>(true, true)), ~arg_0 != 1u), vec3<bool>(true, select(false, 0u < u_input.c, true), true), !func_3(-577f, Struct_1(u_input.c, vec2<f32>(2115f, 1000f), false, true), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 91862u, 0u), vec3<u32>(0u, global1.x, 10600u)), _wgslsmith_add_u32(54421u, u_input.c))));
    global3 = !var_0.x;
    return vec4<i32>(_wgslsmith_div_i32(-(~_wgslsmith_sub_i32(u_input.b, -1i)), ~_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b, 0i), u_input.b)), u_input.b, u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-22696i, 7624i, -1i), _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a) << (~50027u % 32u)), -vec3<i32>(u_input.b | u_input.b, u_input.a.x, i32(-1i) * -2147483647i)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> f32 {
    let var_0 = arg_1.d.a;
    var var_1 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.d.b.x + -1924f), _wgslsmith_f_op_f32(-arg_0.d.b.x), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.b.x)) * _wgslsmith_f_op_f32(arg_1.d.b.x * arg_1.d.b.x)))), arg_0.d.b.x);
    var_1 = vec3<f32>(arg_0.d.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.d.b.x, _wgslsmith_div_f32(-802f, arg_1.d.b.x))) + _wgslsmith_f_op_f32(f32(-1f) * -525f)), arg_0.d.b.x);
    let var_2 = ~5349u;
    var var_3 = arg_0;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.d.b.x, var_3.d.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(887f, arg_0.d.b.x)))), -1464f)));
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = _wgslsmith_mult_u32(1u, 4294967295u);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_2(vec4<bool>(arg_0, true, arg_0, true), _wgslsmith_add_vec2_i32(-vec2<i32>(u_input.b, u_input.b), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 0i), u_input.a.yz)), -(~vec4<i32>(-7658i, u_input.a.x, u_input.b, u_input.a.x)), Struct_1(min(1u, u_input.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2647f, 765f)), arg_0, all(vec3<bool>(false, arg_0, arg_0)))), Struct_2(!vec4<bool>(arg_0, true, true, true), vec2<i32>(_wgslsmith_add_i32(u_input.a.x, 0i), -2147483647i), func_2(4294967295u), Struct_1(1u, vec2<f32>(-636f, 1000f), true, true)), 1u)), -1809f);
    return Struct_2(vec4<bool>(arg_0, true, !(!arg_0 | !arg_0), true), _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, _wgslsmith_mod_i32(-6239i, u_input.a.x))), u_input.a.xx), vec4<i32>(u_input.b, _wgslsmith_mult_i32(-1i, reverseBits(u_input.b)), u_input.b << (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global1.wz, global1.wx), _wgslsmith_div_u32(global1.x, 37860u)) % 32u), 30565i), Struct_1(var_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1215f * 570f), _wgslsmith_f_op_f32(trunc(-1000f)))), func_3(-1061f, Struct_1(global1.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-269f, 1839f)), !arg_0, true), countOneBits(abs(vec3<u32>(global1.x, 4294967295u, global1.x))), 4294967295u).x, !func_3(_wgslsmith_f_op_f32(abs(1555f)), Struct_1(52204u, vec2<f32>(-737f, 583f), arg_0, false), ~vec3<u32>(6922u, 18053u, 29472u), 40433u).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(select(true, true, true));
    let var_1 = ~(firstTrailingBit(vec3<i32>(u_input.b, var_0.b.x, u_input.a.x) << (global1.wzz % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_sub_u32(1u, u_input.c), global1.x, 4294967295u) % vec3<u32>(32u))) >> (~(~_wgslsmith_clamp_vec3_u32(global1.zwy & global1.zzx, global1.wxw, global1.yyy)) % vec3<u32>(32u));
    let var_2 = Struct_1(33594u, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(min(388f, var_0.d.b.x)), _wgslsmith_f_op_f32(func_4(var_0, Struct_2(var_0.a, var_0.b, vec4<i32>(var_0.c.x, var_1.x, 2147483647i, 2147483647i), Struct_1(global1.x, var_0.d.b, false, var_0.d.d)), u_input.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.d.b))))))), true, false);
    global3 = !var_0.d.d;
    global3 = !(!any(!var_0.a));
    global1 = abs(~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a, var_0.d.a, global1.x, var_0.d.a), vec4<u32>(2807u, global1.x, 16378u, 1u))) ^ firstLeadingBit(reverseBits(vec4<u32>(var_0.d.a, global1.x, var_0.d.a, u_input.c) >> (vec4<u32>(4294967295u, 4294967295u, 57030u, 1u) % vec4<u32>(32u)))));
    global1 = abs(vec4<u32>(_wgslsmith_sub_u32(countOneBits(var_0.d.a), max(func_1(false).d.a, u_input.c)), ~var_2.a, max(_wgslsmith_sub_u32(u_input.c, 1u), 1u & (var_0.d.a ^ 4294967295u)), firstTrailingBit(6832u) << ((var_0.d.a >> (24253u % 32u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(global1.yy) ^ (_wgslsmith_sub_vec2_u32(global1.zy | vec2<u32>(u_input.c, 0u), abs(vec2<u32>(global1.x, 4294967295u))) ^ firstTrailingBit(vec2<u32>(var_2.a, 0u))), _wgslsmith_f_op_f32(-var_0.d.b.x), var_2.a ^ countOneBits(~global1.x | (var_2.a & u_input.c)));
}

