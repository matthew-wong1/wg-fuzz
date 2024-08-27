struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(-1554f, -194f, -161f, 1811f, 2614f, -1000f, -1375f, 248f, -2343f, 1000f, 2138f, -1774f, 1768f, -455f, 1286f, -1490f, -1371f, 516f, -390f);

var<private> global1: Struct_1 = Struct_1(657f, 1302f);

var<private> global2: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(1000f, 516f), vec2<f32>(-291f, 800f), vec2<f32>(-360f, -1000f), vec2<f32>(-768f, -458f), vec2<f32>(873f, 880f), vec2<f32>(-418f, -192f), vec2<f32>(197f, -2259f), vec2<f32>(875f, -886f), vec2<f32>(-1000f, 1517f), vec2<f32>(-1000f, 746f), vec2<f32>(-675f, 1662f), vec2<f32>(1000f, 1383f), vec2<f32>(191f, 1000f), vec2<f32>(946f, -1265f), vec2<f32>(120f, 808f), vec2<f32>(1119f, -1000f), vec2<f32>(-1036f, -147f), vec2<f32>(-751f, -1066f), vec2<f32>(571f, -264f), vec2<f32>(728f, -1189f), vec2<f32>(-597f, -439f), vec2<f32>(-839f, -1445f), vec2<f32>(-594f, -899f), vec2<f32>(1000f, -1266f), vec2<f32>(1571f, 115f), vec2<f32>(242f, -946f), vec2<f32>(641f, 1857f), vec2<f32>(-1082f, -306f), vec2<f32>(-1578f, -607f), vec2<f32>(-2197f, 823f), vec2<f32>(-189f, -1831f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec4<bool> {
    let var_0 = ~(~(~(~abs(vec2<u32>(arg_0, u_input.a)))));
    global0 = array<f32, 19>();
    let var_1 = var_0.x;
    var var_2 = select(vec4<i32>(-1i) * -vec4<i32>(0i >> (var_0.x % 32u), u_input.d, -25375i, 41102i), reverseBits(vec4<i32>(i32(-1i) * -24571i, ~0i & firstTrailingBit(u_input.d), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2688i, u_input.d), vec2<i32>(22136i, u_input.d)), _wgslsmith_add_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(u_input.d, u_input.d))), u_input.d)), all(vec4<bool>(~1i > u_input.d, all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))), true, any(vec2<bool>(true, true)))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(697f)) - global0[_wgslsmith_index_u32(countOneBits(15584u), 19u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1281f * -252f)));
    return vec4<bool>(true, false, true, !all(vec4<bool>(true, true, all(vec4<bool>(false, true, false, true)), true)));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    var var_0 = select(vec4<u32>(0u, 1u, ~u_input.b, u_input.b), ~firstLeadingBit(select(vec4<u32>(u_input.b, u_input.c.x, 4568u, 108789u), vec4<u32>(u_input.c.x, 23930u, 0u, 0u), vec4<bool>(true, true, true, true))), select(func_3(select(4294967295u, u_input.b, true) ^ u_input.b), vec4<bool>(any(vec3<bool>(false, false, true)), !any(vec4<bool>(false, true, true, true)), all(vec3<bool>(false, false, false)) | select(false, true, true), select(false, true, true)), any(vec4<bool>(true, true, true, true))));
    var var_1 = arg_0;
    let var_2 = arg_0.a;
    return Struct_3(Struct_2(!(_wgslsmith_div_f32(423f, var_1.a) < -1172f), Struct_1(global1.b, -173f), arg_0, vec4<u32>(var_0.x, ~1u, _wgslsmith_mod_u32(~0u, 15285u), ~(var_0.x & 5938u))), firstLeadingBit(select(vec2<u32>(4225u, 0u), ~vec2<u32>(u_input.b, 0u), vec2<bool>(select(false, true, true), true))), _wgslsmith_add_vec2_u32(firstTrailingBit((u_input.c.xz & var_0.yw) | reverseBits(var_0.xz)), u_input.c.zy), reverseBits(countOneBits(~(-vec4<i32>(u_input.d, u_input.d, 1i, 0i)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    let var_0 = arg_2.a.d;
    var var_1 = func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1680f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3 - arg_2.a.c.b))))));
    let var_2 = vec4<bool>(var_1.a.a, var_1.a.a, var_1.a.a, true);
    let var_3 = Struct_3(var_1.a, ~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 59426u), vec2<u32>(var_1.a.d.x, 9057u)))), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0.x, arg_2.b.x), firstLeadingBit(u_input.c.xx), var_0.xw), abs(~var_1.d));
    var var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.b.b, _wgslsmith_div_f32(-236f, arg_2.a.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c.a))), arg_0.wxw);
    return Struct_1(arg_3, _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(round(global1.b)), true)));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = select(max(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(24551u, u_input.a, 1u, u_input.e), vec4<u32>(u_input.c.x, 4294967295u, u_input.a, u_input.b)), select(vec4<u32>(u_input.b, 10862u, u_input.b, 17956u), vec4<u32>(14601u, 30210u, u_input.c.x, 0u), vec4<bool>(false, false, false, true)), ~vec4<u32>(25683u, u_input.c.x, u_input.c.x, 14842u)), ~vec4<u32>(4294967295u, u_input.e, u_input.e, u_input.b)) & vec4<u32>(u_input.e, _wgslsmith_dot_vec2_u32(~u_input.c.xz, u_input.c.xy | u_input.c.yz), (u_input.e & u_input.b) ^ u_input.c.x, ~_wgslsmith_add_u32(u_input.c.x, u_input.b)), _wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, ~4294967295u, ~4294967295u), ~vec4<u32>(4294967295u, 10630u, 35095u, 12291u), true), vec4<u32>(max(firstTrailingBit(1u), u_input.e), 1u, _wgslsmith_div_u32(~u_input.c.x, _wgslsmith_mod_u32(u_input.a, 0u)), 4294967295u)), !select(select(vec4<bool>(true, true, false, false), func_3(u_input.e), vec4<bool>(true, true, true, true)), func_3(~27532u), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false)));
    global1 = arg_1;
    let var_1 = func_2(arg_1).a.b;
    global2 = array<vec2<f32>, 31>();
    var var_2 = _wgslsmith_add_u32(var_0.x ^ firstTrailingBit(func_2(Struct_1(global0[_wgslsmith_index_u32(var_0.x, 19u)], 474f)).a.d.x), u_input.b);
    return ~(select(u_input.c, vec3<u32>(30847u >> (u_input.e % 32u), u_input.e | var_0.x, firstTrailingBit(4294967295u)), vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), true)) >> (vec3<u32>(0u, u_input.a, 16785u) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(select(min(u_input.c, vec3<u32>(30941u, u_input.c.x, u_input.c.x)), func_4(1588f, func_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-570f, global1.a, global1.b, 234f))), ~u_input.a, Struct_3(Struct_2(false, Struct_1(511f, 1004f), Struct_1(109f, global1.b), vec4<u32>(u_input.c.x, 0u, 4294967295u, u_input.e)), vec2<u32>(4294967295u, u_input.c.x), u_input.c.xx, vec4<i32>(-1i, 30388i, u_input.d, 1i)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(25161u, 19u)], global1.a))), !vec3<bool>(select(var_0, var_0, true), var_0, any(vec2<bool>(var_0, true)))), u_input.c, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(86191u, 4294967295u, u_input.b, u_input.c.x) >> (abs(vec4<u32>(0u, 14252u, u_input.b, u_input.a)) % vec4<u32>(32u)), vec4<u32>(u_input.c.x, ~0u, u_input.a, 14809u), vec4<u32>(_wgslsmith_mult_u32(1u, 0u), u_input.c.x, reverseBits(u_input.a), u_input.e)), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, 0u)) & select(vec4<u32>(u_input.e, u_input.a, 1u, 62501u), vec4<u32>(u_input.e, u_input.b, u_input.c.x, 0u), false), firstLeadingBit(firstLeadingBit(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 63554u))), max(vec4<u32>(690u, u_input.b, u_input.b, 96803u) | vec4<u32>(u_input.c.x, u_input.c.x, 34595u, 6796u), ~vec4<u32>(u_input.e, 20865u, 20509u, u_input.b)))));
}

