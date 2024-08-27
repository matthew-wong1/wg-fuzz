struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(90i, -8825i, vec2<bool>(true, false), Struct_1(true, 2147483647i, vec4<bool>(true, true, false, true)), 1u), Struct_3(0i, 1i, vec2<bool>(true, false), Struct_1(false, i32(-2147483648), vec4<bool>(false, true, true, true)), 4294967295u), Struct_3(61070i, i32(-2147483648), vec2<bool>(false, false), Struct_1(false, 5323i, vec4<bool>(false, true, true, false)), 1u), Struct_3(i32(-2147483648), -1i, vec2<bool>(false, false), Struct_1(true, -1i, vec4<bool>(false, false, false, false)), 71034u), Struct_3(2147483647i, -1i, vec2<bool>(false, true), Struct_1(false, i32(-2147483648), vec4<bool>(true, true, false, true)), 0u), Struct_3(76572i, 1i, vec2<bool>(false, false), Struct_1(true, -4936i, vec4<bool>(false, true, true, true)), 0u), Struct_3(10525i, -5584i, vec2<bool>(false, false), Struct_1(false, 0i, vec4<bool>(false, true, true, true)), 1u), Struct_3(2147483647i, 0i, vec2<bool>(false, true), Struct_1(true, i32(-2147483648), vec4<bool>(true, false, false, false)), 74758u), Struct_3(-8573i, 11341i, vec2<bool>(false, true), Struct_1(true, 2147483647i, vec4<bool>(false, true, false, false)), 1u), Struct_3(12922i, i32(-2147483648), vec2<bool>(true, false), Struct_1(true, 8965i, vec4<bool>(false, true, false, false)), 28767u), Struct_3(1i, 2147483647i, vec2<bool>(false, false), Struct_1(false, 40408i, vec4<bool>(false, true, true, false)), 1u), Struct_3(-34679i, 0i, vec2<bool>(false, false), Struct_1(false, 75965i, vec4<bool>(false, false, false, false)), 9077u), Struct_3(0i, 29508i, vec2<bool>(false, false), Struct_1(true, 19390i, vec4<bool>(true, true, false, true)), 16206u), Struct_3(-1i, -55315i, vec2<bool>(false, true), Struct_1(false, 2147483647i, vec4<bool>(true, true, false, false)), 41852u), Struct_3(i32(-2147483648), -23495i, vec2<bool>(true, true), Struct_1(false, 1i, vec4<bool>(false, true, true, false)), 1u), Struct_3(0i, 0i, vec2<bool>(false, false), Struct_1(true, -6524i, vec4<bool>(true, true, false, false)), 58280u), Struct_3(0i, i32(-2147483648), vec2<bool>(true, true), Struct_1(true, 1i, vec4<bool>(true, true, false, true)), 0u));

var<private> global1: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(15144i, i32(-2147483648), vec2<bool>(false, false), Struct_1(true, 46957i, vec4<bool>(false, false, false, false)), 38373u), Struct_3(11396i, -1202i, vec2<bool>(true, true), Struct_1(true, -29388i, vec4<bool>(true, false, false, true)), 1u), Struct_3(23319i, 5660i, vec2<bool>(false, false), Struct_1(false, 41429i, vec4<bool>(true, true, true, false)), 1u), Struct_3(11635i, 19909i, vec2<bool>(true, true), Struct_1(true, 2147483647i, vec4<bool>(true, true, false, false)), 0u), Struct_3(-15580i, 8316i, vec2<bool>(true, true), Struct_1(true, 15596i, vec4<bool>(true, true, true, true)), 1u), Struct_3(0i, -4552i, vec2<bool>(true, true), Struct_1(true, 20488i, vec4<bool>(true, false, false, false)), 85356u), Struct_3(-1i, -9803i, vec2<bool>(false, true), Struct_1(true, -43960i, vec4<bool>(true, false, false, true)), 4294967295u), Struct_3(-1i, -1i, vec2<bool>(false, true), Struct_1(false, 1i, vec4<bool>(false, false, false, false)), 17082u), Struct_3(-15790i, 2147483647i, vec2<bool>(false, true), Struct_1(true, i32(-2147483648), vec4<bool>(true, true, true, true)), 52596u), Struct_3(1i, -1i, vec2<bool>(false, true), Struct_1(true, 30298i, vec4<bool>(true, true, true, false)), 8264u), Struct_3(1i, -1459i, vec2<bool>(true, true), Struct_1(false, -1i, vec4<bool>(true, true, true, false)), 43525u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_dot_vec2_u32(~u_input.a.xy, u_input.c.zy);
    global0 = array<Struct_3, 17>();
    var var_2 = 1690f;
    let var_3 = _wgslsmith_f_op_f32(min(-281f, 1635f));
    return arg_0;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32, arg_3: vec4<i32>) -> f32 {
    let var_0 = -(select(select(vec2<i32>(arg_1.b, 0i), vec2<i32>(1i, arg_1.b), arg_0.a.c.zz) | vec2<i32>(-43174i, 70529i), select(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.d), vec2<i32>(16656i, -23262i)), vec2<i32>(arg_3.x, -1244i), select(arg_1.c.x, true, arg_0.a.a)), !(arg_1.d.c.x || arg_0.a.a)) ^ vec2<i32>(0i, select(-u_input.d, -1i, any(vec2<bool>(arg_1.d.a, false)))));
    var var_1 = ~(~vec2<u32>(arg_1.e, arg_1.e) >> (u_input.b.zx % vec2<u32>(32u))) & ~u_input.c.xz;
    let var_2 = arg_0.a;
    var_1 = _wgslsmith_sub_vec2_u32(u_input.a.yy, vec2<u32>(arg_1.e, var_1.x));
    let var_3 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-482f - _wgslsmith_f_op_f32(f32(-1f) * -618f)) - -901f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -525f))), arg_0.a.a)));
}

fn func_4(arg_0: vec3<bool>) -> vec3<i32> {
    global1 = array<Struct_3, 11>();
    return _wgslsmith_add_vec3_i32(vec3<i32>(-4291i, u_input.d, u_input.d), ~vec3<i32>(u_input.d & u_input.d, -17754i, reverseBits(2862i))) | -countOneBits(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, -4251i, -49440i), vec3<i32>(-75528i, 0i, -1i), vec3<i32>(3976i, -21060i, u_input.d)), ~vec3<i32>(u_input.d, -58756i, -7436i)));
}

fn func_1(arg_0: Struct_2) -> vec3<i32> {
    let var_0 = arg_0.a.a;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1323f, 834f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(869f)), _wgslsmith_div_f32(-1919f, _wgslsmith_f_op_f32(1096f - 1481f)))));
    global0 = array<Struct_3, 17>();
    let var_2 = Struct_2(func_2(arg_0.a, arg_0.a, var_0));
    let var_3 = func_4(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, 1108f) + _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(arg_0.a.c.x, var_2.a.b, var_2.a.c)), global0[_wgslsmith_index_u32(u_input.b.x, 17u)], var_2.a.b, vec4<i32>(3721i, u_input.d, var_2.a.b, arg_0.a.b)))) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -949f), var_1, any(vec2<bool>(false, var_0)))), any(var_2.a.c.wx), arg_0.a.a));
    return -_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(33466i, arg_0.a.b) ^ var_3.zx, -vec2<i32>(2147483647i, var_2.a.b)), ~(~59722i), 19872i), _wgslsmith_mod_vec3_i32(vec3<i32>(39869i, arg_0.a.b, 31507i) ^ _wgslsmith_div_vec3_i32(var_3, vec3<i32>(1i, arg_0.a.b, 0i)), ~vec3<i32>(arg_0.a.b, arg_0.a.b, -24722i)), ~(var_3 ^ _wgslsmith_add_vec3_i32(var_3, vec3<i32>(var_3.x, -64136i, arg_0.a.b))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec3<u32>) -> Struct_1 {
    global0 = array<Struct_3, 17>();
    var var_0 = arg_1.c;
    global1 = array<Struct_3, 11>();
    var var_1 = !(!func_2(func_2(arg_1.d, arg_1.d, true), func_2(func_2(arg_1.d, Struct_1(var_0.x, 2147483647i, arg_1.d.c), false), func_2(Struct_1(false, -1i, vec4<bool>(arg_1.c.x, true, false, true)), Struct_1(arg_1.c.x, 1i, vec4<bool>(true, var_0.x, arg_1.d.a, false)), var_0.x), any(vec3<bool>(false, true, arg_1.d.c.x))), any(vec3<bool>(arg_1.c.x, var_0.x, arg_1.d.c.x))).c);
    var var_2 = arg_1.e;
    return func_2(arg_1.d, func_2(func_2(arg_1.d, arg_1.d, var_0.x), func_2(arg_1.d, Struct_1(select(true, var_1.x, var_1.x), _wgslsmith_add_i32(27476i, arg_1.b), vec4<bool>(var_0.x, true, arg_1.d.a, arg_1.d.c.x)), var_0.x), var_1.x), !all(func_2(arg_1.d, Struct_1(var_0.x, -2147483647i, vec4<bool>(var_0.x, arg_1.d.a, true, arg_1.d.c.x)), u_input.d < arg_2.x).c));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> u32 {
    return ~(_wgslsmith_div_u32(~(~u_input.b.x), 46212u) | ~countOneBits(u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 11>();
    var var_0 = func_6(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), func_5(func_1(Struct_2(Struct_1(false, u_input.d, vec4<bool>(false, true, false, false)))), Struct_3(47913i, u_input.d, select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), func_2(func_2(Struct_1(true, -36338i, vec4<bool>(false, true, true, true)), Struct_1(false, 14671i, vec4<bool>(true, true, false, false)), true), func_2(Struct_1(true, u_input.d, vec4<bool>(false, true, false, true)), Struct_1(true, 2147483647i, vec4<bool>(false, true, true, true)), false), true), u_input.c.x ^ ~10377u), reverseBits(firstLeadingBit(-vec3<i32>(-2147483647i, u_input.d, u_input.d))), abs(~reverseBits(vec3<u32>(34992u, u_input.c.x, 4966u)))), (_wgslsmith_clamp_u32(u_input.a.x, ~4294967295u, ~875u) ^ u_input.a.x) << (u_input.b.x % 32u), ~vec2<u32>(34218u, min(12361u, u_input.c.x)));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 17u)];
    var_0 = u_input.a.x;
    var var_2 = select(reverseBits(~(~vec2<i32>(u_input.d, var_1.b)) ^ vec2<i32>(select(var_1.b, u_input.d, var_1.c.x), abs(var_1.b))), _wgslsmith_clamp_vec2_i32(firstTrailingBit(~countOneBits(vec2<i32>(var_1.b, var_1.b))), -(~vec2<i32>(var_1.a, -2147483647i) & ~vec2<i32>(u_input.d, 1i)), select(_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(12174i, 2147483647i)), vec2<i32>(u_input.d, -5605i) | vec2<i32>(var_1.a, -24295i)), _wgslsmith_sub_vec2_i32(-vec2<i32>(var_1.b, -2147483647i), ~vec2<i32>(u_input.d, 1i)), any(!vec3<bool>(var_1.c.x, true, false)))), !var_1.d.c.wz);
    var var_3 = ~u_input.d;
    var_1 = global0[_wgslsmith_index_u32(~0u, 17u)];
    var_1 = Struct_3((~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 62063i), vec3<i32>(u_input.d, var_1.b, -2147483647i)) ^ u_input.d) << ((u_input.a.x | _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, var_1.e, 4294967295u), ~u_input.b.wwy)) % 32u), select(-_wgslsmith_mult_i32(var_2.x, select(-2147483647i, -1i, true)), u_input.d, any(!var_1.d.c.xy)), var_1.c, func_2(func_2(Struct_1(!var_1.d.c.x, reverseBits(u_input.d), var_1.d.c), func_5(reverseBits(vec3<i32>(-1i, -26583i, var_2.x)), global0[_wgslsmith_index_u32(~var_1.e, 17u)], func_4(vec3<bool>(true, true, var_1.c.x)), vec3<u32>(u_input.c.x, var_1.e, u_input.a.x)), true), func_2(Struct_1(false, ~var_1.b, var_1.d.c), func_2(var_1.d, func_5(vec3<i32>(var_1.b, 7251i, var_1.d.b), global0[_wgslsmith_index_u32(u_input.b.x, 17u)], vec3<i32>(var_1.b, var_1.a, var_2.x), u_input.c), false), func_2(Struct_1(true, -1i, var_1.d.c), func_2(Struct_1(true, u_input.d, var_1.d.c), var_1.d, var_1.c.x), func_2(Struct_1(var_1.d.c.x, -55360i, var_1.d.c), Struct_1(false, 0i, var_1.d.c), var_1.c.x).c.x).a), true), 25778u);
    var var_4 = vec4<u32>(103219u & ((u_input.c.x >> (firstLeadingBit(u_input.a.x) % 32u)) >> (var_1.e % 32u)), ~u_input.c.x, u_input.c.x, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.yyx, ~vec3<i32>(var_1.d.b, abs(~var_1.d.b), -39218i), vec2<i32>(u_input.d, var_2.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(954f, -1118f) * vec2<f32>(216f, 632f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(412f, -970f), vec2<f32>(942f, -737f), true)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(821f, 458f) - vec2<f32>(-192f, -236f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-473f, -1228f)))))));
}

