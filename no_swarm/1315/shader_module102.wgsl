struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(27090u, 42601u, 1u, 26219u), Struct_1(25700i, vec3<u32>(0u, 0u, 79906u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_2(~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(arg_2.a.x, 4294967295u), arg_0.x, arg_2.b.b.x, 1u ^ arg_2.b.b.x), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.b.b.x, 4294967295u, 4294967295u, arg_0.x), vec4<u32>(arg_0.x, global0.a.x, u_input.b.x, 4294967295u))), Struct_1(firstLeadingBit(~firstLeadingBit(-2147483647i)), vec3<u32>(_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(arg_0.x, 49244u, global0.b.b.x, u_input.b.x)), 1u, ~23253u) ^ ~vec3<u32>(arg_2.a.x, arg_2.a.x, u_input.b.x)));
    let var_1 = 36170u;
    let var_2 = vec2<f32>(812f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1373f)) + -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(849f + 1273f))), 586f)));
    var var_3 = -(vec2<i32>(global0.b.a, global0.b.a) ^ reverseBits(u_input.e.zx));
    var_3 = reverseBits(u_input.e.ww);
    return _wgslsmith_add_i32(countOneBits(-23230i), firstLeadingBit(i32(-1i) * -50662i)) >> ((~arg_2.b.b.x ^ 39143u) % 32u);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: bool) -> i32 {
    var var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -401f) * -207f) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * -805f)))));
    var_0 = all(select(vec2<bool>(-global0.b.a < (-1i << (1u % 32u)), arg_3), !vec2<bool>(!arg_3, global0.b.a >= global0.b.a), !vec2<bool>(true, any(vec2<bool>(true, arg_3)))));
    var var_1 = vec3<i32>(countOneBits(arg_0.b.a), global0.b.a, func_3(vec4<u32>(0u, u_input.b.x, 1u, 37512u) ^ vec4<u32>(u_input.b.x, arg_0.a.x, 4294967295u, 1u), true, arg_0) & (u_input.e.x >> (1504u % 32u)));
    var var_2 = 21665u < (countOneBits(_wgslsmith_add_u32(144161u, _wgslsmith_mod_u32(arg_0.a.x, 17913u))) >> (15413u % 32u));
    var var_3 = arg_0.b;
    return global0.b.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    global0 = arg_3;
    global0 = Struct_2((global0.a << (~global0.a % vec4<u32>(32u))) | global0.a, Struct_1(0i ^ _wgslsmith_dot_vec4_i32(u_input.e, _wgslsmith_add_vec4_i32(u_input.e, vec4<i32>(-10367i, arg_0.x, arg_3.b.a, global0.b.a))), firstTrailingBit(arg_1.b)));
    let var_0 = Struct_2(~arg_3.a, Struct_1(arg_3.b.a, ~(~arg_3.a.yyz & (arg_1.b >> (global0.a.xzx % vec3<u32>(32u))))));
    var var_1 = vec4<bool>(true, true && (!(global0.b.a > arg_0.x) & any(vec2<bool>(true, true))), all(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), true);
    var var_2 = arg_1.b.x == (_wgslsmith_mult_u32(select(1u, ~0u, !var_1.x), _wgslsmith_mod_u32(4294967295u, ~59496u)) & (~_wgslsmith_sub_u32(arg_2.b.x, 19631u) >> (89115u % 32u)));
    return _wgslsmith_div_i32(_wgslsmith_sub_i32(arg_0.x, -(-45890i ^ global0.b.a)) | arg_3.b.a, -65096i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = -1i;
    global0 = arg_2;
    var_0 = max(i32(-1i) * -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.e.ww, vec2<i32>(-824i, global0.b.a)), abs(2147483647i)), max(-2147483647i, -38429i));
    let var_1 = vec3<i32>(-1i, -_wgslsmith_add_i32(-(0i << (0u % 32u)), arg_0.a), ~(-1i & max(func_4(vec3<i32>(75141i, arg_0.a, global0.b.a), Struct_1(-20468i, arg_2.a.zyx), Struct_1(-2147483647i, vec3<u32>(arg_2.b.b.x, 4294967295u, 66250u)), arg_2), _wgslsmith_add_i32(arg_2.b.a, u_input.d))));
    global0 = arg_2;
    return Struct_2(global0.a, Struct_1(_wgslsmith_mod_i32(firstTrailingBit(abs(-2147483647i)), global0.b.a), arg_2.b.b));
}

fn func_1(arg_0: vec4<f32>) -> bool {
    global0 = func_5(Struct_1(func_4(vec3<i32>(global0.b.a, func_2(Struct_2(global0.a, Struct_1(28821i, vec3<u32>(29804u, global0.a.x, 2348u))), arg_0.ywy, vec3<f32>(-1188f, arg_0.x, -622f), true), reverseBits(-15795i)), global0.b, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, global0.b.a), u_input.e.ww), vec3<u32>(1223u, global0.a.x, 0u)), Struct_2(_wgslsmith_mult_vec4_u32(global0.a, vec4<u32>(u_input.b.x, global0.a.x, global0.a.x, 15308u)), global0.b)), vec3<u32>(1u, global0.b.b.x, _wgslsmith_add_u32(global0.a.x, u_input.b.x))), global0.b, Struct_2(select(select(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 52032u), min(vec4<u32>(53u, 4294967295u, 1u, 54036u), global0.a), vec4<bool>(true, true, true, true)), ~(~global0.a), true), Struct_1(_wgslsmith_dot_vec3_i32(u_input.c, ~u_input.c), reverseBits(~vec3<u32>(4294967295u, u_input.b.x, 1u)))), vec2<bool>(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)), all(vec4<bool>(true, true, true, true)))), true));
    var var_0 = Struct_1(i32(-1i) * -23853i, ~global0.a.zzy);
    global0 = Struct_2(select(abs(countOneBits(vec4<u32>(var_0.b.x, 1921u, 92335u, 20881u))), ~(~vec4<u32>(global0.a.x, 4294967295u, 0u, global0.a.x) >> (vec4<u32>(u_input.b.x, 4294967295u, 17745u, u_input.b.x) % vec4<u32>(32u))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true))))), Struct_1(_wgslsmith_mult_i32(-var_0.a ^ u_input.d, -func_3(global0.a, false, Struct_2(vec4<u32>(23956u, 30570u, u_input.b.x, var_0.b.x), global0.b))), global0.a.xyy));
    var var_1 = all(vec4<bool>(true, true, true, true));
    let var_2 = !select(!vec4<bool>(any(vec3<bool>(true, true, true)), true, false, -492f < arg_0.x), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true), !select(false, false, true)), !all(vec2<bool>(true, true)));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(any(vec2<bool>(!func_1(vec4<f32>(304f, 1000f, -100f, 804f)), true)), !func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1550f, 263f, -823f, 879f) + vec4<f32>(-218f, 519f, 831f, -1511f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1838f, -1000f, 573f, 186f), vec4<f32>(1022f, -1613f, -1715f, -1095f))))), all(vec4<bool>(true, any(vec2<bool>(true, true)), false, true)) == any(vec2<bool>(true, true)));
    let var_1 = ~vec2<i32>(4258i, -countOneBits(-28979i));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-1695f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-336f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(326f + 262f) - 1708f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -769f))))), -657f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -737f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(815f * 310f))))));
    let var_3 = Struct_2(~vec4<u32>(~33079u, _wgslsmith_add_u32(0u, 87596u), 0u, 0u) ^ (select(vec4<u32>(global0.a.x, u_input.b.x, 0u, 1u), ~vec4<u32>(global0.b.b.x, 4294967295u, u_input.b.x, u_input.b.x), true) | reverseBits(firstTrailingBit(global0.a))), global0.b);
    let var_4 = Struct_1(global0.b.a, vec3<u32>(_wgslsmith_dot_vec4_u32(min(_wgslsmith_sub_vec4_u32(vec4<u32>(3108u, 19520u, 4294967295u, 4294967295u), global0.a), global0.a), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 16433u, 4294967295u, 1u), vec4<u32>(1u, global0.a.x, global0.a.x, u_input.b.x)), vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x) ^ var_3.a)), select(~7471u, 46976u, var_0.x), 0u));
    let var_5 = var_3.b.b.x;
    global0 = Struct_2(~vec4<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(~var_4.b.zx, func_5(Struct_1(u_input.d, vec3<u32>(23225u, global0.b.b.x, 0u)), var_4, Struct_2(var_3.a, var_4), var_0.zy).a.xx), 37469u << ((20344u & u_input.b.x) % 32u), max(4294967295u, ~29353u)), global0.b);
    global0 = var_3;
    let var_6 = _wgslsmith_div_vec3_i32(reverseBits(~vec3<i32>(var_3.b.a, -32805i, global0.b.a)), min(u_input.e.zzw, u_input.c)) << (global0.b.b % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(max(vec4<i32>(var_1.x, 15772i, 1i, 2067i), select(u_input.e, u_input.e, var_0.x)) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_3.a.x, 43355u, var_3.b.b.x), var_3.a) % vec4<u32>(32u)), vec4<i32>(0i << (global0.a.x % 32u), 34771i, -(0i | var_6.x), ~_wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(global0.b.a, var_4.a, -2147483647i, var_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x) - var_2.x))), -858f, 120f), var_2.x);
}

