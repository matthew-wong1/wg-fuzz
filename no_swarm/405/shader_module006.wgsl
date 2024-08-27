struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<f32> = vec2<f32>(337f, 1191f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = arg_3;
    global1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b)), global0.b, !(_wgslsmith_f_op_f32(-arg_3.a) <= _wgslsmith_f_op_f32(f32(-1f) * -807f))))));
    let var_1 = _wgslsmith_mod_i32(abs(countOneBits(-u_input.b)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.d.x, 36368i, 2147483647i), vec4<i32>(1i, u_input.b, u_input.b, u_input.d.x)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, -19721i, -2147483647i, 28827i), vec4<i32>(-62574i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.d.x, -2147483647i, u_input.d.x)), -vec4<i32>(24108i, -44743i, -12588i, -8520i) | (vec4<i32>(u_input.d.x, u_input.b, u_input.b, 48781i) & vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, -2147483647i)))) & 2147483647i;
    var var_2 = Struct_2((countOneBits(vec3<u32>(u_input.a, u_input.c.x, u_input.a) << (vec3<u32>(1u, 14826u, 34298u) % vec3<u32>(32u))) | ~u_input.c.xxy) >> (_wgslsmith_mod_vec3_u32(abs(vec3<u32>(4294967295u, 48117u, u_input.c.x)), arg_0.xzy >> (select(vec3<u32>(arg_0.x, u_input.a, 17269u), vec3<u32>(0u, global0.a.x, 50398u), vec3<bool>(true, arg_1.x, false)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-651f - global0.b.x))) - -1499f), -675f));
    global0 = Struct_2(vec3<u32>(u_input.c.x, ~(~(~2675u)), arg_0.x), _wgslsmith_f_op_vec2_f32(-var_2.b));
    return vec2<f32>(-430f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1290f)) - 314f));
}

fn func_2() -> Struct_1 {
    global1 = _wgslsmith_f_op_vec2_f32(func_3(vec4<u32>(u_input.c.x, min(~63581u, u_input.c.x), ~(~max(1u, u_input.a)), _wgslsmith_mult_u32(min(u_input.c.x, u_input.c.x), global0.a.x)), !vec2<bool>(u_input.c.x >= ~u_input.c.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(306f, _wgslsmith_f_op_f32(-global1.x)))) - global0.b.x), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -105f), true)));
    var var_0 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1105f * 606f), global1.x), global0.b.x), !any(vec2<bool>(true, false))), false);
    var var_1 = select(u_input.c, vec4<u32>(~(1u >> (_wgslsmith_mod_u32(31296u, global0.a.x) % 32u)), _wgslsmith_clamp_u32(66227u & u_input.c.x, ~global0.a.x & u_input.a, _wgslsmith_mult_u32(~global0.a.x, ~global0.a.x)), 4294967295u, global0.a.x), !vec4<bool>(true, var_0.b, true, !all(vec2<bool>(false, var_0.a.b))));
    var_1 = vec4<u32>(_wgslsmith_mod_u32(var_1.x, max(_wgslsmith_mod_u32(select(36868u, 68223u, var_0.b), u_input.a & 1u), 52298u)), ~(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global0.a.x, 0u, global0.a.x), ~var_1.x) | 1u), var_1.x, ~_wgslsmith_mult_u32(72957u, _wgslsmith_div_u32(~39612u, ~16815u)));
    var_1 = min(u_input.c, _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~u_input.c, u_input.c), ~(vec4<u32>(17655u, u_input.c.x, global0.a.x, 4294967295u) >> (u_input.c % vec4<u32>(32u))))) | (max(vec4<u32>(firstLeadingBit(21317u), 4294967295u, ~global0.a.x, ~0u), firstLeadingBit(u_input.c)) >> (vec4<u32>(0u, ~(~1u), reverseBits(var_1.x), _wgslsmith_sub_u32(var_1.x, firstLeadingBit(84103u))) % vec4<u32>(32u)));
    return var_0.a;
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = u_input.c.xy;
    var var_1 = _wgslsmith_dot_vec3_u32(~u_input.c.wzx, global0.a);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-706f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))), true);
    var var_3 = !select(!arg_1.yx, vec2<bool>(u_input.d.x < ~2147483647i, true), arg_3.b);
    let var_4 = Struct_3(arg_3, !(true && arg_0));
    return !vec4<bool>(!(arg_2 > 45447u) & arg_1.x, !func_2().b || var_4.a.b, false, false);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = func_4(arg_2.x, arg_2, _wgslsmith_sub_u32(62636u, u_input.a), func_2());
    global0 = Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global0.a.x, ~1u), _wgslsmith_sub_vec3_u32(abs(global0.a) >> (_wgslsmith_add_vec3_u32(u_input.c.zzw, arg_1.wzw) % vec3<u32>(32u)), ~global0.a)), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -285f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x + 1000f) * _wgslsmith_f_op_f32(global0.b.x * arg_3.x)), _wgslsmith_f_op_f32(min(-298f, -632f)))));
    global1 = vec2<f32>(-571f, _wgslsmith_f_op_f32(-305f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1000f)))))));
    let var_1 = func_2();
    var var_2 = Struct_3(var_1, arg_2.x);
    return Struct_1(_wgslsmith_f_op_f32(-global0.b.x), !arg_0.b);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    var var_0 = Struct_2(select(vec3<u32>(global0.a.x, ~u_input.c.x, _wgslsmith_add_u32(0u, 73754u)) >> (global0.a % vec3<u32>(32u)), vec3<u32>(firstLeadingBit(u_input.c.x) & 1u, 123479u, _wgslsmith_mod_u32(~u_input.a, 55680u ^ global0.a.x)), vec3<bool>(true, all(vec3<bool>(arg_2.b, arg_3, false)) && (arg_3 && arg_2.b), !arg_0.b)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 605f))));
    let var_1 = firstLeadingBit(vec2<u32>(~(~1u), _wgslsmith_dot_vec2_u32(~(~global0.a.zy), u_input.c.zy)));
    let var_2 = false;
    var_0 = Struct_2(abs(vec3<u32>(var_0.a.x, abs(4294967295u), global0.a.x)), vec2<f32>(var_0.b.x, func_2().a));
    let var_3 = func_1(Struct_1(_wgslsmith_f_op_f32(-604f - 201f), arg_3), vec4<u32>(u_input.c.x, ~u_input.a, max(var_0.a.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), global0.a.x)), global0.a.x), !vec3<bool>(false, arg_2.b, true), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2.a + global0.b.x), -1000f), vec2<f32>(-111f, -1059f)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1704f), func_2().a), global0.b)))).b;
    return Struct_2(min(_wgslsmith_div_vec3_u32(u_input.c.xzz, ~(~global0.a)), vec3<u32>(1u, ~(~global0.a.x), 77121u)), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.b.x, 863f)), global0.b.x))), true), _wgslsmith_f_op_f32(floor(-831f)), func_1(Struct_1(_wgslsmith_f_op_f32(-838f * _wgslsmith_f_op_f32(-global0.b.x)), false), vec4<u32>(~21702u, _wgslsmith_dot_vec3_u32(global0.a, vec3<u32>(1u, global0.a.x, global0.a.x)), firstTrailingBit(~0u), ~_wgslsmith_div_u32(18570u, u_input.a)), vec3<bool>((global0.b.x != 2314f) & all(vec2<bool>(true, true)), true, all(vec4<bool>(false, false, false, true))), vec2<f32>(global1.x, 883f)), u_input.d.x != -u_input.b);
    global0 = Struct_2(~vec3<u32>(0u, global0.a.x, ~15122u & ~global0.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b - global0.b), vec2<f32>(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_div_f32(-617f, global0.b.x))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global0.b * global0.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1681f, global0.b.x) * _wgslsmith_f_op_vec2_f32(global0.b * vec2<f32>(-426f, global0.b.x))), select(vec2<bool>(true, false), func_4(true, vec3<bool>(true, true, false), u_input.a, Struct_1(global1.x, true)).yz, false)))));
    let var_0 = u_input.c.x;
    global1 = vec2<f32>(290f, _wgslsmith_f_op_vec2_f32(func_3(vec4<u32>(~u_input.c.x, 66415u, max(~0u, max(44021u, 77292u)), firstLeadingBit(0u)), select(vec2<bool>(func_4(true, vec3<bool>(true, true, true), global0.a.x, Struct_1(global1.x, true)).x, func_1(Struct_1(global0.b.x, true), vec4<u32>(u_input.c.x, 51203u, u_input.c.x, global0.a.x), vec3<bool>(true, true, false), vec2<f32>(global1.x, global1.x)).b), select(vec2<bool>(true, false), vec2<bool>(false, true), all(vec2<bool>(true, true))), func_4(all(vec2<bool>(false, false)), vec3<bool>(true, true, true), _wgslsmith_clamp_u32(20996u, var_0, global0.a.x), func_1(Struct_1(570f, true), vec4<u32>(0u, u_input.c.x, global0.a.x, u_input.a), vec3<bool>(false, false, false), vec2<f32>(-1709f, 320f))).x), global0.b.x, Struct_1(_wgslsmith_f_op_f32(ceil(1000f)), true))).x);
    var var_1 = func_2();
    var var_2 = Struct_1(global1.x, global1.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(962f)) - _wgslsmith_f_op_f32(global1.x - -664f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_clamp_vec2_u32(global0.a.yy, global0.a.yx, vec2<u32>(~u_input.a, u_input.c.x)), u_input.c.x, u_input.d, ~_wgslsmith_add_u32(4294967295u, global0.a.x));
}

