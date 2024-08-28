struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(1u, 4294967295u, 11953u, 65994u, 23904u, 0u, 57156u, 16424u, 1u, 1u, 0u, 1u, 4294967295u, 41204u, 61548u, 5754u, 1u, 0u, 0u, 1u, 2246u);

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec2<f32>(-566f, -867f)), Struct_2(vec2<f32>(1484f, -842f)), Struct_2(vec2<f32>(284f, -340f)), Struct_2(vec2<f32>(300f, -801f)), Struct_2(vec2<f32>(-963f, 1073f)), Struct_2(vec2<f32>(248f, -167f)), Struct_2(vec2<f32>(223f, -1998f)), Struct_2(vec2<f32>(-1000f, -1963f)), Struct_2(vec2<f32>(-293f, -529f)), Struct_2(vec2<f32>(-1539f, 1000f)), Struct_2(vec2<f32>(1238f, 545f)), Struct_2(vec2<f32>(-540f, -1214f)), Struct_2(vec2<f32>(818f, 1000f)), Struct_2(vec2<f32>(-793f, 1035f)), Struct_2(vec2<f32>(-892f, 1798f)), Struct_2(vec2<f32>(170f, -1117f)), Struct_2(vec2<f32>(933f, 223f)), Struct_2(vec2<f32>(-157f, 867f)), Struct_2(vec2<f32>(2523f, 1256f)), Struct_2(vec2<f32>(238f, 529f)), Struct_2(vec2<f32>(-106f, 1248f)), Struct_2(vec2<f32>(-1435f, 371f)), Struct_2(vec2<f32>(429f, 684f)), Struct_2(vec2<f32>(-1522f, -535f)), Struct_2(vec2<f32>(-863f, 792f)), Struct_2(vec2<f32>(-1000f, -729f)), Struct_2(vec2<f32>(1519f, 452f)), Struct_2(vec2<f32>(-1679f, 503f)), Struct_2(vec2<f32>(-452f, -100f)), Struct_2(vec2<f32>(-2371f, -710f)), Struct_2(vec2<f32>(-1664f, 1000f)), Struct_2(vec2<f32>(-1404f, -1206f)));

var<private> global2: Struct_2 = Struct_2(vec2<f32>(486f, 1218f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global2 = global1[_wgslsmith_index_u32(4294967295u, 32u)];
    let var_0 = 1u;
    var var_1 = global2.a.x;
    var var_2 = arg_1;
    var var_3 = global2.a;
    return arg_0;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = u_input.b;
    global0 = array<u32, 21>();
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(-arg_1.d));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(959f, arg_1.d.x), _wgslsmith_f_op_vec2_f32(abs(arg_1.d)), select(arg_0, arg_0, arg_0))) - vec2<f32>(_wgslsmith_f_op_f32(exp2(global2.a.x)), _wgslsmith_f_op_f32(select(global2.a.x, -378f, arg_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.c + vec2<f32>(722f, -1181f))))));
    global0 = array<u32, 21>();
    return ~_wgslsmith_div_u32(u_input.b, select(1u, u_input.b, true)) >= ~u_input.b;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    var var_0 = vec3<bool>(-(~firstLeadingBit(u_input.d.x)) > u_input.a, all(vec2<bool>(func_3(u_input.b > 0u, func_2(Struct_1(u_input.d.x, u_input.c, global2.a, global2.a), Struct_1(0i, vec3<i32>(u_input.a, arg_0, arg_0), vec2<f32>(-1707f, global2.a.x), vec2<f32>(global2.a.x, global2.a.x)), 44011u)), true)), false);
    let var_1 = global2.a.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1161f + global2.a.x) + _wgslsmith_div_f32(236f, global2.a.x)))));
    return func_2(Struct_1(_wgslsmith_sub_i32(firstTrailingBit(arg_0), u_input.a), ~u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(global2.a, global2.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, 896f)), var_0.zz))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -292f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) * _wgslsmith_f_op_f32(-global2.a.x)))), Struct_1(arg_0, u_input.c, global2.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(func_2(Struct_1(1i, vec3<i32>(-17618i, arg_0, 0i), vec2<f32>(global2.a.x, -243f), vec2<f32>(global2.a.x, global2.a.x)), Struct_1(2147483647i, u_input.d.xzw, global2.a, vec2<f32>(1349f, global2.a.x)), 59879u).c, _wgslsmith_f_op_vec2_f32(min(global2.a, vec2<f32>(-1028f, global2.a.x)))))))), 1u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = true;
    var var_1 = arg_1;
    global1 = array<Struct_2, 32>();
    let var_2 = vec3<bool>(u_input.b > 4294967295u, ((_wgslsmith_f_op_f32(f32(-1f) * -697f) > _wgslsmith_f_op_f32(-arg_0.d.x)) | true) != any(vec3<bool>(arg_0.b.x != u_input.a, true, any(vec3<bool>(false, false, false)))), !any(vec3<bool>(arg_1.a.x <= arg_1.a.x, true, true)));
    var var_3 = u_input.c.x;
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, 775f))), _wgslsmith_f_op_f32(363f + _wgslsmith_f_op_f32(3080f - _wgslsmith_f_op_f32(-global2.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, false);
    global2 = func_4(func_1(61445i), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a) - _wgslsmith_f_op_vec2_f32(exp2(global2.a))) * _wgslsmith_f_op_vec2_f32(global2.a * vec2<f32>(420f, global2.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a.x + 877f), 271f), countOneBits(abs(abs(~vec4<u32>(1u, 1u, 4294967295u, 4495u)))));
    var var_1 = func_1(u_input.c.x);
    global0 = array<u32, 21>();
    let var_2 = global1[_wgslsmith_index_u32(~18946u, 32u)];
    let var_3 = Struct_1(2147483647i, vec3<i32>(_wgslsmith_sub_i32(var_1.b.x, max(-14150i, -var_1.a)), func_1(1i).b.x, u_input.c.x | (_wgslsmith_mult_i32(0i, -1i) ^ u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(683f, 411f) * global2.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1109f, global2.a.x) - var_2.a))))), global2.a);
    let x = u_input.a;
    s_output = StorageBuffer(-2764i, abs(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4357u, 21u)], 21u)], global0[_wgslsmith_index_u32(1u, 21u)], 4294967295u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 21u)], 21u)], u_input.b, u_input.b, global0[_wgslsmith_index_u32(4294967295u, 21u)])))), 1u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.a.x, var_2.a.x, var_3.c.x, 542f), vec4<f32>(global2.a.x, var_3.d.x, 483f, var_2.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-397f, global2.a.x, 496f, var_3.d.x) * vec4<f32>(var_3.d.x, var_2.a.x, -138f, 607f))))))), ~u_input.b);
}

