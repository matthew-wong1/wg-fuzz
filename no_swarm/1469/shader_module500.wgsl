struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31>;

var<private> global1: Struct_3 = Struct_3(818f, vec4<i32>(2147483647i, -14395i, -1i, 11578i));

var<private> global2: array<u32, 22>;

var<private> global3: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(579f, Struct_1(898f)), Struct_2(-1902f, Struct_1(284f)), Struct_2(703f, Struct_1(-454f)), Struct_2(1991f, Struct_1(-488f)), Struct_2(-750f, Struct_1(126f)), Struct_2(1128f, Struct_1(-1283f)), Struct_2(-373f, Struct_1(993f)), Struct_2(1728f, Struct_1(-1000f)), Struct_2(-2093f, Struct_1(1173f)), Struct_2(1000f, Struct_1(1333f)), Struct_2(-124f, Struct_1(1027f)), Struct_2(-803f, Struct_1(1000f)), Struct_2(-349f, Struct_1(1020f)), Struct_2(-1506f, Struct_1(-1000f)), Struct_2(352f, Struct_1(1000f)), Struct_2(-277f, Struct_1(781f)), Struct_2(1685f, Struct_1(477f)), Struct_2(347f, Struct_1(-1617f)), Struct_2(-911f, Struct_1(2434f)), Struct_2(150f, Struct_1(1100f)), Struct_2(748f, Struct_1(-222f)), Struct_2(-967f, Struct_1(-482f)), Struct_2(784f, Struct_1(1000f)), Struct_2(-469f, Struct_1(-610f)), Struct_2(254f, Struct_1(-900f)), Struct_2(-699f, Struct_1(193f)), Struct_2(390f, Struct_1(-1698f)));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = vec2<bool>(true, all(!vec3<bool>(true, true, all(vec2<bool>(false, true)))));
    global2 = array<u32, 22>();
    let var_1 = firstTrailingBit(-1i);
    var_0 = vec2<bool>(all(select(!vec4<bool>(true, false, var_0.x, true), select(!vec4<bool>(var_0.x, true, true, true), !vec4<bool>(false, var_0.x, false, true), var_1 < var_1), true)), true);
    let var_2 = all(!(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, false), !vec3<bool>(true, true, var_0.x))));
    return Struct_2(arg_0.a, Struct_1(arg_0.a));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> vec3<u32> {
    return select(vec3<u32>(abs(~1u), global2[_wgslsmith_index_u32(select(u_input.a.x, ~global2[_wgslsmith_index_u32(~72978u, 22u)], all(vec3<bool>(true, true, true))), 22u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(2668u, global2[_wgslsmith_index_u32(u_input.b, 22u)]), u_input.b) << (~(global2[_wgslsmith_index_u32(12129u, 22u)] >> (0u % 32u)) % 32u), 22u)]), ~((vec3<u32>(u_input.a.x, u_input.a.x, global2[_wgslsmith_index_u32(7363u, 22u)]) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) | vec3<u32>(~global2[_wgslsmith_index_u32(4294967295u, 22u)], reverseBits(0u), _wgslsmith_div_u32(u_input.a.x, 4294967295u))), select(vec3<bool>(true, true, true), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-arg_1);
    var var_1 = u_input.a.x;
    var var_2 = func_2(Struct_1(239f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -769f, 986f))) - vec3<f32>(global1.a, -1013f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-525f, arg_1.x)) * arg_0))), abs(abs(vec3<u32>(23413u, u_input.b, u_input.b) ^ vec3<u32>(57870u, u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], 22u)])) | _wgslsmith_mod_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], 12364u, 1u), vec3<u32>(u_input.b, 4294967295u, 1u))));
    let var_3 = func_2(Struct_1(_wgslsmith_f_op_f32(min(1523f, global1.a))), arg_1, func_3(var_2.b, _wgslsmith_div_f32(1069f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.a + arg_0), _wgslsmith_f_op_f32(-1592f * global1.a))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_0)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, global1.b.x, -11511i, 2147483647i), min(vec4<i32>(-22890i, u_input.d.x, -61855i, global1.b.x), vec4<i32>(1i, global1.b.x, u_input.e.x, -2147483647i)), ~global1.b))));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_add_u32(u_input.a.x, (51591u ^ u_input.a.x) >> (global2[_wgslsmith_index_u32(u_input.b, 22u)] % 32u)), ~((global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 22u)], 22u)] | (1u << (u_input.a.x % 32u))) & 1u)), 31u)];
    return ~_wgslsmith_clamp_u32(12450u, 76332u, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 31>();
    global1 = global0[_wgslsmith_index_u32(~reverseBits(func_1(global1.a, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.a, global1.a, -510f), vec3<f32>(1672f, global1.a, -831f))))) << (abs(u_input.a.x) % 32u), 31u)];
    let var_0 = func_2(func_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-242f)), global1.a)), vec3<f32>(117f, _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-395f, global1.a)))), vec3<u32>(firstTrailingBit(select(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)], false)), ~global2[_wgslsmith_index_u32(~u_input.a.x, 22u)], ~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 22u)], 22u)], 22u)]))).b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(global1.a - global1.a), _wgslsmith_f_op_f32(global1.a - 484f), _wgslsmith_f_op_f32(132f - global1.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a, global1.a, global1.a), vec3<f32>(-664f, global1.a, 1053f), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-924f, 117f, 754f)))))), !vec3<bool>(true, all(vec4<bool>(true, false, false, false)), true))), vec3<u32>(_wgslsmith_add_u32(reverseBits(_wgslsmith_div_u32(u_input.a.x, 32387u)), ~(~1908u)), 4294967295u, ~1u)).b;
    global3 = array<Struct_2, 27>();
    var var_1 = var_0;
    var var_2 = ~vec4<i32>(-15341i, global1.b.x, ~(~max(-31930i, global1.b.x)), i32(-1i) * -firstLeadingBit(0i));
    let var_3 = !(!(!vec2<bool>(true, any(vec2<bool>(false, false)))));
    let var_4 = global0[_wgslsmith_index_u32(min(reverseBits(21010u), u_input.a.x), 31u)];
    let var_5 = ~firstLeadingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3265u, 22u)], 22u)], global2[_wgslsmith_index_u32(u_input.b, 22u)], u_input.b) | vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 22u)], 22u)], global2[_wgslsmith_index_u32(28604u, 22u)], 69065u), _wgslsmith_add_vec3_u32(vec3<u32>(16867u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], 22u)], 22u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 22u)], 22u)], 22u)]), vec3<u32>(u_input.b, 17606u, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_4.b.xz), min(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(26644i, -3882i, 4181i), vec3<i32>(u_input.c, 13940i, -21082i), false), ~u_input.d.zwy), _wgslsmith_div_vec3_i32(var_4.b.yyw, var_2.wzy), vec3<i32>(-4847i, firstLeadingBit(var_2.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_2.x, u_input.c, u_input.d.x), global1.b))), ~firstLeadingBit(global1.b.xxx)), vec3<u32>(var_5.x, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(~36457u, 22u)], min(func_3(var_0, var_0.a, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 22u)], 31u)]).x, max(u_input.b, 0u))), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(17187u, global2[_wgslsmith_index_u32(60762u, 22u)], 47153u, 4294967295u)), vec4<u32>(~38978u, abs(0u), 60507u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2942u, 22u)], 22u)] >> (0u % 32u)))), var_4.b);
}

