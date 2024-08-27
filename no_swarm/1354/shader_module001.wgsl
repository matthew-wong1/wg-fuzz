struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: array<f32, 26> = array<f32, 26>(-986f, 1450f, -526f, -768f, 731f, -399f, 1612f, -1368f, -241f, -562f, 860f, -1000f, 1473f, -1686f, 744f, -246f, -233f, 478f, -452f, 638f, -601f, -1033f, -291f, -759f, 1000f, -1108f);

var<private> global2: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<i32> {
    var var_0 = 106292u;
    global0 = array<f32, 12>();
    let var_1 = min(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.a, 18802i, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -5527i), vec4<i32>(-11211i, 17575i, u_input.a, u_input.a)))) | -_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -2147483647i, 2147483647i, -1i), vec4<i32>(35395i, 1i, u_input.a, u_input.a)), firstTrailingBit(vec4<i32>(301i, u_input.a, 0i, 2147483647i))), min(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(2147483647i, 0i, -2147483647i, u_input.a)), vec4<i32>(-19082i, u_input.a, u_input.a, -2147483647i) >> (u_input.b % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.c, u_input.c, 0u), ~u_input.b) % vec4<u32>(32u)), vec4<i32>(u_input.a, _wgslsmith_sub_i32(~57220i, abs(u_input.a)), 1i | ~u_input.a, reverseBits(u_input.a))));
    var var_2 = Struct_2(select(vec4<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true))), true, true, !any(vec4<bool>(false, true, true, false))), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), all(vec2<bool>(all(vec3<bool>(true, false, true)), global0[_wgslsmith_index_u32(0u, 12u)] <= -433f))), 1u, ~vec4<i32>(u_input.a, ~_wgslsmith_div_i32(var_1.x, var_1.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(69891i, 35060i), var_1.wz), ~var_1.x), ~1i));
    let var_3 = ~24341u & _wgslsmith_div_u32(~u_input.b.x, min(21894u, ~u_input.d));
    return select(vec4<i32>(firstTrailingBit(i32(-1i) * -54155i), ~(~(-27335i)) | _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, var_2.c.x, 51845i), firstTrailingBit(var_1.www)), -31278i, _wgslsmith_mod_i32(u_input.a, var_1.x)), vec4<i32>(reverseBits(var_1.x), _wgslsmith_mod_i32(min(~(-2147483647i), ~var_1.x), ~0i << (max(u_input.b.x, 49600u) % 32u)), var_1.x, -(~firstLeadingBit(var_1.x))), any(select(!var_2.a.xzz, vec3<bool>(true, var_2.a.x, true), var_2.a.x)));
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_2 {
    var var_0 = Struct_1(4294967295u);
    global0 = array<f32, 12>();
    global2 = u_input.a;
    let var_1 = Struct_2(vec4<bool>((-u_input.a & u_input.a) != u_input.a, true, true, true), ~countOneBits(~42988u), func_3());
    var var_2 = Struct_2(select(var_1.a, select(vec4<bool>(false, var_1.a.x, true | arg_1, all(var_1.a.xyy)), select(!vec4<bool>(true, false, var_1.a.x, var_1.a.x), !var_1.a, !arg_1), true), arg_1 || var_1.a.x), abs(var_1.b), firstTrailingBit(var_1.c));
    return var_1;
}

fn func_1() -> Struct_2 {
    global1 = array<f32, 26>();
    var var_0 = func_2(61967u, !all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.b.x, 12u)] >= 553f)));
    global1 = array<f32, 26>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1485f, -1691f))) + global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(48688u, 37427u), 12u)]));
    var var_2 = Struct_2(!vec4<bool>(false, true, !var_0.a.x | var_0.a.x, true), _wgslsmith_sub_u32(var_0.b, ~_wgslsmith_mult_u32(4294967295u, u_input.e.x) << (_wgslsmith_add_u32(1u, ~4294967295u) % 32u)), -_wgslsmith_sub_vec4_i32(countOneBits(var_0.c), var_0.c));
    return Struct_2(vec4<bool>(!(!var_0.a.x), all(!select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), var_2.a.xxy, vec3<bool>(var_2.a.x, true, var_2.a.x))), var_0.a.x, var_2.a.x), _wgslsmith_sub_u32(_wgslsmith_mod_u32(~_wgslsmith_div_u32(var_2.b, 22852u), ~(0u << (0u % 32u))), u_input.b.x), vec4<i32>(u_input.a, ~(~1662i), 0i, -2147483647i) >> (u_input.b % vec4<u32>(32u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(1382f - _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(~arg_2.b, 26u)], global1[_wgslsmith_index_u32(~1u >> (_wgslsmith_mult_u32(_wgslsmith_div_u32(1277u, 18346u), select(u_input.d, arg_2.b, false)) % 32u), 26u)])));
    let var_1 = ~select(~vec2<u32>(36191u, u_input.d), abs(_wgslsmith_clamp_vec2_u32(u_input.e, u_input.e | u_input.e, firstLeadingBit(u_input.b.yy))), true);
    let var_2 = arg_2.a.xxz;
    var var_3 = true;
    var var_4 = Struct_1(_wgslsmith_mult_u32(arg_2.b, 90281u));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 0i;
    var var_0 = _wgslsmith_f_op_f32(-1951f + 905f);
    let var_1 = func_4(vec4<bool>(true, ~u_input.b.x <= ~countOneBits(u_input.b.x), true, all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false))))), _wgslsmith_add_vec2_i32((~vec2<i32>(u_input.a, 10457i) << (vec2<u32>(u_input.c, u_input.d) % vec2<u32>(32u))) & max(vec2<i32>(2147483647i, 26874i), countOneBits(vec2<i32>(u_input.a, u_input.a))), abs(-_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -6470i), vec2<i32>(u_input.a, -16320i)))), func_1(), Struct_2(vec4<bool>(~2689u >= _wgslsmith_sub_u32(u_input.e.x, 18046u), all(func_1().a.zyy), false, select(true, true, true)), 17206u, ~(~reverseBits(vec4<i32>(u_input.a, u_input.a, -1i, u_input.a)))));
    var var_2 = var_1.c;
    let var_3 = Struct_1(~_wgslsmith_dot_vec4_u32(u_input.b, abs(vec4<u32>(u_input.e.x, var_1.b, 7528u, 0u))) >> (~(~(var_1.b | 16127u)) % 32u));
    var var_4 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.a | -9829i, 22109i), func_3().xyz), abs(_wgslsmith_sub_vec3_i32(var_1.c.zwx, var_2.xxz) >> (abs(u_input.b.xwy) % vec3<u32>(32u))));
    let var_5 = vec3<u32>(1u, ~min(func_4(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), var_2.yz & vec2<i32>(u_input.a, u_input.a), Struct_2(vec4<bool>(var_1.a.x, true, false, true), u_input.b.x, var_1.c), func_4(var_1.a, var_2.yx, Struct_2(vec4<bool>(true, var_1.a.x, true, false), var_3.a, vec4<i32>(0i, var_2.x, var_1.c.x, 7715i)), var_1)).b, _wgslsmith_sub_u32(select(0u, 14188u, false), 4294967295u)), 7272u);
    var var_6 = func_4(!vec4<bool>(var_1.a.x, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.d, var_5.x, 2585u, u_input.e.x)) < 4294967295u, !func_4(var_1.a, vec2<i32>(u_input.a, var_1.c.x), var_1, Struct_2(var_1.a, u_input.e.x, var_1.c)).a.x, !all(var_1.a.wyw)), -func_2(26411u, var_1.a.x).c.zx, Struct_2(!vec4<bool>(true, any(var_1.a), var_5.x == var_1.b, true), reverseBits(4294967295u), _wgslsmith_mult_vec4_i32(-var_1.c | vec4<i32>(0i, var_2.x, -2147483647i, u_input.a), -(vec4<i32>(var_2.x, var_2.x, var_1.c.x, u_input.a) ^ vec4<i32>(var_1.c.x, 22579i, 15945i, -5559i)))), Struct_2(!(!select(var_1.a, var_1.a, false)), 1u, _wgslsmith_add_vec4_i32(var_1.c ^ var_1.c, _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(var_1.c, var_1.c), vec4<i32>(var_2.x, var_2.x, -1i, var_2.x) ^ vec4<i32>(u_input.a, 1i, 0i, -3209i))))).a.yxw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(var_5.x, 26u)], global1[_wgslsmith_index_u32(var_5.x, 26u)]), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(111026u, 12u)], -1832f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 12u)], 544f, 429f)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(820f, global1[_wgslsmith_index_u32(var_1.b, 26u)], global1[_wgslsmith_index_u32(1u, 26u)]))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_1.c.x, -2147483647i), var_1.c.x, reverseBits(var_1.c.x), max(50472i, u_input.a)) ^ var_1.c, vec4<i32>(var_1.c.x, 3172i, ~countOneBits(4087i), var_2.x)), _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(var_1.b, 1u, var_3.a, var_5.x)), ~abs(u_input.b)) ^ _wgslsmith_clamp_u32(1u, ~(u_input.c & 15015u), var_3.a));
}

