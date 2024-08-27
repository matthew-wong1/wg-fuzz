struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
    d: vec3<i32>,
    e: bool,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: f32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = Struct_5(global0.a);
    global1 = var_0.a;
    var var_1 = Struct_5(2000f);
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a)))));
    let var_3 = !vec2<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1610f), _wgslsmith_f_op_f32(global0.a + var_0.a))) >= _wgslsmith_f_op_f32(min(-481f, 100f)), false || (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 35966i), vec2<i32>(u_input.b.x, arg_0.x)) > abs(44088i)));
    return vec4<bool>(var_3.x, 4294967295u >= u_input.a, _wgslsmith_f_op_f32(165f * -1074f) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(173f)))), true);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: Struct_4) -> Struct_3 {
    return Struct_3(Struct_1(!vec4<bool>(!arg_0.x, false, !arg_0.x, arg_1.x)), vec4<bool>(true, true, true, true), Struct_2(_wgslsmith_f_op_vec2_f32(-arg_2), Struct_1(!arg_0), _wgslsmith_f_op_f32(1039f * 837f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.a)) - _wgslsmith_f_op_f32(ceil(293f))), arg_2), vec3<i32>(u_input.b.x, abs(_wgslsmith_mult_i32(-u_input.b.x, max(u_input.c.x, u_input.b.x))), _wgslsmith_dot_vec3_i32(firstLeadingBit(-u_input.c.yyx), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, 28920i, u_input.b.x)))), !(~abs(u_input.a) != ~abs(7580u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: i32) -> Struct_4 {
    var var_0 = ~_wgslsmith_dot_vec3_u32(~min(min(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(4294967295u, 1u, 2269u)), select(vec3<u32>(u_input.d.x, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u), arg_2.x)), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.d.x, 4294967295u), vec3<u32>(4294967295u, 3912u, u_input.a)), firstLeadingBit(vec3<u32>(u_input.a, u_input.d.x, 1u))), vec3<u32>(1u, firstLeadingBit(u_input.a), 1u)));
    return Struct_4(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(arg_1.d.x - arg_0.c.d.x), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(1958f + arg_0.c.d.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.x, global0.a, 619f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-351f, -535f, 1095f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-431f, arg_0.c.d.x, global0.a)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-182f, arg_1.d.x, global0.a)))))))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32) -> Struct_2 {
    let var_0 = 1u | countOneBits(select(u_input.a, ~(4294967295u ^ u_input.d.x), true));
    var var_1 = u_input.c.x;
    let var_2 = Struct_3(Struct_1(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, true, func_2(u_input.b).x), vec4<bool>(true, true, select(true, true, false), false))), !(!vec4<bool>(true, true, 2147483647i >= u_input.b.x, all(vec3<bool>(false, true, true)))), func_3(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), vec2<bool>(u_input.b.x == (u_input.b.x | 0i), false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1261f, arg_0.a.x) - vec2<f32>(arg_1.a.x, -1227f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a, global0.a), vec2<f32>(arg_2, global0.a), vec2<bool>(true, true)))) - arg_0.a.zy), Struct_4(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x + arg_1.a.x), _wgslsmith_div_f32(arg_1.a.x, -1577f), _wgslsmith_f_op_f32(-arg_2)))).c, _wgslsmith_clamp_vec3_i32(~((u_input.c.xxy & vec3<i32>(-1i, u_input.c.x, u_input.b.x)) ^ firstLeadingBit(vec3<i32>(-1i, u_input.c.x, u_input.c.x))), u_input.c.wwx, vec3<i32>(41567i, u_input.c.x, u_input.c.x)), any(vec3<bool>(!all(vec3<bool>(false, false, false)), true, any(vec4<bool>(true, true, true, true)))));
    let var_3 = vec2<bool>(func_3(vec4<bool>(select(var_2.a.a.x, true, var_2.b.x), !var_2.a.a.x, any(vec2<bool>(var_2.e, true)), var_2.a.a.x), func_3(vec4<bool>(!var_2.e, true, true, -1045f < var_2.c.a.x), !vec2<bool>(var_2.e, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_1.a.yx)), vec2<f32>(var_2.c.d.x, arg_1.a.x)), Struct_4(vec3<f32>(845f, -243f, global0.a))).a.a.yz, func_4(Struct_3(Struct_1(vec4<bool>(var_2.c.b.a.x, var_2.e, true, var_2.a.a.x)), !vec4<bool>(var_2.b.x, var_2.b.x, var_2.e, var_2.b.x), func_3(vec4<bool>(true, false, false, false), var_2.c.b.a.wz, var_2.c.a, Struct_4(arg_0.a)).c, ~vec3<i32>(1699i, u_input.b.x, 17454i), var_2.c.b.a.x), var_2.c, !(!vec2<bool>(true, var_2.a.a.x)), ~(-19627i)).a.yy, func_4(func_3(select(vec4<bool>(var_2.b.x, true, var_2.a.a.x, true), vec4<bool>(true, var_2.e, var_2.c.c, var_2.a.a.x), vec4<bool>(var_2.e, var_2.a.a.x, var_2.b.x, false)), !vec2<bool>(var_2.c.c, false), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.c.d.x, -612f))), arg_1), var_2.c, var_2.b.xx, u_input.c.x)).b.x, firstTrailingBit(var_0) != (~33563u | firstLeadingBit(var_0 | 1u)));
    let var_4 = Struct_3(Struct_1(!vec4<bool>(true, all(vec4<bool>(false, var_2.c.c, var_2.a.a.x, var_2.a.a.x)), true, !var_2.b.x)), !var_2.a.a, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.c.d - vec2<f32>(var_2.c.a.x, 179f))), Struct_1(var_2.b), var_2.e & true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_2.c.d), _wgslsmith_f_op_vec2_f32(arg_0.a.yy * vec2<f32>(-1000f, var_2.c.d.x)))) * var_2.c.a)), vec3<i32>(u_input.b.x, 0i, _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_add_i32(u_input.c.x, var_2.d.x)), min(-1i, 24527i))), false);
    return Struct_2(var_4.c.a, var_4.a, func_2(~vec2<i32>(u_input.b.x, ~2147483647i)).x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.x + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1809f))));
}

fn func_1() -> Struct_2 {
    return func_5(func_4(func_3(func_2(u_input.c.ww ^ u_input.c.wz), !select(vec2<bool>(true, false), vec2<bool>(false, true), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, 1000f)), Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, -917f, global0.a) + vec3<f32>(-1000f, global0.a, -2382f)))), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1730f, 663f), vec2<f32>(global0.a, global0.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, -1000f) - vec2<f32>(-248f, global0.a))), Struct_1(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, u_input.c.x), vec3<i32>(u_input.b.x, -8280i, u_input.b.x)) > ~u_input.c.x, vec2<f32>(-1000f, _wgslsmith_f_op_f32(max(-719f, 1291f)))), vec2<bool>(0u <= ~u_input.d.x, all(vec3<bool>(true, false, false))), countOneBits(17297i)), Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-755f, 480f, global0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(762f, _wgslsmith_f_op_f32(-global0.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a)) + _wgslsmith_f_op_f32(sign(global0.a))))));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_1) -> f32 {
    global1 = 180f;
    let var_0 = reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.a), _wgslsmith_sub_vec2_u32(vec2<u32>(71382u, 32821u), vec2<u32>(u_input.a, 0u))) ^ ~5725u, 4851u));
    var var_1 = ~(vec4<u32>(abs(125290u), ~u_input.a, var_0.x, countOneBits(min(5919u, 28923u))) >> ((vec4<u32>(1u, 1u, ~52369u, _wgslsmith_div_u32(0u, var_0.x)) ^ ~(~vec4<u32>(u_input.d.x, 24062u, u_input.d.x, 1u))) % vec4<u32>(32u)));
    var var_2 = abs(u_input.c);
    var var_3 = !(!vec2<bool>(arg_1.c, !(2147483647i <= u_input.b.x)));
    return _wgslsmith_div_f32(-433f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.a;
    global1 = -1100f;
    let var_0 = vec4<f32>(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-global0.a)), global0.a)), _wgslsmith_f_op_f32(abs(global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(vec2<bool>(true, true), func_1(), Struct_4(vec3<f32>(global0.a, 260f, global0.a)), Struct_1(vec4<bool>(true, true, true, false)))))));
    global0 = Struct_5(global0.a);
    global0 = Struct_5(1000f);
    global0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1909f)));
    global0 = Struct_5(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_5(Struct_4(vec3<f32>(global0.a, global0.a, 144f)), func_4(Struct_3(Struct_1(vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, false), Struct_2(var_0.wy, Struct_1(vec4<bool>(false, true, true, true)), true, var_0.wy), vec3<i32>(1i, -72676i, -1i), true), Struct_2(var_0.zy, Struct_1(vec4<bool>(true, false, false, false)), false, vec2<f32>(1153f, 123f)), vec2<bool>(true, false), u_input.b.x), -111f).a)), _wgslsmith_f_op_vec3_f32(exp2(var_0.yxz)), u_input.c.x);
}

