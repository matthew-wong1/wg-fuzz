struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 9>;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<u32>(1u, 0u, 61736u)), Struct_1(vec3<u32>(888u, 23950u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 46954u, 1u)), Struct_1(vec3<u32>(0u, 42795u, 1u)), Struct_1(vec3<u32>(8036u, 0u, 1u)), Struct_1(vec3<u32>(4294967295u, 33096u, 4294967295u)), Struct_1(vec3<u32>(0u, 73571u, 9307u)), Struct_1(vec3<u32>(6225u, 1u, 25037u)), Struct_1(vec3<u32>(61284u, 6406u, 75466u)), Struct_1(vec3<u32>(16020u, 1u, 0u)), Struct_1(vec3<u32>(4294967295u, 9508u, 1u)), Struct_1(vec3<u32>(102722u, 2377u, 57612u)), Struct_1(vec3<u32>(13935u, 1u, 15253u)), Struct_1(vec3<u32>(4294967295u, 36916u, 71152u)), Struct_1(vec3<u32>(0u, 38082u, 62771u)), Struct_1(vec3<u32>(0u, 4294967295u, 0u)), Struct_1(vec3<u32>(4294967295u, 1u, 0u)), Struct_1(vec3<u32>(1u, 4294967295u, 45141u)), Struct_1(vec3<u32>(48976u, 14620u, 0u)));

var<private> global2: array<u32, 3> = array<u32, 3>(1u, 4294967295u, 4294967295u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1469f, 648f), vec2<f32>(630f, -215f)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1558f, -1202f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-860f, 659f)))))))));
    var var_1 = global2[_wgslsmith_index_u32(~(~(~min(u_input.d.x, u_input.d.x))), 3u)];
    let var_2 = global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d.wz, u_input.d.xx), ~global0[_wgslsmith_index_u32(u_input.d.x, 9u)]) ^ global2[_wgslsmith_index_u32(~(242u << (global2[_wgslsmith_index_u32(46089u, 3u)] % 32u)), 3u)]) >> (abs(countOneBits(1u)) % 32u), 3u)], 3u)];
    global2 = array<u32, 3>();
    global2 = array<u32, 3>();
    return 1858f;
}

fn func_2() -> i32 {
    let var_0 = -463f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-278f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))));
    global2 = array<u32, 3>();
    let var_2 = any(vec3<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(-35459i, 0i, -1268i) >> (vec3<u32>(u_input.d.x, global2[_wgslsmith_index_u32(1u, 3u)], 0u) % vec3<u32>(32u)), vec3<i32>(-11780i, u_input.b, -15732i)) != abs(min(u_input.a, 19705i)), !(_wgslsmith_mod_i32(-23947i, u_input.a) != _wgslsmith_add_i32(0i, u_input.b)), true));
    var var_3 = Struct_2(~(global2[_wgslsmith_index_u32(u_input.d.x, 3u)] << (~_wgslsmith_dot_vec4_u32(vec4<u32>(67629u, global2[_wgslsmith_index_u32(1u, 3u)], 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)]), u_input.d) % 32u)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(103f))), Struct_1(u_input.d.xwy));
    return -u_input.a;
}

fn func_1(arg_0: Struct_5, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_3) -> bool {
    global2 = array<u32, 3>();
    global1 = array<Struct_1, 19>();
    var var_0 = -select(-1i, arg_3.a.x, func_2() >= _wgslsmith_mod_i32(u_input.b << (15439u % 32u), u_input.a));
    var var_1 = Struct_3(-arg_3.a, ~firstTrailingBit(global0[_wgslsmith_index_u32(arg_3.b.x, 9u)]), Struct_1(vec3<u32>(5422u, 1u, _wgslsmith_clamp_u32(2342u, ~4294967295u, ~4294967295u))));
    var var_2 = arg_0.b;
    return !arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b, 2147483647i, _wgslsmith_sub_i32(-2147483647i, u_input.a), u_input.b), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.a, -49108i, u_input.c), -vec4<i32>(2147483647i, 1i, 2147483647i, -58839i)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.a, -14060i, u_input.a), vec4<i32>(-95366i, u_input.b, 0i, u_input.c)))), firstTrailingBit(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(60121u, 3u)], u_input.d.x), vec2<u32>(48607u, 0u), u_input.d.xw), u_input.d.xy >> (global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31083u, 3u)], 9u)] % vec2<u32>(32u))), ~select(u_input.d.xy, u_input.d.xx, false))), global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(0u, ~4294967295u), 3u)], 19u)]);
    let var_1 = Struct_2(5759u, any(select(vec3<bool>(true, true, func_1(Struct_5(vec3<u32>(u_input.d.x, 1u, 41933u), -750f, true), 244f, vec3<bool>(true, true, true), Struct_3(vec4<i32>(var_0.a.x, 24366i, 1i, var_0.a.x), u_input.d.ww, var_0.c))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), true), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(142f)) + 995f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1678f) + _wgslsmith_f_op_f32(sign(-277f)))) + 458f), Struct_1(vec3<u32>(~global2[_wgslsmith_index_u32(4294967295u, 3u)], _wgslsmith_mod_u32(abs(u_input.d.x), var_0.c.a.x), 55184u ^ abs(u_input.d.x))));
    var var_2 = firstLeadingBit(78599u);
    global2 = array<u32, 3>();
    global0 = array<vec2<u32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-141f, _wgslsmith_f_op_f32(-150f * _wgslsmith_f_op_f32(-592f * var_1.c)), -1271f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c, -199f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2326f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -771f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -847f)))))));
}

