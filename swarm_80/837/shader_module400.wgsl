struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: i32 = 33587i;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 948f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(-1650f)), _wgslsmith_f_op_f32(1464f * 100f), global0.x))));
    let var_0 = arg_0.b.x;
    return _wgslsmith_dot_vec2_i32(vec2<i32>(min(arg_1.a.a.c.x, firstLeadingBit(-arg_0.a.a)), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(arg_1.a.a.b, arg_1.a.a.c.x) & arg_1.a.a.c.xx), min(-arg_0.a.c.xz, vec2<i32>(-8835i, arg_1.a.a.c.x)))), arg_0.a.c.xz);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_2) -> i32 {
    let var_0 = arg_3;
    return ~arg_0.x;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(~3453i, u_input.b, vec4<i32>(reverseBits(~u_input.b), func_4(-vec3<i32>(-2147483647i, u_input.b, u_input.a), Struct_1(func_3(Struct_2(Struct_1(-11800i, u_input.a, vec4<i32>(4759i, u_input.b, -69970i, u_input.a), vec3<u32>(u_input.e, 4294967295u, 64555u)), vec3<bool>(true, false, false)), Struct_3(Struct_2(Struct_1(u_input.a, 0i, vec4<i32>(1i, -33429i, 0i, u_input.b), vec3<u32>(u_input.c, 55252u, 37643u)), vec3<bool>(false, false, true)))), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b), vec2<i32>(2147483647i, u_input.a)), vec4<i32>(u_input.a, -1i, 1i, u_input.a) << (u_input.d % vec4<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, 50174u, u_input.c), vec3<u32>(u_input.d.x, 82003u, 28980u), u_input.d.xxx)), -(vec3<i32>(-24514i, -10988i, u_input.b) >> (u_input.d.xwx % vec3<u32>(32u))), Struct_2(Struct_1(0i, u_input.b, vec4<i32>(u_input.b, -33652i, u_input.a, 60530i), vec3<u32>(u_input.e, u_input.d.x, 44259u)), vec3<bool>(true, true, true))), ~(_wgslsmith_div_i32(33767i, -5042i) | _wgslsmith_div_i32(-22312i, u_input.a)), ~(firstTrailingBit(7730i) & u_input.a)), ~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.d.zyx, firstLeadingBit(vec3<u32>(1u, u_input.d.x, 27795u))), vec3<u32>(~27286u, ~1u, 85909u)));
    let var_1 = true;
    var_0 = Struct_1(_wgslsmith_div_i32(_wgslsmith_div_i32(0i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b, u_input.a, -25524i), abs(vec4<i32>(u_input.a, 2147483647i, 2147483647i, u_input.a)))) & ~(~_wgslsmith_mult_i32(0i, var_0.b)), 23971i, firstTrailingBit(-vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.c.yy, vec2<i32>(u_input.b, u_input.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 30753i), vec2<i32>(u_input.b, -2147483647i)), u_input.a, var_0.a)), _wgslsmith_sub_vec3_u32(var_0.d, var_0.d | _wgslsmith_mult_vec3_u32(u_input.d.zyx, select(var_0.d, u_input.d.wyx, vec3<bool>(false, var_1, var_1)))));
    var_0 = Struct_1(-11427i, abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.a, 1i, var_0.c.x), var_0.c), _wgslsmith_sub_i32(u_input.a, -45463i)) >> (~u_input.c % 32u)), vec4<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(-23385i, u_input.b, -60448i) ^ -41168i), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-10244i, -21249i, 12928i), ~vec3<i32>(u_input.b, u_input.b, var_0.c.x)), _wgslsmith_dot_vec4_i32(reverseBits(var_0.c), ~vec4<i32>(-2147483647i, 1i, 0i, -2147483647i))), _wgslsmith_div_i32(func_4(-vec3<i32>(-76850i, -7312i, 58713i), Struct_1(-11048i, u_input.b, vec4<i32>(-29774i, -23790i, 2147483647i, var_0.c.x), var_0.d), ~vec3<i32>(17492i, 1i, var_0.c.x), Struct_2(Struct_1(u_input.a, u_input.a, vec4<i32>(u_input.a, 40814i, -16106i, 1i), vec3<u32>(var_0.d.x, 4294967295u, 12050u)), vec3<bool>(false, false, var_1))), 2147483647i), var_0.c.x), min(abs(_wgslsmith_sub_vec3_u32(select(var_0.d, u_input.d.zxz, vec3<bool>(true, var_1, false)), vec3<u32>(48493u, var_0.d.x, 1u))), vec3<u32>(countOneBits(var_0.d.x >> (u_input.d.x % 32u)), 0u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 1u), vec2<u32>(33403u, var_0.d.x)) % 32u), ~16693u | ~var_0.d.x)));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global0.x, -773f)), 513f));
    return Struct_2(Struct_1(select(~(-1i), -10076i, !(!var_1)), _wgslsmith_mod_i32(-20111i, -_wgslsmith_sub_i32(var_0.b, 1i)), _wgslsmith_sub_vec4_i32(firstLeadingBit(var_0.c << (u_input.d % vec4<u32>(32u))), vec4<i32>(u_input.b, _wgslsmith_mult_i32(-1i, 83512i), var_0.b, countOneBits(u_input.b))), reverseBits((u_input.d.yyx | var_0.d) & firstLeadingBit(var_0.d))), vec3<bool>(var_1, var_1, false));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1584f - global0.x) - _wgslsmith_f_op_f32(global0.x - global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1867f))))));
    global1 = 95383i;
    global1 = func_3(arg_0, Struct_3(func_2()));
    global1 = 2147483647i;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.zx)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(116f * 1462f), 222f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(460f, 1147f)))));
    return Struct_1(_wgslsmith_dot_vec2_i32(arg_0.a.c.ww, arg_0.a.c.yy), arg_0.a.c.x, _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a, func_3(arg_0, Struct_3(arg_0)), ~u_input.a, -1i), ~vec4<i32>(func_4(vec3<i32>(-1i, arg_0.a.a, -11649i), arg_0.a, vec3<i32>(34432i, arg_0.a.c.x, u_input.a), Struct_2(arg_0.a, arg_0.b)), 66720i ^ arg_0.a.a, arg_0.a.b, ~2147483647i)), vec3<u32>(~arg_0.a.d.x, select(1u, u_input.e, false) ^ _wgslsmith_add_u32(arg_0.a.d.x, u_input.d.x), 0u));
}

fn func_1(arg_0: vec2<u32>) -> vec2<bool> {
    var var_0 = func_5(func_2());
    var var_1 = min(arg_0.x, _wgslsmith_mod_u32(1u, ~arg_0.x));
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1148f, global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1961f, global0.x) - vec3<f32>(global0.x, -1947f, 446f)) * vec3<f32>(global0.x, global0.x, 1254f)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(2291f, -778f, 404f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-405f, global0.x, global0.x))))))));
    global1 = var_0.a;
    let var_2 = arg_0.x | firstTrailingBit(0u);
    return !select(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), u_input.a <= u_input.a), vec2<bool>(true, true), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(global0.x, -231f)), _wgslsmith_f_op_f32(select(1f, -700f, true))), vec2<f32>(global0.x, 1594f)));
    var var_1 = vec2<bool>(!(!(24188i <= u_input.b)), !all(func_1(u_input.d.zz)));
    let var_2 = 1u;
    var var_3 = vec4<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.d.xxy, u_input.d.wyw) >> (u_input.d.xwz % vec3<u32>(32u)), min(vec3<u32>(u_input.c, 2396u, 0u), vec3<u32>(var_2, u_input.d.x, 0u)) & select(u_input.d.wwz, u_input.d.wwy, vec3<bool>(true, false, var_1.x))), 4294967295u, firstLeadingBit(var_2), ~1u);
    var var_4 = var_0.x;
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, global0.x, global0.x, 1086f), vec4<f32>(global0.x, -872f, var_0.x, 857f), vec4<bool>(var_1.x, false, var_1.x, var_1.x))) + vec4<f32>(var_0.x, -1551f, 300f, var_0.x))))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2191f, var_0.x, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_0.x))))));
    var_3 = abs(~select(~vec4<u32>(u_input.c, 1u, var_2, var_2), u_input.d & u_input.d, var_1.x & true)) << (vec4<u32>(~var_2, 0u, 21322u, ~_wgslsmith_div_u32(~var_3.x, var_2)) % vec4<u32>(32u));
    let var_6 = func_2().b;
    var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -278f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - -1217f), 911f)), -770f))), _wgslsmith_f_op_f32(ceil(410f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1506f))), u_input.b, u_input.a, u_input.b);
}

