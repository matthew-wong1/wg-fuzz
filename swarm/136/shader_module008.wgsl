struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_1, 31>;

var<private> global3: array<vec4<f32>, 10>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    var var_0 = vec4<u32>(~u_input.c.x, ~_wgslsmith_mod_u32(u_input.c.x, reverseBits(12297u)), 1u, u_input.c.x);
    let var_1 = Struct_4(~(~firstTrailingBit(vec4<u32>(2345u, 1u, 4377u, 36239u))), Struct_2(~arg_0.c.a));
    global2 = array<Struct_1, 31>();
    global3 = array<vec4<f32>, 10>();
    let var_2 = var_0.x;
    return all(global1.ywy);
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_4(max(abs(_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.c.x, 1u, 35540u, u_input.d.x), vec4<u32>(u_input.c.x, u_input.d.x, u_input.d.x, 0u), global0[_wgslsmith_index_u32(1u, 9u)]), vec4<u32>(u_input.d.x, u_input.d.x, u_input.c.x, 1u))), abs(abs(vec4<u32>(22719u, u_input.d.x, u_input.d.x, u_input.c.x)) >> (~vec4<u32>(u_input.d.x, 4294967295u, u_input.c.x, 94u) % vec4<u32>(32u)))), Struct_2(vec4<i32>(~1463i, ~firstLeadingBit(u_input.b.x), u_input.a.x, -21042i)));
    let var_1 = Struct_4(select(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.d.x, 0u, 5746u, 5315u)), _wgslsmith_clamp_vec4_u32(var_0.a, var_0.a, vec4<u32>(57902u, 1u, 13706u, var_0.a.x))) | ~max(var_0.a, var_0.a), vec4<u32>(u_input.d.x, u_input.d.x, ~(0u | u_input.c.x), 0u), vec4<bool>(global0[_wgslsmith_index_u32(~abs(0u), 9u)], ~14112u > ~var_0.a.x, global1.x, 8647i != var_0.b.a.x)), Struct_2(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, -41491i, u_input.b.x), var_0.b.a), _wgslsmith_add_i32(u_input.a.x, u_input.b.x), 1i, u_input.b.x)));
    global0 = array<bool, 9>();
    global2 = array<Struct_1, 31>();
    var var_2 = global2[_wgslsmith_index_u32(~var_1.a.x, 31u)];
    return vec4<f32>(var_2.c.x, var_2.c.x, _wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(ceil(var_2.c.x)));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> vec2<i32> {
    var var_0 = global3[_wgslsmith_index_u32(u_input.c.x, 10u)];
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-179f, _wgslsmith_f_op_f32(1675f * 707f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(345f, _wgslsmith_f_op_f32(f32(-1f) * -240f)))), _wgslsmith_f_op_f32(var_0.x * var_0.x)) * _wgslsmith_f_op_vec4_f32(func_3()));
    var var_1 = -311f;
    return countOneBits(-arg_1.a.wy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(global1.yz, vec2<bool>(!global0[_wgslsmith_index_u32(1u, 9u)], !func_1(Struct_3(-369f, vec2<i32>(u_input.a.x, -1i), Struct_2(vec4<i32>(2147483647i, u_input.a.x, 46276i, 0i))), u_input.a.x, Struct_3(1478f, u_input.b.yy, Struct_2(vec4<i32>(u_input.a.x, 27580i, u_input.a.x, -1i))), global2[_wgslsmith_index_u32(7815u, 31u)])), global0[_wgslsmith_index_u32(u_input.d.x << (u_input.d.x % 32u), 9u)]), select(vec2<bool>(false, false), select(select(vec2<bool>(global1.x, global1.x), select(global1.wx, vec2<bool>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(83756u, 9u)]), global0[_wgslsmith_index_u32(3233u, 9u)]), !global1.xz), !select(global1.yz, global1.ww, global1.yz), select(global1.xx, global1.wz, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(57758u, 28301u), 9u)])), func_1(Struct_3(_wgslsmith_f_op_f32(-117f * 1104f), func_2(false, Struct_2(vec4<i32>(u_input.b.x, -1i, -43287i, u_input.a.x)), 4294967295u), Struct_2(vec4<i32>(2147483647i, 20309i, -69181i, 1i))), -select(u_input.b.x, u_input.a.x, true), Struct_3(_wgslsmith_f_op_f32(round(-331f)), u_input.a.zy, Struct_2(vec4<i32>(u_input.b.x, u_input.a.x, 1i, 2147483647i))), Struct_1(vec3<i32>(7393i, 1i, -19081i), global1.zw, vec4<f32>(-426f, 1000f, -1148f, 498f)))), global0[_wgslsmith_index_u32(~u_input.c.x, 9u)]);
    var var_1 = select(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(1u, u_input.c.x, u_input.d.x), ~u_input.c.x) << (~abs(vec2<u32>(17107u, 12215u)) % vec2<u32>(32u)), ~u_input.d.yy, max(u_input.d.xy, ~u_input.d.xz)), vec2<u32>(u_input.d.x << (_wgslsmith_mod_u32(~u_input.d.x, u_input.c.x) % 32u), firstTrailingBit(~u_input.c.x)), !select(select(vec2<bool>(false, global1.x), vec2<bool>(true, global1.x), select(global1.wy, global1.xz, global1.wx)), vec2<bool>(true, true || global0[_wgslsmith_index_u32(u_input.c.x, 9u)]), select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, global1.x), u_input.a.x > u_input.b.x)));
    var var_2 = global2[_wgslsmith_index_u32(11295u, 31u)];
    var var_3 = Struct_2(vec4<i32>(0i, _wgslsmith_sub_i32(min(select(19099i, 2147483647i, true), func_2(true, Struct_2(vec4<i32>(var_2.a.x, var_2.a.x, 4796i, u_input.b.x)), var_1.x).x), ~(-2568i)), var_2.a.x, 14588i));
    var_3 = Struct_2(-countOneBits(-_wgslsmith_mult_vec4_i32(var_3.a, var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_2.c.zxy)), var_2.c.yzz))));
}

