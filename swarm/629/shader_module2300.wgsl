struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(-1i, -15323i, 39520i, i32(-2147483648)), vec4<i32>(22262i, -28973i, -29255i, -30834i), vec4<i32>(0i, -32492i, -1i, 34171i), vec4<i32>(1i, -35125i, 28074i, 0i), vec4<i32>(-22619i, 0i, 20091i, 35954i), vec4<i32>(36544i, 1i, -39063i, -909i), vec4<i32>(2147483647i, -1i, -27637i, 40356i), vec4<i32>(-44337i, 28591i, 2147483647i, 1i), vec4<i32>(9808i, 0i, -1i, 32000i), vec4<i32>(71880i, 0i, -3067i, -4878i), vec4<i32>(51111i, 1i, 16642i, 27680i), vec4<i32>(-22538i, 1i, -10609i, 1i), vec4<i32>(-26034i, -1i, -36262i, 2147483647i), vec4<i32>(-12282i, -8335i, -1i, -6063i), vec4<i32>(6477i, -27119i, 18570i, -1i), vec4<i32>(0i, -97054i, i32(-2147483648), 0i), vec4<i32>(45777i, 0i, -17094i, -2465i), vec4<i32>(28344i, -1496i, 3061i, -50297i), vec4<i32>(i32(-2147483648), 0i, -51744i, 0i), vec4<i32>(20097i, 1i, 540i, 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, 0i, 1i), vec4<i32>(25735i, -1i, -29437i, 37036i), vec4<i32>(23541i, -10247i, -39420i, -1i), vec4<i32>(-65737i, 23222i, 1443i, -16236i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, i32(-2147483648)), vec4<i32>(33610i, i32(-2147483648), -19913i, -1i), vec4<i32>(2147483647i, -2945i, -1i, 1818i), vec4<i32>(2147483647i, 13866i, -7795i, 0i), vec4<i32>(i32(-2147483648), 2147483647i, 0i, -4955i), vec4<i32>(0i, 64475i, 75434i, 2147483647i), vec4<i32>(1i, -12408i, 0i, 24645i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<bool>) -> u32 {
    global0 = array<vec4<i32>, 31>();
    let var_0 = arg_2;
    var var_1 = arg_1.x;
    global0 = array<vec4<i32>, 31>();
    var var_2 = u_input.a.zy ^ vec2<i32>(2147483647i, reverseBits(_wgslsmith_dot_vec3_i32(-u_input.a.ywy, ~u_input.a.yxy)));
    return ~arg_1.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = 1f;
    global0 = array<vec4<i32>, 31>();
    global0 = array<vec4<i32>, 31>();
    let var_1 = arg_0;
    let var_2 = arg_0;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-585f * arg_0.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * -1000f)))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: bool) -> i32 {
    let var_0 = -20883i;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(731f + _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(422f + -617f)), Struct_1(_wgslsmith_f_op_f32(785f * -326f))))));
    let var_2 = _wgslsmith_add_vec4_u32(abs(vec4<u32>(arg_1, abs(_wgslsmith_sub_u32(0u, arg_0)), 1u, _wgslsmith_dot_vec2_u32(~u_input.b.zx, _wgslsmith_clamp_vec2_u32(u_input.b.zz, u_input.b.xy, vec2<u32>(arg_0, arg_1))))), vec4<u32>(~(0u & _wgslsmith_sub_u32(arg_0, arg_0)), abs(_wgslsmith_clamp_u32(11868u, arg_1, arg_1) >> (arg_1 % 32u)), 1u, firstLeadingBit(~106671u)));
    global0 = array<vec4<i32>, 31>();
    global0 = array<vec4<i32>, 31>();
    return _wgslsmith_mult_i32(-_wgslsmith_dot_vec2_i32(-u_input.a.xx, u_input.a.yy) | 38503i, ~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0, u_input.a.x), u_input.a.xz, vec2<i32>(var_0, 2147483647i)) | u_input.a.wz, u_input.a.xy));
}

fn func_4(arg_0: vec4<i32>) -> vec2<i32> {
    var var_0 = vec4<bool>((437f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1281f)), _wgslsmith_f_op_f32(func_3(Struct_1(-397f), Struct_1(471f))))) != all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), true)), select(!any(vec3<bool>(false, true, true)) || true, true, true), true, true);
    var var_1 = vec4<bool>(true, var_0.x, !(u_input.b.x <= _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 65301u), vec4<u32>(u_input.b.x, 1u, 4294967295u, 38345u)), select(vec4<u32>(u_input.b.x, 7561u, u_input.b.x, u_input.b.x), vec4<u32>(1880u, 0u, u_input.b.x, u_input.b.x), var_0.x))), u_input.a.x != u_input.a.x);
    let var_2 = Struct_1(567f);
    global0 = array<vec4<i32>, 31>();
    global0 = array<vec4<i32>, 31>();
    return vec2<i32>(~(i32(-1i) * -24211i) << (u_input.b.x % 32u), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -((abs(_wgslsmith_mult_vec4_i32(u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 31u)])) << (vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), 4294967295u, u_input.b.x, _wgslsmith_div_u32(20833u, u_input.b.x)) % vec4<u32>(32u))) >> (~vec4<u32>(~2821u, ~u_input.b.x, u_input.b.x, max(u_input.b.x, 0u)) % vec4<u32>(32u)));
    let var_1 = ~(~vec4<u32>(_wgslsmith_mult_u32(func_1(u_input.a.x, u_input.b.xy, vec2<bool>(false, false)), u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 1u), ~vec4<u32>(u_input.b.x, u_input.b.x, 10321u, u_input.b.x)), u_input.b.x, ~(~42695u)));
    var var_2 = var_1.x;
    var var_3 = var_1.x;
    let var_4 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(var_0.xzw, var_0.zwz), _wgslsmith_add_i32(-_wgslsmith_mult_i32(10122i, -12379i), ~abs(72583i))), reverseBits(func_4(vec4<i32>(-1i, _wgslsmith_div_i32(u_input.a.x, 12444i), var_0.x & -55821i, func_2(u_input.b.x, 4294967295u, true)))));
    var var_5 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-334f, -750f) - -1267f))))));
    let var_6 = Struct_1(_wgslsmith_f_op_f32(abs(var_5.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(vec4<i32>(21423i, var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a.x, u_input.a.x), var_0.zxz), _wgslsmith_div_i32(8661i, var_4.x)), _wgslsmith_sub_vec4_i32(-vec4<i32>(16628i, 22731i, var_4.x, var_0.x), global0[_wgslsmith_index_u32(u_input.b.x & 1u, 31u)])) << (~(select(var_1, var_1, true) << (~vec4<u32>(1u, 0u, var_1.x, var_1.x) % vec4<u32>(32u))) % vec4<u32>(32u)), min(31078u, var_1.x), _wgslsmith_div_vec4_i32(firstTrailingBit(u_input.a), vec4<i32>(i32(-1i) * -1i, _wgslsmith_add_i32(u_input.a.x, func_4(u_input.a).x), ~firstLeadingBit(var_4.x), ~(i32(-1i) * -33148i))), vec2<u32>(4025u, _wgslsmith_dot_vec2_u32(vec2<u32>(func_1(-2147483647i, vec2<u32>(15764u, 61980u), vec2<bool>(false, true)), _wgslsmith_mod_u32(38630u, 14154u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(1857u, 21878u), var_1.xy)))), -970f);
}

