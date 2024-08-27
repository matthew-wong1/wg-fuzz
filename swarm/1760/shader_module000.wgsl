struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(-740f, 454f, 356f), vec3<f32>(-483f, -1232f, 1174f), vec3<f32>(-207f, -1541f, -202f), vec3<f32>(-977f, 171f, 1303f), vec3<f32>(-499f, -918f, -1361f), vec3<f32>(-443f, 1775f, 1164f), vec3<f32>(-1202f, 387f, 1000f), vec3<f32>(-1553f, -1135f, -575f), vec3<f32>(-1000f, 229f, 268f), vec3<f32>(1294f, -2008f, 136f), vec3<f32>(-333f, -1453f, 917f), vec3<f32>(-1302f, -1416f, 991f), vec3<f32>(-723f, -773f, -482f), vec3<f32>(-1000f, 223f, 960f), vec3<f32>(1379f, 561f, 431f), vec3<f32>(1000f, 313f, -1170f));

var<private> global1: Struct_2 = Struct_2(-589f, 60417u);

var<private> global2: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(15334u, vec4<i32>(-1i, i32(-2147483648), 19376i, 1i)), Struct_3(33656u, vec4<i32>(10030i, 33459i, 2147483647i, -38401i)), Struct_3(45198u, vec4<i32>(16493i, 2147483647i, -11370i, -1082i)), Struct_3(85546u, vec4<i32>(31323i, 0i, 1i, 2147483647i)), Struct_3(4294967295u, vec4<i32>(0i, 2147483647i, 1i, i32(-2147483648))), Struct_3(2972u, vec4<i32>(-19053i, 1i, 1i, 9366i)), Struct_3(1u, vec4<i32>(-8938i, 30615i, 2147483647i, 0i)), Struct_3(46755u, vec4<i32>(0i, 1i, i32(-2147483648), 32523i)), Struct_3(8414u, vec4<i32>(2845i, 0i, 35587i, -1i)), Struct_3(4294967295u, vec4<i32>(11653i, 55411i, 60220i, -1i)), Struct_3(4294967295u, vec4<i32>(1i, i32(-2147483648), i32(-2147483648), i32(-2147483648))));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> f32 {
    let var_0 = arg_1.b.x;
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), 1599f)) - global0[_wgslsmith_index_u32(arg_0, 16u)]);
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-676f))) - -832f), _wgslsmith_f_op_f32(f32(-1f) * -2035f));
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a)) * _wgslsmith_f_op_f32(global1.a - var_2.x)), global1.a, !(var_2.x >= -1191f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.a)))))), countOneBits(~0u));
    return global1.a;
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    global2 = array<Struct_3, 11>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(ceil(1008f))) - 109f)) + _wgslsmith_f_op_f32(trunc(global1.a)));
    var_0 = _wgslsmith_f_op_f32(func_3(~_wgslsmith_mod_u32(arg_0.a, 4294967295u) | max(4294967295u, ~global1.b & (arg_0.a >> (global1.b % 32u))), Struct_3(~arg_0.a >> (39112u % 32u), reverseBits(vec4<i32>(u_input.a, arg_0.b.x, -1i, arg_0.b.x)) >> (reverseBits(abs(u_input.c)) % vec4<u32>(32u)))));
    let var_1 = true;
    var_0 = 172f;
    return arg_0;
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(u_input.c, countOneBits(~vec4<u32>(arg_0.a, 1u, u_input.c.x, arg_0.a))) ^ vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) & (global1.b | u_input.c.x), ~arg_0.a >> (max(5407u, global1.b) % 32u), ~(~global1.b), ~(~1u)), _wgslsmith_dot_vec2_u32(select(~vec2<u32>(u_input.c.x, u_input.b), abs(vec2<u32>(u_input.c.x, u_input.c.x)), !all(vec2<bool>(false, true))), vec2<u32>(_wgslsmith_add_u32(u_input.b, abs(78971u)), ~22160u)), arg_0.b.zx, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-418f, global1.a))))), vec2<f32>(-737f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.a)) + 1855f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(var_0.a.x, 0u)), Struct_3(var_0.a.x, arg_0.b))) - -232f), var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1817f, 391f)))), _wgslsmith_f_op_f32(floor(var_0.d.x)))));
    let var_2 = vec2<u32>(u_input.b, u_input.b);
    var var_3 = reverseBits(arg_0.b);
    global0 = array<vec3<f32>, 16>();
    return Struct_1(var_0.a, arg_0.a, vec2<i32>(u_input.a & var_3.x, firstTrailingBit(~(-43947i))) ^ _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.d, u_input.d), _wgslsmith_mult_vec2_i32(vec2<i32>(var_3.x, 0i), arg_0.b.wy)), (var_3.zz >> (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))) | vec2<i32>(-2147483647i, -280i)), var_1.zw);
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(vec4<u32>(u_input.b, ~(~_wgslsmith_add_u32(40987u, arg_0.x)), ~(~26788u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~u_input.c.wxw, u_input.c.yyw), _wgslsmith_mult_vec3_u32(u_input.c.zxw, vec3<u32>(u_input.c.x, 28338u, global1.b)))), 4294967295u, -vec2<i32>(-2147483647i, 0i), vec2<f32>(265f, global1.a));
    let var_1 = func_4(func_2(Struct_3(~_wgslsmith_sub_u32(global1.b, arg_0.x), reverseBits(-vec4<i32>(0i, 2147483647i, u_input.e, var_0.c.x)))));
    var var_2 = (~_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, -1i, var_1.c.x), vec3<i32>(u_input.d, -20826i, -20659i) ^ vec3<i32>(var_0.c.x, 51809i, -2147483647i)) | var_1.c.x) >> (~1u % 32u);
    var var_3 = select(vec4<bool>(false, any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), all(vec4<bool>(true, true, true, true)), any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(false, true)))), select(vec4<bool>(!all(vec3<bool>(false, true, true)), abs(var_1.c.x) == ~(-1i), true, !all(vec4<bool>(true, true, false, true))), vec4<bool>(true, true, true, true), _wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(-global1.a)) == var_0.d.x), true);
    var var_4 = var_1.d.x;
    return func_4(global2[_wgslsmith_index_u32(4294967295u, 11u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(u_input.b, ~vec4<i32>(u_input.d, 10600i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), select(vec2<i32>(-25462i, 7216i), vec2<i32>(18147i, 5703i), false)), u_input.a << (4294967295u % 32u)));
    global1 = Struct_2(global1.a, _wgslsmith_mod_u32(~global1.b, _wgslsmith_add_u32(_wgslsmith_div_u32(var_0.a, 1u), ~0u)));
    global0 = array<vec3<f32>, 16>();
    var var_1 = func_1(~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c.x, global1.b, 43524u, global1.b), u_input.c));
    let var_2 = func_4(Struct_3(countOneBits(min(0u, var_1.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.d, -1i, -6093i) | select(var_0.b, var_0.b, vec4<bool>(true, true, true, false)), vec4<i32>(-var_0.b.x, select(1i, u_input.a, true), var_0.b.x, 0i))));
    global2 = array<Struct_3, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(ceil(var_2.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.x) - global1.a), -506f, var_2.d.x)), abs(firstTrailingBit(countOneBits(vec2<i32>(u_input.d, u_input.a)))) ^ (var_0.b.yx ^ ~(-vec2<i32>(-12387i, var_0.b.x))), var_0.b.yz);
}

