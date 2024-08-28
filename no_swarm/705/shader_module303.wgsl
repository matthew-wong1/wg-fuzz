struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    let var_0 = ~(30275u << (~_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, u_input.a), 1u) % 32u));
    return true;
}

fn func_2(arg_0: i32, arg_1: Struct_4) -> vec4<bool> {
    var var_0 = ~(_wgslsmith_mult_vec3_u32(min(~arg_1.a.a, max(arg_1.a.a, vec3<u32>(15728u, arg_1.a.a.x, u_input.a))), vec3<u32>(arg_1.a.a.x >> (1u % 32u), _wgslsmith_dot_vec2_u32(arg_1.a.a.yy, arg_1.a.a.xx), reverseBits(arg_1.a.a.x))) & arg_1.a.a);
    var var_1 = Struct_2(select(arg_1.a.c.yzx, select(arg_1.a.c.zzy, vec3<bool>(u_input.c <= u_input.e, any(vec2<bool>(arg_1.b.x, false)), !arg_1.b.x), arg_1.a.c.yxx), arg_1.a.c.wzw), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -564f), -333f) - 1961f), 921f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1705f, _wgslsmith_div_f32(-142f, -659f)))), Struct_1(~vec3<u32>(u_input.a, ~0u, 42875u), true, vec4<bool>(any(vec3<bool>(arg_1.a.b, arg_1.b.x, true)), !arg_1.a.c.x, func_3(), !(!arg_1.b.x))), _wgslsmith_dot_vec4_i32(max(-vec4<i32>(arg_0, -67129i, u_input.b.x, 2147483647i) >> (~vec4<u32>(4294967295u, var_0.x, var_0.x, u_input.a) % vec4<u32>(32u)), firstTrailingBit(~vec4<i32>(u_input.b.x, -2147483647i, u_input.d, 0i))), vec4<i32>(-arg_0, _wgslsmith_sub_i32(2147483647i, arg_0), -u_input.e, min(u_input.b.x, u_input.c)) ^ (min(vec4<i32>(21071i, arg_0, arg_0, -2147483647i), vec4<i32>(-39328i, 1154i, 2147483647i, 708i)) | vec4<i32>(arg_0, arg_0, u_input.c, -1i))));
    let var_2 = max(-_wgslsmith_mod_vec3_i32(u_input.b, u_input.b), u_input.b) << ((max(~_wgslsmith_add_vec3_u32(var_1.c.a, vec3<u32>(1u, arg_1.a.a.x, 0u)), max(var_1.c.a, arg_1.a.a)) | select(arg_1.a.a, ~(~arg_1.a.a), all(arg_1.a.c.yzy))) % vec3<u32>(32u));
    var_1 = Struct_2(!(!var_1.c.c.yxy), var_1.b, var_1.c, _wgslsmith_div_i32(~(-20458i), ~reverseBits(_wgslsmith_add_i32(var_2.x, 0i))));
    var var_3 = vec4<u32>(arg_1.a.a.x, arg_1.a.a.x >> ((~max(var_1.c.a.x, 48910u) | ~_wgslsmith_dot_vec2_u32(var_0.yx, vec2<u32>(8689u, arg_1.a.a.x))) % 32u), ~var_0.x, 9942u);
    return !vec4<bool>(arg_1.b.x, true || !any(vec3<bool>(true, false, true)), any(!vec3<bool>(arg_1.b.x, arg_1.b.x, true)), !var_1.c.c.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> u32 {
    let var_0 = select(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, arg_1, -1593i, 1641i), select(vec4<i32>(u_input.d, 2147483647i, -12164i, arg_1), vec4<i32>(0i, 62722i, arg_1, arg_1), false)) ^ -abs(vec4<i32>(u_input.e, arg_1, arg_1, 1737i))), firstLeadingBit(select(abs(vec4<i32>(u_input.b.x, u_input.c, u_input.c, 17045i)) << ((vec4<u32>(14498u, u_input.a, 22960u, 0u) | vec4<u32>(5132u, u_input.a, 22340u, 1u)) % vec4<u32>(32u)), min(~vec4<i32>(0i, arg_1, 0i, -81309i), vec4<i32>(arg_1, -4608i, 1i, arg_1)), !any(vec2<bool>(false, false)))), all(select(!func_2(14500i, Struct_4(Struct_1(vec3<u32>(u_input.a, 1u, u_input.a), false, vec4<bool>(true, false, true, false)), vec3<bool>(true, true, true))), func_2(2147483647i, Struct_4(Struct_1(vec3<u32>(87893u, u_input.a, u_input.a), false, vec4<bool>(true, true, true, false)), vec3<bool>(true, false, false))), true)));
    let var_1 = all(vec4<bool>(_wgslsmith_add_i32(~u_input.c, 1i) <= arg_1, (func_3() & any(vec2<bool>(false, false))) && true, any(vec3<bool>(true, false, true)), false));
    let var_2 = abs(vec2<i32>(_wgslsmith_add_i32(var_0.x, _wgslsmith_div_i32(abs(arg_1), i32(-1i) * -1i)), _wgslsmith_sub_i32(_wgslsmith_add_i32(0i, _wgslsmith_mult_i32(arg_1, arg_1)), reverseBits(u_input.e))));
    let var_3 = Struct_4(Struct_1(vec3<u32>(_wgslsmith_add_u32(u_input.a, 23834u), ~_wgslsmith_add_u32(u_input.a, u_input.a), ~_wgslsmith_sub_u32(4294967295u, 31991u)), all(!vec3<bool>(var_1, var_1, true)), !func_2(1i, Struct_4(Struct_1(vec3<u32>(5070u, u_input.a, u_input.a), true, vec4<bool>(var_1, var_1, false, var_1)), vec3<bool>(var_1, false, false)))), select(vec3<bool>(any(vec3<bool>(var_1, false, var_1)) | true, true, false), vec3<bool>(any(vec4<bool>(var_1, var_1, var_1, var_1)), true, true), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, var_1, false), vec3<bool>(true, var_1, var_1)), vec3<bool>(var_1, var_1, var_1), var_1 == false), select(vec3<bool>(false, false, var_1), vec3<bool>(true, true, true), select(vec3<bool>(var_1, false, var_1), vec3<bool>(false, false, true), var_1)), select(vec3<bool>(var_1, false, var_1), !vec3<bool>(var_1, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, var_1, var_1), false)))));
    let var_4 = u_input.d;
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 18770u;
    let var_1 = -32676i;
    var var_2 = abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 7469u), vec3<u32>(23783u, var_0, u_input.a)), ~vec3<u32>(var_0, 22724u, u_input.a)), firstTrailingBit(vec3<u32>(u_input.a, var_0, 45119u)), _wgslsmith_div_vec3_u32(~vec3<u32>(153284u, 1u, var_0), vec3<u32>(4294967295u, u_input.a, 4294967295u))), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(min(vec3<u32>(90584u, var_0, 11197u), vec3<u32>(43791u, 1u, var_0)), select(vec3<u32>(var_0, var_0, u_input.a), vec3<u32>(var_0, u_input.a, 52339u), vec3<bool>(false, false, true))), countOneBits(reverseBits(vec3<u32>(var_0, 114413u, 224u)))), vec3<u32>(~func_1(vec2<f32>(1000f, -263f), var_1), _wgslsmith_div_u32(0u & u_input.a, u_input.a << (u_input.a % 32u)), u_input.a)));
    var_2 = _wgslsmith_add_vec3_u32(max(vec3<u32>(~(~4945u), ~var_2.x, _wgslsmith_mult_u32(firstTrailingBit(1973u), ~4716u)), vec3<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(49482u, var_2.x, u_input.a, var_2.x), vec4<u32>(var_0, 4349u, var_0, 25741u))), 0u >> (~var_2.x % 32u), countOneBits(_wgslsmith_clamp_u32(0u, u_input.a, 0u)))), vec3<u32>(4294967295u, firstTrailingBit(1u), u_input.a));
    var_2 = vec3<u32>(u_input.a, ~(~1u) >> (~_wgslsmith_mult_u32(countOneBits(var_2.x), ~u_input.a) % 32u), var_0);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -651f) - 449f))) <= _wgslsmith_f_op_f32(sign(-298f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec2<i32>(5534i, min(-(var_1 & -8992i), ~_wgslsmith_dot_vec3_i32(u_input.b, u_input.b))), _wgslsmith_f_op_f32(select(423f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-205f, 109f) - -741f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1009f, 1054f)))), var_3 & false)), vec3<u32>(_wgslsmith_mod_u32(abs(_wgslsmith_clamp_u32(u_input.a, 48380u, 0u)), ~min(u_input.a, 4294967295u)), _wgslsmith_clamp_u32(~var_0, ~(~0u), ~u_input.a), var_0));
}

