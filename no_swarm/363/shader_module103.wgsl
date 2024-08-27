struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global1: array<u32, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_4) -> f32 {
    var var_0 = select(!select(arg_2.b.c.wzy, vec3<bool>(any(arg_2.b.c), !arg_2.b.e.x, !global0.x), any(select(vec4<bool>(arg_2.b.e.x, false, false, false), arg_2.b.e, true))), !(!vec3<bool>(global0.x, true, true)), all(arg_2.b.c.wyx));
    global1 = array<u32, 12>();
    var_0 = vec3<bool>(all(!var_0.yx), !var_0.x, !all(arg_2.b.e));
    global1 = array<u32, 12>();
    var_0 = select(global0.zzy, global0.zxx, select(vec3<bool>(true, true, !(arg_0.a.x != arg_2.b.b)), arg_2.b.c.wzy, !(!vec3<bool>(false, global0.x, true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -536f)));
}

fn func_2() -> i32 {
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2022f * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -465f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(vec4<f32>(2454f, 1000f, 921f, -894f), Struct_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 12u)], 12u)], 12u)], 12u)], 217f, vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<u32>(15601u, global1[_wgslsmith_index_u32(60489u, 12u)], 12355u, 0u), vec4<bool>(false, global0.x, false, global0.x))), vec2<f32>(150f, 905f), Struct_4(vec4<f32>(986f, -1000f, -1271f, -611f), Struct_1(u_input.c, 814f, vec4<bool>(false, false, false, false), vec4<u32>(0u, u_input.a.x, u_input.b, global1[_wgslsmith_index_u32(25470u, 12u)]), vec4<bool>(global0.x, false, false, global0.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -1050f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-877f, 1093f) * -849f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -366f))))), Struct_1(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1315f * 524f)) + -529f), select(!(!vec4<bool>(global0.x, false, false, global0.x)), select(select(vec4<bool>(true, true, global0.x, false), vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(false, global0.x, false, global0.x)), vec4<bool>(global0.x, global0.x, global0.x, true), select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(true, true, global0.x, false), false)), vec4<bool>(true, false, global0.x == global0.x, select(false, true, false))), _wgslsmith_div_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(8207u, 12u)], u_input.a.x, 81815u, 32989u), ~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56917u, 12u)], 12u)], 22590u, 33828u, 139050u)) << (countOneBits(vec4<u32>(0u, u_input.b, 108076u, 1032u)) % vec4<u32>(32u)), !(!select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, true, true, global0.x), vec4<bool>(true, false, global0.x, false)))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_sub_u32(var_0.b.d.x, _wgslsmith_add_u32(max(1u, var_0.b.a), var_0.b.a & 113550u)), -660f, !var_0.b.c, vec4<u32>(~(~u_input.b), _wgslsmith_dot_vec2_u32(var_0.b.d.yz, u_input.a) & _wgslsmith_add_u32(u_input.c, 0u), u_input.c, u_input.a.x), vec4<bool>(false, firstTrailingBit(2147483647i) != u_input.e, true, select(false | var_0.b.e.x, true, true))), Struct_2(Struct_1(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(var_0.a, var_0.b), vec2<f32>(var_0.a.x, 131f), Struct_4(vec4<f32>(230f, var_0.b.b, -592f, var_0.b.b), Struct_1(49618u, 577f, var_0.b.e, var_0.b.d, vec4<bool>(global0.x, global0.x, false, true)))))), select(vec4<bool>(var_0.b.c.x, false, global0.x, true), !vec4<bool>(var_0.b.e.x, global0.x, var_0.b.c.x, var_0.b.c.x), var_0.b.e), select(~var_0.b.d, vec4<u32>(u_input.a.x, 32192u, global1[_wgslsmith_index_u32(90787u, 12u)], 26894u) << (vec4<u32>(19061u, u_input.b, u_input.c, var_0.b.a) % vec4<u32>(32u)), vec4<bool>(global0.x, global0.x, global0.x, false)), !var_0.b.e)), !all(select(var_0.b.e, vec4<bool>(true, global0.x, global0.x, var_0.b.e.x), var_0.b.e.x)));
    var var_2 = _wgslsmith_dot_vec4_i32(countOneBits(max(vec4<i32>(u_input.e, -77654i, 38175i, 2147483647i) | max(vec4<i32>(u_input.e, -52145i, 1111i, u_input.d), vec4<i32>(u_input.e, 1i, 1i, u_input.d)), vec4<i32>(-23675i, 2147483647i, _wgslsmith_clamp_i32(0i, u_input.e, u_input.e), u_input.e))), vec4<i32>(-40206i, i32(-1i) * -(68481i << (var_1.b.a.d.x % 32u)), u_input.d, _wgslsmith_sub_i32(u_input.d, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, -21711i), vec2<i32>(-5353i, -2095i)))));
    let var_3 = Struct_1(~0u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a.b + 1f))), var_1.a.e, _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), var_1.a.d.x, ~(~var_1.a.d.x), 0u), var_0.b.d, _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 22723u, var_0.b.a, 0u), var_0.b.d)), vec4<bool>(true, true, var_0.b.a <= 33033u, true));
    let var_4 = var_0.b;
    return _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d ^ -1i, _wgslsmith_add_i32(-2147483647i, 2147483647i)), vec2<i32>(u_input.e, -22224i)) >> (~abs(~(~var_1.b.a.a)) % 32u);
}

fn func_1() -> Struct_5 {
    let var_0 = _wgslsmith_div_vec4_i32(~vec4<i32>(func_2(), u_input.d, -62225i, 10288i ^ u_input.e) & _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.e, u_input.d, u_input.d, u_input.e), vec4<i32>(u_input.e, 2147483647i, u_input.e, -2147483647i)), firstTrailingBit(abs(vec4<i32>(u_input.d, -2707i, 17710i, u_input.e)))), firstLeadingBit(vec4<i32>(~_wgslsmith_div_i32(2147483647i, u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(10634i, 32135i, -2147483647i, -9198i), _wgslsmith_add_vec4_i32(vec4<i32>(22471i, -30091i, 1i, -18367i), vec4<i32>(49592i, u_input.d, 1i, 0i))), ~abs(0i), u_input.d)));
    global1 = array<u32, 12>();
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    var var_2 = 615f;
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_div_f32(820f, -1046f), _wgslsmith_f_op_f32(var_1.x - 1356f), var_1.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-452f, var_1.x, 243f, var_1.x))))))), Struct_1(~(~_wgslsmith_sub_u32(9487u, 1u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(var_1.x)))), vec4<bool>(global0.x, all(vec2<bool>(global0.x, global0.x)), all(!vec3<bool>(global0.x, true, false)), false || !global0.x), vec4<u32>(4294967295u, ~abs(u_input.c), ~4294967295u, 4294967295u), select(!(!vec4<bool>(false, false, true, global0.x)), vec4<bool>(false, global0.x, false, global0.x), select(select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x)), !vec4<bool>(global0.x, false, global0.x, false), !vec4<bool>(global0.x, true, global0.x, false)))));
    return Struct_5(var_3, ~var_0 ^ abs(vec4<i32>(0i, var_0.x, var_0.x, var_0.x)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: bool, arg_3: vec4<bool>) -> vec4<bool> {
    var var_0 = arg_1.a;
    var var_1 = func_1();
    let var_2 = ~_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_1.a.b.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 35782u, 29618u), vec3<u32>(12988u, var_0.b.d.x, global1[_wgslsmith_index_u32(var_0.b.d.x, 12u)]))), ~(~(~vec2<u32>(var_1.a.b.d.x, 20302u))));
    var var_3 = func_1().a.b;
    let var_4 = arg_3.x;
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!select(func_4(vec4<bool>(true, global0.x, global0.x, true), func_1(), false, func_1().a.b.c), vec4<bool>(global0.x, global0.x | false, global1[_wgslsmith_index_u32(26028u, 12u)] < u_input.a.x, any(vec3<bool>(false, global0.x, true))), func_4(func_4(vec4<bool>(global0.x, true, global0.x, true), Struct_5(Struct_4(vec4<f32>(-942f, -1594f, -1341f, 299f), Struct_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)], -706f, vec4<bool>(global0.x, true, true, global0.x), vec4<u32>(1u, 13214u, 1u, u_input.a.x), vec4<bool>(global0.x, false, false, global0.x))), vec4<i32>(u_input.e, u_input.e, u_input.d, u_input.e)), global0.x, vec4<bool>(false, global0.x, false, global0.x)), func_1(), global0.x, select(vec4<bool>(false, global0.x, false, false), vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(false, global0.x, global0.x, false)))), !select(vec4<bool>(any(vec4<bool>(true, global0.x, false, true)), global0.x, true, all(global0.xy)), vec4<bool>(false, true, true, true), !vec4<bool>(global0.x, global0.x, true, global0.x)), vec4<bool>(true, any(vec3<bool>(global0.x, !global0.x, false || global0.x)), all(func_1().a.b.e), any(select(vec3<bool>(false, true, true), global0.wzz, !global0.ywy))));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2006f + -730f)))) + 649f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-299f * _wgslsmith_div_f32(-745f, 2126f)))));
    global1 = array<u32, 12>();
    global1 = array<u32, 12>();
    var var_1 = _wgslsmith_mod_u32(25527u, _wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 12u)], 30568u), vec3<u32>(47520u, 0u, global1[_wgslsmith_index_u32(u_input.b, 12u)]))), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.b, 0u), vec3<u32>(u_input.b, u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36491u, 12u)], 12u)])) ^ vec3<u32>(min(4294967295u, global1[_wgslsmith_index_u32(u_input.b, 12u)]), _wgslsmith_div_u32(u_input.c, 14355u), global1[_wgslsmith_index_u32(1u, 12u)])));
    var var_2 = all(global0.xz);
    var var_3 = func_1().a.b.d.xxz;
    var var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1034f, var_0.x, 1396f, var_0.x) * vec4<f32>(var_0.x, var_0.x, -966f, var_0.x))))), Struct_1(_wgslsmith_mod_u32(~(~var_3.x), u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -1941f)), select(!(!vec4<bool>(global0.x, true, true, global0.x)), !(!vec4<bool>(false, global0.x, false, false)), false), countOneBits(vec4<u32>(36446u, global1[_wgslsmith_index_u32(4294967295u, 12u)], u_input.a.x, var_3.x) ^ select(vec4<u32>(29825u, var_3.x, global1[_wgslsmith_index_u32(0u, 12u)], u_input.c), vec4<u32>(global1[_wgslsmith_index_u32(var_3.x, 12u)], var_3.x, 9799u, var_3.x), vec4<bool>(false, false, global0.x, false))), select(vec4<bool>(global0.x, false, true, all(vec4<bool>(false, global0.x, false, false))), vec4<bool>(all(vec4<bool>(false, global0.x, true, global0.x)), false, false, !global0.x), select(!vec4<bool>(global0.x, false, false, false), vec4<bool>(true, true, global0.x, global0.x), global0.x))));
    var_2 = !(_wgslsmith_f_op_f32(-var_0.x) > var_4.b.b) && select(all(!func_4(vec4<bool>(var_4.b.e.x, false, true, false), Struct_5(Struct_4(var_4.a, Struct_1(89714u, var_4.b.b, var_4.b.c, var_4.b.d, vec4<bool>(var_4.b.c.x, true, false, global0.x))), vec4<i32>(u_input.d, u_input.e, u_input.e, u_input.d)), true, vec4<bool>(true, true, global0.x, false)).yw), true, var_4.b.a == var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(2132f);
}

