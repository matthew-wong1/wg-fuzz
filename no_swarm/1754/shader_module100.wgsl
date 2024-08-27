struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(-556f, -425f), vec2<f32>(281f, 416f), vec2<f32>(440f, -627f), vec2<f32>(123f, 1387f), vec2<f32>(-1000f, -1000f), vec2<f32>(-267f, 220f));

var<private> global1: array<Struct_3, 5>;

var<private> global2: vec2<i32> = vec2<i32>(29279i, -34884i);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    global0 = array<vec2<f32>, 6>();
    let var_0 = Struct_1(vec2<i32>(25713i, abs(-1i)), _wgslsmith_div_i32(global2.x, 0i), -31171i, abs((u_input.c & 0i) >> (countOneBits(17860u) % 32u)) | ~(~(-1i)));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-576f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1249f, 1000f))))), true))));
    let var_2 = -(var_0.a >> (u_input.d % vec2<u32>(32u))) | (firstLeadingBit(vec2<i32>(global2.x, countOneBits(var_0.a.x))) >> (firstLeadingBit(min(u_input.d, vec2<u32>(u_input.d.x, u_input.d.x))) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 1u), vec4<u32>(8297u, u_input.d.x, u_input.d.x, u_input.d.x)), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.d.x, u_input.d.x), 17025u, ~u_input.d.x, ~u_input.d.x), _wgslsmith_add_vec4_u32(abs(vec4<u32>(4294967295u, 1u, 13765u, u_input.d.x)), min(vec4<u32>(62371u, 4294967295u, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 0u))))), _wgslsmith_dot_vec2_u32(~u_input.d, u_input.d));
    return -(~vec2<i32>(_wgslsmith_mod_i32(1i, 1i), firstLeadingBit(_wgslsmith_clamp_i32(global2.x, var_0.c, u_input.b))));
}

fn func_2() -> i32 {
    let var_0 = -673f;
    var var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(~(-68555i), global2.x & global2.x) ^ ~_wgslsmith_sub_vec2_i32(vec2<i32>(1i, global2.x), vec2<i32>(4104i, u_input.c)), func_3()), global2.x ^ 15054i);
    global2 = _wgslsmith_clamp_vec2_i32(select(u_input.a.xy, ~u_input.a.xx, select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true))), vec2<i32>(select(min(var_1.x, 0i), 0i, true), firstLeadingBit(-56348i)), u_input.a.wy);
    global0 = array<vec2<f32>, 6>();
    let var_2 = -_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(global2.x, 2147483647i) ^ firstLeadingBit(vec2<i32>(u_input.c, global2.x)), ~vec2<i32>(-1i, u_input.c) & -vec2<i32>(19110i, u_input.a.x)), vec2<i32>(_wgslsmith_mult_i32(firstLeadingBit(0i), ~var_1.x), global2.x));
    return ~(func_3().x << (~_wgslsmith_add_u32(14766u, u_input.d.x) % 32u)) << (~_wgslsmith_add_u32(u_input.d.x & u_input.d.x, countOneBits(_wgslsmith_clamp_u32(u_input.d.x, 61904u, u_input.d.x))) % 32u);
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> vec2<bool> {
    let var_0 = Struct_1(~_wgslsmith_mod_vec2_i32(u_input.a.zw, vec2<i32>(arg_0.c.d, arg_0.a.c)) & ~vec2<i32>(-u_input.a.x, firstLeadingBit(u_input.a.x)), -func_2(), -2147483647i, _wgslsmith_dot_vec3_i32(u_input.a.www, vec3<i32>(1i, func_2(), global2.x)));
    var var_1 = Struct_2(arg_0.a, _wgslsmith_f_op_vec3_f32(arg_0.b - arg_0.b), var_0);
    var_1 = arg_0;
    let var_2 = Struct_3(vec3<u32>(_wgslsmith_div_u32(~u_input.d.x, 4294967295u), u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(33421u, 34082u, 0u, u_input.d.x) >> (vec4<u32>(0u, 4099u, 23975u, u_input.d.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, 25971u), vec4<u32>(u_input.d.x, 86880u, u_input.d.x, u_input.d.x)))) << ((abs(~vec3<u32>(1u, 49322u, u_input.d.x)) >> (max(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 0u), vec3<u32>(u_input.d.x, 0u, 3537u), vec3<u32>(1u, 4294967295u, 70055u)), _wgslsmith_add_vec3_u32(vec3<u32>(2612u, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x))) % vec3<u32>(32u))) % vec3<u32>(32u)), !select(!select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, false), all(vec3<bool>(true, true, true))), arg_0);
    global2 = max(arg_0.a.a, vec2<i32>(-2147483647i, 1i << (var_2.a.x % 32u)));
    return vec2<bool>(!var_2.b.x, var_2.b.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3) -> vec4<f32> {
    global0 = array<vec2<f32>, 6>();
    global2 = firstLeadingBit(firstTrailingBit(vec2<i32>(~2147483647i & u_input.b, ~u_input.c)));
    let var_0 = ~(~reverseBits(vec4<u32>(max(arg_1.a.x, 4294967295u), abs(99991u), _wgslsmith_mult_u32(arg_1.a.x, u_input.d.x), 0u)));
    let var_1 = Struct_4(arg_1.c, arg_0.x, arg_1.c);
    var var_2 = arg_1.a.x;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-607f, arg_0.x, 619f, 641f) * vec4<f32>(var_1.b, -333f, -1502f, -574f))), vec4<f32>(_wgslsmith_f_op_f32(681f * _wgslsmith_f_op_f32(arg_1.c.b.x * arg_0.x)), -663f, var_1.b, _wgslsmith_f_op_f32(-var_1.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(global0[_wgslsmith_index_u32(u_input.d.x, 6u)], Struct_3((vec3<u32>(12683u, 9948u, 9199u) ^ vec3<u32>(u_input.d.x, 22744u, u_input.d.x)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.d.x), vec3<u32>(u_input.d.x, u_input.d.x, 0u)), func_1(Struct_2(Struct_1(vec2<i32>(u_input.b, 32358i), global2.x, global2.x, 1i), vec3<f32>(406f, -1207f, -1898f), Struct_1(u_input.a.xw, 20887i, global2.x, u_input.b)), _wgslsmith_f_op_f32(413f * 107f)), Struct_2(Struct_1(u_input.a.xx, -30867i, -36892i, u_input.b), vec3<f32>(-214f, 1319f, -1198f), Struct_1(u_input.a.xy, -1i, -1i, global2.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(196f, 495f)), _wgslsmith_f_op_f32(min(294f, -666f)), 1000f, _wgslsmith_f_op_f32(sign(-849f)))));
    let var_1 = true;
    var var_2 = select(!(!(!select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(var_1, var_1, var_1, var_1)))), !vec4<bool>(true, var_1, true, var_1), select(select(vec4<bool>(func_1(Struct_2(Struct_1(u_input.a.yw, 1i, u_input.c, u_input.a.x), var_0.ywz, Struct_1(vec2<i32>(-1i, 0i), u_input.c, global2.x, -2147483647i)), -729f).x, var_1, true, all(vec3<bool>(var_1, var_1, false))), select(!vec4<bool>(false, false, var_1, true), vec4<bool>(false, var_1, var_1, var_1), any(vec4<bool>(false, false, true, var_1))), false), vec4<bool>(true, false, !any(vec2<bool>(var_1, false)), true), true));
    var var_3 = var_2.zwy;
    let var_4 = !var_2.wzw;
    let var_5 = Struct_4(Struct_2(Struct_1(~firstTrailingBit(u_input.a.xy), -2147483647i, select(-21664i, global2.x, true) >> (u_input.d.x % 32u), global2.x | -36679i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.x, 740f)) * _wgslsmith_div_vec3_f32(var_0.xxy, vec3<f32>(var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, -1872f, -566f), var_0.zyx))))), Struct_1(vec2<i32>(-1i) * -u_input.a.yz, abs(0i ^ global2.x), 54182i & u_input.c, ~u_input.b)), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x))), Struct_2(Struct_1(vec2<i32>(-16375i, ~global2.x), countOneBits(~u_input.b), u_input.a.x, 41729i), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.xxy * vec3<f32>(1091f, 157f, 1553f)))), Struct_1(-vec2<i32>(36869i, global2.x), func_2(), 0i, global2.x)));
    let var_6 = Struct_4(var_5.c, var_5.b, Struct_2(Struct_1(~(~vec2<i32>(-39833i, u_input.b)), 0i, 9363i, _wgslsmith_mult_i32(var_5.a.c.b, 29653i) & (i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec3_f32(var_0.xwx - _wgslsmith_f_op_vec3_f32(-var_5.a.b)), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x) >> (~u_input.d % vec2<u32>(32u)), -u_input.a.x << (1u % 32u), -1271i, -55381i)));
    let var_7 = 24493u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(var_0)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(514f, -335f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-var_6.a.b.x), _wgslsmith_f_op_f32(ceil(-808f))))), var_4.yx)), ~(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(var_7, u_input.d.x)) << (_wgslsmith_mod_u32(50820u, var_7) % 32u)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1431f, -700f)))), 787f, _wgslsmith_f_op_f32(trunc(1369f))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-453f - -832f))), vec3<u32>(~(_wgslsmith_add_u32(54764u, 45171u) & (var_7 >> (4294967295u % 32u))), var_7, ~var_7));
}

