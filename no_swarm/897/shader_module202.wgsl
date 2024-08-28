struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 17>;

var<private> global1: vec4<u32>;

var<private> global2: array<vec2<i32>, 10>;

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool) -> vec2<i32> {
    global1 = (min(u_input.d, _wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(23921u, 46377u, 0u, u_input.a))) | u_input.d) >> (reverseBits(reverseBits(~u_input.d)) % vec4<u32>(32u));
    global2 = array<vec2<i32>, 10>();
    global1 = ~reverseBits(u_input.d);
    var var_0 = Struct_1(0i, ~1u, any(vec4<bool>(any(!vec2<bool>(arg_0, global3.b.x)), global3.a.c, !select(global3.b.x, true, true), true)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-619f * 741f))));
    return _wgslsmith_mod_vec2_i32(vec2<i32>(~global3.c.a >> (0u % 32u), -_wgslsmith_mult_i32(_wgslsmith_add_i32(-4720i, -33994i), ~global3.a.a)), global2[_wgslsmith_index_u32(59527u, 10u)]);
}

fn func_2() -> u32 {
    let var_0 = 965i;
    let var_1 = func_3(true);
    global2 = array<vec2<i32>, 10>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-666f, 209f)) - 1716f);
    var var_3 = !select(!(!vec4<bool>(global3.a.c, true, true, global3.b.x)), select(vec4<bool>(global3.b.x, all(vec4<bool>(true, true, global3.a.c, false)), true, true), vec4<bool>(false, global3.c.c, true, !global3.b.x), vec4<bool>(true, true, true, true)), select(select(!vec4<bool>(true, global3.b.x, global3.a.c, global3.b.x), !vec4<bool>(global3.a.c, true, global3.c.c, false), !vec4<bool>(global3.a.c, global3.a.c, true, false)), !vec4<bool>(global3.a.c, true, global3.a.c, false), !vec4<bool>(global3.b.x, global3.a.c, false, global3.b.x)));
    return _wgslsmith_mult_u32(~firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(50799u, global3.c.b), u_input.d.xz)), _wgslsmith_sub_u32(global3.a.b, global1.x) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d.x, 0u, global3.a.b), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, u_input.c.x, u_input.d.x), abs(vec3<u32>(global3.a.b, 3676u, 5356u)))) % 32u));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global1 = vec4<u32>(_wgslsmith_dot_vec2_u32(~(~u_input.d.yz), vec2<u32>(~35170u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, global3.a.b, 0u), global1.wyz))) & (~u_input.d.x & ~func_2()), _wgslsmith_sub_u32(global1.x, ~4294967295u), 1u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(36407u, global3.c.b, ~5323u)), vec3<u32>(4294967295u, 5832u, countOneBits(~1u))));
    global0 = array<vec4<f32>, 17>();
    global1 = vec4<u32>(u_input.a, select(~((1u ^ u_input.d.x) | global1.x), global3.c.b, !(any(global3.b) & all(vec4<bool>(global3.b.x, false, global3.a.c, global3.c.c)))), ~(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, 12590u), firstTrailingBit(u_input.a), ~global3.c.b)), 4294967295u);
    let var_0 = global3.c;
    var var_1 = vec3<bool>(var_0.c, true, true);
    return Struct_1(~arg_0 >> (18526u % 32u), ~var_0.b, true);
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = vec2<bool>(arg_1.a.c | true, false);
    global1 = abs(abs(abs(vec4<u32>(func_1(arg_1.c.a).b, arg_1.c.b | global3.a.b, global1.x >> (4294967295u % 32u), u_input.a))));
    global3 = arg_1;
    let var_1 = 760f;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-104f, arg_0), _wgslsmith_f_op_f32(442f + -738f), _wgslsmith_f_op_f32(f32(-1f) * -2136f))) + vec3<f32>(719f, 219f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(arg_0 - 247f)))));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2636f), 1161f))), Struct_2(global3.a, !select(vec2<bool>(global3.a.c, true), vec2<bool>(global3.c.c, global3.b.x), global3.b), func_1(_wgslsmith_sub_i32(u_input.b, u_input.b)))), global3.b, func_4(-493f, Struct_2(func_4(-471f, Struct_2(Struct_1(global3.c.a, global1.x, true), vec2<bool>(true, false), global3.c)), vec2<bool>(true, any(vec3<bool>(true, global3.c.c, global3.c.c))), global3.c)));
    var var_1 = global3.c;
    var_1 = Struct_1(~_wgslsmith_add_i32(~firstLeadingBit(var_0.c.a), countOneBits(-global3.a.a)), 1u, false);
    var var_2 = 1i;
    global3 = Struct_2(var_0.a, select(select(vec2<bool>(any(vec4<bool>(false, true, true, true)), true), vec2<bool>(all(vec4<bool>(var_1.c, true, global3.c.c, var_1.c)), var_1.c), global3.b), select(select(!global3.b, select(var_0.b, var_0.b, var_0.b), select(vec2<bool>(false, global3.a.c), vec2<bool>(var_0.b.x, false), false)), !(!var_0.b), select(var_0.b, select(global3.b, vec2<bool>(true, true), global3.c.c), vec2<bool>(var_1.c, false))), true), Struct_1(func_1(u_input.b).a, ~0u, any(vec2<bool>(any(vec3<bool>(true, global3.b.x, var_1.c)), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(countOneBits(_wgslsmith_add_vec4_i32(-vec4<i32>(83103i, -7483i, var_1.a, global3.a.a), select(vec4<i32>(27141i, -33900i, -61005i, var_1.a), vec4<i32>(u_input.b, var_0.a.a, 151i, var_1.a), vec4<bool>(var_1.c, false, var_0.a.c, global3.c.c)))), select(~vec4<i32>(var_0.c.a, 40205i, 1i, -26439i), vec4<i32>(var_1.a, var_0.c.a, var_1.a, global3.c.a) << (u_input.d % vec4<u32>(32u)), !vec4<bool>(global3.b.x, true, var_0.b.x, global3.c.c)) | vec4<i32>(func_4(-1531f, Struct_2(global3.c, var_0.b, Struct_1(2147483647i, 28272u, true))).a, -6988i, 1i, firstTrailingBit(-30694i))), var_1.a, func_3(true & !select(false, false, false)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 745f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(855f, 259f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1905f, 703f))))));
}

