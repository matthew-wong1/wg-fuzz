struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26> = array<i32, 26>(2147483647i, 61538i, -25768i, -70532i, 0i, 2147483647i, 1518i, -1i, i32(-2147483648), -4769i, -12993i, -4201i, 13527i, -1i, -1i, -23815i, 2147483647i, 0i, 41827i, 1i, 7245i, -3673i, i32(-2147483648), -19799i, -1i, 21243i);

var<private> global1: array<Struct_1, 19>;

var<private> global2: Struct_1 = Struct_1(false, vec2<u32>(41933u, 1u), 1019i, vec4<f32>(-1246f, -1870f, -260f, 1346f), vec3<u32>(4294967295u, 1u, 1u));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(2184f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-552f))))))));
    global0 = array<i32, 26>();
    let var_2 = countOneBits(_wgslsmith_clamp_vec4_i32(-select(vec4<i32>(global2.c, var_0.c, 1i, arg_1.c), u_input.a, vec4<bool>(true, false, false, arg_3.a)), vec4<i32>(~var_0.c, arg_0.c, ~(-17775i), _wgslsmith_dot_vec3_i32(u_input.a.xwy, vec3<i32>(2147483647i, arg_3.c, 2147483647i))), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.c, arg_3.c, 1i, 5971i), u_input.a) << (arg_2 % vec4<u32>(32u))));
    return arg_3.e.x;
}

fn func_2() -> Struct_1 {
    var var_0 = global2.e.x;
    var_0 = 41946u;
    global1 = array<Struct_1, 19>();
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global2.e, min(~(~vec3<u32>(25797u, 69479u, 1u)), vec3<u32>(~147u, firstTrailingBit(1u), 0u))), 19u)];
    global0 = array<i32, 26>();
    return Struct_1(!(!(!(!global2.a))), vec2<u32>(func_3(Struct_1(any(vec2<bool>(true, var_1.a)), vec2<u32>(43825u, 63578u), -37245i, var_1.d, _wgslsmith_mod_vec3_u32(global2.e, global2.e)), Struct_1(global2.a, global2.e.yy, -global0[_wgslsmith_index_u32(47573u, 26u)], _wgslsmith_div_vec4_f32(var_1.d, var_1.d), vec3<u32>(7745u, 1u, 0u) ^ vec3<u32>(global2.b.x, global2.b.x, 0u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.e.x, global2.e.x, global2.b.x, global2.e.x), vec4<u32>(11627u, 4294967295u, 71012u, 0u)), global1[_wgslsmith_index_u32(~24580u, 19u)]), max(17655u, ~func_3(global1[_wgslsmith_index_u32(0u, 19u)], Struct_1(var_1.a, vec2<u32>(4294967295u, global2.b.x), global0[_wgslsmith_index_u32(4294967295u, 26u)], global2.d, vec3<u32>(var_1.e.x, var_1.b.x, global2.b.x)), vec4<u32>(var_1.e.x, var_1.e.x, 45980u, 67605u), global1[_wgslsmith_index_u32(5034u, 19u)]))), 1i, _wgslsmith_f_op_vec4_f32(max(var_1.d, var_1.d)), ~max(_wgslsmith_mult_vec3_u32(~var_1.e, vec3<u32>(1u, 46768u, global2.e.x)), global2.e));
}

fn func_1() -> i32 {
    let var_0 = u_input.a;
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~(~global2.e.x & 90638u), ~global2.b.x, 4294967295u), ~(~0u)), 19u)];
    let var_2 = global2.e.x;
    var_1 = func_2();
    let var_3 = u_input.a.wzy;
    return abs(-775i) ^ var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, global2.e.zx, func_1(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-665f + global2.d.x), -1000f, -1995f, 1229f) - global2.d) * global2.d), ~select(vec3<u32>(~global2.b.x, ~global2.e.x, ~global2.b.x), (vec3<u32>(global2.b.x, 6986u, global2.e.x) & vec3<u32>(4294967295u, global2.e.x, 8395u)) | min(vec3<u32>(1u, 1u, 0u), global2.e), !select(vec3<bool>(global2.a, true, true), vec3<bool>(false, global2.a, global2.a), false)));
    var_0 = func_2();
    global1 = array<Struct_1, 19>();
    let var_1 = select(!vec2<bool>(global2.a, all(select(vec3<bool>(global2.a, false, true), vec3<bool>(global2.a, true, var_0.a), var_0.a))), select(!(!(!vec2<bool>(var_0.a, false))), select(select(vec2<bool>(global2.a, false), vec2<bool>(false, false), var_0.a), vec2<bool>(global2.a | false, false), select(select(vec2<bool>(true, var_0.a), vec2<bool>(true, global2.a), vec2<bool>(var_0.a, var_0.a)), vec2<bool>(var_0.a, var_0.a), select(vec2<bool>(true, true), vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, var_0.a)))), any(select(!vec2<bool>(var_0.a, var_0.a), select(vec2<bool>(var_0.a, global2.a), vec2<bool>(false, var_0.a), vec2<bool>(global2.a, global2.a)), global2.a || true))), !select(!vec2<bool>(true, var_0.a), select(select(vec2<bool>(true, var_0.a), vec2<bool>(true, false), false), !vec2<bool>(false, global2.a), vec2<bool>(true, true)), !(!vec2<bool>(false, var_0.a))));
    var var_2 = 97459u == ~(~firstTrailingBit(~var_0.e.x));
    global1 = array<Struct_1, 19>();
    let var_3 = -586f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstLeadingBit(_wgslsmith_div_u32(19079u, ~global2.e.x)), _wgslsmith_clamp_u32(~(~41123u), global2.b.x, _wgslsmith_mod_u32(var_0.e.x << (4294967295u % 32u), ~var_0.b.x))), _wgslsmith_div_f32(global2.d.x, var_3), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-1035f - var_3), _wgslsmith_f_op_f32(952f - -658f), -1001f), global2.d))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, var_0.d.x)), var_0.c);
}

