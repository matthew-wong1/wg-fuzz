struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = u_input.a;
    var_0 = -u_input.a;
    let var_1 = select(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false)), vec4<bool>(false, true, select(false, true, true), true), true), vec4<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)), true, _wgslsmith_sub_i32(-2147483647i, u_input.c) < -1i, all(vec2<bool>(true, true))), select(vec4<bool>(any(vec3<bool>(true, true, true)), true, true, true), vec4<bool>(true, -1i >= u_input.c, true, all(vec3<bool>(false, true, true))), _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.a, u_input.c)) < _wgslsmith_sub_i32(-2147483647i, 0i))), vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), !(all(vec4<bool>(false, false, true, true)) | true)), select(-1i > u_input.a, true, u_input.a != min(u_input.c, ~u_input.c)));
    let var_2 = vec2<u32>(23710u, _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, ~1u), ~4294967295u));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-486f * -698f))) - 1177f))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-382f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -471f)))));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))) * 1238f)) - _wgslsmith_f_op_f32(step(1119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1030f))))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -510f);
    var_0 = _wgslsmith_f_op_f32(ceil(-1000f));
    var var_1 = true == (any(vec2<bool>(false, false)) || any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, false))));
    var var_2 = !select(vec4<bool>(true, true, !select(true, true, true), all(select(vec2<bool>(true, false), vec2<bool>(false, true), true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)), any(vec4<bool>(true, false, false, false))), vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true), false));
    return 2147483647i;
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec3<u32>) -> u32 {
    let var_0 = vec4<bool>(arg_0, any(!vec4<bool>(arg_0, arg_2.e <= arg_1.e, true, all(vec2<bool>(arg_0, true)))), true, true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(453f, -1469f)));
    var_1 = 467f;
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1f, -848f))));
    var var_2 = Struct_4(func_2() >> (_wgslsmith_sub_u32(~_wgslsmith_sub_u32(arg_3.x, 97715u), 4294967295u ^ _wgslsmith_div_u32(arg_3.x, 4294967295u)) % 32u), Struct_2(vec4<u32>(arg_2.d, arg_1.b.a.x, arg_2.b.a.x, firstLeadingBit(arg_2.d) >> (4294967295u % 32u))), ~arg_1.c, ~(~_wgslsmith_mult_u32(69721u, _wgslsmith_sub_u32(1632u, 1u))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.c, arg_2.a) & (0i & arg_2.e), select(0i, _wgslsmith_sub_i32(arg_1.a, 33525i), true), _wgslsmith_mult_i32(-28993i, 1i), abs(-38374i >> (arg_2.d % 32u))), _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(3760i, arg_1.a, u_input.b.x, u_input.b.x)), select(vec4<i32>(arg_2.e, u_input.c, u_input.a, 2147483647i) | vec4<i32>(arg_1.e, 12038i, -1i, u_input.c), _wgslsmith_mult_vec4_i32(vec4<i32>(-45024i, arg_1.e, -6247i, arg_2.e), vec4<i32>(arg_1.e, arg_1.e, u_input.a, -1i)), true))));
    return _wgslsmith_clamp_u32(~((var_2.d >> (arg_2.b.a.x % 32u)) | ~arg_2.b.a.x), _wgslsmith_mult_u32(firstTrailingBit(min(arg_1.c.x, arg_1.b.a.x)), arg_1.c.x), _wgslsmith_add_u32(arg_3.x, 69335u)) >> (~countOneBits(arg_1.d) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(~u_input.a, abs(_wgslsmith_mod_i32(~(-12060i), min(firstLeadingBit(-3813i), -2147483647i))));
    let var_1 = Struct_4(0i, Struct_2(vec4<u32>(~14745u, 4294967295u, func_1(true, Struct_4(0i, Struct_2(vec4<u32>(0u, 13355u, 4294967295u, 21813u)), vec3<u32>(0u, 1u, 1u), 4294967295u, -51286i), Struct_4(8030i, Struct_2(vec4<u32>(20812u, 4294967295u, 4294967295u, 58597u)), vec3<u32>(70158u, 48916u, 6074u), 64465u, -2147483647i), vec3<u32>(2075u, 6368u, 23828u)), firstLeadingBit(0u)) & select(max(vec4<u32>(0u, 17106u, 12972u, 704u), vec4<u32>(4294967295u, 4294967295u, 1u, 0u)), abs(vec4<u32>(992u, 71338u, 0u, 24370u)), vec4<bool>(true, true, true, false))), _wgslsmith_mod_vec3_u32(~(~select(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(0u, 1u, 63260u), false)), vec3<u32>(_wgslsmith_div_u32(0u, 1u) | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 94451u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), min(vec4<u32>(8156u, 38978u, 4294967295u, 1u), vec4<u32>(4294967295u, 58086u, 58521u, 4294967295u))), ~_wgslsmith_sub_u32(131158u, 83743u))), 4294967295u, -40493i);
    let var_2 = !vec2<bool>(min(~var_1.b.a.x, var_1.d) == max(1u << (var_1.d % 32u), var_1.d), true);
    var var_3 = !(!select(vec3<bool>(true && var_2.x, var_2.x, all(vec3<bool>(var_2.x, var_2.x, false))), !vec3<bool>(var_2.x, var_2.x, true), true));
    var var_4 = Struct_1(~countOneBits(~(~53354u)), !any(vec2<bool>(all(vec4<bool>(true, var_2.x, var_3.x, var_3.x)), true)), ~62994i, vec2<bool>(!var_3.x, true));
    var_4 = Struct_1(var_4.a, any(!(!select(vec4<bool>(var_4.d.x, var_3.x, false, true), vec4<bool>(var_2.x, var_3.x, var_4.d.x, var_4.d.x), var_2.x))), countOneBits(_wgslsmith_mod_i32(max(u_input.b.x, var_0.x) << (_wgslsmith_sub_u32(var_4.a, var_4.a) % 32u), ~var_0.x | _wgslsmith_sub_i32(u_input.a, var_0.x))), var_4.d);
    var_3 = vec3<bool>(!(true & var_2.x) == true, !var_4.d.x, !var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(~func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(sign(-1528f)))) - _wgslsmith_f_op_f32(trunc(-161f))));
}

