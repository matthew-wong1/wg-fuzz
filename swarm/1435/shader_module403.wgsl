struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> vec2<f32> {
    let var_0 = select(select(vec3<bool>(true, !(!arg_2), 620f != arg_0.a.x), vec3<bool>(~u_input.d >= 0u, arg_2, arg_2), true), vec3<bool>(any(vec4<bool>(true, false, true, arg_2)), arg_2, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c, arg_0.c.x, arg_0.d.x, 4294967295u)), ~vec4<u32>(0u, u_input.c, 1u, 4294967295u)) != 4294967295u), vec3<bool>(~countOneBits(40700u) != _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.e, vec2<u32>(6862u, 0u)), _wgslsmith_mult_vec2_u32(arg_1.d, vec2<u32>(1u, arg_1.c.x))), any(!vec3<bool>(arg_2, true, false)), true));
    var var_1 = arg_1.a;
    var var_2 = arg_1;
    var var_3 = !any(var_0.yx) || (arg_2 & !(arg_0.d.x < _wgslsmith_add_u32(u_input.c, 50240u)));
    var var_4 = ~select(vec2<u32>(~(arg_1.e.x >> (arg_0.e.x % 32u)), arg_0.c.x), _wgslsmith_add_vec2_u32(vec2<u32>(~8961u, 48400u ^ arg_1.d.x), arg_0.d), !select(var_0.yx, var_0.zx, select(vec2<bool>(var_0.x, false), vec2<bool>(true, arg_2), arg_2)));
    return arg_0.a;
}

fn func_2() -> vec3<bool> {
    let var_0 = true;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<f32>(1620f, -417f), u_input.a, vec3<u32>(u_input.c, u_input.c, 49348u), vec2<u32>(1u, u_input.d), vec2<u32>(u_input.d, 39099u)), Struct_1(vec2<f32>(-841f, -1740f), vec3<i32>(-1i, u_input.a.x, 31605i), vec3<u32>(11133u, u_input.d, u_input.c), vec2<u32>(110040u, u_input.c), vec2<u32>(u_input.c, u_input.d)), true, -1i))))), u_input.b, ~(vec3<u32>(u_input.d, u_input.c, 41831u) & max(vec3<u32>(1u, 4294967295u, 52592u), vec3<u32>(u_input.d, u_input.c, u_input.c))) | firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.d, u_input.c) << (vec3<u32>(1u, 95521u, u_input.d) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(27205u, u_input.d, u_input.d), vec3<u32>(7034u, 77635u, u_input.c), vec3<u32>(0u, 0u, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.d, 21808u), vec3<u32>(u_input.d, u_input.c, 4294967295u)))), vec2<u32>(~30239u, 0u), select(~(~(~vec2<u32>(u_input.d, 1u))), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 23671u), _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(131038u, 29839u)), ~vec2<u32>(u_input.d, 27427u))), vec2<bool>(var_0, all(vec3<bool>(true, var_0, var_0)))));
    let var_2 = !(!(!vec4<bool>(false, var_0, var_0, false || var_0)));
    var var_3 = vec3<bool>(-305f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - 226f)), false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -607f))) == _wgslsmith_f_op_f32(f32(-1f) * -161f));
    return var_2.xwx;
}

fn func_1() -> bool {
    let var_0 = func_2();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<f32>(-526f, 1618f), u_input.b, vec3<u32>(u_input.d, 4294967295u, u_input.c), vec2<u32>(u_input.c, 22460u), vec2<u32>(u_input.c, 18613u)), Struct_1(vec2<f32>(-1129f, 623f), u_input.b, vec3<u32>(21809u, u_input.d, 0u), vec2<u32>(4294967295u, u_input.d), vec2<u32>(21246u, u_input.c)), all(vec4<bool>(false, var_0.x, false, var_0.x)), -u_input.b.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1903f, -1515f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-501f, 882f) - vec2<f32>(1565f, -691f))))), select(countOneBits(vec3<i32>(17762i, 29049i, u_input.e.x)) << (~(~vec3<u32>(u_input.c, 1u, u_input.c)) % vec3<u32>(32u)), vec3<i32>(-u_input.b.x, ~(-1i), u_input.a.x), false), max(~(_wgslsmith_mod_vec3_u32(vec3<u32>(11380u, 93385u, u_input.c), vec3<u32>(0u, u_input.c, u_input.d)) ^ ~vec3<u32>(1u, 0u, u_input.c)), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(0u, 4294967295u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(19958u, 107948u, u_input.c) ^ vec3<u32>(u_input.d, u_input.d, 0u), vec3<u32>(u_input.c, u_input.c, u_input.d)))), vec2<u32>(67631u, 0u), select(firstTrailingBit(select(vec2<u32>(u_input.c, 6865u), vec2<u32>(u_input.d, u_input.d), vec2<bool>(var_0.x, false))), vec2<u32>(u_input.d ^ 8142u, u_input.c ^ u_input.d), !(!vec2<bool>(var_0.x, true))) >> (_wgslsmith_add_vec2_u32(~(vec2<u32>(21021u, u_input.d) << (vec2<u32>(4294967295u, u_input.d) % vec2<u32>(32u))), ~vec2<u32>(u_input.d, u_input.d)) % vec2<u32>(32u)));
    let var_2 = var_0;
    let var_3 = !vec4<bool>(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<f32>(804f, -681f), vec3<i32>(u_input.b.x, var_1.b.x, 51706i), vec3<u32>(u_input.c, u_input.c, var_1.d.x), var_1.c.zz, var_1.d), Struct_1(var_1.a, u_input.a, var_1.c, var_1.d, var_1.c.zy), false, reverseBits(-1i))).x <= var_1.a.x, var_2.x, true, false);
    var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(ceil(var_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_sub_vec3_i32(vec3<i32>(-13928i, -32618i, -2147483647i), abs(var_1.b)), ~min(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), var_1.c), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, 103603u), var_1.c)) << (var_1.c % vec3<u32>(32u)), vec2<u32>(_wgslsmith_mult_u32(0u, u_input.c), ~_wgslsmith_mod_u32(~u_input.c, 28668u)), (var_1.d | (var_1.d >> (var_1.c.yy % vec2<u32>(32u)))) >> (max(var_1.c.yz, ~(var_1.c.zy >> (var_1.e % vec2<u32>(32u)))) % vec2<u32>(32u)));
    return !var_2.x && var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1563f), _wgslsmith_f_op_f32(1004f - _wgslsmith_f_op_f32(trunc(990f)))))), _wgslsmith_f_op_f32(-482f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(803f, _wgslsmith_f_op_f32(f32(-1f) * -1918f)))));
}

