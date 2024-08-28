struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: u32 = 14879u;

var<private> global2: array<Struct_1, 31>;

var<private> global3: i32 = 33867i;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    global1 = u_input.b.x;
    let var_0 = vec3<bool>(select(all(vec3<bool>(true, true, true)), all(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), max(firstTrailingBit(u_input.a.x), u_input.c) != -u_input.a.x), true, !(true && (_wgslsmith_f_op_f32(-1819f - 485f) > _wgslsmith_f_op_f32(trunc(1378f)))));
    let var_1 = global2[_wgslsmith_index_u32(min(68005u, 57925u), 31u)];
    var var_2 = 10030i;
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(166f - -427f), _wgslsmith_f_op_f32(trunc(1831f))), -1044f, _wgslsmith_f_op_f32(floor(210f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1175f, -573f, -1699f)) * vec3<f32>(-297f, 153f, 1015f)), vec3<f32>(_wgslsmith_f_op_f32(-1281f * 1619f), _wgslsmith_f_op_f32(f32(-1f) * -180f), _wgslsmith_f_op_f32(360f - 112f)), !var_1.a))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-159f, 3213f, 109f, -131f), vec4<f32>(1052f, -368f, -402f, -370f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-474f, 329f, -638f, 1000f)), true)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-520f, 1927f, -1000f, -393f) * vec4<f32>(-597f, -687f, -529f, -1759f))))), all(vec4<bool>(false, var_1.a, var_0.x, var_0.x)) && true, Struct_1(false), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(86622u, 120906u, 37839u, u_input.b.x), reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, 21339u, 72586u)), max(vec4<u32>(u_input.b.x, 60073u, 23036u, u_input.b.x), vec4<u32>(u_input.b.x, 71165u, u_input.b.x, u_input.b.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 49735u, 4294967295u), vec4<u32>(u_input.b.x, 43613u, u_input.b.x, u_input.b.x)))));
    return _wgslsmith_f_op_f32(round(var_3.a.x));
}

fn func_2(arg_0: vec4<i32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f + 307f), -124f, _wgslsmith_f_op_f32(f32(-1f) * -1471f), 1f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(773f + 914f), -1048f)), _wgslsmith_f_op_f32(-809f - _wgslsmith_div_f32(-673f, -301f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1085f)), -1164f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1403f), _wgslsmith_f_op_f32(select(1772f, -1001f, true))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1561f, 1144f, 907f, 271f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1271f, 128f, -250f, 404f) - vec4<f32>(-1465f, -385f, -863f, -1393f))))))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_0.x, -241f)), -918f, _wgslsmith_f_op_f32(func_3()), 243f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0 - var_0) + _wgslsmith_f_op_vec4_f32(var_0 + vec4<f32>(var_0.x, -518f, var_0.x, var_0.x))))), true, Struct_1(true), vec4<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(58555u, 1u, u_input.b.x, u_input.b.x), vec4<u32>(43023u, u_input.b.x, 0u, u_input.b.x)), abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 30374u))), _wgslsmith_mod_u32(1809u, u_input.b.x), 14310u, 32722u));
    global1 = u_input.b.x;
    var var_2 = Struct_2(var_0, var_1.b, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(631f, var_1.a.x)), -1825f) == _wgslsmith_f_op_f32(-var_1.a.x)), var_1.d);
    var var_3 = var_2.a.x;
    return ~vec2<u32>(~30437u, ~55899u);
}

fn func_1() -> f32 {
    global2 = array<Struct_1, 31>();
    let var_0 = true;
    let var_1 = ~_wgslsmith_mod_vec2_u32(func_2(reverseBits(countOneBits(vec4<i32>(u_input.a.x, u_input.c, 0i, u_input.a.x)))), vec2<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)) >> (u_input.b % vec2<u32>(32u)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-491f, -754f, 1236f))))))), Struct_2(vec4<f32>(-1191f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(976f, 1307f) + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1525f)) - 478f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + 1292f), _wgslsmith_f_op_f32(f32(-1f) * -118f))), true, global2[_wgslsmith_index_u32(u_input.b.x, 31u)], ~vec4<u32>(1u, u_input.b.x, _wgslsmith_div_u32(51792u, 1u), var_1.x)));
    let var_3 = -(_wgslsmith_clamp_i32(-18120i, _wgslsmith_div_i32(0i, 2147483647i) & -u_input.c, ~u_input.a.x) << (((var_1.x ^ var_1.x) << (_wgslsmith_add_u32(_wgslsmith_add_u32(var_2.b.d.x, 0u), 1u) % 32u)) % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    let var_1 = ~4684u;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 147f, 394f, -1152f)), vec4<f32>(-1063f, -196f, 1327f, -572f), vec4<bool>(true, true, true, true)))) + vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + 685f), _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-677f, -414f)), 1f)));
    var var_3 = Struct_3(var_2.yzy, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(444f - -1000f), _wgslsmith_div_f32(var_2.x, -1323f), var_2.x)), false, global2[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(1u, u_input.b.x, u_input.b.x)), 31u)], min(max(vec4<u32>(48619u, var_1, var_1, 21851u) >> (vec4<u32>(30911u, u_input.b.x, var_1, 10262u) % vec4<u32>(32u)), ~vec4<u32>(u_input.b.x, 14279u, 0u, u_input.b.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, var_1, u_input.b.x, 58136u), vec4<u32>(var_1, var_1, 60780u, var_1)))));
    global0 = var_3.b.c.a || !(var_3.b.d.x == ((var_3.b.d.x >> (var_3.b.d.x % 32u)) & var_3.b.d.x));
    global2 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(~abs(reverseBits(vec2<i32>(u_input.a.x, u_input.c))), _wgslsmith_clamp_vec2_i32(-firstLeadingBit(vec2<i32>(0i, u_input.a.x)), vec2<i32>(2147483647i, countOneBits(-49660i)), (vec2<i32>(u_input.a.x, u_input.a.x) ^ vec2<i32>(-1i, 2147483647i)) ^ vec2<i32>(u_input.c, u_input.c))), vec4<i32>(-38707i, reverseBits(-57712i), _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a.x >> (30839u % 32u), u_input.c), u_input.a.x | u_input.c), max(68302i, -2147483647i)));
}

