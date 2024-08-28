struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-579f + _wgslsmith_f_op_f32(f32(-1f) * -384f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(146f * arg_3.b.x)), 1728f)) - vec3<f32>(2276f, global0.b.x, _wgslsmith_f_op_f32(abs(-360f))));
    return reverseBits(firstTrailingBit(1i));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global0 = Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global0.b, arg_2.b))), global0.b)), -(~arg_2.c) & firstTrailingBit(global0.d.wxz), reverseBits(vec4<i32>(55534i, -2265i, countOneBits(0i | u_input.c.x), ~func_3(vec2<u32>(arg_1.x, 74072u), arg_2.c.xx, arg_1.x, Struct_1(global0.a, global0.b, global0.c, arg_2.d)))));
    global0 = arg_2;
    let var_0 = Struct_1(vec2<bool>(any(global0.a), false), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b.x, global0.b.x)) * _wgslsmith_f_op_f32(f32(-1f) * -2413f))), -105f, _wgslsmith_f_op_f32(f32(-1f) * -198f)), ~((vec3<i32>(u_input.a.x, 22345i, 29938i) & global0.d.xxz) ^ (vec3<i32>(-1i, 4193i, -22419i) & arg_2.d.xwy)) | vec3<i32>(-arg_2.d.x, _wgslsmith_dot_vec3_i32(arg_2.d.zyy, countOneBits(global0.d.ywy)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(33953i, global0.d.x), arg_2.d.ww), arg_0)), _wgslsmith_sub_vec4_i32((_wgslsmith_div_vec4_i32(global0.d, arg_2.d) << ((vec4<u32>(0u, arg_1.x, arg_1.x, arg_3) << (vec4<u32>(arg_1.x, u_input.d, arg_3, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))) & min(arg_2.d, firstTrailingBit(arg_2.d)), global0.d));
    global0 = Struct_1(select(select(select(global0.a, !vec2<bool>(true, global0.a.x), var_0.a.x), global0.a, !(11964u >= arg_1.x)), !(!vec2<bool>(true, arg_2.a.x)), global0.a), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b + vec3<f32>(global0.b.x, global0.b.x, global0.b.x)) + vec3<f32>(global0.b.x, global0.b.x, -1078f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b * var_0.b))))), firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(arg_0, global0.d.x), -2147483647i, u_input.c.x >> (~4829u % 32u))), vec4<i32>(firstTrailingBit(-27358i) ^ _wgslsmith_sub_i32(global0.c.x, min(2378i, u_input.c.x)), i32(-1i) * -u_input.a.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, u_input.a.x) ^ vec2<i32>(var_0.d.x, arg_0), global0.c.zz), var_0.d.x));
    global0 = Struct_1(!arg_2.a, vec3<f32>(892f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_2.b.x, -1017f, true)), _wgslsmith_f_op_f32(abs(arg_2.b.x)))), -611f), _wgslsmith_f_op_f32(floor(arg_2.b.x))), select(vec3<i32>(~_wgslsmith_mod_i32(global0.c.x, arg_2.d.x), arg_2.d.x, -27624i | func_3(arg_1, vec2<i32>(-1i, 1i), 20350u, Struct_1(vec2<bool>(false, arg_2.a.x), vec3<f32>(104f, -1148f, -1800f), vec3<i32>(25997i, 487i, u_input.a.x), var_0.d))), var_0.c, vec3<bool>(true, global0.a.x, !(var_0.a.x && false))), -arg_2.d);
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>) -> Struct_1 {
    global0 = arg_0;
    let var_0 = ~arg_0.c.x >> (min(1u, ~4294967295u) % 32u);
    var var_1 = global0.a;
    global0 = Struct_1(vec2<bool>(global0.a.x, !(true | any(vec3<bool>(arg_0.a.x, false, true)))), _wgslsmith_f_op_vec3_f32(arg_0.b - vec3<f32>(_wgslsmith_f_op_f32(global0.b.x + _wgslsmith_div_f32(1131f, -1588f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x)), _wgslsmith_div_f32(367f, _wgslsmith_f_op_f32(global0.b.x + arg_0.b.x)))), func_2(1i, u_input.b | u_input.b, Struct_1(func_2(_wgslsmith_sub_i32(u_input.a.x, -23064i), vec2<u32>(u_input.d, u_input.d) >> (vec2<u32>(u_input.d, u_input.b.x) % vec2<u32>(32u)), arg_0, reverseBits(u_input.d)).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.x, 1000f, arg_0.b.x), arg_0.b) * _wgslsmith_f_op_vec3_f32(global0.b - vec3<f32>(-1175f, 1000f, global0.b.x))), vec3<i32>(~(-25476i), arg_0.c.x, reverseBits(global0.d.x)), firstLeadingBit(vec4<i32>(global0.c.x, global0.c.x, global0.c.x, u_input.a.x))), u_input.d).c, ~(-(arg_0.d >> (max(vec4<u32>(u_input.d, 20794u, 23615u, u_input.b.x), vec4<u32>(65152u, 4294967295u, u_input.d, 0u)) % vec4<u32>(32u)))));
    var var_2 = Struct_1(vec2<bool>(all(arg_2), !any(vec2<bool>(true, true))), arg_0.b, ~(vec3<i32>(-1i) * -vec3<i32>(arg_0.c.x, -1i, -2147483647i)) ^ (~vec3<i32>(0i, arg_0.d.x, -2147483647i) ^ _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(arg_0.c.x, -2147483647i, 34875i)), vec3<i32>(-2147483647i, var_0, var_0))), arg_0.d);
    return func_2(2147483647i, ~(~max(countOneBits(vec2<u32>(u_input.b.x, 1u)), max(vec2<u32>(u_input.d, u_input.d), u_input.b))), Struct_1(func_2(-2147483647i, vec2<u32>(_wgslsmith_mult_u32(0u, u_input.b.x), 24293u), Struct_1(vec2<bool>(false, false), arg_0.b, abs(vec3<i32>(var_0, 1i, -21433i)), ~vec4<i32>(14465i, -2147483647i, -6015i, var_2.d.x)), u_input.b.x).a, _wgslsmith_f_op_vec3_f32(-var_2.b), var_2.d.xzx, ~var_2.d), ~(~_wgslsmith_div_u32(u_input.d, u_input.b.x)));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    var var_0 = func_4(func_2(firstTrailingBit(max(1i, global0.d.x)), ~(~(arg_0.zy | u_input.b)), Struct_1(vec2<bool>(global0.a.x, select(global0.a.x, global0.a.x, true)), vec3<f32>(_wgslsmith_f_op_f32(-global0.b.x), global0.b.x, -769f), vec3<i32>(~1i, global0.c.x, u_input.a.x | 1456i), select(global0.d, -vec4<i32>(-25204i, global0.c.x, u_input.c.x, -2147483647i), global0.a.x & global0.a.x)), ~19245u), any(!(!(!vec4<bool>(false, false, global0.a.x, global0.a.x)))), vec3<bool>(!select(true, false, true), all(vec3<bool>(true, global0.a.x & false, true)), global0.a.x));
    let var_1 = arg_0.yz;
    let var_2 = true;
    let var_3 = _wgslsmith_sub_u32(~(~_wgslsmith_mult_u32(0u, 0u)), u_input.d) > var_1.x;
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(select(global0.b, _wgslsmith_f_op_vec3_f32(global0.b + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b * vec3<f32>(1000f, 170f, global0.b.x)) * vec3<f32>(1696f, global0.b.x, 1597f))), !(!select(vec3<bool>(global0.a.x, var_2, var_0.a.x), vec3<bool>(var_3, var_0.a.x, global0.a.x), var_3)))), countOneBits(vec3<i32>((-1i | global0.c.x) << (1u % 32u), _wgslsmith_div_i32(max(u_input.a.x, global0.c.x), 15461i), min(-42885i | u_input.c.x, _wgslsmith_div_i32(var_0.c.x, 2147483647i)))), _wgslsmith_sub_vec4_i32(var_0.d, ~global0.d));
    return _wgslsmith_mod_u32((_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_1.x, var_1.x), arg_0.x & var_1.x) >> (arg_0.x % 32u)) << (u_input.b.x % 32u), 112933u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(global0.b.x + global0.b.x);
    let var_1 = select(vec4<u32>(abs(func_1(firstLeadingBit(vec3<u32>(1u, u_input.d, u_input.b.x)))), u_input.d, ~_wgslsmith_mod_u32(firstTrailingBit(u_input.d), u_input.b.x), abs(~(~u_input.d))), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, 0u, u_input.b.x >> (23631u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(15339u, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(1u, 4294967295u, 36812u, 33182u)))), ~(~(~vec4<u32>(57742u, 22936u, 0u, 29620u)))), vec4<bool>(!any(select(vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x), vec4<bool>(true, true, global0.a.x, false), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x))), -(~global0.c.x) != ~2147483647i, global0.a.x, true));
    global0 = func_2(~(global0.d.x >> (_wgslsmith_add_u32(u_input.b.x, min(76925u, var_1.x)) % 32u)), countOneBits(_wgslsmith_div_vec2_u32(var_1.xy, var_1.wz)), Struct_1(global0.a, func_2(global0.c.x, max(var_1.zz, var_1.xw) << (u_input.b % vec2<u32>(32u)), func_4(func_4(Struct_1(global0.a, global0.b, global0.d.zxz, vec4<i32>(-1i, -2147483647i, global0.d.x, u_input.a.x)), true, vec3<bool>(false, global0.a.x, false)), any(vec2<bool>(true, true)), vec3<bool>(global0.a.x, true, true)), min(4294967295u, 24263u)).b, global0.d.wzy >> (vec3<u32>(~0u, select(74150u, 76313u, false), 1981u) % vec3<u32>(32u)), global0.d << (select(var_1, var_1, true) % vec4<u32>(32u))), u_input.b.x);
    global0 = Struct_1(vec2<bool>(-957f == global0.b.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, 1i), ~12790i) <= global0.d.x), global0.b, global0.c | vec3<i32>(abs(1i), -68170i, _wgslsmith_div_i32(~global0.d.x, u_input.c.x & global0.d.x)), -_wgslsmith_div_vec4_i32(-(global0.d << (vec4<u32>(u_input.d, 3927u, u_input.d, 14567u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(global0.d, vec4<i32>(0i, -2147483647i, u_input.a.x, u_input.c.x)), func_2(46968i, vec2<u32>(u_input.d, 4294967295u), Struct_1(global0.a, vec3<f32>(-1046f, -599f, global0.b.x), global0.c, global0.d), u_input.d).d)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.d.yz);
}

