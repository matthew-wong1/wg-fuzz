struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(true, true, true, true, true, true, true, false, false, true, false, false, false, false, true, true, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1373f, 938f, -600f, 874f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(769f, 581f, 650f, 383f))))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-799f, 441f, -708f, 651f))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-111f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) - _wgslsmith_f_op_f32(-906f * 1874f)), -801f, 361f));
    var var_1 = Struct_2(u_input.a.x, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-437f, var_0.x, -783f) + vec3<f32>(_wgslsmith_f_op_f32(-758f - var_0.x), -1481f, -1000f)), vec3<u32>(u_input.a.x, 1u, ~63080u << (~u_input.b % 32u))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)) + var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1215f * _wgslsmith_f_op_f32(-488f * var_0.x)) * 901f)));
    return ~firstLeadingBit(firstTrailingBit(-1i << (0u % 32u))) & 1i;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> vec4<i32> {
    var var_0 = reverseBits(_wgslsmith_add_i32(func_3(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u ^ arg_1.x, 18u)], !global0[_wgslsmith_index_u32(arg_0.a, 18u)])), 1i));
    let var_1 = arg_0;
    var_0 = _wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, 16513i, -1i, -2147483647i)), vec4<i32>(-77080i, -28068i, 39794i, -1i))), 2147483647i));
    let var_2 = vec4<i32>(-(firstTrailingBit(min(76824i, 2579i)) << (arg_0.b.b.x % 32u)), ~20691i, -20495i, ~1i);
    let var_3 = arg_0;
    return vec4<i32>(-13604i | ~firstLeadingBit(_wgslsmith_mod_i32(var_2.x, 1i)), ~((-var_2.x ^ _wgslsmith_mod_i32(2147483647i, var_2.x)) & _wgslsmith_div_i32(-var_2.x, var_2.x)), ~(-var_2.x), _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(var_2.wyx, _wgslsmith_sub_vec3_i32(var_2.wyw, vec3<i32>(var_2.x, var_2.x, 2147483647i)), ~var_2.xyw), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.x, 30297i, var_2.x), var_2.wyx), var_2.xwx), select(var_2.yyz, ~var_2.yyw, select(vec3<bool>(false, true, true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(22313u, 18u)], false), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 18u)], global0[_wgslsmith_index_u32(var_1.b.b.x, 18u)]))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<f32>) -> vec3<bool> {
    let var_0 = firstTrailingBit(4294967295u);
    let var_1 = func_2(Struct_2(firstLeadingBit(~u_input.a.x), arg_0, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-781f, arg_2.x, -698f, arg_2.x) - vec4<f32>(-273f, 1523f, arg_2.x, arg_0.a.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_0.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, -1704f, 779f, -626f), vec4<f32>(264f, arg_0.a.x, -243f, arg_0.a.x)))))), arg_0.b.yy << ((arg_0.b.zz ^ ((vec2<u32>(1837u, arg_0.b.x) & vec2<u32>(u_input.a.x, arg_0.b.x)) ^ (u_input.a | arg_0.b.zy))) % vec2<u32>(32u)));
    global0 = array<bool, 18>();
    var var_2 = arg_1.x;
    var var_3 = arg_1;
    return !select(!(!(!vec3<bool>(false, var_3.x, var_3.x))), vec3<bool>(!arg_1.x, ~60718u >= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 106555u, 0u, 0u), vec4<u32>(4294967295u, var_0, u_input.b, u_input.b)), all(vec2<bool>(false, true))), select(vec3<bool>(true, var_3.x, global0[_wgslsmith_index_u32(0u, 18u)]), select(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.b.x, 18u)], false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 18u)], var_3.x, false), vec3<bool>(true, false, arg_1.x)), false));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec4<u32>, arg_3: vec3<bool>) -> vec2<f32> {
    global0 = array<bool, 18>();
    let var_0 = _wgslsmith_div_u32(~arg_2.x, ~(_wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_add_vec2_u32(vec2<u32>(arg_1, arg_2.x), vec2<u32>(32893u, 1u))) ^ (1u << (0u % 32u))));
    global0 = array<bool, 18>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(198f + -187f)), 865f))), arg_2.zzx << (arg_2.zwz % vec3<u32>(32u)));
    var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_1.a.x, var_1.a.x)))))), -530f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))))), reverseBits(_wgslsmith_div_vec3_u32(select(vec3<u32>(arg_1, 31155u, 1u), var_1.b >> (vec3<u32>(1u, 5441u, arg_2.x) % vec3<u32>(32u)), vec3<bool>(arg_3.x, true, false)), var_1.b)));
    return var_1.a.xy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_mod_i32(abs(32679i), ~10474i)), 1i), 65775u, vec4<u32>(u_input.b, max(u_input.b, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.b), 1u, _wgslsmith_div_u32(u_input.b, u_input.a.x)), ~abs(vec4<u32>(u_input.b, u_input.a.x, 4294967295u, 38976u))), min(u_input.a.x, 19520u)), select(vec3<bool>(global0[_wgslsmith_index_u32(~(~u_input.b), 18u)], false, true), !func_1(Struct_1(vec3<f32>(186f, -1000f, 202f), vec3<u32>(u_input.b, u_input.b, 53434u)), vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 18u)]), vec3<f32>(-886f, 1000f, -1000f)), select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], true, global0[_wgslsmith_index_u32(u_input.b, 18u)]), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(0u, 18u)], false), true), select(func_1(Struct_1(vec3<f32>(396f, 361f, 2619f), vec3<u32>(1u, 1u, 0u)), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], true), vec3<f32>(-251f, 768f, -237f)), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(u_input.b, 18u)], global0[_wgslsmith_index_u32(34450u, 18u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a.x, 18u)])), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(23647u, 18u)], true)), vec3<bool>(any(vec2<bool>(true, true)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, u_input.b), 18u)], true)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2371f, var_0.x)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(316f, var_0.x) * vec2<f32>(var_0.x, var_0.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))));
    var var_1 = func_3(!func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 115f, 1958f)), vec3<u32>(u_input.a.x, 39195u, 16115u)), func_1(Struct_1(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<u32>(u_input.a.x, u_input.a.x, 0u)), vec2<bool>(true, global0[_wgslsmith_index_u32(21646u, 18u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1000f, var_0.x) - vec3<f32>(450f, var_0.x, 430f))).zy, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -310f), 825f, _wgslsmith_f_op_f32(min(290f, -920f)))).xx);
    var var_2 = var_0.x;
    var var_3 = Struct_2(_wgslsmith_clamp_u32(0u, 36044u & select(1u, ~u_input.b, true), u_input.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-324f, var_0.x, var_0.x))), firstTrailingBit(_wgslsmith_div_vec3_u32(abs(vec3<u32>(29921u, 1596u, u_input.b)), ~vec3<u32>(u_input.a.x, 0u, u_input.b)))), vec4<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)), var_0.x, var_0.x, -715f));
    global0 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.b.zy, i32(-1i) * -_wgslsmith_mod_i32(func_3(vec2<bool>(false, false)), i32(-1i) * -21702i), reverseBits(vec2<i32>(-1i, ~2147483647i >> ((var_3.a << (u_input.a.x % 32u)) % 32u))), _wgslsmith_sub_i32(abs((1i >> (var_3.b.b.x % 32u)) | ~0i), ~(~2147483647i)), -16060i);
}

