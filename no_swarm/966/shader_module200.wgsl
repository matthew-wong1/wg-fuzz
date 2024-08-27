struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec2<bool> {
    let var_0 = select(select(select(vec2<bool>(any(vec3<bool>(true, true, false)), false), vec2<bool>(true, false), _wgslsmith_f_op_f32(round(-1145f)) < _wgslsmith_f_op_f32(max(-188f, -623f))), vec2<bool>(true, true), vec2<bool>(false, all(vec4<bool>(true, true, false, true)))), vec2<bool>(any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), false), !vec2<bool>(any(vec3<bool>(false, false, true)), !any(vec2<bool>(true, true))));
    var var_1 = ~vec4<u32>(~u_input.a.x, ~49293u, _wgslsmith_sub_u32(u_input.a.x, 0u), ~u_input.a.x);
    let var_2 = arg_0;
    var var_3 = Struct_4(_wgslsmith_mult_vec4_i32(countOneBits(~vec4<i32>(1i, arg_0, arg_0, 2147483647i)), abs(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, var_2), vec4<i32>(var_2, arg_0, -55940i, var_2)) >> (_wgslsmith_mod_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u)))), Struct_3(Struct_1(select(select(var_0, var_0, true), !var_0, var_0)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1319f + 445f), -1638f, _wgslsmith_f_op_f32(select(1389f, 1472f, var_0.x)), _wgslsmith_f_op_f32(580f - -831f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(877f, -651f, -2079f, -1168f))), !vec4<bool>(var_0.x, true, var_0.x, false))), Struct_2(u_input.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-263f, -1566f), vec2<f32>(-1000f, -1040f))) - vec2<f32>(671f, -191f)), Struct_1(!vec2<bool>(var_0.x, var_0.x)))));
    let var_4 = all(select(vec3<bool>(~u_input.a.x > ~0u, !all(vec3<bool>(false, var_3.b.c.c.a.x, var_3.b.c.c.a.x)), var_0.x), select(!select(vec3<bool>(var_3.b.a.a.x, var_0.x, false), vec3<bool>(true, false, var_3.b.c.c.a.x), vec3<bool>(var_0.x, var_0.x, true)), select(!vec3<bool>(false, false, var_3.b.c.c.a.x), !vec3<bool>(true, var_0.x, true), any(vec2<bool>(true, var_3.b.c.c.a.x))), var_0.x), vec3<bool>(var_0.x, var_3.b.a.a.x, all(select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(true, var_0.x, true, var_3.b.c.c.a.x), var_3.b.c.c.a.x)))));
    return select(select(vec2<bool>(var_0.x, all(select(vec3<bool>(var_0.x, false, false), vec3<bool>(false, true, true), vec3<bool>(false, var_4, var_4)))), !var_3.b.c.c.a, true), select(vec2<bool>(true, true), vec2<bool>(all(select(var_0, vec2<bool>(true, false), var_3.b.c.c.a.x)), var_1.x != _wgslsmith_dot_vec2_u32(var_1.zw, var_1.wx)), all(!select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(false, true, false, false), vec4<bool>(var_3.b.c.c.a.x, var_4, true, true)))), !(!vec2<bool>(var_3.b.a.a.x, var_1.x >= var_3.b.c.a)));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(!func_3(-1i)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1733f, arg_1, -3662f, arg_1)) * vec4<f32>(1000f, 304f, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -401f, arg_1, arg_1)))))))), Struct_2(u_input.a.x | 1u, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-768f, arg_1)))), arg_0));
    let var_1 = var_0;
    let var_2 = vec4<f32>(467f, arg_1, -759f, _wgslsmith_f_op_f32(var_1.c.b.x - _wgslsmith_f_op_f32(trunc(var_1.b.x))));
    var var_3 = !select(vec3<bool>(true, true, all(var_1.c.c.a)), select(select(!vec3<bool>(true, var_0.c.c.a.x, true), select(vec3<bool>(var_1.c.c.a.x, true, false), vec3<bool>(arg_0.a.x, true, var_1.a.a.x), false), 25041u >= var_1.c.a), vec3<bool>(!var_1.a.a.x, !arg_0.a.x, select(var_0.a.a.x, false, true)), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, var_1.a.a.x), false))), any(select(!vec3<bool>(false, true, arg_0.a.x), select(vec3<bool>(false, false, true), vec3<bool>(var_0.c.c.a.x, true, false), true), select(vec3<bool>(var_0.a.a.x, false, false), vec3<bool>(false, true, false), vec3<bool>(var_0.a.a.x, true, false)))));
    var_3 = select(vec3<bool>(var_3.x, !select(var_1.b.x > -1401f, var_0.a.a.x, true), ((u_input.a.x << (u_input.a.x % 32u)) >> (var_0.c.a % 32u)) < (1u << (u_input.a.x % 32u))), vec3<bool>(false, any(select(!vec3<bool>(var_1.a.a.x, var_3.x, true), !vec3<bool>(true, arg_0.a.x, false), select(vec3<bool>(true, arg_0.a.x, false), vec3<bool>(false, true, arg_0.a.x), vec3<bool>(var_3.x, false, true)))), all(select(vec2<bool>(true, true), vec2<bool>(var_0.a.a.x, true), arg_0.a))), var_1.c.c.a.x | ((-2147483647i << (~var_1.c.a % 32u)) <= firstTrailingBit(-18382i)));
    return Struct_1(select(func_3(1i), vec2<bool>(true, true), all(vec2<bool>(var_1.a.a.x, true))));
}

fn func_1() -> i32 {
    let var_0 = 79828u;
    let var_1 = Struct_3(func_2(Struct_1(vec2<bool>(true, true)), 350f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1213f)), -1271f)), _wgslsmith_f_op_f32(f32(-1f) * -599f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(863f - 966f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(557f))))), Struct_2(var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1337f, 456f), vec2<f32>(-106f, -2116f)))), func_2(func_2(Struct_1(vec2<bool>(true, true)), _wgslsmith_f_op_f32(min(678f, -1066f))), -1248f)));
    var var_2 = Struct_3(var_1.c.c, var_1.b, Struct_2(var_0 ^ u_input.a.x, vec2<f32>(_wgslsmith_div_f32(-1646f, _wgslsmith_f_op_f32(f32(-1f) * -1387f)), _wgslsmith_f_op_f32(f32(-1f) * -154f)), func_2(Struct_1(vec2<bool>(false, true)), _wgslsmith_f_op_f32(-1926f + _wgslsmith_f_op_f32(-var_1.b.x)))));
    let var_3 = Struct_3(var_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-173f, _wgslsmith_f_op_f32(-var_2.c.b.x), _wgslsmith_f_op_f32(-var_1.c.b.x), -1366f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b) * vec4<f32>(var_2.b.x, var_1.c.b.x, -797f, var_2.b.x)))), Struct_2(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a.x, 1u), 4294967295u), ~(1u ^ var_1.c.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.b.x, 137f) * var_1.b.zx), _wgslsmith_div_vec2_f32(var_1.c.b, vec2<f32>(var_2.b.x, var_2.c.b.x))))), var_2.a));
    var var_4 = Struct_5(~var_2.c.a);
    return min(-1i, _wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 1922i, 6265i), vec3<i32>(2147483647i, 2147483647i, 34838i), vec3<i32>(29596i, 1i, 0i)), vec3<i32>(-1686i, 76274i, 1i) << (_wgslsmith_sub_vec3_u32(u_input.a.zww, u_input.a.yzw) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_i32(countOneBits(_wgslsmith_sub_vec2_i32(firstLeadingBit(-vec2<i32>(12775i, -1i)), -min(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(-1i, 0i)))), vec2<i32>(reverseBits(~1i), ~_wgslsmith_clamp_i32(func_1(), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, -10876i, 12028i), vec4<i32>(7704i, 28456i, 0i, -37839i)))));
    var var_1 = func_2(Struct_1(vec2<bool>(any(vec3<bool>(false, false, false)), false)), -146f);
    var_0 = -vec2<i32>(firstTrailingBit(var_0.x), 2147483647i);
    let var_2 = !vec3<bool>(!(!any(var_1.a)), false & (true & (var_1.a.x || true)), false);
    var var_3 = Struct_1(func_3(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(var_0.x, 0i, -1i)), abs(vec3<i32>(-36691i, 0i, var_0.x)) | vec3<i32>(var_0.x, var_0.x, var_0.x))));
    var var_4 = vec4<i32>(-_wgslsmith_mult_i32(1267i, 0i), var_0.x, 9734i, (var_0.x | 30797i) | var_0.x);
    var var_5 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, max(~(~abs(var_4.zxz)), vec3<i32>(var_0.x, _wgslsmith_clamp_i32(~var_0.x, firstTrailingBit(var_0.x), -1i), -69146i)));
}

