struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<f32>) -> vec4<i32> {
    let var_0 = 8596u;
    let var_1 = max(-1i, 2147483647i);
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_2.x, arg_2.x), _wgslsmith_div_f32(arg_0.d, arg_0.b))), _wgslsmith_f_op_f32(min(arg_0.d, arg_2.x)), -447f, -451f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(348f)), -282f, arg_0.b, -716f)))), select(!select(vec4<bool>(arg_1.x, true, arg_1.x, false), vec4<bool>(false, false, arg_1.x, false), select(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(arg_0.c.b.x, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, true, false, arg_0.c.b.x))), select(select(vec4<bool>(true, true, arg_0.c.b.x, true), !vec4<bool>(arg_1.x, false, true, false), select(vec4<bool>(false, true, arg_0.c.b.x, true), vec4<bool>(true, false, arg_1.x, true), arg_1.x)), vec4<bool>(arg_1.x, true, true, var_1 <= -2147483647i), select(vec4<bool>(arg_0.c.b.x, arg_0.c.b.x, true, true), !vec4<bool>(false, false, arg_0.c.b.x, arg_1.x), arg_1.x)), arg_0.c.b.x)));
    return _wgslsmith_mod_vec4_i32(~abs(vec4<i32>(var_1, u_input.d, 0i, _wgslsmith_dot_vec2_i32(arg_0.a.xx, vec2<i32>(2147483647i, -83851i)))), vec4<i32>(u_input.d, -2147483647i, var_1, u_input.e));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = false;
    let var_1 = firstLeadingBit(countOneBits(vec4<i32>(17854i, u_input.d, 49230i, _wgslsmith_mult_i32(2147483647i, arg_1.a.x)))) ^ ~(~func_3(arg_1, select(arg_0, arg_1.c.b.xz, arg_1.c.b.xx), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -1096f, -1000f), vec3<f32>(arg_1.d, arg_1.c.c, 288f), false))));
    var var_2 = Struct_2(arg_1.a, _wgslsmith_f_op_f32(-519f + arg_1.c.c), Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.c.a, 58225u, arg_1.c.a), firstLeadingBit(u_input.c.xzz)), vec3<bool>(~0i > select(var_1.x, u_input.b.x, var_0), 1000f != _wgslsmith_f_op_f32(max(-579f, arg_1.d)), all(!arg_1.c.b.yz)), arg_1.c.c, u_input.e), 1000f);
    let var_3 = Struct_3(true, arg_1, ~countOneBits(~31018u & var_2.c.a), vec3<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1128u, 0u, 26893u), vec4<u32>(var_2.c.a, u_input.a, 18736u, u_input.c.x)) | firstTrailingBit(0u)), 1u, countOneBits(~_wgslsmith_dot_vec2_u32(u_input.c.yw, vec2<u32>(21547u, var_2.c.a)))));
    var var_4 = Struct_1(~var_3.c, select(!var_3.b.c.b, vec3<bool>(true, var_3.b.c.b.x, false), -5228i < -u_input.b.x), 766f, max(var_1.x, var_2.c.d));
    return arg_1;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = arg_0.a;
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_div_i32(~0i, countOneBits(-(var_0.c.d >> (34155u % 32u)))), ~firstLeadingBit(u_input.e));
    var_1 = _wgslsmith_dot_vec4_i32(~(vec4<i32>(func_2(arg_0.a.c.b.zz, Struct_2(vec3<i32>(arg_0.a.a.x, var_0.a.x, 2147483647i), arg_1.x, var_0.c, arg_1.x)).c.d, -u_input.b.x, -arg_0.a.c.d, var_0.a.x ^ u_input.e) >> ((u_input.c | u_input.c) % vec4<u32>(32u))), firstLeadingBit(vec4<i32>(max(arg_0.a.a.x, -34412i), 1i, ~arg_0.a.c.d, ~(arg_0.a.a.x << (var_0.c.a % 32u)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(f32(-1f) * -1611f)));
    let var_3 = true;
    return Struct_1(func_2(!arg_0.a.c.b.zz, func_2(arg_0.a.c.b.xx, Struct_2(vec3<i32>(-5383i, 20002i, -1i), 710f, Struct_1(u_input.a, vec3<bool>(false, false, var_3), -1000f, -1i), 1152f))).c.a >> (var_0.c.a % 32u), !var_0.c.b, 1230f, -_wgslsmith_sub_i32(u_input.d, var_0.c.d));
}

fn func_5(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = u_input.b.zy;
    let var_1 = Struct_2(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1447f)) * 1046f) * arg_1)), func_2(select(func_2(!vec2<bool>(true, arg_3.b.x), Struct_2(vec3<i32>(arg_3.d, 2147483647i, var_0.x), 801f, arg_3, 307f)).c.b.xx, vec2<bool>(true, true), !func_2(vec2<bool>(false, true), Struct_2(u_input.b, arg_1, arg_3, arg_0.x)).c.b.yy), Struct_2(_wgslsmith_mult_vec3_i32(-vec3<i32>(1i, 1i, 0i), _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(-2147483647i, 1i, arg_3.d))), _wgslsmith_f_op_f32(f32(-1f) * -566f), Struct_1(7567u, arg_3.b, 237f, var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -801f))).c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(592f)), arg_1));
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(arg_3.d, abs(u_input.d), -1i) & (((vec3<i32>(34691i, u_input.b.x, -20406i) << (vec3<u32>(0u, 27633u, u_input.c.x) % vec3<u32>(32u))) >> (arg_2.zzx % vec3<u32>(32u))) | -var_1.a), u_input.b);
    let var_3 = var_1.c.b.zx;
    let var_4 = reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(18727i, -8745i, u_input.d), vec3<i32>(78391i, var_2.x, 0i))), ~var_1.a.zz, firstLeadingBit(abs(vec2<i32>(0i, var_1.c.d)))));
    return Struct_2(min(u_input.b, ~(vec3<i32>(2147483647i, -2147483647i, -2147483647i) >> (vec3<u32>(4294967295u, 1u, var_1.c.a) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(926f + _wgslsmith_f_op_f32(-arg_3.c)), var_1.c, 207f);
}

fn func_1() -> Struct_4 {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2406f, -1989f, -1289f, 869f), vec4<f32>(1830f, 698f, -554f, -1014f), vec4<bool>(false, true, false, false))), vec4<f32>(2244f, -690f, 692f, -452f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(516f, -1593f, 292f, -627f) + vec4<f32>(1397f, 433f, -909f, 424f)))) - vec4<f32>(_wgslsmith_f_op_f32(-508f + _wgslsmith_f_op_f32(853f * 1000f)), -184f, -439f, 1217f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(190f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(519f + -1701f), _wgslsmith_f_op_f32(f32(-1f) * -340f)))), _wgslsmith_sub_vec4_u32(max(vec4<u32>(0u, 4294967295u, u_input.a, 2251u), u_input.c) & u_input.c, u_input.c << (vec4<u32>(u_input.c.x, 23514u, u_input.a, 44732u) % vec4<u32>(32u))) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.c.x, u_input.c.x), u_input.c), func_4(Struct_4(func_2(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), Struct_2(vec3<i32>(u_input.d, u_input.b.x, u_input.b.x), 349f, Struct_1(u_input.c.x, vec3<bool>(true, true, true), -385f, u_input.e), -1695f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2234f, -612f, -1370f), vec3<f32>(-1330f, -407f, 440f), vec3<bool>(true, true, true))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-457f, 1761f, -399f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-368f, 1297f) * vec2<f32>(1449f, 1298f)), vec2<f32>(-1000f, -1659f)))))));
    var_0 = Struct_2(~vec3<i32>(var_0.a.x, u_input.d, u_input.d), func_4(Struct_4(func_5(vec4<f32>(-2012f, -825f, -723f, 1000f), _wgslsmith_div_f32(var_0.d, 266f), u_input.c, func_4(Struct_4(Struct_2(vec3<i32>(var_0.a.x, 53436i, var_0.a.x), 1315f, var_0.c, 2680f), vec3<f32>(var_0.b, 2121f, var_0.b)), vec2<f32>(718f, var_0.c.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.c, -932f, -195f) - vec3<f32>(-414f, -1000f, var_0.b)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-553f, 1429f, 2153f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, 1249f) * vec2<f32>(var_0.d, -309f))))))).c, func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(var_0.d, 126f)), _wgslsmith_f_op_f32(f32(-1f) * -1096f), _wgslsmith_f_op_f32(-var_0.c.c), _wgslsmith_f_op_f32(min(-436f, 793f))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(-606f)), var_0.b, _wgslsmith_f_op_f32(var_0.d + -234f), func_2(vec2<bool>(var_0.c.b.x, var_0.c.b.x), Struct_2(var_0.a, -626f, var_0.c, var_0.b)).b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.c + -1416f), -1495f)), firstLeadingBit(firstLeadingBit(countOneBits(vec4<u32>(86792u, 5684u, u_input.a, u_input.c.x)))), func_4(Struct_4(Struct_2(vec3<i32>(var_0.a.x, -7940i, -1i), var_0.b, Struct_1(u_input.c.x, vec3<bool>(var_0.c.b.x, true, true), var_0.d, 804i), var_0.c.c), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.d, 1374f, 1319f), vec3<f32>(-117f, var_0.c.c, 545f)))), vec2<f32>(_wgslsmith_f_op_f32(floor(-943f)), var_0.c.c))).c, var_0.d);
    var var_1 = reverseBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(max(~vec2<u32>(100066u, u_input.a), ~u_input.c.wx), _wgslsmith_mult_vec2_u32(u_input.c.yy, u_input.c.wz) ^ ~u_input.c.xy, vec2<u32>(~31172u, 46206u)), max(u_input.c.zw, vec2<u32>(4294967295u, min(u_input.c.x, var_0.c.a))), _wgslsmith_mult_vec2_u32(vec2<u32>(~1u, _wgslsmith_mult_u32(3871u, 42284u)), select(u_input.c.zz, _wgslsmith_clamp_vec2_u32(vec2<u32>(4627u, 1u), vec2<u32>(u_input.c.x, 0u), u_input.c.yz), true))));
    var_0 = func_5(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 651f, var_0.b, -1000f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(118f, var_0.c.c, 1000f, 165f) * vec4<f32>(var_0.c.c, 472f, -1659f, -1171f))))))), 618f, firstTrailingBit(u_input.c) ^ _wgslsmith_sub_vec4_u32(max(u_input.c, select(u_input.c, u_input.c, false)), u_input.c), func_5(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, 151f, var_0.b, -203f)), vec4<f32>(var_0.b, var_0.b, 958f, -209f)))), var_0.c.c, _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.c, reverseBits(u_input.c)), vec4<u32>(~u_input.a, ~var_0.c.a, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 71699u >> (var_0.c.a % 32u))), Struct_1(u_input.c.x, !vec3<bool>(var_0.c.b.x, var_0.c.b.x, var_0.c.b.x), 891f, -40515i)).c);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(var_0.b - -1039f), var_0.d, func_4(Struct_4(Struct_2(u_input.b, _wgslsmith_f_op_f32(-var_0.d), Struct_1(1u, var_0.c.b, var_0.c.c, u_input.d), -2934f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.d, var_0.c.c, -1771f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-2004f, var_0.c.c))))))).c, -607f);
    return Struct_4(Struct_2(_wgslsmith_sub_vec3_i32(~firstTrailingBit(vec3<i32>(u_input.d, var_0.a.x, u_input.b.x)), _wgslsmith_div_vec3_i32(u_input.b, _wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.x, u_input.e, 2147483647i), u_input.b))), var_2.x, var_0.c, -1000f), vec3<f32>(var_0.b, -635f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.d, var_2.x)))));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_2) -> Struct_4 {
    return Struct_4(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-744f, 1408f, 729f, arg_0.b.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1623f, 2592f, 747f, 468f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.d, -1943f, arg_1.b, arg_1.b), vec4<f32>(arg_1.b, -271f, arg_1.c.c, arg_1.d), true)))), arg_0.a.d, u_input.c, arg_0.a.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.a.b, 2365f) - _wgslsmith_f_op_vec3_f32(-arg_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, -135f, 667f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(1u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.c.zy, ~vec2<u32>(u_input.a, u_input.c.x)), 0u));
    var_0 = 0u;
    var_0 = _wgslsmith_mod_u32(89967u, 4294967295u);
    var var_1 = -986f;
    var var_2 = func_6(func_1(), Struct_2(vec3<i32>(_wgslsmith_mult_i32(u_input.d ^ u_input.b.x, u_input.e), u_input.d, _wgslsmith_mod_i32(2147483647i >> (u_input.a % 32u), u_input.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2786f))), func_4(func_1(), vec2<f32>(_wgslsmith_f_op_f32(ceil(829f)), -724f)), -922f));
    let var_3 = all(var_2.a.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(abs(~u_input.c))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_5(vec4<f32>(var_2.a.b, -1058f, var_2.a.b, var_2.b.x), var_2.a.c.c, u_input.c, var_2.a.c).d, _wgslsmith_f_op_f32(floor(var_2.b.x)), 468f, var_2.b.x)))), ~(var_2.a.a.x ^ u_input.b.x));
}

