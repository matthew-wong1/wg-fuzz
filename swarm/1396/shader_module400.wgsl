struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 16> = array<u32, 16>(0u, 16833u, 0u, 0u, 32849u, 1u, 88588u, 31560u, 0u, 53174u, 1u, 74002u, 0u, 0u, 1836u, 24754u);

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(vec3<u32>(1u, 0u, 33026u), Struct_1(-1491f, -558f)), Struct_4(vec3<u32>(12882u, 0u, 63397u), Struct_1(1064f, -1000f)), Struct_4(vec3<u32>(4294967295u, 56874u, 1u), Struct_1(-339f, -297f)), Struct_4(vec3<u32>(10483u, 740u, 7275u), Struct_1(1432f, -1269f)), Struct_4(vec3<u32>(1u, 4294967295u, 1u), Struct_1(1303f, -178f)), Struct_4(vec3<u32>(24481u, 41356u, 4294967295u), Struct_1(1243f, -1000f)), Struct_4(vec3<u32>(1u, 4294967295u, 31889u), Struct_1(-1926f, -493f)), Struct_4(vec3<u32>(4294967295u, 1u, 1u), Struct_1(-1248f, -350f)), Struct_4(vec3<u32>(18746u, 22040u, 1u), Struct_1(-386f, -1009f)), Struct_4(vec3<u32>(24402u, 4294967295u, 51494u), Struct_1(-2475f, 213f)), Struct_4(vec3<u32>(34278u, 25444u, 13657u), Struct_1(-1000f, 193f)), Struct_4(vec3<u32>(0u, 1u, 50226u), Struct_1(-114f, -721f)), Struct_4(vec3<u32>(0u, 1u, 47902u), Struct_1(891f, -126f)), Struct_4(vec3<u32>(70939u, 42861u, 43378u), Struct_1(-1000f, 471f)), Struct_4(vec3<u32>(15372u, 117174u, 4294967295u), Struct_1(-1000f, 460f)), Struct_4(vec3<u32>(27370u, 4294967295u, 18501u), Struct_1(-1142f, -1821f)), Struct_4(vec3<u32>(4294967295u, 9368u, 0u), Struct_1(1120f, -110f)), Struct_4(vec3<u32>(43796u, 0u, 4294967295u), Struct_1(-818f, -2655f)), Struct_4(vec3<u32>(4294967295u, 1u, 0u), Struct_1(-1265f, -1889f)), Struct_4(vec3<u32>(0u, 1u, 0u), Struct_1(1213f, -203f)), Struct_4(vec3<u32>(1u, 38000u, 4294967295u), Struct_1(-343f, 1040f)), Struct_4(vec3<u32>(89828u, 4294967295u, 0u), Struct_1(-918f, 121f)), Struct_4(vec3<u32>(1u, 9840u, 4294967295u), Struct_1(-132f, -1226f)), Struct_4(vec3<u32>(82779u, 58734u, 4294967295u), Struct_1(855f, 129f)), Struct_4(vec3<u32>(1u, 0u, 27780u), Struct_1(944f, 514f)));

var<private> global4: array<Struct_3, 29>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(801f, _wgslsmith_div_f32(-427f, global2.x), _wgslsmith_f_op_f32(sign(-508f)), -813f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, -2010f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global2.x) - vec4<f32>(116f, -1005f, -1315f, global2.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(601f, global2.x, global2.x, global2.x) + vec4<f32>(-779f, global2.x, 1516f, global2.x))))))));
    global0 = ~u_input.d.x;
    let var_1 = _wgslsmith_mod_u32(~(u_input.c >> (global1[_wgslsmith_index_u32(~(~32671u), 16u)] % 32u)), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(u_input.e, 16u)], _wgslsmith_div_u32(~(~u_input.b), 4294967295u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_0.zzx))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.yzy * vec3<f32>(var_0.x, global2.x, global2.x)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-795f, -1085f, global2.x)))), true))))));
    var var_3 = select(!vec4<bool>(1f < _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), any(vec2<bool>(true, true)), any(vec3<bool>(false, true, true)), true | all(vec4<bool>(false, false, true, false))), vec4<bool>(true, any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), !(!any(vec4<bool>(true, false, true, true))), all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true), all(vec2<bool>(false, false))))), select(!vec4<bool>(select(true, true, false), any(vec3<bool>(false, false, false)), 710u > u_input.e, arg_0 == arg_0), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, false, false, true)), select(vec4<bool>(var_2.x > var_2.x, true, true, any(vec2<bool>(true, false))), vec4<bool>(any(vec3<bool>(true, true, true)), any(vec2<bool>(false, false)), arg_0 == arg_0, all(vec3<bool>(false, true, false))), select(arg_0 == -2147483647i, all(vec3<bool>(false, true, true)), false))));
    return !select(!var_3.xwy, !select(select(vec3<bool>(var_3.x, var_3.x, var_3.x), var_3.yzx, var_3.ywx), select(vec3<bool>(false, var_3.x, false), var_3.yyy, var_3.x), true), select(!vec3<bool>(var_3.x, false, false), !select(vec3<bool>(false, var_3.x, false), vec3<bool>(true, false, var_3.x), var_3.x), select(select(var_3.xwx, vec3<bool>(true, false, false), var_3.x), !var_3.yzy, vec3<bool>(false, var_3.x, true))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec3<f32>) -> u32 {
    global3 = array<Struct_4, 25>();
    var var_0 = true;
    var var_1 = global2.x;
    var var_2 = func_3(-(~22477i));
    global4 = array<Struct_3, 29>();
    return 0u;
}

fn func_1() -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, global2.x) * _wgslsmith_div_f32(1000f, global2.x))), 69576u, select(max(~vec2<u32>(u_input.d.x, 1u) ^ u_input.d.yx, u_input.d.yx), u_input.d.xx, vec2<bool>(true, true)));
    global3 = array<Struct_4, 25>();
    global0 = ~global1[_wgslsmith_index_u32(var_0.b, 16u)];
    let var_1 = Struct_5(-14702i, ~(~func_2(false, global2.x, vec3<f32>(var_0.a.b, var_0.a.b, global2.x))) != global1[_wgslsmith_index_u32(73799u, 16u)]);
    global3 = array<Struct_4, 25>();
    return firstTrailingBit(firstLeadingBit(~reverseBits(u_input.d))) >> (_wgslsmith_mod_vec3_u32(~(select(u_input.d, u_input.d, vec3<bool>(var_1.b, true, true)) ^ vec3<u32>(u_input.c, 1u, 12670u)), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(var_0.b, 16u)], u_input.a) >> (vec3<u32>(u_input.d.x, u_input.c, 1u) % vec3<u32>(32u)), select(vec3<u32>(var_0.c.x, global1[_wgslsmith_index_u32(u_input.c, 16u)], var_0.b), u_input.d, true)))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(~func_1(), Struct_1(1000f, _wgslsmith_f_op_f32(floor(global2.x))));
    global0 = 23270u;
    global0 = var_0.a.x;
    var var_1 = var_0.b.b;
    global0 = ~1u;
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1263f - var_0.b.b), _wgslsmith_f_op_f32(-var_0.b.b), var_0.b.a, _wgslsmith_f_op_f32(floor(464f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b.b, 415f, global2.x, -1315f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(658f, global2.x, global2.x, 845f)))))));
    let var_3 = Struct_2(Struct_1(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-433f, 537f)))), min(35635u, u_input.d.x), select(~_wgslsmith_clamp_vec2_u32(u_input.d.zy, vec2<u32>(17155u, global1[_wgslsmith_index_u32(78873u, 16u)]), u_input.d.yy), ~select(var_0.a.xz, var_0.a.xx, false), vec2<bool>(true, true)));
    let var_4 = global4[_wgslsmith_index_u32(func_2(!((func_1().x | 1u) != firstTrailingBit(~var_3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.a.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(412f, var_0.b.a, _wgslsmith_f_op_f32(-var_2.x)) * vec3<f32>(_wgslsmith_f_op_f32(-188f * -1000f), _wgslsmith_f_op_f32(sign(-707f)), _wgslsmith_f_op_f32(min(-3143f, var_2.x)))))), 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(~global1[_wgslsmith_index_u32(~(~1u), 16u)]);
}

