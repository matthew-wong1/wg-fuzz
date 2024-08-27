struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
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

var<private> global0: Struct_2 = Struct_2(vec4<u32>(72008u, 63152u, 11237u, 55489u), vec4<bool>(true, false, true, false), true, -1000f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = Struct_2(vec4<u32>(global0.a.x, 54223u, _wgslsmith_sub_u32(global0.a.x, ~min(7252u, 4294967295u)), 0u << (global0.a.x % 32u)), !(!select(select(vec4<bool>(arg_0, false, global0.b.x, false), vec4<bool>(false, arg_0, global0.b.x, arg_0), false), !vec4<bool>(global0.b.x, global0.b.x, global0.c, arg_0), true || global0.b.x)), global0.d < -1581f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1109f, _wgslsmith_f_op_f32(global0.d * global0.d)))));
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.c.yw, u_input.c.wy << (u_input.c.xz % vec2<u32>(32u))) & var_0.a.xx, _wgslsmith_mod_vec2_u32(global0.a.wz, u_input.c.xx)), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(global0.a.x, 1u, var_0.a.x), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(global0.a, vec4<u32>(var_0.a.x, 29940u, 7461u, var_0.a.x)), ~u_input.c)), reverseBits(global0.a.xw)));
    global0 = Struct_2(~(vec4<u32>(29904u, ~0u, var_0.a.x, max(1u, u_input.c.x)) & min(~vec4<u32>(68528u, u_input.a.x, global0.a.x, var_1), vec4<u32>(4294967295u, global0.a.x, 1u, var_1))), !(!vec4<bool>(select(arg_0, true, true), arg_0, true, true)), true, -875f);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-553f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.d + -302f)))) - _wgslsmith_f_op_f32(-717f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + var_0.d)))), Struct_1(vec3<u32>(1u, 1u >> (1u % 32u), _wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.a.x, 1u), countOneBits(var_0.a.x)))), _wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.x, global0.a.x), var_0.a.zx), _wgslsmith_clamp_vec2_u32(vec2<u32>(26318u, var_1) & var_0.a.wz, _wgslsmith_add_vec2_u32(vec2<u32>(116651u, 7910u), var_0.a.xx), ~vec2<u32>(0u, 0u))) & vec2<u32>(var_0.a.x, countOneBits(min(16906u, var_0.a.x))), firstTrailingBit(-vec3<i32>(_wgslsmith_div_i32(-1i, -28276i), -u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(3579i, 1i), u_input.b.xx))), Struct_1(var_0.a.zyy));
    let var_3 = !var_0.b;
    return abs(~(-21581i));
}

fn func_2() -> u32 {
    global0 = Struct_2(~vec4<u32>(~global0.a.x, u_input.c.x >> (global0.a.x % 32u), ~u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(11176u, u_input.a.x, global0.a.x), global0.a.xyw)) ^ (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 16113u, 9307u, 4294967295u), vec4<u32>(global0.a.x, 4294967295u, u_input.a.x, 31546u), countOneBits(vec4<u32>(0u, 50417u, 0u, 0u))) & (abs(vec4<u32>(global0.a.x, u_input.c.x, 16536u, 4294967295u)) | ~vec4<u32>(global0.a.x, u_input.c.x, global0.a.x, 64357u))), global0.b, _wgslsmith_f_op_f32(global0.d + _wgslsmith_f_op_f32(f32(-1f) * -1037f)) > global0.d, _wgslsmith_f_op_f32(-1f));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1724f));
    var var_1 = vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, u_input.b.x, _wgslsmith_div_i32(func_3(global0.c), u_input.b.x));
    let var_2 = Struct_3(232f, Struct_1(vec3<u32>(~(~1u), ~1u, u_input.c.x)), u_input.a, u_input.b.xwy, Struct_1(~select(~vec3<u32>(u_input.c.x, global0.a.x, u_input.a.x), abs(u_input.c.xww), true)));
    global0 = Struct_2(~abs(abs(max(u_input.c, vec4<u32>(4294967295u, 161u, 0u, 1u)))), !vec4<bool>(global0.c, global0.c, true, !global0.c), global0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(256f + -1000f) - global0.d))));
    return ~(~_wgslsmith_div_u32(~(u_input.a.x & u_input.a.x), ~(~u_input.c.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_3(arg_3, Struct_1(vec3<u32>(select(reverseBits(31628u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.a.x, 0u), arg_0.a.yww), !global0.b.x), arg_1.x, countOneBits(1u))), vec2<u32>(min((5661u ^ global0.a.x) | _wgslsmith_clamp_u32(4294967295u, 4294967295u, arg_1.x), min(func_2(), ~1u)), ~4294967295u), -u_input.b.zxx, Struct_1(_wgslsmith_clamp_vec3_u32(arg_1.yxz, (arg_1.zwy >> (vec3<u32>(arg_1.x, arg_0.a.x, 56401u) % vec3<u32>(32u))) >> (~arg_1.ywy % vec3<u32>(32u)), vec3<u32>(17265u, ~18404u, 1u))));
    var var_1 = Struct_3(global0.d, var_0.e, vec2<u32>(~1u, min(reverseBits(var_0.b.a.x << (u_input.c.x % 32u)), 4294967295u)), select(u_input.b.yyw, vec3<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(10886i, 32537i, 0i)), max(vec3<i32>(var_0.d.x, var_0.d.x, var_0.d.x), vec3<i32>(u_input.b.x, 1i, u_input.b.x))), 2147483647i, 1i), !select(true, true, arg_0.c)), Struct_1(~vec3<u32>(1u, ~u_input.c.x, var_0.e.a.x)));
    var var_2 = Struct_2(countOneBits(u_input.c), !select(select(select(arg_0.b, arg_0.b, arg_0.c), arg_0.b, true), select(vec4<bool>(false, false, arg_0.c, false), !global0.b, vec4<bool>(false, false, false, global0.c)), select(select(vec4<bool>(false, arg_0.b.x, global0.b.x, false), arg_0.b, global0.b.x), arg_0.b, select(arg_0.b, vec4<bool>(false, arg_0.c, arg_0.b.x, global0.b.x), vec4<bool>(true, global0.b.x, true, arg_0.b.x)))), any(select(select(arg_0.b, !global0.b, arg_0.b), vec4<bool>(arg_0.b.x, arg_0.c, !global0.b.x, false), _wgslsmith_f_op_f32(select(-2147f, -556f, false)) == _wgslsmith_f_op_f32(-global0.d))), var_1.a);
    global0 = arg_0;
    var var_3 = var_0.e;
    return var_0.b;
}

fn func_1() -> bool {
    var var_0 = func_4(Struct_2(~(~_wgslsmith_add_vec4_u32(vec4<u32>(global0.a.x, 0u, global0.a.x, u_input.c.x), global0.a)), global0.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1468f), -132f)) > _wgslsmith_f_op_f32(-global0.d), 1448f), u_input.c >> (vec4<u32>(global0.a.x, _wgslsmith_sub_u32(global0.a.x, global0.a.x), _wgslsmith_dot_vec2_u32(global0.a.wy, global0.a.xy), func_2()) % vec4<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(abs(-905f)), _wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(257f - global0.d)), global0.d), 399f);
    let var_1 = u_input.b;
    var var_2 = true;
    let var_3 = u_input.d;
    var_0 = Struct_1(max(_wgslsmith_mod_vec3_u32(min(global0.a.xyw << (global0.a.wyz % vec3<u32>(32u)), abs(var_0.a)), vec3<u32>(~4294967295u, 76625u & global0.a.x, abs(0u))), firstLeadingBit(vec3<u32>(59144u, ~10616u, firstTrailingBit(4571u)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.c, min(vec4<u32>(0u, 4294967295u, 51082u, u_input.a.x), u_input.c)), ~vec4<u32>(global0.a.x, global0.a.x, 103775u, 101739u)), vec4<bool>(func_1(), global0.c, all(vec3<bool>(!global0.b.x, all(vec2<bool>(true, global0.b.x)), u_input.c.x <= 1u)), !(global0.c != any(vec4<bool>(global0.b.x, global0.c, false, false)))), abs(_wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i, u_input.d), ~u_input.d)) == -abs(u_input.b.x), _wgslsmith_f_op_f32(-global0.d));
    let var_1 = !vec2<bool>(!global0.b.x, any(global0.b));
    var var_2 = all(!vec2<bool>(global0.b.x, all(select(vec2<bool>(false, global0.b.x), vec2<bool>(var_1.x, var_1.x), true))));
    let var_3 = ~vec3<i32>(abs(func_3(false) ^ _wgslsmith_mod_i32(u_input.b.x, 43257i)), firstLeadingBit(-2147483647i), _wgslsmith_div_i32(min(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.d, -8358i, u_input.b.x), u_input.b), -2147483647i), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.d), vec4<i32>(57751i, u_input.b.x, 0i, 0i), true), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -7744i, u_input.b.x, 18607i), u_input.b))));
    var_2 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-423f)), _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(858f - 1305f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1246f, global0.d, 279f))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.d, -1058f, -893f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(146f, global0.d, 677f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.d, global0.d, 1814f), vec3<f32>(-1423f, global0.d, 484f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.d, global0.d, 1779f), vec3<f32>(692f, 1711f, -1209f), vec3<bool>(var_0.b.x, var_0.b.x, false)))))), func_2(), 23201u, 16956u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * 1539f))));
}

