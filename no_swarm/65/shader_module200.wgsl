struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, 1i), i32(-1i) * -2147483647i);
    var var_1 = Struct_1(~1i);
    var_1 = Struct_1(var_0.x & ~(-(i32(-1i) * -2147483647i)));
    let var_2 = Struct_1(14298i & ~var_1.a);
    var_0 = vec2<i32>(41400i, ~_wgslsmith_div_i32(~(-2147483647i), 1i));
    return arg_0 <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-362f, _wgslsmith_f_op_f32(243f + arg_0)), -600f, global0.x)));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<f32>) -> bool {
    var var_0 = Struct_1(u_input.e.x);
    let var_1 = Struct_1(var_0.a);
    return func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1284f)) * _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(min(811f, arg_2.x)))), arg_2.x));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = u_input.b.zz;
    var_0 = vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.x), _wgslsmith_div_vec2_u32(u_input.b.zx, u_input.b.yy)), _wgslsmith_add_u32(var_0.x, var_0.x)) << (select(~(u_input.b.zx | max(vec2<u32>(0u, 54837u), vec2<u32>(u_input.b.x, var_0.x))), vec2<u32>(arg_0 | arg_0, arg_0), !all(!global0.zzx)) % vec2<u32>(32u));
    var_0 = ~abs(select(u_input.b.yx, ~u_input.b.yy | u_input.b.zy, true));
    global0 = arg_1;
    var_0 = ~vec2<u32>(~u_input.b.x, ~(arg_0 & ~0u));
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: f32) -> vec2<u32> {
    let var_0 = arg_0;
    let var_1 = func_4(u_input.c, select(vec4<bool>(global0.x && (global0.x && global0.x), !func_2(arg_0, true, vec3<f32>(-923f, arg_1, arg_1)), global0.x, true), vec4<bool>(false, !any(vec2<bool>(global0.x, false)), global0.x, global0.x & true), global0.x), Struct_1(_wgslsmith_sub_i32(u_input.d, ~(-28768i))));
    var var_2 = global0.x & func_2(abs(~_wgslsmith_mult_u32(28463u, u_input.b.x)), !(var_0 < arg_0), vec3<f32>(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-913f, -1008f))));
    let var_3 = var_1;
    global0 = select(!select(vec4<bool>(select(true, false, false), true, true, all(vec4<bool>(global0.x, global0.x, false, global0.x))), vec4<bool>(global0.x & false, func_2(6613u, global0.x, vec3<f32>(arg_1, 948f, arg_1)), func_2(23846u, true, vec3<f32>(-1121f, -526f, -1000f)), global0.x | global0.x), select(!global0.x, any(vec3<bool>(global0.x, false, false)), true)), vec4<bool>(true, all(global0.yyx), -1288f <= arg_1, all(global0.yy)), global0.x);
    return ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u ^ u_input.b.x, ~74660u), (vec2<u32>(var_0, 1u) | u_input.b.xx) ^ vec2<u32>(var_0, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(u_input.b.xy & countOneBits(u_input.b.xx), ~_wgslsmith_mod_vec2_u32(~u_input.b.yy, vec2<u32>(10442u, u_input.b.x) >> (func_1(1u, -405f) % vec2<u32>(32u))));
    let var_1 = (_wgslsmith_mult_vec4_i32(abs(~vec4<i32>(-26496i, u_input.d, u_input.a.x, -33234i)), firstLeadingBit(select(vec4<i32>(u_input.e.x, 1i, 0i, u_input.e.x), vec4<i32>(u_input.e.x, u_input.d, -47927i, -2147483647i), false))) << (_wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.c, 1u, u_input.b.x, 1u)), vec4<u32>(var_0.x, 27455u, 65631u, var_0.x) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 1u, 43503u, 61300u), vec4<u32>(u_input.c, 1u, var_0.x, 76306u)) % vec4<u32>(32u))) % vec4<u32>(32u))) << (reverseBits(_wgslsmith_div_vec4_u32(firstTrailingBit(countOneBits(vec4<u32>(70842u, 94481u, 45020u, 80009u))), vec4<u32>(~1u, 1u, u_input.b.x, u_input.b.x))) % vec4<u32>(32u));
    var var_2 = func_4(u_input.b.x, select(select(!(!vec4<bool>(global0.x, true, false, global0.x)), vec4<bool>(true, any(vec3<bool>(global0.x, global0.x, global0.x)), global0.x | global0.x, global0.x | true), firstTrailingBit(u_input.b.x) <= 91176u), !(!(!vec4<bool>(global0.x, global0.x, false, true))), !select(!vec4<bool>(global0.x, global0.x, true, global0.x), !vec4<bool>(false, false, global0.x, false), select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, false)))), Struct_1(-var_1.x));
    var_2 = Struct_1(142i);
    let var_3 = global0.wxz;
    var_0 = ~u_input.b.zy | u_input.b.yx;
    var var_4 = select(vec4<bool>(any(vec2<bool>(true, true)), !func_2(var_0.x << (u_input.b.x % 32u), global0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1763f, -213f, 459f))), !all(!global0.zz), var_3.x || (1000f > _wgslsmith_f_op_f32(floor(441f)))), vec4<bool>(true, any(!(!vec4<bool>(var_3.x, false, var_3.x, var_3.x))), !var_3.x, all(select(!global0.yz, var_3.zx, select(var_3.xz, vec2<bool>(true, false), global0.wy)))), !(!select(vec4<bool>(var_3.x, true, global0.x, true), !vec4<bool>(var_3.x, var_3.x, var_3.x, global0.x), select(vec4<bool>(var_3.x, global0.x, global0.x, false), vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(true, global0.x, var_3.x, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-2147483647i), u_input.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1977f) - _wgslsmith_div_f32(-351f, -711f)), _wgslsmith_f_op_f32(round(-1823f)))), i32(-1i) * -countOneBits(-29791i), -func_4(u_input.c ^ (var_0.x | 1u), vec4<bool>(any(var_4.xy), var_4.x, var_4.x, var_4.x), func_4(u_input.c, vec4<bool>(false, false, global0.x, var_3.x), func_4(59996u, vec4<bool>(global0.x, global0.x, false, var_3.x), Struct_1(22073i)))).a);
}

