struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: bool) -> u32 {
    let var_0 = 4471u;
    var var_1 = var_0;
    global0 = vec4<u32>(1u, max(_wgslsmith_add_u32(global0.x, global0.x), var_0), _wgslsmith_clamp_u32(min(67529u, 45501u), 18759u, _wgslsmith_mult_u32(abs(u_input.c ^ global0.x), 37629u)), _wgslsmith_mult_u32(1u, var_0 ^ 1u));
    var_1 = 1u;
    global0 = ~vec4<u32>(abs(213u), u_input.c, ~4294967295u | _wgslsmith_mult_u32(~u_input.c, ~25065u), 15882u);
    return var_0 & max(51690u, ~(4294967295u & ~global0.x));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    global0 = vec4<u32>(~global0.x, ~func_3(_wgslsmith_mult_u32(28274u, u_input.c), arg_1.c), ~1u, firstTrailingBit(_wgslsmith_dot_vec3_u32(global0.ywz, ~(~vec3<u32>(4294967295u, u_input.c, global0.x)))));
    global0 = select(vec4<u32>(max(33814u, max(_wgslsmith_mod_u32(u_input.c, 4294967295u), _wgslsmith_add_u32(u_input.c, u_input.c))), ~u_input.c, _wgslsmith_dot_vec2_u32(global0.yy, vec2<u32>(0u, u_input.c)), ~(~55970u)), countOneBits(vec4<u32>(~global0.x, ~u_input.c, 17516u, u_input.c)), arg_0.c.c);
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.x, 421f, arg_0.a.x)), arg_0.c.b.zzx)) * _wgslsmith_f_op_vec3_f32(-arg_0.c.b.yzw)))), !arg_1.c || all(vec3<bool>(true, true, arg_2.c)), Struct_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(3850i, arg_1.a), vec2<i32>(73159i ^ arg_0.c.a, _wgslsmith_mult_i32(arg_0.c.a, 1i))), arg_1.b, all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, arg_2.c, arg_1.c), select(vec4<bool>(arg_1.c, arg_0.c.c, arg_2.c, arg_2.c), vec4<bool>(arg_1.c, true, arg_2.c, arg_2.c), vec4<bool>(false, true, arg_0.b, true)))), _wgslsmith_f_op_vec2_f32(ceil(arg_0.c.d))));
    global0 = ~reverseBits(~(~(~vec4<u32>(0u, 100145u, 12727u, global0.x))));
    var_0 = arg_0;
    return vec2<u32>(~4294967295u, ~u_input.c);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_2 {
    global0 = max(~(min(vec4<u32>(u_input.c, 4294967295u, u_input.c, arg_0.x), vec4<u32>(1u, 15235u, 37999u, 0u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 49860u, 16864u, u_input.c), vec4<u32>(1u, 0u, arg_0.x, 16298u))), abs(~countOneBits(vec4<u32>(7465u, arg_0.x, arg_0.x, 0u)))) ^ vec4<u32>(13816u, ~u_input.c, u_input.c, max(_wgslsmith_clamp_u32(global0.x, reverseBits(global0.x), ~arg_0.x), global0.x));
    let var_0 = -1163f;
    var var_1 = Struct_1(firstLeadingBit(u_input.b.x), vec4<f32>(1559f, var_0, -231f, _wgslsmith_f_op_f32(round(-662f))), true, _wgslsmith_f_op_vec2_f32(arg_1.d - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-178f))), var_0)));
    var_1 = arg_1;
    let var_2 = vec3<bool>(true, all(vec3<bool>(any(vec2<bool>(true, true)), arg_2.x, all(vec3<bool>(var_1.c, false, arg_1.c)))), var_1.c);
    return Struct_2(vec3<f32>(arg_1.b.x, var_1.b.x, -1000f), false, arg_1);
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1) -> f32 {
    global0 = ~(~min(~select(vec4<u32>(u_input.c, global0.x, global0.x, 0u), vec4<u32>(global0.x, 47086u, 0u, global0.x), vec4<bool>(false, arg_2.c, true, true)), ~abs(vec4<u32>(4294967295u, u_input.c, arg_0.x, u_input.c))));
    let var_0 = func_4(func_2(Struct_2(arg_2.b.xxy, !arg_2.c, Struct_1(arg_2.a, vec4<f32>(1000f, -1167f, arg_2.b.x, arg_2.d.x), arg_2.c, arg_2.b.xx)), Struct_1(max(u_input.b.x, -23587i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(406f, -212f, arg_2.d.x, 2860f)), arg_2.c, arg_2.d), Struct_1(u_input.a >> (0u % 32u), arg_2.b, true, _wgslsmith_f_op_vec2_f32(arg_2.d - vec2<f32>(arg_2.b.x, arg_2.d.x)))) ^ ~(~_wgslsmith_mod_vec2_u32(arg_0, vec2<u32>(1u, arg_0.x))), arg_2, select(!vec2<bool>(all(vec3<bool>(true, arg_2.c, arg_2.c)), all(vec4<bool>(true, arg_2.c, true, true))), select(select(!vec2<bool>(false, arg_2.c), vec2<bool>(true, arg_2.c), !vec2<bool>(arg_2.c, arg_2.c)), vec2<bool>(true, any(vec4<bool>(true, true, false, arg_2.c))), !arg_2.c), vec2<bool>(arg_2.c, any(!vec2<bool>(arg_2.c, arg_2.c)))));
    var var_1 = func_4(firstLeadingBit(vec2<u32>(1u, arg_1)) >> (((~arg_0 >> (_wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, u_input.c), arg_0) % vec2<u32>(32u))) | global0.xx) % vec2<u32>(32u)), func_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(80777u, arg_1), _wgslsmith_mod_vec2_u32(select(vec2<u32>(arg_1, arg_0.x), vec2<u32>(u_input.c, 4294967295u), vec2<bool>(true, true)), ~arg_0), ~vec2<u32>(4294967295u, global0.x)), var_0.c, select(vec2<bool>(arg_2.c, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, arg_2.c), true))).c, select(select(!vec2<bool>(var_0.b, arg_2.c), vec2<bool>(arg_2.d.x <= var_0.a.x, true), any(select(vec2<bool>(false, arg_2.c), vec2<bool>(arg_2.c, var_0.b), false))), vec2<bool>(any(vec2<bool>(var_0.c.c, arg_2.c)), true), true));
    var var_2 = 25763u;
    var_2 = arg_0.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1116f, 3764f, -334f) + vec3<f32>(3368f, -465f, 1870f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(930f, -1000f, -944f)))))), true, Struct_1(1i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.c, u_input.c), global0.x, Struct_1(u_input.a, vec4<f32>(-544f, 1211f, -703f, -884f), false, vec2<f32>(107f, 717f)))) * -1481f), -727f, _wgslsmith_div_f32(-519f, _wgslsmith_div_f32(-1344f, 1092f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-388f, 359f)))), true && all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), vec2<f32>(1f, 1f)));
    var var_1 = var_0.c.d.x;
    var var_2 = var_0.c;
    var var_3 = var_0;
    var var_4 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.c.d.x))), -552f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.b.x))), var_2.c, Struct_1(-2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-385f, var_3.a.x, 1151f, -885f)))), true, var_0.c.d));
    let var_5 = _wgslsmith_clamp_vec3_i32(select(vec3<i32>(_wgslsmith_div_i32(var_3.c.a, 2147483647i), -u_input.a, reverseBits(var_0.c.a | var_0.c.a)), vec3<i32>(var_4.c.a, 5015i ^ var_4.c.a, 1i), !select(select(vec3<bool>(true, var_2.c, false), vec3<bool>(var_0.b, true, true), var_3.b), vec3<bool>(true, var_0.c.c, var_4.b), any(vec3<bool>(var_4.c.c, false, true)))), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(var_2.a, 28107i, var_4.c.a), ~vec3<i32>(var_3.c.a, var_3.c.a, var_3.c.a), !(!vec3<bool>(var_0.c.c, false, false))), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(19772i, var_0.c.a, var_3.c.a), vec3<i32>(1i, 0i, var_4.c.a), vec3<i32>(var_4.c.a, -38419i, var_3.c.a)), -vec3<i32>(var_0.c.a, var_2.a, -48732i)), vec3<i32>(i32(-1i) * -37913i, -2147483647i >> (1u % 32u), _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(1i, var_2.a)))), _wgslsmith_add_vec3_i32(vec3<i32>(~(-22324i), 8099i, var_2.a), vec3<i32>(63097i, min(-14086i, select(u_input.b.x, var_2.a, true)), _wgslsmith_dot_vec2_i32(vec2<i32>(5048i, 32859i), u_input.b) | select(-2147483647i, -4728i, var_4.b))));
    let var_6 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_div_i32(~(~var_2.a), var_5.x), -_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.c.a, var_5.x, 1531i), vec3<i32>(var_2.a, var_3.c.a, var_5.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_3.c.b)) + _wgslsmith_f_op_vec4_f32(sign(var_0.c.b)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, var_3.a.x, var_4.c.b.x, 779f)) + vec4<f32>(_wgslsmith_f_op_f32(-var_4.c.d.x), 760f, _wgslsmith_f_op_f32(sign(var_3.c.b.x)), -883f))), all(!(!vec3<bool>(true, false, var_4.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(426f, 1054f) * var_2.d))))) - vec2<f32>(var_0.c.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, ~_wgslsmith_mod_vec4_i32(~vec4<i32>(var_3.c.a, var_6.a, 1i, var_5.x), abs(~vec4<i32>(-1i, -2147483647i, var_6.a, 2147483647i))), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_5.x, -2147483647i, -1i, var_6.a) & -vec4<i32>(var_0.c.a, 1i, 0i, u_input.a), vec4<i32>(abs(20072i), var_3.c.a, 0i, 1i)), ~(-reverseBits(vec4<i32>(9038i, -1i, var_0.c.a, 0i)))), -vec3<i32>(_wgslsmith_mult_i32(1i, -u_input.b.x), -(~var_4.c.a), ~u_input.b.x));
}

