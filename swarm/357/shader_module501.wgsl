struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(8531u, 43589u, 4294967295u, 58387u), vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(4294967295u, 39545u, 1u, 8331u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 32912u, 2772u, 97457u), vec4<u32>(1u, 0u, 105396u, 1u), vec4<u32>(1368u, 0u, 1u, 4294967295u), vec4<u32>(56864u, 1u, 3421u, 70874u), vec4<u32>(0u, 68588u, 4294967295u, 1u), vec4<u32>(1u, 1u, 55274u, 4294967295u), vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(37206u, 1u, 6265u, 39390u), vec4<u32>(1u, 1u, 1u, 7704u), vec4<u32>(4294967295u, 18735u, 1u, 4294967295u), vec4<u32>(5245u, 28937u, 35881u, 5204u), vec4<u32>(1u, 87538u, 1u, 87311u));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<i32>(-27200i, -68287i, 0i), -560f, -892f, 27851u, vec4<i32>(1i, 1i, -3754i, 0i)), Struct_1(vec3<i32>(-31201i, 0i, i32(-2147483648)), -1460f, -309f, 51546u, vec4<i32>(57595i, i32(-2147483648), 31227i, -58464i)), i32(-2147483648), 27747i);

var<private> global2: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(16248u, 4294967295u), vec2<u32>(1u, 3987u), vec2<u32>(29275u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 17350u), vec2<u32>(17422u, 10609u), vec2<u32>(1u, 0u), vec2<u32>(0u, 41171u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 13846u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(1u, 0u), vec2<u32>(0u, 29121u), vec2<u32>(1u, 71276u), vec2<u32>(68785u, 41433u), vec2<u32>(4294967295u, 51979u), vec2<u32>(59393u, 4294967295u), vec2<u32>(4294967295u, 5958u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_1 {
    var var_0 = u_input.c.zxw | ~min(vec3<u32>(global1.b.d, u_input.d, 1u), reverseBits(~u_input.c.wwz));
    global0 = array<vec4<u32>, 17>();
    let var_1 = firstTrailingBit(reverseBits(4169i));
    let var_2 = var_0.x;
    let var_3 = _wgslsmith_mod_vec2_i32(u_input.b, u_input.b);
    return global1.a;
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.b, global1.b.c, 530f) - vec3<f32>(-2192f, -662f, global1.b.b)))))) * vec3<f32>(global1.b.b, -1155f, 1000f)));
    global2 = array<vec2<u32>, 19>();
    return select(vec4<bool>(!(!any(vec4<bool>(false, false, false, true))), !(_wgslsmith_mod_i32(-1i, global1.d) == 2147483647i), !any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false)), (global1.b.b <= var_0.x) && all(vec3<bool>(true, false, false))), !(!vec4<bool>(select(false, true, false), false, all(vec3<bool>(false, true, true)), false)), select(any(vec4<bool>(true, true, true, true)), false, !select(true, true, true)) | select(true, true, global1.d < -1i));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: u32) -> Struct_2 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(383f, 787f), vec2<f32>(global1.b.c, global1.b.b), arg_0.wy)))))));
    var var_2 = ~_wgslsmith_mod_u32(2591u, firstLeadingBit(_wgslsmith_div_u32(global1.a.d, 60808u)));
    global1 = Struct_2(global1.b, Struct_1(vec3<i32>(25264i, ~(~global1.a.e.x), func_1(_wgslsmith_div_u32(4294967295u, arg_2), any(vec2<bool>(arg_0.x, true))).a.x), var_1.x, global1.a.b, ~1u, ~vec4<i32>(global1.b.a.x, -2147483647i, -5522i ^ global1.b.e.x, ~global1.a.e.x)), u_input.b.x, arg_1);
    let var_3 = select(!arg_0.wz, !vec2<bool>(all(arg_0), all(!arg_0.zw)), false);
    return Struct_2(func_1(_wgslsmith_dot_vec2_u32(select(abs(vec2<u32>(u_input.c.x, 24464u)), ~global2[_wgslsmith_index_u32(arg_2, 19u)], true), vec2<u32>(~global1.a.d, 56360u << (u_input.d % 32u))), var_3.x), func_1(~_wgslsmith_div_u32(~arg_2, 4294967295u), any(func_3()) || !select(true, true, false)), _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(global1.b.e.wz, vec2<i32>(arg_1, -38449i)) << (reverseBits(arg_2) % 32u), ~87608i), ~((u_input.b.x << (u_input.d % 32u)) >> (0u % 32u))), 1i);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = -(4147i & arg_1.e.x);
    global0 = array<vec4<u32>, 17>();
    var var_1 = arg_1.e.wwz ^ _wgslsmith_div_vec3_i32(min(abs(vec3<i32>(35900i, -1i, u_input.b.x)) | (vec3<i32>(var_0, arg_1.a.x, -2147483647i) ^ vec3<i32>(1i, -1i, -1i)), vec3<i32>(-2147483647i, -var_0, ~global1.a.e.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, -1i, u_input.a) & func_2(vec4<bool>(true, true, false, false), 50315i, 1u).b.a, vec3<i32>(global1.c, 1i, 0i)));
    var var_2 = _wgslsmith_div_vec4_u32(u_input.c, u_input.c & vec4<u32>(~47232u, min(arg_1.d ^ arg_1.d, arg_0.b.d), ~arg_0.b.d, 43819u));
    var var_3 = vec3<bool>(all(func_3().zwz), !all(vec2<bool>(true, true)), true);
    return -1952f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(countOneBits(~u_input.c.x), false), Struct_1(global1.a.a, _wgslsmith_div_f32(global1.b.c, _wgslsmith_f_op_f32(min(1999f, 108f))), _wgslsmith_f_op_f32(func_4(func_2(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true), 36049i, func_1(1471u, false).d), global1.b)), _wgslsmith_mod_u32(u_input.d, global1.b.d), ~vec4<i32>(40296i, -64353i, -1i, 1i) << (~global0[_wgslsmith_index_u32(4294967295u, 17u)] % vec4<u32>(32u))), i32(-1i) * -3029i, _wgslsmith_div_i32(u_input.a, ~global1.d));
    var var_1 = Struct_3(func_2(func_3(), min(_wgslsmith_add_i32(var_0.b.e.x, var_0.c), 2147483647i), min(_wgslsmith_add_u32(1u, var_0.b.d), _wgslsmith_dot_vec2_u32(select(u_input.c.wy, vec2<u32>(global1.b.d, 4435u), false), _wgslsmith_clamp_vec2_u32(u_input.c.wy, u_input.c.yy, vec2<u32>(50780u, u_input.c.x))))), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(477f, _wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, true, true), global1.a.e.x, global1.b.d).a.c - _wgslsmith_f_op_f32(ceil(global1.a.b))))) - _wgslsmith_div_f32(var_0.a.b, _wgslsmith_f_op_f32(abs(-325f)))), vec2<bool>(true, all(vec4<bool>(all(vec2<bool>(false, false)), true, true, all(vec4<bool>(false, true, true, true))))), firstLeadingBit(select(firstTrailingBit(max(vec2<i32>(var_0.a.e.x, u_input.b.x), u_input.b)), ~vec2<i32>(global1.a.e.x, global1.d) << (~vec2<u32>(global1.a.d, global1.b.d) % vec2<u32>(32u)), any(vec2<bool>(true, false)))));
    var_1 = Struct_3(var_0, -1i, -527f, func_3().yx, var_0.a.a.yx ^ vec2<i32>(firstLeadingBit(~global1.b.e.x), -2147483647i));
    global2 = array<vec2<u32>, 19>();
    var_1 = Struct_3(var_1.a, _wgslsmith_div_i32(15946i, -1i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -5189i, var_0.c << (var_1.a.a.d % 32u), reverseBits(var_0.c), select(68133i, u_input.a, var_1.d.x)), ~var_1.a.b.e), _wgslsmith_f_op_f32(func_4(func_2(vec4<bool>(true, true, !var_1.d.x, true), ~_wgslsmith_mod_i32(33572i, u_input.b.x), 1u), global1.b)), var_1.d, global1.b.e.zw);
    let var_2 = Struct_3(func_2(select(vec4<bool>(!var_1.d.x, var_1.d.x, var_1.d.x, true), vec4<bool>(!var_1.d.x, !var_1.d.x, !var_1.d.x, true), true), 0i, var_0.b.d), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, 29212i), u_input.b), ~(-43001i)), abs(global1.a.e.xzz) & vec3<i32>(u_input.a, -1i, var_0.b.e.x))), -269f, !func_3().xy, firstLeadingBit(vec2<i32>(u_input.a, var_1.b)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.b.b, var_2.c, global1.a.b))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.a.b * var_1.c), _wgslsmith_f_op_f32(var_1.c + -133f), _wgslsmith_f_op_f32(max(var_0.b.b, global1.b.b))))));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(851f, ~(~vec4<u32>(4294967295u, global1.a.d, 94119u, 1u)) ^ reverseBits(reverseBits(~u_input.c)), 4294967295u, _wgslsmith_f_op_f32(-var_3.x), abs(max(~vec2<i32>(var_2.e.x, var_0.c), vec2<i32>(~var_0.a.e.x, i32(-1i) * -27918i))));
}

