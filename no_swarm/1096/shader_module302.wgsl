struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(false, true, false));

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(-563f, 1000f, true, vec2<u32>(4294967295u, 1u), vec3<f32>(332f, 820f, 1000f)));

var<private> global2: i32;

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(146f, 1631f, false, vec2<u32>(27752u, 1u), vec3<f32>(593f, -2497f, -1965f)), Struct_1(601f, 994f, true, vec2<u32>(1u, 11725u), vec3<f32>(-119f, 128f, 1122f)), Struct_1(-154f, 1971f, true, vec2<u32>(4294967295u, 1u), vec3<f32>(634f, -1190f, 1295f)), Struct_1(-900f, -1111f, true, vec2<u32>(29737u, 5861u), vec3<f32>(-1503f, 174f, -347f)), Struct_1(820f, -998f, true, vec2<u32>(9337u, 0u), vec3<f32>(-279f, -879f, -136f)), Struct_1(240f, 1767f, true, vec2<u32>(0u, 49849u), vec3<f32>(1942f, 455f, 427f)), Struct_1(345f, -2116f, false, vec2<u32>(0u, 1u), vec3<f32>(535f, -992f, -866f)), Struct_1(-843f, 2496f, false, vec2<u32>(4294967295u, 727u), vec3<f32>(723f, -1371f, -450f)), Struct_1(-242f, 1000f, false, vec2<u32>(40933u, 0u), vec3<f32>(599f, -267f, 216f)), Struct_1(607f, -1000f, true, vec2<u32>(1u, 16411u), vec3<f32>(-357f, 478f, 384f)), Struct_1(2374f, -2230f, false, vec2<u32>(0u, 4294967295u), vec3<f32>(-358f, 1235f, 490f)), Struct_1(-1554f, 1000f, false, vec2<u32>(0u, 16109u), vec3<f32>(-754f, 531f, -1298f)), Struct_1(210f, -731f, false, vec2<u32>(16426u, 1u), vec3<f32>(-756f, 1451f, -1000f)), Struct_1(-1976f, 110f, false, vec2<u32>(0u, 36257u), vec3<f32>(333f, -419f, 851f)), Struct_1(-138f, -1000f, false, vec2<u32>(1u, 66620u), vec3<f32>(-1000f, 577f, -1296f)), Struct_1(-1000f, -338f, true, vec2<u32>(23590u, 4294967295u), vec3<f32>(200f, 1000f, -1536f)), Struct_1(383f, 944f, false, vec2<u32>(0u, 44522u), vec3<f32>(997f, -1009f, -322f)), Struct_1(1635f, -507f, false, vec2<u32>(1u, 0u), vec3<f32>(-622f, 1176f, 379f)), Struct_1(-670f, -2243f, false, vec2<u32>(46504u, 1u), vec3<f32>(-584f, -412f, 713f)), Struct_1(1000f, -1024f, true, vec2<u32>(1u, 4294967295u), vec3<f32>(-1321f, -2688f, -306f)), Struct_1(-980f, -306f, true, vec2<u32>(0u, 0u), vec3<f32>(1000f, -1787f, 1054f)), Struct_1(225f, -1450f, true, vec2<u32>(123314u, 30908u), vec3<f32>(392f, 760f, -275f)), Struct_1(1000f, 290f, true, vec2<u32>(33565u, 4294967295u), vec3<f32>(-754f, -1000f, -1671f)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = countOneBits(arg_1) | arg_1;
    var var_1 = ~vec4<u32>(~arg_3.d.x, 4294967295u, firstTrailingBit(0u | arg_2.d.x), select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), arg_2.d), min(105150u, 90869u), all(vec4<bool>(global0.a.x, global0.a.x, false, true)))) & _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(~(~4294967295u), ~u_input.b << (_wgslsmith_sub_u32(1u, arg_2.d.x) % 32u), u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.c.x), _wgslsmith_div_vec2_u32(arg_3.d, arg_3.d))));
    let var_2 = true;
    let var_3 = 0u;
    let var_4 = 9557u;
    return global0.a;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec3<i32>, arg_3: vec3<i32>) -> vec2<i32> {
    global0 = Struct_2(select(select(vec3<bool>(any(global0.a), !global0.a.x, global0.a.x && global0.a.x), !global0.a, func_3(Struct_2(vec3<bool>(true, global0.a.x, false)), ~vec2<i32>(2147483647i, arg_0), global1[_wgslsmith_index_u32(firstTrailingBit(1626u), 1u)], Struct_1(1601f, -335f, global0.a.x, u_input.c.wz, vec3<f32>(-1924f, -707f, -392f)))), global0.a, true));
    global2 = i32(-1i) * -1i;
    var var_0 = Struct_2(select(vec3<bool>(global0.a.x, true, false), func_3(Struct_2(global0.a), u_input.d.yx, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, ~0u), 1u)], Struct_1(-246f, -158f, true, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), u_input.c.zz), vec3<f32>(183f, -1283f, arg_1))), vec3<bool>(any(vec2<bool>(true, global0.a.x)), global0.a.x, false)));
    let var_1 = Struct_2(!select(select(vec3<bool>(global0.a.x, global0.a.x, true), vec3<bool>(true, false, false), vec3<bool>(global0.a.x, global0.a.x, global0.a.x)), vec3<bool>(all(vec3<bool>(false, false, false)), select(global0.a.x, global0.a.x, global0.a.x), var_0.a.x), true));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -795f);
    return arg_3.yy | (vec2<i32>(-1i) * -arg_3.zz);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    let var_0 = vec3<bool>(!(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1960i, u_input.a), u_input.d) >= _wgslsmith_dot_vec2_i32(func_2(u_input.d.x, -372f, u_input.d.zxx, vec3<i32>(u_input.a, -1i, u_input.a)), u_input.d.zx)), (arg_1.c || true) || true, arg_0.a.x);
    global3 = array<Struct_1, 23>();
    global3 = array<Struct_1, 23>();
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_1.e.yz)));
    return -42354i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>((_wgslsmith_mod_i32(u_input.d.x, -u_input.a) ^ ~firstLeadingBit(29129i)) | u_input.a, 32397i, -13947i, _wgslsmith_mod_i32(u_input.a, u_input.a) ^ u_input.d.x);
    var_0 = u_input.d & u_input.d;
    var var_1 = Struct_2(vec3<bool>(global0.a.x, _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.d.x, -31646i, u_input.d.x, u_input.d.x)) != _wgslsmith_div_i32(u_input.a ^ var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-4348i, -42647i, u_input.d.x), u_input.d.zzz)), global0.a.x || global0.a.x));
    global1 = array<Struct_1, 1>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-552f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1416f, 443f) * -1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(var_0.xx >> (vec2<u32>(1u, ~u_input.b) % vec2<u32>(32u)), -(~(~vec2<i32>(u_input.d.x, -1i)))), -_wgslsmith_mod_i32(func_1(Struct_2(var_1.a), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 0u, 0u), 23u)]), _wgslsmith_div_i32(-3653i, _wgslsmith_div_i32(u_input.a, -1i))));
}

