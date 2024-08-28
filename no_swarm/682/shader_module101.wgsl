struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec3<bool>,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<bool, 3> = array<bool, 3>(true, true, false);

var<private> global2: vec2<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, 1519f, 730f, global0.x), vec4<f32>(global0.x, -997f, -387f, global0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, 1322f, global0.x, global0.x)))), false)) - vec4<f32>(_wgslsmith_f_op_f32(sign(global0.x)), global0.x, _wgslsmith_f_op_f32(sign(-1416f)), global0.x)));
    var var_0 = Struct_2(arg_3);
    global2 = ~(~vec2<i32>(~arg_0, 10128i) & _wgslsmith_div_vec2_i32(u_input.d.wy, _wgslsmith_add_vec2_i32(u_input.d.xw, vec2<i32>(arg_0, 1i))));
    var var_1 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(34347u, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(13979u, var_0.a.b), vec2<u32>(var_0.a.b, u_input.b)))), vec2<u32>(19625u, ~1u), vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(10670u, 1u, arg_3.b, 1938u), ~vec4<u32>(0u, var_0.a.b, arg_3.b, arg_3.b))));
    let var_2 = Struct_3(reverseBits(min(1u, 0u)), ~vec4<i32>(max(_wgslsmith_clamp_i32(-478i, 7756i, u_input.c.x), global2.x), arg_0, -global2.x, u_input.a), ~firstTrailingBit(var_0.a.b) << (~var_0.a.b % 32u));
    return u_input.c.x;
}

fn func_2() -> vec4<f32> {
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - 1747f), global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -664f), global0.x);
    global1 = array<bool, 3>();
    var var_0 = Struct_4(global1[_wgslsmith_index_u32(0u & ~_wgslsmith_sub_u32(u_input.b, 1u), 3u)], func_3(~(~0i), select(~u_input.b, u_input.b & ~u_input.b, min(-21887i, u_input.d.x) != global2.x), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), Struct_1(vec3<bool>(false, false, select(false, true, global1[_wgslsmith_index_u32(0u, 3u)])), u_input.b)), select(!select(vec3<bool>(true, true, true), !vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 3u)], global1[_wgslsmith_index_u32(9338u, 3u)]), all(vec3<bool>(false, global1[_wgslsmith_index_u32(67241u, 3u)], global1[_wgslsmith_index_u32(u_input.b, 3u)]))), select(!(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 3u)], false, false)), vec3<bool>(!global1[_wgslsmith_index_u32(0u, 3u)], true & global1[_wgslsmith_index_u32(79960u, 3u)], true), true), true), global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, min(u_input.b, 39441u)), vec2<u32>(_wgslsmith_div_u32(u_input.b, 3221u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 2605u, u_input.b))))), 3u)], !(!(!select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(u_input.b, 3u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 3u)], true, global1[_wgslsmith_index_u32(u_input.b, 3u)]), false))));
    let var_1 = abs(vec3<i32>(0i, max(1i, -var_0.b), 44589i));
    var var_2 = ~(~max(4294967295u, u_input.b));
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), 1168f)), global0.x)), -575f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -122f)))), _wgslsmith_f_op_f32(-global0.x), -404f);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, global0.x, -314f, 1551f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(929f, global0.x, 832f, arg_1.x))))) * _wgslsmith_f_op_vec4_f32(func_2())) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(895f, arg_1.x, -684f, global0.x))))))));
    let var_0 = _wgslsmith_div_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(16484u, 13146u), vec2<u32>(1u, arg_0.a.b) | vec2<u32>(13527u, 37592u)), ~vec2<u32>(u_input.b, 3674u))), vec2<u32>(_wgslsmith_mod_u32(~u_input.b, (48759u | arg_0.a.b) >> (firstTrailingBit(0u) % 32u)), ~4294967295u));
    global1 = array<bool, 3>();
    global2 = _wgslsmith_div_vec2_i32(countOneBits(abs(vec2<i32>(2147483647i, 421i))) & vec2<i32>(max(2147483647i, 2147483647i | global2.x), 0i), vec2<i32>(_wgslsmith_mod_i32(0i, 1i), 2147483647i));
    var var_1 = -1000f;
    return Struct_3(~(min(min(0u, var_0.x), var_0.x) ^ _wgslsmith_dot_vec2_u32(~var_0, vec2<u32>(arg_0.a.b, 33501u))), u_input.d, var_0.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: Struct_3) -> vec3<f32> {
    var var_0 = Struct_2(Struct_1(arg_0.wzz, arg_3.c));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(sign(1535f)), 604f)));
    let var_2 = vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(7514u, var_0.a.b, u_input.b), vec3<u32>(arg_2.c, arg_2.c, arg_2.c))), abs(~vec3<u32>(var_0.a.b, 0u, 4294967295u))), 3u)] == false, arg_0.x);
    var var_3 = _wgslsmith_f_op_f32(1203f + _wgslsmith_f_op_f32(trunc(var_1.x)));
    var_1 = _wgslsmith_f_op_vec4_f32(func_2()).yz;
    return vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(var_1.x - var_1.x)), 1009f))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-global0.x));
}

fn func_5(arg_0: vec3<f32>) -> vec3<f32> {
    global1 = array<bool, 3>();
    global1 = array<bool, 3>();
    var var_0 = false | (!global1[_wgslsmith_index_u32(u_input.b, 3u)] == !global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)), 3u)]);
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -100f)), -939f, 2075f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-295f + -111f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.x, -508f)), global0.x)) - global0.x));
    global2 = -u_input.d.xy;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(882f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(abs(-591f))) + _wgslsmith_f_op_f32(-1286f - -336f))), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_4(vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(1u, 3u)]), u_input.d.zz, Struct_3(0u, u_input.d, u_input.b), func_1(Struct_2(Struct_1(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 3u)], true), 63579u)), vec2<f32>(global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-646f, 455f, global0.x) - _wgslsmith_f_op_vec3_f32(round(global0.wwx))), vec3<bool>(select(false, false, true), global1[_wgslsmith_index_u32(firstTrailingBit(35456u), 3u)], global1[_wgslsmith_index_u32(u_input.b, 3u)]))), _wgslsmith_f_op_vec4_f32(func_2()).zzx)));
    var var_1 = !select(select(!select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)]), vec2<bool>(true, false), vec2<bool>(true, true)), select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 3u)], true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 3u)], global1[_wgslsmith_index_u32(u_input.b, 3u)]), vec2<bool>(global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(u_input.b, 3u)])), true), select(select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 3u)]), vec2<bool>(true, true), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 3u)])), select(vec2<bool>(false, false), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 3u)]), false), all(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 3u)]))), select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 3u)], false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 3u)], global1[_wgslsmith_index_u32(7331u, 3u)]), global1[_wgslsmith_index_u32(3353u, 3u)]), vec2<bool>(true, true), vec2<bool>(false, false)), global1[_wgslsmith_index_u32(4294967295u, 3u)]), true | !any(vec4<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 3u)], false)));
    var var_2 = Struct_2(Struct_1(vec3<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 3u)], global1[_wgslsmith_index_u32(u_input.b, 3u)], false)), any(select(vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 3u)], var_1.x), global1[_wgslsmith_index_u32(u_input.b, 3u)])), var_0.x <= _wgslsmith_f_op_f32(ceil(1411f))), u_input.b));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))) - 711f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2816f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -721f)) - var_0.x), 1210f));
    var var_3 = global0.wy;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yxy, firstLeadingBit(func_1(Struct_2(Struct_1(vec3<bool>(var_4, true, var_2.a.a.x), var_2.a.b)), _wgslsmith_f_op_vec2_f32(global0.zx - vec2<f32>(var_0.x, -385f))).b.x), u_input.a, ~countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a.b, var_2.a.b, u_input.b, 3216u), firstTrailingBit(vec4<u32>(0u, u_input.b, 46739u, 48600u)))), ~(~max(abs(-33033i), _wgslsmith_clamp_i32(u_input.d.x, global2.x, u_input.d.x))));
}

