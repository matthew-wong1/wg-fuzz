struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1000f, -1445f, 1208f);

var<private> global1: array<Struct_4, 28>;

var<private> global2: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    return vec2<bool>(false, any(vec3<bool>(true, true, true)));
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_3 {
    let var_0 = func_3();
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, global2.x), global2.xy);
    let var_2 = Struct_2(Struct_1(~(-_wgslsmith_sub_i32(u_input.c.x, 1i)), abs(vec2<i32>(1i, i32(-1i) * -42811i)), -(~u_input.a.x | u_input.e), _wgslsmith_mult_vec4_i32(min(-vec4<i32>(-94816i, u_input.a.x, -41717i, 2147483647i), vec4<i32>(1i, -1i, u_input.a.x, -2147483647i) << (vec4<u32>(0u, 4294967295u, 16133u, 54576u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.e, u_input.a.x, u_input.d.x, u_input.a.x), firstTrailingBit(vec4<i32>(-2147483647i, u_input.e, u_input.a.x, 1i)), vec4<i32>(-42321i, u_input.e, u_input.e, -29381i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(max(global0.x, global0.x)), _wgslsmith_f_op_f32(global0.x * 695f), -1171f) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 590f, global0.x, 1575f) + vec4<f32>(global0.x, 601f, global0.x, global0.x)))))), Struct_1(2147483647i, _wgslsmith_mult_vec2_i32(u_input.c.yx, ~_wgslsmith_sub_vec2_i32(u_input.c.xy, vec2<i32>(u_input.e, u_input.d.x))), 15140i, vec4<i32>(firstTrailingBit(u_input.d.x), ~u_input.a.x, ~u_input.a.x, u_input.c.x | u_input.d.x) & (vec4<i32>(-1i) * -vec4<i32>(-2147483647i, u_input.e, -1i, 1i)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -566f, -1219f) + vec4<f32>(-324f, global0.x, global0.x, 1102f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -680f, global0.x, global0.x) - vec4<f32>(global0.x, global0.x, global0.x, global0.x)))))), !vec3<bool>(true && !var_0.x, true, !arg_0));
    return Struct_3(!any(select(!vec4<bool>(true, true, var_0.x, arg_0), !vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(false, var_0.x, false, arg_0))), Struct_2(Struct_1(-6988i, vec2<i32>(var_2.a.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-24021i, 2147483647i, var_2.b.d.x, 0i), vec4<i32>(1i, 39411i, var_2.a.d.x, u_input.a.x))), 34277i, vec4<i32>(u_input.c.x, 47503i, abs(var_2.a.d.x), _wgslsmith_add_i32(u_input.d.x, var_2.b.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(678f, 2118f, -585f, global0.x))), var_2.a, select(!var_2.c, var_2.c, var_2.c)), Struct_1(_wgslsmith_clamp_i32(-55020i, min(2147483647i, firstLeadingBit(-24721i)), ~abs(u_input.e)), vec2<i32>(2147483647i, -firstLeadingBit(var_2.a.a)), -1i, ~_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a.c, u_input.e, 23526i, 1i), firstTrailingBit(vec4<i32>(-2147483647i, var_2.a.b.x, 23151i, 0i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a.e - vec4<f32>(1204f, var_2.b.e.x, -1333f, global0.x)) - _wgslsmith_f_op_vec4_f32(var_2.a.e - var_2.b.e)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(var_2.a.e, var_2.b.e)), _wgslsmith_f_op_vec4_f32(var_2.a.e * vec4<f32>(-1069f, -1592f, 790f, global0.x)))))), _wgslsmith_sub_i32(var_2.a.a, ~(-17523i)), firstTrailingBit(firstLeadingBit(~0u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec4<f32>) -> Struct_4 {
    let var_0 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global2.yy, firstLeadingBit(select(vec2<u32>(arg_1.e, 1u), vec2<u32>(arg_0.x, 8134u), vec2<bool>(true, true)))), vec2<u32>(u_input.b.x, arg_1.e));
    let var_1 = _wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec4_i32(~arg_1.c.d, abs(firstTrailingBit(_wgslsmith_mult_vec4_i32(arg_1.c.d, vec4<i32>(-6148i, 3059i, arg_1.b.a.c, -7903i))))));
    global1 = array<Struct_4, 28>();
    var var_2 = select(!vec3<bool>(arg_2.x, true, arg_2.x), vec3<bool>((63224u ^ _wgslsmith_dot_vec2_u32(global2.yz, vec2<u32>(47896u, arg_0.x))) < reverseBits(_wgslsmith_mult_u32(43825u, arg_0.x)), any(vec3<bool>(arg_1.a, arg_2.x, true)), false), true);
    let var_3 = global1[_wgslsmith_index_u32(~firstLeadingBit(firstLeadingBit(var_0) | arg_1.e), 28u)];
    return Struct_4(min(arg_0.x, arg_1.e), u_input.b.yz, arg_1.b);
}

fn func_5(arg_0: Struct_4, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = Struct_4(max(~u_input.b.x, 1u), ~(_wgslsmith_mult_vec2_u32(~vec2<u32>(global2.x, arg_0.b.x), vec2<u32>(arg_0.b.x, global2.x)) & arg_0.b), func_4(vec3<u32>(u_input.b.x, u_input.b.x, _wgslsmith_add_u32(~u_input.b.x, u_input.b.x ^ arg_0.a)), func_2(any(!arg_1.yx), 48115u), select(!vec3<bool>(arg_0.c.c.x, false, true), vec3<bool>(false && arg_1.x, any(vec2<bool>(false, false)), all(arg_1.yx)), !(!arg_1.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_0.c.b.e, vec4<f32>(1000f, global0.x, -890f, 1000f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2561f, arg_0.c.b.e.x, -3027f, -1874f) - vec4<f32>(arg_0.c.a.e.x, global0.x, 339f, 1659f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.c.a.e.x, 1228f, arg_0.c.b.e.x, 909f), vec4<f32>(arg_0.c.a.e.x, arg_0.c.a.e.x, -172f, 728f))))).c);
    let var_1 = func_2(arg_0.a > _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, ~global2.x, countOneBits(1u)), vec3<u32>(_wgslsmith_div_u32(var_0.b.x, 28691u), _wgslsmith_add_u32(1u, global2.x), global2.x & var_0.b.x)), ~(~var_0.b.x));
    return Struct_3(var_1.a, Struct_2(Struct_1(var_1.d, vec2<i32>(arg_0.c.a.b.x ^ -16035i, u_input.a.x), -(u_input.a.x ^ var_0.c.b.b.x), _wgslsmith_sub_vec4_i32(vec4<i32>(6295i, arg_0.c.a.c, var_0.c.b.a, 2147483647i), vec4<i32>(var_0.c.b.d.x, -65200i, 29118i, -4900i)), var_0.c.b.e), func_4(u_input.b, func_2(!var_1.b.c.x, 0u), var_1.b.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2077f, global0.x, var_0.c.b.e.x, var_0.c.a.e.x)) + var_0.c.a.e)).c.a, !vec3<bool>(!arg_1.x, false, true)), Struct_1(~(-15440i), countOneBits(u_input.d.zz), -(~(var_0.c.b.c & -1i)), max(~var_0.c.a.d, var_0.c.a.d), _wgslsmith_div_vec4_f32(arg_0.c.b.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c.e * vec4<f32>(global0.x, 672f, var_1.c.e.x, arg_0.c.b.e.x)) + _wgslsmith_div_vec4_f32(arg_0.c.a.e, vec4<f32>(var_1.c.e.x, -831f, global0.x, global0.x))))), min(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_0.c.b.b.x, _wgslsmith_dot_vec2_i32(arg_0.c.b.b, vec2<i32>(0i, 1i)), var_0.c.a.c), ~1i & reverseBits(var_1.c.c)), var_1.d), ~abs(~_wgslsmith_mult_u32(global2.x, 19870u)));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: vec4<u32>) -> i32 {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(2485f, 216f, 1501f));
    var var_0 = func_5(func_4(u_input.b, func_2(all(select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, false, true, false), vec4<bool>(arg_0, arg_0, true, arg_0))), global2.x), vec3<bool>(any(!vec4<bool>(false, arg_0, arg_0, arg_0)), any(!vec2<bool>(arg_0, true)), arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -991f, 1000f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-165f, -1510f, -595f, 1121f))))), select(select(!(!vec4<bool>(arg_0, arg_0, arg_0, false)), select(!vec4<bool>(false, arg_0, false, arg_0), select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, true, false), vec4<bool>(true, arg_0, false, true)), true), true), !vec4<bool>(arg_0, global2.x < arg_3.x, arg_0, false), !(arg_0 | !arg_0)));
    var var_1 = func_2(true, 0u);
    var var_2 = vec2<i32>(var_1.b.b.c, max(2147483647i, -1i));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b.a.e.x, global0.x, var_0.b.a.e.x), vec3<f32>(1000f, -1767f, var_1.b.a.e.x)))) - _wgslsmith_f_op_vec3_f32(-var_1.b.a.e.yxw)) - var_0.b.b.e.wzz) + var_1.b.a.e.xzz);
    return ~u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(func_1(true, countOneBits(firstLeadingBit(vec4<i32>(21793i, u_input.e, -2147483647i, -1i)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 12493i, -1i, u_input.a.x), vec4<i32>(u_input.c.x, u_input.e, u_input.e, u_input.e))), _wgslsmith_mult_vec3_i32(~u_input.d, vec3<i32>(u_input.e, u_input.c.x, 17148i)) << (vec3<u32>(min(5380u, global2.x), 58963u, _wgslsmith_mod_u32(20179u, 52727u)) % vec3<u32>(32u)), ~(~(~vec4<u32>(0u, global2.x, u_input.b.x, 1u)))));
    let var_1 = Struct_2(func_2(select(func_4(vec3<u32>(u_input.b.x, 0u, u_input.b.x), Struct_3(false, Struct_2(Struct_1(u_input.a.x, u_input.d.zz, -2147483647i, vec4<i32>(6757i, -18250i, -5159i, u_input.c.x), vec4<f32>(-734f, 976f, global0.x, global0.x)), Struct_1(u_input.a.x, u_input.a.yz, -1576i, vec4<i32>(u_input.a.x, u_input.c.x, var_0, -4638i), vec4<f32>(-1460f, global0.x, global0.x, 131f)), vec3<bool>(true, false, false)), Struct_1(2147483647i, u_input.a.yz, u_input.d.x, vec4<i32>(-1i, u_input.d.x, 44163i, u_input.c.x), vec4<f32>(1205f, global0.x, global0.x, -851f)), -1i, 1u), vec3<bool>(false, false, true), vec4<f32>(global0.x, global0.x, global0.x, -965f)).c.c.x, global0.x != global0.x, true) | true, _wgslsmith_add_u32(0u, ~(0u & global2.x))).b.a, Struct_1(_wgslsmith_sub_i32(~_wgslsmith_div_i32(var_0, -5337i), func_5(Struct_4(79029u, u_input.b.zz, Struct_2(Struct_1(var_0, vec2<i32>(u_input.e, 15061i), -1i, vec4<i32>(2147483647i, 17766i, var_0, 0i), vec4<f32>(global0.x, 482f, global0.x, 816f)), Struct_1(var_0, vec2<i32>(-8359i, var_0), 1i, vec4<i32>(var_0, var_0, u_input.a.x, var_0), vec4<f32>(global0.x, global0.x, 368f, global0.x)), vec3<bool>(true, true, false))), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false)).c.b.x), u_input.d.yz, _wgslsmith_add_i32(i32(-1i) * -5284i, var_0), min(-vec4<i32>(-1i, -7040i, u_input.e, u_input.d.x) | ~vec4<i32>(var_0, u_input.a.x, var_0, 5150i), ~abs(vec4<i32>(var_0, u_input.d.x, -1i, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -372f, global0.x) * vec4<f32>(global0.x, global0.x, -131f, -419f)))))), vec3<bool>(true, any(vec2<bool>(true, func_2(false, u_input.b.x).a)), func_5(func_4(~vec3<u32>(4294967295u, global2.x, u_input.b.x), Struct_3(false, Struct_2(Struct_1(var_0, u_input.c.zx, 34281i, vec4<i32>(u_input.a.x, -1i, 33311i, var_0), vec4<f32>(global0.x, global0.x, -1000f, global0.x)), Struct_1(var_0, u_input.c.yy, var_0, vec4<i32>(-4547i, 29940i, var_0, 4395i), vec4<f32>(-1000f, -456f, -514f, -577f)), vec3<bool>(false, false, true)), Struct_1(-47863i, vec2<i32>(var_0, 42240i), u_input.d.x, vec4<i32>(var_0, u_input.d.x, u_input.c.x, -12685i), vec4<f32>(global0.x, global0.x, -1000f, global0.x)), u_input.c.x, 59364u), vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -382f, 1627f, global0.x))), vec4<bool>(true, true, all(vec2<bool>(false, false)), true)).a));
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_1.b.e.wwy)));
    let var_2 = -392f;
    let var_3 = Struct_4(4294967295u, u_input.b.yx, var_1);
    let var_4 = Struct_1(~_wgslsmith_dot_vec4_i32(func_2(true, ~50315u).b.a.d, _wgslsmith_mult_vec4_i32(vec4<i32>(-23016i, u_input.c.x, var_1.b.a, 16126i), var_3.c.a.d) << ((vec4<u32>(u_input.b.x, 0u, 36462u, 1u) | vec4<u32>(global2.x, 6410u, 1u, 74470u)) % vec4<u32>(32u))), vec2<i32>(abs(var_3.c.a.b.x), var_1.a.c), -31155i, var_3.c.b.d, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1463f, _wgslsmith_f_op_f32(max(-371f, var_3.c.a.e.x)), _wgslsmith_f_op_f32(round(-1455f)), _wgslsmith_f_op_f32(-var_2)))))));
    let var_5 = Struct_1(select(var_3.c.b.c | firstLeadingBit(var_1.a.b.x), abs(-56030i), any(var_3.c.c.zx)), ~_wgslsmith_sub_vec2_i32(var_4.b, var_1.a.d.yx), -11502i, vec4<i32>(select(_wgslsmith_add_i32(reverseBits(var_0), -u_input.a.x), -41655i, !(!var_3.c.c.x)), 1i, ~reverseBits(2147483647i), -40224i), vec4<f32>(_wgslsmith_div_f32(437f, 804f), -1618f, var_3.c.b.e.x, _wgslsmith_f_op_f32(step(-366f, func_2(var_3.c.c.x, 35443u).c.e.x))));
    var var_6 = var_5;
    var var_7 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_5(Struct_4(select(var_3.b.x, var_3.a, false), ~vec2<u32>(u_input.b.x, 0u), Struct_2(Struct_1(var_0, var_1.a.d.ww, -2147483647i, var_1.a.d, vec4<f32>(1897f, -1000f, -1000f, var_4.e.x)), Struct_1(-6835i, vec2<i32>(var_4.d.x, var_1.b.c), -1708i, vec4<i32>(2147483647i, var_5.a, -13148i, var_3.c.a.c), vec4<f32>(1419f, var_5.e.x, var_3.c.a.e.x, var_5.e.x)), vec3<bool>(var_3.c.c.x, var_1.c.x, false))), select(vec4<bool>(false, var_3.c.c.x, var_3.c.c.x, false), select(vec4<bool>(var_1.c.x, var_1.c.x, false, true), vec4<bool>(false, false, var_1.c.x, var_1.c.x), vec4<bool>(var_3.c.c.x, false, var_3.c.c.x, true)), !var_3.c.c.x)).c.e.x), ~_wgslsmith_div_u32(1u, 96908u));
}

