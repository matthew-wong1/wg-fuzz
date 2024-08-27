struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 10>;

var<private> global1: array<vec3<f32>, 15>;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: f32 = -694f;

var<private> global4: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(vec4<i32>(26150i, -1587i, i32(-2147483648), 55i), vec2<bool>(false, true), Struct_1(true, false, vec4<bool>(true, true, false, true), vec2<i32>(2147483647i, -24946i)), Struct_2(1180f, vec4<bool>(false, true, true, false), vec2<i32>(45181i, 2147483647i), Struct_1(true, true, vec4<bool>(false, false, false, false), vec2<i32>(-28071i, -34114i))), Struct_2(623f, vec4<bool>(true, false, false, true), vec2<i32>(0i, 1i), Struct_1(false, true, vec4<bool>(true, false, false, false), vec2<i32>(61351i, -37062i)))), Struct_3(vec4<i32>(-25727i, -58466i, 0i, 27123i), vec2<bool>(false, false), Struct_1(true, false, vec4<bool>(true, true, false, false), vec2<i32>(59101i, i32(-2147483648))), Struct_2(-1017f, vec4<bool>(true, false, true, false), vec2<i32>(0i, -7920i), Struct_1(true, false, vec4<bool>(true, false, true, false), vec2<i32>(87134i, 2147483647i))), Struct_2(-833f, vec4<bool>(false, false, false, false), vec2<i32>(1i, -1i), Struct_1(false, true, vec4<bool>(false, false, false, false), vec2<i32>(1i, i32(-2147483648))))), Struct_3(vec4<i32>(-9155i, 25011i, -1i, 2147483647i), vec2<bool>(false, true), Struct_1(false, true, vec4<bool>(true, true, true, true), vec2<i32>(-9665i, -1i)), Struct_2(-1128f, vec4<bool>(false, false, false, false), vec2<i32>(1i, -31591i), Struct_1(false, true, vec4<bool>(false, false, true, true), vec2<i32>(-3310i, i32(-2147483648)))), Struct_2(1414f, vec4<bool>(true, false, true, false), vec2<i32>(-3721i, -4468i), Struct_1(false, true, vec4<bool>(true, false, false, true), vec2<i32>(-1i, 2147483647i)))), Struct_3(vec4<i32>(2147483647i, -43126i, 64069i, 2147483647i), vec2<bool>(true, false), Struct_1(true, false, vec4<bool>(true, true, false, true), vec2<i32>(-60137i, 639i)), Struct_2(-2279f, vec4<bool>(true, false, false, false), vec2<i32>(1181i, i32(-2147483648)), Struct_1(true, false, vec4<bool>(false, true, false, false), vec2<i32>(i32(-2147483648), 34734i))), Struct_2(-1120f, vec4<bool>(false, false, false, false), vec2<i32>(-4417i, i32(-2147483648)), Struct_1(false, false, vec4<bool>(true, true, false, true), vec2<i32>(-1i, 1i)))), Struct_3(vec4<i32>(5831i, i32(-2147483648), 7201i, 21085i), vec2<bool>(true, true), Struct_1(false, true, vec4<bool>(false, true, false, true), vec2<i32>(i32(-2147483648), 1i)), Struct_2(-473f, vec4<bool>(false, false, false, true), vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(true, false, vec4<bool>(true, false, false, true), vec2<i32>(i32(-2147483648), -1i))), Struct_2(2002f, vec4<bool>(true, true, true, false), vec2<i32>(28514i, 36686i), Struct_1(true, false, vec4<bool>(false, true, true, false), vec2<i32>(i32(-2147483648), i32(-2147483648))))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(167f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~((~vec3<u32>(u_input.d.x, 4294967295u, 51095u) << (~vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x) % vec3<u32>(32u))) << (firstTrailingBit(vec3<u32>(34493u, 4037u, u_input.d.x)) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(-1774f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(323f, -1364f)))), u_input.c.x);
}

