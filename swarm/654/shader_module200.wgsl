struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec2<f32>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -18731i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(firstLeadingBit(-2147483647i), vec3<i32>(i32(-1i) * -13333i, 1i, -13494i) << ((vec3<u32>(u_input.b, 428u, 4294967295u) >> (vec3<u32>(u_input.a.x, 0u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(-1i), vec2<i32>(1i, 1i)), Struct_1(-16632i, vec3<i32>(-1i, firstLeadingBit(-2147483647i), 1i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-16548i, -31879i), vec2<i32>(27319i, -7277i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-103648i, 2147483647i), vec2<i32>(20612i, -1i))), ~vec2<i32>(1i, 1i)), max(firstTrailingBit(reverseBits(vec2<i32>(8172i, 5219i))), ~firstTrailingBit(vec2<i32>(17190i, -47904i)))), u_input.a.x, true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1584f, -590f, -425f) * vec3<f32>(-1177f, 351f, -1242f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(493f, -2029f, -316f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(108f, 1431f, -1259f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    var var_1 = vec2<bool>(false, true);
    let var_2 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(min(26250u, u_input.b), 49230u, _wgslsmith_sub_u32(44531u, var_0.c)), countOneBits(u_input.a.zzz)), ~(~vec3<u32>(41794u, var_0.c, var_0.c)) << (~_wgslsmith_sub_vec3_u32(u_input.a.zzy, vec3<u32>(u_input.b, var_0.c, var_0.c)) % vec3<u32>(32u)), u_input.a.zww);
    var_1 = !(!vec2<bool>(select(var_1.x, var_1.x, var_0.d) || false, var_1.x));
    let var_3 = 1u;
    return vec2<bool>(var_1.x, true);
}

fn func_2() -> i32 {
    let var_0 = -479f;
    global0 = 2147483647i << (~u_input.b % 32u);
    var var_1 = false;
    var_1 = all(vec2<bool>(false, any(select(vec2<bool>(true, true), func_3(), any(vec4<bool>(false, false, false, false))))));
    let var_2 = 4294967295u;
    return 2147483647i;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_dot_vec3_i32(-vec3<i32>(~(i32(-1i) * -1i), 1i, func_2()), vec3<i32>(-1i, func_2(), abs(_wgslsmith_div_i32(~1i, firstLeadingBit(2147483647i)))));
    let var_1 = Struct_4(Struct_2(Struct_1(var_0, vec3<i32>(var_0, var_0, var_0) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 42415u, 0u), vec3<u32>(u_input.b, u_input.a.x, u_input.b), vec3<u32>(1u, u_input.b, 65953u)) % vec3<u32>(32u)), ~60713i, _wgslsmith_sub_vec2_i32(~vec2<i32>(2147483647i, -1i), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0, 0i), vec2<i32>(var_0, var_0)))), Struct_1(1i & ~var_0, vec3<i32>(33213i, var_0, _wgslsmith_div_i32(0i, 1i)), -(~(-17459i)), -vec2<i32>(1i, -2147483647i) | _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(var_0, -24439i), vec2<i32>(var_0, var_0))), 43668u, arg_0.x & true, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.yyy * vec3<f32>(arg_1.x, 145f, arg_1.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, -663f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(262f, arg_1.x, arg_1.x) - vec3<f32>(-940f, 397f, 2862f)))))), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(616f, arg_1.x) * _wgslsmith_f_op_f32(-2076f + arg_1.x)), arg_1.x)), _wgslsmith_f_op_f32(max(arg_1.x, -1091f)), !select(vec4<bool>(true, all(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), true, arg_0.x), vec4<bool>(true | arg_0.x, select(arg_0.x, arg_0.x, true), false, true), any(select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(false, false), arg_0.x))));
    let var_2 = vec3<u32>(25595u, _wgslsmith_dot_vec2_u32(u_input.a.wy, vec2<u32>(u_input.a.x, countOneBits(~6917u))), u_input.a.x);
    let var_3 = _wgslsmith_f_op_f32(-arg_1.x);
    return var_0;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_3) -> vec2<u32> {
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(func_2(), arg_2.a.x), countOneBits(abs(select(arg_0.zw, arg_2.a.wz, vec2<bool>(arg_1.x, arg_1.x)) ^ firstTrailingBit(arg_2.a.zy))));
    let var_0 = _wgslsmith_dot_vec4_u32(u_input.a, ~(~(select(vec4<u32>(57445u, u_input.a.x, u_input.b, u_input.b), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 19901u), vec4<bool>(true, arg_1.x, arg_1.x, true)) & _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, 49871u, u_input.b), u_input.a))));
    let var_1 = arg_2.a;
    var var_2 = 43898i;
    return select(~(firstLeadingBit(vec2<u32>(32906u, u_input.a.x)) | reverseBits(u_input.a.yw)), vec2<u32>(u_input.a.x, firstTrailingBit(_wgslsmith_add_u32(1u, 19303u))) >> (((~vec2<u32>(u_input.b, 4294967295u) << (vec2<u32>(0u, 1u) % vec2<u32>(32u))) ^ min(vec2<u32>(var_0, u_input.b), ~u_input.a.yy)) % vec2<u32>(32u)), !(_wgslsmith_div_i32(arg_2.a.x, var_1.x) <= _wgslsmith_mod_i32(~1i, _wgslsmith_dot_vec4_i32(var_1, arg_2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    global0 = firstLeadingBit(18304i);
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(reverseBits(var_0), 0u), func_4(vec4<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(2147483647i, -17242i)), select(4517i, func_1(vec3<bool>(true, false, true), vec4<f32>(-1780f, -746f, -755f, -1918f)), true), firstLeadingBit(~1i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2504i, 1i), max(vec3<i32>(21786i, 609i, 5333i), vec3<i32>(1i, 0i, 43990i)))), select(!func_3(), vec2<bool>(any(vec3<bool>(false, true, false)), false), vec2<bool>(any(vec4<bool>(true, false, false, false)), true)), Struct_3(vec4<i32>(~(-33457i), 1i, _wgslsmith_clamp_i32(49003i, -2147483647i, 0i), -1i))));
    let var_2 = vec2<u32>(var_1.x, var_1.x);
    global0 = 30164i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~_wgslsmith_mult_u32(20730u, _wgslsmith_sub_u32(u_input.b, var_0)), u_input.b), _wgslsmith_mod_vec3_i32(-vec3<i32>(~1i, 2147483647i, 1i), min(abs(firstTrailingBit(vec3<i32>(-2147483647i, 2147483647i, -27826i))), vec3<i32>(1i, 1i, 1i))), reverseBits(-2147483647i), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(707f, -244f, 2055f, -1351f) - vec4<f32>(-807f, -410f, 1162f, -422f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(976f)), _wgslsmith_f_op_f32(round(532f)), _wgslsmith_f_op_f32(max(684f, -1102f)), _wgslsmith_f_op_f32(max(-1302f, 110f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1063f, 1275f, -1000f, -919f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1744f, -907f, 857f, 243f))))));
}

