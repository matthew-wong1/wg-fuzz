struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
    c: Struct_2,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_4) -> Struct_4 {
    return Struct_4(Struct_2(arg_0.a.d, vec2<i32>(i32(-1i) * -2147483647i, u_input.c), u_input.d, arg_0.a.d));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = select(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, u_input.a.x), ~firstLeadingBit(vec2<u32>(0u, arg_0.a.a.x))), ~(~arg_0.a.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_clamp_u32(51833u, 0u, u_input.a.x), max(~35586u, 1u)), u_input.a.xy), true);
    var var_1 = Struct_1(abs(reverseBits(u_input.d)) >> (~(abs(arg_0.c) & vec3<u32>(2811u, 0u, 0u)) % vec3<u32>(32u)));
    var_1 = Struct_1(~abs(~min(var_1.a, vec3<u32>(arg_0.c.x, 6369u, u_input.d.x))));
    var_0 = arg_0.d.a.x;
    let var_2 = vec2<bool>(true, !all(vec4<bool>(true, any(arg_1), arg_1.x, !arg_1.x)));
    return select(!select(!vec4<bool>(false, var_2.x, false, false), vec4<bool>(true, var_2.x, arg_1.x || var_2.x, var_2.x), true), select(vec4<bool>(all(select(var_2, vec2<bool>(var_2.x, arg_1.x), arg_1.x)), false, var_2.x, false), select(select(select(vec4<bool>(false, var_2.x, var_2.x, false), vec4<bool>(var_2.x, var_2.x, arg_1.x, arg_1.x), vec4<bool>(var_2.x, true, arg_1.x, var_2.x)), vec4<bool>(true, var_2.x, true, arg_1.x), all(var_2)), select(!vec4<bool>(false, var_2.x, arg_1.x, true), vec4<bool>(false, false, false, false), arg_1.x), !vec4<bool>(arg_1.x, true, var_2.x, true)), var_2.x), !select(!(!vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)), !select(vec4<bool>(var_2.x, arg_1.x, var_2.x, false), vec4<bool>(true, true, var_2.x, var_2.x), vec4<bool>(arg_1.x, true, var_2.x, var_2.x)), !select(vec4<bool>(var_2.x, false, false, arg_1.x), vec4<bool>(true, true, true, var_2.x), vec4<bool>(var_2.x, false, true, var_2.x))));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_2 {
    var var_0 = arg_2.x & arg_3.a.b.x;
    var var_1 = Struct_1(_wgslsmith_mod_vec3_u32(arg_3.a.d.a, vec3<u32>(_wgslsmith_mod_u32(~u_input.b.x, ~arg_3.a.a.a.x), arg_3.a.c.x, arg_3.a.d.a.x)));
    var var_2 = _wgslsmith_sub_i32(-1i, _wgslsmith_add_i32(~min(_wgslsmith_mult_i32(arg_3.a.b.x, 1636i), -3962i & arg_2.x), func_1(arg_3).a.b.x));
    var var_3 = select(vec2<bool>(all(func_3(arg_3.a, select(vec3<bool>(false, true, arg_0.x), vec3<bool>(true, true, true), false))), 1000f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(314f)))), vec2<bool>(true, select(!arg_0.x, arg_1, true)), select(select(select(!arg_0.yz, vec2<bool>(false, arg_1), !arg_0.wx), arg_0.yz, all(arg_0.xw) | arg_0.x), arg_0.xy, vec2<bool>(false, !arg_0.x || func_3(arg_3.a, vec3<bool>(false, false, arg_1)).x)));
    let var_4 = true;
    return Struct_2(arg_3.a.d, ~arg_2.ww, _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a.x, var_1.a.x, var_1.a.x) >> (~vec3<u32>(var_1.a.x, 1u, 11602u) % vec3<u32>(32u)), vec3<u32>(var_1.a.x, ~25483u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, var_1.a.x), u_input.a))) << (u_input.d % vec3<u32>(32u)), arg_3.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-166f * _wgslsmith_f_op_f32(min(-2538f, -1095f)))))), vec2<u32>(abs(countOneBits(0u)) >> (_wgslsmith_div_u32(u_input.a.x, 41922u) % 32u), ~1u), func_2(!vec4<bool>(true, true, true, u_input.c >= 41476i), true, ~(-(vec4<i32>(2147483647i, -18134i, u_input.c, 40034i) >> (u_input.a % vec4<u32>(32u)))), func_1(Struct_4(Struct_2(Struct_1(u_input.a.zzx), vec2<i32>(-41244i, u_input.c), u_input.d, Struct_1(vec3<u32>(1u, u_input.a.x, 4294967295u)))))), -u_input.c, vec2<bool>(!(any(vec3<bool>(true, false, true)) || true), true));
    var var_1 = _wgslsmith_mod_vec3_u32(u_input.a.yyx, _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(abs(u_input.d.x), 57597u | var_0.c.d.a.x), firstLeadingBit(select(var_0.c.c.x, u_input.d.x, var_0.e.x)), 0u), ~(~(vec3<u32>(2149u, 7688u, var_0.c.c.x) | vec3<u32>(var_0.b.x, 22560u, 4294967295u))), u_input.a.yxx));
    var_1 = var_0.c.d.a;
    var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), var_1.yx, func_1(func_1(Struct_4(var_0.c))).a, func_2(vec4<bool>(var_0.e.x, !var_0.e.x || (var_0.a <= 903f), var_0.e.x, false), var_0.e.x, ~_wgslsmith_mod_vec4_i32(~vec4<i32>(-60028i, -19062i, var_0.c.b.x, u_input.c), vec4<i32>(var_0.c.b.x, 0i, u_input.c, -42614i)), func_1(func_1(Struct_4(Struct_2(var_0.c.a, var_0.c.b, vec3<u32>(1u, 4294967295u, 42459u), var_0.c.a))))).b.x, !vec2<bool>(true, any(vec2<bool>(var_0.e.x, true))));
    let var_2 = vec4<bool>(true, false, true, true);
    var var_3 = ~_wgslsmith_div_u32(10482u, _wgslsmith_add_u32(min(var_1.x, ~24349u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.b.x, 52541u), 1u)));
    var var_4 = Struct_4(Struct_2(Struct_1(u_input.d), -max(var_0.c.b, _wgslsmith_sub_vec2_i32(var_0.c.b, vec2<i32>(-2147483647i, u_input.c))), ~firstLeadingBit(select(vec3<u32>(var_0.c.c.x, u_input.b.x, 0u), vec3<u32>(70266u, 4294967295u, 55426u), var_2.zyw)), Struct_1(~vec3<u32>(u_input.a.x, var_1.x, var_1.x))));
    var var_5 = -_wgslsmith_clamp_vec2_i32(-vec2<i32>(var_0.c.b.x, var_4.a.b.x) | var_4.a.b, vec2<i32>(_wgslsmith_clamp_i32(0i, -u_input.c, ~1i), -u_input.c), var_0.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.a * var_0.a), ~(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d, 25321i, -2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, var_0.c.b.x, 2147483647i), vec3<i32>(0i, -2147483647i, -40906i))) >> (func_1(func_1(Struct_4(var_4.a))).a.a.a.x % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a))));
}

