struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11>;

var<private> global1: array<bool, 19>;

var<private> global2: i32;

var<private> global3: vec3<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: bool) -> vec2<i32> {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 275f) * vec2<f32>(-815f, -515f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1420f, -651f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-583f, arg_1)))), select(select(vec2<bool>(true, global3.x), global3.zz, vec2<bool>(false, true)), vec2<bool>(global3.x, true), global3.zx)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1055f, _wgslsmith_div_f32(arg_1, arg_1))), _wgslsmith_f_op_f32(-108f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(334f, arg_1) + _wgslsmith_f_op_f32(round(322f))))));
    var var_1 = Struct_3(reverseBits(max(countOneBits(vec2<u32>(u_input.a, 2401u)), select(vec2<u32>(u_input.a, 114458u), vec2<u32>(0u, u_input.a), global1[_wgslsmith_index_u32(4730u, 19u)]) >> (select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(86254u, u_input.a), global1[_wgslsmith_index_u32(u_input.a, 19u)]) % vec2<u32>(32u)))), Struct_2(Struct_1(-u_input.b, _wgslsmith_mult_u32(47240u, _wgslsmith_add_u32(u_input.a, 4294967295u)), min(-u_input.b.xzz, abs(vec3<i32>(arg_0.x, u_input.b.x, -56708i))), u_input.a), Struct_1(u_input.b, 0u, min(u_input.b.zyw, ~u_input.b.xxw), _wgslsmith_sub_u32(91917u, u_input.a)), Struct_1(abs(vec4<i32>(18999i, u_input.c.x, u_input.b.x, -2147483647i)), ~3246u, vec3<i32>(u_input.c.x, ~(-47120i), _wgslsmith_add_i32(0i, 2147483647i)), 4294967295u)));
    var var_2 = select(vec4<bool>(true, true, false, all(global3.xy)), select(select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 19u)], global3.x, global1[_wgslsmith_index_u32(var_1.b.b.b, 19u)], arg_2), !(!vec4<bool>(global3.x, global1[_wgslsmith_index_u32(36305u, 19u)], false, global3.x)), vec4<bool>(true, false, true, global3.x)), select(select(vec4<bool>(arg_2, global1[_wgslsmith_index_u32(1004u, 19u)], global3.x, false), select(vec4<bool>(false, global3.x, false, true), vec4<bool>(arg_2, global3.x, true, arg_2), arg_2), vec4<bool>(false, false, global3.x, false)), !(!vec4<bool>(false, global3.x, global1[_wgslsmith_index_u32(var_1.b.c.d, 19u)], true)), all(!vec2<bool>(global1[_wgslsmith_index_u32(50420u, 19u)], true))), !vec4<bool>(global1[_wgslsmith_index_u32(~44435u, 19u)], arg_2 || true, !global3.x, any(global0[_wgslsmith_index_u32(var_1.b.a.d, 11u)]))), false);
    global3 = !var_2.wyy;
    let var_3 = var_1.b;
    return -max(~(-(u_input.b.wx >> (var_1.a % vec2<u32>(32u)))), ~(-var_1.b.c.a.wz >> (~var_1.a % vec2<u32>(32u))));
}

fn func_2() -> Struct_3 {
    let var_0 = u_input.b.xw | func_3(abs(~(-vec2<i32>(u_input.c.x, 18598i))), _wgslsmith_f_op_f32(ceil(-161f)), all(global3.zz));
    global0 = array<vec3<bool>, 11>();
    global3 = global0[_wgslsmith_index_u32(abs(u_input.a), 11u)];
    global0 = array<vec3<bool>, 11>();
    let var_1 = Struct_2(Struct_1(vec4<i32>(-2147483647i, _wgslsmith_div_i32(u_input.c.x, abs(964i)), 2147483647i, 76306i), u_input.a, u_input.b.ywy, 7915u), Struct_1(_wgslsmith_sub_vec4_i32(select(abs(u_input.b), vec4<i32>(u_input.c.x, 12084i, var_0.x, 13630i), !vec4<bool>(true, false, false, global3.x)), _wgslsmith_sub_vec4_i32(u_input.b, u_input.b) ^ abs(u_input.b)), select(~max(u_input.a, 97402u), countOneBits(u_input.a), true), -(~vec3<i32>(u_input.b.x, 1i, 15336i)), select(~1u, 4294967295u, global1[_wgslsmith_index_u32(select(u_input.a, u_input.a, true), 19u)])), Struct_1(u_input.b, firstTrailingBit(~(~u_input.a)), min(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.c.x, -42493i) | vec3<i32>(u_input.c.x, var_0.x, -1i), _wgslsmith_div_vec3_i32(u_input.b.wzy, u_input.b.zzx)), u_input.b.zzx), ~abs(reverseBits(8920u))));
    return Struct_3(vec2<u32>(var_1.c.b, u_input.a), Struct_2(var_1.a, var_1.a, var_1.b));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: f32) -> u32 {
    global2 = u_input.b.x;
    var var_0 = func_2();
    let var_1 = var_0.b;
    global2 = 26886i;
    var_0 = Struct_3(vec2<u32>(~(~(~44248u)), var_0.b.c.b), func_2().b);
    return ~63431u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(543f * _wgslsmith_f_op_f32(floor(-1070f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1141f)) - _wgslsmith_f_op_f32(select(152f, -102f, true))))))));
    var var_1 = Struct_3(~vec2<u32>(_wgslsmith_add_u32(u_input.a, _wgslsmith_div_u32(0u, u_input.a)), ~func_1(u_input.c, global1[_wgslsmith_index_u32(u_input.a, 19u)], -787f)), Struct_2(func_2().b.c, Struct_1(select(vec4<i32>(-63548i, u_input.c.x, u_input.b.x, 29095i) & u_input.b, _wgslsmith_div_vec4_i32(u_input.b, u_input.b), !vec4<bool>(global3.x, true, global1[_wgslsmith_index_u32(u_input.a, 19u)], false)), u_input.a, -select(vec3<i32>(u_input.b.x, 15706i, 1i), u_input.b.zyw, global1[_wgslsmith_index_u32(u_input.a, 19u)]), ~4294967295u), func_2().b.a));
    var var_2 = Struct_3(vec2<u32>(31428u, 0u), Struct_2(Struct_1(firstLeadingBit(u_input.b), _wgslsmith_dot_vec3_u32(select(vec3<u32>(22290u, u_input.a, 94775u), vec3<u32>(4294967295u, 4294967295u, 61540u), true), max(vec3<u32>(var_1.a.x, var_1.b.c.b, 14540u), vec3<u32>(u_input.a, 0u, u_input.a))), func_2().b.a.c, var_1.a.x), Struct_1(vec4<i32>(u_input.b.x, u_input.c.x << (23481u % 32u), reverseBits(u_input.c.x), -var_1.b.c.c.x), u_input.a, vec3<i32>(1i, var_1.b.b.a.x, -37413i) | vec3<i32>(var_1.b.b.c.x, 1i, u_input.b.x), 4294967295u), func_2().b.b));
    let var_3 = vec4<bool>(false, !(!any(vec3<bool>(true, true, global3.x))), true, global3.x);
    let var_4 = Struct_4(184f, func_2().b.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-139f, -436f, -1352f), vec3<f32>(-1000f, 1248f, -296f), select(var_3.xwx, global0[_wgslsmith_index_u32(55756u, 11u)], global0[_wgslsmith_index_u32(var_2.a.x, 11u)]))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1877f, -670f, 518f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(970f, 762f, 217f))))))), 1i, var_1.b);
    let var_5 = _wgslsmith_f_op_f32(f32(-1f) * -733f);
    let var_6 = -vec4<i32>(_wgslsmith_clamp_i32(0i, _wgslsmith_sub_i32(var_4.e.a.a.x, _wgslsmith_add_i32(var_2.b.a.a.x, var_4.d)), abs(_wgslsmith_div_i32(u_input.b.x, var_1.b.c.c.x))), firstLeadingBit(0i), 4589i, ~(-3750i));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b.x), ~_wgslsmith_add_u32(_wgslsmith_mod_u32(0u, ~0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.b.c.b, var_2.b.a.b, var_1.a.x, var_4.e.b.d), _wgslsmith_mult_vec4_u32(vec4<u32>(var_4.b.b, var_1.a.x, var_2.a.x, 1u), vec4<u32>(4294967295u, 49455u, 1u, var_2.a.x)))), ~(~(~vec4<u32>(4294967295u, u_input.a, 1u, var_1.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(296f, _wgslsmith_f_op_f32(round(437f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-208f + var_5) * _wgslsmith_f_op_f32(var_4.c.x + 1533f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_4.c, vec3<f32>(var_4.c.x, -1173f, -1000f)))) * var_4.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_4.c, var_4.c)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -166f), _wgslsmith_f_op_f32(floor(-229f)), var_4.a)));
}

