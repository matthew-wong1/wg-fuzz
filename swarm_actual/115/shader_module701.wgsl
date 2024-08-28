struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true));

var<private> global1: array<vec4<i32>, 2>;

var<private> global2: Struct_2 = Struct_2(true, Struct_1(vec4<i32>(-27829i, -9618i, 0i, 45465i), true, vec4<u32>(1u, 45689u, 8710u, 39969u), vec2<i32>(-12454i, 1i)), false, Struct_1(vec4<i32>(-23810i, -24949i, -25696i, 1i), true, vec4<u32>(4294967295u, 6797u, 0u, 25953u), vec2<i32>(-47860i, -1i)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: u32) -> vec4<i32> {
    global1 = array<vec4<i32>, 2>();
    var var_0 = global2.d.c.wyx;
    let var_1 = arg_0;
    let var_2 = all(vec3<bool>(~14295u < arg_1, !(any(vec4<bool>(false, arg_0.d.b, false, false)) && global2.a), true));
    let var_3 = ~(~(arg_3 | 1u));
    return ~vec4<i32>(reverseBits(_wgslsmith_add_i32(1i, -42708i)), -_wgslsmith_dot_vec4_i32(arg_0.d.a, -vec4<i32>(var_1.b.d.x, u_input.b, -2147483647i, u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.d.d.x, ~(-2147483647i)), min(arg_0.b.a.xw >> (var_0.yz % vec2<u32>(32u)), var_1.b.a.zx)), _wgslsmith_div_i32(2147483647i, global2.d.a.x));
}

fn func_2() -> vec3<f32> {
    global0 = array<vec3<bool>, 28>();
    var var_0 = Struct_2(true, Struct_1(firstLeadingBit(_wgslsmith_mult_vec4_i32(func_3(Struct_2(false, global2.b, true, global2.b), global2.d.c.x, -1259f, 15180u), global1[_wgslsmith_index_u32(global2.b.c.x, 2u)])), true, ~global2.b.c, vec2<i32>(_wgslsmith_sub_i32(16398i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-28098i, global2.d.d.x, u_input.a, -33982i), global2.d.a)) << ((~global2.b.c.wz ^ global2.b.c.wz) % vec2<u32>(32u))), any(!(!(!vec4<bool>(global2.c, false, false, global2.d.b)))), Struct_1(select(func_3(Struct_2(true, global2.b, false, global2.d), ~7112u, _wgslsmith_f_op_f32(117f + -1000f), _wgslsmith_div_u32(global2.d.c.x, 35268u)), max(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 17642i, global2.d.a.x, 44235i), global1[_wgslsmith_index_u32(45673u, 2u)]), global2.d.a | vec4<i32>(-52376i, 16224i, -1i, -11552i)), select(vec4<bool>(global2.d.b, false, global2.b.b, true), vec4<bool>(global2.d.b, global2.b.b, false, false), false & global2.d.b)), global2.c, global2.d.c, _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(global2.b.a.yx, countOneBits(global2.d.a.yw)), -_wgslsmith_div_vec2_i32(global2.d.d, vec2<i32>(global2.d.a.x, 52183i)))));
    global2 = Struct_2(true, var_0.d, true, global2.d);
    let var_1 = var_0.b;
    global0 = array<vec3<bool>, 28>();
    return _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(-266f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -189f), 751f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-187f)), _wgslsmith_f_op_f32(-200f + -1561f), var_0.d.b))), _wgslsmith_f_op_f32(278f + -986f)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-863f + _wgslsmith_f_op_f32(-217f * 126f)), -1293f), _wgslsmith_f_op_f32(f32(-1f) * -533f), 1f)));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: vec2<bool>, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = 1250f;
    global0 = array<vec3<bool>, 28>();
    global2 = Struct_2(arg_2.x, Struct_1(abs(global2.d.a), 1u > _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global2.d.c.yx, global2.b.c.wz), _wgslsmith_div_u32(global2.d.c.x, global2.d.c.x)), vec4<u32>(global2.b.c.x, 100522u, 8766u, ~global2.d.c.x), ~vec2<i32>(arg_3.x, global2.d.d.x)), any(select(vec3<bool>(!arg_2.x, all(vec2<bool>(true, global2.d.b)), !arg_2.x), global0[_wgslsmith_index_u32(global2.d.c.x, 28u)], vec3<bool>(false, global2.b.b, arg_2.x & true))), global2.b);
    var var_1 = Struct_2(global2.c, Struct_1(_wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(6380u, 0u), 2u)] | max(vec4<i32>(arg_3.x, 23212i, u_input.a, global2.d.d.x), global1[_wgslsmith_index_u32(0u, 2u)]), global2.d.a), true, countOneBits((global2.b.c << (global2.b.c % vec4<u32>(32u))) & _wgslsmith_sub_vec4_u32(vec4<u32>(0u, global2.b.c.x, 97715u, global2.b.c.x), global2.d.c)), vec2<i32>(_wgslsmith_mod_i32(global2.d.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.b.a.x, 30392i, 32636i), vec3<i32>(u_input.b, -2147483647i, arg_3.x))), arg_3.x)), all(arg_2), global2.d);
    let var_2 = abs(_wgslsmith_div_vec4_u32(reverseBits(min(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.b.c.x, 0u, global2.b.c.x, var_1.b.c.x), var_1.b.c), global2.b.c | vec4<u32>(global2.d.c.x, 4294967295u, 60324u, 42128u))), ~firstTrailingBit(var_1.b.c)));
    return Struct_2(true, global2.d, false, global2.d);
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    var var_0 = 1u;
    var var_1 = -(~global2.d.a.yxw);
    var var_2 = func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(ceil(-1431f)), _wgslsmith_f_op_f32(abs(-872f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1508f, -977f, 154f) - _wgslsmith_f_op_vec3_f32(func_2())) + vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-406f + _wgslsmith_f_op_f32(step(-744f, -143f)))))), select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, global2.b.b), global2.c), !vec2<bool>(false, global2.a), !vec2<bool>(global2.a, global2.a)), select(!vec2<bool>(global2.c, false), select(vec2<bool>(global2.b.b, global2.b.b), vec2<bool>(global2.c, false), vec2<bool>(false, true)), vec2<bool>(false, false)), select(select(vec2<bool>(global2.b.b, false), vec2<bool>(global2.b.b, false), false), vec2<bool>(false, global2.b.b), true)), !vec2<bool>(global2.d.c.x > 10068u, global2.b.b), select(vec2<bool>(global2.a, global2.c), !select(vec2<bool>(global2.c, true), vec2<bool>(false, global2.d.b), vec2<bool>(true, global2.d.b)), !global2.d.b)), vec2<i32>(~(-11598i), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, arg_1, 15299i), global2.d.a.xyz)) >> (vec2<u32>(~(0u & global2.d.c.x), firstLeadingBit(~arg_0)) % vec2<u32>(32u)));
    let var_3 = max(-abs(firstTrailingBit(-25910i)), func_3(Struct_2(!var_2.c, global2.b, true, func_4(vec3<f32>(-1618f, 120f, -407f), 1831f, vec2<bool>(false, var_2.b.b), var_1.zx).d), 0u << ((var_2.d.c.x >> (4294967295u % 32u)) % 32u), -1430f, 1u).x) <= max(var_2.d.a.x, firstLeadingBit(~u_input.a));
    var var_4 = _wgslsmith_div_vec2_u32(abs(select(select(abs(global2.d.c.yw), vec2<u32>(global2.b.c.x, arg_0), select(vec2<bool>(var_2.d.b, global2.d.b), vec2<bool>(var_2.b.b, var_2.c), vec2<bool>(true, var_2.c))), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.d.c.x, 55102u), global2.d.c.xy, global2.b.c.zy) & _wgslsmith_add_vec2_u32(global2.b.c.wy, var_2.b.c.xx), var_3)), var_2.d.c.zw);
    return Struct_1(global1[_wgslsmith_index_u32(global2.d.c.x, 2u)], var_3, _wgslsmith_add_vec4_u32(~global2.b.c, vec4<u32>(~37258u, _wgslsmith_add_u32(select(4294967295u, global2.d.c.x, false), _wgslsmith_div_u32(26199u, arg_0)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global2.d.c.wzz, global2.d.c.wzz), ~4294967295u), 0u)), global2.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1208f;
    global1 = array<vec4<i32>, 2>();
    let var_1 = Struct_2(true, func_1(global2.b.c.x, ~(~7574i)), false, func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-699f, -922f, 390f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(312f, 1296f, 1248f)))))), _wgslsmith_f_op_vec3_f32(func_2()).x, vec2<bool>(any(vec4<bool>(global2.c, false, global2.d.b, global2.d.b)), global2.a), max(global2.b.d, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, global2.b.a.x), global2.b.a.yx, global2.b.d))).b);
    var var_2 = 48791u;
    global1 = array<vec4<i32>, 2>();
    global0 = array<vec3<bool>, 28>();
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -664f), _wgslsmith_f_op_f32(f32(-1f) * -1893f)) - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-268f * -719f))), _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(step(-662f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1782f)) - _wgslsmith_f_op_f32(-124f + 205f))))));
    var var_4 = global2.b.b | select(func_1(~34329u, -2147483647i).b, var_1.d.b, false);
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(~min(2147483647i, var_1.d.a.x), u_input.a | countOneBits(-11943i), global2.b.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -345f) * -243f) * var_3.x) * _wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1627f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2708f, -171f)), var_1.b.a.x);
}

