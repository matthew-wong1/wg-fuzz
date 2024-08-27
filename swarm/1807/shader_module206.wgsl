struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: vec2<u32>;

var<private> global2: vec3<u32> = vec3<u32>(1u, 0u, 28611u);

var<private> global3: array<i32, 12>;

var<private> global4: array<u32, 7>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<u32>) -> vec3<f32> {
    let var_0 = min(~(~arg_0.x), ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, global1.x, global2.x, 7998u)), ~vec4<u32>(u_input.d, 4294967295u, global2.x, global1.x)), ~4294967295u));
    var var_1 = u_input.a.zy;
    global0 = array<i32, 9>();
    let var_2 = Struct_1(u_input.c >= _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(4294967295u, 9u)], ~(-10578i)), _wgslsmith_f_op_f32(ceil(-313f)), ~vec4<u32>(~4294967295u, ~31544u << (~var_0 % 32u), _wgslsmith_clamp_u32(global1.x ^ u_input.d, 1u, 4294967295u), 30896u), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -532f), -400f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -901f)), _wgslsmith_f_op_f32(-882f - 2402f)))), max(min(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, 0i, u_input.b, var_1.x), vec4<i32>(global3[_wgslsmith_index_u32(101141u, 12u)], var_1.x, 21674i, -2147483647i))), -(vec4<i32>(-1i, -22244i, global0[_wgslsmith_index_u32(4294967295u, 9u)], -2147483647i) ^ vec4<i32>(1i, -2147483647i, var_1.x, -2147483647i))), vec4<i32>(~5511i, u_input.c, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -24014i, var_1.x, u_input.c), vec4<i32>(-12097i, global3[_wgslsmith_index_u32(arg_0.x, 12u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.x, 7u)], 12u)], u_input.a.x)), ~vec4<i32>(1i, var_1.x, global3[_wgslsmith_index_u32(global2.x, 12u)], -34221i)), u_input.a.x)));
    global3 = array<i32, 12>();
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_2.d, var_2.d)) + vec3<f32>(var_2.d.x, var_2.d.x, -2654f))) * var_2.d)));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> i32 {
    let var_0 = Struct_2(vec2<bool>(false, all(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))))), u_input.d, Struct_1(true, _wgslsmith_f_op_f32(-arg_1), ~(~(~vec4<u32>(global2.x, 32267u, global1.x, global2.x))), _wgslsmith_f_op_vec3_f32(func_3(max(_wgslsmith_div_vec2_u32(vec2<u32>(36874u, global1.x), global2.yx), vec2<u32>(1u, 4294967295u)))), ~(~vec4<i32>(global3[_wgslsmith_index_u32(global1.x, 12u)], u_input.a.x, 0i, -1i))), -20714i);
    return ~(~(~(~_wgslsmith_add_i32(-4800i, 28316i))));
}

fn func_1(arg_0: i32, arg_1: i32) -> f32 {
    global4 = array<u32, 7>();
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(arg_1), func_2(global2.xx, -1000f)), (vec2<i32>(-global3[_wgslsmith_index_u32(global1.x, 12u)], _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_1, arg_0), vec3<i32>(-25587i, global0[_wgslsmith_index_u32(global1.x, 9u)], -1i))) >> (~global2.zx % vec2<u32>(32u))) >> (global2.xy % vec2<u32>(32u)));
    var var_1 = -vec4<i32>(u_input.a.x, -1i, -7289i, var_0) & max(-(-vec4<i32>(u_input.a.x, -26963i, -13314i, arg_1) >> (~vec4<u32>(global4[_wgslsmith_index_u32(75865u, 7u)], 1u, 0u, global2.x) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(-vec4<i32>(var_0, 3288i, 1550i, u_input.c), vec4<i32>(firstTrailingBit(var_0), ~1i, global3[_wgslsmith_index_u32(62448u << (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 7u)], 7u)] % 32u), 12u)], global0[_wgslsmith_index_u32(global2.x, 9u)] >> (1u % 32u))));
    let var_2 = Struct_2(vec2<bool>(true, true), 0u, Struct_1(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-706f - -345f), _wgslsmith_f_op_f32(-1062f + _wgslsmith_f_op_f32(403f + 1000f)))), vec4<u32>(4294967295u, global2.x, ~abs(global1.x), _wgslsmith_div_u32(~40142u, ~0u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-246f, -1988f, 1000f)))), vec4<i32>(4625i, -1i, global3[_wgslsmith_index_u32(select(global2.x, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(18526u, 37497u), 7u)], select(false, false, true)), 12u)], arg_0)), 2147483647i);
    global4 = array<u32, 7>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.c.b, 654f)));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec2<u32>) -> i32 {
    global3 = array<i32, 12>();
    var var_0 = !arg_1;
    var var_1 = vec2<u32>(global2.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(12142u, 0u), vec2<u32>(global2.x, global2.x)), countOneBits(arg_3)), abs(_wgslsmith_dot_vec2_u32(arg_2.c.c.xz, arg_3))) & ~(~u_input.d));
    let var_2 = arg_2.c.a;
    let var_3 = -16827i < arg_2.c.e.x;
    return global0[_wgslsmith_index_u32(arg_3.x, 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(538f - -794f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(3337i, _wgslsmith_div_i32(u_input.c, -1i))))), !(!vec4<bool>(false, true, any(vec3<bool>(true, false, true)), select(true, true, false))), Struct_2(vec2<bool>(true, true), reverseBits(global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(42124u, 120596u)), 7u)]), Struct_1(any(vec2<bool>(false, true)), -642f, max(~vec4<u32>(1u, global1.x, global2.x, global1.x), vec4<u32>(global1.x, 1u, global4[_wgslsmith_index_u32(u_input.d, 7u)], 1u)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-429f, -372f, -334f), vec3<f32>(-691f, 545f, 275f), false)))), vec4<i32>(76828i, _wgslsmith_mult_i32(u_input.c, 1i), ~22410i, u_input.c)), u_input.c), vec2<u32>(firstTrailingBit(_wgslsmith_mod_u32(max(4294967295u, global1.x), global4[_wgslsmith_index_u32(1u, 7u)])), ~1u));
    var_0 = -53921i;
    let var_1 = firstTrailingBit((~countOneBits(u_input.d) >> (~(~global1.x) % 32u)) | 54662u);
    global2 = ~(countOneBits(vec3<u32>(1u, 1u, 1u) | select(vec3<u32>(56862u, 70745u, var_1), vec3<u32>(global2.x, u_input.d, global4[_wgslsmith_index_u32(42835u, 7u)]), vec3<bool>(true, false, false))) | ~vec3<u32>(19270u << (global4[_wgslsmith_index_u32(4294967295u, 7u)] % 32u), var_1, global1.x));
    let var_2 = global2.yz;
    global2 = vec3<u32>(min(~global2.x, 1u), abs(1u), 1u) ^ vec3<u32>(abs(global1.x), var_2.x, 127071u);
    let var_3 = Struct_1(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 281f)), vec4<u32>(reverseBits(1u), ~54487u, 4294967295u, countOneBits(global1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 321f, -472f), vec3<f32>(-745f, 147f, 1777f), false)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1482f, -571f))))), vec4<i32>(~_wgslsmith_mod_i32(~2147483647i, max(global3[_wgslsmith_index_u32(var_2.x, 12u)], 1i)), -global3[_wgslsmith_index_u32(~1u, 12u)], _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(u_input.a.x), ~(-21727i)), -vec2<i32>(global3[_wgslsmith_index_u32(global2.x, 12u)], -61403i)), min(~u_input.c, u_input.c)));
    let var_4 = var_3.c ^ var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.wxz);
}

