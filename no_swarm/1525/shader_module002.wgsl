struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = min(_wgslsmith_dot_vec3_i32(min(vec3<i32>(_wgslsmith_sub_i32(-14871i, u_input.b.x), ~2147483647i, 18507i), u_input.a.ywy), u_input.d), 0i);
    let var_1 = vec2<bool>(all(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), true)), any(select(vec2<bool>(true, all(vec2<bool>(true, false))), vec2<bool>(true, true), true)));
    var var_2 = var_1.x;
    var_2 = false;
    let var_3 = 22947u;
    return firstTrailingBit(-2147483647i);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<f32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(sign(arg_2.x));
    var var_1 = 0u;
    var_1 = u_input.c;
    let var_2 = vec3<bool>(any(vec2<bool>(false, false)), 0u <= ~arg_0.a.x, all(!select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, true, false, true)))));
    return vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(func_3() & ~0i, ~u_input.b.x, ~_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, u_input.a.x, -2147483647i))), ~abs(~u_input.a.x)), 24270i);
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<bool>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(~(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 12836u), vec2<u32>(42249u, u_input.c)) >> (abs(vec2<u32>(0u, u_input.c)) % vec2<u32>(32u))), vec2<u32>(~0u >> ((u_input.c << (u_input.c % 32u)) % 32u), 5429u), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 1u), vec4<u32>(4294967295u, u_input.c, u_input.c, 31902u)), u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.c, u_input.c) ^ vec2<u32>(u_input.c, u_input.c)), vec2<u32>(1u, 1u))), _wgslsmith_add_vec3_i32(u_input.a.wwz >> ((_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.c, 40907u), vec3<u32>(u_input.c, u_input.c, u_input.c)) | _wgslsmith_add_vec3_u32(vec3<u32>(3844u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c))) % vec3<u32>(32u)), u_input.d), max(~(~min(vec4<u32>(u_input.c, u_input.c, 21457u, 4294967295u), vec4<u32>(u_input.c, 1u, u_input.c, u_input.c))), vec4<u32>(5426u, 50483u, u_input.c, reverseBits(countOneBits(1u)))));
    var var_1 = vec3<u32>(min(var_0.c.x, 12645u), 33299u << (_wgslsmith_sub_u32(~u_input.c, ~_wgslsmith_add_u32(4294967295u, u_input.c)) % 32u), (u_input.c << (_wgslsmith_dot_vec4_u32(var_0.c, var_0.c) % 32u)) << ((u_input.c ^ _wgslsmith_mult_u32(_wgslsmith_sub_u32(49154u, u_input.c), abs(var_0.a.x))) % 32u));
    let var_2 = vec3<i32>(_wgslsmith_mult_i32(-max(-52075i, -34769i), 1078i), 0i, u_input.b.x) | vec3<i32>(func_2(Struct_1(countOneBits(vec2<u32>(4294967295u, u_input.c)), u_input.b ^ vec3<i32>(u_input.b.x, var_0.b.x, 1i), var_0.c), ~abs(var_0.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1229f, 938f, -518f)) * vec3<f32>(610f, 1171f, 788f))).x, ~u_input.b.x, -(~(~(-37579i))));
    var var_3 = var_0;
    let var_4 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.c, _wgslsmith_sub_u32(select(17921u, 42034u, arg_2.x), 26027u)), vec2<u32>(~var_0.a.x, var_0.c.x), ~abs(~var_3.c.zx)), abs(~abs(countOneBits(var_2))), var_0.c);
    return 10117u;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(~(~arg_0.zz), firstLeadingBit(u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(55838u, ~arg_0.x, abs(reverseBits(u_input.c)), arg_0.x), vec4<u32>(~countOneBits(4294967295u), _wgslsmith_add_u32(arg_0.x, min(12498u, u_input.c)), arg_0.x, countOneBits(u_input.c) | ~arg_0.x)));
    var_0 = Struct_1(_wgslsmith_add_vec2_u32(abs(~abs(vec2<u32>(arg_0.x, 0u))), vec2<u32>(firstLeadingBit(var_0.c.x), reverseBits(~arg_0.x))), ~(-u_input.a.zzw), abs(vec4<u32>(0u, ~(4294967295u << (var_0.a.x % 32u)), ~abs(var_0.c.x), func_4(select(false, false, false), -u_input.a.zy, vec2<bool>(true, true)))));
    var_0 = Struct_1(vec2<u32>(_wgslsmith_add_u32(~0u, firstLeadingBit(u_input.c | 9628u)), _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(~0u, ~u_input.c, 1u))), _wgslsmith_mod_vec3_i32(var_0.b, firstLeadingBit(reverseBits(var_0.b))), vec4<u32>(~0u, ~u_input.c, ~1u, var_0.c.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, 225f, true)) * -1629f);
    var var_2 = _wgslsmith_mod_u32(~_wgslsmith_div_u32(reverseBits(u_input.c), arg_0.x), abs(var_0.c.x)) | _wgslsmith_div_u32(~(23869u & var_0.a.x), _wgslsmith_div_u32(~_wgslsmith_add_u32(4294967295u, u_input.c), max(76683u, var_0.a.x) >> (4294967295u % 32u)));
    return Struct_1(select(var_0.c.wy, arg_0.yz, select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true))) & ~(~vec2<u32>(0u, arg_0.x)), u_input.b, vec4<u32>(_wgslsmith_mod_u32(4294967295u, 1u), var_0.a.x >> (u_input.c % 32u), 1u << (~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 53571u, arg_0.x), vec3<u32>(u_input.c, var_0.c.x, 1u)) % 32u), _wgslsmith_mult_u32(abs(max(var_0.c.x, var_0.a.x)), ~var_0.a.x)));
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -666f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(659f * arg_0), 446f)))), arg_0) - vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(ceil(arg_0))));
    var var_1 = Struct_1(vec2<u32>(_wgslsmith_sub_u32(u_input.c, 1u), 47047u), u_input.a.yzx, vec4<u32>(u_input.c ^ _wgslsmith_add_u32(0u, 3055u), ~19394u, ~0u, u_input.c));
    var var_2 = func_5(vec3<u32>(var_1.c.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(var_1.c), ~vec4<u32>(u_input.c, var_1.a.x, 10771u, 0u)), countOneBits(vec4<u32>(u_input.c, 46287u, 15851u, var_1.a.x))), func_4(false, func_2(Struct_1(vec2<u32>(1108u, 11980u), vec3<i32>(-2147483647i, u_input.d.x, 4243i), var_1.c), ~vec4<u32>(var_1.a.x, 64428u, 38851u, 4294967295u), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, var_0.x, var_0.x)))), vec2<bool>(true, all(vec2<bool>(false, true))))), var_0.zz);
    var var_3 = vec2<bool>(true, true);
    var_1 = func_5(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.a.x, u_input.c, var_2.c.x) << (~vec3<u32>(var_2.a.x, 12947u, u_input.c) % vec3<u32>(32u)), vec3<u32>(4294967295u, 1u, 11550u >> (0u % 32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.zz)), var_0.xx)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(539f, arg_0), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1012f, 575f), vec2<f32>(-1000f, arg_0), any(vec3<bool>(true, var_3.x, false)))), select(select(vec2<bool>(false, var_3.x), vec2<bool>(false, true), false), vec2<bool>(var_3.x, var_3.x), !vec2<bool>(false, var_3.x))))));
    return func_5(min(vec3<u32>(42196u, ~countOneBits(10557u), var_2.c.x), firstTrailingBit(var_2.c.zyx)), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), 1580f)))), 1359f));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1162f * _wgslsmith_f_op_f32(trunc(-976f)))), 7742i);
    var var_1 = var_0;
    var_1 = Struct_1(~select(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_1.a.x), min(arg_0.c.zz, vec2<u32>(8509u, 34327u))), arg_0.c.yw, all(select(vec2<bool>(false, false), vec2<bool>(true, false), true))), ~u_input.d, var_0.c);
    var_1 = Struct_1(vec2<u32>(u_input.c, 0u) << (func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1131f)), abs(reverseBits(arg_0.b.x))).a % vec2<u32>(32u)), max(-vec3<i32>(var_0.b.x, var_0.b.x, var_0.b.x), u_input.a.xyw), _wgslsmith_add_vec4_u32(arg_0.c, _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.c.x, arg_0.a.x, u_input.c, 1u) ^ vec4<u32>(var_0.a.x, u_input.c, var_1.a.x, var_1.a.x), abs(vec4<u32>(var_0.a.x, 34299u, 1u, var_1.a.x))) ^ vec4<u32>(~23933u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, u_input.c, 1u), vec3<u32>(6973u, arg_0.c.x, 8729u)), var_1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, 4294967295u, 0u, 4294967295u), var_0.c))));
    var_1 = Struct_1(var_0.a, -var_0.b, _wgslsmith_clamp_vec4_u32(func_5(vec3<u32>(1u, ~arg_0.c.x, ~var_0.a.x), vec2<f32>(1f, _wgslsmith_f_op_f32(step(-2544f, -1000f)))).c, max(firstTrailingBit(var_1.c), ~var_0.c) << (vec4<u32>(36174u, ~arg_0.c.x, select(4294967295u, 0u, false), ~29378u) % vec4<u32>(32u)), ~vec4<u32>(u_input.c | var_0.c.x, _wgslsmith_dot_vec3_u32(var_0.c.yww, var_1.c.yzw), u_input.c, arg_0.c.x)));
    return func_1(_wgslsmith_f_op_f32(1523f - -1000f), var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-982f - 576f) + -690f)), 1i << (_wgslsmith_mod_u32(1u, u_input.c) % 32u)));
    let var_1 = func_5(vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(abs(func_5(vec3<u32>(var_0.a.x, var_0.c.x, 4294967295u), vec2<f32>(1795f, 872f)).c), ~(vec4<u32>(u_input.c, var_0.c.x, u_input.c, var_0.c.x) << (vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u)))), min(var_0.c.x, min(min(20858u, 67885u), ~u_input.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1842f, _wgslsmith_f_op_f32(-443f - 1063f)) + vec2<f32>(_wgslsmith_f_op_f32(step(2358f, -764f)), _wgslsmith_f_op_f32(min(-448f, -1390f))))));
    var_0 = func_6(func_5(select(vec3<u32>(var_0.c.x, max(var_1.a.x, var_0.a.x), abs(53609u)), ~reverseBits(var_0.c.yzx), vec3<bool>(all(vec3<bool>(true, true, true)), false, false)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1448f, 469f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1308f, 1000f) - vec2<f32>(-1285f, -738f)), select(vec2<bool>(false, false), vec2<bool>(true, true), false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(232f, 1900f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-824f, -1000f), vec2<f32>(995f, 393f), false))), select(vec2<bool>(true, true), vec2<bool>(true, true), 692u == u_input.c)))));
    var var_2 = reverseBits(var_1.c.ww) | vec2<u32>(var_1.a.x, ~var_0.c.x);
    let var_3 = !(!(!(~var_2.x == func_4(true, u_input.a.yy, vec2<bool>(false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, _wgslsmith_add_u32(3100u, 0u), 36110u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1526f, 450f, var_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-577f)) + _wgslsmith_f_op_f32(-643f * -1000f)))));
}

