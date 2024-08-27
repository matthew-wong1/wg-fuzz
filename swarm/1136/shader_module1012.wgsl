struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
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

var<private> global0: vec2<u32> = vec2<u32>(41218u, 23900u);

var<private> global1: f32 = 990f;

var<private> global2: bool;

var<private> global3: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(Struct_1(-593f), vec2<f32>(-503f, 417f), 1099i), Struct_3(Struct_1(-1309f), vec2<f32>(1510f, -857f), 2147483647i), Struct_3(Struct_1(302f), vec2<f32>(-667f, -742f), 36258i), Struct_3(Struct_1(1070f), vec2<f32>(-135f, -462f), 2147483647i), Struct_3(Struct_1(-1225f), vec2<f32>(587f, -1000f), -1718i), Struct_3(Struct_1(252f), vec2<f32>(-663f, 1000f), -52722i), Struct_3(Struct_1(728f), vec2<f32>(1995f, 1615f), 0i), Struct_3(Struct_1(-762f), vec2<f32>(-1335f, -1159f), -1i), Struct_3(Struct_1(640f), vec2<f32>(-240f, 686f), i32(-2147483648)), Struct_3(Struct_1(2739f), vec2<f32>(1320f, 1413f), 0i), Struct_3(Struct_1(-1000f), vec2<f32>(957f, -1565f), -12449i), Struct_3(Struct_1(-803f), vec2<f32>(1266f, 745f), -17907i), Struct_3(Struct_1(872f), vec2<f32>(-1532f, -1000f), -1i), Struct_3(Struct_1(857f), vec2<f32>(652f, -600f), 0i), Struct_3(Struct_1(1000f), vec2<f32>(838f, -130f), 2147483647i), Struct_3(Struct_1(2169f), vec2<f32>(1267f, 973f), -27792i), Struct_3(Struct_1(615f), vec2<f32>(478f, 370f), -1i), Struct_3(Struct_1(758f), vec2<f32>(133f, -1286f), -30597i), Struct_3(Struct_1(468f), vec2<f32>(2035f, -401f), 0i), Struct_3(Struct_1(1666f), vec2<f32>(-150f, 737f), 19607i), Struct_3(Struct_1(553f), vec2<f32>(175f, -934f), 2147483647i), Struct_3(Struct_1(-2067f), vec2<f32>(347f, -721f), -1i), Struct_3(Struct_1(-1386f), vec2<f32>(-106f, -1178f), 0i), Struct_3(Struct_1(-596f), vec2<f32>(1000f, 618f), 0i), Struct_3(Struct_1(815f), vec2<f32>(795f, 1408f), 85321i), Struct_3(Struct_1(-636f), vec2<f32>(329f, -721f), i32(-2147483648)), Struct_3(Struct_1(1209f), vec2<f32>(655f, 226f), -14771i), Struct_3(Struct_1(-1558f), vec2<f32>(-463f, -174f), 14598i), Struct_3(Struct_1(-901f), vec2<f32>(269f, -717f), 2147483647i));

var<private> global4: array<vec4<u32>, 17>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> u32 {
    var var_0 = ~(~select(u_input.c.yy ^ u_input.b.yy, ~u_input.c.xz, any(vec3<bool>(true, false, false)))) >> (u_input.c.zx % vec2<u32>(32u));
    var var_1 = _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(var_0.x, var_0.x), firstLeadingBit(4294967295u), 90945u, _wgslsmith_mod_u32(u_input.e, var_0.x)), ~vec4<u32>(53441u, 66354u, global0.x, var_0.x)), ~vec4<u32>(~var_0.x, 1u, global0.x, ~4294967295u));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(664f)))))), _wgslsmith_f_op_f32(f32(-1f) * -141f));
    global4 = array<vec4<u32>, 17>();
    let var_3 = true;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(u_input.c.x, select(9615u, 4294967295u, (1u <= ~global0.x) | all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1233f, -176f))), -1245f)) + -483f);
    var var_1 = Struct_2(all(vec3<bool>(true, all(vec4<bool>(false, false, false, true)), true)), ~global0.x, Struct_1(-865f));
    global3 = array<Struct_3, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(var_0, func_1()));
}

