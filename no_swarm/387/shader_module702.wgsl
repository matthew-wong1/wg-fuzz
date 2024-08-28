struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: f32 = -1741f;

var<private> global2: array<f32, 28>;

var<private> global3: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(72986u, 0u, 4294967295u, 29650u), vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(0u, 11058u, 6700u, 4294967295u), vec4<u32>(57884u, 23694u, 68841u, 0u), vec4<u32>(54207u, 4294967295u, 1u, 35075u), vec4<u32>(50943u, 0u, 0u, 111488u), vec4<u32>(4294967295u, 36396u, 61551u, 45227u), vec4<u32>(97691u, 1u, 4294967295u, 0u), vec4<u32>(39046u, 4924u, 4294967295u, 4294967295u), vec4<u32>(4400u, 1u, 41211u, 4294967295u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: u32) -> bool {
    return true;
}

fn func_3() -> vec3<bool> {
    global1 = 469f;
    global3 = array<vec4<u32>, 11>();
    var var_0 = any(!vec2<bool>(true, func_1(Struct_2(vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], global2[_wgslsmith_index_u32(0u, 28u)]), -2147483647i, vec3<i32>(1i, 0i, 0i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 28u)], 245f)), 0u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(u_input.b.x, 28u)]))))))));
    let var_2 = _wgslsmith_f_op_f32(-552f * global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_add_u32(43307u, u_input.a ^ u_input.a) >> (firstLeadingBit(u_input.b.x) % 32u)), 28u)]);
    return select(!(!vec3<bool>(var_1.x == var_1.x, all(vec4<bool>(true, true, true, true)), 25045u > u_input.a)), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true))), select(vec3<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), true), select(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true))));
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_2 {
    var var_0 = u_input.b.wzw;
    var var_1 = _wgslsmith_div_u32(~(~select(reverseBits(arg_0), ~arg_0, true)), arg_0);
    let var_2 = !(!func_3());
    let var_3 = Struct_4(_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(1i, min(-75116i, 1i))), _wgslsmith_clamp_vec2_i32(~vec2<i32>(1i, -1i), -vec2<i32>(2147483647i, -56286i), min(vec2<i32>(-39409i, 2147483647i), vec2<i32>(-2147483647i, -1i))) << (var_0.yy % vec2<u32>(32u))), -reverseBits(-select(vec3<i32>(1i, -13837i, -1i), vec3<i32>(-1i, 37001i, 27081i), var_2.x)));
    return Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 2025f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1, arg_1), vec2<f32>(-794f, arg_1)))))), 1i, ~vec3<i32>(var_3.b.x, _wgslsmith_add_i32(4379i, var_3.b.x), 2147483647i));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> bool {
    global1 = _wgslsmith_f_op_f32(min(-111f, _wgslsmith_div_f32(-433f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -580f)))));
    let var_0 = Struct_3(Struct_1(select(vec2<i32>(_wgslsmith_mod_i32(1i, 30189i), ~(-13768i)), -vec2<i32>(-15613i, arg_1.b), func_3().yy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, 128f)))), -abs(arg_1.c.yy) | -_wgslsmith_mod_vec2_i32(arg_1.c.zz, vec2<i32>(arg_1.b, 0i)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(0u, 28u)], arg_1.a.x, -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-581f, 645f, global2[_wgslsmith_index_u32(82459u, 28u)])), func_3()))))), select(-vec4<i32>(arg_1.b, arg_1.c.x, -1i, 32392i), abs(-_wgslsmith_div_vec4_i32(vec4<i32>(-7334i, 2147483647i, arg_1.c.x, -48399i), vec4<i32>(arg_1.b, 1i, 34732i, arg_1.c.x))), select(vec4<bool>(true, any(vec3<bool>(true, false, false)), all(vec4<bool>(false, true, true, false)), true), vec4<bool>(select(true, false, false), false, global2[_wgslsmith_index_u32(u_input.a, 28u)] >= -451f, true), false)));
    let var_1 = -15215i;
    let var_2 = true;
    let var_3 = select(vec2<bool>(var_2 & true, any(!select(vec2<bool>(var_2, true), vec2<bool>(true, var_2), var_2))), !vec2<bool>(var_2, arg_1.a.x > -319f), func_3().zy);
    return var_2;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1238f, global2[_wgslsmith_index_u32(3276u, 28u)]) + 1144f) * arg_3.a.x))) - _wgslsmith_f_op_f32(-arg_3.a.x));
    let var_1 = vec3<bool>(true, arg_0.x, false);
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2026f + var_0), _wgslsmith_f_op_f32(arg_3.a.x - 1133f)))), arg_1.a.b, ~max(~0u, u_input.a) >= _wgslsmith_dot_vec3_u32(~(~vec3<u32>(56209u, 56127u, u_input.b.x)), u_input.b.wzz)));
    var var_2 = !vec4<bool>(true, true, func_1(arg_3, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, arg_1.a.b), vec2<f32>(253f, 1128f)))), _wgslsmith_mod_u32(23586u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(237f, global2[_wgslsmith_index_u32(4294967295u, 28u)], var_1.x)))));
    let var_3 = arg_3.b;
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false)), !vec4<bool>(true, true, select(false, true, true), func_1(Struct_2(vec2<f32>(global2[_wgslsmith_index_u32(950u, 28u)], global2[_wgslsmith_index_u32(105470u, 28u)]), -31944i, vec3<i32>(-1i, -2147483647i, 0i)), vec2<f32>(2832f, -2238f), u_input.a)), !func_4(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-950f, 224f, global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)]))), func_2(u_input.a, -1984f))), Struct_3(Struct_1(reverseBits(vec2<i32>(2147483647i, -23710i)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, 30038u, u_input.a), 28u)], vec2<i32>(1i, -1552i), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(0u, 28u)], 926f) - vec3<f32>(498f, -891f, global2[_wgslsmith_index_u32(39919u, 28u)]))))), vec4<i32>(_wgslsmith_mod_i32(12127i, 1i), -1i, firstTrailingBit(4837i << (1u % 32u)), -1i)), u_input.b.xwx & (u_input.b.zxy | ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(29643u, u_input.b.x, 0u))), func_2(_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, countOneBits(u_input.a)), ~u_input.a), 834f));
    var var_1 = true;
    let var_2 = _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(-51799i, var_0.c.x, var_0.c.x)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(37644i, var_0.a.x, var_0.a.x) ^ (vec3<i32>(2147483647i, var_0.a.x, -1i) | vec3<i32>(-7360i, var_0.a.x, var_0.c.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.a, var_0.c), func_5(vec4<bool>(true, true, false, true), Struct_3(Struct_1(vec2<i32>(var_0.c.x, 8363i), -541f, vec2<i32>(var_0.c.x, -2147483647i), vec3<f32>(global2[_wgslsmith_index_u32(47788u, 28u)], global2[_wgslsmith_index_u32(1u, 28u)], var_0.d.x)), vec4<i32>(-2147483647i, var_0.a.x, 3898i, -1i)), u_input.b.wyw, Struct_2(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(0u, 28u)]), var_0.c.x, vec3<i32>(var_0.a.x, -65406i, 2147483647i))).c.x, 0i), select(~vec3<i32>(var_0.c.x, 1i, -2587i), vec3<i32>(1i, 1i, var_0.c.x), true))) != abs(func_2(u_input.a, var_0.d.x).c.x);
    global3 = array<vec4<u32>, 11>();
    let var_3 = ~(~vec4<u32>(u_input.b.x, ~79615u, u_input.a, reverseBits(u_input.b.x)) >> (vec4<u32>(u_input.b.x, reverseBits(~u_input.b.x), ~u_input.b.x, ~16366u) % vec4<u32>(32u)));
    var var_4 = var_0.a;
    var var_5 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.zyy, u_input.b.wxz, _wgslsmith_div_vec3_u32(select(u_input.b.zxx, ~reverseBits(u_input.b.xzw), func_3()), var_3.zyx), select(~(-_wgslsmith_div_vec2_i32(vec2<i32>(var_0.a.x, 2147483647i), var_0.c)), vec2<i32>(func_5(select(vec4<bool>(true, var_2, var_2, false), vec4<bool>(var_2, false, var_2, var_2), vec4<bool>(false, true, false, false)), Struct_3(Struct_1(var_0.c, var_5.x, var_0.a, vec3<f32>(671f, -1957f, -794f)), vec4<i32>(var_4.x, 33753i, 2147483647i, var_0.c.x)), vec3<u32>(45439u, 67169u, var_3.x) & u_input.b.zyz, Struct_2(vec2<f32>(var_5.x, var_0.b), 0i, vec3<i32>(0i, var_4.x, 1i))).c.x, ~36294i | -var_0.a.x), true), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(62328u, u_input.a) << (u_input.b.xw % vec2<u32>(32u)), vec2<u32>(4294967295u, 48854u)), firstLeadingBit(u_input.b.x)), 42690u, var_3.x, _wgslsmith_add_u32(max(u_input.a << (1u % 32u), u_input.b.x), 29253u)));
}

