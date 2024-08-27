struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(true, Struct_1(127f, vec3<bool>(true, false, false)), 1u, Struct_1(-1598f, vec3<bool>(false, true, true))), Struct_2(true, Struct_1(2007f, vec3<bool>(true, false, false)), 0u, Struct_1(-550f, vec3<bool>(true, true, false))), Struct_2(true, Struct_1(481f, vec3<bool>(false, false, true)), 55029u, Struct_1(1559f, vec3<bool>(false, false, true))), Struct_2(true, Struct_1(-609f, vec3<bool>(false, true, false)), 4294967295u, Struct_1(-579f, vec3<bool>(true, false, true))), Struct_2(false, Struct_1(1786f, vec3<bool>(true, false, false)), 26345u, Struct_1(-238f, vec3<bool>(false, true, false))), Struct_2(true, Struct_1(1971f, vec3<bool>(false, false, true)), 1u, Struct_1(-1276f, vec3<bool>(false, true, true))), Struct_2(false, Struct_1(1221f, vec3<bool>(false, false, false)), 10729u, Struct_1(1732f, vec3<bool>(true, true, true))), Struct_2(false, Struct_1(-1359f, vec3<bool>(true, false, true)), 1521u, Struct_1(-1058f, vec3<bool>(false, true, true))), Struct_2(false, Struct_1(-1000f, vec3<bool>(true, false, false)), 100449u, Struct_1(-266f, vec3<bool>(true, false, false))), Struct_2(false, Struct_1(309f, vec3<bool>(false, true, true)), 1u, Struct_1(-1151f, vec3<bool>(true, false, true))), Struct_2(true, Struct_1(-1370f, vec3<bool>(false, true, false)), 0u, Struct_1(-692f, vec3<bool>(false, true, true))), Struct_2(true, Struct_1(-213f, vec3<bool>(false, true, false)), 113862u, Struct_1(529f, vec3<bool>(false, false, true))), Struct_2(false, Struct_1(-1644f, vec3<bool>(false, true, false)), 4294967295u, Struct_1(638f, vec3<bool>(true, false, false))), Struct_2(true, Struct_1(486f, vec3<bool>(false, false, true)), 11437u, Struct_1(-1502f, vec3<bool>(false, false, false))), Struct_2(false, Struct_1(-373f, vec3<bool>(false, true, false)), 80937u, Struct_1(1300f, vec3<bool>(true, true, true))), Struct_2(false, Struct_1(-1183f, vec3<bool>(false, true, false)), 0u, Struct_1(-1022f, vec3<bool>(true, true, false))), Struct_2(true, Struct_1(-1000f, vec3<bool>(true, false, false)), 12716u, Struct_1(310f, vec3<bool>(false, true, true))));

var<private> global1: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(0i, 2147483647i, 52189i, 30244i), vec4<i32>(-14089i, -1i, 1i, i32(-2147483648)), vec4<i32>(-29342i, -29048i, 60464i, -1i), vec4<i32>(0i, 2147483647i, -32204i, 1i), vec4<i32>(1i, -1i, 26179i, 0i), vec4<i32>(35452i, 0i, -29549i, i32(-2147483648)), vec4<i32>(0i, 1i, -37493i, -10757i), vec4<i32>(1147i, 5801i, 1i, i32(-2147483648)), vec4<i32>(-1i, -16017i, 2147483647i, 2147483647i), vec4<i32>(35933i, 21288i, 41490i, 78861i), vec4<i32>(-1i, 40375i, i32(-2147483648), -11687i), vec4<i32>(0i, 58587i, 12898i, 50971i), vec4<i32>(29489i, -9599i, -1i, -41024i), vec4<i32>(49374i, 15996i, 20926i, -36302i), vec4<i32>(0i, 19774i, -38858i, -1i), vec4<i32>(-1i, 0i, -1i, 34963i), vec4<i32>(i32(-2147483648), -1i, 10191i, i32(-2147483648)), vec4<i32>(2147483647i, -13420i, -6383i, 55009i), vec4<i32>(1i, -1946i, 1i, 35283i), vec4<i32>(1i, 15161i, -13545i, -46639i), vec4<i32>(14648i, 2147483647i, 0i, i32(-2147483648)), vec4<i32>(0i, -12821i, -36845i, -40653i), vec4<i32>(-57318i, 1i, 1i, 1i), vec4<i32>(0i, -11894i, 2147483647i, 0i), vec4<i32>(-3627i, 0i, 42860i, 0i), vec4<i32>(33765i, 6365i, 37861i, -27119i), vec4<i32>(24469i, -1i, 2147483647i, 2147483647i), vec4<i32>(-1i, 2147483647i, 67043i, -35640i), vec4<i32>(-69986i, -45180i, 54101i, -19292i));

var<private> global2: vec4<f32> = vec4<f32>(265f, 156f, 1000f, 942f);

var<private> global3: array<i32, 2> = array<i32, 2>(-2947i, -1i);

var<private> global4: Struct_1 = Struct_1(-1958f, vec3<bool>(false, true, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> u32 {
    return 33499u;
}

fn func_3() -> vec3<bool> {
    var var_0 = !global4.b.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global4.a, 1000f, -467f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-151f, 1000f, 2713f, global4.a) * vec4<f32>(_wgslsmith_f_op_f32(global4.a * -491f), _wgslsmith_f_op_f32(f32(-1f) * -2153f), -1050f, global4.a))), vec4<f32>(_wgslsmith_f_op_f32(global2.x + global4.a), -533f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4.a))), 1157f)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1516f + global4.a))), global4.b);
    let var_3 = vec4<i32>(1i, 0i, abs(select(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(min(16140u, 49536u), 0u, _wgslsmith_clamp_u32(5926u, 4294967295u, 0u)), 2u)], -(1i << (0u % 32u)), var_2.b.x)), _wgslsmith_sub_i32(abs((global3[_wgslsmith_index_u32(u_input.a, 2u)] | 13487i) & u_input.d), _wgslsmith_mod_i32(u_input.c.x, -2147483647i)));
    var_0 = false;
    return !select(vec3<bool>(global4.b.x, any(!vec4<bool>(true, false, true, global4.b.x)), true), !vec3<bool>(any(vec3<bool>(var_2.b.x, false, false)), any(vec2<bool>(false, global4.b.x)), true), !vec3<bool>(all(vec3<bool>(global4.b.x, global4.b.x, global4.b.x)), !global4.b.x, false));
}

fn func_2(arg_0: vec4<u32>) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_div_f32(-1113f, _wgslsmith_f_op_f32(round(global2.x))), vec3<bool>(any(func_3()), any(select(!vec4<bool>(false, global4.b.x, global4.b.x, false), vec4<bool>(global4.b.x, global4.b.x, true, global4.b.x), vec4<bool>(global4.b.x, false, false, global4.b.x))), true));
    var var_1 = reverseBits(_wgslsmith_add_i32(-(~firstTrailingBit(u_input.d)), ~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(40335u, 29540u), 2u)] ^ u_input.d));
    let var_2 = _wgslsmith_f_op_f32(round(-1156f));
    global3 = array<i32, 2>();
    var_1 = 49541i;
    return !global4.b.zy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>((~1u & u_input.a) & (~4294967295u & u_input.a), func_1());
    var_0 = ~abs(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), min(vec2<u32>(41485u, u_input.a), vec2<u32>(var_0.x, var_0.x))), vec2<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a)));
    let var_1 = global0[_wgslsmith_index_u32(var_0.x, 17u)];
    var var_2 = -global3[_wgslsmith_index_u32(func_1(), 2u)] == 0i;
    global4 = var_1.b;
    let var_3 = 27567u;
    var_0 = ~(~(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 1u), vec2<u32>(1u, 4294967295u)) << (vec2<u32>(var_0.x, u_input.a) % vec2<u32>(32u)))) | _wgslsmith_div_vec2_u32((reverseBits(vec2<u32>(var_3, var_0.x)) & ~vec2<u32>(var_1.c, var_1.c)) | select(~vec2<u32>(4294967295u, 0u), vec2<u32>(var_0.x, 1u) | vec2<u32>(68584u, 71426u), func_2(vec4<u32>(9588u, u_input.a, 1u, 29684u))), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, var_0.x), vec2<u32>(var_3, u_input.a))));
    global0 = array<Struct_2, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, 4294967295u ^ u_input.a, ~select(~(var_0.x >> (4294967295u % 32u)), _wgslsmith_sub_u32(var_0.x, var_1.c), var_1.b.b.x), u_input.c.xzw);
}

