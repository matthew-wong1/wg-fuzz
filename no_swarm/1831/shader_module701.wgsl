struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(85910u, 1u), vec4<u32>(0u, 50253u, 1946u, 1u), true, vec4<bool>(false, true, true, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    var var_0 = vec3<u32>(global0.b.x, _wgslsmith_dot_vec4_u32(global0.b, vec4<u32>(~u_input.a.x, ~u_input.a.x, 1u & global0.a.x, global0.b.x)), _wgslsmith_div_u32(22247u, u_input.a.x)) & global0.b.wxy;
    let var_1 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.a.x), abs(firstTrailingBit(_wgslsmith_div_vec2_u32(var_0.xy, var_0.xx)))), ~global0.b, !(select(false || global0.c, global0.d.x, !global0.d.x) & ((var_0.x | u_input.a.x) <= (4917u >> (var_0.x % 32u)))), select(vec4<bool>(!(global0.c && true), true, !(u_input.b != u_input.b), all(!vec2<bool>(global0.d.x, false))), global0.d, global0.d));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(358f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-561f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), ~select(countOneBits(vec3<i32>(0i, 24594i, 0i)) << (global0.b.zwz % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, -2147483647i) >> (global0.b.zxz % vec3<u32>(32u)), -vec3<i32>(u_input.b, 8640i, 26295i), firstTrailingBit(vec3<i32>(1i, 3022i, 0i))), var_1.d.x & false), countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 58490i), vec2<i32>(-1i, u_input.b) >> (u_input.a % vec2<u32>(32u)))), Struct_3(var_1, ~reverseBits(var_0.x)), global0.d.x);
    var var_3 = var_2;
    var var_4 = all(vec2<bool>(var_1.c, any(!var_1.d.xzx)));
    return _wgslsmith_dot_vec2_i32(var_3.b.xy, ~reverseBits(vec2<i32>(35043i, 2147483647i)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global0.a, abs(countOneBits(vec4<u32>(_wgslsmith_add_u32(1u, global0.b.x), 32179u << (0u % 32u), 0u, ~101058u))), true, !global0.d);
    var var_1 = reverseBits(vec4<i32>(func_3(), -u_input.b, ~u_input.b, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.b, -1i, u_input.b)), vec3<i32>(countOneBits(-7087i), ~(-34332i), -48359i))));
    var var_2 = firstTrailingBit(~var_0.b);
    var_1 = vec4<i32>(2147483647i, -2147483647i, _wgslsmith_add_i32(~(-16893i), -_wgslsmith_sub_i32(u_input.b, 21140i)) >> (global0.b.x % 32u), -1i);
    return Struct_1(vec2<u32>(reverseBits(~(~u_input.a.x)), 0u << (countOneBits(var_0.b.x) % 32u)), vec4<u32>(abs(_wgslsmith_mod_u32(0u, ~104867u)), max(var_0.a.x, _wgslsmith_mult_u32(countOneBits(var_2.x), global0.a.x)), min(u_input.a.x, _wgslsmith_mult_u32(countOneBits(var_2.x), ~global0.a.x)), ~var_2.x), true, select(global0.d, var_0.d, select(all(!vec4<bool>(var_0.d.x, global0.c, false, var_0.c)), global0.c, true)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> vec2<f32> {
    global0 = func_2();
    var var_0 = arg_2;
    var var_1 = Struct_4(!any(vec4<bool>(global0.c, var_0.a.c, false, true)) || select(all(!vec3<bool>(true, global0.d.x, false)), true, !any(vec4<bool>(var_0.a.c, global0.c, arg_2.a.d.x, true))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -889f) + _wgslsmith_f_op_f32(round(105f))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(max(164f, -1298f)))), 201f), arg_2);
    var var_2 = func_2();
    var_2 = var_0.a;
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1188f, -1662f), var_1.b));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_u32(~arg_1.wz, max(vec2<u32>(68174u, max(83931u, _wgslsmith_mod_u32(u_input.a.x, arg_0.c.a.b.x))), ~vec2<u32>(abs(u_input.a.x), arg_1.x)));
    return func_2().a.x << (reverseBits(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(5196u, 12228u)), vec2<u32>(5721u, u_input.a.x))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(min(_wgslsmith_mod_u32(~6915u, u_input.a.x), _wgslsmith_sub_u32(global0.b.x, 4294967295u)), 35080u << (global0.a.x % 32u), func_4(Struct_4(all(vec4<bool>(global0.d.x, global0.c, global0.c, false)), _wgslsmith_div_vec2_f32(vec2<f32>(-322f, 553f), _wgslsmith_f_op_vec2_f32(func_1(-1200f, u_input.a.x, Struct_2(Struct_1(global0.a, global0.b, true, vec4<bool>(false, false, global0.d.x, global0.d.x)), vec3<i32>(u_input.b, -2147483647i, 2147483647i))))), Struct_2(func_2(), vec3<i32>(28399i, 2147483647i, u_input.b))), _wgslsmith_sub_vec4_u32(global0.b, _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(global0.b.x, global0.b.x, 3177u, 3759u)), abs(vec4<u32>(u_input.a.x, 12983u, global0.b.x, u_input.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -571f)), ~(~firstLeadingBit(_wgslsmith_mult_u32(63650u, 0u))));
    global0 = Struct_1(countOneBits(vec2<u32>(max(global0.a.x, ~u_input.a.x), min(_wgslsmith_mult_u32(69364u, var_0.x), max(global0.a.x, 0u)))), ~_wgslsmith_mod_vec4_u32(global0.b, var_0) >> (global0.b % vec4<u32>(32u)), all(select(global0.d.wx, global0.d.zz, false)), select(vec4<bool>(any(!global0.d.ywx), global0.c, global0.d.x, true), !(!func_2().d), u_input.b < -2147483647i));
    global0 = func_2();
    let var_1 = global0.d.x;
    global0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(2147483647i, u_input.b), ~97961i, u_input.b >> (global0.b.x % 32u)), u_input.b));
}

