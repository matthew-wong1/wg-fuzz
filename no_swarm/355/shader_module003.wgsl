struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = !arg_0.x;
    let var_1 = Struct_1(arg_1.b, -9949i, select(select(select(!vec2<bool>(arg_0.x, true), arg_0.yz, true & arg_1.c.x), vec2<bool>(arg_1.c.x, arg_1.c.x), select(vec2<bool>(false, arg_1.c.x), select(vec2<bool>(arg_1.c.x, arg_1.c.x), arg_1.c, vec2<bool>(false, arg_0.x)), arg_1.c)), !select(!arg_0.yz, !arg_0.zy, vec2<bool>(arg_0.x, false)), select(arg_0.zz, arg_0.zz, false)), _wgslsmith_f_op_f32(f32(-1f) * -923f));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-707f + arg_1.d) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(659f * var_1.d), _wgslsmith_f_op_f32(976f * arg_1.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-126f - arg_1.d))), _wgslsmith_f_op_f32(-var_1.d));
    var var_3 = Struct_2(!vec4<bool>(arg_0.x, !(var_2.x <= var_1.d), true, any(arg_0.xy) != true), u_input.a, Struct_1(0i, -2147483647i, !arg_1.c, _wgslsmith_f_op_f32(arg_1.d * _wgslsmith_f_op_f32(arg_1.d + _wgslsmith_f_op_f32(-var_1.d)))));
    let var_4 = select(var_3.a, select(!select(var_3.a, var_3.a, any(vec3<bool>(var_1.c.x, var_3.a.x, arg_0.x))), vec4<bool>(!arg_0.x, arg_1.c.x, any(!vec3<bool>(var_3.a.x, var_3.a.x, arg_0.x)), true), select(select(vec4<bool>(false, false, true, arg_1.c.x), vec4<bool>(arg_1.c.x, var_3.c.c.x, var_1.c.x, arg_1.c.x), all(var_3.a.wxy)), !vec4<bool>(true, false, arg_0.x, var_3.c.c.x), var_3.a)), any(var_3.a.yxz));
    return _wgslsmith_mult_vec2_i32(abs(vec2<i32>(70517i, abs(arg_1.b))), _wgslsmith_mult_vec2_i32(select(reverseBits(vec2<i32>(var_3.c.b, var_3.b)), abs(vec2<i32>(-1i, 0i)), !var_4.xy), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -1i), ~vec2<i32>(arg_1.b, var_3.b)))) & vec2<i32>(-abs(1i), _wgslsmith_div_i32(~u_input.a, _wgslsmith_mod_i32(-2147483647i, 3566i)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_mod_i32(arg_1.b, 0i)), -select(vec2<i32>(-3070i, -73341i), max(~vec2<i32>(u_input.a, var_0.b), func_3(vec3<bool>(false, arg_1.a.x, var_0.a.x), Struct_1(arg_0.b, u_input.a, var_0.c.c, var_0.c.d))), arg_0.a.x));
    var_1 = vec2<i32>(_wgslsmith_add_i32(22446i, ~0i), firstLeadingBit(var_0.b));
    var var_2 = vec2<u32>(1u, 1u);
    let var_3 = vec2<bool>(false, 1i == var_0.b);
    return var_2.x;
}

fn func_1() -> u32 {
    let var_0 = Struct_2(!vec4<bool>(_wgslsmith_f_op_f32(sign(1000f)) != _wgslsmith_f_op_f32(-877f - -1885f), true, any(vec2<bool>(false, false)) && true, true), u_input.a, Struct_1(~u_input.a, u_input.a, select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, false, true)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(-717f)))));
    var var_1 = 15805u << (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mult_vec4_u32(~vec4<u32>(39003u, 54562u, 1u, 7031u), vec4<u32>(1u, 1u, 1u, 1u)), ~abs(vec4<u32>(1u, 23638u, 1u, 1u))), vec4<u32>(1u, _wgslsmith_mod_u32(func_2(Struct_2(vec4<bool>(var_0.c.c.x, var_0.c.c.x, var_0.c.c.x, var_0.c.c.x), 2147483647i, var_0.c), var_0, var_0), abs(4294967295u)), 1u, ~(~4294967295u))) % 32u);
    var_1 = ~1u >> (func_2(Struct_2(!vec4<bool>(true, true, var_0.a.x, true), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_0.b, var_0.c.a, var_0.b), vec4<i32>(var_0.b, 71096i, u_input.a, u_input.a)), var_0.c), Struct_2(select(select(var_0.a, var_0.a, var_0.a), var_0.a, true), 25153i, Struct_1(select(0i, -2147483647i, var_0.c.c.x), -1i, !var_0.a.xz, _wgslsmith_f_op_f32(-var_0.c.d))), Struct_2(!select(vec4<bool>(false, var_0.c.c.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.c.c.x, true, false, false), true), var_0.c.b >> (62025u % 32u), var_0.c)) % 32u);
    var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(reverseBits(~(~vec4<u32>(16937u, 0u, 0u, 10534u))), abs(vec4<u32>(1u, 1u, 1u, 1u))), abs(75317u));
    var_1 = reverseBits(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(7958u, 1u), ~vec2<u32>(0u, 4294967295u)), ~(~abs(0u))));
    return 2700u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(4294967295u, ~1u, ~3653u), func_1()));
}

