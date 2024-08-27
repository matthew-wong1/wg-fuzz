struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = -10389i <= reverseBits(abs(abs(u_input.a) ^ (2147483647i ^ arg_0)));
    var var_1 = Struct_1(vec4<u32>(global0.b, firstLeadingBit(min(0u, global0.a.x)), 2021u, ~(~0u)) & global0.c, ~(~abs(u_input.c.x) << (_wgslsmith_div_u32(~20538u, 4294967295u) % 32u)), vec4<u32>(0u, countOneBits(u_input.c.x) ^ (_wgslsmith_sub_u32(global0.a.x, global0.c.x) & firstLeadingBit(u_input.c.x)), _wgslsmith_mult_u32(abs(firstLeadingBit(u_input.c.x)), ~58602u), 1u));
    global0 = Struct_1(max(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, global0.c.x, 1u, 46521u), vec4<u32>(var_1.c.x, 69088u, 10178u, 0u)) << (u_input.c % vec4<u32>(32u)), global0.c), max(15892u, max(_wgslsmith_add_u32(4294967295u, var_1.c.x), 4294967295u & var_1.c.x) >> (~(~u_input.c.x) % 32u)), reverseBits(global0.a));
    var var_2 = Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(select(~var_1.a, ~global0.c, false), vec4<u32>(u_input.c.x, global0.c.x, 88567u, global0.a.x) >> (~global0.c % vec4<u32>(32u))), u_input.c.x, global0.c), abs(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global0.a.wyx, vec3<u32>(8100u, u_input.c.x, 1u)), vec3<u32>(0u, var_1.a.x, 10829u)) ^ firstTrailingBit(19733u)), Struct_1(u_input.c ^ vec4<u32>(_wgslsmith_dot_vec4_u32(var_1.a, vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x)), global0.c.x, ~67011u, u_input.c.x), _wgslsmith_sub_u32(4294967295u, 3837u), u_input.c >> (~(~vec4<u32>(0u, 1u, var_1.a.x, 4294967295u)) % vec4<u32>(32u))), vec2<i32>(-1i) * -vec2<i32>(0i, 1i));
    var var_3 = global0.a.wz;
    return ~abs(23080u);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1807f, -1000f, -1000f)));
    global0 = arg_3;
    global0 = Struct_1(~vec4<u32>(~reverseBits(57866u), 4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_2.x, arg_2.x), vec3<u32>(arg_3.b, 0u, arg_3.a.x)), 41162u), 4294967295u, _wgslsmith_clamp_vec4_u32(abs(~(~global0.a)), ~_wgslsmith_div_vec4_u32(~arg_3.c, vec4<u32>(global0.a.x, 53214u, global0.c.x, arg_3.b)), global0.c));
    var var_1 = ~select(_wgslsmith_mult_u32(~(~18587u), u_input.c.x), func_3(max(-1i, u_input.b) | (u_input.a & u_input.a)), true);
    let var_2 = u_input.c.xy;
    return any(select(arg_1, vec3<bool>(!all(vec2<bool>(false, arg_1.x)), all(arg_1.xy), all(vec4<bool>(arg_1.x, true, false, true))), !(firstLeadingBit(6966u) > countOneBits(arg_3.b))));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    global0 = Struct_1(~arg_1.a, global0.b, vec4<u32>(25553u, abs(_wgslsmith_div_u32(3740u, u_input.c.x)) ^ u_input.c.x, max(~(0u & global0.b), ~(arg_1.c.x | 18706u)), 46094u));
    let var_0 = ~(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(u_input.d, u_input.a, u_input.a)) << (arg_1.c.xyy % vec3<u32>(32u)), -vec3<i32>(u_input.d, u_input.d, -1i)) << (firstLeadingBit(countOneBits(arg_1.c.wxw)) % vec3<u32>(32u)));
    var var_1 = vec2<u32>(_wgslsmith_clamp_u32(arg_1.c.x, 34180u << (u_input.c.x % 32u), ~83864u), u_input.c.x);
    let var_2 = var_0;
    return Struct_2(Struct_1(vec4<u32>(var_1.x ^ global0.b, arg_1.a.x, countOneBits(arg_1.c.x), reverseBits(global0.c.x)) >> (vec4<u32>(_wgslsmith_sub_u32(5149u, 2874u), 1u, 4294967295u, u_input.c.x) % vec4<u32>(32u)), 1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(25750u, 0u, 8767u, var_1.x) & vec4<u32>(55370u, arg_1.a.x, 3458u, var_1.x), ~vec4<u32>(u_input.c.x, 4294967295u, 0u, var_1.x)), ~arg_1.a), ~_wgslsmith_mod_u32(arg_1.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(97113u, 4294967295u, 0u), vec3<u32>(61685u, var_1.x, 2004u))), arg_1, ~(((var_0.zz << (vec2<u32>(var_1.x, var_1.x) % vec2<u32>(32u))) & -var_0.zz) | firstLeadingBit(vec2<i32>(13544i, 31706i))));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = arg_0.c;
    var var_1 = firstTrailingBit(arg_0.d);
    var var_2 = Struct_1(arg_0.a.c, 0u & _wgslsmith_clamp_u32(global0.c.x, 3644u, ~(~arg_0.a.a.x)), ~vec4<u32>(var_0.a.x | 18340u, arg_0.b, func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_1.x, u_input.b, var_1.x), vec4<i32>(arg_0.d.x, var_1.x, var_1.x, -2147483647i))), 0u));
    let var_3 = arg_0.c;
    let var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(171f, 1000f)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1262f), _wgslsmith_f_op_f32(825f - -426f)))))));
    return func_4(!all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), func_2(var_4, vec3<bool>(false, false, false), vec4<u32>(0u, 27497u, u_input.c.x, global0.c.x), arg_0.a))), var_3).c;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: i32) -> Struct_2 {
    var var_0 = u_input.c.yxw;
    let var_1 = Struct_2(Struct_1(global0.c >> (global0.c % vec4<u32>(32u)), ~_wgslsmith_add_u32(1u, 1u), u_input.c), var_0.x, func_5(func_4(!func_2(vec2<f32>(1000f, 2656f), vec3<bool>(arg_1, true, true), vec4<u32>(var_0.x, global0.a.x, 36993u, u_input.c.x), Struct_1(vec4<u32>(18252u, var_0.x, 55999u, 4294967295u), u_input.c.x, u_input.c)), Struct_1(_wgslsmith_add_vec4_u32(u_input.c, global0.c), 4294967295u, min(global0.a, global0.a)))), select(vec2<i32>(2147483647i << (~global0.b % 32u), ~39969i), vec2<i32>(-2147483647i, arg_0.x), arg_1 & true));
    let var_2 = Struct_2(Struct_1((min(global0.a, var_1.c.a) & global0.c) ^ global0.a, reverseBits(0u), max(var_1.a.a, vec4<u32>(1u, var_1.a.b, 0u, 0u) ^ vec4<u32>(var_1.b, 58001u, var_0.x, 0u)) | global0.a), ~42436u, Struct_1(func_4(true, var_1.a).c.a, ~(~global0.c.x) ^ select(reverseBits(29902u), reverseBits(4294967295u), !arg_1), ~(~(vec4<u32>(global0.b, global0.a.x, 1u, var_0.x) << (var_1.c.c % vec4<u32>(32u))))), _wgslsmith_div_vec2_i32(var_1.d, ~vec2<i32>(1i, arg_2)));
    var var_3 = var_2.a;
    return Struct_2(Struct_1(u_input.c, max(~u_input.c.x, global0.a.x), reverseBits(vec4<u32>(abs(var_3.b), _wgslsmith_sub_u32(var_2.c.b, u_input.c.x), var_3.b, 15009u))), func_5(func_4(!(4294967295u >= global0.b), var_1.c)).b, Struct_1(((vec4<u32>(var_2.b, 39449u, 4294967295u, var_1.a.b) & vec4<u32>(4294967295u, var_3.c.x, 82329u, 1u)) ^ var_2.a.a) | _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(6925u, 1u, var_1.c.a.x, var_1.a.b), var_1.c.c, vec4<u32>(4294967295u, 35516u, var_2.b, var_3.c.x)), vec4<u32>(4294967295u, 55968u, var_1.c.b, 4294967295u)), ~4294967295u, select(vec4<u32>(4294967295u, ~35452u, 0u >> (var_3.a.x % 32u), _wgslsmith_mod_u32(4294967295u, 16570u)), global0.c, true)), ~(~(-_wgslsmith_clamp_vec2_i32(vec2<i32>(2825i, -71463i), vec2<i32>(20084i, 430i), var_2.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_vec3_i32(abs(vec3<i32>(26423i, _wgslsmith_sub_i32(-34766i, u_input.b), u_input.d)), vec3<i32>(u_input.d, max(58267i, u_input.b), u_input.b)), global0.c.x > ~4294967295u, 19876i | (i32(-1i) * -(~u_input.b)));
    let var_1 = var_0;
    let var_2 = func_1(abs(-_wgslsmith_add_vec3_i32(select(vec3<i32>(var_1.d.x, var_0.d.x, var_0.d.x), vec3<i32>(2147483647i, 0i, 25760i), true), -vec3<i32>(var_1.d.x, var_1.d.x, -7069i))), !(!any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))), min(abs(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_0.d.x, -6066i, -1i)), vec3<i32>(0i, var_0.d.x, u_input.d) | vec3<i32>(var_1.d.x, u_input.b, var_0.d.x))), i32(-1i) * -u_input.b));
    global0 = var_2.c;
    let var_3 = var_0.a.a.x;
    global0 = var_0.c;
    global0 = Struct_1(vec4<u32>(~(~u_input.c.x), var_0.b, global0.b, 1u), ~func_5(Struct_2(Struct_1(var_1.a.c, 24145u, vec4<u32>(var_3, 12798u, u_input.c.x, var_0.b)), max(0u, 4294967295u), func_4(true, Struct_1(u_input.c, var_3, vec4<u32>(global0.b, u_input.c.x, 24663u, 4294967295u))).c, vec2<i32>(2147483647i, 0i) << (var_1.c.c.xz % vec2<u32>(32u)))).c.x, ~var_0.a.a);
    global0 = Struct_1(vec4<u32>(((1u << (0u % 32u)) << (func_3(-1i) % 32u)) >> (1785u % 32u), func_1(-vec3<i32>(var_0.d.x, -2147483647i, -1i), true, 14894i).a.b, var_2.c.c.x, 4294967295u), ~((firstTrailingBit(44870u) & (0u | var_1.b)) >> (var_1.c.a.x % 32u)), ~var_1.c.a);
    var var_4 = func_2(vec2<f32>(305f, -1000f), !select(vec3<bool>(false, true, select(false, false, false)), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))), select(abs(vec4<u32>(var_0.a.c.x, 1u, u_input.c.x, 27752u)) ^ var_2.a.a, ~vec4<u32>(var_3, 1u, abs(var_3), u_input.c.x), vec4<bool>(func_2(vec2<f32>(2890f, -170f), vec3<bool>(true, true, false), vec4<u32>(47726u, 12620u, 4294967295u, var_3), Struct_1(vec4<u32>(var_2.a.b, var_3, 1u, 33672u), var_2.a.b, vec4<u32>(31427u, var_2.a.a.x, 0u, 0u))) | true, true && any(vec4<bool>(false, false, false, true)), true, _wgslsmith_div_u32(var_1.a.b, 19962u) != ~31849u)), func_1(_wgslsmith_clamp_vec3_i32(firstLeadingBit(min(vec3<i32>(var_1.d.x, var_0.d.x, var_1.d.x), vec3<i32>(u_input.b, var_1.d.x, -2147483647i))), ~vec3<i32>(var_0.d.x, var_0.d.x, -9100i), -_wgslsmith_add_vec3_i32(vec3<i32>(var_0.d.x, u_input.b, -28402i), vec3<i32>(var_1.d.x, var_1.d.x, 72603i))), any(vec2<bool>(true, true)), ~countOneBits(2147483647i)).c);
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.zxx);
}

