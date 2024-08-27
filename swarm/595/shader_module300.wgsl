struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(10965u, 0u, 29979u), vec4<i32>(62183i, -1i, 1i, -1i));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(global0.a, _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -global0.b, global0.b));
    global0 = Struct_1(vec3<u32>(~min(global0.a.x, 82926u), 14370u, ~(~select(var_0.a.x, 88676u, true))), vec4<i32>(2147483647i >> (0u % 32u), var_0.b.x, abs(_wgslsmith_mod_i32(var_0.b.x & 2147483647i, 8898i)), global0.b.x));
    let var_1 = Struct_1(var_0.a, u_input.a);
    let var_2 = Struct_1(min(_wgslsmith_sub_vec3_u32(countOneBits(var_1.a << (vec3<u32>(global0.a.x, global0.a.x, global0.a.x) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_1.a.x, 29271u), vec3<u32>(25981u, 4294967295u, var_1.a.x)) >> (~vec3<u32>(u_input.c.x, 24143u, var_0.a.x) % vec3<u32>(32u))), max(~(var_0.a ^ global0.a), ~global0.a ^ ~vec3<u32>(4294967295u, var_1.a.x, 33764u))), var_1.b);
    var var_3 = var_1;
    return !all(vec3<bool>(true | (-1i >= global0.b.x), true, false));
}

fn func_2() -> vec2<u32> {
    var var_0 = select(vec3<bool>(!all(vec3<bool>(true, true, true)), select(all(vec4<bool>(false, false, false, false)), true && select(true, false, true), false), func_3()), select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), vec3<bool>(false, false, true), any(vec4<bool>(false, false, false, true))), vec3<bool>(false, true, true), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(false, false, true), any(vec2<bool>(true, true))), vec3<bool>(true, true, true), select(true, global0.a.x >= global0.a.x, true))), _wgslsmith_mod_i32(u_input.a.x, -11032i >> (global0.a.x % 32u)) < (u_input.b.x << (abs(4005u) % 32u)));
    var var_1 = select(-global0.b.zx, _wgslsmith_mod_vec2_i32(countOneBits(abs(min(vec2<i32>(global0.b.x, 8878i), vec2<i32>(global0.b.x, 1i)))), vec2<i32>(~(~u_input.a.x), abs(global0.b.x))), !var_0.zz);
    var_0 = select(select(vec3<bool>(func_3(), select(var_0.x, var_0.x, var_0.x), !any(var_0.zy)), select(vec3<bool>(true, !var_0.x, var_0.x), vec3<bool>(var_0.x, all(vec3<bool>(var_0.x, true, var_0.x)), all(vec3<bool>(false, true, var_0.x))), !(u_input.c.x < 4294967295u)), true), vec3<bool>(false, !var_0.x, false), select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(101f + 1522f) * _wgslsmith_f_op_f32(step(-1264f, -1273f))) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1176f - -1000f))), !var_0.x & var_0.x, true));
    let var_2 = Struct_1(_wgslsmith_div_vec3_u32(min(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 13784u, 16502u), global0.a), _wgslsmith_clamp_vec3_u32(global0.a, global0.a, global0.a)), abs(~global0.a)), global0.a), u_input.a);
    var_1 = reverseBits(u_input.a.wy) | global0.b.zy;
    return vec2<u32>(22304u, global0.a.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(48075u, arg_1.a.x) ^ arg_0.a.zz, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, 40300u), vec2<u32>(global0.a.x, u_input.c.x), vec2<u32>(18451u, u_input.c.x))), ~u_input.c.x) >> (func_2() % vec2<u32>(32u));
    var_0 = (countOneBits(arg_1.a.yz | ~arg_1.a.zz) ^ vec2<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(51496u, arg_1.a.x, 0u), global0.a, false), arg_1.a), ~28625u)) >> (vec2<u32>(~(~firstTrailingBit(1u)), arg_0.a.x) % vec2<u32>(32u));
    global0 = arg_0;
    var_0 = countOneBits(global0.a.zx);
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -189f)))))));
    return 25862u;
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: f32) -> Struct_1 {
    var var_0 = vec4<bool>(true, (!func_3() || all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true))) && true, all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true);
    return Struct_1(select(select(~(arg_1.xzz >> (global0.a % vec3<u32>(32u))), vec3<u32>(u_input.c.x, ~47874u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.c.x, 0u), vec4<u32>(u_input.c.x, arg_1.x, u_input.c.x, u_input.c.x))), !select(var_0.wxz, var_0.wyx, vec3<bool>(false, var_0.x, var_0.x))), max(~global0.a, arg_1.zyy), all(!select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, false), vec4<bool>(false, false, var_0.x, false)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, arg_0, -1i, u_input.a.x), vec4<i32>(0i, global0.b.x, -34191i, global0.b.x), min(vec4<i32>(0i, -30240i, 42043i, -44275i), vec4<i32>(global0.b.x, u_input.b.x, u_input.a.x, -2147483647i))), ~vec4<i32>(11633i, u_input.a.x, u_input.b.x, -1i), vec4<i32>(-22781i, global0.b.x, _wgslsmith_mod_i32(0i, global0.b.x), 2147483647i)) << (select(arg_1 >> (countOneBits(vec4<u32>(30484u, global0.a.x, global0.a.x, u_input.c.x)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u), countOneBits(arg_1)), var_0.x) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.a.x, -74274i);
    let var_1 = func_4((abs(-u_input.a.x) | 0i) >> (select(global0.a.x, _wgslsmith_add_u32(~global0.a.x, ~global0.a.x), true) % 32u), ~vec4<u32>(reverseBits(~global0.a.x), _wgslsmith_mod_u32(global0.a.x, ~62833u), func_1(Struct_1(global0.a, u_input.a), Struct_1(global0.a, vec4<i32>(2147483647i, global0.b.x, -2147483647i, -1i))), (u_input.c.x ^ 33605u) << (_wgslsmith_add_u32(u_input.c.x, global0.a.x) % 32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(915f * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1025f, 700f)))))));
    var var_2 = var_0.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-990f, -818f, 1508f, 843f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-387f, 266f, -1000f, -1221f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-780f, -930f, -877f, -587f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-265f, -896f, 587f, 1434f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 308f, -1610f, -819f)))))));
    global0 = Struct_1(_wgslsmith_clamp_vec3_u32(min(_wgslsmith_mod_vec3_u32(global0.a, vec3<u32>(0u, 69270u, 35906u)) | (var_1.a >> (var_1.a % vec3<u32>(32u))), var_1.a), ~func_4(_wgslsmith_dot_vec3_i32(var_1.b.wzx, global0.b.yzz), ~vec4<u32>(4061u, 0u, 4294967295u, var_1.a.x), _wgslsmith_div_f32(var_3.x, var_3.x)).a, ~global0.a), -var_1.b);
    var var_4 = ~(global0.a.x << (0u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(0i, var_3.x, var_3.wxy);
}

