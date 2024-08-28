struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = select(vec4<bool>(true, true, true, true), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(all(vec4<bool>(false, true, false, false)), select(any(vec3<bool>(true, true, false)), true, true), all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)), false), any(vec4<bool>(true, true, true, true))), any(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), true))));
    let var_1 = Struct_1(u_input.e <= -18869i, -1398f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1539f))) * -686f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1024f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1260f) - 561f))));
    let var_2 = vec3<i32>(-((-u_input.e >> (~43614u % 32u)) << ((_wgslsmith_add_u32(u_input.a, 23464u) & _wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a)) % 32u)), u_input.e, firstTrailingBit(-1i));
    var var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(15610u, 35341u), 25u)];
    var_3 = Struct_3(var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-150f, -1543f, -1536f)) + var_3.b))));
    return 80838u;
}

fn func_2(arg_0: u32) -> vec3<bool> {
    global0 = array<Struct_3, 25>();
    global0 = array<Struct_3, 25>();
    let var_0 = !(!vec3<bool>(any(vec2<bool>(false, true)) & true, all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    let var_1 = Struct_2(~countOneBits(vec3<u32>(func_3(), arg_0, countOneBits(21116u))), ~1u | arg_0);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -815f);
    return var_0;
}

fn func_1() -> Struct_2 {
    var var_0 = !(!any(vec2<bool>(true, true)));
    var var_1 = ~_wgslsmith_mod_u32(reverseBits(~(29958u >> (1u % 32u))), ~(u_input.a >> (1u % 32u)));
    var var_2 = !(!vec4<bool>(any(func_2(1u)), true, all(vec3<bool>(true, false, false)), any(vec3<bool>(true, true, true))));
    var var_3 = vec3<u32>(_wgslsmith_div_u32(select(4294967295u, abs(u_input.a), var_2.x), u_input.a), _wgslsmith_clamp_u32(~1u, firstLeadingBit(abs(_wgslsmith_add_u32(7209u, 79524u))), 0u), 1u);
    var var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-432f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1127f)) * 1978f))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x | ~1u, ~u_input.a, 1u & _wgslsmith_add_u32(var_3.x, 4294967295u)), select(select(~vec3<u32>(var_3.x, 47886u, u_input.a), vec3<u32>(0u, 1u, var_3.x), true), vec3<u32>(_wgslsmith_clamp_u32(87181u, 77166u, var_3.x), 18846u & u_input.a, u_input.a), func_2(23085u))), 25u)], Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(max(u_input.a, 4294967295u), countOneBits(6711u), abs(u_input.a)), ~(~vec3<u32>(var_3.x, u_input.a, 0u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, var_3.x, 0u), select(max(vec4<u32>(var_3.x, var_3.x, 46256u, var_3.x), vec4<u32>(var_3.x, u_input.a, var_3.x, 12181u)), vec4<u32>(var_3.x, u_input.a, 4294967295u, 0u), true || var_2.x))), -(~reverseBits(vec3<i32>(17330i, -1i, u_input.e)) | reverseBits(~vec3<i32>(-50778i, -2147483647i, u_input.c.x))), Struct_1(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -691f), 1192f, 975f));
    return Struct_2(~_wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.a, 4294967295u, u_input.a) ^ var_4.c.a), select(var_4.c.a, countOneBits(vec3<u32>(var_3.x, 36234u, var_4.c.b)), !var_2.zxy)), ~u_input.a);
}

fn func_4(arg_0: Struct_2) -> StorageBuffer {
    global0 = array<Struct_3, 25>();
    var var_0 = u_input.c.x < _wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(select(u_input.b, vec2<i32>(u_input.d.x, u_input.e), true), max(vec2<i32>(38965i, u_input.d.x), vec2<i32>(u_input.c.x, u_input.d.x))), _wgslsmith_clamp_vec2_i32(vec2<i32>(i32(-1i) * -37322i, -1i), vec2<i32>(_wgslsmith_mod_i32(12452i, u_input.e), _wgslsmith_sub_i32(u_input.d.x, u_input.b.x)), ~u_input.b));
    let var_1 = ~(~abs(select(vec3<i32>(u_input.c.x, u_input.d.x, u_input.e), u_input.c, true))) >> (abs(arg_0.a) % vec3<u32>(32u));
    let var_2 = arg_0;
    let var_3 = 49403u;
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-754f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -346f))), min(-_wgslsmith_sub_vec2_i32(~u_input.b, max(vec2<i32>(u_input.b.x, 1i), var_1.zz)), var_1.yy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(841f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-225f, 472f)), _wgslsmith_f_op_f32(-1f))), select(reverseBits(arg_0.a), arg_0.a, !vec3<bool>(true, all(vec2<bool>(true, false)), true)), var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(vec2<u32>(u_input.a, 4294967295u));
    let var_1 = _wgslsmith_f_op_f32(trunc(-572f));
    let var_2 = true;
    global0 = array<Struct_3, 25>();
    let x = u_input.a;
    s_output = func_4(func_1());
}

