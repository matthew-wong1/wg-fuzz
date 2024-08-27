struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(-430f, 882f, -581f, 804f), vec4<f32>(203f, 325f, -1299f, -1868f), vec4<f32>(-475f, 526f, -692f, -1039f), vec4<f32>(-435f, -323f, 218f, -1231f), vec4<f32>(-610f, 1819f, 1214f, 800f), vec4<f32>(-747f, -827f, -1000f, -121f), vec4<f32>(-246f, 667f, -113f, 1420f), vec4<f32>(505f, 1011f, 643f, 108f), vec4<f32>(-314f, 190f, -548f, 378f), vec4<f32>(-1047f, -809f, 319f, -336f), vec4<f32>(1543f, -353f, -886f, -1005f), vec4<f32>(509f, 1545f, -1000f, 1622f), vec4<f32>(1659f, -481f, -1703f, -200f), vec4<f32>(895f, -258f, -544f, 1226f), vec4<f32>(232f, 147f, -204f, -1649f), vec4<f32>(-559f, 657f, -1193f, 1216f), vec4<f32>(1397f, 578f, 231f, -1241f), vec4<f32>(-924f, 461f, 703f, 252f), vec4<f32>(221f, -1061f, 1002f, -188f), vec4<f32>(1000f, -759f, -497f, 396f), vec4<f32>(-2442f, 796f, -1235f, 246f), vec4<f32>(-1375f, -740f, 847f, 423f), vec4<f32>(-323f, -434f, 935f, 1000f));

var<private> global1: Struct_3;

var<private> global2: vec2<u32>;

var<private> global3: bool;

var<private> global4: array<Struct_1, 31>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> i32 {
    let var_0 = i32(-1i) * -u_input.a;
    var var_1 = 1f;
    global2 = abs(vec2<u32>(_wgslsmith_div_u32(~global2.x, ~global1.e.x), firstTrailingBit(global1.a & 30833u)) << (global1.d % vec2<u32>(32u)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-149f, -791f, 200f), vec3<f32>(210f, -835f, -745f), vec3<bool>(false, false, false))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(462f, 3198f, 1781f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1483f * -110f), _wgslsmith_f_op_f32(f32(-1f) * -178f), -662f))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-414f + 917f) - _wgslsmith_f_op_f32(step(-1178f, 174f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1301f)) * -1460f)), global1.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1268f, -1000f)) * -205f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -269f)))), _wgslsmith_div_vec2_u32(~(~vec2<u32>(global1.e.x, 25299u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, global1.e.x), global1.d))), global1.e, _wgslsmith_mult_vec2_u32(vec2<u32>(global1.d.x, global2.x), vec2<u32>(global1.e.x, 19819u)));
    var var_3 = abs(vec2<u32>(abs(3441u), 68629u));
    return -22268i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 23>();
    let var_0 = abs(2147483647i);
    var var_1 = global4[_wgslsmith_index_u32(global1.e.x, 31u)];
    let var_2 = func_1();
    var var_3 = select(vec4<bool>(false, global1.b.x, (select(4294967295u, 54092u, false) >= 4294967295u) && true, true), vec4<bool>(!global1.c, any(vec3<bool>(true, select(true, true, global1.b.x), true)), all(!vec3<bool>(true, global1.c, global1.b.x)) || true, ((var_1.a <= -280f) & (-22554i >= var_0)) == true), (!(!global1.b.x) & (true || global1.c)) && any(!global1.b));
    global0 = array<vec4<f32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(max(_wgslsmith_add_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(var_0, -22751i)) | countOneBits(vec2<i32>(-9105i, var_0)), _wgslsmith_sub_vec2_i32(vec2<i32>(-39327i, u_input.a), vec2<i32>(-1i, var_0)) & reverseBits(vec2<i32>(var_0, var_2))), countOneBits(reverseBits(vec2<i32>(-12540i, -1i)))));
}

