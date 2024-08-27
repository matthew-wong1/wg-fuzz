struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = false;

var<private> global2: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(Struct_2(Struct_1(vec4<i32>(1i, 1i, 0i, i32(-2147483648)), 14673u), vec3<f32>(-1299f, -114f, 982f))), Struct_3(Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 16177i, 71897i, -1200i), 3502u), vec3<f32>(-1859f, -510f, -1141f))), Struct_3(Struct_2(Struct_1(vec4<i32>(768i, 2147483647i, 0i, 7152i), 1u), vec3<f32>(-776f, 1308f, 2506f))), Struct_3(Struct_2(Struct_1(vec4<i32>(-29695i, 0i, 1i, -1i), 50921u), vec3<f32>(316f, 1135f, 1259f))), Struct_3(Struct_2(Struct_1(vec4<i32>(-54082i, 27755i, 1i, 20907i), 2834u), vec3<f32>(-1000f, -1188f, 1265f))), Struct_3(Struct_2(Struct_1(vec4<i32>(-28574i, -1i, 0i, i32(-2147483648)), 19248u), vec3<f32>(-623f, -242f, 1354f))), Struct_3(Struct_2(Struct_1(vec4<i32>(-5981i, -6386i, 53435i, -1486i), 27216u), vec3<f32>(-945f, 467f, -1000f))), Struct_3(Struct_2(Struct_1(vec4<i32>(-1i, 5803i, 17103i, 2147483647i), 50001u), vec3<f32>(-208f, -1153f, 1292f))));

var<private> global3: Struct_1 = Struct_1(vec4<i32>(44099i, i32(-2147483648), -5517i, -1i), 4294967295u);

var<private> global4: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: i32, arg_3: bool) -> bool {
    global1 = true;
    let var_0 = _wgslsmith_sub_i32(-2147483647i << (firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_div_u32(global3.b, arg_1), 15265u)) % 32u), -(arg_0.x ^ ~1i));
    return !(!select(true && !arg_3, all(!vec4<bool>(false, false, false, arg_3)), !arg_3));
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = global3.a.x;
    var var_1 = _wgslsmith_f_op_f32(-549f - -480f);
    let var_2 = _wgslsmith_f_op_f32(-arg_0.b.x);
    var var_3 = -(~(vec3<i32>(reverseBits(global3.a.x), _wgslsmith_mod_i32(-2147483647i, -7596i), global3.a.x ^ global3.a.x) << (vec3<u32>(firstTrailingBit(u_input.a.x), 1u, 0u) % vec3<u32>(32u))));
    var var_4 = arg_0.a.b;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + _wgslsmith_f_op_f32(-2554f + 1326f)) + arg_0.b.x)), var_2, _wgslsmith_f_op_f32(trunc(1793f)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: f32) -> u32 {
    let var_0 = Struct_3(Struct_2(Struct_1(-global3.a, ~(~u_input.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(global3.a, 4294967295u), vec3<f32>(1114f, arg_1, 193f)))), _wgslsmith_div_vec3_f32(vec3<f32>(1658f, arg_3, -218f), vec3<f32>(arg_3, -657f, arg_1)))))));
    var var_1 = var_0.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(813f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1661f + -732f), 1337f), var_0.a.b.x, _wgslsmith_f_op_f32(arg_3 + arg_1)))));
    global2 = array<Struct_3, 8>();
    var var_3 = vec2<bool>(!func_1(~(~var_0.a.a.a), ~min(var_0.a.a.b, global3.b), 0i & (-31939i ^ u_input.d.x), any(vec4<bool>(true, true, true, true))), !any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), all(vec2<bool>(false, false)))));
    return var_0.a.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 416f;
    let var_0 = global2[_wgslsmith_index_u32(72734u, 8u)];
    let var_1 = vec3<bool>(func_1(-vec4<i32>(-u_input.d.x, i32(-1i) * -19536i, u_input.d.x, -22125i), _wgslsmith_mult_u32(38962u << (var_0.a.a.b % 32u), 17551u) << (3653u % 32u), -var_0.a.a.a.x & -1i, !any(vec3<bool>(true, true, true)) | any(vec3<bool>(true, false, false))), true, !(!(any(vec2<bool>(false, true)) && true)));
    var var_2 = vec4<u32>(global3.b, 1u, abs(min(func_2(global3.a.x, var_0.a.b.x, 10872i, 303f), u_input.b.x)) & _wgslsmith_sub_u32(var_0.a.a.b, 1u), firstTrailingBit(~(~0u | max(global3.b, 0u))));
    let var_3 = Struct_3(var_0.a);
    var var_4 = _wgslsmith_f_op_f32(var_0.a.b.x - 1197f);
    var var_5 = min(~reverseBits(vec4<u32>(~var_3.a.a.b, 1u, 53741u, max(50239u, 54958u))), ~_wgslsmith_mult_vec4_u32(~u_input.a << (firstLeadingBit(vec4<u32>(u_input.c.x, 0u, 4294967295u, global3.b)) % vec4<u32>(32u)), u_input.a));
    var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(24490u, ~(~u_input.c.x));
}

