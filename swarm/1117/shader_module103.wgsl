struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4) -> vec2<i32> {
    let var_0 = abs(~_wgslsmith_sub_u32(~arg_0.a.a.x, ~arg_0.a.a.x));
    let var_1 = Struct_1(abs(_wgslsmith_div_vec3_u32(arg_0.a.a, reverseBits(vec3<u32>(63334u, arg_0.a.a.x, 4294967295u)))), u_input.b, _wgslsmith_sub_vec2_i32(-reverseBits(vec2<i32>(2147483647i, u_input.e.x)), vec2<i32>(u_input.e.x, u_input.d.x)));
    let var_2 = Struct_2(~1i ^ countOneBits(-(u_input.d.x & u_input.c)));
    let var_3 = vec2<bool>(false, select(all(vec2<bool>(true, false)), any(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)), ~u_input.a != _wgslsmith_dot_vec3_u32(arg_0.a.a, _wgslsmith_mult_vec3_u32(vec3<u32>(83064u, 1u, 16197u), var_1.a))));
    let var_4 = 380f;
    return vec2<i32>(2147483647i, min(firstLeadingBit(var_1.c.x) & arg_0.a.c.x, -var_2.a));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1702f, 1862f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-280f - 1207f) - _wgslsmith_f_op_f32(sign(378f))), 332f)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1183f, -678f, 2658f)), vec3<f32>(-735f, -288f, 179f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-246f, 1000f, -1025f) - vec3<f32>(-1085f, 179f, 1311f)), vec3<f32>(2444f, 136f, -117f), vec3<bool>(true, true, false))))))));
    let var_1 = Struct_2(u_input.b.x);
    let var_2 = select(min(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(u_input.a), max(u_input.a, 69189u), 20842u), abs(vec3<u32>(u_input.a, u_input.a, u_input.a)) & vec3<u32>(27311u, 0u, 22873u)), 4294967295u), 1u, !any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))));
    let var_3 = 1561f;
    var var_4 = Struct_1(_wgslsmith_mod_vec3_u32(~(vec3<u32>(113552u, u_input.a, var_2) | _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 36981u), vec3<u32>(var_2, 44179u, 31664u))), ~vec3<u32>(var_2 | var_2, u_input.a, u_input.a >> (u_input.a % 32u))), u_input.e << (_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(0u, u_input.a)) & _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 64880u), vec2<u32>(u_input.a, 1u)), ~vec2<u32>(1u, var_2)) % vec2<u32>(32u)), ~(-(~func_3(Struct_4(Struct_1(vec3<u32>(84855u, 1u, var_2), vec2<i32>(0i, -60518i), u_input.d.xx), vec3<i32>(var_1.a, var_1.a, var_1.a), vec2<i32>(u_input.e.x, u_input.c), var_0.zx)))));
    return Struct_1(vec3<u32>(31824u, var_4.a.x, _wgslsmith_mod_u32(u_input.a, min(abs(18859u), firstTrailingBit(1u)))), u_input.b, var_4.b & vec2<i32>(max(-37158i, ~(-1i)), var_1.a));
}

fn func_1() -> Struct_2 {
    var var_0 = func_2();
    let var_1 = 2147483647i;
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-108f, -1020f, -271f, 185f) + vec4<f32>(1852f, 1005f, 613f, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(779f, 1158f, -1000f, -623f) + vec4<f32>(-297f, -1095f, -572f, 116f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(423f, 1810f, -860f, 199f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(203f, 2391f, -272f, 288f))))));
    let var_3 = var_2.yyy;
    var_0 = func_2();
    return Struct_2(-func_3(Struct_4(Struct_1(vec3<u32>(u_input.a, var_0.a.x, 5174u), var_0.c, vec2<i32>(-1i, 22950i)), u_input.d.zzz | u_input.d.yzw, -u_input.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2291f, -922f), vec2<f32>(var_2.x, var_3.x), vec2<bool>(true, true))))).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(1i ^ u_input.d.x, u_input.b.x | -(i32(-1i) * -2147483647i));
    var var_1 = Struct_2(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-u_input.b.x, 66733i, var_0.x) ^ ~u_input.d.x, ~u_input.d.x));
    var_1 = func_1();
    var_1 = Struct_2(~3042i);
    var_1 = func_1();
    var var_2 = _wgslsmith_div_vec2_u32(abs(~(abs(vec2<u32>(u_input.a, 17623u)) >> (abs(vec2<u32>(1334u, u_input.a)) % vec2<u32>(32u)))), select(firstLeadingBit(vec2<u32>(firstLeadingBit(12750u), reverseBits(21209u))), vec2<u32>(_wgslsmith_add_u32(~u_input.a, u_input.a), ~4294967295u), select(vec2<bool>(true, any(vec3<bool>(false, false, false))), vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(8483u, 2026u), -firstLeadingBit(vec2<i32>(-1i) * -u_input.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -631f, -374f, 1026f)), vec4<f32>(-786f, -997f, 1996f, 1753f), true)) - vec4<f32>(_wgslsmith_f_op_f32(-1857f * -135f), _wgslsmith_f_op_f32(f32(-1f) * -2014f), _wgslsmith_f_op_f32(round(-761f)), 847f))));
}

