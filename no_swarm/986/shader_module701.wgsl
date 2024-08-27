struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(0u, 43818u, 1u, 43996u, 1u, 64123u, 1u, 0u, 53731u, 1u, 4294967295u, 0u, 4978u, 13893u);

var<private> global1: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(2660u, 1u, 50220u, 1u), vec4<u32>(55486u, 4294967295u, 80171u, 13187u), vec4<u32>(11061u, 60686u, 0u, 1u), vec4<u32>(0u, 4294967295u, 426u, 17361u), vec4<u32>(0u, 1u, 0u, 0u), vec4<u32>(10574u, 99573u, 64870u, 0u), vec4<u32>(27223u, 15694u, 1u, 1u), vec4<u32>(1u, 1u, 25514u, 5218u), vec4<u32>(54232u, 1u, 114889u, 4294967295u), vec4<u32>(50099u, 0u, 0u, 21443u), vec4<u32>(0u, 31748u, 91026u, 0u), vec4<u32>(53240u, 0u, 12853u, 26933u));

var<private> global2: i32;

var<private> global3: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    global3 = array<vec2<bool>, 12>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1230f, 1000f, 1331f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-204f, -1956f, -145f)))))), u_input.a, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a, u_input.a), -14005i), firstLeadingBit(u_input.b), 70563u);
    var var_1 = u_input.b.x;
    var var_2 = var_0.d.yz;
    let var_3 = Struct_2(vec3<bool>(!any(vec3<bool>(true, false, false)), all(global3[_wgslsmith_index_u32(~1u, 12u)]) || (-13226i <= ~var_0.b), true), Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true))), 759f, ~(~vec2<u32>(global0[_wgslsmith_index_u32(0u, 14u)], 17602u) & (var_0.d.xx << (var_0.d.zx % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a - var_0.a) - var_0.a)), _wgslsmith_mod_i32(-2147483647i, u_input.a), var_0.d.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-171f)), -640f)) + _wgslsmith_f_op_vec2_f32(sign(var_0.a.zz))));
    return max(1u >> (u_input.b.x % 32u), _wgslsmith_dot_vec3_u32(select(u_input.b, _wgslsmith_div_vec3_u32(var_0.d, u_input.b), true), ~countOneBits(vec3<u32>(var_0.d.x, 4294967295u, var_3.b.c.x)))) > 0u;
}

fn func_2() -> i32 {
    var var_0 = !(!func_3());
    global2 = -(~u_input.a);
    global1 = array<vec4<u32>, 12>();
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.a), -vec2<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a, u_input.a)), ~vec2<i32>(-62629i, u_input.a)), u_input.a));
    let var_2 = Struct_1(select(vec4<bool>(true | func_3(), true, true && (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)] < global0[_wgslsmith_index_u32(840u, 14u)]), true), vec4<bool>(true, all(vec2<bool>(true, true)), true, all(vec3<bool>(true, true, false))), any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-295f, 420f)) - _wgslsmith_f_op_f32(1124f + 616f)) + 1f), countOneBits(reverseBits(vec2<u32>(firstTrailingBit(18800u), _wgslsmith_mult_u32(u_input.b.x, 13581u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(600f, 392f, -493f), vec3<f32>(-1000f, -113f, 1173f))))))));
    return _wgslsmith_sub_i32(2147483647i, var_1.x);
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: i32) -> Struct_2 {
    global2 = ~arg_2.c;
    let var_0 = Struct_1(vec4<bool>(true == any(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(arg_2.d.x, 14u)], u_input.b.x), 12u)]), !(any(vec4<bool>(false, true, false, false)) != true), -2147483647i > firstTrailingBit(abs(0i)), (select(1i, arg_3, false) | arg_3) == ~(arg_2.c & -12885i)), 221f, abs(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 0u), ~vec2<u32>(u_input.b.x, arg_1.x))) & vec2<u32>(min(arg_1.x, 4294967295u) >> (max(arg_1.x, 33877u) % 32u), 4294967295u), _wgslsmith_div_vec3_f32(arg_2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_2.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 482f, -808f) - vec3<f32>(-436f, arg_2.a.x, arg_2.a.x))))));
    global0 = array<u32, 14>();
    var var_1 = !select(select(!(!var_0.a), vec4<bool>(true, any(var_0.a.xzz), !var_0.a.x, all(var_0.a.zy)), false), !select(vec4<bool>(var_0.a.x, false, false, var_0.a.x), !vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), true), false);
    let var_2 = vec4<i32>(~45096i, _wgslsmith_clamp_i32(u_input.a, 0i, -13779i), arg_3, 34045i);
    return Struct_2(var_1.yxz, var_0, (firstLeadingBit(-1i) & max(var_2.x, i32(-1i) * -2147483647i)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_2.b, u_input.a), vec3<i32>(_wgslsmith_dot_vec3_i32(var_2.zzx, vec3<i32>(u_input.a, 20316i, 26829i)), abs(arg_3), -u_input.a)), var_0.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(128f, arg_2.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 384f))))));
}

fn func_5(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_2) -> Struct_3 {
    let var_0 = vec3<i32>(abs(~func_4(_wgslsmith_f_op_f32(trunc(-711f)), firstLeadingBit(vec3<u32>(arg_2.b.c.x, 1u, arg_2.b.c.x)), Struct_3(vec3<f32>(arg_2.e.x, arg_2.b.d.x, -2006f), arg_1, -656i, u_input.b, global0[_wgslsmith_index_u32(arg_2.d, 14u)]), u_input.a).c), arg_2.c, u_input.a);
    var var_1 = arg_2.b;
    global3 = array<vec2<bool>, 12>();
    global3 = array<vec2<bool>, 12>();
    var var_2 = arg_2.b.a;
    return Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_2.b.d))) - vec3<f32>(-189f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_2.e.x)))))), var_0.x, _wgslsmith_dot_vec3_i32(countOneBits(abs(vec3<i32>(-2147483647i, u_input.a, arg_2.c))) >> (_wgslsmith_clamp_vec3_u32(reverseBits(u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(var_1.c.x, arg_2.d, global0[_wgslsmith_index_u32(29949u, 14u)]), u_input.b), u_input.b & u_input.b) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(arg_0 ^ min(vec3<i32>(u_input.a, -80441i, arg_2.c), arg_0), -var_0)), vec3<u32>(global0[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-729f))), u_input.b, Struct_3(arg_2.b.d, var_0.x, _wgslsmith_mod_i32(62314i, arg_1), _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(22619u, var_1.c.x, 97738u)), var_1.c.x | global0[_wgslsmith_index_u32(1u, 14u)]), -reverseBits(arg_0.x)).b.c.x, 14u)], _wgslsmith_mod_u32(_wgslsmith_mod_u32(93920u << (arg_2.d % 32u), var_1.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(6287u, var_1.c.x, 25087u, 103542u), global1[_wgslsmith_index_u32(1u, 12u)] ^ vec4<u32>(global0[_wgslsmith_index_u32(arg_2.b.c.x, 14u)], 4294967295u, 0u, 22444u))), ~u_input.b.x), u_input.b.x);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: f32) -> Struct_3 {
    global3 = array<vec2<bool>, 12>();
    let var_0 = firstLeadingBit(abs(~(~_wgslsmith_add_vec2_u32(arg_2, arg_2))));
    global1 = array<vec4<u32>, 12>();
    global3 = array<vec2<bool>, 12>();
    var var_1 = select(~(-vec4<i32>(2147483647i >> (0u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -14777i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), u_input.a, i32(-1i) * -22218i)), vec4<i32>(1i, 41180i, _wgslsmith_add_i32(-u_input.a, u_input.a), -2147483647i), select(arg_0.a, vec4<bool>(!arg_1, true, !arg_1, arg_1), true));
    return func_5(_wgslsmith_div_vec3_i32(var_1.wwz, var_1.zyw), u_input.a, func_4(_wgslsmith_f_op_f32(-arg_0.b), u_input.b, Struct_3(arg_0.d, func_2(), (16242i ^ u_input.a) & ~var_1.x, vec3<u32>(global0[_wgslsmith_index_u32(2798u, 14u)], _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 54706u, 33347u, 19548u), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.x, 14u)], 12u)]), global0[_wgslsmith_index_u32(countOneBits(4294967295u), 14u)]), 22037u), _wgslsmith_dot_vec3_i32(vec3<i32>(min(u_input.a, 15997i), -u_input.a, var_1.x), vec3<i32>(abs(0i), var_1.x & 0i, -1i))));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -301f), -1009f, _wgslsmith_f_op_f32(min(-1000f, -586f))))))));
    global0 = array<u32, 14>();
    var var_1 = arg_0.x;
    var var_2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_div_f32(-1600f, 271f)) * _wgslsmith_f_op_f32(-arg_2.a.x)), ~arg_2.d, func_5(firstLeadingBit(select(vec3<i32>(-38563i, -2147483647i, arg_2.b), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, arg_2.b, -41380i), vec3<i32>(arg_2.c, arg_2.b, 53634i)), vec3<bool>(false, arg_1.x, true))), _wgslsmith_add_i32(-_wgslsmith_sub_i32(arg_2.c, u_input.a), arg_2.b), func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-619f, 152f) - arg_2.a.x), ~(~u_input.b), arg_2, _wgslsmith_mod_i32(26474i, _wgslsmith_sub_i32(arg_2.c, 3881i)))), u_input.a).b;
    var var_3 = var_2.a.x;
    return func_4(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1157f + arg_2.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.a.x + -473f), arg_2.a.x, !var_2.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-2068f)))))), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b * arg_2.a.x) + var_0.x), ~arg_2.d, func_1(func_4(136f, vec3<u32>(arg_0.x, var_2.c.x, 53701u), Struct_3(vec3<f32>(-614f, var_0.x, -2016f), arg_2.b, 4759i, u_input.b, 0u), u_input.a).b, false, select(var_2.c, vec2<u32>(14089u, arg_0.x), arg_1.x), _wgslsmith_f_op_f32(-var_2.d.x)), arg_2.b).a.x)), vec3<u32>(min(select(~arg_0.x, 1806u, true), func_4(var_0.x, vec3<u32>(4294967295u, 0u, 0u), func_1(Struct_1(var_2.a, 1284f, vec2<u32>(arg_0.x, arg_0.x), var_2.d), false, u_input.b.yx, var_2.b), 14639i).d), 76066u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(27739u, 14u)], arg_2.d.x, 27647u)), arg_2.d), _wgslsmith_mult_vec3_u32(~vec3<u32>(var_2.c.x, 4294967295u, 0u), u_input.b))), func_5(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, arg_2.c), vec3<i32>(arg_2.b, arg_2.b, 29603i)), arg_2.c), vec3<i32>(49898i, 2147483647i, arg_2.c) | -vec3<i32>(0i, arg_2.b, 10161i)), -select(1i, arg_2.c, func_3()), func_4(-728f, u_input.b, Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_2.d.x)), -1i | arg_2.b, -arg_2.c, func_5(vec3<i32>(8181i, arg_2.c, -2147483647i), -19041i, Struct_2(var_2.a.wyw, Struct_1(var_2.a, -206f, vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], 31308u), var_0.xzw), u_input.a, 2909u, vec2<f32>(var_0.x, 429f))).d, _wgslsmith_div_u32(arg_2.e, 1u)), abs(-41884i & arg_2.b))), arg_2.c);
}

fn func_7(arg_0: Struct_2, arg_1: f32) -> Struct_3 {
    global1 = array<vec4<u32>, 12>();
    global3 = array<vec2<bool>, 12>();
    global2 = _wgslsmith_clamp_i32(1i, u_input.a, ~(i32(-1i) * -23237i));
    global3 = array<vec2<bool>, 12>();
    var var_0 = arg_0.b;
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -518f), var_0.b, -633f), 39987i, -u_input.a, vec3<u32>(reverseBits(4294967295u), firstTrailingBit(func_4(_wgslsmith_f_op_f32(-1513f - -852f), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.c.x, 52300u, arg_0.d), u_input.b), func_1(Struct_1(var_0.a, arg_1, vec2<u32>(u_input.b.x, 4294967295u), arg_0.b.d), false, var_0.c, -1000f), -arg_0.c).d), arg_0.d), max(max(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(68095u, global0[_wgslsmith_index_u32(arg_0.d, 14u)], 1u, 39236u), vec4<u32>(u_input.b.x, arg_0.d, global0[_wgslsmith_index_u32(arg_0.d, 14u)], 28685u)), global1[_wgslsmith_index_u32(~104530u, 12u)]), _wgslsmith_mod_u32(_wgslsmith_add_u32(0u, global0[_wgslsmith_index_u32(u_input.b.x, 14u)]), ~0u)), _wgslsmith_sub_u32(u_input.b.x, countOneBits(abs(var_0.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a;
    global0 = array<u32, 14>();
    let var_0 = func_7(func_6(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), u_input.b.x), 22254u, ~global0[_wgslsmith_index_u32(1u, 14u)], countOneBits(4294967295u)), vec2<bool>(true, true), func_1(Struct_1(vec4<bool>(true, false, true, false), _wgslsmith_div_f32(879f, 373f), vec2<u32>(u_input.b.x, u_input.b.x) ^ vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 14u)]), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1095f, 468f, 288f)))), true, u_input.b.zy, _wgslsmith_f_op_f32(-825f + 1256f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(Struct_1(vec4<bool>(true, false, true, false), 381f, u_input.b.yz, vec3<f32>(-287f, 1077f, 1128f)), true, u_input.b.zz, 809f).a.x)) * _wgslsmith_f_op_f32(1506f - 359f)));
    global1 = array<vec4<u32>, 12>();
    let var_1 = Struct_2(vec3<bool>(any(vec3<bool>(u_input.a < var_0.b, true, true)), !func_3(), true), func_4(_wgslsmith_f_op_f32(f32(-1f) * -510f), vec3<u32>(_wgslsmith_add_u32(var_0.e, var_0.e), 26897u, ~u_input.b.x) >> (~(vec3<u32>(64072u, u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)]) ^ u_input.b) % vec3<u32>(32u)), func_1(func_6(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], func_6(vec4<u32>(var_0.e, u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 14u)], 12927u), vec2<bool>(true, true), Struct_3(var_0.a, -21608i, -63980i, vec3<u32>(38296u, 0u, u_input.b.x), 4000u)).a.yx, Struct_3(var_0.a, var_0.b, 11077i, vec3<u32>(4294967295u, var_0.e, global0[_wgslsmith_index_u32(32550u, 14u)]), var_0.e)).b, true && func_6(vec4<u32>(u_input.b.x, 152865u, var_0.e, var_0.e), vec2<bool>(true, false), var_0).a.x, u_input.b.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(919f, 1299f, true)))), var_0.b).b, _wgslsmith_sub_i32(u_input.a, (u_input.a << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 65585u, var_0.e), u_input.b) % 32u)) >> (abs(~50869u) % 32u)), 36920u, var_0.a.yz);
    let var_2 = -39315i;
    global3 = array<vec2<bool>, 12>();
    var var_3 = !vec3<bool>(all(select(vec3<bool>(var_1.b.a.x, true, false), var_1.b.a.xzx, !vec3<bool>(false, var_1.b.a.x, var_1.b.a.x))), var_0.d.x != 0u, (-1021f != var_0.a.x) | var_1.a.x);
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(222f, _wgslsmith_f_op_f32(trunc(var_1.b.b)))), _wgslsmith_f_op_f32(-var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~u_input.b.x, var_0.d.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_1.b.c, vec2<u32>(67243u, 4294967295u)), ~var_0.d.x)), ~var_0.e), -72705i, 27026i);
}

