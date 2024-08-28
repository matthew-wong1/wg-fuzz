struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<u32>) -> vec4<i32> {
    var var_0 = firstLeadingBit(vec3<u32>(~(~max(arg_2.x, 47715u)), ~abs(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e)), _wgslsmith_mod_u32(arg_0.a, u_input.e.x)));
    var var_1 = 33285u;
    var var_2 = Struct_2(reverseBits(1u));
    var_1 = min(~28008u ^ (_wgslsmith_div_u32(reverseBits(90632u), 8576u << (u_input.d % 32u)) >> ((~u_input.e.x ^ (var_0.x | 0u)) % 32u)), ~28932u);
    var_1 = ~var_2.a;
    return vec4<i32>(u_input.a.x, 0i, reverseBits(-38361i), firstTrailingBit(u_input.a.x));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    var var_0 = vec4<bool>(_wgslsmith_dot_vec3_u32(~(u_input.e.ywy << (u_input.e.wzx % vec3<u32>(32u))), firstLeadingBit(~vec3<u32>(28303u, 0u, u_input.c))) != (u_input.e.x >> (reverseBits(min(4294967295u, 4294967295u)) % 32u)), !(!arg_0.x), true || any(select(select(vec3<bool>(arg_0.x, false, arg_0.x), arg_0, arg_0.x), vec3<bool>(arg_0.x, false, arg_0.x), select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, false, false), arg_0))), !select(!any(arg_0.yy), all(!vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), all(select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(true, arg_0.x), arg_0.x))));
    var_0 = vec4<bool>(abs(firstTrailingBit(-4270i)) <= 26692i, any(vec3<bool>(!arg_0.x || (arg_0.x & true), true, abs(u_input.a.x) > 1i)), !(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), u_input.a.x & -53692i) > ~1i), true);
    var var_1 = Struct_1(u_input.b ^ u_input.b, u_input.e.yyw, ~u_input.e.wwx ^ (select(u_input.e.zyz, _wgslsmith_add_vec3_u32(u_input.e.xwz, u_input.e.wxy), !arg_0) & firstLeadingBit(u_input.e.xxx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1415f, -1000f))))), -vec3<i32>(u_input.b.x, abs(-u_input.a.x), -(u_input.a.x & u_input.a.x)));
    var_0 = vec4<bool>(-(~(~40980i)) < _wgslsmith_add_i32(var_1.e.x, -6599i), arg_0.x && var_0.x, true & arg_0.x, var_0.x);
    var var_2 = Struct_3(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.a.x, 23840i), reverseBits(vec2<i32>(-11544i, -1i))) ^ -vec2<i32>(0i, -1i), var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1000f, 223f, var_0.x)))), var_1.d)), Struct_1(var_1.a, var_1.c >> (~(var_1.c >> (vec3<u32>(var_1.b.x, 29648u, var_1.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)), ((vec3<u32>(0u, u_input.c, 27074u) & vec3<u32>(37783u, 0u, var_1.b.x)) ^ u_input.e.wwz) & vec3<u32>(~34717u, 1u, 4294967295u), -321f, var_1.e), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_1.d, var_1.d, false)), _wgslsmith_f_op_f32(ceil(-1000f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-237f, 1760f) + vec2<f32>(-550f, var_1.d)) * vec2<f32>(var_1.d, -583f))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2070f, var_1.d))))))));
    return !arg_0.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_3(u_input.b.wx, func_3(!vec3<bool>(true, all(vec2<bool>(false, false)), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1646f))))), Struct_1(~vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, u_input.b.x, u_input.a.x), 2147483647i, -u_input.a.x, firstTrailingBit(u_input.b.x)), vec3<u32>(1u, 49u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 24165u, arg_0.x, arg_0.x), vec4<u32>(u_input.d, 1u, 71543u, 4294967295u))), firstLeadingBit(vec3<u32>(1u, abs(u_input.e.x), u_input.d)), _wgslsmith_f_op_f32(-arg_1.x), u_input.b.yyw), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1664f, -1402f)))));
    var var_1 = ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(min(~vec4<u32>(0u, var_0.d.c.x, 4294967295u, var_0.d.c.x), u_input.e), vec4<u32>(~1u, _wgslsmith_div_u32(arg_0.x, 23859u), u_input.e.x, ~6684u)), ~abs(min(u_input.e, vec4<u32>(63085u, 30344u, var_0.d.c.x, u_input.d))));
    var var_2 = var_0;
    let var_3 = Struct_2(firstTrailingBit(~(~0u)) | (firstLeadingBit(var_2.d.c.x & 6165u) << (~u_input.d % 32u)));
    let var_4 = vec3<i32>(var_0.a.x, -2147483647i << (var_0.d.b.x % 32u), _wgslsmith_mult_i32(-min(-var_2.a.x, var_0.a.x), _wgslsmith_dot_vec2_i32(max(var_2.a & vec2<i32>(11668i, u_input.b.x), u_input.b.yy << (vec2<u32>(var_3.a, var_2.d.c.x) % vec2<u32>(32u))), var_0.d.a.xx)));
    return var_3;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.x, -785f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1232f - arg_1.c), arg_1.d.d, false)), -115f))));
    var_0 = vec4<f32>(-550f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, 1060f))))))), -1304f, _wgslsmith_f_op_f32(f32(-1f) * -2319f));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_div_f32(var_0.x, 119f), -807f, arg_1.e.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, 340f, -308f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(264f, -1477f, var_0.x, arg_2.x))))));
    let var_2 = !select(select(vec2<bool>(false, arg_1.b), select(select(vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(false, arg_1.b), vec2<bool>(false, false)), !vec2<bool>(arg_1.b, true), vec2<bool>(arg_1.b, true)), true), select(vec2<bool>(all(vec4<bool>(true, arg_1.b, arg_1.b, arg_1.b)), true), !(!vec2<bool>(arg_1.b, false)), select(!vec2<bool>(false, arg_1.b), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, arg_1.b)), select(vec2<bool>(true, arg_1.b), vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(arg_1.b, true)))), select(select(!vec2<bool>(arg_1.b, arg_1.b), !vec2<bool>(arg_1.b, true), any(vec4<bool>(true, arg_1.b, arg_1.b, true))), vec2<bool>(true, true), select(!vec2<bool>(false, arg_1.b), select(vec2<bool>(arg_1.b, true), vec2<bool>(arg_1.b, arg_1.b), arg_1.b), !arg_1.b)));
    var var_3 = u_input.e.xyz;
    return Struct_3(_wgslsmith_mult_vec2_i32(vec2<i32>(24500i, arg_0.x), select(min(min(vec2<i32>(arg_1.d.e.x, -1i), vec2<i32>(arg_0.x, -35575i)), max(arg_0, arg_1.a)), vec2<i32>(countOneBits(arg_1.a.x), abs(-48225i)), true)), any(select(!(!vec3<bool>(var_2.x, arg_1.b, true)), select(vec3<bool>(var_2.x, false, arg_1.b), vec3<bool>(true, false, var_2.x), select(vec3<bool>(true, var_2.x, true), vec3<bool>(arg_1.b, arg_1.b, false), vec3<bool>(arg_1.b, false, var_2.x))), var_2.x)), _wgslsmith_f_op_f32(-arg_1.e.x), Struct_1(~select(arg_1.d.a, vec4<i32>(1i, arg_1.d.a.x, arg_1.d.a.x, 2147483647i), vec4<bool>(var_2.x, arg_1.b, false, arg_1.b)), arg_1.d.b, arg_1.d.c, _wgslsmith_f_op_f32(sign(arg_1.d.d)), _wgslsmith_clamp_vec3_i32(vec3<i32>(30088i, 1i, _wgslsmith_mod_i32(-27260i, -6490i)), vec3<i32>(i32(-1i) * -25588i, -16052i, -arg_1.a.x), reverseBits(vec3<i32>(2147483647i, 21469i, -2147483647i)) >> (~vec3<u32>(var_3.x, u_input.e.x, arg_1.d.c.x) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(exp2(arg_2.xz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec2<i32>(select(-36420i, i32(-1i) * -2147483647i, all(vec3<bool>(false, false, true))), -2147483647i ^ (u_input.a.x & 11933i)) >> (u_input.e.yy % vec2<u32>(32u)), Struct_3(~firstLeadingBit(_wgslsmith_sub_vec2_i32(u_input.b.xx, vec2<i32>(u_input.a.x, u_input.b.x))), !any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-912f)) + _wgslsmith_f_op_f32(-285f + -477f)) * _wgslsmith_f_op_f32(round(1f))), Struct_1(func_1(Struct_2(u_input.d), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), _wgslsmith_sub_vec2_u32(u_input.e.xx, u_input.e.xw)), ~select(vec3<u32>(u_input.e.x, 20972u, 21677u), vec3<u32>(u_input.d, u_input.e.x, u_input.e.x), true), vec3<u32>(~1u, 1u, 28709u << (u_input.e.x % 32u)), -2341f, ~vec3<i32>(u_input.b.x, u_input.a.x, 7244i) | _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, u_input.a.x), vec3<i32>(-4947i, -20729i, u_input.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 185f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(585f, -783f), vec2<f32>(-900f, 675f), false))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 855f), vec2<f32>(837f, 1037f)) * vec2<f32>(173f, 139f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(735f - -496f) - _wgslsmith_f_op_f32(f32(-1f) * -298f)), _wgslsmith_f_op_f32(f32(-1f) * -1857f), _wgslsmith_f_op_f32(-159f + 1331f), _wgslsmith_f_op_f32(f32(-1f) * -729f)))), func_2(u_input.e.xw, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1657f - 1284f), -486f)), _wgslsmith_f_op_f32(835f - _wgslsmith_f_op_f32(1000f + 1000f)))));
    let var_1 = var_0.e.x;
    var var_2 = Struct_2(_wgslsmith_mult_u32(countOneBits(abs(~4294967295u)), 4294967295u));
    var_2 = func_2(var_0.d.b.zx, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -444f), var_1));
    var var_3 = -1798f;
    var_3 = 1000f;
    let var_4 = func_4(~reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, var_0.d.a.x), u_input.b.wx, vec2<i32>(u_input.b.x, u_input.b.x) << (u_input.e.xz % vec2<u32>(32u)))), var_0, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, var_0.e.x, var_0.e.x, 1061f))) * vec4<f32>(916f, var_1, 1932f, var_0.d.d)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.c, 1000f, -1738f, var_0.d.d))), !select(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), var_0.b))))), func_2(abs(~(u_input.e.xx & var_0.d.c.xz)), var_0.e)).d;
    var var_5 = Struct_3(-var_0.a, !(all(vec4<bool>(var_0.b, var_0.b, true, true)) == (1i == -var_0.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-705f, var_4.d)))))), func_4(vec2<i32>(45823i, min(-var_0.d.e.x, var_0.a.x)), Struct_3(-firstLeadingBit(vec2<i32>(var_0.a.x, var_0.a.x)), var_0.b && func_3(vec3<bool>(false, var_0.b, true)), var_0.e.x, var_0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.e)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1122f, var_0.c) * var_0.e))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.d, -1612f, -1147f, 177f) + vec4<f32>(var_0.c, -830f, -1668f, var_4.d)))), func_2(vec2<u32>(55552u, ~var_2.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_4.d, var_1), vec2<f32>(1310f, var_4.d)))))).d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1882f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-53985i, -firstLeadingBit(_wgslsmith_dot_vec4_i32(var_4.a, u_input.b | var_4.a)), -(~_wgslsmith_add_i32(var_5.a.x, var_5.d.e.x)), abs(u_input.e), var_0.a.x);
}

