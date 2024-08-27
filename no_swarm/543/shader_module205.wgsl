struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<u32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: vec4<bool>;

var<private> global2: array<u32, 16> = array<u32, 16>(36206u, 1u, 0u, 0u, 8637u, 1u, 0u, 1u, 2468u, 21217u, 4294967295u, 83451u, 15541u, 17542u, 2668u, 4294967295u);

var<private> global3: u32;

var<private> global4: array<vec4<u32>, 26>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_5, arg_2: vec4<i32>) -> f32 {
    var var_0 = vec4<i32>(-1i, arg_2.x, min(arg_2.x, abs(-2147483647i)), countOneBits(((u_input.d ^ u_input.a) << (~global2[_wgslsmith_index_u32(20666u, 16u)] % 32u)) | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.d, 61729i) ^ arg_2.zzx, arg_2.xxy)));
    var var_1 = all(!vec3<bool>(all(vec2<bool>(global0.a, arg_1.a)), true, true));
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a))));
    global4 = array<vec4<u32>, 26>();
    let var_3 = ~(~vec4<u32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(7980u, 35358u), vec2<u32>(4294967295u, 27285u)), global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 16u)]), 16u)], 9911u ^ ~global2[_wgslsmith_index_u32(u_input.c.x, 16u)], 4294967295u, ~min(0u, 58075u)));
    return arg_0.a.x;
}

fn func_3() -> f32 {
    let var_0 = !(!(!(!select(vec2<bool>(global1.x, true), global1.zw, vec2<bool>(false, false)))));
    return 524f;
}

fn func_1() -> u32 {
    var var_0 = u_input.c.yx;
    global3 = 1u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1133f + 706f))))));
    let var_2 = ~vec2<u32>(u_input.b.x << (86493u % 32u), ~(_wgslsmith_mult_u32(31322u, var_0.x) & 4294967295u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1718f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-543f, 718f)), _wgslsmith_f_op_f32(func_2(Struct_3(vec2<f32>(var_1, 651f)), Struct_5(global0.a), vec4<i32>(10580i, u_input.d, -31362i, u_input.d))))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -142f) + _wgslsmith_f_op_f32(1000f - 117f)), _wgslsmith_f_op_f32(func_3()), global0.a != select(false, false, true)))));
    return ~52300u;
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: bool) -> Struct_4 {
    var var_0 = Struct_5(global1.x);
    let var_1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.c, ~vec3<u32>(~global2[_wgslsmith_index_u32(1u, 16u)], 1u << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.x, 16u)], 16u)] % 32u), 57175u)), ~(u_input.c & ~vec3<u32>(4294967295u, arg_0, 4294967295u)), u_input.b);
    var var_2 = u_input.e;
    var var_3 = _wgslsmith_f_op_f32(max(arg_2.a.x, 529f));
    var var_4 = Struct_4(global1.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-2456f, arg_2.a.x, -135f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(961f, arg_2.a.x, arg_2.a.x))) + _wgslsmith_div_vec3_f32(vec3<f32>(-709f, arg_2.a.x, arg_2.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_2.a.x, -219f) - vec3<f32>(arg_2.a.x, -597f, arg_2.a.x))))));
    return Struct_4(false, _wgslsmith_f_op_vec3_f32(var_4.b - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_4.b + vec3<f32>(-1417f, 671f, -1046f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(var_4.b, var_4.b), var_4.b))))));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: vec4<f32>) -> Struct_5 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(arg_3.wz + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2135f, arg_0.b.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.b.xz))))));
    global3 = ~_wgslsmith_mod_u32(u_input.c.x, 45887u) >> (u_input.c.x % 32u);
    let var_1 = reverseBits(-firstTrailingBit(arg_1.x));
    global2 = array<u32, 16>();
    var var_2 = _wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1261f + 393f), _wgslsmith_div_f32(-1579f, arg_3.x))), -1952f));
    return Struct_5(true);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<u32>, 26>();
    global0 = func_5(func_4(func_1(), _wgslsmith_mult_vec3_u32(abs(firstLeadingBit(vec3<u32>(1u, global2[_wgslsmith_index_u32(22490u, 16u)], global2[_wgslsmith_index_u32(36418u, 16u)]))), u_input.b), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-937f, 1000f))), !global0.a), abs(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.e, u_input.a, u_input.d), vec3<i32>(-60803i, u_input.d, u_input.a), true) | -vec3<i32>(u_input.a, -1i, 14446i), countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-2425i, 0i, u_input.a), vec3<i32>(-16324i, 74243i, 17589i))), -firstTrailingBit(vec3<i32>(74280i, -19683i, 22809i)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1118f, 994f, -258f, -250f)) * vec4<f32>(-1920f, 241f, 376f, 274f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(381f, -1380f, -258f, 421f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1663f, -1755f, 710f, 196f) - vec4<f32>(-680f, 1085f, -836f, -957f)))))), vec4<f32>(1f, 1f, 1f, 1f));
    global4 = array<vec4<u32>, 26>();
    var var_0 = Struct_2(!select(vec2<bool>(true, !global0.a), select(global1.wy, select(global1.xx, global1.wx, vec2<bool>(false, true)), select(vec2<bool>(global0.a, global1.x), global1.zy, global0.a)), global1.wz));
    var_0 = Struct_2(select(global1.yx, select(global1.wx, global1.wy, false), vec2<bool>(false, true)));
    var var_1 = -(~(~(-(~21149i))));
    var_1 = -1i;
    global0 = Struct_5(all(vec4<bool>(select(u_input.b.x != 29607u, all(global1.wx), !global1.x), true && global0.a, true, !any(vec2<bool>(true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(select((vec3<u32>(5259u, 34546u, 9570u) & ~u_input.b) << (~_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(1u, 1u, 63029u)) % vec3<u32>(32u)), vec3<u32>(u_input.c.x, 4294967295u, _wgslsmith_add_u32(~global2[_wgslsmith_index_u32(28704u, 16u)], 1u)), var_0.a.x), countOneBits(select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 59074u, 24848u, u_input.b.x) | global4[_wgslsmith_index_u32(0u, 26u)], ~vec4<u32>(global2[_wgslsmith_index_u32(66538u, 16u)], 42404u, u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6958u, 16u)], 16u)])), min(~1u, _wgslsmith_clamp_u32(u_input.c.x, 0u, 1u)), true)));
}

