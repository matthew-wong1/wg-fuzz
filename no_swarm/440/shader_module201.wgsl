struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: u32,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-663f - _wgslsmith_f_op_f32(-arg_0.d.a.b)) + arg_0.d.a.b) - arg_0.d.a.b);
}

fn func_4(arg_0: vec3<f32>) -> f32 {
    var var_0 = Struct_2(Struct_1(~(-vec3<i32>(63520i, -33786i, 0i) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(12632i, 1i, u_input.b), vec3<i32>(u_input.b, -2147483647i, u_input.b))), 129f, abs(_wgslsmith_mult_u32(~44659u, 0u)), reverseBits(-firstLeadingBit(u_input.b))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1556f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + var_0.a.b) - -1747f)))));
    let var_2 = var_0.a;
    var_1 = _wgslsmith_f_op_f32(select(1f, var_2.b, true));
    return arg_0.x;
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 20311u, u_input.a.x, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(38047u, 0u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), vec4<u32>(1u, 30698u, 78019u, 98877u))), 1u) == min(u_input.a.x >> (8850u % 32u), 87528u);
    var var_1 = vec3<f32>(154f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1171f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1507f)) + _wgslsmith_f_op_f32(523f - -238f)))), _wgslsmith_f_op_f32(func_4(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -974f), _wgslsmith_f_op_f32(func_3(Struct_3(17198i, var_0, u_input.a.x, Struct_2(Struct_1(vec3<i32>(42568i, 56351i, 0i), 1000f, 0u, u_input.b)), vec4<u32>(u_input.a.x, u_input.a.x, 12841u, 1u)))))), -251f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(862f * 669f), -1378f, all(vec4<bool>(true, var_0, var_0, false))))))));
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(16916u, ~_wgslsmith_div_u32(_wgslsmith_div_u32(8752u, u_input.a.x), 4294967295u)), ~4294967295u, ~countOneBits(u_input.a.x), max(0u, 1u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -160f);
    var_2 = vec4<u32>(~reverseBits(abs(u_input.a.x)) & 1u, var_2.x >> (_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a.x, ~4294967295u), u_input.a.x) % 32u), firstTrailingBit(min(select(u_input.a.x, _wgslsmith_mod_u32(1u, 17444u), var_0 | var_0), u_input.a.x)), 73862u);
    return u_input.b;
}

fn func_1() -> Struct_3 {
    let var_0 = -(~_wgslsmith_mod_i32(func_2(), u_input.b));
    let var_1 = Struct_3(var_0 >> (21039u % 32u), all(vec4<bool>(true, true, false, !any(vec4<bool>(true, false, true, false)))), 33673u, Struct_2(Struct_1(~countOneBits(vec3<i32>(-11758i, 50086i, var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec3<f32>(-1555f, 1661f, 661f))) + -306f), u_input.a.x, 0i)), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(0u, 4294967295u, 81278u, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 19287u, 4294967295u, u_input.a.x), vec4<u32>(13748u, u_input.a.x, 18424u, u_input.a.x))) << (~(~vec4<u32>(u_input.a.x, 12723u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), ~countOneBits(firstLeadingBit(vec4<u32>(4782u, u_input.a.x, u_input.a.x, 1u))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(2967u, u_input.a.x, u_input.a.x, 15333u), vec4<u32>(25091u, u_input.a.x, u_input.a.x, 1u)), ~vec4<u32>(u_input.a.x, 1u, u_input.a.x, 86434u)) ^ ~vec4<u32>(31041u, 39168u, u_input.a.x, 2406u)));
    let var_2 = !vec2<bool>(any(vec2<bool>(u_input.a.x > 41852u, false)), true);
    var var_3 = select(4294967295u >> (u_input.a.x % 32u), var_1.c, false);
    var_3 = 4294967295u << (~var_1.c % 32u);
    return var_1;
}

fn func_5(arg_0: Struct_3) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -345f))), _wgslsmith_f_op_f32(trunc(arg_0.d.a.b))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(abs(-627f)), _wgslsmith_f_op_f32(-arg_0.d.a.b)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.a.b, -1872f) * vec2<f32>(-141f, arg_0.d.a.b)))))), arg_0.b)));
    var var_1 = 16259u;
    var var_2 = Struct_3(23524i, (_wgslsmith_dot_vec4_i32(-vec4<i32>(36027i, 60890i, -15774i, 0i), vec4<i32>(18552i, 0i, u_input.b, arg_0.a)) << (u_input.a.x % 32u)) >= ~0i, select(_wgslsmith_clamp_u32(40672u, _wgslsmith_add_u32(arg_0.e.x, u_input.a.x), arg_0.c), abs(u_input.a.x & countOneBits(arg_0.c)), func_1().b), func_1().d, arg_0.e);
    var_2 = func_1();
    var var_3 = select(vec2<bool>(func_1().b, any(select(!vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(true, true, var_2.b), var_2.b))), select(vec2<bool>(true, false), select(!vec2<bool>(var_2.b, var_2.b), vec2<bool>(false, arg_0.b), !any(vec4<bool>(arg_0.b, false, true, arg_0.b))), var_0.x == arg_0.d.a.b), select(vec2<bool>(arg_0.d.a.d <= func_2(), u_input.a.x < ~0u), !vec2<bool>(var_0.x < var_0.x, !arg_0.b), select(select(select(vec2<bool>(true, false), vec2<bool>(true, arg_0.b), vec2<bool>(var_2.b, false)), select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, true), vec2<bool>(true, arg_0.b)), any(vec3<bool>(arg_0.b, arg_0.b, arg_0.b))), !select(vec2<bool>(arg_0.b, false), vec2<bool>(false, var_2.b), var_2.b), vec2<bool>(true, 72929u != u_input.a.x))));
    return StorageBuffer(reverseBits(var_2.e.wxy), -564f, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.d.a.b, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(371f, 1079f, 510f), vec3<f32>(arg_0.d.a.b, var_2.d.a.b, var_2.d.a.b)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1());
}

