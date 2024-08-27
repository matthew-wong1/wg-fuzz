struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(-640f, -1271f), vec2<f32>(-759f, -1663f), vec2<f32>(-141f, 968f), vec2<f32>(-483f, 1078f), vec2<f32>(345f, 1239f), vec2<f32>(410f, 1844f), vec2<f32>(542f, -302f), vec2<f32>(2180f, -223f), vec2<f32>(-1326f, 1000f), vec2<f32>(-701f, -1738f), vec2<f32>(-1000f, -1411f), vec2<f32>(463f, 1000f), vec2<f32>(1166f, -694f), vec2<f32>(169f, 117f), vec2<f32>(1166f, 388f), vec2<f32>(-609f, -2248f), vec2<f32>(-877f, -962f), vec2<f32>(1008f, 536f), vec2<f32>(395f, 1000f), vec2<f32>(333f, -593f), vec2<f32>(-128f, -916f), vec2<f32>(1644f, 115f), vec2<f32>(-118f, 131f), vec2<f32>(1802f, 756f), vec2<f32>(667f, -564f), vec2<f32>(-608f, -1094f), vec2<f32>(-495f, 754f), vec2<f32>(106f, -285f), vec2<f32>(-531f, -1702f), vec2<f32>(-165f, -505f), vec2<f32>(-1462f, 1200f), vec2<f32>(2053f, 145f));

var<private> global1: vec3<bool>;

var<private> global2: Struct_1 = Struct_1(false);

var<private> global3: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(4294967295u, 84217u, Struct_1(false), 2147483647i), Struct_2(3769u, 0u, Struct_1(true), i32(-2147483648)), Struct_2(31180u, 55616u, Struct_1(true), 0i), Struct_2(5481u, 4294967295u, Struct_1(false), 11593i), Struct_2(1u, 16329u, Struct_1(true), 1i), Struct_2(0u, 0u, Struct_1(true), 0i), Struct_2(1u, 7846u, Struct_1(false), 2502i), Struct_2(4294967295u, 4294967295u, Struct_1(false), -18703i), Struct_2(0u, 3992u, Struct_1(false), -1i), Struct_2(4294967295u, 20737u, Struct_1(true), -1i), Struct_2(4294967295u, 0u, Struct_1(true), 0i), Struct_2(4294967295u, 84210u, Struct_1(false), -46209i), Struct_2(0u, 1u, Struct_1(true), -1i), Struct_2(0u, 28384u, Struct_1(true), -4038i), Struct_2(4294967295u, 4294967295u, Struct_1(true), 1i), Struct_2(1u, 0u, Struct_1(true), 1i), Struct_2(1u, 1u, Struct_1(false), 2147483647i), Struct_2(1u, 0u, Struct_1(false), -26589i), Struct_2(4294967295u, 37034u, Struct_1(true), 0i), Struct_2(59530u, 27157u, Struct_1(false), i32(-2147483648)), Struct_2(4294967295u, 4294967295u, Struct_1(true), i32(-2147483648)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = Struct_1(!(!(!global2.a)) & !(!all(vec3<bool>(false, global1.x, arg_0.c.a))));
    global0 = array<vec2<f32>, 32>();
    var var_1 = true;
    global2 = arg_2.c;
    global2 = arg_0.c;
    return vec3<u32>(68932u, arg_2.a | reverseBits(firstLeadingBit(arg_1.x)), arg_0.b);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = 13323i;
    global2 = arg_2.c;
    let var_1 = ~_wgslsmith_div_vec3_u32(func_3(arg_2, ~vec3<u32>(1u, 1u, arg_2.b), Struct_2(reverseBits(arg_2.a), abs(u_input.d), Struct_1(arg_2.c.a), abs(arg_2.d))), ~firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(46336u, arg_2.b, u_input.d), vec3<u32>(arg_2.a, u_input.b.x, u_input.c), vec3<u32>(arg_2.a, 122928u, 1u))));
    return Struct_1(false);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = global3[_wgslsmith_index_u32(~0u, 21u)];
    global3 = array<Struct_2, 21>();
    let var_1 = vec4<f32>(-1395f, _wgslsmith_f_op_f32(f32(-1f) * -662f), -151f, _wgslsmith_f_op_f32(-arg_1));
    let var_2 = global3[_wgslsmith_index_u32(countOneBits(arg_2.x), 21u)];
    var_0 = Struct_2(45334u, firstTrailingBit(51784u), arg_3, -1i);
    return _wgslsmith_sub_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 28661u), vec3<u32>(arg_2.x, 1u, var_2.a)), vec3<u32>(0u, 38730u, 0u), select(vec3<u32>(0u, 4676u, var_0.b), vec3<u32>(4294967295u, 4294967295u, 4294967295u), var_0.c.a))), ~abs(~(vec3<u32>(1u, var_0.a, 1u) & vec3<u32>(var_0.b, u_input.b.x, u_input.d))));
}

fn func_1(arg_0: vec2<bool>) -> StorageBuffer {
    var var_0 = ~reverseBits(abs(~countOneBits(vec3<u32>(u_input.d, 4294967295u, 53352u))));
    global3 = array<Struct_2, 21>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2676f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1529f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(969f * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1133f + 993f) * 311f), true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(951f)) + _wgslsmith_f_op_f32(f32(-1f) * -886f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1791f), _wgslsmith_f_op_f32(step(1106f, -407f))))));
    var_0 = max(~(~(reverseBits(vec3<u32>(1u, var_0.x, var_0.x)) & abs(vec3<u32>(1u, var_0.x, u_input.c)))), vec3<u32>(countOneBits(_wgslsmith_sub_u32(28651u, 0u)), 4294967295u, _wgslsmith_sub_u32(abs(4294967295u), u_input.a)) & func_4(-_wgslsmith_sub_i32(1i, -1i), -1000f, firstTrailingBit(countOneBits(u_input.b)), func_2(vec4<bool>(global1.x, true, arg_0.x, arg_0.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-901f, 565f, 180f), vec3<f32>(var_1, var_1, var_1))), global3[_wgslsmith_index_u32(u_input.a, 21u)])));
    let var_2 = countOneBits(-23657i);
    return StorageBuffer(-870f, ~u_input.b, 57225i, ~(-38982i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, false);
    global3 = array<Struct_2, 21>();
    let var_1 = vec2<u32>(~u_input.a ^ ~(_wgslsmith_sub_u32(u_input.d, 48299u) ^ _wgslsmith_add_u32(11597u, 1u)), u_input.b.x);
    let x = u_input.a;
    s_output = func_1(!global1.xy);
}

