struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 27>;

var<private> global1: array<f32, 31>;

var<private> global2: Struct_1;

var<private> global3: array<i32, 3>;

var<private> global4: vec3<u32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<u32> {
    var var_0 = vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(~(vec4<i32>(global3[_wgslsmith_index_u32(global4.x, 3u)], u_input.c, 3699i, -2147483647i) & vec4<i32>(-2147483647i, u_input.b.x, global3[_wgslsmith_index_u32(global4.x, 3u)], -2147483647i)), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(2147483647i, global3[_wgslsmith_index_u32(0u, 3u)], -2147483647i, u_input.c)), countOneBits(vec4<i32>(-36697i, u_input.b.x, 2147483647i, 7136i))));
    let var_1 = u_input.b;
    let var_2 = Struct_1(~vec2<u32>(73217u, ~1u), select(select(vec2<bool>(false || global2.b.x, false), vec2<bool>(true, false & global2.d.x), global2.c.xx), global2.d.xz, false), !select(vec4<bool>(false, true, all(vec4<bool>(global2.b.x, false, global2.b.x, global2.c.x)), true), global2.c, any(vec4<bool>(true, false, false, true))), vec3<bool>(false, global2.d.x, all(select(global2.c, global2.c, select(global2.d.x, true, global2.c.x)))), _wgslsmith_f_op_vec4_f32(global2.e - global2.e));
    let var_3 = vec2<bool>(_wgslsmith_sub_i32(countOneBits(global3[_wgslsmith_index_u32(0u, 3u)] & var_1.x), -_wgslsmith_add_i32(1i, var_0.x)) <= -74347i, any(select(!global2.d.yx, var_2.d.zz, !var_2.d.yx)));
    let var_4 = Struct_1(firstLeadingBit(max(~_wgslsmith_div_vec2_u32(vec2<u32>(var_2.a.x, var_2.a.x), vec2<u32>(26775u, 9765u)), vec2<u32>(u_input.a.x, global4.x))), !select(!select(vec2<bool>(var_2.b.x, var_3.x), vec2<bool>(true, global2.b.x), vec2<bool>(false, var_2.c.x)), vec2<bool>(global2.d.x, all(var_2.c.yx)), true), vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1209f * global2.e.x)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_div_f32(global2.e.x, -776f)), global2.c.x, global2.a.x < _wgslsmith_add_u32(46832u, ~u_input.a.x)), vec3<bool>(any(global2.d), true, all(!global2.c) || false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.e.x), -1209f, _wgslsmith_f_op_f32(-global2.e.x), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(4294967295u, 31u)], var_2.e.x))) * var_2.e)));
    return ~u_input.a.zxz;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.a.wwz, func_3()), 1u), global2.d.xx, select(global2.c, vec4<bool>(global2.d.x, !any(global2.c.zz), !(global2.d.x | true), true), !global2.c), select(global0[_wgslsmith_index_u32(~global4.x, 27u)], global2.c.wyx, !(!global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global4.x), 27u)])), _wgslsmith_f_op_vec4_f32(min(global2.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.e + _wgslsmith_f_op_vec4_f32(global2.e + vec4<f32>(global2.e.x, global1[_wgslsmith_index_u32(18768u, 31u)], global2.e.x, global2.e.x)))))));
    let var_1 = ~(u_input.a.wzx << (u_input.a.www % vec3<u32>(32u)));
    return Struct_1(global4.yx, global2.b, var_0.c, vec3<bool>(any(!vec3<bool>(false, var_0.b.x, var_0.b.x)), _wgslsmith_f_op_f32(-var_0.e.x) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(600f)) - 545f), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(493f, _wgslsmith_f_op_f32(sign(-238f)), true)), -1100f, arg_1.x, -374f)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = Struct_1(func_3().zz, select(!vec2<bool>(false, arg_1.d.x != false), global2.c.xx, true), global2.c, global2.c.xyy, _wgslsmith_f_op_vec4_f32(trunc(arg_1.e)));
    let var_1 = arg_1.e;
    var var_2 = !global2.b.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.e.zyy)), var_0.e.wzw));
    let var_4 = vec4<i32>(~(-(i32(-1i) * -35713i)) >> (0u % 32u), _wgslsmith_clamp_i32(-(-36494i >> (0u % 32u)), firstTrailingBit(u_input.b.x), u_input.b.x) & _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~arg_0.xy, u_input.b.zz), -firstTrailingBit(-13552i), _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(global4.x, 3u)], u_input.b.x, 16769i), abs(arg_0.zyx))), arg_0.x, arg_0.x);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.e.x, 1022f, var_0.e.x, 660f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(213f, -535f, 872f, var_0.e.x), var_1)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(global2.e.x)), global2.e.x, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(2140f - global1[_wgslsmith_index_u32(var_0.a.x, 31u)])), var_1.x)));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = vec3<f32>(-1243f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.a.x | 4294967295u, 31u)] * global2.e.x), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.a.x, 31u)])));
    var var_1 = ~(~_wgslsmith_mult_u32(u_input.a.x, ~arg_1.x) & ~10819u);
    var var_2 = Struct_1(vec2<u32>(~18320u, firstLeadingBit(0u)), global2.c.xw, global2.c, !global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~abs(10440u), ~(~arg_1.x)), 27u)], _wgslsmith_f_op_vec4_f32(func_4(firstLeadingBit(abs(vec4<i32>(u_input.c, -36242i, u_input.b.x, 44351i)) >> (u_input.a % vec4<u32>(32u))), func_2(_wgslsmith_f_op_vec2_f32(global2.e.xw - _wgslsmith_f_op_vec2_f32(abs(var_0.xx))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -499f, -1765f, global2.e.x))))));
    let var_3 = firstTrailingBit(vec3<u32>(~(~(14366u | arg_1.x)), 4294967295u, ~1u));
    global4 = var_3;
    return func_2(global2.e.yx, vec4<f32>(-1639f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.e.x, var_0.x, var_2.d.x)) * _wgslsmith_f_op_f32(619f + global2.e.x)) - _wgslsmith_f_op_f32(-var_2.e.x)), var_2.e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1698f, -463f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true, u_input.a.xy);
    var var_1 = abs(7540i);
    var var_2 = func_2(global2.e.zy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-global2.e.x), -921f, _wgslsmith_f_op_f32(step(-184f, 180f))), vec4<f32>(var_0.e.x, _wgslsmith_f_op_f32(1065f - global2.e.x), global2.e.x, var_0.e.x)))));
    let var_3 = _wgslsmith_clamp_i32(u_input.b.x, -23401i, _wgslsmith_mod_i32(-25596i & global3[_wgslsmith_index_u32(~u_input.a.x, 3u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.a.yxz), countOneBits(u_input.a.zzz)), 3u)])) == 0i;
    var var_4 = _wgslsmith_f_op_vec3_f32(var_0.e.zxz * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2288f), var_0.e.x, var_0.e.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.e.x, 862f, global2.e.x), var_0.e.yzz))) + _wgslsmith_div_vec3_f32(vec3<f32>(var_0.e.x, 1310f, 690f), vec3<f32>(var_2.e.x, 1901f, -944f))))));
    global4 = u_input.a.wzy;
    var_1 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(-220f, _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 0u, 1u, 1u), vec4<u32>(var_0.a.x, 41863u, var_2.a.x, 47547u)), abs(8794u), global4.x, func_2(vec2<f32>(global2.e.x, -368f), vec4<f32>(global1[_wgslsmith_index_u32(var_2.a.x, 31u)], var_0.e.x, global2.e.x, var_2.e.x)).a.x)), ~vec4<u32>(global2.a.x, reverseBits(var_2.a.x), 62527u, func_2(global2.e.yw, var_2.e).a.x)));
}

