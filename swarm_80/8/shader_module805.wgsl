struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(true, 745f, -1000f, -579f), Struct_1(true, 961f, -944f, -977f), Struct_1(true, 128f, 1415f, -2044f), Struct_1(true, 355f, -746f, 978f), Struct_1(true, -1061f, -277f, -1207f), Struct_1(false, -1269f, -185f, 232f), Struct_1(false, 564f, -258f, 641f), Struct_1(false, -328f, -1000f, -739f), Struct_1(false, -504f, -2242f, -1000f), Struct_1(false, 2232f, -1222f, 520f), Struct_1(false, -481f, 2649f, -881f), Struct_1(false, -1000f, 357f, 146f), Struct_1(false, 1000f, -1000f, -615f), Struct_1(true, -1130f, -1000f, -180f), Struct_1(true, -1250f, 294f, -427f), Struct_1(true, 477f, -1000f, -1383f), Struct_1(false, -1000f, 1000f, -1704f), Struct_1(true, -2753f, 254f, -234f), Struct_1(true, 1244f, 414f, 1000f), Struct_1(false, 734f, 1286f, -107f), Struct_1(true, 117f, 320f, -587f), Struct_1(false, -579f, 1961f, -526f), Struct_1(true, -668f, -797f, -155f));

var<private> global1: vec3<bool>;

var<private> global2: array<f32, 31>;

var<private> global3: array<Struct_1, 24>;

var<private> global4: array<Struct_2, 15>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = arg_2.a;
    let var_1 = -1346f;
    global3 = array<Struct_1, 24>();
    let var_2 = vec4<bool>(!arg_2.a, all(select(!select(vec3<bool>(arg_3.a.x, true, true), vec3<bool>(arg_2.a, true, arg_3.a.x), vec3<bool>(arg_2.a, global1.x, true)), vec3<bool>(true, true, !arg_3.a.x), all(vec3<bool>(true, global1.x, false)) && global1.x)), true, !(arg_3.a.x & true));
    global3 = array<Struct_1, 24>();
    return var_2;
}

fn func_2() -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(~(~firstLeadingBit(~4294967295u)), 23u)];
    global4 = array<Struct_2, 15>();
    let var_1 = global1.yz;
    global1 = vec3<bool>((u_input.b ^ ~reverseBits(0u)) >= 1u, -u_input.c == u_input.c, !all(func_3(countOneBits(vec2<u32>(u_input.d, u_input.d)), _wgslsmith_mult_i32(2147483647i, u_input.c), Struct_1(var_0.a, 1585f, -1000f, var_0.b), global4[_wgslsmith_index_u32(u_input.a, 15u)])));
    global1 = vec3<bool>(any(vec2<bool>(true, all(vec3<bool>(true, global1.x, false)))), (u_input.c >> ((abs(1u) & reverseBits(u_input.d)) % 32u)) >= u_input.c, true);
    return var_0.c;
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    let var_0 = Struct_1(all(global1.zy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), -138f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1174f))), 1838f, all(vec4<bool>(!global1.x, global1.x, all(vec4<bool>(false, global1.x, false, false)), global1.x)))));
    var var_1 = global4[_wgslsmith_index_u32(26460u << (firstLeadingBit(~51093u) % 32u), 15u)];
    let var_2 = Struct_2(vec2<bool>(var_1.a.x || !(global1.x | false), any(vec2<bool>(all(vec2<bool>(false, var_0.a)), var_1.a.x))));
    var var_3 = Struct_1(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * var_0.b) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d, 31u)] - var_0.b))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(698f - 828f), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.d, 31u)]))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1603f, -382f)) - _wgslsmith_div_f32(-1452f, -493f)))))), global2[_wgslsmith_index_u32(reverseBits(u_input.b), 31u)]);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(u_input.d, 31u)])) + 835f) * var_3.b))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 31u)] + _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(var_3.b - 1176f))), -1196f, var_3.a)));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(abs(~u_input.d)), _wgslsmith_clamp_u32(u_input.a, ~(~u_input.a), 1u), abs(u_input.b)), vec3<u32>(79891u, ~abs(1u), ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 23>();
    let var_0 = global3[_wgslsmith_index_u32(func_1(vec3<i32>(-1i) * -(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.c, u_input.c), vec3<i32>(0i, u_input.c, u_input.c)) >> (vec3<u32>(u_input.b, u_input.b, u_input.a) % vec3<u32>(32u)))), 24u)];
    global2 = array<f32, 31>();
    let var_1 = vec2<u32>(_wgslsmith_add_u32(u_input.a >> (24389u % 32u), min(u_input.a, countOneBits(~u_input.b))), ~0u);
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.b, 31u)], var_0.c)), 406f, 1084f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2[_wgslsmith_index_u32(6372u, 31u)], global2[_wgslsmith_index_u32(u_input.d, 31u)], global2[_wgslsmith_index_u32(var_1.x, 31u)], global2[_wgslsmith_index_u32(u_input.b, 31u)]))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-711f, 1100f, global2[_wgslsmith_index_u32(var_1.x, 31u)], global2[_wgslsmith_index_u32(17182u, 31u)]), vec4<f32>(-697f, global2[_wgslsmith_index_u32(27536u, 31u)], 1403f, 1051f), vec4<bool>(global1.x, var_0.a, true, global1.x))))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(305f)), _wgslsmith_f_op_f32(f32(-1f) * -2351f), 129f, var_0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(782f, global2[_wgslsmith_index_u32(0u, 31u)], -710f, 1000f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)], -810f, -575f)))), vec4<bool>(false, u_input.b > var_1.x, var_0.a, all(vec4<bool>(global1.x, var_0.a, true, global1.x)))))))));
    var var_3 = u_input.c;
    var var_4 = var_1;
    let var_5 = global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(~select(u_input.b, var_1.x, var_0.a), 5155u, _wgslsmith_add_u32(0u, _wgslsmith_mod_u32(var_4.x, 23882u)), ~u_input.d), ~vec4<u32>(u_input.d, 14710u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 1u, 0u), vec3<u32>(var_1.x, 4293u, 4294967295u))))), 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_5.b, _wgslsmith_f_op_f32(-1775f + var_2.x)), _wgslsmith_div_f32(180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-137f, -1726f, var_5.a)))))), _wgslsmith_clamp_vec3_i32(-(vec3<i32>(u_input.c, 2147483647i, 2147483647i) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), (-vec3<i32>(0i, u_input.c, -43964i) & ~vec3<i32>(u_input.c, u_input.c, -54580i)) ^ vec3<i32>(u_input.c, -u_input.c, abs(u_input.c)), vec3<i32>(~(-u_input.c), u_input.c, u_input.c)), _wgslsmith_mult_u32(18938u, u_input.a), var_2.x);
}

