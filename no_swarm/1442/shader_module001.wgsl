struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<f32>(1359f, -2035f, 1000f), 256f, vec3<bool>(false, true, false)), Struct_1(vec3<f32>(842f, 968f, -429f), 521f, vec3<bool>(false, false, false)), Struct_1(vec3<f32>(-271f, -2507f, -793f), -546f, vec3<bool>(true, false, false)), Struct_1(vec3<f32>(-2833f, 305f, -806f), -607f, vec3<bool>(true, false, true)), Struct_1(vec3<f32>(-1289f, 788f, -563f), -539f, vec3<bool>(true, true, true)), Struct_1(vec3<f32>(2454f, -1724f, -655f), -1203f, vec3<bool>(true, true, false)), Struct_1(vec3<f32>(1613f, -1781f, 1000f), 1580f, vec3<bool>(false, false, true)), Struct_1(vec3<f32>(-423f, -815f, -334f), -128f, vec3<bool>(true, true, false)), Struct_1(vec3<f32>(1698f, 310f, 552f), -786f, vec3<bool>(false, true, true)), Struct_1(vec3<f32>(-454f, -148f, -645f), -1000f, vec3<bool>(false, true, false)), Struct_1(vec3<f32>(-1162f, -1256f, 126f), 154f, vec3<bool>(true, true, false)), Struct_1(vec3<f32>(-1770f, 361f, -281f), -1379f, vec3<bool>(false, false, false)));

var<private> global1: array<f32, 17> = array<f32, 17>(506f, 997f, -356f, 1000f, 1005f, -1346f, -117f, 1126f, 1235f, -1000f, -1202f, -293f, 1221f, -1000f, -866f, -733f, -1850f);

var<private> global2: Struct_1;

var<private> global3: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global4: array<Struct_1, 20>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = firstTrailingBit(~vec4<u32>(firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, 0u, 4294967295u)), 1u, _wgslsmith_add_u32(35680u, 0u), 1u));
    global0 = array<Struct_1, 12>();
    let var_1 = firstTrailingBit(-(i32(-1i) * -arg_0));
    global0 = array<Struct_1, 12>();
    global4 = array<Struct_1, 20>();
    return true;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    global1 = array<f32, 17>();
    var var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(abs(~vec4<u32>(18855u, arg_0.x, arg_0.x, arg_0.x)), arg_0), arg_0);
    global0 = array<Struct_1, 12>();
    let var_1 = arg_2;
    var var_2 = Struct_1(global2.a, -689f, vec3<bool>(!func_3(u_input.b), global2.c.x, global2.c.x));
    return firstTrailingBit(min(67316u, var_0.x));
}

fn func_1() -> bool {
    global0 = array<Struct_1, 12>();
    global2 = global0[_wgslsmith_index_u32(~func_2(vec4<u32>(select(0u, 20736u, false) & _wgslsmith_clamp_u32(4294967295u, 0u, 79861u), countOneBits(~63601u), _wgslsmith_div_u32(4294967295u, ~1u), select(~35354u, ~5088u, any(vec3<bool>(global2.c.x, global3.x, global3.x)))), _wgslsmith_f_op_f32(-global2.a.x), Struct_2(global4[_wgslsmith_index_u32(1u, 20u)]), global0[_wgslsmith_index_u32(~(~(~1u)), 12u)]), 12u)];
    global3 = select(!vec4<bool>(any(select(global2.c, global3.zzw, global3.x)), true, false, global2.c.x), !vec4<bool>(!global2.c.x, true, true, !(!global2.c.x)), false);
    global3 = !(!select(select(!vec4<bool>(false, global3.x, true, true), !vec4<bool>(global3.x, global2.c.x, global2.c.x, global2.c.x), true), !(!vec4<bool>(global3.x, global2.c.x, global2.c.x, false)), false));
    var var_0 = select(vec2<bool>(select(global2.c.x, any(vec4<bool>(global2.c.x, global2.c.x, global2.c.x, true)), true), select(false, any(select(global2.c, vec3<bool>(global3.x, global2.c.x, global2.c.x), global2.c)), global3.x)), !(!select(global2.c.zy, global2.c.yx, all(global3.yw))), !vec2<bool>(global3.x, !global3.x));
    return global2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 17>();
    let var_0 = global4[_wgslsmith_index_u32(17612u, 20u)];
    global4 = array<Struct_1, 20>();
    global3 = select(!(!vec4<bool>(false || var_0.c.x, true, !global2.c.x, true)), !vec4<bool>(var_0.c.x, true, any(!vec4<bool>(global2.c.x, var_0.c.x, true, true)), func_1() | true), select(vec4<bool>(!(!global3.x), func_1(), !(u_input.b < u_input.a.x), !global2.c.x), !select(select(vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x), vec4<bool>(false, false, var_0.c.x, true), global2.c.x), !vec4<bool>(global2.c.x, false, global2.c.x, true), true), !global2.c.x));
    let var_1 = vec3<u32>(_wgslsmith_div_u32(~abs(~36260u), ~(~_wgslsmith_mod_u32(2384u, 36836u))), ~18531u, _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, 0u), 92664u), 63081u));
    let var_2 = max(58124u, abs(~(~var_1.x))) >> (1u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_1.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.x, 1u, var_1.x), ~var_1), max(var_2, var_1.x)), firstLeadingBit(var_2 << (var_2 % 32u)) >> (var_2 % 32u), min(~(var_2 << (18244u % 32u)), _wgslsmith_add_u32(countOneBits(var_1.x), ~var_2))), u_input.a.zw, ~var_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(~firstLeadingBit(var_1.x), 17u)])))));
}

