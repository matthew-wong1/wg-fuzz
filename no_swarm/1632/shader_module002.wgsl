struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22>;

var<private> global1: array<Struct_1, 29>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<i32> {
    let var_0 = select(vec2<bool>(!arg_1, !all(select(vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, arg_1), vec2<bool>(true, true)))), !select(select(!vec2<bool>(arg_0.a, false), !vec2<bool>(false, arg_0.a), vec2<bool>(arg_1, false)), vec2<bool>(all(vec2<bool>(arg_0.a, arg_1)), false), arg_0.a), all(!(!vec4<bool>(true, true, arg_0.a, true))) & !(!arg_1));
    global0 = array<vec3<u32>, 22>();
    var var_1 = vec3<bool>(arg_0.a, var_0.x, true);
    let var_2 = vec4<u32>(arg_0.b.x, 4294967295u, firstTrailingBit(arg_0.b.x >> (4294967295u % 32u)) >> (_wgslsmith_mult_u32(abs(u_input.c), ~arg_0.b.x) % 32u), max(_wgslsmith_add_u32(61068u, 15766u), ~arg_0.b.x | _wgslsmith_mult_u32(u_input.b.x, 28741u))) << (reverseBits(vec4<u32>(arg_0.b.x, u_input.c ^ u_input.b.x, _wgslsmith_dot_vec2_u32(reverseBits(arg_0.b), vec2<u32>(arg_0.b.x, 30336u)), abs(22345u))) % vec4<u32>(32u));
    let var_3 = _wgslsmith_sub_vec3_u32(var_2.xzx | vec3<u32>(select(1u, countOneBits(4294967295u), false), ~(~4294967295u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_2.x, 22958u), 4294967295u)), abs(var_2.ywx));
    return _wgslsmith_mod_vec2_i32(select(max(vec2<i32>(-2147483647i, arg_0.c), max(vec2<i32>(arg_0.c, 21766i), vec2<i32>(-2147483647i, arg_0.c))), max(vec2<i32>(67116i, -2147483647i), ~vec2<i32>(-2147483647i, arg_0.c)), all(!vec3<bool>(false, var_0.x, true))), -(select(vec2<i32>(11594i, u_input.a), vec2<i32>(0i, -1i), var_1.zz) | firstLeadingBit(vec2<i32>(arg_0.c, u_input.a)))) << (~var_3.yx % vec2<u32>(32u));
}

fn func_2() -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(~(~(~u_input.c)), 29u)];
    var_0 = Struct_1(true, var_0.b, _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, var_0.c) & (max(vec2<i32>(u_input.a, 66905i), vec2<i32>(var_0.c, u_input.a)) ^ vec2<i32>(-21832i, 1i)), _wgslsmith_sub_vec2_i32(-firstLeadingBit(vec2<i32>(6396i, -1i)), max(func_3(Struct_1(var_0.a, u_input.b, var_0.c), var_0.a), vec2<i32>(-1i, 12389i)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -782f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1256f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1288f)))))));
    var var_2 = _wgslsmith_mult_vec3_u32(select(~vec3<u32>(~23641u, 20977u, u_input.c & u_input.b.x), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(var_0.b.x ^ u_input.b.x), ~_wgslsmith_mod_u32(var_0.b.x, 0u)), 22u)], !(!select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(false, false, var_0.a), var_0.a))), abs(global0[_wgslsmith_index_u32(firstTrailingBit(0u), 22u)]) | vec3<u32>(~u_input.b.x, 16050u, select(37425u, _wgslsmith_clamp_u32(var_0.b.x, var_0.b.x, var_0.b.x), var_0.a)));
    let var_3 = select(vec3<bool>(var_0.a && var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a || false, false, var_0.a), !vec3<bool>(var_0.a, true, false));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-646f)))) + _wgslsmith_f_op_f32(round(995f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(700f, -1000f, 1000f), vec3<f32>(-1089f, 107f, -1030f)) * _wgslsmith_div_vec3_f32(vec3<f32>(442f, -256f, 276f), vec3<f32>(-1174f, 695f, 1293f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(830f, -313f), _wgslsmith_f_op_f32(-281f - 1994f), _wgslsmith_f_op_f32(max(-1000f, 651f))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1404f, 1000f, -388f) * vec3<f32>(-1412f, 501f, -124f)))))), vec3<f32>(1605f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-200f * _wgslsmith_f_op_f32(select(-1524f, 589f, arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(865f, 892f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))))));
    global1 = array<Struct_1, 29>();
    var var_1 = true;
    var var_2 = Struct_1(all(vec3<bool>(arg_0.a, !(arg_0.b.x > arg_1.x), true)), ~(u_input.b >> (u_input.b % vec2<u32>(32u))), _wgslsmith_clamp_i32(28394i << (_wgslsmith_dot_vec4_u32(vec4<u32>(26121u, 1u, 36692u, arg_1.x), vec4<u32>(4294967295u, 46728u, 58723u, 4294967295u) ^ vec4<u32>(u_input.c, 1u, arg_1.x, 1u)) % 32u), _wgslsmith_dot_vec2_i32(select(select(vec2<i32>(arg_0.c, -2147483647i), vec2<i32>(64297i, -6493i), vec2<bool>(arg_0.a, arg_0.a)), firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), vec2<bool>(true, true)), vec2<i32>(_wgslsmith_mod_i32(arg_0.c, arg_0.c), ~(-7102i))), firstLeadingBit(arg_0.c)));
    var_1 = -373f <= var_0.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 29>();
    var var_0 = func_1(global1[_wgslsmith_index_u32(u_input.b.x, 29u)], vec2<u32>(_wgslsmith_sub_u32(~u_input.c, u_input.b.x) | ~(~1u), ~u_input.b.x));
    var_0 = func_1(global1[_wgslsmith_index_u32(select(4294967295u, var_0.b.x, all(vec2<bool>(false, var_0.a))), 29u)], func_1(global1[_wgslsmith_index_u32(53208u, 29u)], ~vec2<u32>(var_0.b.x, 1u)).b);
    var var_1 = global1[_wgslsmith_index_u32(reverseBits(51786u), 29u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(474f, -363f, 740f)))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -791f) * _wgslsmith_f_op_f32(abs(636f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-499f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1000f, -1357f)), -784f, var_0.a & true)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, -1000f)))))));
    let var_3 = !select(!vec3<bool>(true, false, var_1.a), select(vec3<bool>(var_0.a, true, var_0.c == var_1.c), !select(vec3<bool>(true, var_1.a, false), vec3<bool>(var_0.a, false, var_1.a), var_1.a), vec3<bool>(true, all(vec2<bool>(var_0.a, var_1.a)), true)), true);
    let var_4 = any(vec2<bool>(false || all(!var_3.yx), true));
    var var_5 = Struct_1(_wgslsmith_f_op_f32(func_2()) < _wgslsmith_f_op_f32(-1140f * 1248f), ~vec2<u32>(4294967295u, var_0.b.x ^ var_0.b.x), ~(~(-66179i)) ^ u_input.a);
    let var_6 = _wgslsmith_div_i32(u_input.a, firstLeadingBit(firstTrailingBit(var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.xz) + var_2.yx) - _wgslsmith_f_op_vec2_f32(-var_2.zz)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, var_2.x, var_2.x, var_2.x), vec4<f32>(var_2.x, -1402f, -718f, var_2.x), vec4<bool>(var_0.a, true, var_1.a, false))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, -1000f, -559f, var_2.x), vec4<f32>(var_2.x, -740f, -147f, var_2.x)))))), vec4<bool>(false, var_0.a, !var_3.x, var_0.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1278f, _wgslsmith_f_op_f32(-var_2.x))));
}

