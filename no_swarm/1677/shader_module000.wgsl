struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: f32,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_4,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global1: vec2<bool>;

var<private> global2: Struct_3 = Struct_3(Struct_2(vec4<u32>(96356u, 26041u, 4294967295u, 14676u), true), vec2<bool>(true, true), 2015f, vec4<i32>(i32(-2147483648), 70478i, -1i, -1i), Struct_2(vec4<u32>(4294967295u, 40923u, 51886u, 48412u), false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    global1 = !(!arg_1.b);
    let var_0 = select(global0.xwz, vec3<bool>(arg_2.b, arg_1.a.b, true), arg_1.b.x);
    global1 = select(select(var_0.xy, vec2<bool>(true, true), (global2.e.a.x >= global2.e.a.x) && arg_1.e.b), var_0.xy, !var_0.x);
    let var_1 = arg_1.e.a.x;
    let var_2 = abs(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(36198i, 25794i), vec2<i32>(arg_0.x, arg_1.d.x)), _wgslsmith_div_i32(0i, i32(-1i) * -60853i) << ((arg_1.a.a.x >> (var_1 % 32u)) % 32u), abs(-41634i)));
    return all(select(!vec2<bool>(true, global0.x), vec2<bool>(global0.x, any(vec4<bool>(false, arg_1.b.x, global2.b.x, var_0.x)) | false), !(!global0.yz)));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = 0u;
    var var_1 = vec3<bool>(false, any(vec2<bool>(!global1.x && (global2.c >= 870f), false && func_3(global2.d, Struct_3(global2.e, vec2<bool>(true, false), 349f, vec4<i32>(global2.d.x, -24080i, u_input.a, global2.d.x), global2.a), Struct_2(global2.e.a, global0.x)))), func_3(vec4<i32>(~global2.d.x >> (~arg_1 % 32u), global2.d.x << (max(185u, arg_1) % 32u), -(~33413i), reverseBits(~(-6641i))), Struct_3(Struct_2(vec4<u32>(global2.e.a.x, 23748u, 4294967295u, global2.e.a.x) >> (global2.a.a % vec4<u32>(32u)), all(vec4<bool>(true, false, true, false))), global0.wz, arg_2.x, global2.d, Struct_2(~vec4<u32>(global2.a.a.x, arg_1, global2.e.a.x, arg_1), !global2.a.b)), Struct_2(max(global2.a.a ^ vec4<u32>(1u, 12146u, arg_1, 1u), global2.e.a), true)));
    var var_2 = Struct_4(Struct_1(global2.e.b, global2.e.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.c * arg_2.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(697f, -281f)), 553f)), arg_1, !(countOneBits(25967u) <= _wgslsmith_dot_vec3_u32(global2.a.a.wzw, global2.a.a.wyw))), max(select(~vec4<u32>(94076u, 80697u, arg_1, arg_1), ~global2.a.a, !select(vec4<bool>(var_1.x, false, false, global0.x), vec4<bool>(false, global0.x, global1.x, false), global2.b.x)), reverseBits(~vec4<u32>(global2.e.a.x, 70469u, global2.e.a.x, global2.a.a.x))), global2.e);
    var var_3 = ~(var_2.b | _wgslsmith_clamp_vec4_u32(~global2.e.a, abs(global2.a.a), ~global2.e.a));
    global1 = !select(global2.b, vec2<bool>(var_2.a.c < _wgslsmith_f_op_f32(-global2.c), select(any(var_1.xx), var_2.c.b, false)), vec2<bool>(_wgslsmith_f_op_f32(floor(arg_2.x)) != _wgslsmith_f_op_f32(-1482f - 431f), !global0.x));
    return Struct_3(Struct_2(global2.a.a, func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(31056i, global2.d.x, 28593i, -1i), vec4<i32>(21109i, u_input.a, -10931i, u_input.a)), Struct_3(global2.e, global2.b, _wgslsmith_div_f32(1284f, -549f), ~global2.d, Struct_2(vec4<u32>(1u, var_2.b.x, 79663u, 33607u), global2.a.b)), var_2.c)), vec2<bool>((_wgslsmith_add_u32(arg_1, 7009u) & select(1u, var_2.b.x, false)) <= (var_2.a.b.x << (0u % 32u)), var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-857f + arg_2.x))), vec4<i32>(_wgslsmith_mod_i32(min(~global2.d.x, _wgslsmith_mult_i32(global2.d.x, 102170i)), _wgslsmith_sub_i32(-32253i, -29222i)), arg_0 ^ reverseBits(select(15890i, arg_0, false)), -1i, arg_0), Struct_2(firstTrailingBit(firstTrailingBit(countOneBits(vec4<u32>(var_3.x, 43216u, 17143u, 1u)))), (reverseBits(global2.d.x) >= _wgslsmith_dot_vec2_i32(global2.d.wz, vec2<i32>(-1i, arg_0))) & all(global0.wzz)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: i32, arg_3: u32) -> vec2<bool> {
    var var_0 = select(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global2.d.ww, vec2<i32>(arg_2, global2.d.x)), 66968i), u_input.a), _wgslsmith_mod_i32(-1i ^ _wgslsmith_mod_i32(3518i, u_input.a), _wgslsmith_sub_i32(1i, select(arg_2, 32823i, false)))), _wgslsmith_div_vec2_i32(max(_wgslsmith_div_vec2_i32(arg_0.zw, vec2<i32>(-1i, 1351i)) | vec2<i32>(global2.d.x, arg_2), -reverseBits(arg_0.wz)), ~(~(vec2<i32>(22267i, global2.d.x) >> (global2.e.a.yy % vec2<u32>(32u))))), !global0.yx);
    var var_1 = arg_0.wxw;
    var_1 = -(-vec3<i32>(-u_input.a, countOneBits(arg_0.x), arg_2 >> (1u % 32u)) >> (~(~select(global2.a.a.ywz, vec3<u32>(global2.e.a.x, 42831u, global2.e.a.x), global0.wwx)) % vec3<u32>(32u)));
    var_1 = arg_0.xxx;
    global2 = func_2(firstLeadingBit(~(-1082i)), abs(global2.e.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x))), arg_1.x, -883f, 806f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(303f + -1188f), _wgslsmith_f_op_f32(-arg_1.x), arg_1.x, -104f))));
    return select(global0.zx, !global2.b, !global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !select(vec2<bool>(global2.e.b, global1.x), global2.b, global2.a.b);
    let var_0 = Struct_1(any(func_1(vec4<i32>(-2147483647i, u_input.a, -1i, global2.d.x) << (vec4<u32>(0u, global2.a.a.x, global2.e.a.x, 21062u) % vec4<u32>(32u)), _wgslsmith_div_vec3_f32(vec3<f32>(global2.c, global2.c, global2.c), vec3<f32>(1406f, global2.c, global2.c)), global2.d.x, 1u)) | !(global2.e.b | any(vec3<bool>(true, false, true))), min(vec4<u32>(~func_2(u_input.a, 4294967295u, vec4<f32>(global2.c, 1717f, global2.c, -1000f)).a.a.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(global2.a.a.x, global2.a.a.x), global2.e.a.x & global2.a.a.x, global2.a.a.x), firstLeadingBit(abs(4294967295u)), ~17693u), abs(_wgslsmith_add_vec4_u32(global2.a.a, global2.e.a) ^ select(global2.e.a, global2.a.a, vec4<bool>(global0.x, false, global0.x, false)))), _wgslsmith_f_op_f32(f32(-1f) * -2025f), _wgslsmith_mod_u32(global2.a.a.x ^ _wgslsmith_add_u32(~60192u, 1u >> (0u % 32u)), 1u), global0.x);
    global0 = select(vec4<bool>(true, true, var_0.a, !(!global0.x) || true), vec4<bool>(false, true, !(_wgslsmith_dot_vec4_i32(global2.d, vec4<i32>(-5599i, 0i, 1i, u_input.a)) >= u_input.a), !(!any(global0.zzw))), select(select(vec4<bool>(11065u != var_0.b.x, any(vec4<bool>(global1.x, global1.x, false, true)), true, !global1.x), !vec4<bool>(global1.x, true, true, true), true), !(!(!vec4<bool>(var_0.a, false, false, true))), select(select(!vec4<bool>(true, global0.x, true, true), select(vec4<bool>(var_0.e, true, var_0.e, global0.x), vec4<bool>(true, global1.x, global1.x, false), true), vec4<bool>(false, global0.x, true, true)), vec4<bool>(global2.a.a.x > global2.e.a.x, false, var_0.a, true), global0.x)));
    let var_1 = var_0.c;
    let var_2 = abs(~66341u);
    var var_3 = select(vec4<bool>(false, false, !select(!global2.a.b, !global2.e.b, func_3(global2.d, Struct_3(global2.a, global0.ww, var_0.c, global2.d, global2.e), Struct_2(vec4<u32>(65572u, 61519u, global2.a.a.x, var_0.d), global2.b.x))), all(!select(vec4<bool>(true, var_0.a, true, global2.e.b), vec4<bool>(global2.e.b, false, var_0.a, var_0.a), true))), select(!select(vec4<bool>(global2.a.b, true, global0.x, false), select(vec4<bool>(true, global1.x, global2.b.x, global1.x), vec4<bool>(global0.x, false, true, global1.x), global2.a.b), false), select(select(!vec4<bool>(global2.a.b, var_0.e, false, true), select(vec4<bool>(false, global2.e.b, var_0.a, global0.x), vec4<bool>(var_0.e, global1.x, true, true), global0.x), all(vec3<bool>(true, true, global2.e.b))), select(select(vec4<bool>(global0.x, true, global2.a.b, true), vec4<bool>(false, global1.x, true, var_0.a), false), !vec4<bool>(global2.e.b, false, global0.x, true), vec4<bool>(var_0.a, false, false, global2.e.b)), true), !vec4<bool>(global1.x == true, true, false, true)), select(!select(select(vec4<bool>(global0.x, global2.e.b, true, true), vec4<bool>(true, global2.b.x, var_0.e, var_0.e), true), !vec4<bool>(global1.x, false, global0.x, var_0.a), var_2 < global2.a.a.x), select(vec4<bool>(global1.x, true, global2.e.b, !global1.x), !(!vec4<bool>(var_0.a, global1.x, false, true)), vec4<bool>(any(vec4<bool>(false, false, false, global2.b.x)), var_0.e, global1.x & global0.x, all(vec3<bool>(global1.x, global1.x, var_0.e)))), global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(1741f + 1799f), var_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1, 612f, global2.c)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 850f, var_0.c))))), u_input.a);
}

