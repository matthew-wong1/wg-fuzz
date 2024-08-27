struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false));

var<private> global1: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(vec4<u32>(1570u, 40810u, 4294967295u, 1u)), Struct_3(vec4<u32>(4294967295u, 0u, 0u, 1u)), Struct_3(vec4<u32>(1u, 41250u, 0u, 23301u)), Struct_3(vec4<u32>(1u, 0u, 21171u, 4294967295u)), Struct_3(vec4<u32>(1u, 23412u, 28485u, 60844u)), Struct_3(vec4<u32>(0u, 0u, 24713u, 16544u)), Struct_3(vec4<u32>(3957u, 4294967295u, 4294967295u, 4294967295u)), Struct_3(vec4<u32>(4294967295u, 1u, 93792u, 0u)), Struct_3(vec4<u32>(57022u, 4294967295u, 13975u, 38276u)), Struct_3(vec4<u32>(0u, 63395u, 83657u, 4294967295u)), Struct_3(vec4<u32>(4294967295u, 1u, 27224u, 26607u)), Struct_3(vec4<u32>(19560u, 4156u, 17023u, 22223u)), Struct_3(vec4<u32>(10320u, 80204u, 4294967295u, 4945u)), Struct_3(vec4<u32>(4294967295u, 79808u, 0u, 1u)), Struct_3(vec4<u32>(0u, 44127u, 38759u, 4294967295u)), Struct_3(vec4<u32>(11221u, 35330u, 11223u, 36922u)), Struct_3(vec4<u32>(17031u, 4294967295u, 1u, 0u)), Struct_3(vec4<u32>(7471u, 38913u, 1u, 4294967295u)), Struct_3(vec4<u32>(1u, 5398u, 0u, 25440u)), Struct_3(vec4<u32>(1u, 0u, 0u, 1u)), Struct_3(vec4<u32>(4294967295u, 38942u, 4294967295u, 1u)), Struct_3(vec4<u32>(0u, 33187u, 1u, 25651u)), Struct_3(vec4<u32>(0u, 4294967295u, 804u, 17102u)), Struct_3(vec4<u32>(33618u, 4294967295u, 11526u, 0u)), Struct_3(vec4<u32>(1u, 4294967295u, 34501u, 0u)), Struct_3(vec4<u32>(1u, 35390u, 1798u, 1u)), Struct_3(vec4<u32>(0u, 119251u, 4294967295u, 24243u)), Struct_3(vec4<u32>(4294967295u, 1583u, 0u, 1u)), Struct_3(vec4<u32>(1u, 2875u, 4294967295u, 1u)));

var<private> global2: array<i32, 26>;

var<private> global3: array<vec4<i32>, 1>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-856f + -1725f);
    let var_1 = ~u_input.c.yw;
    return var_1.x;
}

fn func_3() -> u32 {
    global2 = array<i32, 26>();
    global3 = array<vec4<i32>, 1>();
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(37252u), 29u)];
    var_0 = global1[_wgslsmith_index_u32(min(u_input.d, u_input.d ^ var_0.a.x), 29u)];
    let var_1 = Struct_3(reverseBits(var_0.a));
    return var_1.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(max(-182f, -376f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1060f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-707f + -356f)), -1803f), -745f)));
    var var_1 = Struct_3(firstLeadingBit(u_input.c) << (~(~firstTrailingBit(vec4<u32>(2736u, 15072u, arg_0.b, 4294967295u))) % vec4<u32>(32u)));
    let var_2 = Struct_5(var_1.a.wwx);
    let var_3 = Struct_1(!arg_0.a || arg_0.a, var_1.a.x);
    let var_4 = var_1.a.x;
    return _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(abs(vec2<i32>(u_input.b.x, global2[_wgslsmith_index_u32(54736u, 26u)])) | vec2<i32>(31513i, global2[_wgslsmith_index_u32(26199u, 26u)]), ~u_input.b.yy), ~vec2<i32>(1i, global2[_wgslsmith_index_u32((u_input.d ^ 13473u) | 4294967295u, 26u)]));
}

fn func_2() -> Struct_5 {
    let var_0 = _wgslsmith_div_i32(abs(0i), func_4(Struct_1(false, ~(~u_input.a)), _wgslsmith_div_u32(~u_input.d ^ 1u, func_3() & 1u)));
    var var_1 = -((i32(-1i) * -abs(-34959i)) ^ _wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.b.yz, vec2<i32>(u_input.b.x, var_0))), u_input.b.xy));
    let var_2 = -(~vec2<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 26u)] & -2147483647i, -1i));
    let var_3 = _wgslsmith_div_i32(func_4(Struct_1(!(u_input.a > 23315u), 13261u), ~(~u_input.c.x)), var_0);
    let var_4 = global0[_wgslsmith_index_u32(abs(~u_input.a), 27u)];
    return Struct_5(~vec3<u32>(_wgslsmith_mult_u32(u_input.a, u_input.d) >> (u_input.a % 32u), u_input.d, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -629f;
    let var_1 = global1[_wgslsmith_index_u32(12319u, 29u)];
    let var_2 = 1105f;
    var var_3 = vec3<u32>(u_input.d, min(reverseBits(var_1.a.x ^ 22949u), u_input.d), 3750u);
    var var_4 = ~_wgslsmith_clamp_vec3_u32(u_input.c.xxx << (firstLeadingBit(var_1.a.xxy) % vec3<u32>(32u)), vec3<u32>(~min(0u, 39161u), firstTrailingBit(1u >> (1u % 32u)), _wgslsmith_mod_u32(var_3.x, 1u)), vec3<u32>(max(abs(0u), var_1.a.x), ~func_1(u_input.b.x, u_input.b), ~27184u));
    let var_5 = func_2();
    let var_6 = func_2().a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(1u, 0u, var_5.a.x)), ~_wgslsmith_dot_vec2_i32(countOneBits(~u_input.b.xz), max(u_input.b.xz, _wgslsmith_clamp_vec2_i32(u_input.b.zz, vec2<i32>(global2[_wgslsmith_index_u32(var_4.x, 26u)], 2147483647i), u_input.b.xx))));
}

