struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32) -> Struct_2 {
    global0 = array<vec3<bool>, 10>();
    global0 = array<vec3<bool>, 10>();
    global0 = array<vec3<bool>, 10>();
    global0 = array<vec3<bool>, 10>();
    var var_0 = u_input.a.x;
    return Struct_2(Struct_1(~_wgslsmith_div_u32(1u, 38904u >> (u_input.a.x % 32u)), firstTrailingBit(~vec2<u32>(0u, 0u)), vec4<bool>(all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(-948f + arg_0) != 1095f, select(all(global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), true, true), all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true)))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    global0 = array<vec3<bool>, 10>();
    let var_0 = -1306f;
    let var_1 = func_2(_wgslsmith_f_op_f32(round(537f)));
    let var_2 = func_2(-299f).a;
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, 1065f, -1151f) * vec4<f32>(var_0, var_0, var_0, var_0))), vec4<f32>(var_0, -1166f, _wgslsmith_f_op_f32(-var_0), -1316f))))));
    return func_2(_wgslsmith_div_f32(496f, -257f));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_1 {
    global0 = array<vec3<bool>, 10>();
    var var_0 = max(1u << (min(~(~arg_2.x), ~(~arg_3.a.b.x)) % 32u), ~1u);
    let var_1 = arg_3;
    var_0 = u_input.a.x;
    var var_2 = max(~vec2<u32>(abs(firstLeadingBit(1u)), abs(0u)), select(vec2<u32>(arg_3.a.a, 1u), ~var_1.a.b, func_3(Struct_2(func_2(-489f).a), arg_3).a.c.zz));
    return func_3(var_1, func_3(func_3(Struct_2(Struct_1(56242u, vec2<u32>(var_1.a.a, var_1.a.b.x), vec4<bool>(true, false, arg_1.x, arg_3.a.c.x))), var_1), Struct_2(func_3(Struct_2(arg_3.a), func_2(771f)).a))).a;
}

fn func_1(arg_0: bool) -> i32 {
    global0 = array<vec3<bool>, 10>();
    var var_0 = Struct_2(func_4(4294967295u > (u_input.a.x | ~13492u), !select(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, false, true), arg_0), select(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(22354u, 10u)], arg_0), true), u_input.a.yz, func_3(Struct_2(Struct_1(u_input.a.x, vec2<u32>(u_input.a.x, 4294967295u), vec4<bool>(true, arg_0, false, arg_0))), func_2(_wgslsmith_f_op_f32(473f - 535f)))));
    var var_1 = _wgslsmith_clamp_vec4_i32(~firstTrailingBit(vec4<i32>(-5124i, countOneBits(-1i), i32(-1i) * -4112i, u_input.b)), vec4<i32>(7306i, 40924i, -(u_input.b | u_input.b), u_input.c.x), -vec4<i32>(~(-6263i), u_input.c.x, u_input.c.x >> (42689u % 32u), -(36773i >> (1u % 32u))));
    var_0 = func_3(Struct_2(func_4(any(var_0.a.c.xx), func_3(func_2(532f), Struct_2(Struct_1(0u, vec2<u32>(var_0.a.b.x, var_0.a.b.x), var_0.a.c))).a.c.xyz, vec2<u32>(abs(46670u), ~var_0.a.b.x), func_3(func_3(Struct_2(var_0.a), Struct_2(Struct_1(1u, vec2<u32>(66864u, 0u), vec4<bool>(false, true, arg_0, var_0.a.c.x)))), Struct_2(var_0.a)))), Struct_2(func_3(Struct_2(func_4(arg_0, vec3<bool>(var_0.a.c.x, var_0.a.c.x, false), vec2<u32>(var_0.a.a, u_input.a.x), Struct_2(var_0.a))), Struct_2(func_3(Struct_2(Struct_1(var_0.a.b.x, vec2<u32>(var_0.a.a, 1u), var_0.a.c)), Struct_2(Struct_1(0u, vec2<u32>(u_input.a.x, 24964u), vec4<bool>(var_0.a.c.x, var_0.a.c.x, true, var_0.a.c.x)))).a)).a));
    let var_2 = 12717u;
    return _wgslsmith_div_i32(abs(i32(-1i) * -var_1.x) | -2147483647i, u_input.c.x & _wgslsmith_add_i32(firstTrailingBit(0i), 1i));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec3<u32>) -> bool {
    var var_0 = ~u_input.a.x;
    var var_1 = u_input.a.x;
    let var_2 = u_input.a;
    var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 18944u), arg_2, arg_2 ^ _wgslsmith_div_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, var_2.x), var_2)), vec3<u32>(var_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, 22150u, 34764u) ^ vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_2.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.x, 1u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, var_2.x, 71637u, 0u), vec4<u32>(arg_2.x, 25868u, 5414u, 0u))), ~(~arg_2.x))), ~(arg_2 | firstTrailingBit(firstTrailingBit(arg_2))));
    let var_3 = (func_1(true) >= ~u_input.b) || false;
    return var_3 || (true & func_4(var_3, global0[_wgslsmith_index_u32(u_input.a.x, 10u)], vec2<u32>(var_2.x, countOneBits(23224u)), Struct_2(Struct_1(var_2.x, vec2<u32>(17578u, var_2.x), vec4<bool>(var_3, true, false, false)))).c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!(_wgslsmith_f_op_f32(f32(-1f) * -1640f) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -367f)))), !(!any(vec3<bool>(false, true, true))), true, select(func_5(u_input.c, vec3<i32>(func_1(false), u_input.c.x, 56400i), u_input.a), true, func_4(false, global0[_wgslsmith_index_u32(1u, 10u)], ~u_input.a.zy, Struct_2(func_3(Struct_2(Struct_1(27015u, u_input.a.yz, vec4<bool>(false, false, true, false))), Struct_2(Struct_1(u_input.a.x, u_input.a.xx, vec4<bool>(false, true, false, false)))).a)).c.x));
    var var_1 = 10456u <= (~(~u_input.a.x & 34856u) & 1u);
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(1u, u_input.a.x, u_input.a.x), u_input.a.x), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), ~u_input.a.yy) << ((u_input.a.yy | select(u_input.a.xy, vec2<u32>(u_input.a.x, 4294967295u), var_0.x)) % vec2<u32>(32u)), select(!(!vec4<bool>(var_0.x, var_0.x, true, false)), vec4<bool>(var_0.x, select(false, var_0.x, true), var_0.x, var_0.x), select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(true, true, true, var_0.x), var_0.x && true))));
    var var_3 = 80480u;
    let var_4 = Struct_3(func_2(214f), max(_wgslsmith_dot_vec4_u32(firstTrailingBit(min(vec4<u32>(43959u, 15854u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, var_2.a.b.x, 5498u, 43004u))), ~vec4<u32>(u_input.a.x, var_2.a.a, u_input.a.x, var_2.a.b.x) & firstTrailingBit(vec4<u32>(u_input.a.x, 54430u, 1926u, 37574u))), countOneBits(u_input.a.x)), func_2(_wgslsmith_f_op_f32(-1112f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-805f))))).a);
    let var_5 = func_4(true, var_0.wxz, vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_4.c.b, vec2<u32>(u_input.a.x, var_4.c.a)), ~var_2.a.a) ^ 1u), Struct_2(func_4(var_4.a.a.c.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, var_2.a.a) >> (var_2.a.a % 32u), 10u)], var_4.a.a.b, var_4.a))).c.x;
    var var_6 = func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1348f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-330f, 1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(37651u, max(abs(select(vec4<u32>(45947u, 0u, 4294967295u, 0u), vec4<u32>(var_4.a.a.a, var_6.a.b.x, 64381u, var_4.b), true)) ^ firstTrailingBit(vec4<u32>(1u, 4787u, u_input.a.x, var_2.a.a)), reverseBits(vec4<u32>(var_2.a.a, u_input.a.x, firstLeadingBit(u_input.a.x), var_2.a.a))));
}

