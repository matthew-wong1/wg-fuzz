struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(64490u, 1u), vec2<u32>(0u, 1u), vec2<u32>(1u, 0u), vec2<u32>(0u, 13736u), vec2<u32>(4294967295u, 14776u), vec2<u32>(0u, 1u), vec2<u32>(134391u, 24105u), vec2<u32>(0u, 0u), vec2<u32>(20140u, 1u), vec2<u32>(1u, 55730u), vec2<u32>(102624u, 1u), vec2<u32>(0u, 1u), vec2<u32>(21080u, 4294967295u), vec2<u32>(1u, 51650u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(89359u, 1u), vec2<u32>(1u, 88423u), vec2<u32>(0u, 37272u), vec2<u32>(0u, 69975u), vec2<u32>(1u, 38321u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 17654u), vec2<u32>(1u, 4294967295u));

var<private> global1: Struct_1 = Struct_1(vec2<f32>(1098f, 768f), -1i, true);

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<f32>(1019f, 562f), 56399i, true), Struct_1(vec2<f32>(-1209f, -389f), 15571i, false));

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<f32>(-709f, 1635f), -10097i, true), Struct_1(vec2<f32>(1571f, -596f), -11191i, true), Struct_1(vec2<f32>(-116f, 1294f), 1i, true), Struct_1(vec2<f32>(-1007f, 1173f), i32(-2147483648), false), Struct_1(vec2<f32>(-168f, 1786f), 76993i, false), Struct_1(vec2<f32>(1126f, -1000f), -9771i, true), Struct_1(vec2<f32>(911f, 214f), i32(-2147483648), false), Struct_1(vec2<f32>(-1000f, 679f), i32(-2147483648), true), Struct_1(vec2<f32>(1023f, 1281f), i32(-2147483648), true), Struct_1(vec2<f32>(539f, -1475f), i32(-2147483648), true), Struct_1(vec2<f32>(1702f, 1368f), 10443i, true), Struct_1(vec2<f32>(-294f, -1071f), 0i, true), Struct_1(vec2<f32>(616f, -524f), -1i, true), Struct_1(vec2<f32>(161f, -1225f), -2855i, true), Struct_1(vec2<f32>(-1065f, -939f), 2147483647i, false), Struct_1(vec2<f32>(1329f, -1296f), -74576i, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_i32(u_input.a.yyx, firstLeadingBit(reverseBits(u_input.a.xxy)));
    let var_1 = Struct_1(global1.a, -abs(1i), true);
    var_0 = vec3<i32>(0i, reverseBits(-6751i), var_1.b);
    let var_2 = u_input.c.x;
    global2 = array<Struct_1, 2>();
    var var_3 = var_1;
    var var_4 = var_0.xy;
    global2 = array<Struct_1, 2>();
    var_0 = vec3<i32>(-1i) * -(~(~u_input.a.ywx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(max(-113f, _wgslsmith_f_op_f32(-global1.a.x))), var_3.a.x) * vec3<f32>(202f, _wgslsmith_div_f32(467f, var_1.a.x), 1f)));
}

