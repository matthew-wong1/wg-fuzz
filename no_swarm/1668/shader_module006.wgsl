struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(1177f, Struct_2(vec3<u32>(1u, 1u, 4294967295u), Struct_1(vec4<i32>(-56937i, -637i, -39943i, -49794i)), vec4<bool>(true, false, true, true), vec3<u32>(53699u, 1u, 1u)), vec2<u32>(25992u, 42050u)), Struct_4(-971f, Struct_2(vec3<u32>(2614u, 1u, 4294967295u), Struct_1(vec4<i32>(0i, 1i, 26206i, -41173i)), vec4<bool>(false, false, false, true), vec3<u32>(1u, 4294967295u, 9931u)), vec2<u32>(31326u, 23299u)), Struct_4(-392f, Struct_2(vec3<u32>(0u, 0u, 30717u), Struct_1(vec4<i32>(-39140i, -44386i, -43138i, 1i)), vec4<bool>(true, true, true, false), vec3<u32>(25797u, 17338u, 0u)), vec2<u32>(36083u, 42797u)), Struct_4(-543f, Struct_2(vec3<u32>(4895u, 0u, 1u), Struct_1(vec4<i32>(56904i, 0i, 1i, 2147483647i)), vec4<bool>(false, true, false, false), vec3<u32>(3721u, 1u, 51240u)), vec2<u32>(4294967295u, 4294967295u)), Struct_4(1385f, Struct_2(vec3<u32>(72490u, 35045u, 17270u), Struct_1(vec4<i32>(-11886i, -12663i, 10446i, 7467i)), vec4<bool>(true, true, false, true), vec3<u32>(55277u, 4294967295u, 34041u)), vec2<u32>(1u, 13765u)), Struct_4(-844f, Struct_2(vec3<u32>(0u, 74674u, 0u), Struct_1(vec4<i32>(i32(-2147483648), -28858i, 0i, 4426i)), vec4<bool>(false, true, true, true), vec3<u32>(20719u, 38509u, 35925u)), vec2<u32>(7662u, 1u)), Struct_4(-1000f, Struct_2(vec3<u32>(54961u, 9513u, 1u), Struct_1(vec4<i32>(-32528i, 1i, 0i, -1i)), vec4<bool>(false, false, false, false), vec3<u32>(10939u, 1595u, 167u)), vec2<u32>(4294967295u, 48084u)), Struct_4(-205f, Struct_2(vec3<u32>(33188u, 4294967295u, 4294967295u), Struct_1(vec4<i32>(0i, 9403i, -14435i, -36531i)), vec4<bool>(true, false, false, true), vec3<u32>(4294967295u, 3880u, 4463u)), vec2<u32>(29036u, 4294967295u)), Struct_4(-412f, Struct_2(vec3<u32>(40786u, 4294967295u, 41102u), Struct_1(vec4<i32>(-371i, 1i, 0i, 16368i)), vec4<bool>(true, true, false, true), vec3<u32>(11383u, 16950u, 38130u)), vec2<u32>(0u, 1u)), Struct_4(797f, Struct_2(vec3<u32>(4294967295u, 3409u, 22339u), Struct_1(vec4<i32>(63650i, -36591i, 41817i, 12306i)), vec4<bool>(true, true, false, true), vec3<u32>(3889u, 50520u, 4294967295u)), vec2<u32>(0u, 4294967295u)), Struct_4(-641f, Struct_2(vec3<u32>(63874u, 1273u, 7709u), Struct_1(vec4<i32>(-4258i, 17158i, 1i, -9441i)), vec4<bool>(true, false, true, false), vec3<u32>(21357u, 4294967295u, 66801u)), vec2<u32>(24455u, 0u)), Struct_4(-125f, Struct_2(vec3<u32>(1u, 4294967295u, 22883u), Struct_1(vec4<i32>(2147483647i, 917i, -66802i, 1i)), vec4<bool>(false, false, false, false), vec3<u32>(38016u, 0u, 0u)), vec2<u32>(1u, 1u)), Struct_4(-1079f, Struct_2(vec3<u32>(4294967295u, 101872u, 59508u), Struct_1(vec4<i32>(10206i, 1i, 1i, 2147483647i)), vec4<bool>(true, false, false, true), vec3<u32>(13025u, 7196u, 41825u)), vec2<u32>(0u, 4294967295u)), Struct_4(-1432f, Struct_2(vec3<u32>(4294967295u, 51430u, 1u), Struct_1(vec4<i32>(13437i, -8056i, 10697i, -16217i)), vec4<bool>(false, true, false, false), vec3<u32>(0u, 0u, 1u)), vec2<u32>(31403u, 4294967295u)), Struct_4(510f, Struct_2(vec3<u32>(27562u, 0u, 52747u), Struct_1(vec4<i32>(-191i, -1i, -45578i, 31594i)), vec4<bool>(false, true, false, false), vec3<u32>(0u, 52949u, 1u)), vec2<u32>(11076u, 26478u)), Struct_4(-1000f, Struct_2(vec3<u32>(17717u, 45404u, 4294967295u), Struct_1(vec4<i32>(-6079i, -36850i, -5340i, 0i)), vec4<bool>(false, true, true, true), vec3<u32>(44498u, 1224u, 1u)), vec2<u32>(43622u, 173u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<i32>) -> vec3<u32> {
    let var_0 = 2147483647i;
    global0 = array<Struct_4, 16>();
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-655f, arg_0.x), arg_0.x)), Struct_2(select(~arg_2.c.zzy, ~arg_2.c.wyw, any(vec3<bool>(true, arg_2.a.x, false))) | vec3<u32>(countOneBits(4294967295u), 14755u, arg_2.c.x), Struct_1(max(~vec4<i32>(-20772i, 0i, 26425i, arg_3.x), -u_input.b)), select(!(!vec4<bool>(arg_2.a.x, false, false, true)), !(!vec4<bool>(false, true, false, arg_2.b.x)), !all(vec2<bool>(true, arg_2.a.x))), arg_2.c.xxx), vec2<u32>(76271u, arg_2.c.x | ~(~u_input.d)));
    var_1 = Struct_4(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), Struct_2(~(~firstTrailingBit(vec3<u32>(0u, arg_2.c.x, 1u))), Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(38856i, -20390i, 0i), vec3<i32>(22209i, -6495i, u_input.b.x)), firstLeadingBit(arg_1.a.x), 94272i, reverseBits(14459i))), vec4<bool>(true || arg_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -762f) <= _wgslsmith_f_op_f32(-var_1.a), false, (4294967295u << (var_1.c.x % 32u)) > ~arg_2.c.x), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.c.x, u_input.c, arg_2.c.x) & vec3<u32>(arg_2.c.x, 4294967295u, 93504u), ~arg_2.c.wxz, ~vec3<u32>(29394u, var_1.c.x, 14514u)))), arg_2.c.xw & ~vec2<u32>(countOneBits(1u), 26991u));
    global0 = array<Struct_4, 16>();
    return _wgslsmith_add_vec3_u32(vec3<u32>(countOneBits(u_input.a), firstLeadingBit(~var_1.c.x & 1u), u_input.d), var_1.b.d);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = ~(~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d, 62841u, u_input.c), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(188f, arg_0, 1073f, -344f)), Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, 28022i)), Struct_3(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec4<u32>(u_input.a, 12057u, u_input.a, u_input.d)), ~vec2<i32>(1i, u_input.b.x))));
    global0 = array<Struct_4, 16>();
    var var_1 = !all(vec2<bool>(true, true));
    let var_2 = 35074u;
    var var_3 = true;
    return Struct_1(-u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: Struct_4) -> vec4<bool> {
    var var_0 = _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.c, arg_3.c.x, arg_3.b.d.x), vec4<u32>(arg_3.c.x, 106609u, arg_3.c.x, 0u), vec4<u32>(arg_3.b.a.x, 7164u, arg_3.b.a.x, u_input.a)), ~(~vec4<u32>(arg_3.b.a.x, arg_3.b.d.x, 4294967295u, u_input.d)))), firstLeadingBit(1u));
    var var_1 = Struct_3(arg_3.b.c.yzx, arg_3.b.c.zww, _wgslsmith_div_vec4_u32(~vec4<u32>(arg_3.c.x << (u_input.a % 32u), abs(1u), u_input.a, 56245u), vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_3.b.d.x, 26759u, arg_3.c.x, u_input.d), vec4<u32>(u_input.d, 4294967295u, arg_3.c.x, arg_3.c.x)), arg_3.b.d.x, ~countOneBits(arg_3.b.a.x))));
    global0 = array<Struct_4, 16>();
    let var_2 = arg_3;
    let var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1688f), _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(1055f - arg_3.a));
    return !select(vec4<bool>(!all(vec4<bool>(false, false, var_2.b.c.x, false)), all(vec3<bool>(var_2.b.c.x, true, false)), false, all(select(var_1.a, vec3<bool>(false, true, arg_3.b.c.x), var_2.b.c.x))), select(vec4<bool>(true, var_1.a.x, all(arg_3.b.c.zx), any(arg_3.b.c)), var_2.b.c, false), select(vec4<bool>(true, true, true, true), !arg_3.b.c, !vec4<bool>(true, false, arg_3.b.c.x, true)));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> Struct_1 {
    global0 = array<Struct_4, 16>();
    var var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x))) > 1891f, true, any(vec2<bool>(true, true)), true), vec4<bool>(false, !all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true))), true, select((arg_0.x < 520f) | select(false, false, true), true, true)), func_4(func_2(_wgslsmith_div_f32(-697f, 1091f)), -2147483647i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_0.x)))), global0[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(arg_1)), 16u)]));
    global0 = array<Struct_4, 16>();
    let var_1 = 990f;
    var var_2 = select(!var_0.yx, vec2<bool>(var_0.x || true, !var_0.x | all(vec2<bool>(false, var_0.x))), !vec2<bool>(var_0.x, false));
    return Struct_1(_wgslsmith_mod_vec4_i32(~max(vec4<i32>(-19913i, -1i, -2147483647i, u_input.b.x), vec4<i32>(-23057i, 2875i, 2147483647i, u_input.b.x)), vec4<i32>(func_2(arg_0.x).a.x, max(~1i, u_input.b.x), 808i, -1i)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-u_input.b.x, func_2(_wgslsmith_f_op_f32(-arg_2.a)).a.x, arg_3.b.a.x, func_1(vec3<f32>(_wgslsmith_f_op_f32(step(-577f, arg_2.a)), 1f, arg_2.a), countOneBits(~u_input.d)).a.x));
    var var_1 = !func_4(func_2(arg_2.a), u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.a))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1075f))))), global0[_wgslsmith_index_u32(~arg_1.c.x, 16u)]).xz;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_div_f32(-654f, 993f), _wgslsmith_f_op_f32(ceil(arg_2.a)), -1000f);
    var var_3 = 1125f;
    let var_4 = Struct_3(!vec3<bool>(arg_1.a.x, (var_0 <= var_0) | !arg_0.c.x, !(!arg_2.b.c.x)), arg_1.a, vec4<u32>(4294967295u, ~_wgslsmith_div_u32(u_input.c, 45799u), arg_0.d.x, ~36078u));
    return -func_2(arg_2.a).a;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec3<bool>) -> StorageBuffer {
    var var_0 = arg_2;
    global0 = array<Struct_4, 16>();
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -388f) + -1365f)))));
    var var_2 = 4294967295u;
    var_2 = ~39790u;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) + arg_0.ww))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, arg_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(964f, arg_0.x) - vec2<f32>(-148f, arg_0.x)), arg_3.zy))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_vec2_i32(-_wgslsmith_mod_vec2_i32(u_input.b.wz, u_input.b.zw), u_input.b.xz) >> (max(vec2<u32>(1u, 65011u), vec2<u32>(0u, _wgslsmith_mult_u32(4294967295u, u_input.a) | _wgslsmith_clamp_u32(0u, u_input.a, 59407u))) % vec2<u32>(32u));
    global0 = array<Struct_4, 16>();
    global0 = array<Struct_4, 16>();
    let var_1 = ~vec3<u32>(firstLeadingBit(u_input.c), ~(~4294967295u), 0u);
    var_0 = u_input.b.xy << (~(~vec2<u32>(u_input.c, 1u)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1971f, 411f, -569f, 595f), vec4<f32>(623f, 632f, 450f, -1571f)))))), Struct_1(func_5(Struct_2(abs(var_1), func_1(vec3<f32>(-520f, 1591f, 392f), 1u), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false), firstTrailingBit(var_1)), Struct_3(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec4<u32>(13155u, u_input.a, u_input.a, 0u) << (vec4<u32>(4294967295u, var_1.x, 0u, 32993u) % vec4<u32>(32u))), global0[_wgslsmith_index_u32(~u_input.d, 16u)], Struct_2(vec3<u32>(var_1.x, var_1.x, 1u), Struct_1(vec4<i32>(-2147483647i, -24774i, var_0.x, -1i)), vec4<bool>(false, false, true, false), abs(vec3<u32>(var_1.x, u_input.a, u_input.a))))), u_input.d, vec3<bool>(true, true, true));
}

