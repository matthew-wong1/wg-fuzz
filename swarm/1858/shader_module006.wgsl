struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: Struct_4) -> f32 {
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-1326f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + arg_2.c.c.b)), -1343f)), any(!vec3<bool>(arg_2.a.x, global0.d.c.d, true)) && arg_2.d.c.d, global0.d.c, Struct_2(firstTrailingBit(vec2<i32>(min(25019i, arg_2.d.b.x), ~arg_2.c.b.x)), vec4<i32>(1i, 0i ^ _wgslsmith_dot_vec3_i32(global0.d.b.wzx, u_input.a.wyz), abs(arg_2.d.b.x & u_input.d), arg_2.b.x), global0.c), _wgslsmith_f_op_f32(412f + _wgslsmith_f_op_f32(233f * -301f)));
    let var_0 = select(vec3<i32>(countOneBits(arg_2.c.b.x), -(-arg_2.c.b.x & -1i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.a, global0.d.b), vec4<i32>(0i, arg_2.b.x, arg_2.d.a.x, 0i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global0.d.a, vec2<i32>(u_input.a.x, 2147483647i)), firstLeadingBit(1i)))), ~select(abs(arg_2.c.b.xzw), _wgslsmith_add_vec3_i32(-vec3<i32>(6542i, u_input.d, global0.d.a.x), u_input.a.zzx), !any(vec4<bool>(arg_2.d.c.d, false, arg_2.c.c.d, global0.d.c.d))), all(arg_1.a));
    var var_1 = arg_1.b.zz;
    let var_2 = -(~firstTrailingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(global0.d.a.x, u_input.d, 1i, 14574i), -u_input.a)));
    var var_3 = _wgslsmith_f_op_f32(max(1f, -895f));
    return 1375f;
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(global0.d.c.a.yxz * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 417f, -1737f)))), any(!(!vec2<bool>(true, global0.c.d))), global0.d.c, Struct_2(arg_0.ww, -firstLeadingBit(-vec4<i32>(-9258i, arg_0.x, arg_0.x, global0.d.a.x)), global0.d.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(4294967295u, global0.d.c.c, u_input.e, 6825u), Struct_5(vec4<bool>(true, true, global0.d.c.d, global0.b), vec3<bool>(global0.d.c.d, global0.c.d, global0.d.c.d)), Struct_4(vec2<bool>(false, global0.c.d), vec2<i32>(21109i, u_input.b.x), Struct_2(vec2<i32>(u_input.a.x, u_input.a.x), vec4<i32>(20267i, 2147483647i, global0.d.b.x, arg_0.x), Struct_1(global0.d.c.a, -296f, 0u, global0.d.c.d)), global0.d))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.a.x))), global0.c.a.x)));
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c.a.xxz + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.c.b, 743f, global0.a.x) * vec3<f32>(global0.c.a.x, -673f, global0.d.c.a.x))))), all(select(!vec3<bool>(global0.d.c.d, global0.b, global0.d.c.d), !(!vec3<bool>(global0.d.c.d, global0.b, global0.c.d)), !(global0.c.d == true))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-361f, _wgslsmith_div_f32(856f, -1000f), 1345f, global0.c.b) - vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(global0.d.c.a.x + -530f), global0.e, _wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(104f, global0.c.a.x))), ~(~26691u) << (u_input.c % 32u), true), global0.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.b - -437f)), global0.d.c.a.x)));
    var var_0 = Struct_5(!vec4<bool>(true, select(false, false, global0.c.d), any(vec2<bool>(global0.b, global0.d.c.d)), !all(vec2<bool>(true, global0.c.d))), select(select(!select(vec3<bool>(true, true, global0.b), vec3<bool>(global0.d.c.d, true, false), false), !select(vec3<bool>(false, false, false), vec3<bool>(global0.d.c.d, true, true), false), true), vec3<bool>(false, false, true | global0.b), select(vec3<bool>(false && global0.b, global0.c.d | false, global0.d.c.d == global0.c.d), vec3<bool>(true, true, true), !(!vec3<bool>(global0.b, true, false)))));
    let var_1 = reverseBits(vec2<u32>(u_input.c, ~(~(~u_input.c))));
    var var_2 = Struct_2(global0.d.b.xw, vec4<i32>(_wgslsmith_dot_vec3_i32(reverseBits(arg_0.zww), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yw, vec2<i32>(-31604i, global0.d.b.x)), arg_0.x, select(10231i, 0i, global0.c.d))), abs(14625i | global0.d.b.x), ~1i, -_wgslsmith_div_i32(global0.d.b.x, _wgslsmith_sub_i32(global0.d.b.x, 2902i))), global0.c);
    return Struct_3(_wgslsmith_div_vec3_f32(global0.d.c.a.zzy, _wgslsmith_div_vec3_f32(vec3<f32>(-944f, _wgslsmith_div_f32(global0.c.a.x, global0.d.c.b), 170f), var_2.c.a.xzw)), 0u <= ~var_2.c.c, global0.d.c, global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.a.x))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + arg_0.c.a.x) - _wgslsmith_f_op_f32(arg_0.a.x - -595f)), func_2(arg_0.d.b & max(vec4<i32>(-1848i, 1i, u_input.b.x, -1i), vec4<i32>(-33431i, -2147483647i, arg_0.d.b.x, 1i))).c.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.c.b), _wgslsmith_f_op_f32(step(253f, arg_1.d.c.b))), global0.a.x), _wgslsmith_f_op_f32(ceil(1748f)), 0u, _wgslsmith_f_op_f32(arg_1.c.c.a.x - arg_0.c.b) > _wgslsmith_f_op_f32(select(arg_0.d.c.b, _wgslsmith_f_op_f32(-arg_0.a.x), false)));
    global0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(871f)))), arg_1.c.c.b)));
    var_1 = arg_1.d.c.a.zx;
    var var_2 = !(!vec4<bool>(true, !(arg_0.b | false), false, false));
    return func_2(-_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(func_2(arg_0.d.b).d.b, vec4<i32>(1i, u_input.d, -5779i, arg_0.d.a.x)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, global0.d.b.x, arg_0.d.a.x, -2147483647i), abs(global0.d.b)), _wgslsmith_mod_vec4_i32(max(u_input.a, global0.d.b), select(arg_0.d.b, vec4<i32>(arg_0.d.a.x, u_input.b.x, arg_1.d.b.x, u_input.d), vec4<bool>(arg_0.b, true, false, true))))).d.c;
}

fn func_1(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_5) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(max(arg_1.a.zyz, vec3<f32>(-745f, global0.d.c.a.x, -1019f))), !select(true, false, true), func_4(func_2(~global0.d.b), Struct_4(!select(arg_0.b.xy, vec2<bool>(false, false), arg_3.b.x), max(vec2<i32>(-51390i, 17497i), firstLeadingBit(global0.d.a)), Struct_2(global0.d.a & vec2<i32>(6846i, 4955i), _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(-21774i, 8061i, u_input.d, u_input.b.x)), Struct_1(global0.c.a, -573f, 21590u, arg_1.d)), global0.d), vec3<u32>(77537u, ~global0.d.c.c, abs(global0.c.c))), func_2(-_wgslsmith_mod_vec4_i32(u_input.a & vec4<i32>(global0.d.a.x, global0.d.a.x, 1i, u_input.b.x), vec4<i32>(global0.d.a.x, global0.d.b.x, u_input.d, u_input.d))).d, _wgslsmith_f_op_f32(-arg_1.b));
    var var_1 = 2147483647i ^ (firstTrailingBit(-23008i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, ~(-676i), var_0.d.a.x), var_0.d.b.xxy));
    let var_2 = -83262i >> ((firstTrailingBit(firstTrailingBit(arg_2.c)) ^ ~(~u_input.e)) % 32u);
    var var_3 = func_2(u_input.a >> (_wgslsmith_div_vec4_u32(reverseBits(~vec4<u32>(global0.c.c, 25296u, global0.d.c.c, 0u)), ~vec4<u32>(arg_2.c, global0.c.c, 2021u, global0.c.c)) % vec4<u32>(32u)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1022f, _wgslsmith_f_op_f32(f32(-1f) * -184f))));
    return _wgslsmith_f_op_f32(-global0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-768f)), _wgslsmith_f_op_f32(func_1(Struct_5(vec4<bool>(global0.c.d, false, true, true), vec3<bool>(false, global0.b, false)), Struct_1(global0.c.a, global0.a.x, global0.d.c.c, global0.b), global0.d.c, Struct_5(vec4<bool>(true, false, global0.d.c.d, global0.b), vec3<bool>(false, global0.d.c.d, true))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.a.x, 2255f))), global0.c.a.xz), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(global0.a.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1945f, global0.e))), !any(vec2<bool>(false, global0.b)))))));
    var_0 = 1i;
    var var_2 = global0.d;
    var var_3 = func_2(abs(-var_2.b >> (vec4<u32>(global0.c.c, u_input.e, 1u, u_input.e) % vec4<u32>(32u))) & _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(1i, global0.d.a.x, 2147483647i, u_input.a.x) | select(vec4<i32>(var_2.b.x, 18635i, global0.d.a.x, 34054i), u_input.a, vec4<bool>(var_2.c.d, false, true, true)))).d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.c.c & 68246u, ~0u), vec3<u32>(~28982u, min(0u, 1u), 50463u)), 28934u, u_input.c, var_2.c.c), ~(-(~var_3.b.wyx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_5(vec4<bool>(var_2.c.d, true, true, global0.c.d), vec3<bool>(false, false, false)), Struct_1(vec4<f32>(-386f, 1567f, 1210f, var_3.c.b), var_2.c.a.x, 60134u, true), func_2(vec4<i32>(global0.d.a.x, var_3.b.x, var_2.b.x, -80707i)).c, Struct_5(vec4<bool>(false, true, true, false), vec3<bool>(var_2.c.d, var_3.c.d, var_3.c.d))))) - _wgslsmith_f_op_f32(-1f)));
}

