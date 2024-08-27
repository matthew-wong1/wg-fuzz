struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10>;

var<private> global1: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> bool {
    return any(!arg_1.a.zx);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32) -> bool {
    global1 = Struct_1(arg_0.c.a, vec2<i32>(_wgslsmith_add_i32((-27640i >> (arg_0.c.c.x % 32u)) >> (~24677u % 32u), _wgslsmith_mult_i32(arg_0.c.b.x, -global1.b.x)), 1i), vec3<u32>(_wgslsmith_mod_u32(arg_0.c.c.x, 1u), _wgslsmith_add_u32(u_input.a.x, global1.d.x), ~arg_0.c.d.x), _wgslsmith_div_vec4_u32(~(~(~arg_0.c.d)), vec4<u32>(1u, u_input.a.x, firstTrailingBit(global1.c.x), _wgslsmith_div_u32(_wgslsmith_add_u32(2185u, global1.c.x), u_input.a.x & 4294967295u))), arg_0.a);
    global1 = arg_0.c;
    let var_0 = -468f;
    let var_1 = arg_0.b.x >> (~59545u % 32u);
    let var_2 = Struct_2(1u >= (~(~13519u) & ~(~u_input.a.x)), vec3<u32>(_wgslsmith_clamp_u32(31787u, global1.d.x, 28137u) >> (_wgslsmith_div_u32(u_input.a.x, global1.d.x) % 32u), (global1.c.x << (113716u % 32u)) | ~101162u, ~(~4294967295u)) ^ _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~u_input.a.wxy, vec3<u32>(var_1, u_input.a.x, 1u), abs(vec3<u32>(29334u, var_1, 14914u))), _wgslsmith_add_vec3_u32(u_input.a.xyw, abs(global1.c))), arg_0.c);
    return true;
}

fn func_2(arg_0: bool) -> vec3<i32> {
    var var_0 = Struct_1(select(select(vec3<bool>(!global1.a.x, all(vec2<bool>(false, global1.e)), all(vec3<bool>(true, false, arg_0))), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, arg_0), vec3<bool>(true, arg_0, false)), global1.a, !vec3<bool>(arg_0, arg_0, false)), !global1.a.x), vec3<bool>(-483f > _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 10u)] - -186f), func_3(Struct_2(arg_0, global1.d.wyw, Struct_1(vec3<bool>(arg_0, true, global1.e), vec2<i32>(global1.b.x, global1.b.x), vec3<u32>(global1.d.x, 1u, 53389u), global1.d, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(234f, 2284f) - vec2<f32>(422f, global0[_wgslsmith_index_u32(global1.d.x, 10u)])), global1.b.x), arg_0), false), -countOneBits(global1.b), select(~u_input.a.xwx, abs(vec3<u32>(global1.d.x, global1.d.x, ~78299u)), false), min(global1.d, ~u_input.a), any(vec4<bool>(arg_0, false, arg_0, arg_0)));
    let var_1 = Struct_2(arg_0, var_0.d.yzz, Struct_1(global1.a, vec2<i32>(_wgslsmith_dot_vec2_i32(-global1.b, ~vec2<i32>(56884i, var_0.b.x)), var_0.b.x), countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.d.x, 18382u, 0u), _wgslsmith_div_vec3_u32(var_0.c, var_0.d.xxx), u_input.a.yxw)), vec4<u32>(global1.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.d.x) ^ vec2<u32>(global1.c.x, u_input.a.x), vec2<u32>(1u, global1.d.x)), firstTrailingBit(u_input.a.x), global1.d.x), all(!vec3<bool>(true, true, arg_0))));
    let var_2 = Struct_2(true, var_0.d.wzx, var_1.c);
    global0 = array<f32, 10>();
    let var_3 = _wgslsmith_sub_vec3_i32(abs(-vec3<i32>(var_1.c.b.x, -1i, 25942i) & firstTrailingBit(vec3<i32>(var_1.c.b.x, 2147483647i, 19351i))), countOneBits(~_wgslsmith_div_vec3_i32(vec3<i32>(var_1.c.b.x, var_0.b.x, -30776i), vec3<i32>(var_0.b.x, var_0.b.x, var_2.c.b.x))));
    return vec3<i32>(var_2.c.b.x, -36384i, ~(~var_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a;
    var var_1 = func_2(any(!vec4<bool>(global1.a.x, true, all(vec4<bool>(false, false, global1.e, false)), func_1(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], Struct_1(global1.a, vec2<i32>(2147483647i, 50969i), u_input.a.xyx, vec4<u32>(u_input.a.x, global1.d.x, 27289u, 4294967295u), global1.e), 674f))));
    let var_2 = Struct_1(!vec3<bool>(var_0.x, !global1.a.x, true), vec2<i32>((var_1.x << (19570u % 32u)) | (-global1.b.x << (global1.c.x % 32u)), -(~(-22775i))), ~firstTrailingBit(select(global1.c, u_input.a.ywy, vec3<bool>(false, false, false))) << (select(vec3<u32>(~global1.c.x, global1.d.x, _wgslsmith_div_u32(19007u, u_input.a.x)), u_input.a.zzx, select(select(global1.a, global1.a, vec3<bool>(false, global1.e, false)), select(vec3<bool>(global1.e, var_0.x, true), vec3<bool>(false, false, global1.e), vec3<bool>(false, false, true)), global1.a)) % vec3<u32>(32u)), ~abs(vec4<u32>(~8222u, _wgslsmith_add_u32(u_input.a.x, 0u), ~1u, global1.d.x)), true);
    let var_3 = global1.a;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1887f)) - global0[_wgslsmith_index_u32(5125u, 10u)]), _wgslsmith_f_op_f32(select(1000f, 1508f, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(2470f, 616f))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 10u)], -458f, global0[_wgslsmith_index_u32(var_2.c.x, 10u)]) * vec3<f32>(global0[_wgslsmith_index_u32(0u, 10u)], -1007f, -896f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(63185u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]) + vec3<f32>(-266f, 307f, 714f))))))));
    global1 = Struct_1(vec3<bool>(any(vec4<bool>(false, var_0.x, true, true)), all(vec3<bool>(!var_3.x, var_0.x, global1.e && false)), !all(vec3<bool>(global1.e, true, var_0.x))), min(select(vec2<i32>(var_2.b.x, global1.b.x) >> (u_input.a.wx % vec2<u32>(32u)), ~global1.b, select(vec2<bool>(var_2.e, var_3.x), global1.a.zz, false)) & ((global1.b << (global1.c.zz % vec2<u32>(32u))) << (global1.c.xx % vec2<u32>(32u))), vec2<i32>(global1.b.x << (5254u % 32u), -50994i)), vec3<u32>(var_2.d.x, _wgslsmith_add_u32(select(global1.c.x, ~0u, global1.e && var_2.a.x), 4294967295u), ~(~var_2.d.x)), countOneBits(firstLeadingBit(_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(global1.d.x, global1.d.x, global1.c.x, u_input.a.x), u_input.a) & _wgslsmith_mult_vec4_u32(var_2.d, global1.d))), global1.e);
    var_1 = select(-vec3<i32>(func_2(true).x, 0i, var_1.x), vec3<i32>(var_2.b.x, var_2.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, 1i, var_2.b.x) << (vec3<u32>(4294967295u, u_input.a.x, var_2.d.x) % vec3<u32>(32u)), vec3<i32>(var_2.b.x, 27617i, 2147483647i)), -vec3<i32>(2147483647i, 2147483647i, -8600i))), select(global1.a, vec3<bool>(true, !global1.e, all(select(vec4<bool>(true, var_2.e, var_2.a.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false), false))), !any(global1.a.xx)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(var_2.d.x), _wgslsmith_mult_u32(~0u, 0u), 0u, var_2.d.x), ~var_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u | var_2.d.x, ~22445u), 10u)]))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(select(1111f, global0[_wgslsmith_index_u32(82762u, 10u)], global1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -389f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(999f + var_4.x)), -1049f))), _wgslsmith_dot_vec3_u32(min(_wgslsmith_div_vec3_u32(vec3<u32>(global1.c.x, 47890u, 0u), vec3<u32>(23987u, var_2.c.x, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(global1.c.x, var_2.c.x, 3654u), vec3<u32>(u_input.a.x, 12197u, global1.c.x))), u_input.a.wzz), vec2<f32>(global0[_wgslsmith_index_u32(abs(reverseBits(4294967295u)), 10u)], global0[_wgslsmith_index_u32(global1.c.x, 10u)]));
}

