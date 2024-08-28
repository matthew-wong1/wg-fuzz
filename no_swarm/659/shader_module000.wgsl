struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: Struct_3;

var<private> global2: array<vec3<f32>, 14>;

var<private> global3: vec3<bool> = vec3<bool>(true, true, false);

var<private> global4: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_2) -> bool {
    let var_0 = !(global0.x && true);
    global0 = select(vec3<bool>(any(vec3<bool>(true, true, true)) != any(select(vec3<bool>(true, true, global4.x), vec3<bool>(global3.x, global1.a.c.a.x, arg_2.c.c), vec3<bool>(global4.x, arg_2.c.c, arg_2.c.c))), all(vec4<bool>(global4.x, global0.x, true, false)) && false, true), !select(arg_2.c.a, vec3<bool>(true, false & global3.x, global1.b == 1013f), select(all(vec2<bool>(arg_2.c.c, global1.a.c.c)), !global1.a.c.a.x, true)), global1.a.c.a);
    global4 = select(!(!(!vec4<bool>(false, global4.x, false, false))), select(!select(vec4<bool>(arg_2.c.c, global0.x, false, true), !vec4<bool>(arg_2.c.c, global4.x, false, false), -18960i <= u_input.c.x), !select(!vec4<bool>(var_0, global1.a.c.c, true, true), !vec4<bool>(true, true, arg_2.c.c, false), var_0 && var_0), vec4<bool>(false, true, true, any(!global1.a.c.a.zx))), false);
    global0 = vec3<bool>(any(vec3<bool>(!var_0, all(vec4<bool>(var_0, false, global1.a.c.a.x, global3.x)), true)) | any(!global0.zx), true, any(vec3<bool>(all(select(vec4<bool>(false, arg_2.c.c, true, arg_2.c.a.x), vec4<bool>(global3.x, global1.a.c.a.x, arg_2.c.a.x, false), global4.x)), global3.x, true)));
    global1 = Struct_3(Struct_2(global1.a.a, firstTrailingBit(1i), arg_2.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -171f))), -348f)));
    return false;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: vec4<i32>) -> bool {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(957f * _wgslsmith_f_op_f32(-531f * global1.a.c.d))), global1.a.a.x), global1.b, _wgslsmith_f_op_f32(-global1.a.c.d), global1.a.a.x);
    let var_1 = Struct_1(!vec3<bool>(true, !(true & global4.x), func_3(firstLeadingBit(1u), global1.a.a.x, global1.a)), vec4<u32>(global1.a.c.b.x, arg_1.x, arg_1.x, 0u) ^ u_input.a, any(select(vec3<bool>(global0.x, true, global4.x), !(!vec3<bool>(true, global0.x, global1.a.c.a.x)), select(!global4.ywx, select(vec3<bool>(false, true, global1.a.c.c), vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, true, true)), global4.xyw))), var_0.x);
    var var_2 = Struct_4(max(abs(i32(-1i) * -1i), countOneBits(arg_2.x)), ~17932u, global1.a.c.a.zy);
    let var_3 = Struct_3(Struct_2(var_0, ~(-49433i) >> (var_2.b % 32u), Struct_1(vec3<bool>(global0.x, func_3(var_1.b.x, -1540f, global1.a), select(false, true, global1.a.c.c)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, global1.a.c.b), ~vec4<u32>(var_1.b.x, var_1.b.x, 40261u, u_input.b)), !all(vec3<bool>(false, global3.x, global0.x)), 773f)), global1.b);
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -275f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.c.d) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.a.c.d)) - _wgslsmith_f_op_f32(ceil(var_0.x))))) * vec2<f32>(_wgslsmith_f_op_f32(select(var_1.d, -1107f, any(select(var_3.a.c.a, vec3<bool>(true, global0.x, global3.x), vec3<bool>(global0.x, true, global3.x))))), var_3.b));
    return !global0.x;
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    var var_0 = false;
    global3 = vec3<bool>(all(vec4<bool>(!global3.x, !global0.x, any(vec4<bool>(true, true, global4.x, true)), select(false, true, global3.x))) && any(vec4<bool>(!global4.x, any(vec4<bool>(global0.x, global4.x, false, global3.x)), all(vec4<bool>(true, global3.x, false, true)), any(vec4<bool>(false, global0.x, false, true)))), global1.a.c.a.x, func_2(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.b), global1.a.c.b.wxy), ~global1.a.c.b.zw, vec4<i32>(-_wgslsmith_mult_i32(10305i, u_input.c.x), -28895i, _wgslsmith_mult_i32(_wgslsmith_add_i32(17948i, u_input.c.x), firstLeadingBit(2147483647i)), 1140i)));
    var var_1 = max(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, global1.a.c.b.x), global1.a.c.b.wyy), 19805u), abs(u_input.a.zy), select(select(vec2<bool>(global0.x, global1.a.c.a.x), global1.a.c.a.xy, global3.xz), select(global0.xz, global4.xw, true), select(vec2<bool>(global0.x, true), global3.zz, global4.xw))), global1.a.c.b.zw, ~u_input.a.xy), vec2<u32>(abs(countOneBits(9414u)), _wgslsmith_mod_u32(reverseBits(u_input.b), 90400u)) ^ vec2<u32>(27246u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(40584u, 0u, global1.a.c.b.x, global1.a.c.b.x), vec4<u32>(global1.a.c.b.x, u_input.b, 21977u, 76134u)), u_input.a.x | 1u)));
    var var_2 = (vec3<i32>(-1i) * -select(vec3<i32>(2147483647i, global1.a.b, 2147483647i) ^ vec3<i32>(2147483647i, u_input.c.x, global1.a.b), vec3<i32>(u_input.c.x, u_input.c.x, -18660i), select(global1.a.c.a, vec3<bool>(false, global4.x, global4.x), true))) << (reverseBits(~((vec3<u32>(u_input.b, var_1.x, global1.a.c.b.x) | vec3<u32>(u_input.a.x, 4294967295u, var_1.x)) & ~global1.a.c.b.yxx)) % vec3<u32>(32u));
    var var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(min(-firstTrailingBit(var_2.x), var_2.x), ~(~(-global1.a.b)), var_2.x ^ countOneBits(_wgslsmith_sub_i32(var_2.x, var_2.x)), -47700i), -(vec4<i32>(-1i) * -reverseBits(vec4<i32>(global1.a.b, 1i, u_input.c.x, 57396i))), vec4<i32>(-1i) * -vec4<i32>(select(global1.a.b, u_input.c.x, false), 4374i, 36901i, 30987i));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = vec2<u32>(4294967295u, 1u);
    let var_2 = ~(-_wgslsmith_mult_vec2_i32(countOneBits(u_input.c.xy), vec2<i32>(_wgslsmith_mod_i32(global1.a.b, 38993i), -28719i)));
    global3 = !(!select(!select(global4.zwz, vec3<bool>(global1.a.c.c, global0.x, global0.x), global4.x), !global4.ywz, any(!vec3<bool>(false, global0.x, true))));
    var var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~var_0, select(0u, u_input.b, true)), func_1(_wgslsmith_f_op_vec2_f32(round(global1.a.a.zz)))), ~(~u_input.b)), min(global1.a.c.b.xy, vec2<u32>(1u, ~(~4294967295u))));
    let var_4 = ~(u_input.b & u_input.b);
    let var_5 = _wgslsmith_f_op_f32(-646f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + 1121f)));
    var var_6 = select(vec4<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.b))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1221f))), all(!(!global3.xx)), false, any(select(vec4<bool>(true, global3.x, false, false), vec4<bool>(global0.x, false, true, false), true))), !vec4<bool>(global4.x, true, true, global0.x), !(!vec4<bool>(global4.x, !global1.a.c.c, all(global1.a.c.a.xx), true)));
    var_6 = select(select(!(!select(vec4<bool>(true, true, var_6.x, true), vec4<bool>(false, global4.x, true, global4.x), global1.a.c.c)), select(vec4<bool>(func_3(0u, var_5, Struct_2(vec4<f32>(-1000f, global1.b, var_5, global1.b), global1.a.b, Struct_1(var_6.xzw, vec4<u32>(u_input.a.x, 69349u, 50110u, var_3.x), true, var_5))), true, global3.x | global4.x, any(vec4<bool>(false, global1.a.c.a.x, global0.x, true))), select(!vec4<bool>(true, global1.a.c.c, false, global0.x), vec4<bool>(global3.x, true, global3.x, global3.x), vec4<bool>(global4.x, false, global0.x, global1.a.c.a.x)), select(!vec4<bool>(false, false, global1.a.c.c, false), !vec4<bool>(global4.x, false, true, var_6.x), global1.a.c.c & false)), !select(!vec4<bool>(false, global4.x, false, false), !vec4<bool>(global3.x, true, var_6.x, var_6.x), vec4<bool>(global0.x, global3.x, global0.x, true))), !select(vec4<bool>(23437u < global1.a.c.b.x, global1.a.c.a.x, true, all(vec2<bool>(global4.x, true))), !select(vec4<bool>(global3.x, global4.x, var_6.x, global4.x), vec4<bool>(global3.x, global4.x, false, false), global1.a.c.c), func_2(select(vec3<u32>(0u, 31476u, 10122u), global1.a.c.b.xxw, true), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(global1.a.c.b.x, global1.a.c.b.x)), max(vec4<i32>(u_input.c.x, global1.a.b, 2147483647i, global1.a.b), vec4<i32>(26899i, 62575i, global1.a.b, var_2.x)))), vec4<bool>(global1.b > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(global1.b * -1778f))), global3.x, (true && (global1.a.c.b.x <= var_1.x)) | !(var_2.x <= u_input.c.x), false));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.c.b.zyy);
}

