struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(-1i, 0i, 38155i, -102582i), vec4<f32>(-2137f, 428f, -1925f, 1215f), 67629u);

var<private> global1: f32 = 1065f;

var<private> global2: array<vec4<f32>, 29>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> i32 {
    let var_0 = true;
    let var_1 = Struct_1(select(select(!vec4<bool>(false, var_0, arg_0.a.x, global0.a.x), vec4<bool>(true, arg_0.a.x, var_0, true), ~u_input.a == ~1u), select(vec4<bool>(global0.a.x, !arg_0.a.x, any(vec4<bool>(var_0, global0.a.x, true, true)), !arg_0.a.x), select(select(vec4<bool>(false, true, true, arg_0.a.x), vec4<bool>(false, var_0, false, false), vec4<bool>(false, global0.a.x, false, true)), global0.a, vec4<bool>(true, global0.a.x, false, true)), !(false != var_0)), !select(global0.a, select(arg_0.a, vec4<bool>(arg_0.a.x, arg_0.a.x, true, false), global0.a.x), !global0.a.x)), -firstLeadingBit(vec4<i32>(u_input.b.x, -11460i, _wgslsmith_add_i32(10382i, u_input.b.x), _wgslsmith_mod_i32(global0.b.x, u_input.b.x))), _wgslsmith_f_op_vec4_f32(trunc(arg_0.c)), _wgslsmith_div_u32(1u, (~1u | (0u & u_input.a)) ^ 4294967295u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * -829f));
    var var_3 = Struct_1(arg_0.a, (global0.b >> (vec4<u32>(~49157u, ~global0.d, var_1.d, _wgslsmith_sub_u32(u_input.a, var_1.d)) % vec4<u32>(32u))) & vec4<i32>(_wgslsmith_div_i32(arg_0.b.x, global0.b.x), _wgslsmith_clamp_i32(0i, -1i, global0.b.x) ^ global0.b.x, max(-var_1.b.x, reverseBits(u_input.b.x)), -2147483647i), _wgslsmith_f_op_vec4_f32(-arg_0.c), ~_wgslsmith_mult_u32(~0u << (u_input.a % 32u), _wgslsmith_mod_u32(4294967295u, u_input.a)));
    var var_4 = select(arg_0.a.wz, vec2<bool>(false, !var_3.a.x), vec2<bool>(!(!global0.a.x), !any(!var_3.a.ww)));
    return var_3.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: vec3<u32>) -> vec2<bool> {
    var var_0 = Struct_1(global0.a, vec4<i32>(u_input.b.x, 2147483647i, _wgslsmith_add_i32(-abs(global0.b.x), ~global0.b.x << (1u % 32u)), global0.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(~4294967295u, 29u)]) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, 1122f, -989f, 577f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1380f, -872f, -1588f, global0.c.x) + global2[_wgslsmith_index_u32(global0.d, 29u)]))))), 4294967295u);
    var var_1 = -func_3(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-893f, 693f, -433f), vec3<f32>(-1000f, global0.c.x, arg_0.c.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1005f, var_0.c.x, 438f)))));
    var var_2 = -var_0.b.ywz;
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -2748f);
    var_2 = vec3<i32>(max(-1i, global0.b.x), _wgslsmith_div_i32(-5104i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(abs(arg_0.b.xy), vec2<i32>(global0.b.x, 0i)), (var_2.zz | global0.b.yz) & -global0.b.yy)), var_2.x);
    return var_0.a.zz;
}

fn func_1() -> vec3<i32> {
    global2 = array<vec4<f32>, 29>();
    let var_0 = all(select(select(select(global0.a.yz, global0.a.zz, !vec2<bool>(false, global0.a.x)), !func_2(Struct_1(vec4<bool>(false, global0.a.x, false, global0.a.x), global0.b, vec4<f32>(global0.c.x, global0.c.x, global0.c.x, global0.c.x), 0u), global0.a.yzy, global0.a.x, vec3<u32>(u_input.a, 0u, 1u)), !(!vec2<bool>(false, global0.a.x))), select(global0.a.zw, global0.a.xw, false || !global0.a.x), func_2(Struct_1(global0.a, vec4<i32>(0i, -2147483647i, global0.b.x, 41827i) >> (vec4<u32>(21444u, 1140u, 0u, u_input.a) % vec4<u32>(32u)), vec4<f32>(global0.c.x, 640f, global0.c.x, 123f), global0.d | 40200u), vec3<bool>(true, true, true), global0.a.x, ~(~vec3<u32>(global0.d, u_input.a, u_input.a)))));
    var var_1 = Struct_1(!select(!(!global0.a), global0.a, global0.a), -(~(-vec4<i32>(global0.b.x, global0.b.x, 0i, global0.b.x)) >> (~(~vec4<u32>(u_input.a, global0.d, 1u, global0.d)) % vec4<u32>(32u))), global0.c, ~u_input.a);
    var var_2 = Struct_1(select(var_1.a, vec4<bool>(!(!global0.a.x), false, _wgslsmith_f_op_f32(-var_1.c.x) >= _wgslsmith_f_op_f32(-var_1.c.x), !(!global0.a.x)), global0.a), -select(var_1.b >> (vec4<u32>(var_1.d, 24774u, u_input.a, 18875u) % vec4<u32>(32u)), vec4<i32>(abs(-17137i), -17201i, global0.b.x, global0.b.x), global0.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.c, global0.c))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(var_1.c.x * -967f), global0.c.x, _wgslsmith_f_op_f32(-global0.c.x)))), var_1.d);
    global0 = Struct_1(select(select(vec4<bool>(false, true, true, !var_1.a.x), select(var_1.a, select(vec4<bool>(var_2.a.x, var_2.a.x, true, false), vec4<bool>(global0.a.x, false, true, var_1.a.x), var_2.a), var_2.a), vec4<bool>(true, !var_1.a.x, any(global0.a), var_1.a.x)), var_1.a, !var_0 & global0.a.x), -var_1.b, _wgslsmith_f_op_vec4_f32(round(var_1.c)), ~u_input.a);
    return countOneBits(global0.b.zxz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(u_input.b.x & -2147483647i, global0.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x, global0.b.x | 26889i, 0i), func_1()));
    global1 = _wgslsmith_f_op_f32(global0.c.x + -456f);
    global2 = array<vec4<f32>, 29>();
    var var_1 = Struct_1(select(!global0.a, global0.a, global0.a.x), -firstLeadingBit(global0.b), _wgslsmith_f_op_vec4_f32(round(global2[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, 1u), vec3<u32>(0u, 0u, 0u)), firstTrailingBit(4294967295u), !any(global0.a.yw)), 29u)])), global0.d);
    var var_2 = Struct_1(vec4<bool>(global0.a.x, func_2(Struct_1(select(vec4<bool>(var_1.a.x, global0.a.x, global0.a.x, var_1.a.x), var_1.a, global0.a), select(vec4<i32>(u_input.b.x, -45903i, global0.b.x, u_input.b.x), vec4<i32>(global0.b.x, var_1.b.x, -1i, 1i), vec4<bool>(false, global0.a.x, global0.a.x, true)), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(11469u, 29u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(49129u, 1u, 0u), vec3<u32>(global0.d, u_input.a, 15329u))), select(global0.a.xxz, vec3<bool>(true, var_1.a.x, true), var_1.a.x), global0.a.x, _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(var_1.d, u_input.a, var_1.d)), vec3<u32>(global0.d, global0.d, 1u))).x, true, true), abs(select(max(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.b.x, var_0.x, var_0.x, var_1.b.x), var_1.b), global0.b), var_1.b, vec4<bool>(global0.a.x, -717f > var_1.c.x, var_1.a.x, var_1.a.x))), _wgslsmith_f_op_vec4_f32(max(global2[_wgslsmith_index_u32(52010u, 29u)], _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.c.x, global0.c.x, 1352f, global0.c.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-673f, global0.c.x, global0.c.x, global0.c.x), var_1.c, vec4<bool>(global0.a.x, var_1.a.x, var_1.a.x, false))))))), ~33270u);
    var_1 = Struct_1(!vec4<bool>(any(!var_1.a.zy), !(var_2.d != global0.d), select(true, global0.c.x <= global0.c.x, 37744u < u_input.a), any(var_2.a.wz)), select(~vec4<i32>(-21745i, ~0i, countOneBits(global0.b.x), select(var_2.b.x, var_0.x, var_1.a.x)), _wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, 0i, 0i, u_input.b.x), _wgslsmith_sub_vec4_i32(var_1.b, var_2.b)), any(var_2.a.yzy)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2410f, _wgslsmith_f_op_f32(sign(-262f)), global0.c.x, global0.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, var_1.c.x, var_1.c.x, 474f) + vec4<f32>(var_1.c.x, 114f, 1375f, var_2.c.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c), var_1.c)), var_1.a.x)), ~max(1u ^ var_2.d, ~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(125896u, abs(var_2.d)));
}

