struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: Struct_2,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<bool, 29>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global0 = 1u;
    global2 = array<bool, 29>();
    var var_0 = Struct_1(-4516i, _wgslsmith_add_vec2_i32(u_input.c.zx, vec2<i32>(_wgslsmith_add_i32(-u_input.c.x, ~(-6912i)), ~1i)));
    var var_1 = u_input.a.wwz;
    global2 = array<bool, 29>();
    return _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b.x, 8961u), u_input.b.x, max(firstLeadingBit(u_input.b.x), 4294967295u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_3(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 16574u, 28282u | u_input.b.x), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_0.a.x, 95203u), vec3<u32>(49860u, u_input.b.x, 4294967295u)), vec3<u32>(u_input.b.x, 16035u, u_input.b.x))), vec3<u32>(4294967295u, ~arg_0.a.x, u_input.b.x) ^ _wgslsmith_mod_vec3_u32(~u_input.b, u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1511f, -878f, -1130f, 754f) - vec4<f32>(-1468f, 692f, -236f, -2253f))))), arg_0, 662f, arg_1.b);
    global0 = 0u;
    var var_1 = 4294967295u;
    let var_2 = global2[_wgslsmith_index_u32(~4294967295u, 29u)];
    let var_3 = -998f;
    return _wgslsmith_dot_vec4_u32(min(vec4<u32>((u_input.b.x << (17568u % 32u)) ^ abs(u_input.b.x), 3813u, arg_0.a.x | u_input.b.x, u_input.b.x), firstLeadingBit(~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, var_0.c.a.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(~4294967295u), ~func_3(), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.yx, vec2<u32>(1u, 1u)), vec2<u32>(var_0.a.x, 0u)), 27285u), vec4<u32>(1u, _wgslsmith_mult_u32(~arg_0.a.x, u_input.b.x), 964u, ~(~var_0.c.a.x))));
}

fn func_1() -> f32 {
    var var_0 = 4294967295u;
    var var_1 = Struct_1(u_input.d.x, _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.d.x ^ -14296i, abs(1i)), 2147483647i), u_input.c.xy));
    var var_2 = vec3<i32>(~_wgslsmith_clamp_i32(-34133i, var_1.b.x, abs(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-44957i, -49891i, -2147483647i, u_input.c.x)))), -68566i, var_1.a);
    let var_3 = Struct_2(_wgslsmith_clamp_vec2_u32(u_input.b.zy | abs(vec2<u32>(u_input.b.x, u_input.b.x)), u_input.b.yy, vec2<u32>(func_2(Struct_2(u_input.b.zx, global2[_wgslsmith_index_u32(1u, 29u)], false), Struct_1(64245i, var_2.zx)), ~2472u)) >> (u_input.b.yx % vec2<u32>(32u)), false, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), firstTrailingBit(abs(1u)) ^ _wgslsmith_div_u32(~u_input.b.x, _wgslsmith_div_u32(u_input.b.x, 4294967295u))), 29u)]);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -803f), _wgslsmith_f_op_f32(f32(-1f) * -253f), _wgslsmith_f_op_f32(step(2207f, -481f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(234f, 525f, 234f) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1472f, -1560f, -901f))))) * vec3<f32>(1615f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1102f) * _wgslsmith_f_op_f32(trunc(-1044f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -707f) * 514f))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(499f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-693f - var_4.x)))))));
}

fn func_4(arg_0: vec4<f32>) -> u32 {
    let var_0 = Struct_3(~vec3<u32>(u_input.b.x, _wgslsmith_sub_u32(111115u, 14280u), min(~u_input.b.x, u_input.b.x & u_input.b.x)), arg_0, Struct_2(~firstLeadingBit(vec2<u32>(4294967295u, 28722u) >> (u_input.b.zx % vec2<u32>(32u))), !global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b.x, countOneBits(4294967295u)), 29u)], any(vec2<bool>(global2[_wgslsmith_index_u32(~u_input.b.x, 29u)], all(vec3<bool>(global2[_wgslsmith_index_u32(10222u, 29u)], true, global2[_wgslsmith_index_u32(u_input.b.x, 29u)]))))), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)), -vec2<i32>(-2147483647i, reverseBits(u_input.d.x)));
    var var_1 = 1u;
    let var_2 = -1158f;
    let var_3 = u_input.a;
    var_1 = reverseBits(var_0.c.a.x);
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(285f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -823f) + _wgslsmith_f_op_f32(f32(-1f) * -1081f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -449f), -324f))), -1034f));
    var var_1 = vec3<f32>(381f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(615f, -353f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(332f, 259f, false)))), _wgslsmith_f_op_f32(f32(-1f) * -485f))));
    var var_2 = ~(~4294967295u);
    global2 = array<bool, 29>();
    let var_3 = select(!(!vec4<bool>(!global2[_wgslsmith_index_u32(u_input.b.x, 29u)], any(vec4<bool>(false, true, true, false)), true, global2[_wgslsmith_index_u32(u_input.b.x >> (76537u % 32u), 29u)])), !vec4<bool>(global2[_wgslsmith_index_u32(~(~u_input.b.x), 29u)], true, any(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 29u)], global2[_wgslsmith_index_u32(31118u, 29u)], true, false)), true), true);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1177f - var_1.x), _wgslsmith_f_op_f32(max(var_1.x, var_1.x)))), var_1.x, -2007f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, -678f, var_1.x), vec3<f32>(-813f, var_1.x, var_1.x))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-319f, 737f, var_1.x))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(trunc(-417f)), _wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x - var_1.x), var_1.x))));
    global1 = firstTrailingBit(u_input.a.x);
    var_1 = vec3<f32>(-673f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1355f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x * 624f), global2[_wgslsmith_index_u32(~u_input.b.x, 29u)])))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-684f + var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -307f)))), _wgslsmith_div_vec2_i32(firstTrailingBit(u_input.d.yz) | vec2<i32>(~(-2147483647i), u_input.a.x), reverseBits(_wgslsmith_div_vec2_i32(u_input.a.yx, vec2<i32>(43045i, -6639i))) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, u_input.a.x), _wgslsmith_mod_vec2_i32(u_input.c.zx, vec2<i32>(16459i, 0i)), _wgslsmith_div_vec2_i32(u_input.d.xy, vec2<i32>(u_input.c.x, 1i)))), vec2<u32>(u_input.b.x | u_input.b.x, u_input.b.x), u_input.b.zz);
}

