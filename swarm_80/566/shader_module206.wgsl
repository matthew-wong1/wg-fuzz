struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-334f)), 1000f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(107f + -430f), _wgslsmith_f_op_f32(370f - -1370f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(490f, -373f)), !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 24u)]))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -646f) - vec2<f32>(275f, 506f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1174f, -886f), vec2<f32>(-1877f, -2106f), global0[_wgslsmith_index_u32(u_input.c.x, 24u)])) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-791f, -566f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1118f, -220f) * vec2<f32>(1000f, -273f)))));
    global0 = array<bool, 24>();
    let var_1 = Struct_2(abs(-(vec2<i32>(-27519i, u_input.a.x) << (u_input.c.zx % vec2<u32>(32u)))), _wgslsmith_mod_u32(~1u, 16904u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(52305u, u_input.b.x), u_input.b.xy >> (u_input.c.zz % vec2<u32>(32u))) % 32u)), -1250f, -1i);
    let var_2 = Struct_1(vec3<u32>(~abs(var_1.b), _wgslsmith_mult_u32(0u, 25659u), 4294967295u));
    global0 = array<bool, 24>();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.c * var_1.c), _wgslsmith_f_op_f32(f32(-1f) * -774f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), var_1.c) * vec3<f32>(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1078f * 1083f) + var_0.x), _wgslsmith_f_op_f32(round(var_1.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-847f, _wgslsmith_f_op_f32(var_0.x + var_1.c), _wgslsmith_f_op_f32(-279f - var_0.x)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -120f, 1531f))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    global0 = array<bool, 24>();
    var var_0 = Struct_2(reverseBits(~arg_0.a), ~u_input.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.c), _wgslsmith_f_op_f32(558f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-909f, arg_3.c)) * _wgslsmith_f_op_f32(min(-978f, arg_3.c))))), 0i);
    var_0 = arg_0;
    let var_1 = abs(u_input.c);
    let var_2 = Struct_2(reverseBits(~vec2<i32>(-var_0.d, arg_0.d)), 4294967295u, _wgslsmith_f_op_f32(arg_3.c + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.c))), arg_0.c, false))), ~(-2147483647i));
    return firstLeadingBit(-1212i);
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.a.x ^ 56745i;
    var var_1 = _wgslsmith_f_op_vec3_f32(func_2());
    var_0 = ~(-1i);
    global0 = array<bool, 24>();
    var var_2 = Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(-func_3(Struct_2(vec2<i32>(u_input.a.x, u_input.a.x), u_input.b.x, 1429f, 1864i), Struct_1(vec3<u32>(7750u, 1u, 0u)), Struct_1(vec3<u32>(u_input.b.x, 1u, 21187u)), Struct_2(vec2<i32>(u_input.a.x, 0i), u_input.b.x, -363f, -3991i)), ~(1i ^ u_input.a.x)), ~firstLeadingBit(vec2<i32>(65019i, -375i))), u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))), u_input.a.x);
    return Struct_2(u_input.a.xw, u_input.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(-1231f, var_2.c), _wgslsmith_f_op_f32(675f * -1884f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_2.c)), -503f, !global0[_wgslsmith_index_u32(var_2.b, 24u)])))), -316f)), u_input.a.x);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> StorageBuffer {
    let var_0 = 485f;
    global0 = array<bool, 24>();
    return StorageBuffer(func_1().c, countOneBits(vec3<u32>(func_1().b, countOneBits(_wgslsmith_mod_u32(33030u, arg_2.b)), 64130u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(-371f));
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.c.x ^ u_input.b.x, u_input.b.x << ((u_input.b.x ^ 1u) % 32u)), select(_wgslsmith_div_vec3_u32(u_input.b << (u_input.b % vec3<u32>(32u)), reverseBits(u_input.b)), vec3<u32>(reverseBits(4294967295u), ~39981u, ~1455u), any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(75826u, 24u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], true, true), global0[_wgslsmith_index_u32(72634u, 24u)]))), u_input.c));
    global0 = array<bool, 24>();
    let x = u_input.a;
    s_output = func_4(var_0, u_input.a.x, func_1());
}

