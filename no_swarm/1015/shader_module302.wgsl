struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

var<private> global1: array<Struct_3, 21>;

var<private> global2: vec2<u32> = vec2<u32>(1u, 0u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_4, arg_1: vec4<f32>) -> i32 {
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    var var_0 = u_input.d.yx;
    let var_1 = true;
    global1 = array<Struct_3, 21>();
    return _wgslsmith_div_i32(var_0.x, -23948i);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: f32) -> Struct_2 {
    var var_0 = u_input.d;
    let var_1 = vec3<i32>(49473i, u_input.d.x, _wgslsmith_div_i32(max(firstTrailingBit(i32(-1i) * -2147483647i), func_2(Struct_4(vec4<u32>(global2.x, 12149u, 11401u, 35276u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(585f, arg_2, 272f, 408f) + vec4<f32>(arg_2, arg_2, arg_2, arg_2)))), u_input.d.x));
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(reverseBits(_wgslsmith_mod_i32(var_1.x, 20519i)), -54318i), -var_0.x, u_input.d.x), ~vec3<i32>(abs(-27150i | var_0.x), var_1.x, var_0.x));
    var_0 = ~(-vec4<i32>(var_2.x, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, -1i, 63691i, var_0.x)), 1i, 2147483647i));
    global2 = vec2<u32>(global2.x, u_input.a << (1u % 32u));
    return Struct_2(!(-2147483647i <= -_wgslsmith_mult_i32(var_2.x, -1i)), Struct_1(~(~vec3<u32>(u_input.a, 32750u, global2.x)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 6243u) | vec3<u32>(4294967295u, u_input.a, 1u), vec3<u32>(26606u, 1u, u_input.a)) % vec3<u32>(32u)), 92i, -2147483647i, _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 632f) - -927f));
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    var var_0 = func_3(vec4<bool>(true, true, true, true), select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), (u_input.d.x | 2454i) == u_input.b.x), vec3<bool>(true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)), true), _wgslsmith_mod_i32(min(-2147483647i, -53284i), func_2(Struct_4(arg_0.a), vec4<f32>(879f, 919f, 1589f, 295f))) == func_2(Struct_4(vec4<u32>(36662u, arg_0.a.x, 14680u, global2.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-398f, 479f, 760f, -650f), vec4<f32>(2336f, -234f, -1566f, 444f))))), _wgslsmith_f_op_f32(-1484f * 435f));
    let var_1 = abs(-var_0.b.b);
    var var_2 = any(select(select(!(!vec4<bool>(var_0.a, true, false, var_0.a)), select(select(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, false, false), vec4<bool>(var_0.a, var_0.a, var_0.a, true)), select(vec4<bool>(true, true, var_0.a, true), vec4<bool>(var_0.a, true, false, true), vec4<bool>(var_0.a, true, true, var_0.a)), select(vec4<bool>(true, var_0.a, var_0.a, false), vec4<bool>(var_0.a, var_0.a, true, true), vec4<bool>(var_0.a, var_0.a, var_0.a, true))), vec4<bool>(var_0.a, any(vec3<bool>(true, var_0.a, var_0.a)), true, all(vec4<bool>(var_0.a, true, var_0.a, false)))), !select(!vec4<bool>(false, false, var_0.a, false), !vec4<bool>(var_0.a, var_0.a, var_0.a, false), !vec4<bool>(true, var_0.a, var_0.a, true)), select(vec4<bool>(var_0.a, func_3(vec4<bool>(var_0.a, false, false, var_0.a), vec3<bool>(var_0.a, var_0.a, true), 759f).a, true, all(vec4<bool>(false, false, var_0.a, var_0.a))), vec4<bool>(true, any(vec2<bool>(true, true)), true, select(false, var_0.a, true)), vec4<bool>(true, true, true, true))));
    var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(arg_0.a.x), 25u)];
    let var_3 = var_0.b.d;
    return func_3(!select(vec4<bool>(true, any(vec2<bool>(false, true)), var_0.a, false), select(vec4<bool>(var_0.a, false, false, true), vec4<bool>(false, var_0.a, var_0.a, true), select(false, var_0.a, var_0.a)), select(vec4<bool>(false, false, var_0.a, true), select(vec4<bool>(var_0.a, var_0.a, false, var_0.a), vec4<bool>(var_0.a, true, var_0.a, true), vec4<bool>(true, var_0.a, var_0.a, false)), true)), !(!(!vec3<bool>(var_0.a, false, false))), var_0.c);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_2.b.d)))) == _wgslsmith_f_op_f32(select(arg_2.b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-853f)) * -617f), !any(arg_3.a))), !arg_2.a);
    var_0 = arg_3.a.xy;
    global2 = vec2<u32>(_wgslsmith_sub_u32(min(17557u & global2.x, firstLeadingBit(19409u)) | u_input.a, ~(~2481u)), ~arg_1.b.a.x);
    let var_1 = func_3(vec4<bool>(arg_2.a, !func_3(vec4<bool>(true, false, var_0.x, false), arg_3.a, _wgslsmith_f_op_f32(f32(-1f) * -289f)).a, var_0.x, true), !arg_3.a, _wgslsmith_f_op_f32(-145f * arg_2.c));
    var_0 = vec2<bool>(select(func_1(Struct_4(vec4<u32>(u_input.a, 0u, global2.x, 48068u))).a, !(!func_3(vec4<bool>(arg_2.a, arg_3.a.x, false, arg_3.a.x), arg_3.a, arg_0.x).a), false != !(!arg_1.a)), !(arg_1.b.a.x <= _wgslsmith_clamp_u32(min(51737u, u_input.a), u_input.a, u_input.a)));
    return ~(_wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.b.a.x, 23308u, 4294967295u, 11004u), _wgslsmith_add_vec4_u32(vec4<u32>(global2.x, u_input.a, global2.x, u_input.a), vec4<u32>(25713u, arg_1.b.a.x, arg_1.b.a.x, 29514u)))) & arg_2.b.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2213f, _wgslsmith_f_op_f32(abs(-338f))) - 952f));
    var var_1 = 0u;
    var_1 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), 1082f), func_1(Struct_4(vec4<u32>(reverseBits(u_input.a), 24654u, ~90156u, global2.x))), Struct_2(_wgslsmith_mod_u32(1u, u_input.a ^ 0u) < max(firstTrailingBit(1u), 1u), func_1(Struct_4(~vec4<u32>(u_input.a, global2.x, global2.x, 43948u))).b, _wgslsmith_div_f32(-269f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(231f)), _wgslsmith_f_op_f32(f32(-1f) * -346f)))), global1[_wgslsmith_index_u32(~abs(abs(~global2.x)), 21u)]);
    global0 = array<Struct_2, 25>();
    global2 = firstTrailingBit(vec2<u32>(func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1599f, 1110f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-846f, -299f) - vec2<f32>(1103f, -375f)), vec2<bool>(false, false))), global0[_wgslsmith_index_u32(3851u | countOneBits(u_input.a), 25u)], func_3(vec4<bool>(true, true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), 499f), Struct_3(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), abs(u_input.c.x))), ~4716u));
    var var_2 = false | func_1(Struct_4(~vec4<u32>(global2.x, 0u, u_input.a, 8353u))).a;
    var var_3 = Struct_1(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(_wgslsmith_add_u32(u_input.a, global2.x), ~u_input.a, ~4294967295u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 68136u) | ~vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(_wgslsmith_mult_u32(16981u, 32291u), global2.x, 1u))), firstTrailingBit(_wgslsmith_mult_i32(-func_3(vec4<bool>(false, false, false, false), vec3<bool>(true, false, true), -267f).b.c, -17379i)), firstTrailingBit(~u_input.d.x), _wgslsmith_f_op_f32(max(232f, 1f)));
    var var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_3.d * _wgslsmith_f_op_f32(-943f * -1128f)), var_3.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.d)) * _wgslsmith_f_op_f32(-948f - var_3.d))), vec3<f32>(var_3.d, -236f, -2468f));
    var_1 = _wgslsmith_dot_vec2_u32(~var_3.a.zx, ~(~vec2<u32>(global2.x, 1u) | var_3.a.yz));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_add_i32(~u_input.d.x, u_input.c.x), 42962i));
}

