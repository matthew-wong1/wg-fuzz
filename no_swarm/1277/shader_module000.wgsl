struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1i);

var<private> global1: u32;

var<private> global2: array<f32, 22>;

var<private> global3: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(1659f, -519f, 798f), vec3<f32>(125f, -1560f, 1288f), vec3<f32>(-317f, 1141f, -513f), vec3<f32>(-826f, 124f, 485f), vec3<f32>(-658f, 1460f, -172f), vec3<f32>(1000f, -355f, -590f), vec3<f32>(652f, -366f, 257f), vec3<f32>(981f, 1000f, 561f), vec3<f32>(-364f, 795f, -834f), vec3<f32>(-837f, 248f, 632f), vec3<f32>(170f, -1000f, 961f), vec3<f32>(-1235f, -976f, 1161f), vec3<f32>(-314f, 1334f, -1191f), vec3<f32>(440f, -1377f, -1136f), vec3<f32>(-1337f, -108f, -186f), vec3<f32>(-510f, 342f, -1391f), vec3<f32>(-1651f, -1262f, -1332f), vec3<f32>(245f, -633f, 971f), vec3<f32>(2780f, -1529f, -152f), vec3<f32>(-775f, 1667f, -255f), vec3<f32>(800f, -1436f, -1423f), vec3<f32>(763f, 1269f, 2429f), vec3<f32>(556f, 1059f, -673f), vec3<f32>(-297f, 1000f, 193f), vec3<f32>(262f, -329f, 1000f), vec3<f32>(-512f, -404f, 118f), vec3<f32>(-549f, -2500f, -408f), vec3<f32>(-3193f, 120f, 1034f), vec3<f32>(1479f, -1180f, -203f), vec3<f32>(744f, -561f, -1536f), vec3<f32>(2671f, -223f, -176f));

var<private> global4: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(2147483647i, -5499i, 0i, i32(-2147483648)), vec4<i32>(-1i, -1i, -1i, -38483i), vec4<i32>(1i, i32(-2147483648), 1i, i32(-2147483648)), vec4<i32>(-54506i, 23362i, 37116i, -1i), vec4<i32>(-1i, 1i, 0i, i32(-2147483648)), vec4<i32>(2147483647i, 9324i, 1i, 16146i), vec4<i32>(-1i, -24052i, -7664i, 11699i), vec4<i32>(0i, 1i, -43119i, -15810i), vec4<i32>(7105i, 14872i, 1i, i32(-2147483648)), vec4<i32>(1i, 2147483647i, -21522i, 2147483647i), vec4<i32>(1i, -1i, -9328i, 20553i), vec4<i32>(0i, 6045i, 1i, i32(-2147483648)), vec4<i32>(1i, 23943i, -26683i, i32(-2147483648)), vec4<i32>(21551i, 1i, i32(-2147483648), -55751i), vec4<i32>(0i, 24209i, -1i, 29678i), vec4<i32>(28266i, 6900i, 2147483647i, 11506i), vec4<i32>(-577i, i32(-2147483648), 0i, 18652i), vec4<i32>(0i, -31658i, i32(-2147483648), 0i), vec4<i32>(1i, -2386i, -15399i, 11643i), vec4<i32>(-1i, -56048i, -21859i, -2780i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    var var_0 = Struct_2(Struct_1(i32(-1i) * -1i), Struct_1(countOneBits(_wgslsmith_mult_i32(1i, abs(0i)))), Struct_1(u_input.a.x));
    var var_1 = true;
    global1 = min(~max(~1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 0u), vec4<u32>(4939u, 0u, 4294967295u, 144980u))), _wgslsmith_add_u32(0u, ~24904u));
    let var_2 = !(global0.a <= ~global0.a);
    var var_3 = -149f;
    return global2[_wgslsmith_index_u32(~(~(~1u)), 22u)];
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = Struct_1(reverseBits(global0.a));
    global0 = Struct_1(-59237i);
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(681f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 22u)]), _wgslsmith_f_op_f32(ceil(arg_0)))))), _wgslsmith_f_op_f32(-371f + _wgslsmith_f_op_f32(-1095f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(-259f, -1162f))))))));
    var var_1 = Struct_1(-1i);
    global4 = array<vec4<i32>, 20>();
    return Struct_1(_wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a, 1i, 34957i, 1i), vec4<i32>(13850i, var_1.a, global0.a, 54260i), ~global4[_wgslsmith_index_u32(1u, 20u)]) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
}

fn func_1() -> Struct_2 {
    global3 = array<vec3<f32>, 31>();
    let var_0 = func_2(-1130f);
    global0 = func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-402f - global2[_wgslsmith_index_u32(15645u, 22u)])))))));
    var var_1 = global2[_wgslsmith_index_u32(~countOneBits(abs(1u)), 22u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1854f)) * global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_clamp_u32(17940u, 0u, 0u), 12054u, ~0u, _wgslsmith_sub_u32(37548u, 1u))), 22u)]) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(72886u, 22u)])))));
    return Struct_2(func_2(var_2), Struct_1(u_input.a.x), func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * global2[_wgslsmith_index_u32(36214u, 22u)]), var_2))))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec3<f32>) -> u32 {
    global2 = array<f32, 22>();
    let var_0 = _wgslsmith_dot_vec2_i32(countOneBits(-countOneBits(vec2<i32>(2147483647i, -766i))), u_input.a.xw) << (4294967295u % 32u);
    global1 = firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) | ~74794u);
    global1 = _wgslsmith_mult_u32(firstTrailingBit(min(1u, select(~57719u, _wgslsmith_sub_u32(0u, 0u), select(true, true, true)))), _wgslsmith_mod_u32(max(1u >> (1u % 32u), ~(~1u)), select(~4294967295u & _wgslsmith_dot_vec4_u32(vec4<u32>(27060u, 1u, 1u, 4294967295u), vec4<u32>(1u, 0u, 0u, 0u)), 56552u, true)));
    let var_1 = arg_1.b;
    return 95530u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_mult_u32(1u, ~(max(29156u, 4290u) << (1u % 32u)));
    var var_0 = !all(vec3<bool>(any(vec2<bool>(true, true)), true, true));
    global1 = max(~(~_wgslsmith_mult_u32(15242u, _wgslsmith_dot_vec4_u32(vec4<u32>(24023u, 13157u, 105472u, 1u), vec4<u32>(1u, 15548u, 0u, 51969u)))), func_4(-49690i, func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(33207u, 31u)], _wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(55355u, 31u)], vec3<f32>(-547f, global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(15840u, 22u)])))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(1u, 31u)]))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(~1u), 22u)]));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~16895u, ~40020u, 0u), ~abs(vec3<u32>(25339u, 65544u, 52249u))) & 1u, abs(~(~(~0u)))), 22u)];
    var_1 = -191f;
    var var_3 = -(~u_input.a.x | max(-2147483647i, 2147483647i));
    var var_4 = 1u;
    global2 = array<f32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(4294967295u, 22u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(2192f, global2[_wgslsmith_index_u32(0u, 22u)]) - -328f)), 815f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(55513u, 22u)]))), 496f)), min(max(vec3<u32>(select(68148u, 8946u, false), 1u, select(1u, 0u, false)), vec3<u32>(1u, 1u, 1u)), countOneBits(vec3<u32>(0u >> (0u % 32u), 1u, ~92122u))));
}

