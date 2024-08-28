struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
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

var<private> global0: i32 = 0i;

var<private> global1: array<Struct_2, 2>;

var<private> global2: Struct_2;

var<private> global3: array<vec4<f32>, 13>;

var<private> global4: array<vec4<u32>, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3) -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-656f + arg_1)), arg_1);
    global1 = array<Struct_2, 2>();
    var var_1 = Struct_1(all(!vec2<bool>(global2.c | true, -17523i != u_input.c.x)), !((~global2.d | _wgslsmith_mod_u32(u_input.e.x, arg_2.a.d)) == 34814u));
    let var_2 = u_input.a;
    let var_3 = vec3<bool>((false & !global2.a.x) != !arg_2.a.b.b, arg_0.d == ~abs(var_2.x), !arg_2.a.b.a);
    return abs(((reverseBits(arg_2.a.d) | 16620u) & 1u) ^ 42389u);
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> i32 {
    let var_0 = true;
    global0 = ~(-arg_1 << (~func_3(Struct_2(vec4<bool>(global2.b.b, var_0, true, var_0), global2.b, false, u_input.d.x), -1000f, Struct_3(global1[_wgslsmith_index_u32(global2.d, 2u)], 0u)) % 32u));
    var var_1 = Struct_2(vec4<bool>(any(!(!vec2<bool>(var_0, true))), false, false, true), global2.b, u_input.c.x <= _wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_1), u_input.c.zx), global2.d);
    let var_2 = Struct_2(global2.a, Struct_1(global2.c, true), true, var_1.d);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -745f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-487f - 678f)), 292f, _wgslsmith_f_op_f32(1213f - -1270f))));
    return ~2147483647i;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: u32) -> Struct_3 {
    var var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-func_2(vec3<u32>(u_input.a.x, 47906u, u_input.e.x), 0i), -7997i, _wgslsmith_mod_i32(u_input.b | -2147483647i, max(u_input.c.x, -2147483647i))) << (select(_wgslsmith_add_vec3_u32(u_input.e, _wgslsmith_div_vec3_u32(u_input.e, vec3<u32>(110414u, global2.d, 52280u))), u_input.e, arg_0.a.x) % vec3<u32>(32u)), -vec3<i32>(~(~(-26620i)), 2147483647i, -813i), -_wgslsmith_div_vec3_i32(~u_input.c.wzx, firstTrailingBit(vec3<i32>(-1i, 47604i, 16101i))));
    var var_1 = global2.b;
    global2 = Struct_2(!vec4<bool>(arg_1.x, arg_1.x, false, var_1.a), Struct_1(true, all(!(!arg_0.a.xzx))), -12927i != min(u_input.b, u_input.c.x), global2.d);
    global0 = ~(-28101i);
    var_0 = select(u_input.c.wyz & (countOneBits(vec3<i32>(73730i, var_0.x, 2147483647i)) >> (u_input.e % vec3<u32>(32u))), reverseBits(vec3<i32>(35358i, abs(i32(-1i) * -23930i), 21040i)), arg_0.a.yxz);
    return Struct_3(arg_0, firstLeadingBit(u_input.d.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> vec4<u32> {
    global3 = array<vec4<f32>, 13>();
    global0 = _wgslsmith_dot_vec3_i32(~(-vec3<i32>(u_input.c.x, firstLeadingBit(-1i), firstLeadingBit(u_input.c.x))), vec3<i32>(firstTrailingBit(_wgslsmith_div_i32(u_input.b, u_input.b)), max(u_input.b, -47858i ^ u_input.c.x), ~u_input.b << (~arg_0.b % 32u)) >> (~vec3<u32>(u_input.d.x, func_3(global1[_wgslsmith_index_u32(1u, 2u)], 350f, arg_0), select(51400u, 4294967295u, arg_1.a.x)) % vec3<u32>(32u)));
    let var_0 = ~firstTrailingBit(u_input.d.yyw);
    var var_1 = 4294967295u;
    let var_2 = false;
    return ~_wgslsmith_mod_vec4_u32(global4[_wgslsmith_index_u32(1u, 3u)], firstTrailingBit(countOneBits(vec4<u32>(48141u, 9667u, 4294967295u, 1u)) >> (global4[_wgslsmith_index_u32(abs(1u), 3u)] % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<u32>, 3>();
    let var_0 = ~_wgslsmith_div_vec4_u32(countOneBits(~(~u_input.d)), u_input.d & func_4(func_1(Struct_2(vec4<bool>(global2.b.a, global2.a.x, global2.c, global2.b.b), global2.b, false, 64481u), global2.a.yyy, u_input.e.x), func_1(Struct_2(vec4<bool>(global2.a.x, global2.c, false, false), global2.b, false, u_input.d.x), global2.a.xyz, u_input.d.x).a));
    var var_1 = vec3<i32>(15873i, abs(-u_input.b), -_wgslsmith_div_i32(u_input.c.x, ~_wgslsmith_dot_vec2_i32(u_input.c.yz, u_input.c.zy)));
    var_1 = ~countOneBits(_wgslsmith_div_vec3_i32(~(-u_input.c.xwz), u_input.c.zyy));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-545f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -911f) + _wgslsmith_f_op_f32(-1000f * -340f)) + _wgslsmith_f_op_f32(524f * _wgslsmith_f_op_f32(max(560f, 304f)))), _wgslsmith_div_f32(1212f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1282f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-208f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x))));
}

