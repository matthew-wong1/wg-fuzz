struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(0i, 0i);

var<private> global1: u32 = 65155u;

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global3: bool;

var<private> global4: Struct_1;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>) -> f32 {
    global2 = vec4<bool>(!(!(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) == _wgslsmith_f_op_f32(-arg_1.x))), select(select(arg_0.x, all(arg_0.yww), false), global2.x, select(any(select(vec2<bool>(false, global2.x), vec2<bool>(true, global2.x), global2.x)), true, all(vec3<bool>(false, global2.x, false)))), !global2.x, true);
    global4 = Struct_1(firstTrailingBit(~(~abs(global4.a))));
    let var_0 = ~(firstTrailingBit(u_input.a) << (38696u % 32u)) ^ -2147483647i;
    global0 = _wgslsmith_clamp_vec2_i32(~reverseBits(~vec2<i32>(var_0, -1i)), ~global4.a, global4.a);
    global4 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(abs(global4.a.x), var_0 << (38881u % 32u), ~global0.x), ~1i), global4.a, ~(global4.a << (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(32250u, 38130u)) % vec2<u32>(32u)))));
    return 302f;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = abs(countOneBits(-u_input.a)) << (24485u % 32u);
    let var_1 = arg_0;
    let var_2 = Struct_1(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_2.a.x | 2147483647i, _wgslsmith_add_i32(-2147483647i, arg_2.a.x), -1i >> (0u % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, 2147483647i, 0i), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_0, -2147483647i), vec3<i32>(2147483647i, 0i, global0.x)))), ~_wgslsmith_mod_i32(reverseBits(arg_3.a.x), 0i)));
    let var_3 = Struct_1(select(-arg_0.a, countOneBits(-arg_0.a), vec2<bool>(global2.x, abs(global4.a.x) > -2147483647i)));
    var var_4 = true;
    return vec4<bool>(any(global2.yz), !(any(!vec4<bool>(global2.x, global2.x, global2.x, false)) || all(select(global2.ww, global2.xz, global2.zw))), any(select(vec4<bool>(global2.x && global2.x, global2.x, any(global2.yz), any(global2.zyw)), select(select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(true, true, false, global2.x), vec4<bool>(global2.x, false, true, false)), select(vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(global2.x, false, false, false), global2.x), select(vec4<bool>(global2.x, global2.x, false, false), vec4<bool>(global2.x, global2.x, global2.x, true), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(global2.x, global2.x, false, global2.x), all(global2.yz)))), !any(select(global2.xw, vec2<bool>(false, false), global2.x)) & global2.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: bool) -> f32 {
    var var_0 = !select(!(!select(vec4<bool>(arg_0.x, global2.x, arg_0.x, false), vec4<bool>(false, arg_0.x, true, false), vec4<bool>(false, arg_2, global2.x, true))), select(func_4(Struct_1(vec2<i32>(-61385i, global0.x)), _wgslsmith_f_op_f32(func_3(vec4<bool>(false, false, true, true), vec2<f32>(-1525f, 976f))), Struct_1(vec2<i32>(-48619i, -11471i)), Struct_1(vec2<i32>(u_input.a, 5364i))), !select(vec4<bool>(global2.x, false, global2.x, global2.x), vec4<bool>(arg_2, false, arg_0.x, false), vec4<bool>(false, false, false, arg_0.x)), !func_4(Struct_1(global4.a), -3568f, Struct_1(global4.a), Struct_1(vec2<i32>(36703i, 41734i))).x), false);
    var var_1 = vec4<u32>(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)) & countOneBits(firstTrailingBit(4294967295u))), ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(82102u, 0u)), ~vec2<u32>(0u, 23674u)), countOneBits(~1u)), 1u << (1u % 32u), 4294967295u);
    var_1 = (_wgslsmith_mod_vec4_u32((vec4<u32>(var_1.x, 1u, var_1.x, 71423u) << (vec4<u32>(var_1.x, 14503u, var_1.x, 24774u) % vec4<u32>(32u))) | max(vec4<u32>(82522u, 39497u, 46759u, var_1.x), vec4<u32>(1u, var_1.x, 0u, var_1.x)), ~(~vec4<u32>(9979u, 1u, var_1.x, var_1.x))) | vec4<u32>(1u, 1u, var_1.x, _wgslsmith_dot_vec2_u32(var_1.zx, var_1.wy ^ var_1.yx))) & _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_1.x, 9786u, var_1.x, var_1.x)), max(vec4<u32>(115419u, var_1.x, 8076u, 6317u), vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x))), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, var_1.x, 20431u, 89807u), vec4<u32>(var_1.x, 0u, var_1.x, var_1.x)), var_1.x, var_1.x, var_1.x));
    global1 = var_1.x;
    let var_2 = ~var_1.x;
    return _wgslsmith_f_op_f32(-3500f * 174f);
}

fn func_5(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    global3 = global2.x;
    var var_0 = Struct_1(vec2<i32>(-_wgslsmith_dot_vec2_i32(global4.a, global4.a) << (min(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 0u), arg_1.yy), ~58263u) % 32u), -38986i));
    return Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(~countOneBits(vec2<i32>(global4.a.x, -1i)), ~reverseBits(vec2<i32>(-16639i, 0i))), ~(~vec2<i32>(0i, 0i))));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<i32>) -> u32 {
    var var_0 = arg_1;
    let var_1 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<bool>(false, global2.x, global2.x), -1057f, true)) * _wgslsmith_div_f32(arg_2.x, -1068f))) - arg_2.x), vec3<u32>(0u, ~firstTrailingBit(abs(21795u)), 1u));
    var var_2 = arg_1;
    global1 = 20149u;
    let var_3 = func_5(1167f, countOneBits(vec3<u32>(1u, 1u, 1u)));
    return 1u;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec2<i32>) -> vec4<f32> {
    let var_0 = vec3<u32>(4294967295u, ~func_6(arg_2.x, func_5(_wgslsmith_f_op_f32(func_2(vec3<bool>(global2.x, arg_1.x, arg_1.x), 1611f, true)), ~vec3<u32>(0u, 7903u, 4294967295u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-566f, 977f, -147f, -637f), vec4<f32>(1260f, 376f, -1354f, -153f), vec4<bool>(false, false, global2.x, true)))), vec2<i32>(0i, -14049i | u_input.a)), abs(_wgslsmith_clamp_u32(min(abs(1u), ~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 43753u), vec3<u32>(1u, 1u, 1u)), 1u)));
    global0 = global4.a;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(148f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-1007f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -423f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(451f)) * 1f))));
    var var_2 = arg_0;
    var var_3 = global4.a.x;
    return vec4<f32>(_wgslsmith_f_op_f32(1022f - 1229f), var_1, var_1, _wgslsmith_f_op_f32(476f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(func_4(Struct_1(vec2<i32>(global4.a.x, global0.x)), var_1, Struct_1(global4.a), Struct_1(global4.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -286f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1))))));
}

fn func_7(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(global4.a);
}

fn func_8(arg_0: Struct_1, arg_1: vec2<i32>) -> u32 {
    let var_0 = Struct_1(global4.a);
    global2 = vec4<bool>(global2.x, true, global2.x, true);
    global4 = Struct_1(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, global0.x)), ~vec2<i32>(-2147483647i, arg_0.a.x) & _wgslsmith_div_vec2_i32(arg_1, vec2<i32>(9685i, -3593i))) << (vec2<u32>(~(~4294967295u), 85318u) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(770f + -902f), _wgslsmith_f_op_f32(304f - 893f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-524f, _wgslsmith_f_op_f32(f32(-1f) * -2093f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(155f, -2551f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-979f, -1707f) + vec2<f32>(-1426f, 1477f))))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, _wgslsmith_f_op_f32(sign(1004f))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(abs(1577f)), _wgslsmith_f_op_f32(-587f - -1077f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-894f, -1709f) + vec2<f32>(-2390f, 641f))))))));
    let var_2 = func_7(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, 2147483647i, -arg_1.x), -vec3<i32>(global0.x, arg_0.a.x, -1i)) & ~(_wgslsmith_mod_vec3_i32(vec3<i32>(35402i, 2147483647i, -9314i), vec3<i32>(var_0.a.x, global0.x, arg_1.x)) | max(vec3<i32>(arg_0.a.x, -1i, u_input.a), vec3<i32>(u_input.a, global0.x, global4.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(479f, var_1.x), _wgslsmith_div_f32(510f, var_1.x), _wgslsmith_f_op_f32(abs(-762f)), _wgslsmith_f_op_f32(var_1.x - 711f))) * vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(global2.x, true, global2.x, global2.x), var_1)) + _wgslsmith_f_op_f32(step(var_1.x, 1532f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, false, global2.x, false), vec2<f32>(var_1.x, 168f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))))), arg_0);
    return ~max(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 94530u, 1u, 13580u), vec4<u32>(74977u, 4294967295u, 0u, 118902u), vec4<u32>(30968u, 4294967295u, 36502u, 14964u)), firstTrailingBit(vec4<u32>(4294967295u, 39587u, 69u, 0u))), _wgslsmith_div_u32(31897u, 1u) | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, 76823u))) ^ ~_wgslsmith_mod_u32(50251u, 42055u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(21200u, 20034u >> (func_8(func_7(max(vec3<i32>(global4.a.x, global0.x, global4.a.x), vec3<i32>(global4.a.x, 16694i, u_input.a)), _wgslsmith_f_op_vec4_f32(func_1(vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, true), vec2<i32>(-1i, -53085i))), func_5(237f, vec3<u32>(1u, 3540u, 0u))), vec2<i32>(u_input.a, global4.a.x) << (abs(vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u))) % 32u));
    global0 = global4.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(305f, 429f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(378f, -722f), vec2<f32>(-492f, -1059f), global2.yz)), any(vec3<bool>(true, global2.x, true)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(445f, 1339f))))));
    let var_2 = -2147483647i;
    let var_3 = true;
    global4 = Struct_1(reverseBits(-(countOneBits(global4.a) | -vec2<i32>(var_2, 14076i))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~func_5(_wgslsmith_f_op_f32(func_3(vec4<bool>(global2.x, var_3, true, var_3), vec2<f32>(-575f, 294f))), _wgslsmith_div_vec3_u32(vec3<u32>(62655u, var_0.x, var_0.x), vec3<u32>(34363u, 1u, var_0.x))).a.x), vec4<i32>(u_input.a, -50919i, global0.x, var_2));
}

