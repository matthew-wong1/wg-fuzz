struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec3<i32>) -> vec4<u32> {
    var var_0 = max(-1i, firstLeadingBit(max(-(~(-26326i)), ~35003i)));
    let var_1 = _wgslsmith_f_op_f32(trunc(arg_0));
    var var_2 = Struct_3(arg_1.c.d, ~arg_1.a.a, arg_1.c);
    var var_3 = vec2<i32>(~(firstLeadingBit(arg_1.c.a.x) & 2147483647i), _wgslsmith_clamp_i32(~_wgslsmith_dot_vec4_i32(-vec4<i32>(-44723i, 5282i, arg_2.x, 0i), abs(vec4<i32>(-45635i, var_2.c.a.x, u_input.c, arg_2.x))), _wgslsmith_dot_vec2_i32(~arg_2.xx, _wgslsmith_mult_vec2_i32(arg_2.yz, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.x, arg_2.x), u_input.a.yy))), 1i << (var_2.a.a % 32u)));
    var_2 = arg_1;
    return ~(~(~(~abs(vec4<u32>(var_2.a.a, 755u, u_input.b, u_input.b)))));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>) -> bool {
    global0 = select(vec2<bool>(true, all(vec3<bool>(any(vec2<bool>(global0.x, true)), arg_0, true))), select(!vec2<bool>(!global0.x, !global0.x), vec2<bool>(false, true), true), select(select(vec2<bool>(all(vec2<bool>(false, true)), arg_0), vec2<bool>(global0.x & arg_0, u_input.a.x == u_input.c), _wgslsmith_sub_i32(u_input.a.x, 1i) == _wgslsmith_add_i32(2147483647i, -39196i)), vec2<bool>(arg_0, !any(vec4<bool>(false, arg_0, false, true))), !(!(!vec2<bool>(arg_0, true)))));
    global0 = select(vec2<bool>(u_input.a.x == -4023i, arg_0), !(!vec2<bool>(true, all(vec2<bool>(global0.x, true)))), all(!select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(global0.x, true, true, arg_0), vec4<bool>(false, global0.x, true, true))) | true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-938f - 621f), _wgslsmith_f_op_f32(round(-1429f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1002f)))) - 953f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-892f, _wgslsmith_f_op_f32(f32(-1f) * -194f), true)), 218f)));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    global0 = select(vec2<bool>(arg_3.a.c | arg_0, !(arg_0 & true)), !(!(!select(vec2<bool>(arg_0, true), arg_1.zy, arg_1.x))), !arg_1.yz);
    let var_0 = arg_3.a;
    var var_1 = select(var_0.c, arg_3.a.c & select(!global0.x & true, true, true), true);
    let var_2 = arg_3.c.c;
    var var_3 = func_4(true, select(max(~vec4<u32>(1u, 1u, arg_2.a, u_input.b), reverseBits(min(vec4<u32>(1u, arg_3.b, var_0.a, 4294967295u), vec4<u32>(16540u, 66138u, var_0.a, 1u)))), func_3(_wgslsmith_f_op_f32(-arg_2.b), Struct_3(arg_2, _wgslsmith_add_u32(arg_2.a, arg_2.a), Struct_2(u_input.a, true, var_2, Struct_1(1u, -140f, true))), countOneBits(~vec3<i32>(-25084i, u_input.a.x, 0i))), vec4<bool>(all(select(vec4<bool>(true, arg_1.x, true, false), arg_1, true)), !arg_2.c, true, true)));
    return true;
}

fn func_1(arg_0: f32) -> StorageBuffer {
    global0 = select(select(select(vec2<bool>(u_input.b <= 1u, true != global0.x), vec2<bool>(all(vec4<bool>(false, true, global0.x, global0.x)), true), !select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, true), global0.x)), vec2<bool>(!func_2(global0.x, vec4<bool>(global0.x, global0.x, false, true), Struct_1(u_input.b, -1210f, global0.x), Struct_3(Struct_1(26595u, arg_0, global0.x), u_input.b, Struct_2(vec3<i32>(u_input.c, -45553i, u_input.c), global0.x, vec4<f32>(arg_0, arg_0, 1000f, arg_0), Struct_1(u_input.b, 1110f, global0.x)))), true), global0.x), !(!(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x)))), any(!vec3<bool>(true, true, global0.x)) && global0.x);
    var var_0 = -_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(max(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.c, u_input.c)) << (~vec4<u32>(0u, 14606u, u_input.b, 0u) % vec4<u32>(32u)), ~select(vec4<i32>(u_input.a.x, u_input.a.x, -8179i, -34295i), vec4<i32>(u_input.a.x, 42399i, -24760i, u_input.a.x), global0.x)), vec4<i32>(~u_input.c, u_input.a.x, 1464i, _wgslsmith_add_i32(max(-67938i, u_input.c), -2147483647i)), max(firstLeadingBit(min(vec4<i32>(2147483647i, u_input.a.x, -7774i, 1i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i))), vec4<i32>(u_input.c, min(0i, u_input.a.x), u_input.a.x, 20881i)));
    global0 = select(vec2<bool>(global0.x, any(vec3<bool>(true, global0.x, global0.x))), vec2<bool>(true, false), select(vec2<bool>(all(select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(true, global0.x, global0.x, false), false)), false), vec2<bool>(true, true), global0.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0)));
    let var_2 = -59265i;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, arg_0))), _wgslsmith_f_op_f32(ceil(var_1))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1217f, 536f))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-743f, -689f), vec2<f32>(833f, arg_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(arg_0, 959f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-492f, 1989f)))), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, false), vec2<bool>(global0.x, false)))))), 47790u, abs(vec3<i32>(u_input.c >> (u_input.b % 32u), abs(select(var_2, var_2, true)), ~42875i)), _wgslsmith_dot_vec2_i32(reverseBits(u_input.a.xx), vec2<i32>(1i, 12356i) & u_input.a.xz), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, _wgslsmith_f_op_f32(-952f - arg_0), 235f, _wgslsmith_f_op_f32(-var_1)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 492f, arg_0, var_1)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, var_1, var_1, -537f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(u_input.a);
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(f32(-1f) * -2338f));
}

