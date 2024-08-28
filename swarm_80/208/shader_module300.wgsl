struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec4<bool>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<u32>(0u, 52445u, 52967u), 0u, vec3<i32>(-1i, 2147483647i, 0i)), Struct_1(vec3<u32>(4294967295u, 0u, 21387u), 4294967295u, vec3<i32>(21074i, 2147483647i, 15839i)), Struct_1(vec3<u32>(0u, 4294967295u, 31026u), 93999u, vec3<i32>(i32(-2147483648), -1i, 2813i)), Struct_1(vec3<u32>(1u, 39029u, 123193u), 5232u, vec3<i32>(0i, -57307i, 5258i)), Struct_1(vec3<u32>(46600u, 0u, 1u), 4294967295u, vec3<i32>(18296i, 14691i, 4039i)), Struct_1(vec3<u32>(4294967295u, 16589u, 1u), 1u, vec3<i32>(-1676i, 0i, -20505i)), Struct_1(vec3<u32>(0u, 1u, 4294967295u), 47914u, vec3<i32>(-1i, 61682i, -23464i)), Struct_1(vec3<u32>(62722u, 104792u, 4294967295u), 4294967295u, vec3<i32>(i32(-2147483648), 22824i, 0i)), Struct_1(vec3<u32>(1u, 44700u, 6649u), 1u, vec3<i32>(-28366i, 2147483647i, 24550i)), Struct_1(vec3<u32>(4294967295u, 1u, 27523u), 55272u, vec3<i32>(23976i, 16036i, -41075i)), Struct_1(vec3<u32>(4294967295u, 0u, 12917u), 35480u, vec3<i32>(i32(-2147483648), 0i, 0i)), Struct_1(vec3<u32>(7079u, 4294967295u, 4294967295u), 46620u, vec3<i32>(-38888i, -9145i, 2147483647i)), Struct_1(vec3<u32>(1u, 67730u, 57244u), 72994u, vec3<i32>(13978i, 16469i, 1i)), Struct_1(vec3<u32>(28157u, 1u, 21578u), 18537u, vec3<i32>(22649i, i32(-2147483648), 14374i)), Struct_1(vec3<u32>(35133u, 28929u, 1u), 39230u, vec3<i32>(-17512i, 8938i, 2147483647i)), Struct_1(vec3<u32>(28154u, 36653u, 73727u), 29906u, vec3<i32>(i32(-2147483648), 0i, i32(-2147483648))), Struct_1(vec3<u32>(38823u, 2550u, 0u), 10226u, vec3<i32>(37331i, -24i, i32(-2147483648))), Struct_1(vec3<u32>(4294967295u, 0u, 0u), 4294967295u, vec3<i32>(i32(-2147483648), -1i, i32(-2147483648))), Struct_1(vec3<u32>(54886u, 0u, 1u), 24735u, vec3<i32>(-40146i, 1i, -74645i)), Struct_1(vec3<u32>(1u, 0u, 12892u), 1u, vec3<i32>(-26644i, -15208i, i32(-2147483648))), Struct_1(vec3<u32>(0u, 4294967295u, 18152u), 1u, vec3<i32>(i32(-2147483648), i32(-2147483648), 0i)), Struct_1(vec3<u32>(11304u, 4505u, 4294967295u), 51012u, vec3<i32>(0i, i32(-2147483648), 0i)), Struct_1(vec3<u32>(0u, 4294967295u, 0u), 4294967295u, vec3<i32>(-16975i, 2147483647i, 2147483647i)), Struct_1(vec3<u32>(18500u, 11694u, 0u), 43023u, vec3<i32>(27510i, -73855i, i32(-2147483648))), Struct_1(vec3<u32>(0u, 0u, 51875u), 0u, vec3<i32>(0i, -1i, -1i)), Struct_1(vec3<u32>(4294967295u, 0u, 19943u), 11871u, vec3<i32>(19155i, -19591i, -7547i)), Struct_1(vec3<u32>(0u, 19169u, 21717u), 4294967295u, vec3<i32>(20226i, -19727i, -20133i)), Struct_1(vec3<u32>(0u, 13164u, 4294967295u), 87100u, vec3<i32>(i32(-2147483648), 2147483647i, 10458i)));

var<private> global1: Struct_1 = Struct_1(vec3<u32>(1u, 0u, 0u), 1u, vec3<i32>(i32(-2147483648), -1i, 2984i));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> u32 {
    global1 = global0[_wgslsmith_index_u32(~firstTrailingBit(4294967295u), 28u)];
    global0 = array<Struct_1, 28>();
    global1 = Struct_1(vec3<u32>(u_input.d.x, ~_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, u_input.b.x), u_input.d.x), global1.b), _wgslsmith_dot_vec3_u32(vec3<u32>(21710u, ~(global1.b >> (59527u % 32u)), 55809u), global1.a), global1.c);
    return 0u;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> vec3<bool> {
    return select(vec3<bool>(false, all(vec3<bool>(any(vec3<bool>(false, false, false)), false, false)), true), !vec3<bool>(true, firstTrailingBit(global1.b) <= 4294967295u, true), select(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), !any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true))));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(true, true, true)) | true, false, true), !select(vec3<bool>(any(vec2<bool>(true, true)), true, true), func_3(~vec4<u32>(0u, global1.b, arg_0.a.x, 0u), Struct_1(arg_0.a, 1u, global1.c)), vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-483f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1548f, -2679f), _wgslsmith_f_op_f32(abs(-138f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -724f))), 193f, !any(var_0)));
    global1 = arg_0;
    let var_2 = u_input.c;
    var var_3 = Struct_3(vec3<u32>(func_1(-29206i, Struct_1(u_input.b, arg_0.a.x, vec3<i32>(752i, global1.c.x, -58327i))), global1.a.x, global1.a.x), Struct_2(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b, 33214u, 5840u, 4294967295u), vec4<u32>(arg_0.a.x, global1.a.x, 16497u, u_input.d.x))) & ~vec4<u32>(global1.a.x, u_input.b.x, 1u, 29032u), arg_0));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~(~u_input.b), global1.a), u_input.b, vec3<u32>(global1.a.x, _wgslsmith_div_u32(1u, func_1(19606i, global0[_wgslsmith_index_u32(global1.b, 28u)])), func_2(Struct_1(global1.a, 1u, vec3<i32>(global1.c.x, 2147483647i, u_input.c.x))))), 71291u, u_input.c);
    global1 = global0[_wgslsmith_index_u32(global1.b, 28u)];
    let var_0 = true;
    let var_1 = !(!func_3(~min(vec4<u32>(u_input.d.x, 104136u, 1u, 0u), vec4<u32>(62999u, 4294967295u, global1.a.x, global1.a.x)), global0[_wgslsmith_index_u32(1u, 28u)]));
    var var_2 = ~_wgslsmith_mult_u32(u_input.d.x, abs(firstLeadingBit(0u)));
    global1 = Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global1.a.x, global1.a.x, u_input.b.x), vec3<u32>(0u, global1.b, global1.b) << (global1.a % vec3<u32>(32u))), vec3<u32>(_wgslsmith_clamp_u32(global1.a.x, u_input.e.x, u_input.d.x), global1.b, u_input.a)), countOneBits(global1.a.x), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(global1.a.x, global1.a.x, 30641u, 62623u), vec4<u32>(global1.b, 29960u, u_input.e.x, 66549u)), ~vec4<u32>(28184u, 8571u, 3971u, 72826u)), firstTrailingBit(vec4<u32>(60234u, 4294967295u, u_input.e.x, 68117u)))), u_input.a, vec3<i32>(0i, -54224i << (u_input.a % 32u), global1.c.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1065f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1370f))))));
    let var_4 = Struct_1(~global1.a, u_input.b.x, _wgslsmith_add_vec3_i32(~(-u_input.c), -min(u_input.c, _wgslsmith_div_vec3_i32(u_input.c, u_input.c))));
    var var_5 = global0[_wgslsmith_index_u32(45675u, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(round(-206f)), 1199f));
}

