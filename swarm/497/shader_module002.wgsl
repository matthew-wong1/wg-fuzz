struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(i32(-2147483648), i32(-2147483648), -1i, 0i, 40098i, 30021i, 9622i, i32(-2147483648), 1i);

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false));

var<private> global3: vec3<i32> = vec3<i32>(2147483647i, i32(-2147483648), 9368i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> bool {
    let var_0 = ~4294967295u != arg_0.d.x;
    var var_1 = (i32(-1i) * -952i) ^ ~_wgslsmith_dot_vec2_i32(firstLeadingBit(~vec2<i32>(global0[_wgslsmith_index_u32(17425u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)])), _wgslsmith_mod_vec2_i32(min(vec2<i32>(global0[_wgslsmith_index_u32(5940u, 9u)], 0i), global3.yz), max(vec2<i32>(arg_0.c.x, -19085i), vec2<i32>(2147483647i, -34012i))));
    let var_2 = u_input.b;
    return true;
}

fn func_2(arg_0: vec3<f32>) -> vec3<bool> {
    let var_0 = vec2<i32>(global3.x, ~(-global3.x));
    let var_1 = Struct_2(Struct_1(!(true || func_3(Struct_4(vec3<u32>(u_input.a.x, 26029u, u_input.c.x), global2[_wgslsmith_index_u32(0u, 32u)], u_input.b.zw, vec4<u32>(4294967295u, u_input.a.x, 44037u, u_input.c.x), vec4<i32>(-55170i, global0[_wgslsmith_index_u32(38461u, 9u)], u_input.b.x, global0[_wgslsmith_index_u32(50222u, 9u)]))))), vec3<bool>(global1.x && any(global2[_wgslsmith_index_u32(1u, 32u)]), all(!vec4<bool>(true, global1.x, global1.x, global1.x)), (u_input.c.x >> (4294967295u % 32u)) > _wgslsmith_dot_vec4_u32(select(vec4<u32>(5664u, 28057u, u_input.c.x, 1u), vec4<u32>(3730u, u_input.a.x, 87241u, u_input.c.x), vec4<bool>(global1.x, false, global1.x, false)), vec4<u32>(81427u, u_input.a.x, 42441u, 0u))), Struct_1(global1.x));
    var var_2 = Struct_4(countOneBits(vec3<u32>(~u_input.a.x, firstLeadingBit(u_input.a.x), reverseBits(u_input.a.x)) & ~u_input.c.xxy), var_1.b, abs(_wgslsmith_clamp_vec2_i32(u_input.b.zy, global3.yy, vec2<i32>(-57009i, u_input.b.x) << (vec2<u32>(0u, u_input.c.x) % vec2<u32>(32u)))), ~u_input.a, -u_input.b);
    global1 = !vec3<bool>(!all(select(vec4<bool>(false, false, var_1.b.x, global1.x), vec4<bool>(var_2.b.x, true, var_1.a.a, false), vec4<bool>(var_2.b.x, true, global1.x, false))), !(~17850i >= select(-1i, global3.x, var_1.c.a)), !(false | !var_1.c.a));
    var var_3 = vec2<u32>(_wgslsmith_mult_u32(var_2.d.x ^ 4294967295u, _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(reverseBits(var_2.d.xyz), vec3<u32>(1u, u_input.c.x, 19474u)))), var_2.a.x);
    return !vec3<bool>(var_2.b.x, var_1.a.a, false);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: bool, arg_3: vec4<u32>) -> Struct_4 {
    let var_0 = Struct_2(Struct_1(true), !select(select(func_2(arg_1.zzy), vec3<bool>(arg_2, arg_2, global1.x), arg_2), !global2[_wgslsmith_index_u32(0u, 32u)], !select(global2[_wgslsmith_index_u32(19883u, 32u)], global2[_wgslsmith_index_u32(arg_3.x, 32u)], global2[_wgslsmith_index_u32(u_input.c.x, 32u)])), Struct_1(true));
    let var_1 = _wgslsmith_sub_vec4_i32(u_input.b, select(u_input.b, -(~vec4<i32>(-9862i, arg_0.x, u_input.b.x, arg_0.x)), arg_2) << (~min(u_input.c, arg_3) % vec4<u32>(32u)));
    var var_2 = var_0;
    var var_3 = arg_3;
    var var_4 = Struct_1(var_0.a.a);
    return Struct_4(firstLeadingBit(vec3<u32>(var_3.x, _wgslsmith_sub_u32(29432u, var_3.x) ^ arg_3.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, arg_3.x), _wgslsmith_add_u32(arg_3.x, 56352u)))), var_2.b, firstTrailingBit(u_input.b.xy) ^ -(~vec2<i32>(arg_0.x, global0[_wgslsmith_index_u32(arg_3.x, 9u)]) >> (vec2<u32>(45079u, u_input.c.x) % vec2<u32>(32u))), select(_wgslsmith_sub_vec4_u32(u_input.c, abs(u_input.c)), select(reverseBits(vec4<u32>(4294967295u, u_input.c.x, arg_3.x, 1u)), reverseBits(vec4<u32>(0u, u_input.c.x, var_3.x, u_input.c.x)), any(var_2.b)) & vec4<u32>(4294967295u, _wgslsmith_clamp_u32(4294967295u, var_3.x, u_input.a.x), _wgslsmith_div_u32(arg_3.x, u_input.a.x), select(arg_3.x, 26928u, true)), var_0.b.x), u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: vec2<f32>) -> vec3<u32> {
    var var_0 = select(vec2<bool>(true, !global1.x), vec2<bool>(arg_2.b.x, select(true, !arg_2.b.x & arg_0.a, all(vec2<bool>(true, false)))), true);
    var var_1 = Struct_5(Struct_1(select(-5557i == global3.x, any(vec2<bool>(arg_2.b.x, arg_0.a)), var_0.x)));
    global0 = array<i32, 9>();
    var var_2 = Struct_5(var_1.a);
    var var_3 = Struct_3(Struct_1(!func_3(arg_2)), var_1.a, !(~arg_2.c.x > arg_2.c.x), !vec4<bool>(var_1.a.a || global1.x, arg_2.b.x, select(true, true, func_1(u_input.b.yxw, vec4<f32>(-370f, arg_1.x, 1493f, 1938f), var_2.a.a, vec4<u32>(u_input.a.x, arg_2.d.x, 13299u, arg_2.d.x)).b.x), arg_2.b.x), Struct_1(all(global1.zz)));
    return vec3<u32>(~arg_2.a.x, 61749u, ~firstTrailingBit(2747u)) >> (u_input.a.yxz % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(u_input.a.wzz, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], -reverseBits(_wgslsmith_mult_vec2_i32(-u_input.b.zy, _wgslsmith_div_vec2_i32(global3.zy, vec2<i32>(0i, 18562i)))), u_input.a, u_input.b);
    global0 = array<i32, 9>();
    var var_1 = _wgslsmith_f_op_f32(abs(374f));
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-118f))), _wgslsmith_f_op_f32(546f + 1f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1955f, -1312f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(657f, -931f), vec2<f32>(154f, -1178f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(765f, -826f)), var_0.b.x)))));
    var var_3 = func_4(Struct_1(var_0.b.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-387f - 1543f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1856f - -590f) + _wgslsmith_f_op_f32(select(477f, var_2.x, global1.x)))), _wgslsmith_f_op_f32(max(var_2.x, var_2.x))), func_1(u_input.b.wyx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, _wgslsmith_f_op_f32(2239f * var_2.x), var_2.x, var_2.x)), global1.x, _wgslsmith_mult_vec4_u32(u_input.a, ~abs(vec4<u32>(16250u, u_input.c.x, var_0.a.x, var_0.d.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 1940f) + var_2)))));
    var var_4 = vec3<bool>(global1.x, var_0.c.x > _wgslsmith_clamp_i32(var_0.e.x, max(min(global3.x, var_0.c.x), var_0.e.x), -1i | reverseBits(var_0.c.x)), true && !select(any(vec2<bool>(false, true)), !global1.x, any(var_0.b.yz)));
    var var_5 = Struct_3(Struct_1(var_4.x), Struct_1(true), (_wgslsmith_dot_vec4_u32(select(var_0.d, var_0.d, global1.x), _wgslsmith_add_vec4_u32(vec4<u32>(18336u, 99520u, 4294967295u, var_3.x), var_0.d)) >= 1u) & !var_4.x, !select(!(!vec4<bool>(true, var_0.b.x, true, true)), vec4<bool>(global1.x, true, global1.x, true), !var_4.x), Struct_1(var_0.b.x));
    let var_6 = _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(i32(-1i) * -76275i, u_input.b.x), ~u_input.b.wy >> (var_0.d.wz % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(-_wgslsmith_mod_vec2_i32(var_0.e.xy, vec2<i32>(8835i, var_0.e.x)), vec2<i32>(-33754i, 0i)), global3.yy) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_3.x), vec2<u32>(0u, 13074u)), abs(1u)), ~(~(~var_0.d.wz))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x ^ countOneBits(_wgslsmith_mod_u32(var_0.a.x, u_input.c.x) >> (_wgslsmith_mult_u32(var_0.d.x, 16801u) % 32u)), _wgslsmith_dot_vec4_i32(var_0.e, _wgslsmith_mult_vec4_i32(~select(vec4<i32>(0i, 19853i, global3.x, -21068i), vec4<i32>(-2147483647i, var_6.x, -15123i, 27642i), var_5.d), var_0.e)), -2147483647i);
}

