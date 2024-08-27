struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(true, true, false, false), 2147483647i, vec4<u32>(39111u, 18094u, 16322u, 1u), vec4<bool>(false, false, false, false), Struct_1(-35605i));

var<private> global1: array<vec2<bool>, 23>;

var<private> global2: Struct_2 = Struct_2(vec4<bool>(true, false, true, true), -6231i, vec4<u32>(8349u, 1u, 4294967295u, 1u), vec4<bool>(false, false, false, true), Struct_1(-20327i));

var<private> global3: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(127f, 1194f, 1427f, -941f), vec4<f32>(184f, 2321f, 611f, -109f), vec4<f32>(485f, 699f, -655f, -252f), vec4<f32>(1831f, -1086f, 1000f, 669f), vec4<f32>(602f, 1785f, -714f, -525f), vec4<f32>(-1080f, 553f, 130f, -351f), vec4<f32>(2595f, -499f, 1351f, -957f), vec4<f32>(417f, -176f, -1365f, -320f), vec4<f32>(1216f, -1864f, 1203f, -422f), vec4<f32>(-334f, 924f, -321f, -211f), vec4<f32>(-1282f, -321f, -199f, -1000f), vec4<f32>(659f, -862f, 598f, 457f), vec4<f32>(-1924f, -314f, 358f, 1007f), vec4<f32>(-1554f, 543f, -390f, 953f), vec4<f32>(-488f, 1694f, -251f, 593f), vec4<f32>(482f, -129f, 445f, -262f), vec4<f32>(-1139f, 578f, 347f, 126f), vec4<f32>(-245f, -195f, 1096f, -1087f), vec4<f32>(-1531f, -171f, 361f, 226f), vec4<f32>(1757f, -1000f, -1000f, 693f), vec4<f32>(-767f, 156f, 1359f, 1392f), vec4<f32>(1353f, 734f, -1184f, -1077f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> vec4<u32> {
    let var_0 = global0.d.x;
    var var_1 = arg_0.c.wxx;
    var var_2 = !vec3<bool>(!(!(0u < var_1.x)), any(vec3<bool>(any(global2.a), false, false)), false);
    let var_3 = arg_0;
    let var_4 = vec2<u32>(firstLeadingBit(abs(_wgslsmith_sub_u32(min(global2.c.x, var_3.c.x), ~global0.c.x))), 1u);
    return vec4<u32>(1u, ~891u, ~global0.c.x >> (~15184u % 32u), var_3.c.x);
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(global2.d, 0i, _wgslsmith_div_vec4_u32(~firstTrailingBit(~global2.c), countOneBits(func_3(Struct_2(vec4<bool>(true, true, false, global2.a.x), global2.b, vec4<u32>(global2.c.x, 33962u, 4294967295u, 20984u), vec4<bool>(true, global2.d.x, global0.d.x, true), global2.e), u_input.d.yw))), global0.d, global2.e);
    var var_0 = Struct_1(global2.e.a);
    var var_1 = global0.e;
    var var_2 = global0.d;
    var var_3 = 1i;
    return Struct_2(!(!vec4<bool>(false, all(vec2<bool>(true, true)), true, global0.d.x)), -1i, global2.c, global2.a, global0.e);
}

fn func_1() -> Struct_3 {
    global3 = array<vec4<f32>, 22>();
    let var_0 = func_2();
    global0 = var_0;
    var var_1 = var_0.a.xx;
    global2 = func_2();
    return Struct_3(func_2().e, 0u, func_2().e, firstLeadingBit(min(u_input.d.zx, -(u_input.d.yz ^ vec2<i32>(var_0.e.a, global0.e.a)))), global0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-502f, 635f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, -324f))), select(vec2<bool>(false, global2.a.x), vec2<bool>(false, false), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1109f, 1724f) - vec2<f32>(1395f, 1640f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -380f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(811f, -179f)))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(887f, 2535f), vec2<f32>(431f, -550f)))))));
}

