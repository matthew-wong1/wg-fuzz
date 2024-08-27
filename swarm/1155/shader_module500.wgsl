struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec3<u32>(4294967295u, 33794u, 60235u), Struct_1(vec3<bool>(true, true, false), -916f), vec2<f32>(-849f, -1000f)), Struct_2(vec3<u32>(1u, 0u, 52797u), Struct_1(vec3<bool>(true, false, false), -1105f), vec2<f32>(837f, -1070f)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_1(vec3<bool>(true, false, true), 526f), vec2<f32>(-2072f, -1143f)), Struct_2(vec3<u32>(0u, 9169u, 4294967295u), Struct_1(vec3<bool>(true, true, true), 1416f), vec2<f32>(1667f, -1081f)), Struct_2(vec3<u32>(4294967295u, 50123u, 17605u), Struct_1(vec3<bool>(false, false, false), -315f), vec2<f32>(-256f, -1422f)), Struct_2(vec3<u32>(4294967295u, 0u, 0u), Struct_1(vec3<bool>(true, false, false), 3045f), vec2<f32>(-187f, 1716f)), Struct_2(vec3<u32>(4294967295u, 0u, 4294967295u), Struct_1(vec3<bool>(true, false, false), -300f), vec2<f32>(850f, -1722f)), Struct_2(vec3<u32>(0u, 1u, 4294967295u), Struct_1(vec3<bool>(false, false, true), -1218f), vec2<f32>(363f, -363f)), Struct_2(vec3<u32>(4294967295u, 31424u, 1u), Struct_1(vec3<bool>(false, true, false), 674f), vec2<f32>(816f, -1234f)), Struct_2(vec3<u32>(4294967295u, 0u, 7996u), Struct_1(vec3<bool>(true, false, false), 1734f), vec2<f32>(2624f, 2352f)), Struct_2(vec3<u32>(4294967295u, 1u, 2687u), Struct_1(vec3<bool>(false, false, true), -1000f), vec2<f32>(-747f, -1158f)), Struct_2(vec3<u32>(0u, 0u, 1u), Struct_1(vec3<bool>(false, false, false), 1824f), vec2<f32>(1352f, 717f)), Struct_2(vec3<u32>(1u, 4294967295u, 31419u), Struct_1(vec3<bool>(true, true, true), -1004f), vec2<f32>(1000f, -374f)), Struct_2(vec3<u32>(79854u, 2174u, 0u), Struct_1(vec3<bool>(true, true, true), 1231f), vec2<f32>(-806f, -1000f)), Struct_2(vec3<u32>(71138u, 4294967295u, 4294967295u), Struct_1(vec3<bool>(true, false, false), -549f), vec2<f32>(1609f, -343f)), Struct_2(vec3<u32>(1u, 4294967295u, 81107u), Struct_1(vec3<bool>(false, true, false), -618f), vec2<f32>(-924f, -1138f)), Struct_2(vec3<u32>(113279u, 77423u, 7740u), Struct_1(vec3<bool>(false, false, true), 1549f), vec2<f32>(981f, 841f)), Struct_2(vec3<u32>(64754u, 8851u, 62273u), Struct_1(vec3<bool>(true, false, false), 660f), vec2<f32>(1219f, -1069f)), Struct_2(vec3<u32>(4294967295u, 31847u, 2359u), Struct_1(vec3<bool>(true, false, false), -691f), vec2<f32>(429f, -470f)), Struct_2(vec3<u32>(1u, 76981u, 72132u), Struct_1(vec3<bool>(false, true, true), 337f), vec2<f32>(-450f, 1484f)), Struct_2(vec3<u32>(44811u, 13655u, 4294967295u), Struct_1(vec3<bool>(true, true, false), 2269f), vec2<f32>(-251f, 1248f)), Struct_2(vec3<u32>(0u, 1u, 63574u), Struct_1(vec3<bool>(false, false, true), -467f), vec2<f32>(315f, 829f)), Struct_2(vec3<u32>(0u, 17568u, 44054u), Struct_1(vec3<bool>(false, false, true), -1214f), vec2<f32>(1783f, 564f)), Struct_2(vec3<u32>(32878u, 4954u, 19683u), Struct_1(vec3<bool>(true, true, false), 1484f), vec2<f32>(-1000f, 1221f)), Struct_2(vec3<u32>(83089u, 3913u, 1u), Struct_1(vec3<bool>(true, true, true), -527f), vec2<f32>(387f, 411f)), Struct_2(vec3<u32>(34343u, 1u, 14489u), Struct_1(vec3<bool>(false, false, false), 688f), vec2<f32>(260f, 1497f)), Struct_2(vec3<u32>(26704u, 4294967295u, 1u), Struct_1(vec3<bool>(false, false, false), 1551f), vec2<f32>(-1853f, -134f)), Struct_2(vec3<u32>(4294967295u, 77561u, 1u), Struct_1(vec3<bool>(true, true, false), -2058f), vec2<f32>(1082f, -2048f)), Struct_2(vec3<u32>(22899u, 14178u, 0u), Struct_1(vec3<bool>(false, false, true), -1357f), vec2<f32>(-1000f, -160f)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: u32) -> f32 {
    let var_0 = Struct_2(min(~vec3<u32>(52719u, u_input.e.x, 4294967295u), u_input.e.yxy) >> (select(vec3<u32>(_wgslsmith_sub_u32(arg_2, u_input.e.x), firstLeadingBit(u_input.e.x), ~0u), ~(~u_input.e.zww), false) % vec3<u32>(32u)), Struct_1(!(!arg_1.wxy), 1f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))))));
    global1 = array<Struct_2, 29>();
    let var_1 = Struct_2(~(~_wgslsmith_clamp_vec3_u32(var_0.a, vec3<u32>(14575u, 20920u, 58473u), u_input.e.zxy) << (~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, var_0.a.x, var_0.a.x), var_0.a) % vec3<u32>(32u))), var_0.b, _wgslsmith_f_op_vec2_f32(-var_0.c));
    var var_2 = firstLeadingBit(arg_2);
    let var_3 = vec4<bool>(true, false, true, var_1.b.a.x);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + -139f), var_0.b.b, any(var_1.b.a.zx)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> f32 {
    global0 = array<Struct_2, 10>();
    var var_0 = Struct_2(firstTrailingBit(vec3<u32>(u_input.e.x, 58177u, 4294967295u)), arg_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b, _wgslsmith_f_op_f32(func_3(u_input.a.zwx, vec4<bool>(true, true, false, false), u_input.e.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_1.b)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_1.b) + vec2<f32>(arg_0, -849f))))))));
    let var_1 = global0[_wgslsmith_index_u32(0u, 10u)];
    let var_2 = select(!var_0.b.a.x, true, arg_0 != var_0.c.x);
    global0 = array<Struct_2, 10>();
    return -1617f;
}

fn func_1() -> f32 {
    var var_0 = vec2<bool>(all(vec3<bool>(any(vec2<bool>(true, false)), true, true)), true);
    let var_1 = 19126i;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -505f)), _wgslsmith_f_op_f32(639f + _wgslsmith_f_op_f32(func_2(279f, Struct_1(vec3<bool>(false, var_0.x, var_0.x), _wgslsmith_f_op_f32(-738f - 1372f)), any(vec4<bool>(true, false, var_0.x, var_0.x)), reverseBits(var_1)))), -1665f);
    global0 = array<Struct_2, 10>();
    var var_3 = Struct_1(vec3<bool>(false, true, var_0.x), 504f);
    return _wgslsmith_f_op_f32(var_2.x + 881f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 10>();
    var var_0 = vec3<bool>(false, !all(vec2<bool>(true, true)), true);
    let var_1 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1231f + _wgslsmith_f_op_f32(func_1())), var_1.zxw);
}

