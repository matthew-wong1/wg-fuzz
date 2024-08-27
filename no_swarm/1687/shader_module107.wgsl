struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(0u, 0u), vec2<u32>(20427u, 93167u));

var<private> global1: Struct_3 = Struct_3(0u);

var<private> global2: f32;

var<private> global3: Struct_3;

var<private> global4: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>) -> vec3<f32> {
    var var_0 = arg_0.c;
    var_0 = ~_wgslsmith_mod_i32(0i, -1i);
    var var_1 = any(select(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, global3.a > 6459u), any(vec3<bool>(true, true, true))), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, false))) >= _wgslsmith_f_op_f32(arg_0.d.a.x * -1609f)));
    global1 = Struct_3(u_input.a.x);
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-947f + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(190f, arg_1.x))))));
    return _wgslsmith_f_op_vec3_f32(-arg_0.d.a);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: i32) -> vec3<bool> {
    let var_0 = firstTrailingBit(vec3<i32>(-36089i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(27049i, 19820i), 0i), reverseBits(arg_3) << (~18920u % 32u)), 1i));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, arg_1, 455f))))), vec3<i32>(1i, 1i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(2147483647i, var_0.x), 66284i))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-525f, 1385f, arg_0)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(2363f, arg_1, 125f), vec3<f32>(arg_1, arg_0, -966f))))), reverseBits(var_0)), -29163i, Struct_1(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(vec3<f32>(arg_0, arg_1, arg_1), var_0), Struct_1(vec3<f32>(339f, arg_0, 1050f), var_0), 0i, Struct_1(vec3<f32>(arg_1, arg_0, arg_1), vec3<i32>(arg_3, -2147483647i, -65473i))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1, arg_1), vec2<f32>(531f, 200f))))))), select(~vec3<i32>(arg_3, -2957i, arg_3), vec3<i32>(-2713i, 1i, firstTrailingBit(arg_3)), all(!vec3<bool>(true, arg_2, arg_2)))));
    let var_2 = Struct_4(select(!select(vec3<bool>(arg_2, arg_2, false), !vec3<bool>(arg_2, arg_2, arg_2), !vec3<bool>(arg_2, true, false)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(arg_2, false, true), vec3<bool>(arg_2, false, arg_2)), !vec3<bool>(false, arg_2, arg_2), select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, true, arg_2), vec3<bool>(true, false, true))), true), max(var_1.b.b.x, -1i) <= ~var_1.a.b.x), select(countOneBits(~(~vec4<i32>(0i, 33822i, -5005i, var_0.x))), ~firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(13747i, arg_3, -1i, var_0.x), vec4<i32>(var_0.x, 58779i, -2147483647i, arg_3))), vec4<bool>(!arg_2, !any(vec4<bool>(arg_2, arg_2, false, false)), arg_2, arg_0 > -602f)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_3 | var_0.x, var_1.c, _wgslsmith_clamp_i32(var_1.b.b.x, var_0.x, 39079i), -var_1.b.b.x), -vec4<i32>(59649i, -1i, var_1.a.b.x, 46902i)), var_1.d);
    global0 = array<vec2<u32>, 2>();
    global1 = Struct_3(min(4294967295u, global3.a));
    return var_2.a;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: vec4<u32>) -> vec3<bool> {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1615f * _wgslsmith_f_op_f32(select(arg_0.a.x, 876f, select(false, var_0, var_0)))), _wgslsmith_f_op_f32(-1013f - arg_0.a.x), -451f, arg_0.a.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(294f, _wgslsmith_f_op_f32(-479f - -2067f), arg_0.a.x, _wgslsmith_f_op_f32(floor(137f)))));
    global0 = array<vec2<u32>, 2>();
    var var_2 = abs(~firstTrailingBit(firstTrailingBit(_wgslsmith_sub_vec3_i32(arg_0.b, vec3<i32>(-29914i, -36606i, arg_0.b.x)))));
    return vec3<bool>(!(false & all(select(vec3<bool>(false, false, var_0), vec3<bool>(var_0, var_0, var_0), true))), any(!select(select(vec3<bool>(false, false, true), vec3<bool>(var_0, true, false), vec3<bool>(var_0, true, var_0)), func_2(-1000f, var_1.x, true, arg_2), !vec3<bool>(var_0, true, var_0))), any(vec2<bool>(!(!var_0), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec3<bool>(false, all(select(func_1(Struct_1(vec3<f32>(1279f, -640f, -1000f), vec3<i32>(-23519i, -23962i, -1i)), Struct_3(1u), 0i, vec4<u32>(u_input.a.x, 10046u, u_input.a.x, 1u)), func_1(Struct_1(vec3<f32>(-1689f, -510f, 1357f), vec3<i32>(14738i, -36554i, 2147483647i)), Struct_3(u_input.a.x), -18104i, vec4<u32>(global3.a, 4294967295u, 63368u, 0u)), vec3<bool>(false, false, true))), false), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(1i, 14592i), 0i, _wgslsmith_clamp_i32(-2147483647i, 0i, -20956i), _wgslsmith_sub_i32(44424i, 0i)), -vec4<i32>(27262i, -2147483647i, 40113i, 34982i) & firstTrailingBit(vec4<i32>(0i, -8059i, -1i, 0i))) ^ (_wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, -10111i, -7543i, 14888i), vec4<i32>(0i, 25384i, 3944i, 24760i)) ^ select(max(vec4<i32>(40818i, -2147483647i, -1i, -10351i), vec4<i32>(14953i, -1i, 1981i, 0i)), vec4<i32>(1i, 1i, 1i, 1i), vec4<bool>(true, false, true, true))), vec4<i32>(-1i) * -(~vec4<i32>(-23282i, -1i, -1i, 5052i)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(905f + -1426f), _wgslsmith_f_op_f32(f32(-1f) * -112f), 1309f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(261f, -1107f, -243f))), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(23738i, 47251i, -401i) << (vec3<u32>(36164u, u_input.a.x, 28328u) % vec3<u32>(32u)), -vec3<i32>(38242i, 2147483647i, 6350i)), vec3<i32>(1i, 1i, 1i))));
    let var_1 = var_0.a.zy;
    let var_2 = ~abs(var_0.b.wx);
    let var_3 = var_0.c.zzz;
    global1 = Struct_3(~global3.a);
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(vec3<i32>(-1i) * -vec3<i32>(68903i, var_3.x, -31281i)), _wgslsmith_mult_i32(_wgslsmith_add_i32(max(1i, _wgslsmith_mod_i32(var_0.d.b.x, 20368i)), var_2.x), ~var_3.x << (~global3.a % 32u)));
}

