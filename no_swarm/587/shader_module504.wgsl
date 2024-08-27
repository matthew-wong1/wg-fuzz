struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(1u, 1u, 18406u, 68950u, 0u, 4294967295u, 127711u, 36381u, 0u);

var<private> global1: vec2<u32>;

var<private> global2: i32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<bool>, arg_3: bool) -> vec4<u32> {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(371f, 537f, 232f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-637f, -854f, 813f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(164f, -738f, -1760f), vec3<f32>(-414f, 208f, 351f), false))))), ~u_input.e.yz << (vec2<u32>(global0[_wgslsmith_index_u32(firstTrailingBit(40889u), 9u)], 40661u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(global1.x, global1.x)), firstTrailingBit(vec2<u32>(25992u, 0u) ^ vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], 1u)), u_input.a.zw)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1157f, 644f, -868f) - vec3<f32>(792f, -1377f, -1282f)), vec3<f32>(-464f, 1432f, 1000f)) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-745f, 761f, -317f)))))), countOneBits(vec2<i32>(u_input.e.x, 33511i)), vec2<u32>(4294967295u, _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), ~1u))), Struct_2(vec2<u32>(global1.x, select(0u, u_input.a.x, arg_3)) << (abs(vec2<u32>(0u, 0u)) % vec2<u32>(32u)), u_input.c.x, u_input.a, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-298f, _wgslsmith_f_op_f32(floor(-1909f)), _wgslsmith_f_op_f32(ceil(-186f))))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1098f, -2114f, -139f)), max(vec2<i32>(0i, 41700i), vec2<i32>(arg_1, -14233i)), _wgslsmith_add_vec2_u32(vec2<u32>(4718u, global0[_wgslsmith_index_u32(global1.x, 9u)]), u_input.c.yz))), abs((vec3<i32>(1i, 2147483647i, 40276i) | countOneBits(vec3<i32>(u_input.e.x, arg_1, 1i))) << (u_input.c % vec3<u32>(32u))), _wgslsmith_div_vec4_f32(vec4<f32>(-2370f, _wgslsmith_f_op_f32(f32(-1f) * -611f), 423f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1416f), -387f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(392f, -488f, 273f, -1105f)))))));
    global2 = -(~var_0.c.e.b.x);
    var var_1 = var_0.a;
    let var_2 = all(arg_0.wy);
    var var_3 = var_0.b.c.x << (var_0.b.c.x % 32u);
    return u_input.a;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> u32 {
    global1 = arg_0.wy;
    var var_0 = any(vec3<bool>(true, true, true));
    var var_1 = 1000f;
    let var_2 = global1.x;
    var_0 = all(vec2<bool>(true, !any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true))));
    return global1.x;
}

fn func_2() -> bool {
    var var_0 = vec2<u32>(53864u, ~func_4(func_3(vec4<bool>(false, false, true, false), u_input.b, vec4<bool>(true, false, false, true), false), Struct_3(Struct_1(vec3<f32>(-313f, 278f, -1000f), vec2<i32>(u_input.e.x, u_input.d), vec2<u32>(u_input.c.x, u_input.a.x)), Struct_1(vec3<f32>(277f, -1000f, -1101f), u_input.e.yx, vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(39563u, 9u)])), Struct_2(vec2<u32>(0u, 4294967295u), 29987u, vec4<u32>(0u, u_input.c.x, 84036u, 21410u), vec3<f32>(837f, 221f, -711f), Struct_1(vec3<f32>(-1416f, -1543f, 371f), vec2<i32>(u_input.b, u_input.b), u_input.c.yx)), vec3<i32>(-1i, -1i, -1i), vec4<f32>(1044f, -330f, -660f, -1490f)), -2147483647i, ~20726u));
    global0 = array<u32, 9>();
    let var_1 = ~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c.x ^ 500u, min(global1.x, 71224u)), select(~35426u, max(var_0.x, 8022u), true)), firstTrailingBit(u_input.c.x));
    var var_2 = vec3<i32>(u_input.d, 15068i, _wgslsmith_clamp_i32(u_input.e.x, firstTrailingBit(22089i) >> (_wgslsmith_add_u32(u_input.c.x, 4294967295u) % 32u), 41301i)) << (_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(4294967295u, var_1.x, 1u)), u_input.c), vec3<u32>(u_input.a.x, var_0.x, u_input.c.x)) % vec3<u32>(32u));
    return !(!(_wgslsmith_sub_i32(abs(3633i), _wgslsmith_mult_i32(4794i, u_input.b)) != 26722i));
}

fn func_5(arg_0: vec3<bool>, arg_1: u32) -> Struct_1 {
    global2 = -firstLeadingBit(u_input.d);
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1059f)), 1324f)));
    let var_1 = _wgslsmith_f_op_f32(sign(-227f));
    let var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(15563i, -1i | min(1i, reverseBits(u_input.b)), 2147483647i), firstTrailingBit(u_input.e.xyy) >> (select(vec3<u32>(countOneBits(u_input.c.x), ~1u, 21253u), ~vec3<u32>(49666u, global1.x, 10659u) & (vec3<u32>(global0[_wgslsmith_index_u32(1u, 9u)], u_input.a.x, 4904u) & u_input.a.zzx), true) % vec3<u32>(32u)));
    var_0 = _wgslsmith_f_op_f32(1548f + -1146f);
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-566f, var_1, 1591f), vec3<f32>(var_1, -1188f, 2903f), vec3<bool>(true, false, arg_0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, -1234f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(528f, var_1, var_1))))))), abs(_wgslsmith_sub_vec2_i32(~(u_input.e.zw ^ u_input.e.yw), -(u_input.e.ww >> (vec2<u32>(542u, 0u) % vec2<u32>(32u))))), ~u_input.c.xy);
}

fn func_1() -> vec4<u32> {
    var var_0 = func_5(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(global1.x < global1.x, true, select(false, false, false))), vec3<bool>(!func_2(), true, ~u_input.c.x >= 4294967295u), false), global0[_wgslsmith_index_u32(u_input.a.x, 9u)]);
    global0 = array<u32, 9>();
    let var_1 = ~u_input.c.yz;
    var var_2 = Struct_2(~_wgslsmith_div_vec2_u32(~(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(var_0.c.x, 9u)]) << (vec2<u32>(var_0.c.x, u_input.a.x) % vec2<u32>(32u))), abs(abs(var_1))), var_0.c.x, _wgslsmith_div_vec4_u32(~(firstTrailingBit(u_input.a) & vec4<u32>(0u, 4294967295u, 1u, var_0.c.x)), ~vec4<u32>(~global1.x, ~17541u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, u_input.c.x), var_0.c), _wgslsmith_div_u32(4294967295u, u_input.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(353f - 622f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a.x)) * _wgslsmith_f_op_f32(-var_0.a.x)))), func_5(vec3<bool>(false, true, any(vec4<bool>(true, false, true, true))), abs(~_wgslsmith_mult_u32(var_0.c.x, 83184u))));
    let var_3 = _wgslsmith_div_u32(~(~1u), ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.c.x, 0u, 1u), vec3<u32>(global1.x, var_0.c.x, 70593u), vec3<u32>(1u, var_2.c.x, global0[_wgslsmith_index_u32(var_0.c.x, 9u)]) & vec3<u32>(u_input.c.x, var_1.x, var_1.x)), var_2.c.wyz ^ ~u_input.a.xwy));
    return vec4<u32>(1u, var_1.x, 4294967295u, _wgslsmith_mod_u32(var_2.b, 7694u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), true), any(vec3<bool>(true, true, true))), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), !vec3<bool>(false, true, (u_input.b >> (global1.x % 32u)) <= _wgslsmith_add_i32(u_input.d, 1i)), true);
    global1 = u_input.c.xx;
    let var_1 = Struct_3(Struct_1(vec3<f32>(641f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-577f + 112f) * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-291f - -222f))), vec2<i32>(u_input.e.x, reverseBits(firstTrailingBit(-6941i))), ~_wgslsmith_add_vec2_u32(vec2<u32>(global1.x, global0[_wgslsmith_index_u32(1u, 9u)]), select(vec2<u32>(19027u, global1.x), vec2<u32>(44946u, 32115u), vec2<bool>(false, var_0.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(388f, -316f, 1892f))), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.e.yy << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), ~vec2<i32>(-53363i, -1i)), -select(u_input.e.xy, vec2<i32>(u_input.b, u_input.e.x), false)), vec2<u32>(u_input.a.x, 47412u)), Struct_2(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(~u_input.a.yw, _wgslsmith_add_vec2_u32(u_input.c.yy, vec2<u32>(global0[_wgslsmith_index_u32(global1.x, 9u)], 58644u)))), _wgslsmith_mult_u32(max(select(u_input.a.x, u_input.a.x, false), ~global0[_wgslsmith_index_u32(22648u, 9u)]), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.c.yz, vec2<u32>(4294967295u, 0u)), u_input.c.x)), func_1(), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-651f, 2816f, 615f), vec3<f32>(1370f, -983f, 1134f)), vec3<f32>(-1210f, -1149f, -870f))))), func_5(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x), var_0.x & var_0.x), 1u)), u_input.e.www, vec4<f32>(-527f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1409f, _wgslsmith_f_op_f32(select(-582f, 481f, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1360f))) * _wgslsmith_f_op_f32(select(1000f, 813f, any(var_0)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -524f), -163f))))));
    var var_2 = !any(select(select(var_0, select(vec3<bool>(var_0.x, var_0.x, var_0.x), var_0, vec3<bool>(true, false, var_0.x)), var_0.x & var_0.x), !(!var_0), var_0));
    let var_3 = var_0.x;
    let var_4 = var_1.b;
    global2 = 0i;
    var var_5 = ~var_1.a.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~func_4(u_input.a, Struct_3(var_1.a, var_1.c.e, Struct_2(u_input.a.wz, u_input.c.x, var_1.c.c, var_1.a.a, Struct_1(vec3<f32>(579f, 536f, -964f), vec2<i32>(4887i, -3298i), var_4.c)), u_input.e.wzz, vec4<f32>(206f, 156f, var_4.a.x, -451f)), var_4.b.x, 96319u)), var_4.b.x);
}

