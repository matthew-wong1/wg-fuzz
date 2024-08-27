struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
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

var<private> global0: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec3<i32>) -> vec4<u32> {
    global0 = select(select(vec4<bool>(all(select(vec2<bool>(false, global0.x), global0.wz, true)), true, true, select(global0.x, global0.x, false)), !(!vec4<bool>(false, global0.x, false, true)), !(!global0.x)), vec4<bool>(all(select(!global0.xzw, vec3<bool>(global0.x, global0.x, global0.x), all(global0.zwx))), global0.x, ~(548u ^ arg_0) != arg_0, global0.x), select(vec4<bool>(true | all(vec2<bool>(false, true)), false, true, global0.x), vec4<bool>(true, true, select(all(vec4<bool>(false, global0.x, global0.x, true)), true, !global0.x), global0.x), vec4<bool>(true, any(select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(false, global0.x, true, true), true)), all(!global0.yyz), false)));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1058f) - _wgslsmith_f_op_f32(floor(-1169f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-814f, 263f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1179f, -800f, 826f)))) - vec3<f32>(1f, -508f, _wgslsmith_f_op_f32(-580f + 1957f)))), -2147483647i << (_wgslsmith_mod_u32(firstTrailingBit(~4294967295u), ~max(0u, arg_0)) % 32u), arg_0, abs(~countOneBits(vec3<u32>(arg_0, arg_0, 4294967295u) | vec3<u32>(arg_0, 77129u, 0u))));
    var var_2 = Struct_3(Struct_2(~(-u_input.b.xy), Struct_1(_wgslsmith_f_op_vec3_f32(step(var_1.a, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x))))), arg_2.x, 4294967295u, select(vec3<u32>(var_1.c, arg_0, 0u), var_1.d, select(vec3<bool>(global0.x, global0.x, global0.x), global0.zzx, true))), var_1, min(-39218i, -2147483647i)), vec2<i32>(var_1.b, -((var_1.b & var_1.b) ^ -arg_2.x)), arg_0, all(vec2<bool>(any(select(global0.xwz, global0.xxx, global0.wyy)), false)));
    var_2 = Struct_3(Struct_2(arg_2.xx, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1038f, var_1.a.x, -997f)), var_1.b << (firstLeadingBit(43063u) % 32u), 1u, vec3<u32>(_wgslsmith_mult_u32(19742u, 13773u), 1u, 69581u)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1326f, -1059f, var_2.a.c.a.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.c.a.x, 863f, -654f))), select(_wgslsmith_div_i32(-1i, -1i), _wgslsmith_mod_i32(arg_2.x, arg_2.x), global0.x), var_2.c, _wgslsmith_mod_vec3_u32(var_2.a.b.d, var_2.a.b.d)), -2147483647i), vec2<i32>(-_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_2.x, u_input.b.x, -2147483647i, 9093i), vec4<i32>(arg_1, -1i, -16778i, 1i) ^ vec4<i32>(-2147483647i, -2532i, -33027i, 0i)), var_2.b.x), ~(~4294967295u), all(vec3<bool>(var_2.d, var_1.a.x > _wgslsmith_f_op_f32(var_1.a.x + var_1.a.x), true)));
    return vec4<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(3389u, ~(4294967295u | var_1.d.x))), 36316u, ~arg_0, arg_0 << (0u % 32u));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec4<i32>) -> u32 {
    let var_0 = global0.x;
    let var_1 = u_input.a.x;
    let var_2 = countOneBits(func_3(abs(4294967295u), firstTrailingBit(0i) | _wgslsmith_div_i32(arg_1, -122i), _wgslsmith_mod_vec3_i32(~vec3<i32>(-1i, var_1, 2147483647i), vec3<i32>(u_input.a.x, u_input.b.x, 9909i) >> (vec3<u32>(37484u, 26710u, 21186u) % vec3<u32>(32u))))) << (~vec4<u32>(firstLeadingBit(~16141u), 1u, abs(~58004u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u))) % vec4<u32>(32u));
    let var_3 = -2147483647i;
    let var_4 = 1u;
    return select(var_2.x, var_4, false);
}

fn func_1(arg_0: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_mod_u32(abs(min(10099u, 47594u)), ~1u), 16398u), vec3<u32>(~(~(~4294967295u)), func_2(vec3<f32>(-1267f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -382f), min(~u_input.a.x, -1i), ~(~vec4<i32>(u_input.a.x, u_input.b.x, u_input.a.x, u_input.a.x))), reverseBits(38151u)));
    var var_1 = reverseBits(~var_0.x);
    let var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(~((u_input.a.x >> (0u % 32u)) | 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(40109i, u_input.b.x, ~u_input.b.x, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, 44425i) >> (vec4<u32>(35882u, 1u, var_0.x, 29473u) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, u_input.a.x, 2147483647i, 57843i) >> (vec4<u32>(64712u, 35335u, 38575u, 0u) % vec4<u32>(32u)))), u_input.a.x), -u_input.a);
    global0 = select(vec4<bool>(all(select(vec4<bool>(false, true, arg_0, arg_0), select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(true, arg_0, arg_0, false), false), true)), select(any(vec4<bool>(false, false, global0.x, global0.x)), arg_0, !(var_0.x == var_0.x)), false, all(vec2<bool>(true, true)) | select(!arg_0, global0.x && true, arg_0)), select(!select(vec4<bool>(global0.x, global0.x, global0.x, false), !vec4<bool>(arg_0, true, global0.x, false), any(vec2<bool>(arg_0, false))), !select(select(vec4<bool>(true, global0.x, global0.x, arg_0), vec4<bool>(true, arg_0, true, false), vec4<bool>(global0.x, global0.x, true, false)), vec4<bool>(false, arg_0, false, false), select(vec4<bool>(global0.x, true, false, true), vec4<bool>(arg_0, true, false, true), vec4<bool>(global0.x, arg_0, true, arg_0))), all(select(!vec4<bool>(global0.x, arg_0, false, false), vec4<bool>(arg_0, false, arg_0, global0.x), arg_0))), true);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(629f - 1000f)))) - 1381f);
    return !vec4<bool>(any(!(!vec4<bool>(false, true, arg_0, true))), !(!global0.x || arg_0), false, global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec4<bool>(false, true, _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.b.x, -47881i), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)) >= ~min(2147483647i, -1i), true), !vec4<bool>(firstTrailingBit(0u) > 54025u, global0.x, firstTrailingBit(u_input.a.x) == u_input.b.x, true), !(!vec4<bool>(true, select(true, global0.x, false), !global0.x, all(vec3<bool>(false, global0.x, global0.x)))));
    var var_0 = u_input.b.x;
    var var_1 = all(select(vec4<bool>(any(vec3<bool>(false, true, true)), any(select(vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x), global0.x)), !any(vec4<bool>(global0.x, global0.x, true, global0.x)), any(global0.yy)), vec4<bool>(any(vec4<bool>(global0.x, false, true, global0.x)) != true, any(select(global0.xzz, vec3<bool>(true, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x))), !global0.x && (u_input.b.x > -4569i), global0.x), func_1(true)));
    var_1 = !global0.x;
    let var_2 = Struct_3(Struct_2((min(vec2<i32>(u_input.a.x, u_input.b.x), u_input.b.zz) | min(vec2<i32>(u_input.a.x, 58936i), vec2<i32>(0i, u_input.b.x))) << (~vec2<u32>(4294967295u, 113040u) % vec2<u32>(32u)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1000f - 355f), _wgslsmith_f_op_f32(542f * 758f), _wgslsmith_f_op_f32(-860f + 182f)), ~_wgslsmith_div_i32(u_input.b.x, u_input.b.x), _wgslsmith_mod_u32(func_2(vec3<f32>(-550f, -313f, -363f), u_input.a.x, vec4<i32>(-2147483647i, 66797i, u_input.a.x, 2147483647i)), 0u), vec3<u32>(~116392u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 50368u, 1u, 87931u), vec4<u32>(4294967295u, 24810u, 14565u, 0u)), ~67829u)), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(702f, 290f, 239f)))), -_wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(84782i, -35200i)), 4294967295u, vec3<u32>(1u, 1u, 1u)), _wgslsmith_mod_i32(u_input.a.x, reverseBits(1i)) ^ _wgslsmith_add_i32(u_input.b.x, u_input.b.x)), _wgslsmith_sub_vec2_i32(firstTrailingBit(reverseBits(vec2<i32>(2147483647i, u_input.a.x))), u_input.b.zx), 10570u, all(vec3<bool>(false, !(global0.x | global0.x), false)));
    var var_3 = var_2;
    global0 = select(vec4<bool>(!var_2.d, var_3.a.b.d.x <= _wgslsmith_add_u32(0u, firstTrailingBit(var_2.a.c.d.x)), false, var_2.d), func_1(all(vec4<bool>(true, false, all(vec4<bool>(var_3.d, false, false, var_3.d)), var_3.d && true))), !vec4<bool>(var_2.d, true, any(!vec2<bool>(false, var_3.d)), var_2.d));
    let var_4 = vec4<u32>(_wgslsmith_mod_u32(var_2.c, reverseBits(var_3.a.b.d.x)), countOneBits(~0u), reverseBits(~1556u), (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.a.c.d.x, var_3.c, var_3.c, var_3.c), vec4<u32>(var_2.c, 1u, 27194u, 30202u)), func_3(var_2.c, u_input.b.x, u_input.a)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.c, var_3.a.b.c, 92316u, 4294967295u), vec4<u32>(4294967295u, 0u, 36288u, var_2.a.b.c)) % 32u)) >> ((firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.c.c, 47972u, 39859u, 0u), vec4<u32>(1u, var_3.c, var_3.a.c.c, 1u))) | ~select(59701u, var_2.a.b.d.x, true)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(-countOneBits(-31236i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_3.a.c.a.x, var_2.a.b.a.x), var_3.a.c.a.x)))));
}

