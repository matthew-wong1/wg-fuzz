struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-196f, -349f);

var<private> global1: u32 = 1u;

var<private> global2: Struct_2;

var<private> global3: Struct_1;

var<private> global4: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    global2 = Struct_2(Struct_1(global3.a, any(!(!vec3<bool>(true, true, global3.b))), abs(~vec2<u32>(global2.a.c.x, 4294967295u) ^ firstLeadingBit(vec2<u32>(1u, 114055u))), ~vec3<u32>(56755u, 53115u, arg_1.x) & ~arg_1.wzy, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global3.e.x), _wgslsmith_f_op_f32(sign(1000f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.e) + _wgslsmith_f_op_vec2_f32(-arg_2.e)))), arg_3, -1i);
    let var_0 = arg_2.e.x;
    let var_1 = Struct_2(Struct_1(select(global2.a.a, vec4<u32>(38255u, arg_3.a.x, arg_1.x, arg_1.x) | select(vec4<u32>(global2.a.d.x, 0u, global2.b.a.x, 50373u), vec4<u32>(global3.a.x, arg_0, 4294967295u, 1u), true), select(!vec4<bool>(true, false, true, global3.b), !vec4<bool>(true, global2.b.b, false, true), !arg_3.b)), !global2.b.b == all(vec4<bool>(true, false, global3.b, true)), vec2<u32>(select(global2.a.d.x, _wgslsmith_mod_u32(arg_2.a.x, arg_2.a.x), select(true, false, false)), global3.c.x), vec3<u32>(arg_2.c.x, ~arg_1.x >> (_wgslsmith_sub_u32(4361u, global2.b.c.x) % 32u), min(max(46069u, arg_0), reverseBits(4294967295u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(arg_2.e.x)), -367f))), arg_2, _wgslsmith_clamp_i32(global2.c, global2.c, 1i));
    global3 = Struct_1(firstLeadingBit((_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, 24808u, 54649u, global3.d.x), arg_2.a) | vec4<u32>(4294967295u, arg_3.a.x, u_input.a.x, global3.d.x)) >> (~vec4<u32>(29878u, arg_2.c.x, 100604u, u_input.a.x) % vec4<u32>(32u))), global3.b, vec2<u32>(arg_3.a.x, arg_0), min(vec3<u32>(~(~arg_0), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 27889u, 4294967295u) << (arg_1.zxy % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(var_1.a.d, vec3<u32>(var_1.a.d.x, 1u, arg_0))), _wgslsmith_clamp_u32(~4294967295u, select(global2.b.d.x, 17460u, false), 1u)), vec3<u32>(~4294967295u, arg_0, arg_1.x)), _wgslsmith_f_op_vec2_f32(arg_2.e + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-488f)), _wgslsmith_f_op_f32(select(-231f, 1198f, false))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-423f, global3.e.x) - var_1.b.e))));
    let var_2 = -((-45849i >> (u_input.a.x % 32u)) | global2.c);
    return global3.e;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_2(global2.a, Struct_1(~(~vec4<u32>(4294967295u, 0u, global2.b.d.x, u_input.a.x)), all(select(arg_0, !vec3<bool>(true, global3.b, global2.a.b), !arg_0)), global3.d.yz, ~(~abs(vec3<u32>(global2.b.c.x, 11367u, 5047u))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.e.x, -705f) * global2.b.e) * _wgslsmith_f_op_vec2_f32(func_3(4294967295u, vec4<u32>(66811u, global2.b.a.x, global3.d.x, 1u), global2.a, global2.b)))))), global2.c);
    var var_1 = ~(~(~_wgslsmith_add_vec4_u32(~var_0.a.a, _wgslsmith_sub_vec4_u32(global2.b.a, vec4<u32>(57738u, 0u, u_input.a.x, global3.a.x)))));
    var var_2 = select(0i, global2.c, global2.b.b) & ~(-abs(var_0.c) | 1i);
    global0 = global2.a.e;
    global2 = var_0;
    return Struct_1(vec4<u32>(abs(_wgslsmith_dot_vec4_u32(~global2.b.a, global2.b.a)), var_0.a.a.x >> (abs(_wgslsmith_div_u32(0u, global2.b.d.x)) % 32u), _wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(global3.a.zxw, var_1.wxx)), var_1.xzy), global3.a.x), !arg_0.x, vec2<u32>(_wgslsmith_div_u32(74736u, ~(var_1.x | 1u)), ~u_input.a.x), select(vec3<u32>(35122u, 28215u & var_0.b.c.x, ~1u), ~(_wgslsmith_clamp_vec3_u32(global2.b.d, var_1.zxx, var_0.a.a.zwy) | (global3.a.wyy & var_0.a.a.xwz)), arg_0), _wgslsmith_f_op_vec2_f32(global3.e + global3.e));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(func_2(vec3<bool>(!(global3.b & global2.b.b), global3.b, global2.b.b)), Struct_1(global2.a.a, global2.b.e.x != _wgslsmith_f_op_f32(trunc(global3.e.x)), u_input.a, global3.a.zxw, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global3.e.x), global3.e.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.e)))), min(-7164i, _wgslsmith_div_i32(~global2.c << (global3.d.x % 32u), global2.c)));
    global1 = ~(~countOneBits(u_input.a.x));
    var var_1 = ~(-(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.c, -1163i, 1i, var_0.c), vec4<i32>(global2.c, 30807i, var_0.c, -28804i)) >> (var_0.b.a % vec4<u32>(32u))) | vec4<i32>(~(-6729i), 16435i, -1i | var_0.c, 15017i >> (1u % 32u)));
    var var_2 = Struct_2(func_2(select(select(vec3<bool>(global3.b, global3.b, true), vec3<bool>(false, true, global2.a.b), false), vec3<bool>(true, false, global3.b), select(select(vec3<bool>(true, var_0.b.b, true), vec3<bool>(false, var_0.b.b, var_0.b.b), vec3<bool>(global3.b, true, false)), select(vec3<bool>(var_0.b.b, global2.a.b, global3.b), vec3<bool>(var_0.a.b, global2.b.b, global3.b), true), global2.b.b))), global2.b, _wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(9366i, var_1.x, 2087i, 72366i), vec4<i32>(-18401i, 1i, global2.c, var_0.c)), max(global2.c, (i32(-1i) * -35754i) | min(1i, var_1.x))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(select(vec3<bool>(global3.b, false, false), vec3<bool>(false, true, global3.b), vec3<bool>(global3.b, global2.b.b, var_0.a.b))).e.x + _wgslsmith_f_op_f32(var_2.b.e.x - _wgslsmith_f_op_f32(global3.e.x - -1881f))))), _wgslsmith_f_op_f32(step(-1000f, 1000f)));
    return Struct_2(Struct_1(var_2.b.a, false, max(global2.b.c >> (min(vec2<u32>(global2.b.a.x, var_2.a.c.x), global2.a.a.zy) % vec2<u32>(32u)), max(vec2<u32>(var_2.a.c.x, global3.d.x) ^ vec2<u32>(0u, global2.a.a.x), firstLeadingBit(vec2<u32>(1u, 28405u)))), select(_wgslsmith_add_vec3_u32(global3.d, global2.a.a.yzz), vec3<u32>(global2.a.c.x, 0u, 1u), false) >> (vec3<u32>(global2.b.c.x & 0u, 1u, 54627u) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(min(var_0.b.e, global2.a.e))), Struct_1(~var_2.b.a, !all(vec3<bool>(true, global3.b, true)), var_0.b.d.yz, abs(global2.b.d) >> (~vec3<u32>(global3.a.x, 4294967295u, global2.b.d.x) % vec3<u32>(32u)), _wgslsmith_div_vec2_f32(global3.e, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-582f, 158f), var_0.a.e)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-866f, -465f))))), abs(13480i));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global2.a;
    global2 = func_1();
    global2 = func_1();
    var var_0 = func_1().b;
    let var_1 = func_1();
    global3 = global2.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(1i, _wgslsmith_mod_i32(18848i, var_1.c), var_1.c & var_1.c, var_1.c), max(select(vec4<i32>(var_1.c, -34400i, global2.c, 10119i), vec4<i32>(global2.c, -6530i, 11486i, -1i), true), -vec4<i32>(-31530i, global2.c, var_1.c, -2147483647i)))));
}

