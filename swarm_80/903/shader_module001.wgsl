struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: bool,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(0u, 4294967295u, vec3<f32>(152f, -271f, 199f)));

var<private> global1: array<vec4<bool>, 11>;

var<private> global2: array<vec2<f32>, 29>;

var<private> global3: array<i32, 25> = array<i32, 25>(-1i, 1i, -29105i, 2147483647i, -3513i, 0i, 4533i, 14389i, 0i, i32(-2147483648), 4087i, 0i, 1i, -1i, 0i, i32(-2147483648), 0i, -32824i, 8670i, -4228i, 40916i, -978i, -60248i, 2147483647i, i32(-2147483648));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> vec2<i32> {
    let var_0 = Struct_2(u_input.c.x, ~u_input.c.x, arg_0.xzx);
    global1 = array<vec4<bool>, 11>();
    global2 = array<vec2<f32>, 29>();
    global2 = array<vec2<f32>, 29>();
    global0 = array<Struct_2, 1>();
    return u_input.b;
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_2, 1>();
    let var_0 = ~u_input.a.x;
    global0 = array<Struct_2, 1>();
    let var_1 = var_0;
    let var_2 = Struct_1(~func_3(vec4<f32>(_wgslsmith_f_op_f32(trunc(-281f)), _wgslsmith_f_op_f32(ceil(-1336f)), -587f, 1585f), global3[_wgslsmith_index_u32(~u_input.a.x, 25u)]), (~vec2<u32>(var_0, 36076u) ^ (_wgslsmith_mult_vec2_u32(vec2<u32>(var_1, 27893u), u_input.c.ww) & _wgslsmith_clamp_vec2_u32(u_input.a, u_input.c.zz, u_input.c.wy))) << (~(~vec2<u32>(var_1, u_input.a.x)) % vec2<u32>(32u)), false, select(vec3<bool>(false, true, any(vec3<bool>(true, true, true))), vec3<bool>(var_1 < _wgslsmith_dot_vec4_u32(vec4<u32>(10029u, 7618u, 0u, 44407u), u_input.c), true, true), true), u_input.c);
    return Struct_1(-var_2.a, var_2.b, !(u_input.b.x >= _wgslsmith_add_i32(-1i, _wgslsmith_dot_vec2_i32(var_2.a, var_2.a))), !select(vec3<bool>(all(var_2.d.xx), true, 1u == u_input.c.x), !(!vec3<bool>(true, true, var_2.c)), !all(vec4<bool>(var_2.c, var_2.c, false, true))), firstTrailingBit(firstTrailingBit(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(0u, 58948u, var_2.b.x, 1u), u_input.c), u_input.c))));
}

fn func_1() -> vec3<bool> {
    var var_0 = func_2();
    let var_1 = u_input.c;
    var_0 = Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(select(countOneBits(vec2<i32>(0i, -55700i)), u_input.b, vec2<bool>(var_0.c, true)), vec2<i32>(var_0.a.x, -2147483647i) & var_0.a), reverseBits(u_input.b)), ~_wgslsmith_add_vec2_u32(func_2().b, abs(var_0.b)), false, var_0.d, vec4<u32>(~max(~4294967295u, reverseBits(u_input.c.x)), ~(var_0.e.x ^ 63272u) & var_0.e.x, _wgslsmith_mult_u32(var_1.x, var_0.e.x), u_input.c.x));
    var var_2 = min(17387i, -1i);
    global3 = array<i32, 25>();
    return var_0.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> vec3<i32> {
    global0 = array<Struct_2, 1>();
    global2 = array<vec2<f32>, 29>();
    let var_0 = func_2();
    let var_1 = vec4<i32>(select(_wgslsmith_mult_i32(arg_0.a.x, _wgslsmith_sub_i32(-arg_3, 13135i)), ~_wgslsmith_sub_i32(func_3(vec4<f32>(236f, 450f, 393f, -1000f), -1i).x, abs(5823i)), arg_0.c), _wgslsmith_clamp_i32(14977i, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, func_2().e.x), countOneBits(_wgslsmith_clamp_u32(4294967295u, 25586u, 0u)), 4294967295u), 25u)], arg_3), _wgslsmith_add_i32(0i >> ((~var_0.b.x << (~var_0.b.x % 32u)) % 32u), 2147483647i), ~(-40935i));
    let var_2 = Struct_1(-vec2<i32>(1i, _wgslsmith_mod_i32(-2147483647i >> (arg_1.b.x % 32u), ~var_0.a.x)), vec2<u32>(arg_0.e.x, firstTrailingBit(_wgslsmith_mult_u32(countOneBits(5234u), 57118u))), u_input.a.x == 1u, !vec3<bool>(any(vec3<bool>(true, arg_1.c, false)), false, !var_0.c | false), _wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(var_0.b.x, 10841u, arg_0.b.x, var_0.b.x), arg_1.e), vec4<u32>(select(~39852u, ~0u, var_0.c), u_input.a.x, u_input.c.x, arg_0.b.x)));
    return var_1.xzx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(882u, select(max(abs(~u_input.a.x), u_input.c.x), ~select(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.c.x), max(72781u, u_input.a.x), false), all(vec2<bool>(true, true))), _wgslsmith_add_u32(u_input.a.x, u_input.c.x) | firstLeadingBit(firstTrailingBit(1u)));
    let var_1 = -vec3<i32>(-4729i, 10099i, -17261i) | func_4(Struct_1(_wgslsmith_sub_vec2_i32(u_input.b, -vec2<i32>(global3[_wgslsmith_index_u32(var_0, 25u)], u_input.b.x)), u_input.a << (vec2<u32>(var_0, 7189u) % vec2<u32>(32u)), true, func_1(), vec4<u32>(firstTrailingBit(66921u), reverseBits(var_0), 22428u, u_input.c.x)), Struct_1(vec2<i32>(-1i) * -u_input.b, vec2<u32>(4294967295u, ~81674u), false, vec3<bool>(true, true, true), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(62365u, var_0, var_0, 1u), vec4<u32>(var_0, u_input.a.x, u_input.a.x, var_0)), vec4<u32>(5125u, u_input.c.x, 0u, 10168u), vec4<u32>(var_0, var_0, 0u, 0u))), ~u_input.b.x, 33866i >> (u_input.c.x % 32u));
    let var_2 = global0[_wgslsmith_index_u32(max(33012u, _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(1u & u_input.c.x, u_input.c.x))) << (53230u % 32u), 1u)];
    let var_3 = !select(all(func_1().xy), true, true);
    let var_4 = global0[_wgslsmith_index_u32(~(~u_input.a.x), 1u)];
    var var_5 = all(select(vec4<bool>(var_3, (true || var_3) | false, true, var_3), global1[_wgslsmith_index_u32(~max(u_input.a.x, ~4294967295u), 11u)], true));
    global2 = array<vec2<f32>, 29>();
    global0 = array<Struct_2, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(70956u, 44204u, 75654u), u_input.c.yww));
}

