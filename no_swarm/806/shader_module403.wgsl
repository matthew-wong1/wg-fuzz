struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_3) -> vec4<u32> {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), -130f, arg_3.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.d.e.x)), arg_1.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(arg_3.d.c.x * 118f)))), arg_1.a.c.x, !(6374i == (arg_0.e >> (u_input.a.x % 32u))))));
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-522f, -1268f, _wgslsmith_f_op_f32(global0.x * arg_0.b.b.x), global0.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, 280f, arg_3.d.e.x, -1474f))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.a.b.x), _wgslsmith_f_op_f32(step(arg_0.a.a.b.x, arg_3.b.e.x)), _wgslsmith_f_op_f32(round(-855f)), 1000f)))));
    let var_0 = select(true, any(vec3<bool>(arg_0.a.c | arg_1.c, _wgslsmith_f_op_f32(floor(arg_1.a.c.x)) == -414f, false)), true);
    var var_1 = Struct_1(arg_1.d.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.a.e.x, 203f, 306f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-129f, arg_3.a.b, -589f)))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, arg_3.b.e.x, _wgslsmith_f_op_f32(-arg_3.a.d.e.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.d.b.x, -1000f, 1000f))), _wgslsmith_f_op_vec3_f32(global0.xyy - arg_3.a.a.c)))), arg_1.d.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1484f, -653f, arg_0.b.e.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_1.a.e), vec4<f32>(arg_1.d.c.x, 1113f, 221f, global0.x))) + arg_0.a.a.e)));
    var_1 = Struct_1(_wgslsmith_clamp_i32(1i, ~(-_wgslsmith_dot_vec2_i32(arg_0.b.d.zx, arg_3.a.d.d.xz)), arg_3.a.d.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.e.x, 582f, global0.x), vec3<f32>(303f, arg_3.a.a.b.x, var_1.e.x)))))), _wgslsmith_f_op_vec3_f32(arg_3.a.d.c - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b.x))), -152f, _wgslsmith_f_op_f32(-929f - _wgslsmith_f_op_f32(f32(-1f) * -677f)))), vec4<i32>(_wgslsmith_div_i32(arg_2.x, arg_3.d.d.x), arg_2.x >> (firstLeadingBit(u_input.a.x) % 32u), 1i, arg_2.x), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_1.d.e, vec4<f32>(global0.x, -407f, 1229f, 340f), !vec4<bool>(true, true, false, arg_3.a.c))), _wgslsmith_div_vec4_f32(arg_1.a.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.e.x, arg_1.d.c.x, arg_3.b.b.x, 235f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-262f, arg_3.d.e.x, global0.x, global0.x), vec4<f32>(arg_0.a.b, 562f, global0.x, global0.x))))));
    return ~firstTrailingBit(abs(vec4<u32>(0u, 0u, u_input.a.x, 4294967295u) ^ vec4<u32>(u_input.a.x, 13859u, 23226u, u_input.a.x)));
}

fn func_2(arg_0: Struct_5, arg_1: vec2<i32>) -> i32 {
    var var_0 = reverseBits(countOneBits(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(func_3(Struct_3(Struct_2(Struct_1(-1i, vec3<f32>(global0.x, -1000f, 1501f), global0.wxz, vec4<i32>(arg_0.a, 2480i, -2147483647i, -2147483647i), vec4<f32>(106f, global0.x, 637f, 1000f)), 609f, false, Struct_1(arg_0.a, global0.wxy, vec3<f32>(1572f, global0.x, -258f), vec4<i32>(24637i, -41186i, -1i, arg_0.a), vec4<f32>(global0.x, 1489f, 1138f, global0.x))), Struct_1(39349i, vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(1095f, global0.x, 1129f), vec4<i32>(arg_1.x, 2147483647i, 1i, arg_1.x), vec4<f32>(-1000f, global0.x, global0.x, global0.x)), arg_1, Struct_1(-33268i, vec3<f32>(831f, -2000f, global0.x), vec3<f32>(global0.x, global0.x, global0.x), vec4<i32>(arg_0.a, arg_0.a, -28765i, -30837i), vec4<f32>(global0.x, 1045f, global0.x, -214f)), -39281i), Struct_2(Struct_1(arg_0.a, global0.yzx, vec3<f32>(global0.x, -498f, global0.x), vec4<i32>(29814i, arg_1.x, arg_1.x, -21019i), vec4<f32>(-1000f, global0.x, global0.x, 618f)), 362f, arg_0.b, Struct_1(32983i, vec3<f32>(493f, global0.x, 1000f), global0.xyz, vec4<i32>(arg_0.a, arg_1.x, -26404i, -1i), vec4<f32>(-394f, 467f, 326f, global0.x))), vec3<i32>(arg_0.a, 6891i, 2147483647i), Struct_3(Struct_2(Struct_1(9411i, global0.xxz, vec3<f32>(global0.x, -1298f, global0.x), vec4<i32>(arg_0.a, 1i, arg_0.a, arg_1.x), vec4<f32>(global0.x, -787f, global0.x, -118f)), global0.x, arg_0.b, Struct_1(42955i, global0.yxz, global0.xwy, vec4<i32>(2147483647i, arg_1.x, 32390i, 0i), vec4<f32>(1532f, global0.x, 777f, -697f))), Struct_1(20148i, vec3<f32>(-421f, global0.x, global0.x), vec3<f32>(global0.x, global0.x, -394f), vec4<i32>(arg_0.a, arg_0.a, arg_1.x, arg_1.x), vec4<f32>(880f, 631f, global0.x, global0.x)), vec2<i32>(arg_0.a, arg_0.a), Struct_1(1i, vec3<f32>(-1128f, global0.x, global0.x), vec3<f32>(global0.x, 260f, 219f), vec4<i32>(arg_0.a, arg_0.a, arg_0.a, arg_1.x), vec4<f32>(131f, global0.x, global0.x, global0.x)), arg_1.x)), ~vec4<u32>(27903u, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<u32>(45650u, u_input.a.x, 0u, 21517u)), vec4<u32>(u_input.a.x, reverseBits(15588u), u_input.a.x, 0u))));
    var_0 = vec4<u32>(0u, _wgslsmith_add_u32(min(5355u, u_input.a.x), var_0.x), ~abs(~_wgslsmith_div_u32(89453u, var_0.x)), _wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(36402u, u_input.a.x)) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, u_input.a.x), vec2<u32>(u_input.a.x, 4294967295u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 27767u), u_input.a), func_3(Struct_3(Struct_2(Struct_1(2147483647i, global0.zyz, vec3<f32>(1000f, global0.x, 1000f), vec4<i32>(arg_1.x, -37003i, -2147483647i, arg_1.x), vec4<f32>(global0.x, 1298f, 1910f, 1119f)), global0.x, false, Struct_1(9902i, global0.wzw, vec3<f32>(global0.x, 2016f, global0.x), vec4<i32>(arg_0.a, -21751i, 2147483647i, -4557i), vec4<f32>(global0.x, -1000f, 1612f, global0.x))), Struct_1(arg_0.a, vec3<f32>(1557f, global0.x, global0.x), vec3<f32>(global0.x, 742f, 197f), vec4<i32>(-1i, -1i, arg_0.a, -20158i), vec4<f32>(global0.x, global0.x, global0.x, global0.x)), vec2<i32>(arg_0.a, 2064i), Struct_1(arg_0.a, global0.wxz, global0.yyy, vec4<i32>(2147483647i, arg_0.a, arg_1.x, 6533i), vec4<f32>(global0.x, global0.x, global0.x, global0.x)), arg_1.x), Struct_2(Struct_1(0i, global0.wzz, global0.xyw, vec4<i32>(arg_1.x, 1i, -2147483647i, arg_0.a), vec4<f32>(2028f, 745f, -2665f, -671f)), global0.x, arg_0.b, Struct_1(-1i, vec3<f32>(global0.x, 435f, 996f), vec3<f32>(global0.x, -1515f, 118f), vec4<i32>(2147483647i, arg_1.x, -40063i, arg_0.a), vec4<f32>(1074f, 853f, -1817f, -433f))), vec3<i32>(arg_1.x, arg_1.x, 18391i), Struct_3(Struct_2(Struct_1(1i, vec3<f32>(global0.x, global0.x, -829f), global0.wxy, vec4<i32>(arg_1.x, 0i, arg_1.x, arg_0.a), vec4<f32>(global0.x, 711f, -692f, global0.x)), -583f, true, Struct_1(-1i, vec3<f32>(-2574f, global0.x, 372f), global0.wxw, vec4<i32>(arg_1.x, -26826i, arg_0.a, arg_1.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x))), Struct_1(arg_1.x, vec3<f32>(global0.x, global0.x, global0.x), global0.yyz, vec4<i32>(0i, 40821i, arg_0.a, -21900i), vec4<f32>(-2296f, 745f, global0.x, global0.x)), vec2<i32>(-11269i, arg_1.x), Struct_1(-22777i, vec3<f32>(-506f, global0.x, global0.x), vec3<f32>(-2043f, 534f, -188f), vec4<i32>(0i, arg_1.x, -1i, arg_1.x), vec4<f32>(global0.x, 691f, 206f, -230f)), 2147483647i)).x), ~vec2<u32>(var_0.x, 63136u))));
    var var_1 = max(~(-1253i), i32(-1i) * -9507i) & _wgslsmith_mod_i32(~1i, arg_1.x ^ -7558i);
    let var_2 = reverseBits(-vec3<i32>(arg_0.a, _wgslsmith_add_i32(-2147483647i, arg_0.a), i32(-1i) * -42359i) ^ select(select(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a, arg_0.a, 1i), vec3<i32>(arg_1.x, arg_0.a, arg_0.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(-12314i, arg_1.x, arg_1.x), vec3<i32>(-1i, arg_0.a, arg_0.a)), all(vec3<bool>(arg_0.b, false, true))), vec3<i32>(-1i) * -vec3<i32>(arg_1.x, arg_0.a, 0i), false));
    var var_3 = vec3<i32>(-arg_0.a, countOneBits(2147483647i), abs(9001i ^ arg_0.a)) << (reverseBits(_wgslsmith_div_vec3_u32(var_0.wzx, select(vec3<u32>(18440u, 1u, u_input.a.x), vec3<u32>(16573u, var_0.x, 0u), select(vec3<bool>(arg_0.b, false, arg_0.b), vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, false, arg_0.b))))) % vec3<u32>(32u));
    return firstLeadingBit(~(-2147483647i));
}

fn func_1() -> Struct_5 {
    var var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(func_2(Struct_5(-1i, false), _wgslsmith_sub_vec2_i32(vec2<i32>(17111i, -9115i), vec2<i32>(0i, -1i))), abs(1i)), vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(-31047i, -2147483647i, 2147483647i)), _wgslsmith_mod_i32(1i, min(-1528i, -7501i)))), firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(55077i, -4768i), vec2<i32>(26175i, 109779i)) >> (vec2<u32>(43267u, u_input.a.x) % vec2<u32>(32u))) >> (u_input.a % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(sign(global0.x));
    let var_2 = Struct_2(Struct_1(1i, global0.yxy, global0.wyz, ~select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, 0i), vec4<i32>(var_0.x, -1i, var_0.x, var_0.x)), select(vec4<i32>(-2147483647i, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, 0i, -42693i, var_0.x), true), vec4<bool>(true, true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(global0.x - 536f), 1636f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global0.x) + -888f), _wgslsmith_f_op_f32(-1303f - global0.x))), global0.x, false, Struct_1(9619i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global0.wzw)) - _wgslsmith_f_op_vec3_f32(-global0.zzx))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-886f, _wgslsmith_f_op_f32(abs(global0.x)), 973f))), reverseBits(~vec4<i32>(-14962i, var_0.x, var_0.x, var_0.x) << (func_3(Struct_3(Struct_2(Struct_1(var_0.x, global0.yww, vec3<f32>(-1727f, 391f, global0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(1265f, global0.x, 1000f, global0.x)), -173f, true, Struct_1(var_0.x, global0.ywx, global0.yyz, vec4<i32>(45362i, -2147483647i, 3950i, var_0.x), vec4<f32>(-501f, global0.x, 254f, global0.x))), Struct_1(0i, global0.wwz, vec3<f32>(1250f, global0.x, -999f), vec4<i32>(-1i, -1i, 44928i, var_0.x), vec4<f32>(global0.x, 593f, 547f, 283f)), vec2<i32>(var_0.x, var_0.x), Struct_1(-1i, global0.zzy, global0.wxy, vec4<i32>(var_0.x, var_0.x, -4799i, var_0.x), vec4<f32>(-795f, -1764f, global0.x, 563f)), 22884i), Struct_2(Struct_1(0i, global0.xxz, global0.zwz, vec4<i32>(-14726i, var_0.x, var_0.x, var_0.x), vec4<f32>(-2914f, global0.x, global0.x, 437f)), -224f, false, Struct_1(var_0.x, vec3<f32>(global0.x, global0.x, -1295f), global0.wxz, vec4<i32>(var_0.x, var_0.x, var_0.x, 13632i), vec4<f32>(-1155f, 1013f, -1029f, -394f))), vec3<i32>(var_0.x, 43605i, var_0.x), Struct_3(Struct_2(Struct_1(var_0.x, global0.xyw, vec3<f32>(-2691f, global0.x, global0.x), vec4<i32>(var_0.x, var_0.x, -2147483647i, var_0.x), vec4<f32>(global0.x, global0.x, -883f, 1309f)), global0.x, true, Struct_1(-23045i, global0.wwy, global0.wyx, vec4<i32>(var_0.x, 41532i, var_0.x, var_0.x), vec4<f32>(global0.x, global0.x, 760f, -149f))), Struct_1(var_0.x, vec3<f32>(global0.x, global0.x, -1000f), vec3<f32>(global0.x, global0.x, global0.x), vec4<i32>(var_0.x, var_0.x, 2147483647i, 1i), vec4<f32>(global0.x, global0.x, 2310f, global0.x)), vec2<i32>(49575i, -1i), Struct_1(24028i, vec3<f32>(global0.x, -2665f, global0.x), global0.yyz, vec4<i32>(0i, 2147483647i, -9894i, -37829i), vec4<f32>(453f, global0.x, global0.x, global0.x)), var_0.x)) % vec4<u32>(32u))), vec4<f32>(-990f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-198f, -152f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -591f)), global0.x)));
    var_0 = vec2<i32>(1i, reverseBits(var_2.a.a));
    var var_3 = Struct_2(Struct_1(firstTrailingBit(var_2.d.a), global0.xxx, global0.xxx, var_2.d.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.d.e)))), 1515f, false, var_2.d);
    return Struct_5((var_0.x ^ var_2.a.a) >> (_wgslsmith_sub_u32(~u_input.a.x, 96u) % 32u), true);
}

fn func_4(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: Struct_5) -> Struct_2 {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1134f), _wgslsmith_f_op_f32(global0.x - global0.x))), -1069f))), _wgslsmith_f_op_f32(sign(global0.x)));
    let var_0 = select(vec3<bool>((20034u & u_input.a.x) <= 61907u, true, _wgslsmith_f_op_f32(-global0.x) == global0.x), select(!select(select(vec3<bool>(arg_2.b, arg_2.b, arg_2.b), vec3<bool>(false, arg_2.b, false), vec3<bool>(arg_2.b, true, arg_0.b)), vec3<bool>(true, true, false), vec3<bool>(false, arg_0.b, arg_0.b)), select(vec3<bool>(-2534f == global0.x, any(vec3<bool>(true, arg_0.b, arg_0.b)), !arg_0.b), select(select(vec3<bool>(arg_2.b, true, arg_0.b), vec3<bool>(arg_0.b, true, arg_2.b), vec3<bool>(arg_0.b, true, true)), !vec3<bool>(true, arg_0.b, true), vec3<bool>(true, true, false)), !any(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true))), vec3<bool>((u_input.a.x << (arg_1.x % 32u)) <= select(arg_1.x, 1u, arg_0.b), any(!vec2<bool>(arg_2.b, arg_0.b)), true)), !select(select(vec3<bool>(arg_0.b, false, arg_0.b), vec3<bool>(arg_2.b, false, arg_0.b), select(vec3<bool>(false, arg_0.b, false), vec3<bool>(arg_0.b, arg_0.b, false), vec3<bool>(true, true, false))), !select(vec3<bool>(arg_0.b, arg_2.b, true), vec3<bool>(true, arg_0.b, arg_0.b), false), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))));
    var var_1 = ~(~arg_1.x);
    let var_2 = ~(~60978u);
    var var_3 = ~(abs(reverseBits(vec2<u32>(4294967295u, 41332u) | arg_1.yy)) ^ ~_wgslsmith_mod_vec2_u32(reverseBits(arg_1.yz), ~vec2<u32>(1u, 6942u)));
    return Struct_2(Struct_1(_wgslsmith_mult_i32(arg_2.a, arg_2.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-747f, -1414f, global0.x) - vec3<f32>(global0.x, global0.x, global0.x))), vec3<f32>(global0.x, _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, -1000f)))), _wgslsmith_add_vec4_i32(~(-vec4<i32>(arg_0.a, arg_2.a, arg_2.a, 11198i)), vec4<i32>(_wgslsmith_add_i32(18126i, arg_2.a), reverseBits(0i), -9861i, countOneBits(arg_0.a))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -687f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), global0.x)), -890f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(266f, global0.x)))))), -720f, any(vec4<bool>(any(!var_0.xy), true, true, (arg_2.a & arg_2.a) > arg_0.a)), Struct_1(-1787i | ~(-arg_2.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, 1014f, -364f))) + global0.wyy) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, global0.x, 1752f)))), global0.yxy, vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -26952i), vec2<i32>(arg_0.a, -2147483647i)), -22811i & arg_0.a, -arg_0.a, firstTrailingBit(reverseBits(-25114i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(select(global0.x, global0.x, arg_2.b)), global0.x))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>) -> vec3<u32> {
    let var_0 = Struct_3(Struct_2(Struct_1(min(func_2(Struct_5(-63251i, false), arg_0.d.d.xw), _wgslsmith_div_i32(arg_0.d.a, arg_0.a.d.x)), arg_0.a.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.xzx * arg_0.a.e.zxz), vec3<f32>(arg_0.b, arg_0.a.e.x, 190f)), func_4(func_1(), select(vec4<u32>(0u, 4294967295u, 29658u, arg_1.x), vec4<u32>(40943u, u_input.a.x, arg_1.x, u_input.a.x), arg_0.c), Struct_5(-1142i, false)).d.d, _wgslsmith_f_op_vec4_f32(floor(arg_0.d.e))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(global0.x * 243f))), !((false & arg_0.c) | true), func_4(Struct_5(arg_0.d.d.x << (arg_1.x % 32u), all(vec3<bool>(true, arg_0.c, true))), _wgslsmith_mult_vec4_u32(max(arg_1, vec4<u32>(1u, arg_1.x, 4294967295u, 0u)), ~vec4<u32>(129702u, arg_1.x, 1u, u_input.a.x)), func_1()).d), arg_0.d, vec2<i32>(~arg_0.a.d.x, arg_0.a.d.x << (0u % 32u)), Struct_1(arg_0.a.d.x >> (~arg_1.x % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -916f, arg_0.b)))), global0.yxy, arg_0.d.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.e.x, -350f, global0.x, 1796f) + func_4(Struct_5(arg_0.d.a, false), arg_1, Struct_5(-1i, arg_0.c)).a.e), vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.a.c.x)), 1592f, _wgslsmith_f_op_f32(f32(-1f) * -571f), -1151f))), 4480i);
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(-114f, _wgslsmith_f_op_f32(trunc(var_0.b.c.x)), var_0.d.c.x, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(arg_0.d.e - vec4<f32>(514f, var_0.b.e.x, 409f, arg_0.d.b.x)), vec4<f32>(-523f, global0.x, 479f, 188f)))), _wgslsmith_f_op_vec4_f32(-func_4(Struct_5(-2147483647i, true), arg_1, func_1()).d.e)));
    var var_2 = _wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(arg_1.wy, vec2<u32>(abs(u_input.a.x), 1u)), vec2<u32>(~24816u, max(~arg_1.x, 1u)));
    let var_3 = false;
    var var_4 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 935f) + vec2<f32>(572f, -897f)), var_1.zy)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-732f, var_1.x))), _wgslsmith_f_op_f32(-func_4(Struct_5(arg_0.a.a, var_0.a.c), vec4<u32>(1u, 4294967295u, 9824u, u_input.a.x), Struct_5(var_0.b.a, false)).d.c.x)))));
    return ~select(~vec3<u32>(firstTrailingBit(u_input.a.x), 36037u << (1u % 32u), ~u_input.a.x), _wgslsmith_clamp_vec3_u32(arg_1.zyx ^ vec3<u32>(4294967295u, var_2.x, var_2.x), vec3<u32>(arg_1.x << (u_input.a.x % 32u), _wgslsmith_dot_vec3_u32(arg_1.xwz, arg_1.yyx), 33609u & u_input.a.x), ~arg_1.yzx << (vec3<u32>(64268u, u_input.a.x, var_2.x) % vec3<u32>(32u))), vec3<bool>(1i >= var_0.b.a, true, !arg_0.c & func_4(Struct_5(arg_0.d.d.x, false), vec4<u32>(4294967295u, 51233u, 8174u, 47043u), Struct_5(-1i, var_0.a.c)).c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)), func_1()), countOneBits(vec4<u32>(u_input.a.x >> (_wgslsmith_mult_u32(0u, u_input.a.x) % 32u), ~u_input.a.x, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 105901u) ^ vec3<u32>(19759u, u_input.a.x, 0u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ vec3<u32>(4294967295u, 23844u, 35062u)))));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, global0.x, -1386f, 1189f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1000f, global0.x, 990f) * vec4<f32>(global0.x, 870f, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, global0.x, global0.x, -222f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(max(global0.x, -909f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x - -1647f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global0.x, -285f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 1557f, global0.x, global0.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x)), func_4(Struct_5(-2147483647i, true), vec4<u32>(59553u, var_0.x, u_input.a.x, 60311u), Struct_5(-31926i, false)).d.e)))));
    let var_1 = Struct_4(Struct_1(-_wgslsmith_clamp_i32(2147483647i, -2147483647i, -26872i) & -(~26181i), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -247f, global0.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global0.ywz * global0.yyy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))))), global0.wzz, vec4<i32>(select(-44966i, -50041i, true) | -1i, ~firstLeadingBit(-1i), -1i, ~abs(-23397i)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_4(Struct_5(0i, true), vec4<u32>(0u, 6693u, 7619u, u_input.a.x), Struct_5(-1i, true)).a.e * vec4<f32>(-261f, global0.x, global0.x, global0.x))))), vec2<u32>(min(select(min(0u, var_0.x), max(var_0.x, 4294967295u), any(vec2<bool>(false, false))), ~(~1u)), abs(func_5(Struct_2(Struct_1(0i, global0.yxy, vec3<f32>(455f, global0.x, global0.x), vec4<i32>(1i, 2147483647i, 0i, 2147483647i), vec4<f32>(global0.x, global0.x, global0.x, 205f)), 145f, true, Struct_1(34278i, global0.zyx, vec3<f32>(-1047f, global0.x, global0.x), vec4<i32>(2147483647i, -28762i, 0i, 2147483647i), vec4<f32>(global0.x, global0.x, -503f, 1553f))), vec4<u32>(0u, u_input.a.x, u_input.a.x, 51024u)).x)), vec3<bool>(true, func_4(func_1(), vec4<u32>(5160u, u_input.a.x, 66849u, 16756u) >> (vec4<u32>(var_0.x, var_0.x, 0u, 22341u) % vec4<u32>(32u)), Struct_5(-43632i, false)).c | all(vec4<bool>(true, false, true, true)), true), Struct_2(Struct_1(65587i, global0.ywy, global0.yzx, max(-vec4<i32>(-2147483647i, -7637i, -2147483647i, -2147483647i), -vec4<i32>(17660i, 20916i, -32828i, 27493i)), vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(max(-1302f, 867f)), _wgslsmith_f_op_f32(trunc(1074f)))), global0.x, !(_wgslsmith_f_op_f32(f32(-1f) * -474f) >= _wgslsmith_f_op_f32(sign(915f))), Struct_1(11195i, global0.ywz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global0.xxx))), func_4(Struct_5(-20599i, true), vec4<u32>(16368u, 35128u, u_input.a.x, 1u), Struct_5(2567i, true)).d.d >> (~vec4<u32>(u_input.a.x, var_0.x, var_0.x, var_0.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-965f, global0.x, global0.x, global0.x)))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_3 = ~var_1.b.x;
    var var_4 = firstTrailingBit(~vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, var_0.x), var_1.b.x, ~_wgslsmith_add_u32(0u, 0u), u_input.a.x & 17001u));
    let var_5 = false;
    let var_6 = select(var_1.c.zy, vec2<bool>(-1246f < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2))), !(!(!var_1.c.x))), true);
    var var_7 = -_wgslsmith_add_i32(43641i, -_wgslsmith_dot_vec3_i32(var_1.d.a.d.yyw, var_1.a.d.zzz));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, var_1.a.d.x, _wgslsmith_add_i32(~_wgslsmith_mod_i32(var_1.d.d.d.x, 20252i >> (var_4.x % 32u)), var_1.d.a.a), vec4<f32>(-848f, global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_2, global0.x, all(var_1.c.zy))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1365f)) - -2451f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(354f + var_1.d.d.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1091f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_1.a.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-771f, global0.x, 378f, -1000f))))) - vec4<f32>(-1112f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1044f)))), var_1.a.c.x, _wgslsmith_f_op_f32(min(-1000f, -666f)))));
}

