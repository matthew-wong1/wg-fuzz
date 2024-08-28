struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: vec3<f32>,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(4294967295u, 0u, 81478u, 57925u), vec4<u32>(1u, 11429u, 876u, 49443u), vec4<u32>(0u, 64448u, 4294967295u, 4294967295u), vec4<u32>(15269u, 105227u, 4294967295u, 11833u), vec4<u32>(14839u, 0u, 0u, 4294967295u), vec4<u32>(31746u, 1u, 28784u, 29995u), vec4<u32>(1u, 15816u, 64983u, 4294967295u), vec4<u32>(44630u, 1u, 46579u, 1u), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(50813u, 33377u, 4294967295u, 16746u), vec4<u32>(38388u, 0u, 4294967295u, 11629u), vec4<u32>(1u, 6905u, 20171u, 0u), vec4<u32>(1u, 70752u, 15202u, 70050u), vec4<u32>(37334u, 53701u, 5892u, 4294967295u));

var<private> global1: array<Struct_2, 7>;

var<private> global2: array<u32, 9> = array<u32, 9>(25376u, 4295u, 46280u, 22241u, 0u, 79204u, 31828u, 51348u, 26282u);

var<private> global3: vec2<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    var var_0 = ~select(vec3<i32>(_wgslsmith_mult_i32(u_input.c, abs(global3.x)), ~global3.x | select(global3.x, u_input.c, false), min(60578i, global3.x)), _wgslsmith_add_vec3_i32(vec3<i32>(-33916i, -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(global3.x, 0i))), -(vec3<i32>(u_input.c, 1i, 1i) >> (vec3<u32>(1u, u_input.b, 47894u) % vec3<u32>(32u)))), vec3<bool>(false, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, global3.x), vec3<i32>(-9854i, -2147483647i, global3.x)) != _wgslsmith_div_i32(global3.x, u_input.c), (global3.x << (u_input.b % 32u)) > firstTrailingBit(-24080i)));
    global2 = array<u32, 9>();
    global0 = array<vec4<u32>, 14>();
    var var_1 = Struct_2(vec4<i32>(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, u_input.c, 2147483647i), vec3<i32>(34848i, u_input.c, 1i))), ~1i, _wgslsmith_sub_i32(~(-30868i), -25701i), ~max(1i, firstTrailingBit(22871i))), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(856f, 933f, -487f) + vec3<f32>(958f, 491f, -1564f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1436f, 516f, -346f)))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-155f))), 118f, _wgslsmith_f_op_f32(ceil(1535f)))), _wgslsmith_f_op_f32(1000f + 1463f), ~_wgslsmith_div_vec3_i32(-(vec3<i32>(0i, u_input.c, global3.x) >> (vec3<u32>(u_input.b, global2[_wgslsmith_index_u32(21256u, 9u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(56679u, 9u)], 9u)]) % vec3<u32>(32u))), firstTrailingBit(-vec3<i32>(global3.x, var_0.x, u_input.c))));
    let var_2 = var_1.c.x;
    return 1i;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> vec4<i32> {
    let var_0 = !any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), false)) & true;
    global3 = countOneBits(select(~vec2<i32>(-1i, func_3()), abs(-arg_0.yy), any(vec2<bool>(var_0, all(vec3<bool>(var_0, var_0, var_0))))));
    global3 = arg_0.xx;
    global2 = array<u32, 9>();
    let var_1 = Struct_2(_wgslsmith_mult_vec4_i32(min(vec4<i32>(-1i) * -vec4<i32>(-1i, global3.x, 0i, -31084i), vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0.wx, vec2<i32>(-61364i, 25504i)), _wgslsmith_dot_vec2_i32(arg_0.xw, arg_0.wx), min(arg_0.x, global3.x), ~global3.x)), vec4<i32>(-1i) * -arg_0), any(vec3<bool>(true, !all(vec2<bool>(false, var_0)), any(vec4<bool>(var_0, var_0, var_0, false)) & select(false, true, var_0))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-515f)), 1f, _wgslsmith_f_op_f32(step(-456f, 416f)))))), -172f, vec3<i32>(~(-14195i), reverseBits(~_wgslsmith_mult_i32(-21106i, u_input.c)), 1i << (min(~0u, _wgslsmith_add_u32(u_input.a, arg_1)) % 32u)));
    return var_1.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>) -> vec3<bool> {
    let var_0 = abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(min(vec4<i32>(-2147483647i, 0i, 1i, global3.x), vec4<i32>(u_input.c, -27996i, global3.x, 3833i)), _wgslsmith_mult_vec4_i32(vec4<i32>(37552i, u_input.c, 21279i, global3.x), vec4<i32>(global3.x, 15316i, 0i, -1i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.c, 1i, u_input.c), vec4<i32>(23579i, -7077i, -15644i, 48987i), vec4<i32>(global3.x, u_input.c, u_input.c, global3.x)) << (_wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(arg_1.x, 14u)], global0[_wgslsmith_index_u32(76502u, 14u)]) % vec4<u32>(32u)), reverseBits(vec4<i32>(u_input.c, u_input.c, -3286i, global3.x))) | func_2(-(vec4<i32>(53739i, 0i, 28172i, u_input.c) << (vec4<u32>(arg_1.x, u_input.b, arg_1.x, 134434u) % vec4<u32>(32u))), arg_1.x));
    var var_1 = Struct_2(vec4<i32>(min(1i, _wgslsmith_mult_i32(-8566i, var_0.x)), ~global3.x, var_0.x, select(_wgslsmith_div_i32(-2147483647i, u_input.c), global3.x, any(arg_0)) | _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.c) << (arg_1.wy % vec2<u32>(32u)), var_0.yw << (arg_1.yx % vec2<u32>(32u)))), !arg_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(280f)), -821f), _wgslsmith_div_f32(-1272f, -397f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(191f, _wgslsmith_f_op_f32(f32(-1f) * -916f), 1000f) - vec3<f32>(-182f, -105f, _wgslsmith_f_op_f32(f32(-1f) * -602f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-239f))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(_wgslsmith_div_vec3_i32(max(var_0.wxw, var_0.zxw), var_0.wxw << (~vec3<u32>(1u, global2[_wgslsmith_index_u32(arg_1.x, 9u)], 87646u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, func_2(var_0, 1u).x, global3.x), min(_wgslsmith_add_vec3_i32(vec3<i32>(-25820i, 1i, 1i), var_0.xzx), -var_0.xwx)), true));
    return vec3<bool>(any(arg_0.zy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - _wgslsmith_f_op_f32(abs(474f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -13228i;
    global2 = array<u32, 9>();
    let var_1 = Struct_2(vec4<i32>(global3.x, ~(-u_input.c), global3.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -47329i, 0i), vec3<i32>(u_input.c, u_input.c, 1i)), -u_input.c)) & (vec4<i32>(min(global3.x, 32214i), max(-24816i, global3.x), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global3.x), vec2<i32>(2147483647i, -1i)), _wgslsmith_add_i32(-1i, 31554i)) & -vec4<i32>(u_input.c, u_input.c, global3.x, 0i)), !(!all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + _wgslsmith_f_op_f32(-377f - 954f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2051f, 641f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-351f - 2781f)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(130f, -298f, 977f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2510f, 860f, -532f) + vec3<f32>(1505f, 1117f, -1000f)), func_1(vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 14u)]))), vec3<f32>(_wgslsmith_f_op_f32(1424f - -956f), -1000f, _wgslsmith_f_op_f32(sign(-938f)))))), _wgslsmith_f_op_f32(-1881f + -276f), -firstLeadingBit(vec3<i32>(u_input.c, global3.x, -2147483647i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1.c, var_1.c))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, -493f, var_1.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(abs(var_1.d))))));
    global3 = firstTrailingBit(vec2<i32>(var_1.a.x, _wgslsmith_dot_vec2_i32(var_1.e.zy, ~vec2<i32>(global3.x, u_input.c))));
    let var_3 = Struct_2(var_1.a, (~firstTrailingBit(0u) & _wgslsmith_dot_vec4_u32(select(global0[_wgslsmith_index_u32(11821u, 14u)], global0[_wgslsmith_index_u32(6790u, 14u)], vec4<bool>(false, var_1.b, false, true)), _wgslsmith_clamp_vec4_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(9712u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)]))) >= ~(~(~u_input.a)), _wgslsmith_div_vec3_f32(vec3<f32>(677f, -1000f, var_1.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(2344f * 421f), var_2.x, var_2.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, var_2.x) * var_2.x))))), func_2(vec4<i32>(2147483647i, _wgslsmith_div_i32(var_1.e.x, -1i), var_1.e.x, u_input.c & -1i) | var_1.a, _wgslsmith_mult_u32(countOneBits(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(28394u, 14u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11368u, 9u)], 14u)])), global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(4294967295u, 9u)]), 9u)])).yyx);
    let var_4 = var_3;
    global0 = array<vec4<u32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_4.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)))), 1f, func_2(vec4<i32>(-69720i, _wgslsmith_sub_i32(5071i, var_4.e.x), ~(-89170i), min(global3.x, global3.x)) | var_3.a, 0u).wy, -select(_wgslsmith_div_i32(firstLeadingBit(var_1.a.x), _wgslsmith_mult_i32(-26979i, var_4.a.x)), u_input.c, !all(vec3<bool>(true, var_4.b, var_3.b))), ~(~_wgslsmith_mod_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 4294967295u), _wgslsmith_div_u32(u_input.a, 44366u))));
}

