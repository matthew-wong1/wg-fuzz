struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: Struct_2,
    d: f32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<u32>(74931u, 1u), vec4<f32>(1000f, 1634f, -332f, -482f)), Struct_1(vec2<u32>(0u, 26025u), vec4<f32>(1000f, 199f, -1254f, -299f)), Struct_1(vec2<u32>(4294967295u, 28006u), vec4<f32>(-689f, -736f, -2345f, 481f)), Struct_1(vec2<u32>(4294967295u, 6964u), vec4<f32>(1355f, -1496f, 1109f, 496f)), Struct_1(vec2<u32>(3437u, 2534u), vec4<f32>(-352f, 263f, -1559f, -579f)), Struct_1(vec2<u32>(6004u, 32359u), vec4<f32>(-949f, 1842f, -335f, 530f)), Struct_1(vec2<u32>(1u, 29316u), vec4<f32>(-147f, -228f, 399f, 566f)), Struct_1(vec2<u32>(1u, 4294967295u), vec4<f32>(-436f, -578f, 314f, 1886f)), Struct_1(vec2<u32>(1686u, 4294967295u), vec4<f32>(-2545f, -240f, -1327f, 1481f)), Struct_1(vec2<u32>(46438u, 19212u), vec4<f32>(-1179f, -128f, 1173f, -187f)), Struct_1(vec2<u32>(54185u, 14909u), vec4<f32>(1000f, 110f, 200f, -1535f)), Struct_1(vec2<u32>(863u, 9972u), vec4<f32>(353f, 311f, -1595f, -1645f)), Struct_1(vec2<u32>(0u, 0u), vec4<f32>(849f, 245f, -1052f, -1051f)), Struct_1(vec2<u32>(70432u, 8612u), vec4<f32>(-206f, 1000f, 277f, 335f)), Struct_1(vec2<u32>(79167u, 0u), vec4<f32>(-308f, 1865f, 3176f, 475f)), Struct_1(vec2<u32>(71822u, 4294967295u), vec4<f32>(117f, -1195f, 723f, 1658f)), Struct_1(vec2<u32>(4294967295u, 1u), vec4<f32>(-1582f, -239f, -338f, 715f)), Struct_1(vec2<u32>(39117u, 1u), vec4<f32>(-525f, -479f, 616f, 2008f)), Struct_1(vec2<u32>(1u, 36695u), vec4<f32>(1333f, 1000f, -919f, -172f)), Struct_1(vec2<u32>(1u, 0u), vec4<f32>(-1080f, 623f, 485f, 277f)), Struct_1(vec2<u32>(19024u, 1706u), vec4<f32>(1000f, 344f, -294f, -1000f)));

var<private> global1: array<Struct_3, 9>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec2<u32> {
    global1 = array<Struct_3, 9>();
    var var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(~1u), 21u)];
    return var_0.a;
}

fn func_1(arg_0: f32) -> vec2<u32> {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 9>();
    var var_0 = Struct_2(~(~abs(~vec2<u32>(u_input.a, 1u))));
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(round(1892f)), _wgslsmith_f_op_f32(-971f - 735f), _wgslsmith_f_op_f32(-264f * 288f)) + vec4<f32>(242f, 602f, _wgslsmith_f_op_f32(step(-178f, 1104f)), _wgslsmith_f_op_f32(floor(-1140f))))));
    global0 = array<Struct_1, 21>();
    var_0 = Struct_2(select(select(_wgslsmith_clamp_vec2_u32(var_0.a >> (var_1.a % vec2<u32>(32u)), var_1.a, vec2<u32>(u_input.b, var_0.a.x)), var_0.a, vec2<bool>(any(vec4<bool>(true, true, false, false)), true)), vec2<u32>(52431u, ~var_0.a.x >> (_wgslsmith_mult_u32(var_1.a.x, u_input.b) % 32u)), true));
    let var_2 = Struct_2(~func_1(-1330f));
    global0 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, -abs(-max(0i, 3247i)), ~_wgslsmith_mod_u32(countOneBits(var_1.a.x >> (1u % 32u)), 0u));
}

