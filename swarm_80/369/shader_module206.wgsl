struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = vec4<u32>(abs(_wgslsmith_add_u32(1u, 15182u)), 36636u, ~57156u, 8833u);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(max(-233f, -1000f)), 1092f, -685f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(752f, -1194f, 2078f, -136f) + vec4<f32>(-443f, -1036f, 786f, -1499f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1104f * -207f)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2494f, -1226f) + _wgslsmith_f_op_f32(372f - -230f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2409f, -1032f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1424f, 615f, 437f, -717f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1128f, 203f, 1484f, -1093f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1160f, 1353f, -730f, 1800f) + vec4<f32>(-134f, -619f, -1535f, -874f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, -1457f, -916f, 1444f))))))));
    let var_2 = select(vec4<bool>(arg_0.c.x, arg_0.c.x, false || any(select(vec2<bool>(true, arg_0.c.x), vec2<bool>(arg_0.c.x, false), vec2<bool>(arg_0.c.x, arg_0.c.x))), arg_0.c.x), vec4<bool>(true, true, (select(1i, u_input.b, true) & _wgslsmith_add_i32(u_input.b, -4736i)) <= _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, u_input.b, 2147483647i, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 2147483647i, -1i, -2147483647i), vec4<i32>(u_input.b, u_input.b, 46754i, u_input.b))), all(vec3<bool>(true, true, arg_0.c.x))), vec4<bool>(all(vec3<bool>(true, arg_0.c.x, true)) == all(!vec4<bool>(arg_0.c.x, arg_0.c.x, true, arg_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2866f) * _wgslsmith_div_f32(728f, var_1.x)) != _wgslsmith_f_op_f32(-1f), arg_0.c.x, select(arg_0.c.x, true, arg_0.c.x)));
    let var_3 = vec4<i32>(_wgslsmith_mod_i32(9069i, 1i), _wgslsmith_clamp_i32(_wgslsmith_div_i32(abs(~4801i), u_input.b), -firstLeadingBit(firstTrailingBit(33271i)), abs(u_input.b) >> (4294967295u % 32u)), u_input.b, countOneBits(-min(u_input.b, u_input.b)));
    let var_4 = arg_0;
    return arg_0.c.x;
}

fn func_2() -> bool {
    let var_0 = Struct_1(~countOneBits(firstLeadingBit(select(vec3<u32>(56115u, u_input.c, 0u), vec3<u32>(40961u, 27478u, 47860u), vec3<bool>(false, true, true)))), 10166u, vec4<bool>(false, true, !any(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true)) && false));
    var var_1 = all(!var_0.c.wyy);
    var_1 = true;
    let var_2 = 471f;
    var var_3 = !select(select(!var_0.c, var_0.c, vec4<bool>(func_3(var_0), var_0.c.x | false, var_2 < var_2, true && var_0.c.x)), var_0.c, !select(!var_0.c, select(var_0.c, var_0.c, vec4<bool>(var_0.c.x, true, false, var_0.c.x)), 1074f >= var_2));
    return var_0.c.x;
}

fn func_1(arg_0: bool, arg_1: bool) -> u32 {
    var var_0 = select(~u_input.b, u_input.b, func_2());
    var var_1 = all(vec4<bool>(true, arg_1, true, func_3(Struct_1(~vec3<u32>(u_input.a, u_input.c, u_input.c), 0u & u_input.a, vec4<bool>(false, arg_0, arg_0, false)))));
    var_0 = u_input.b;
    var_0 = u_input.b;
    var_0 = 21241i;
    return 40298u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = firstLeadingBit(vec4<u32>(countOneBits(1u & u_input.a), min(u_input.a, ~(u_input.c ^ u_input.a)), ~1u, 1u));
    var_1 = vec4<u32>(var_1.x, 4294967295u, u_input.a, _wgslsmith_mult_u32(var_1.x, var_1.x));
    let var_2 = min(select(vec2<i32>(u_input.b, var_0) >> (var_1.xz % vec2<u32>(32u)), vec2<i32>(~0i >> ((u_input.c & var_1.x) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(14448i, -1i), select(vec2<i32>(var_0, -1i), vec2<i32>(-9145i, -1i), false))), true), firstTrailingBit(vec2<i32>(firstTrailingBit(~u_input.b), abs(45611i))));
    var_1 = ~firstTrailingBit(~vec4<u32>(func_1(false, true), 4294967295u, 1u, _wgslsmith_div_u32(u_input.a, u_input.c)));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(186f, -1751f, -395f), vec3<f32>(631f, -561f, 554f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1256f, 243f, -1444f) - vec3<f32>(1626f, 1640f, 1315f)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-236f, 565f, var_3)) + _wgslsmith_f_op_f32(-1518f - -339f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1687f, -703f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -885f), -173f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1214f, -1239f), vec2<f32>(1440f, 600f))))))))), select(~(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0, var_0, -1i, 0i), vec4<i32>(u_input.b, var_0, 0i, u_input.b)) << (min(vec4<u32>(u_input.a, 74396u, 13008u, var_1.x), vec4<u32>(26278u, u_input.c, 55745u, u_input.c)) % vec4<u32>(32u))), reverseBits(countOneBits(~vec4<i32>(u_input.b, var_0, -2704i, var_0))), true), countOneBits(-(~(-12516i))), vec4<i32>(~var_2.x, abs(-22203i), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-23422i, -18775i, var_0), vec3<i32>(1i, var_0, 0i) & vec3<i32>(var_2.x, var_2.x, -2147483647i)), select(vec3<i32>(u_input.b, var_2.x, -16112i), vec3<i32>(var_2.x, u_input.b, var_0), true) | _wgslsmith_sub_vec3_i32(vec3<i32>(394i, var_0, var_0), vec3<i32>(var_2.x, -10713i, u_input.b))), abs(var_2.x)));
}

