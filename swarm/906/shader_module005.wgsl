struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, true), i32(-2147483648), 4294967295u);

var<private> global3: array<vec2<f32>, 17>;

var<private> global4: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: u32) -> u32 {
    var var_0 = ~_wgslsmith_sub_u32(min(_wgslsmith_div_u32(0u, arg_2), ~(~1u)), 1u);
    return reverseBits(_wgslsmith_mod_u32(~(~firstLeadingBit(0u)), firstLeadingBit(global2.c)));
}

fn func_2() -> Struct_1 {
    global2 = Struct_1(global2.a, -global2.b, 1u);
    let var_0 = Struct_1(vec2<bool>(all(!vec3<bool>(global2.a.x, global2.a.x, global2.a.x)), !any(!global4.xyz)), ~2147483647i, ~4294967295u);
    global1 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(-(~reverseBits(-1i)), _wgslsmith_mult_i32(_wgslsmith_div_i32(2675i, 2147483647i), var_0.b)), abs(_wgslsmith_dot_vec3_i32(-u_input.c, u_input.c) & ~(-u_input.c.x)));
    return Struct_1(select(global4.wz, !var_0.a, !var_0.a), 1i, func_3(vec4<u32>(~(var_0.c << (4294967295u % 32u)), ~var_0.c, 1u, ~(~8577u)), _wgslsmith_dot_vec2_i32(vec2<i32>(30050i, i32(-1i) * -15082i), _wgslsmith_add_vec2_i32(abs(u_input.c.xz), firstTrailingBit(u_input.c.zy))), ~var_0.c));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: bool) -> Struct_1 {
    var var_0 = !arg_1.a;
    var var_1 = func_2();
    var var_2 = select(vec2<bool>(~1i == arg_0.x, global2.a.x | true), select(select(vec2<bool>(any(vec4<bool>(true, var_0.x, arg_1.a.x, true)), true), vec2<bool>(false, 52432u < var_1.c), !vec2<bool>(global4.x, false)), vec2<bool>(global4.x, global2.a.x), global4.x), func_2().a);
    let var_3 = func_2();
    var_0 = !select(!vec2<bool>(!var_0.x, var_3.a.x != var_1.a.x), vec2<bool>(all(global4.zzy), false), vec2<bool>(any(!vec4<bool>(var_0.x, false, true, var_3.a.x)), false));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = 440f;
    global2 = func_2();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-1233f, var_0, 1078f), vec3<f32>(-719f, var_0, var_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1431f, -1128f, var_0)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(381f, -288f, var_0)))), arg_2.x))) - vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), -107f))), 1000f));
    var var_2 = -1188f;
    var_2 = _wgslsmith_f_op_f32(ceil(var_0));
    return func_1(~abs(select(u_input.c.zx, u_input.c.xz, arg_2.x)) << (select(_wgslsmith_sub_vec2_u32(max(u_input.d, arg_1.yx), abs(vec2<u32>(arg_1.x, 4294967295u))), select(u_input.d, _wgslsmith_div_vec2_u32(arg_1.yy, vec2<u32>(global2.c, 1u)), global4.x), vec2<bool>(-25586i == arg_0.b, any(vec3<bool>(false, global2.a.x, global4.x)))) % vec2<u32>(32u)), arg_0, u_input.d, any(!select(select(arg_2, arg_2, arg_2), !arg_2, select(arg_2, arg_2, global4.x))));
}

fn func_5(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = false;
    var_0 = arg_0;
    global1 = reverseBits(func_2().b);
    var var_2 = arg_0;
    return func_1(vec2<i32>(u_input.c.x, _wgslsmith_add_i32(var_2.b, -40327i)), func_1(_wgslsmith_add_vec2_i32(u_input.c.xx, vec2<i32>(1i, ~(-2780i))), arg_0, ~(~vec2<u32>(1u, arg_0.c)), !(!var_1)), u_input.d, true).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_5(func_4(func_1(~u_input.c.yz, Struct_1(vec2<bool>(true, true), 2147483647i, global2.c), vec2<u32>(1u, 42366u), true), ~_wgslsmith_add_vec3_u32(vec3<u32>(4755u, 5490u, 0u), vec3<u32>(23057u, global2.c, 29165u)), select(vec4<bool>(false, global4.x, global2.a.x, false), select(vec4<bool>(global2.a.x, true, false, global4.x), vec4<bool>(true, global4.x, global2.a.x, global4.x), global4.x), global4.x))), func_2().b, reverseBits(u_input.a.x | _wgslsmith_mod_u32(0u, u_input.a.x << (global2.c % 32u))));
    var var_1 = !func_2().a;
    var var_2 = Struct_1(var_0.a, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~(u_input.c.zz & vec2<i32>(2147483647i, var_0.b)), u_input.c.xy, vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(-2147483647i, var_0.b, -1i)), 1i)), min(u_input.c.zz, abs(u_input.c.zx))), 47574u);
    var var_3 = func_4(var_0, _wgslsmith_mult_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c, var_0.c, var_2.c), vec3<u32>(14791u, 49301u, 82999u)), vec3<u32>(var_0.c, 0u, global2.c) ^ vec3<u32>(71046u, 1u, var_0.c), false), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.c, 1u, 1u), ~vec3<u32>(35989u, var_0.c, 21021u))) | vec3<u32>(_wgslsmith_div_u32(var_0.c ^ 41806u, _wgslsmith_clamp_u32(14010u, 0u, u_input.d.x)), 1u, var_0.c >> (~var_0.c % 32u)), vec4<bool>(func_1(_wgslsmith_div_vec2_i32(vec2<i32>(-55739i, 54620i), vec2<i32>(var_0.b, 10408i)) ^ ~u_input.c.yz, Struct_1(func_5(var_0), 0i, 11403u), u_input.d << (vec2<u32>(var_2.c, 5868u) % vec2<u32>(32u)), !(!var_0.a.x)).a.x, true, global2.a.x, true));
    let var_4 = firstLeadingBit(min(var_3.c, _wgslsmith_add_u32(var_3.c, min(select(var_2.c, 4294967295u, false), _wgslsmith_div_u32(var_0.c, 21787u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -805f, -813f))) - vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2437f), 1000f, global2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -155f), _wgslsmith_f_op_f32(f32(-1f) * -484f))), ~2147483647i, vec4<i32>(var_2.b, func_2().b, -u_input.c.x | 1i, func_2().b) >> (_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_3.c, var_2.c, var_4), vec4<u32>(var_3.c, var_3.c, var_4, 70242u)), vec4<u32>(var_2.c, _wgslsmith_div_u32(4294967295u, 47702u), ~var_0.c, abs(u_input.d.x))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1112f, 616f, -252f), vec3<f32>(-2001f, 1505f, 1322f)))), vec3<f32>(1f, 1f, 1f))));
}

