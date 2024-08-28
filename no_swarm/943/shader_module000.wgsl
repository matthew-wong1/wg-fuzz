struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8>;

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_1, 1>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    let var_0 = vec4<u32>(abs(select(~_wgslsmith_mod_u32(4294967295u, 42035u), ~_wgslsmith_add_u32(u_input.e, 0u), true)), _wgslsmith_add_u32(~(4294967295u ^ u_input.e), 13334u) ^ firstLeadingBit(10815u), abs(abs(u_input.e)), countOneBits(1u));
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1564f) + -328f))), 1012f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f) + _wgslsmith_f_op_f32(trunc(-244f)))))), Struct_1(abs(abs(var_0.x | 0u)), -1582f, select(select(!vec2<bool>(global1.x, global1.x), !vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x)), select(select(vec2<bool>(true, false), vec2<bool>(global1.x, true), false), vec2<bool>(true, true), !vec2<bool>(global1.x, false)), false)), global2[_wgslsmith_index_u32(~35009u, 1u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-462f, -580f, 192f), vec3<f32>(1341f, -894f, 981f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-451f, -1269f, 1000f)))), vec3<f32>(1f, 1f, 1f))));
    var var_2 = ~(~1u);
    let var_3 = select(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.a.x, -3442i, firstLeadingBit(0i), 1i)), _wgslsmith_sub_vec4_i32(u_input.b, ~vec4<i32>(u_input.c, u_input.b.x, -8148i, u_input.c))), ~(-max(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(-70742i, 12616i, u_input.a.x, 2147483647i)), u_input.a)), vec4<bool>(true, all(!vec3<bool>(global1.x, false, var_1.c.c.x)), _wgslsmith_mod_u32(var_1.b.a, 58036u) > ~(~var_0.x), true));
    var var_4 = Struct_4(_wgslsmith_clamp_vec4_i32(~(vec4<i32>(-1i) * -u_input.a), var_3 | vec4<i32>(8106i, firstLeadingBit(u_input.d), var_3.x ^ -35680i, firstLeadingBit(u_input.b.x)), var_3), Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(var_1.d, var_1.d)))), _wgslsmith_f_op_vec3_f32(-var_1.d)), global2[_wgslsmith_index_u32(1u, 1u)], Struct_1(~u_input.e, _wgslsmith_f_op_f32(-620f - _wgslsmith_f_op_f32(round(var_1.a.x))), vec2<bool>(any(var_1.b.c), false)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.b, var_1.b.b, var_1.a.x) * var_1.a) - var_1.a)))), select(select(vec3<bool>(false, false, true), vec3<bool>(all(var_1.b.c), var_1.b.c.x, global1.x), !all(vec4<bool>(var_1.b.c.x, var_1.c.c.x, true, global1.x))), vec3<bool>(false, any(!vec4<bool>(var_1.b.c.x, var_1.c.c.x, var_1.b.c.x, global1.x)), any(vec3<bool>(true, true, true))), any(!vec2<bool>(global1.x, false))));
    return vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_4.b.a.x, -1000f)), _wgslsmith_f_op_f32(var_4.b.b.b - var_4.b.d.x), !var_4.c.x)) + _wgslsmith_f_op_f32(-var_1.a.x)) <= 1183f);
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(385f, 1477f, 1830f))))), Struct_1(0u, _wgslsmith_div_f32(1898f, _wgslsmith_f_op_f32(select(1000f, 1337f, global1.x))), vec2<bool>(false, false)), Struct_1(~(u_input.e << (19145u % 32u)), _wgslsmith_f_op_f32(-1696f - _wgslsmith_f_op_f32(round(1267f))), func_3()), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -116f, 1000f)), _wgslsmith_div_vec3_f32(vec3<f32>(-2394f, -1234f, -369f), vec3<f32>(198f, -176f, -1118f))))))), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1560f, -514f, _wgslsmith_f_op_f32(-601f + 928f)) * vec3<f32>(_wgslsmith_f_op_f32(553f - -733f), _wgslsmith_f_op_f32(step(-524f, 1228f)), 830f)), global2[_wgslsmith_index_u32(0u & abs(select(u_input.e, 0u, false)), 1u)], global2[_wgslsmith_index_u32(u_input.e << (_wgslsmith_sub_u32(u_input.e, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.e, u_input.e), vec3<u32>(u_input.e, u_input.e, u_input.e))) % 32u), 1u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), vec4<i32>(_wgslsmith_mod_i32(~(-7277i), u_input.a.x), 0i, u_input.b.x, 0i), vec3<u32>(56992u, ~(~57227u), 41251u) >> (select(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, 0u, 86390u), vec3<u32>(4294967295u, u_input.e, 46147u), vec3<u32>(u_input.e, 1u, u_input.e)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.e, u_input.e), vec3<u32>(u_input.e, 64722u, 0u))), vec3<u32>(select(u_input.e, u_input.e, global1.x), 4294967295u << (u_input.e % 32u), ~u_input.e), select(select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, false, true)), select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, false, false)), func_3().x)) % vec3<u32>(32u)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), Struct_1(31382u, _wgslsmith_div_f32(-1211f, _wgslsmith_f_op_f32(ceil(1206f))), vec2<bool>(all(vec4<bool>(true, global1.x, false, global1.x)), true)), global2[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(20205u, ~53432u), countOneBits(~u_input.e)), 1u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-339f, -1000f, 2413f) * vec3<f32>(-1000f, 571f, -164f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(752f, 405f, 288f), vec3<f32>(-835f, 1564f, 1037f), true))), vec3<f32>(-143f, _wgslsmith_f_op_f32(round(1394f)), _wgslsmith_f_op_f32(min(348f, -1789f))))));
    let var_1 = global0[_wgslsmith_index_u32(u_input.e, 8u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.c.b) - _wgslsmith_div_f32(871f, -943f));
    var_0 = Struct_3(var_1.b, var_0.e, vec4<i32>(var_1.a.x, _wgslsmith_add_i32(abs(max(1i, 7466i)), var_0.c.x), var_1.a.x, _wgslsmith_add_i32(0i, _wgslsmith_add_i32(~var_0.c.x, var_0.c.x))), vec3<u32>(firstLeadingBit(firstTrailingBit(var_1.b.b.a)), 0u, _wgslsmith_mod_u32(var_0.a.b.a, 79372u)) & var_0.d, var_0.e);
    var var_3 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_mult_u32(select(var_0.b.b.a | 16590u, u_input.e, global1.x), var_1.b.c.a), 1u), var_0.a.b.b, select(!var_0.b.c.c, var_1.c.xx, func_3()));
    return _wgslsmith_f_op_vec3_f32(-var_1.b.d);
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-467f * -137f), arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_2.b))))), _wgslsmith_f_op_f32(min(arg_2.b, _wgslsmith_f_op_f32(-arg_2.b))));
    global2 = array<Struct_1, 1>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())), global2[_wgslsmith_index_u32(~35237u ^ firstLeadingBit(_wgslsmith_div_u32(61408u, u_input.e) >> (4294967295u % 32u)), 1u)], Struct_1(~_wgslsmith_add_u32(u_input.e, arg_2.a), var_0.x, func_3()), var_0.wyx);
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-arg_2.b), var_0.x))), global2[_wgslsmith_index_u32(u_input.e, 1u)], Struct_1(arg_2.a, var_0.x, select(vec2<bool>(arg_1.x, global1.x), select(var_1.c.c, vec2<bool>(var_1.c.c.x, true), false), arg_2.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1063f, -539f, var_1.b.b)))) - var_1.a)), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_1.a)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, var_1.c.b, -418f)))), global2[_wgslsmith_index_u32(~max(select(0u, 0u, true), ~1u), 1u)], Struct_1(_wgslsmith_dot_vec3_u32(max(vec3<u32>(66397u, 0u, 13216u), vec3<u32>(0u, 23768u, u_input.e)), vec3<u32>(18459u, var_1.b.a, u_input.e) ^ vec3<u32>(4294967295u, 1u, 1u)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.b.c), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, arg_2.b, arg_2.b) * var_1.a))))), u_input.b, ~(~reverseBits(reverseBits(vec3<u32>(4294967295u, arg_2.a, arg_2.a)))), Struct_2(var_1.d, Struct_1(u_input.e, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1610f + 1290f))), var_1.b.c), Struct_1(~0u, _wgslsmith_f_op_f32(round(574f)), !select(var_1.c.c, arg_2.c, vec2<bool>(global1.x, true))), _wgslsmith_div_vec3_f32(var_1.a, vec3<f32>(-1524f, arg_2.b, var_0.x))));
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - -805f), _wgslsmith_div_f32(-874f, -1255f), arg_2.b) + var_1.a), Struct_1(1340u, _wgslsmith_f_op_f32(max(var_2.a.d.x, -192f)), !arg_2.c), Struct_1(_wgslsmith_mod_u32(~var_2.a.c.a, _wgslsmith_dot_vec2_u32(var_2.d.xy, vec2<u32>(4294967295u, arg_2.a))), var_0.x, !(!vec2<bool>(arg_1.x, arg_2.c.x))), vec3<f32>(-1437f, _wgslsmith_f_op_f32(-var_0.x), var_0.x)), var_2.e, var_2.c, vec3<u32>(~min(1u, 4294967295u), u_input.e, arg_2.a), var_2.a);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2389f)), _wgslsmith_f_op_f32(max(-1893f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(119f * 837f))))), _wgslsmith_f_op_f32(-var_3.a.c.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 42466u), ~vec2<u32>(u_input.e, abs(4294967295u))), 8u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(u_input.a.x, !vec4<bool>(var_0.c.x, false, false, false), global2[_wgslsmith_index_u32(u_input.e >> (var_0.b.c.a % 32u), 1u)])) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.b.c.b, -599f) * vec3<f32>(var_0.b.d.x, var_0.b.a.x, var_0.b.d.x)), vec3<f32>(-976f, 374f, 443f))))) - _wgslsmith_f_op_vec3_f32(-var_0.b.a));
    var_1 = var_0.b.d;
    global2 = array<Struct_1, 1>();
    let var_2 = ~select(vec3<u32>(50840u, var_0.b.c.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.c.a, u_input.e, 21598u, 0u), select(vec4<u32>(4294967295u, 4294967295u, 1u, u_input.e), vec4<u32>(48589u, 484u, 0u, u_input.e), true))), ~vec3<u32>(u_input.e, 10710u, 40214u), vec3<bool>(global1.x, true, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-614f)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(-231f)), _wgslsmith_f_op_f32(abs(-1000f))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), var_1.x, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -260f)))), var_0.a.x, _wgslsmith_div_vec2_f32(var_1.yz, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec3_f32(func_2()).xz, _wgslsmith_f_op_vec2_f32(-var_1.zx)))), u_input.b.yxx);
}

