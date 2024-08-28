struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(544f, 772f, -981f, 246f, -364f, 501f, 1563f, 712f, -1367f, 110f, -1282f, 1005f, -584f, 780f, 1000f, 1000f, -338f, -457f, 659f, 1096f, -392f, 314f, 189f, -524f);

var<private> global1: f32;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>) -> vec2<i32> {
    return vec2<i32>(arg_0.a.a, arg_0.c.x) >> (arg_1 % vec2<u32>(32u));
}

fn func_3() -> u32 {
    global1 = 1123f;
    global0 = array<f32, 24>();
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), max(vec4<i32>(-15836i, -2147483647i, 2381i, 56289i), vec4<i32>(-37355i, -54705i, 24025i, -1i))), true), false, vec3<i32>(1i, 1i, 1i), u_input.b, -(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -68966i, -1i, 2147483647i), vec4<i32>(-2147483647i, 18184i, -41201i, 37055i)) & 1i)), select(vec2<bool>(select(false, global0[_wgslsmith_index_u32(u_input.a, 24u)] >= 1000f, true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true)), any(vec3<bool>(true, false, true)) & all(vec4<bool>(false, false, true, false))), any(vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(4294967295u, 24u)])) - _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(12644u, 24u)], global0[_wgslsmith_index_u32(u_input.b.x, 24u)]))), -406f))), Struct_1(-(~(-1i)), !all(vec2<bool>(true, true))));
    var var_1 = false;
    let var_2 = firstTrailingBit(~_wgslsmith_mult_vec2_u32(u_input.b.zy, ~u_input.b.yx));
    return var_0.a.d.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    global0 = array<f32, 24>();
    let var_0 = Struct_3(Struct_2(Struct_1(arg_1.a & ~arg_1.a, true), any(!select(vec4<bool>(arg_1.b, true, false, arg_1.b), vec4<bool>(arg_1.b, arg_1.b, true, false), vec4<bool>(false, true, true, arg_1.b))), reverseBits(vec3<i32>(countOneBits(-21399i), _wgslsmith_mod_i32(-2147483647i, 1i), -33319i)), vec3<u32>(func_3(), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, 0u), u_input.b), 0u << (u_input.a % 32u)) >> (countOneBits(vec3<u32>(42961u, u_input.a, u_input.b.x)) % vec3<u32>(32u)), ~(~(~0i))), !vec2<bool>(any(vec4<bool>(arg_1.b, false, true, true)), !arg_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -944f))) - global0[_wgslsmith_index_u32(13851u, 24u)]), Struct_1(reverseBits(arg_1.a), abs(_wgslsmith_clamp_i32(-56558i, arg_1.a, arg_1.a)) <= func_1(Struct_2(arg_1, false, vec3<i32>(-12245i, arg_1.a, arg_0.x), vec3<u32>(73226u, 13595u, u_input.a), 60328i), ~vec2<u32>(1391u, 53189u)).x));
    let var_1 = !((-892f == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 24u)] - global0[_wgslsmith_index_u32(3422u, 24u)])))) & var_0.d.b);
    return Struct_2(var_0.d, ~_wgslsmith_div_u32(_wgslsmith_div_u32(var_0.a.d.x, u_input.a), min(u_input.a, 1u)) < ~(~var_0.a.d.x | u_input.b.x), _wgslsmith_mult_vec3_i32(~countOneBits(vec3<i32>(2147483647i, 93034i, -2147483647i)), var_0.a.c), var_0.a.d, -2147483647i);
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    let var_0 = func_2(abs(vec2<i32>(min(_wgslsmith_dot_vec3_i32(arg_0.a.c, vec3<i32>(-11920i, 0i, -17521i)), abs(arg_0.d.a)), ~(-1i) << (~arg_0.a.d.x % 32u))), Struct_1(40365i, true), ~(~min(_wgslsmith_dot_vec2_i32(arg_0.a.c.zz, vec2<i32>(-38743i, -1i)), ~0i)));
    var var_1 = abs(var_0.c);
    global1 = -1729f;
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, -662f) + vec2<f32>(arg_0.c, -156f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.c, global0[_wgslsmith_index_u32(var_0.d.x, 24u)]), vec2<f32>(global0[_wgslsmith_index_u32(var_0.d.x, 24u)], -768f))), !select(vec2<bool>(var_0.a.b, false), vec2<bool>(false, false), arg_0.b))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1130f, -855f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(3074u, 24u)], global0[_wgslsmith_index_u32(62325u, 24u)]))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(arg_0.c * global0[_wgslsmith_index_u32(var_0.d.x, 24u)]), _wgslsmith_f_op_f32(600f * 691f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1279f, global0[_wgslsmith_index_u32(39354u, 24u)]))))))));
    var var_3 = var_0.b;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_4(Struct_3(func_2(func_1(Struct_2(Struct_1(-54802i, true), true, vec3<i32>(-1i, -1i, 30263i), u_input.b, 37998i), vec2<u32>(u_input.a, 11011u)), Struct_1(0i, false), 1i), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -465f) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 24u)])), func_2(vec2<i32>(1i, 1i), func_2(vec2<i32>(-26407i, -2147483647i), Struct_1(1i, false), 2147483647i).a, _wgslsmith_add_i32(-2147483647i, 2147483647i)).a)), func_2(_wgslsmith_div_vec2_i32(select(-vec2<i32>(26321i, -12512i), vec2<i32>(7261i, -7382i), true), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(1i, 1i))), Struct_1(0i, !func_2(vec2<i32>(-20610i, 1i), Struct_1(-1i, false), 19378i).a.b), min(1i, -2147483647i)), func_4(Struct_3(Struct_2(func_4(Struct_3(Struct_2(Struct_1(-1i, false), false, vec3<i32>(-10048i, -2147483647i, -56264i), u_input.b, -6940i), vec2<bool>(true, false), -1000f, Struct_1(-2147483647i, false))).d, true, vec3<i32>(-27134i, -2147483647i, 1i), u_input.b, _wgslsmith_div_i32(10828i, 15447i)), vec2<bool>(all(vec4<bool>(false, true, true, true)), true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0[_wgslsmith_index_u32(~0u, 24u)], all(vec4<bool>(false, false, true, false)))), func_4(Struct_3(Struct_2(Struct_1(0i, true), true, vec3<i32>(-62521i, 2704i, -2147483647i), vec3<u32>(u_input.a, 6000u, u_input.b.x), -1980i), vec2<bool>(true, false), global0[_wgslsmith_index_u32(0u, 24u)], Struct_1(-35713i, false))).a.a)).a);
    let var_1 = Struct_5(~(~(~vec4<u32>(var_0.b.d.x, var_0.b.d.x, 0u, u_input.a))) | vec4<u32>(var_0.c.d.x, u_input.b.x, 1u >> ((var_0.b.d.x & 54093u) % 32u), u_input.b.x), vec4<i32>(_wgslsmith_sub_i32(40902i, 2147483647i) ^ (30503i << (_wgslsmith_dot_vec2_u32(vec2<u32>(50517u, 21591u), var_0.b.d.xz) % 32u)), -43768i, var_0.c.c.x, var_0.b.a.a));
    var var_2 = ~_wgslsmith_div_i32(_wgslsmith_mod_i32(~_wgslsmith_mult_i32(-774i, 29027i), abs(-2147483647i)), var_1.b.x);
    var_2 = 44390i;
    var var_3 = ~(~(~(~53168u)));
    let var_4 = var_0.a.d;
    let var_5 = Struct_5(var_1.a, -(vec4<i32>(countOneBits(var_1.b.x), abs(-25860i), var_1.b.x >> (1u % 32u), var_0.b.c.x ^ -1i) >> (~(~vec4<u32>(1u, var_1.a.x, var_0.a.a.d.x, u_input.a)) % vec4<u32>(32u))));
    var_2 = -2147483647i;
    var var_6 = Struct_2(Struct_1(-_wgslsmith_mult_i32(-var_1.b.x, var_0.c.a.a), any(vec2<bool>(var_0.c.a.b, all(vec2<bool>(true, true))))), false, var_1.b.wxz, _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(var_5.a.x, u_input.a), 1u), (u_input.b & var_0.a.a.d) ^ ~var_0.c.d), ~max(firstTrailingBit(u_input.b), ~vec3<u32>(u_input.a, var_5.a.x, 1u))), var_0.b.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(0u, -800f, ~(~vec4<i32>(var_1.b.x, var_6.e, var_0.b.a.a, var_5.b.x)) | -vec4<i32>(-41783i, var_0.c.a.a, _wgslsmith_div_i32(var_5.b.x, -1i), -48538i), ~(var_6.d.x >> (1u % 32u)));
}

