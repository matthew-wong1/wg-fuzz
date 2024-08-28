struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-12292i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(0i, -157i), vec2<i32>(-1i, -1i), vec2<i32>(4642i, 17005i), vec2<i32>(-60240i, -14888i), vec2<i32>(0i, -36552i), vec2<i32>(1i, 15800i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, -31871i), vec2<i32>(i32(-2147483648), -10348i), vec2<i32>(53312i, 48517i), vec2<i32>(-1i, 0i), vec2<i32>(-30762i, 2147483647i), vec2<i32>(0i, 1i), vec2<i32>(0i, 1053i), vec2<i32>(-1i, -20256i), vec2<i32>(42419i, 13967i), vec2<i32>(-40408i, 0i), vec2<i32>(-4188i, -8530i), vec2<i32>(19814i, -11061i), vec2<i32>(-6670i, 2147483647i), vec2<i32>(0i, -601i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-28237i, 7178i));

var<private> global2: Struct_1;

var<private> global3: u32;

var<private> global4: vec2<u32> = vec2<u32>(8137u, 23758u);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec2<u32>) -> Struct_5 {
    let var_0 = global2.d;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(259f, _wgslsmith_f_op_f32(-178f - _wgslsmith_f_op_f32(f32(-1f) * -545f)))));
    global4 = vec2<u32>(global2.d, arg_0.x);
    var var_2 = global4.x;
    let var_3 = reverseBits(0i);
    return Struct_5(Struct_4(select(any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), false, true), true));
}

fn func_3(arg_0: Struct_5, arg_1: f32) -> f32 {
    var var_0 = reverseBits(select(global2.b, firstTrailingBit(global2.b), !select(vec2<bool>(arg_0.a.a, false), vec2<bool>(arg_0.a.b, true), vec2<bool>(arg_0.a.a, true))) << ((select(u_input.b, _wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(7749u, 36864u)), all(vec3<bool>(true, false, false))) ^ ~u_input.b) % vec2<u32>(32u)));
    var var_1 = !any(!select(select(vec2<bool>(arg_0.a.b, false), vec2<bool>(arg_0.a.a, true), true), select(vec2<bool>(arg_0.a.b, true), vec2<bool>(true, arg_0.a.a), vec2<bool>(true, arg_0.a.a)), true));
    global1 = array<vec2<i32>, 26>();
    let var_2 = func_2(vec2<u32>(countOneBits(firstLeadingBit(8601u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(21719u, 1u, 0u, 24411u), vec4<u32>(u_input.a, 1u, global4.x, 45207u)) % 32u)), u_input.b.x & _wgslsmith_div_u32(u_input.a, 1u))).a;
    global1 = array<vec2<i32>, 26>();
    return _wgslsmith_f_op_f32(f32(-1f) * -794f);
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(func_2(_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(48888u, arg_0.x)), _wgslsmith_mod_vec2_u32(arg_0.yy, arg_0.zy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(min(-1000f, 401f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -760f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-272f * 1014f)))))));
    let var_1 = func_2(global2.b);
    global2 = Struct_1(_wgslsmith_sub_i32(~_wgslsmith_sub_i32(-global2.c, u_input.c.x), _wgslsmith_add_i32(~u_input.c.x >> (18460u % 32u), -1i)), vec2<u32>(firstLeadingBit(u_input.b.x), _wgslsmith_sub_u32(select(~43132u, 0u >> (u_input.b.x % 32u), false), u_input.a)), ~_wgslsmith_add_i32(min(-2147483647i, u_input.c.x) << (4294967295u % 32u), -2147483647i), _wgslsmith_sub_u32(~0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(6166u, arg_0.x, 0u, arg_0.x), vec4<u32>(arg_0.x, global4.x, 1u, 79328u)) << (~global2.d % 32u)), _wgslsmith_mod_vec2_i32(select(global1[_wgslsmith_index_u32(firstTrailingBit(global2.b.x | 0u), 26u)], ~select(vec2<i32>(u_input.c.x, global2.a), global2.e, vec2<bool>(var_1.a.b, var_1.a.b)), var_1.a.b), firstTrailingBit(u_input.c)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(343f + _wgslsmith_f_op_f32(ceil(554f))));
    let var_3 = !select(vec4<bool>(!var_1.a.b, 1i == (1i | global2.e.x), false, false), !select(vec4<bool>(var_1.a.b, var_1.a.a, var_1.a.b, var_1.a.a), vec4<bool>(var_1.a.a, true, var_1.a.a, true), var_1.a.a && false), !select(vec4<bool>(var_1.a.b, var_1.a.a, false, false), select(vec4<bool>(var_1.a.b, true, var_1.a.b, var_1.a.b), vec4<bool>(false, false, true, true), vec4<bool>(var_1.a.b, var_1.a.a, false, var_1.a.a)), var_1.a.b));
    return global2.c ^ -global2.e.x;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = func_2(vec2<u32>(1u, select(~4294967295u, _wgslsmith_dot_vec2_u32(u_input.b, arg_0.b), any(vec2<bool>(true, false)))) ^ global2.b).a;
    var var_1 = Struct_3(arg_0);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, -1000f) - vec2<f32>(-1142f, arg_2.x))) * _wgslsmith_f_op_vec2_f32(-arg_2.yw)) - _wgslsmith_f_op_vec2_f32(-arg_2.ww)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-453f, arg_2.x), vec2<f32>(arg_2.x, -210f)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_2.zw), vec2<f32>(-729f, arg_1)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(546f, 318f), _wgslsmith_div_vec2_f32(vec2<f32>(-172f, arg_2.x), arg_2.yw), vec2<bool>(true, var_0.b))))));
    let var_3 = false & var_0.b;
    global0 = var_3;
    return Struct_1(_wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i >> (u_input.b.x % 32u), 51883i, var_1.a.e.x), vec3<i32>(1i, global2.c, -arg_0.a))), vec2<u32>(~4294967295u, u_input.a), abs(_wgslsmith_clamp_i32(u_input.c.x, ~1i, global2.e.x >> (u_input.a % 32u)) << (~countOneBits(44622u) % 32u)), _wgslsmith_sub_u32(~0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(20641u, global4.x), u_input.b), 19249u)), _wgslsmith_mult_vec2_i32(global1[_wgslsmith_index_u32(~(~min(global2.d, 4294967295u)), 26u)], _wgslsmith_add_vec2_i32(var_1.a.e, abs(vec2<i32>(-1i, -7963i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.e.x;
    var_0 = ~53469i;
    let var_1 = Struct_2(func_4(Struct_1(0i, u_input.b, countOneBits(func_1(vec3<u32>(global4.x, 1u, 1u))), ~global4.x, abs(vec2<i32>(-1i, u_input.c.x))), -265f, vec4<f32>(-1314f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(307f + -1471f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(364f))), -950f)), vec3<bool>(!(global2.c >= _wgslsmith_clamp_i32(0i, -15155i, -1i)), true, false), ~(global2.a << (min(_wgslsmith_clamp_u32(global4.x, global4.x, 1u), _wgslsmith_div_u32(u_input.b.x, 1u)) % 32u)), u_input.c.x);
    var var_2 = Struct_1(u_input.c.x, _wgslsmith_div_vec2_u32(vec2<u32>(~(~0u), _wgslsmith_dot_vec4_u32(vec4<u32>(30510u, global2.d, u_input.b.x, 13971u), min(vec4<u32>(global4.x, 4294967295u, 4294967295u, 13888u), vec4<u32>(var_1.a.b.x, 9965u, 4294967295u, global4.x)))), countOneBits(~(~var_1.a.b))), _wgslsmith_dot_vec4_i32(select(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.c, u_input.c.x, 2147483647i, global2.e.x), vec4<i32>(var_1.a.c, -25341i, global2.c, var_1.d))), vec4<i32>(43899i, 0i, 0i, u_input.c.x) & ~vec4<i32>(0i, 2147483647i, var_1.d, 7225i), var_1.b.x != var_1.b.x), -vec4<i32>(-var_1.a.c, global2.c, global2.e.x, i32(-1i) * -2147483647i)), u_input.a, vec2<i32>(var_1.d, var_1.c));
    global1 = array<vec2<i32>, 26>();
    var var_3 = vec2<i32>(~u_input.c.x, 2147483647i);
    let var_4 = any(var_1.b);
    var var_5 = func_4(Struct_1(19404i, vec2<u32>(22328u, func_4(Struct_1(var_1.a.e.x, global2.b, -24434i, global4.x, global1[_wgslsmith_index_u32(4294967295u, 26u)]), _wgslsmith_div_f32(1000f, -1000f), _wgslsmith_div_vec4_f32(vec4<f32>(-1161f, -149f, 559f, 353f), vec4<f32>(-969f, -1000f, 1404f, -1132f))).d), u_input.c.x, ~reverseBits(0u), vec2<i32>(var_1.a.e.x, var_3.x)), -1313f, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_5(Struct_4(var_1.b.x, true)), -631f)), -569f, -2309f, 641f)))))).a;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(-2147483647i ^ var_3.x, var_1.d, ~var_1.c, global2.a & -26158i) >> (vec4<u32>(31469u, 36929u, 1u, ~u_input.a >> (~global4.x % 32u)) % vec4<u32>(32u)), ~select(~(~vec3<u32>(70120u, global2.b.x, 4294967295u)), max(vec3<u32>(6104u, global4.x, global2.d), vec3<u32>(130977u, global2.d, global4.x)) << (~vec3<u32>(0u, 85922u, var_1.a.d) % vec3<u32>(32u)), false), ~max(select(vec4<u32>(1u, var_2.d, var_1.a.b.x, var_2.b.x) ^ vec4<u32>(var_1.a.d, global4.x, 4294967295u, var_1.a.b.x), ~vec4<u32>(u_input.a, var_2.b.x, var_1.a.d, 4294967295u), select(vec4<bool>(var_4, var_4, var_1.b.x, false), vec4<bool>(var_1.b.x, false, var_4, true), var_4)), vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.a.b, global2.b), 60099u, global4.x | 11998u, global2.b.x)), i32(-1i) * -1i);
}

