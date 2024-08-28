struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(70949u, 4294967295u, 49774u);

var<private> global1: Struct_1;

var<private> global2: vec2<u32> = vec2<u32>(9075u, 1u);

var<private> global3: array<vec3<u32>, 30>;

var<private> global4: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(-7254i, 1293u, vec4<i32>(-10545i, 1i, 2147483647i, -1i)), Struct_1(1i, 4294967295u, vec4<i32>(0i, 1i, -13584i, -8392i)), Struct_1(-17661i, 0u, vec4<i32>(i32(-2147483648), 2147483647i, 4541i, -8686i)), Struct_1(6700i, 32802u, vec4<i32>(12726i, 7361i, -49153i, 26299i)), Struct_1(13261i, 0u, vec4<i32>(-18102i, 15359i, 24505i, 1279i)), Struct_1(1i, 35558u, vec4<i32>(-1i, -28577i, 53385i, 37885i)), Struct_1(2147483647i, 4294967295u, vec4<i32>(32988i, 0i, 1i, 17433i)), Struct_1(10268i, 40592u, vec4<i32>(-46674i, i32(-2147483648), -2793i, 2147483647i)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: i32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-740f, 1512f, 2179f))), vec3<f32>(-215f, -352f, 1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1722f, 1000f, -1324f))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1811f + -195f), 556f, _wgslsmith_f_op_f32(sign(-102f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-635f, -728f, -268f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1064f, 563f, 1442f) + vec3<f32>(-516f, -325f, -152f)))))));
    global1 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(firstTrailingBit(u_input.b.x << (0u % 32u)), 13164u), reverseBits(vec2<u32>(16780u, 1u)), vec2<u32>(~min(global2.x, global2.x), global0.x)), vec2<u32>(global1.b, abs(arg_0))), 8u)];
    global2 = vec2<u32>(_wgslsmith_sub_u32(countOneBits(8626u), global0.x), global1.b) << (~vec2<u32>(22626u, arg_0) % vec2<u32>(32u));
    var var_1 = vec4<i32>(~1i, global1.c.x, global1.c.x, global1.a);
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(40119u, ~(global0.x << (1u % 32u)) << (global0.x % 32u), 0u), 8u)];
    return ~vec2<u32>(var_2.b, arg_0);
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> vec4<f32> {
    var var_0 = _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(_wgslsmith_mult_u32(~(~11637u), ~_wgslsmith_dot_vec2_u32(global0.yz, u_input.b.xx)), 23265u, ~17124u));
    global0 = global3[_wgslsmith_index_u32(~24330u, 30u)];
    global3 = array<vec3<u32>, 30>();
    global1 = global4[_wgslsmith_index_u32(global2.x, 8u)];
    global2 = _wgslsmith_div_vec2_u32(select(vec2<u32>(0u, _wgslsmith_mod_u32(global2.x, u_input.b.x)) << (select(vec2<u32>(arg_1.x, global1.b) << (vec2<u32>(2185u, 16180u) % vec2<u32>(32u)), arg_1.yz, select(vec2<bool>(true, arg_0), vec2<bool>(false, false), false)) % vec2<u32>(32u)), firstLeadingBit(global0.xy), select(vec2<bool>(arg_0, false), vec2<bool>(any(vec2<bool>(arg_0, false)), !arg_0), arg_0)), func_3(4910u, reverseBits(~(u_input.a.x | global1.c.x))));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-212f - 345f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -576f) - 271f) - _wgslsmith_f_op_f32(f32(-1f) * -180f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-133f - _wgslsmith_f_op_f32(trunc(-290f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(848f, 223f, arg_0))) + _wgslsmith_f_op_f32(236f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1292f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -793f), -434f))));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: vec2<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 250f, arg_2, -820f) * vec4<f32>(484f, arg_0, 497f, -280f)), _wgslsmith_f_op_vec4_f32(func_2(true, vec3<u32>(u_input.b.x, global0.x, arg_3.x))), vec4<bool>(true, true, true, true))))));
    var var_1 = _wgslsmith_sub_vec2_u32(abs(vec2<u32>(~u_input.b.x, 6730u) & ~arg_3), reverseBits(~(~arg_3)));
    var var_2 = Struct_1(u_input.a.x, 4294967295u, vec4<i32>(min(_wgslsmith_dot_vec3_i32(global1.c.wzz, ~vec3<i32>(-44110i, 1i, u_input.a.x)), global1.c.x), firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_add_i32(-1i, global1.c.x), _wgslsmith_dot_vec3_i32(global1.c.yyw, vec3<i32>(u_input.a.x, 0i, -16327i)))), max(1i, -_wgslsmith_mult_i32(global1.c.x, global1.a)), -u_input.a.x));
    global2 = ~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(global0.x, u_input.b.x), firstTrailingBit(arg_3)) ^ ~(~global0.xy), (global0.yy << (vec2<u32>(global2.x, global0.x) % vec2<u32>(32u))) ^ vec2<u32>(min(4294967295u, 1u), 7956u));
    var var_3 = all(vec3<bool>(true, all(vec2<bool>(true, any(vec3<bool>(false, false, false)))), (_wgslsmith_div_u32(0u, global0.x) <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, global1.b, 4294967295u, var_1.x), vec4<u32>(var_1.x, 116806u, 0u, 45173u))) | ((-2147483647i << (u_input.b.x % 32u)) > u_input.a.x)));
    return vec3<bool>(any(vec2<bool>(u_input.a.x < ~var_2.a, !(172f < var_0.x))), true, arg_0 < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(!any(vec3<bool>(true, true, true)), true, all(vec3<bool>(true, false, true))), func_1(-654f, 1056f, 184f, _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(74472u, 4994u)), global0.zx, ~vec2<u32>(u_input.b.x, global0.x))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1860f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1195f, -622f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2137f))), countOneBits(vec2<u32>(0u, 4294967295u))));
    global1 = Struct_1(_wgslsmith_dot_vec2_i32(-u_input.a.zx, reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(0i, global1.a), vec2<i32>(57670i, global1.a))) ^ _wgslsmith_mod_vec2_i32(-global1.c.yy, vec2<i32>(u_input.a.x, u_input.a.x))), 4294967295u, min(u_input.a, -u_input.a | vec4<i32>(global1.c.x, u_input.a.x, 2147483647i, u_input.a.x)) << (_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, 1u) ^ vec4<u32>(8793u, u_input.b.x, 10454u, 49140u), reverseBits(vec4<u32>(global0.x, 4294967295u, u_input.b.x, 0u))), vec4<u32>(u_input.b.x, 18727u, 50200u, 36847u) << (vec4<u32>(u_input.b.x, 37543u, global1.b, global2.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global1 = global4[_wgslsmith_index_u32(54669u, 8u)];
    global4 = array<Struct_1, 8>();
    var var_1 = -u_input.a;
    let var_2 = 0i;
    global3 = array<vec3<u32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, firstTrailingBit(~_wgslsmith_clamp_u32(global2.x, 4294967295u, 4294967295u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -136f))))), ~firstLeadingBit(vec4<u32>(_wgslsmith_sub_u32(4294967295u, 0u), ~1283u, _wgslsmith_sub_u32(global0.x, 4294967295u), _wgslsmith_add_u32(10232u, global1.b))), u_input.a.x);
}

