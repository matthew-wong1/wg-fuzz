struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true));

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<f32>(643f, -254f, 265f, -1337f)), Struct_1(vec4<f32>(224f, -166f, 1000f, 1855f)), Struct_1(vec4<f32>(-447f, 1210f, -302f, -1389f)), Struct_1(vec4<f32>(366f, -425f, -990f, 1365f)), Struct_1(vec4<f32>(-1105f, -839f, 1058f, -1000f)), Struct_1(vec4<f32>(504f, -852f, 1728f, -1490f)), Struct_1(vec4<f32>(-1000f, -1226f, 774f, 1207f)), Struct_1(vec4<f32>(2466f, 554f, -216f, -961f)), Struct_1(vec4<f32>(704f, 407f, -738f, 858f)), Struct_1(vec4<f32>(-133f, -1114f, -1172f, -626f)), Struct_1(vec4<f32>(-271f, 880f, 1000f, -819f)), Struct_1(vec4<f32>(2398f, 438f, 890f, -1814f)), Struct_1(vec4<f32>(-203f, -129f, 538f, 310f)), Struct_1(vec4<f32>(-222f, -829f, 915f, -1788f)), Struct_1(vec4<f32>(898f, 181f, -1000f, -2236f)), Struct_1(vec4<f32>(-607f, -143f, -2018f, -393f)), Struct_1(vec4<f32>(1272f, -744f, -410f, 466f)), Struct_1(vec4<f32>(-354f, -161f, 1293f, 1482f)), Struct_1(vec4<f32>(-1634f, -841f, -313f, 1962f)), Struct_1(vec4<f32>(-1000f, -470f, -106f, 243f)), Struct_1(vec4<f32>(-971f, 676f, 672f, 715f)), Struct_1(vec4<f32>(1416f, -1737f, 388f, -191f)), Struct_1(vec4<f32>(324f, 677f, -578f, -1188f)), Struct_1(vec4<f32>(-1165f, 1081f, 740f, 1557f)), Struct_1(vec4<f32>(1172f, 474f, -1000f, -409f)), Struct_1(vec4<f32>(257f, 1000f, -304f, -1000f)), Struct_1(vec4<f32>(-408f, -158f, -506f, 878f)));

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<f32>(-246f, 631f, -493f, 1077f)), Struct_1(vec4<f32>(-445f, 520f, -463f, 745f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_1.a)));
    let var_1 = false;
    var_0 = arg_0.a;
    let var_2 = var_1;
    let var_3 = select(~max(arg_2.x, ~u_input.b.x), arg_2.x, var_2) << (0u % 32u);
    return -463f;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(u_input.a, u_input.c);
    let var_1 = _wgslsmith_mod_vec2_u32(abs(abs(min(vec2<u32>(4294967295u, 5350u), u_input.b))), vec2<u32>(u_input.b.x, u_input.b.x));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(-378f, -1327f, 636f, 2362f)), global2[_wgslsmith_index_u32(~0u, 2u)], vec3<u32>(u_input.b.x, u_input.b.x, 1u) << (vec3<u32>(var_1.x, u_input.b.x, var_1.x) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(-737f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -127f), _wgslsmith_f_op_f32(f32(-1f) * -1203f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(305f + -858f))) + _wgslsmith_f_op_f32(f32(-1f) * -706f))));
    global1 = array<Struct_1, 27>();
    let var_3 = vec3<u32>(var_1.x << (~(firstTrailingBit(var_1.x) & 4294967295u) % 32u), ~1u, _wgslsmith_sub_u32(~(~30842u), ~4294967295u));
    return global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, u_input.b.x), 27u)];
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec4<bool>, 9>();
    let var_0 = u_input.b.x >> ((u_input.b.x & ~min(13498u, min(0u, 0u))) % 32u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, arg_1.a.x, 406f, arg_2.a.x))))));
    return global1[_wgslsmith_index_u32(1u, 27u)];
}

fn func_1() -> StorageBuffer {
    var var_0 = -245f;
    let var_1 = u_input.b.x;
    global2 = array<Struct_1, 2>();
    var var_2 = func_4(0u, func_2(), func_2());
    var var_3 = global1[_wgslsmith_index_u32(~(~var_1 << (~4294967295u % 32u)), 27u)];
    return StorageBuffer(~var_1, vec3<u32>(4294967295u, reverseBits(var_1), ~58312u), _wgslsmith_mod_u32(~countOneBits(firstLeadingBit(var_1)), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

