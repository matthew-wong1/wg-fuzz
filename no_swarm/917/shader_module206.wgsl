struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(739f, -873f);

var<private> global1: array<Struct_1, 9>;

var<private> global2: vec2<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> u32 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) + _wgslsmith_f_op_f32(1051f + global0.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-550f, global0.x)))), _wgslsmith_f_op_f32(-global0.x))));
    var var_0 = vec3<bool>(true, true, true);
    var_0 = vec3<bool>(_wgslsmith_f_op_f32(abs(global0.x)) <= global0.x, true, var_0.x);
    let var_1 = true;
    return ~46866u;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(arg_3.a.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -466f));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> vec4<u32> {
    var var_0 = Struct_2(max(-u_input.a.yx, u_input.a.zy), vec2<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_div_i32(-global2.x, ~(-13866i)), u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, global0.x)))), global1[_wgslsmith_index_u32(func_3(all(arg_0)), 9u)])), global0.x), vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_add_i32(global2.x, u_input.a.x), firstLeadingBit(11387i), global2.x, _wgslsmith_clamp_i32(u_input.a.x, global2.x, global2.x))), reverseBits(_wgslsmith_dot_vec3_i32(select(vec3<i32>(global2.x, 60039i, 0i), u_input.a.xzy, true), _wgslsmith_sub_vec3_i32(vec3<i32>(global2.x, u_input.a.x, -59480i), vec3<i32>(global2.x, global2.x, global2.x))))), -2147483647i);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(abs(-167f))), 553f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    global1 = array<Struct_1, 9>();
    global2 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(~(-var_0.c.x), i32(-1i) * -41188i), ~27950i), max(var_0.d, 52022i));
    var_0 = Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(global2.x), -1i), 0i), vec2<i32>(0i, -14033i) ^ firstLeadingBit(~u_input.a.zz)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, var_0.b.x), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, 772f))))) + _wgslsmith_f_op_vec2_f32(-var_0.b)))), vec2<i32>(-1i) * -vec2<i32>(global2.x, _wgslsmith_mult_i32(u_input.a.x, var_0.a.x)), countOneBits(~(~(-1i))));
    return vec4<u32>(24828u, 0u, u_input.b, u_input.b);
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: vec4<i32>) -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(115f, global0.x))))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(step(1619f, global0.x))), 577f)))), 1602f);
    var var_0 = Struct_1(vec2<f32>(391f, 1717f), vec2<bool>(arg_1, all(select(vec2<bool>(arg_1, false), !vec2<bool>(false, arg_1), true | arg_1))));
    let var_1 = ~arg_0;
    let var_2 = -69430i;
    return ~(-var_2);
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_div_vec3_i32(u_input.a.zyx, u_input.a.zwx);
    global2 = reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(~(-1i), 26965i & u_input.a.x), vec2<i32>(-1i) * -u_input.a.zz) << (arg_0.zx % vec2<u32>(32u)));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-798f + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))));
    let var_1 = select(func_5(~(~func_2(vec3<bool>(true, true, true), true)), ~select(4294967295u, 48144u, false) > u_input.b, vec4<i32>(_wgslsmith_mult_i32(u_input.a.x | u_input.a.x, -2147483647i), -1i, 0i, _wgslsmith_clamp_i32(-2229i, abs(global2.x), var_0.x))), countOneBits(~2147483647i), all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), !select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), true))));
    global1 = array<Struct_1, 9>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-142f - 1090f)) * _wgslsmith_div_f32(475f, -1551f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-404f)))), 1170f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, -294f, global0.x), vec3<f32>(global0.x, 960f, -1349f))))))));
    var var_1 = Struct_2(min(_wgslsmith_sub_vec2_i32(~select(vec2<i32>(u_input.a.x, 38333i), u_input.a.yx, true), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 30016i), u_input.a.ww) ^ vec2<i32>(48716i, global2.x)), firstTrailingBit(u_input.a.wy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_0.x, 413f), _wgslsmith_f_op_f32(func_1(vec3<u32>(1u, 13873u, 0u)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(911f, var_0.x), vec2<f32>(global0.x, var_0.x)))))), vec2<i32>(-1i) * -u_input.a.xy, ~global2.x >> (firstLeadingBit(~51490u) % 32u));
    let var_2 = select(vec3<bool>(!(u_input.b < 0u), true, all(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, false))))), select(select(vec3<bool>(true, true, any(vec3<bool>(true, true, false))), vec3<bool>(true, true, true), true), !vec3<bool>(false, false, 4294967295u >= u_input.b), true), vec3<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), global2.x != u_input.a.x)), false));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, var_0.x)), false)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.b.x, -385f), vec2<f32>(var_0.x, -221f)))))), !var_2.xz);
    var_1 = Struct_2(var_1.c, _wgslsmith_f_op_vec2_f32(abs(var_3.a)), _wgslsmith_sub_vec2_i32(select(u_input.a.xz, ~u_input.a.yx, select(vec2<bool>(var_3.b.x, false), vec2<bool>(false, false), var_2.x)), var_1.c) | ~min(firstTrailingBit(vec2<i32>(-25592i, global2.x)), -var_1.c), -23761i);
    var_1 = Struct_2(vec2<i32>(22274i, u_input.a.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-571f, 817f), _wgslsmith_div_vec2_f32(var_1.b, var_1.b)))), var_3.a)), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(u_input.a.x, global2.x)), -firstTrailingBit(~vec2<i32>(global2.x, var_1.a.x)), ~(~_wgslsmith_div_vec2_i32(var_1.c, var_1.c))), 1099i);
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a.x), firstLeadingBit(u_input.a.xw))), _wgslsmith_mod_vec2_u32(~(~abs(vec2<u32>(1u, 0u))), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(72818u, u_input.b)), ~vec2<u32>(u_input.b, 1u)), vec2<u32>(29804u, u_input.b))), 2147483647i, var_1.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.a.x)) - _wgslsmith_f_op_f32(floor(-556f))) + _wgslsmith_f_op_f32(func_4(select(-36703i, global2.x, var_3.b.x), u_input.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, 1704f), vec2<f32>(var_0.x, var_1.b.x), vec2<bool>(false, var_3.b.x))), Struct_1(var_0.yx, vec2<bool>(var_3.b.x, var_3.b.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1452f * -1000f) + _wgslsmith_f_op_f32(-1138f * 668f)), var_1.b.x)))));
}

