struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec4<bool>(true, true, true, true));

var<private> global1: array<Struct_1, 30>;

var<private> global2: vec2<f32> = vec2<f32>(871f, 212f);

var<private> global3: vec4<u32> = vec4<u32>(79762u, 4294967295u, 4294967295u, 12949u);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(all(!global0.b.zzz), select(!vec4<bool>(!arg_1.b.x, all(arg_1.b.xy), arg_1.b.x, !arg_1.a), !global0.b, vec4<bool>(false, arg_1.b.x, true, arg_0 > _wgslsmith_f_op_f32(-1002f - arg_0))));
    global1 = array<Struct_1, 30>();
    var var_1 = arg_1;
    let var_2 = 78142i;
    global2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -280f), _wgslsmith_f_op_f32(616f - -230f)))) - -972f), _wgslsmith_f_op_f32(sign(global2.x)));
    return 0u;
}

fn func_2() -> vec4<i32> {
    var var_0 = global3.zx;
    let var_1 = ~u_input.d;
    var var_2 = all(!select(global0.b, !global0.b, global0.b.x));
    let var_3 = Struct_1(true, !vec4<bool>(global0.b.x, global0.a, global0.a, true));
    let var_4 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, firstLeadingBit(global3.x), u_input.b, firstLeadingBit(28218u)), ~vec4<u32>(~global3.x, global3.x ^ 27610u, func_3(global2.x, Struct_1(true, vec4<bool>(global0.a, false, true, true))), _wgslsmith_add_u32(124952u, var_0.x))), _wgslsmith_mod_u32(~(~select(var_0.x, var_0.x, false)), 22638u));
    return vec4<i32>(max(var_1 >> (0u % 32u), u_input.d), _wgslsmith_mult_i32(var_1, ~1i), max(_wgslsmith_dot_vec2_i32(max(vec2<i32>(var_1, 1i), abs(vec2<i32>(53487i, 0i))), ~vec2<i32>(-12703i, u_input.d)), _wgslsmith_clamp_i32(0i, ~var_1, 39896i) ^ _wgslsmith_add_i32(var_1, -2147483647i)), -48966i);
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, -3503i, -u_input.d, -36473i | u_input.d) & -countOneBits(vec4<i32>(1i, u_input.d, u_input.d, -1i)), func_2()), vec4<i32>(u_input.d, u_input.d, _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.d, u_input.d), vec2<i32>(-1824i, -5344i), vec2<bool>(global0.b.x, global0.a)) ^ (vec2<i32>(u_input.d, u_input.d) | vec2<i32>(1i, u_input.d)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, u_input.d) & vec2<i32>(-2147483647i, u_input.d), countOneBits(vec2<i32>(u_input.d, -2147483647i)))), ~func_2().x));
    global2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1185f, _wgslsmith_f_op_f32(f32(-1f) * -444f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, global2.x), vec2<f32>(-1885f, 1000f)))))));
    var var_1 = arg_0;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) - vec2<f32>(-405f, global2.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(755f, 1231f) + vec2<f32>(318f, global2.x)), vec2<f32>(global2.x, global2.x)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 1858f))), vec2<f32>(_wgslsmith_f_op_f32(global2.x + global2.x), _wgslsmith_f_op_f32(step(313f, global2.x))))), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global2.x, -534f), _wgslsmith_f_op_f32(-1434f - 974f)))));
    var var_1 = ~vec2<u32>(u_input.b << ((u_input.b >> (~1u % 32u)) % 32u), reverseBits(~abs(global3.x)));
    var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(559f, global2.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(330f, global2.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-120f, -285f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 844f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(935f, var_0.x, -781f), vec3<f32>(860f, 439f, -1601f), global0.b.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, var_0.x, global2.x))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, var_0.x, var_0.x)))))))));
    let var_3 = vec3<bool>(!(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(max(var_2.x, -280f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(select(var_0.x, var_2.x, global0.b.x)))), u_input.d >= u_input.d, global0.b.x);
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.zy), _wgslsmith_f_op_vec2_f32(max(var_2.yz, _wgslsmith_f_op_vec2_f32(func_1(Struct_1(global0.a, vec4<bool>(var_3.x, global0.a, true, false)))))), var_3.x)))));
    let var_4 = global3.zwx;
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(986f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.x, var_0.x)) + _wgslsmith_f_op_f32(-649f * -287f)))) - 372f));
    let x = u_input.a;
    s_output = StorageBuffer(~(~reverseBits(vec3<i32>(1459i, 44266i, u_input.d) << (global3.yyz % vec3<u32>(32u)))));
}

