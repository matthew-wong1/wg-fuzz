struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<u32>,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(i32(-2147483648), i32(-2147483648), 83812i);

var<private> global1: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-1000f, 277f, 530f), vec3<f32>(429f, 329f, -1175f), vec3<f32>(-955f, -1337f, -1000f), vec3<f32>(338f, 1000f, 458f), vec3<f32>(450f, -269f, -519f), vec3<f32>(-1312f, 812f, -629f), vec3<f32>(688f, 1299f, -1480f), vec3<f32>(778f, -674f, 999f), vec3<f32>(1622f, 269f, -264f), vec3<f32>(626f, -498f, 1286f), vec3<f32>(-215f, 2335f, 1561f), vec3<f32>(621f, -430f, 941f), vec3<f32>(-1486f, -960f, -1000f), vec3<f32>(2037f, -561f, -747f), vec3<f32>(-519f, -1201f, 665f), vec3<f32>(-1340f, -552f, -1165f), vec3<f32>(-810f, -151f, 1296f), vec3<f32>(-186f, -1000f, 581f), vec3<f32>(-806f, -891f, -961f), vec3<f32>(422f, 454f, -1002f), vec3<f32>(1316f, 255f, -1593f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: vec4<bool>, arg_3: f32) -> bool {
    global0 = array<i32, 3>();
    return true;
}

fn func_3(arg_0: bool) -> vec3<bool> {
    let var_0 = ~18302u;
    var var_1 = select(~(~vec4<u32>(var_0, u_input.b.x, var_0, var_0)) >> (vec4<u32>(u_input.b.x, 4294967295u, 59819u, _wgslsmith_mod_u32(75834u, var_0)) % vec4<u32>(32u)), ~vec4<u32>(var_0, 1u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b), firstLeadingBit(2988u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(574f, 1436f)) <= _wgslsmith_f_op_f32(ceil(-815f))) & firstLeadingBit(select(countOneBits(min(vec4<u32>(u_input.b.x, u_input.b.x, 643u, var_0), vec4<u32>(var_0, 4294967295u, 31683u, 4294967295u))), vec4<u32>(1u, firstTrailingBit(37298u), var_0, min(var_0, 1u)), !arg_0 | arg_0));
    global1 = array<vec3<f32>, 21>();
    let var_2 = Struct_5(Struct_4(Struct_3(Struct_1(global1[_wgslsmith_index_u32(var_0, 21u)]), Struct_1(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(var_0, 21u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1722f, -1000f, 761f))), 1i, vec4<u32>(~var_1.x, _wgslsmith_mult_u32(var_0, var_1.x), u_input.b.x, ~var_0)), ~_wgslsmith_mod_u32(~1u, 4294967295u), 1u | var_1.x, ~(~select(vec3<u32>(u_input.b.x, 84533u, var_0), u_input.b, false)), vec2<bool>(false, true | (u_input.a.x != u_input.a.x))), var_1.yz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1668f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 2017f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1562f))), abs(~firstTrailingBit(reverseBits(vec2<u32>(5512u, var_0)))));
    let var_3 = var_2.c;
    return select(!vec3<bool>(false, !arg_0, true), vec3<bool>(~u_input.a.x < 47061i, arg_0, true), true);
}

fn func_1() -> Struct_1 {
    global0 = array<i32, 3>();
    let var_0 = ~0i;
    let var_1 = all(select(vec3<bool>(true, func_2(vec2<bool>(false, true), Struct_5(Struct_4(Struct_3(Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), Struct_1(vec3<f32>(-640f, 1106f, -115f)), vec3<f32>(-1038f, -583f, -493f), 2147483647i, vec4<u32>(u_input.b.x, 44322u, 61194u, 36425u)), u_input.b.x, 1u, u_input.b, vec2<bool>(false, true)), vec2<u32>(0u, 47447u), -518f, vec2<u32>(u_input.b.x, 118266u)), vec4<bool>(false, false, true, false), -1391f), true), vec3<bool>(true, true, true), func_3(func_2(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_5(Struct_4(Struct_3(Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), Struct_1(global1[_wgslsmith_index_u32(30740u, 21u)]), global1[_wgslsmith_index_u32(u_input.b.x, 21u)], -2147483647i, vec4<u32>(u_input.b.x, 16613u, u_input.b.x, u_input.b.x)), u_input.b.x, 89622u, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec2<bool>(true, false)), u_input.b.zy, -1396f, u_input.b.xz), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(abs(1122f))))));
    global1 = array<vec3<f32>, 21>();
    global1 = array<vec3<f32>, 21>();
    return Struct_1(global1[_wgslsmith_index_u32(~1u, 21u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_3(Struct_1(vec3<f32>(2285f, _wgslsmith_f_op_f32(f32(-1f) * -179f), _wgslsmith_f_op_f32(round(-442f)))), func_1(), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.b.x, 26942u, u_input.b.x, u_input.b.x)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) << (vec4<u32>(21278u, 54859u, u_input.b.x, 4294967295u) % vec4<u32>(32u))), vec4<u32>(33320u, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 30056u, 0u)), 21u)], countOneBits((i32(-1i) * -10140i) ^ abs(global0[_wgslsmith_index_u32(u_input.b.x, 3u)])), _wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), reverseBits(vec4<u32>(10261u, u_input.b.x, u_input.b.x, 4294967295u))), ~min(vec4<u32>(u_input.b.x, u_input.b.x, 58211u, u_input.b.x), vec4<u32>(3017u, u_input.b.x, 1u, u_input.b.x)))), u_input.b.x, ~u_input.b.x, u_input.b, vec2<bool>(func_3(func_3(false).x).x | (1u > ~u_input.b.x), false));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(-25136i, abs(-935i), 38836i), vec4<f32>(var_0.a.a.a.x, _wgslsmith_f_op_f32(ceil(var_0.a.a.a.x)), _wgslsmith_f_op_f32(ceil(var_0.a.c.x)), var_0.a.b.a.x), _wgslsmith_add_vec4_i32(~abs(vec4<i32>(global0[_wgslsmith_index_u32(var_0.c, 3u)], 77791i, 0i, u_input.a.x)), u_input.a));
}

