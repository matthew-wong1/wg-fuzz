struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, -1i, i32(-2147483648), -30388i);

var<private> global1: array<i32, 16>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> u32 {
    global0 = -(_wgslsmith_add_vec4_i32(vec4<i32>(abs(-2147483647i), ~(-2147483647i), select(22005i, 2147483647i, true), _wgslsmith_dot_vec4_i32(vec4<i32>(-37077i, global0.x, 5472i, 0i), vec4<i32>(1i, 1143i, -25256i, -43763i))), -countOneBits(vec4<i32>(arg_0, u_input.c, u_input.a.x, global1[_wgslsmith_index_u32(u_input.e.x, 16u)]))) ^ vec4<i32>(0i, i32(-1i) * -57380i, _wgslsmith_dot_vec4_i32(-vec4<i32>(52701i, global1[_wgslsmith_index_u32(u_input.d, 16u)], -29641i, 2147483647i), vec4<i32>(-10345i, -2147483647i, arg_0, -1i)), u_input.c));
    let var_0 = max(20825i, global0.x);
    global1 = array<i32, 16>();
    global1 = array<i32, 16>();
    let var_1 = u_input.e;
    return _wgslsmith_sub_u32(reverseBits(firstLeadingBit(~_wgslsmith_mod_u32(31710u, u_input.d))), 4294967295u);
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> vec4<i32> {
    let var_0 = ~u_input.b.x;
    var var_1 = func_3(u_input.c);
    var var_2 = Struct_3(select(select(!vec3<bool>(arg_1, arg_1, false), !vec3<bool>(arg_1, false, arg_1), (u_input.a.x > 19159i) & true), vec3<bool>((true || arg_1) && all(vec2<bool>(true, arg_1)), !(arg_1 && false), true), !select(select(vec3<bool>(true, false, true), vec3<bool>(arg_1, arg_1, true), arg_1), select(vec3<bool>(false, true, true), vec3<bool>(true, false, arg_1), vec3<bool>(false, arg_1, false)), any(vec2<bool>(true, false)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(863f, -777f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(255f + 1396f) - -189f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-474f * 495f)))));
    var var_4 = !all(select(var_2.a.yy, !var_2.a.zy, true && var_2.a.x));
    return (((-vec4<i32>(u_input.a.x, -19218i, -27411i, global0.x) ^ (vec4<i32>(u_input.c, global1[_wgslsmith_index_u32(var_0, 16u)], global0.x, 1i) << (vec4<u32>(16557u, u_input.e.x, var_0, 1u) % vec4<u32>(32u)))) | reverseBits(vec4<i32>(global0.x, global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(u_input.d, 16u)]) & vec4<i32>(46056i, global0.x, arg_0.x, arg_0.x))) & ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(-14254i, 0i, -1422i, global0.x), vec4<i32>(1i, global0.x, 1967i, u_input.c)))) & select(vec4<i32>(~u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, u_input.a.x), global0.xz >> (vec2<u32>(u_input.b.x, var_0) % vec2<u32>(32u))), -_wgslsmith_div_i32(-16055i, -2147483647i), ~10449i), ~select(~vec4<i32>(arg_0.x, 0i, -2147483647i, global0.x), vec4<i32>(2147483647i, 3915i, -64324i, global0.x), vec4<bool>(var_2.a.x, false, arg_1, true)), true);
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: bool, arg_3: i32) -> Struct_2 {
    let var_0 = ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~abs(u_input.e.xxy), firstLeadingBit(select(u_input.e.zww, vec3<u32>(u_input.e.x, 0u, 0u), arg_2))), _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(u_input.d, u_input.d, u_input.e.x, u_input.e.x)), 1u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.d, u_input.e.x), vec2<u32>(u_input.e.x, 0u), arg_1), vec2<u32>(1u, u_input.d))));
    var var_1 = Struct_3(select(!(!(!vec3<bool>(true, true, arg_2))), select(vec3<bool>(false && arg_2, arg_2, arg_2), !select(vec3<bool>(true, false, arg_1), vec3<bool>(arg_2, arg_1, arg_1), vec3<bool>(false, true, arg_1)), !arg_1 == true), arg_1));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))));
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(arg_0, ~(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3, global0.x, u_input.c, arg_0.x), arg_0) | arg_0)), -2147483647i);
    var var_4 = _wgslsmith_f_op_f32(-var_2);
    return Struct_2(-_wgslsmith_add_vec4_i32(select(arg_0, arg_0, vec4<bool>(arg_2, true, arg_2, arg_2)), ~vec4<i32>(17957i, global1[_wgslsmith_index_u32(1u, 16u)], 2147483647i, 45325i)) & arg_0);
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = func_4(~abs(func_2(vec3<i32>(u_input.a.x, global1[_wgslsmith_index_u32(45599u, 16u)], global1[_wgslsmith_index_u32(u_input.d, 16u)]), false) & -vec4<i32>(u_input.c, global1[_wgslsmith_index_u32(u_input.b.x, 16u)], -2147483647i, -1i)), true, ~arg_1.x < u_input.b.x, -(i32(-1i) * -1i));
    var var_1 = u_input.a;
    var_1 = firstTrailingBit(global0.xx ^ global0.yy);
    var var_2 = 1i;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1126f, 1952f, 2019f, -1393f), vec4<f32>(arg_0, arg_0, 389f, arg_0)))))));
    return Struct_1(max(~arg_1.x, _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mult_u32(~0u, u_input.e.x | u_input.e.x))), u_input.e.yxw, select(firstLeadingBit(u_input.b), u_input.e.wz, all(vec3<bool>(true, true, true))) & u_input.e.zx, true, all(vec2<bool>((var_0.a.x <= 1i) & true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(1555f, ~(~vec2<u32>(0u, u_input.b.x))), func_4(vec4<i32>(-8232i, 0i, (global0.x | -1i) ^ _wgslsmith_clamp_i32(1i, 1i, 1i), 0i), false, select(u_input.e.x != 4294967295u, true, true), ~23672i));
    let var_1 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0.b.a.x, -12383i), vec3<i32>(1i, u_input.c, -2147483647i)) & reverseBits(-439i), 55615i), max(-2147483647i, ~(_wgslsmith_dot_vec2_i32(vec2<i32>(-3885i, global0.x), u_input.a) ^ ~0i)));
    var var_2 = -(-(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -1i, -2334i, var_0.b.a.x)) >> (vec4<u32>(select(8936u, ~var_0.a.c.x, true), u_input.d, 26118u, 0u) % vec4<u32>(32u)));
    var_2 = _wgslsmith_mult_vec4_i32(func_4(vec4<i32>(36089i, -9197i, u_input.a.x, -1i), all(vec2<bool>(!var_0.a.d, any(vec3<bool>(false, var_0.a.d, false)))), all(!vec3<bool>(false, var_0.a.d, var_0.a.e)), -((0i << (var_0.a.b.x % 32u)) | _wgslsmith_div_i32(-1i, -1i))).a, vec4<i32>(reverseBits(1i) << (_wgslsmith_sub_u32(1u, 1u) % 32u), -(~global1[_wgslsmith_index_u32(u_input.b.x | 56509u, 16u)]), -1i, ~(~(-global0.x))));
    var var_3 = all(vec3<bool>((_wgslsmith_f_op_f32(round(1518f)) <= _wgslsmith_f_op_f32(-785f + -1032f)) || var_0.a.e, !var_0.a.e, false));
    var_2 = vec4<i32>(u_input.c, var_2.x, func_2(~vec3<i32>(-1i, min(10656i, 9581i), var_2.x >> (45555u % 32u)), var_0.a.d).x, ~func_4(max(-vec4<i32>(var_0.b.a.x, global0.x, var_2.x, -39212i), var_0.b.a), var_0.a.d, var_0.a.d, u_input.c).a.x);
    global0 = abs(vec4<i32>(min(~(-1i), -2147483647i), max(var_1.x, _wgslsmith_mod_i32(0i, -1i)), -countOneBits(10194i), _wgslsmith_add_i32(-var_1.x, 1i))) | vec4<i32>(_wgslsmith_add_i32(-(i32(-1i) * -37296i), -var_0.b.a.x), -12175i | _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a.x, global0.x), -59646i), u_input.a.x, ~30213i);
    global0 = select(_wgslsmith_clamp_vec4_i32(var_0.b.a, _wgslsmith_mod_vec4_i32(vec4<i32>(1i, global1[_wgslsmith_index_u32(3251u, 16u)], var_0.b.a.x, 1i) >> (u_input.e % vec4<u32>(32u)), var_0.b.a), select(abs(var_0.b.a), var_0.b.a, !var_0.a.e)), var_0.b.a, select(select(!vec4<bool>(var_0.a.e, true, var_0.a.d, var_0.a.e), vec4<bool>(var_0.a.d, var_0.a.e, false, var_0.a.e), true), !(!vec4<bool>(var_0.a.d, var_0.a.d, true, true)), select(vec4<bool>(var_0.a.d, false, false, var_0.a.e), select(vec4<bool>(var_0.a.e, var_0.a.d, true, var_0.a.e), vec4<bool>(false, var_0.a.e, false, var_0.a.e), vec4<bool>(var_0.a.d, false, true, var_0.a.d)), !var_0.a.d))) << (~(_wgslsmith_div_vec4_u32(u_input.e, ~u_input.e) << (~_wgslsmith_mult_vec4_u32(u_input.e, u_input.e) % vec4<u32>(32u))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-340f, -575f)), vec2<f32>(-1068f, -1000f), true))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 974f)) * _wgslsmith_div_f32(724f, -1616f)), -293f)));
}

