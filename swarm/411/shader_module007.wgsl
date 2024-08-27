struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(5675u, 1u, 159u), Struct_1(true, -60264i, vec4<bool>(false, true, false, false), vec3<bool>(true, true, false)), vec4<f32>(-1000f, 307f, -1097f, 1024f), Struct_1(true, -7859i, vec4<bool>(false, false, false, false), vec3<bool>(false, true, false)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> u32 {
    global0 = Struct_2(~max(~arg_1.wyw, _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 0u, 4294967295u), select(vec3<u32>(arg_1.x, 0u, arg_3.x), vec3<u32>(global0.a.x, arg_1.x, 37608u), false))), Struct_1(arg_2.c.x, -1i, global0.d.c, !(!select(arg_2.d, vec3<bool>(false, global0.b.d.x, arg_2.d.x), false))), _wgslsmith_f_op_vec4_f32(abs(global0.c)), Struct_1(true, -2147483647i, vec4<bool>(arg_2.c.x, true, global0.d.a, false), arg_2.c.wzx));
    let var_0 = ~_wgslsmith_add_i32(u_input.d, _wgslsmith_mult_i32(0i, u_input.c.x));
    var var_1 = vec2<i32>(-19087i, -1i);
    var_1 = vec2<i32>(_wgslsmith_add_i32(u_input.a.x, ~abs(firstLeadingBit(34352i))), -1208i);
    let var_2 = false;
    return global0.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: vec2<bool>) -> Struct_2 {
    global0 = arg_0;
    global0 = arg_0;
    return Struct_2(~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x, arg_0.a.x), 4294967295u), func_3(_wgslsmith_f_op_vec3_f32(-global0.c.xww), u_input.b | u_input.b, global0.d, vec3<u32>(u_input.b.x, u_input.b.x, 0u) << (arg_0.a % vec3<u32>(32u))), _wgslsmith_div_u32(1u, _wgslsmith_add_u32(34777u, arg_0.a.x))), Struct_1(global0.a.x >= u_input.e, global0.b.b, !(!(!vec4<bool>(arg_3.x, false, arg_3.x, false))), !select(arg_0.d.c.zxz, arg_0.b.d, true)), vec4<f32>(-1036f, arg_0.c.x, 1327f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x + 877f) * global0.c.x) + global0.c.x)), Struct_1(any(vec2<bool>(u_input.e != 0u, !global0.b.a)), arg_2.x, select(vec4<bool>(!arg_3.x, true, !global0.b.c.x, !arg_0.d.d.x), global0.b.c, select(select(vec4<bool>(true, arg_3.x, global0.b.c.x, false), global0.d.c, vec4<bool>(global0.d.a, true, arg_3.x, false)), vec4<bool>(true, true, true, true), arg_0.c.x > 1945f)), select(!vec3<bool>(arg_3.x, arg_0.b.c.x, global0.d.d.x), vec3<bool>(!global0.b.a, global0.d.d.x, any(vec4<bool>(true, global0.d.c.x, global0.b.a, arg_3.x))), select(vec3<bool>(true, global0.d.d.x, false), select(vec3<bool>(arg_3.x, true, arg_3.x), vec3<bool>(false, false, false), arg_0.d.d), select(vec3<bool>(arg_3.x, false, global0.b.a), global0.d.c.yxx, arg_0.d.a)))));
}

fn func_1() -> Struct_2 {
    global0 = func_2(Struct_2(abs(_wgslsmith_sub_vec3_u32(u_input.b.zxy, ~global0.a)), Struct_1(!(u_input.c.x < 1i), -global0.b.b << (u_input.e % 32u), !(!global0.d.c), !select(vec3<bool>(global0.b.c.x, false, global0.d.c.x), vec3<bool>(false, global0.b.d.x, global0.b.c.x), global0.b.a)), global0.c, global0.d), countOneBits(select(vec3<i32>(u_input.d, 1i, 2147483647i), u_input.c, global0.b.c.yyw) ^ vec3<i32>(-41030i, _wgslsmith_mod_i32(u_input.d, u_input.c.x), ~global0.d.b)), u_input.a, !(!vec2<bool>(any(vec4<bool>(global0.d.c.x, global0.b.a, false, global0.d.a)), true)));
    let var_0 = all(global0.d.c.wz);
    global0 = func_2(func_2(func_2(func_2(Struct_2(u_input.b.wzy, Struct_1(var_0, 1i, vec4<bool>(global0.b.a, true, var_0, var_0), vec3<bool>(global0.d.a, global0.b.d.x, false)), vec4<f32>(730f, global0.c.x, global0.c.x, global0.c.x), global0.d), u_input.c, u_input.c, select(global0.b.d.xx, vec2<bool>(var_0, var_0), global0.b.c.yy)), u_input.a, _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.d, global0.d.b), -vec3<i32>(1i, 15365i, 31i)), !(!global0.d.c.zy)), vec3<i32>(i32(-1i) * -u_input.a.x, 0i | min(u_input.a.x, u_input.c.x), _wgslsmith_add_i32(45523i, max(1i, 0i))), abs(~firstTrailingBit(vec3<i32>(global0.b.b, u_input.d, global0.d.b))), select(!(!global0.b.d.xx), !global0.b.d.xx, global0.b.d.zx)), -vec3<i32>(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, -global0.d.b), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.d.b, global0.d.b, 1i), ~u_input.c), ~_wgslsmith_div_i32(u_input.a.x, -23800i)), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(~_wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(-2147483647i, u_input.c.x, u_input.a.x)), vec3<i32>(-1i) * -vec3<i32>(20727i, 1i, u_input.a.x)), vec3<i32>(-4453i, u_input.a.x, _wgslsmith_clamp_i32(-15622i, global0.d.b, firstLeadingBit(u_input.d)))), !global0.d.c.yx);
    var var_1 = Struct_2(u_input.b.wzx, func_2(func_2(func_2(Struct_2(vec3<u32>(u_input.e, 0u, 13005u), Struct_1(true, 0i, vec4<bool>(var_0, false, var_0, var_0), global0.d.c.yyy), vec4<f32>(global0.c.x, -1085f, global0.c.x, 1000f), Struct_1(false, -34133i, vec4<bool>(true, false, true, var_0), vec3<bool>(global0.b.a, true, global0.d.d.x))), vec3<i32>(-2147483647i, 1i, global0.d.b), u_input.a, !vec2<bool>(var_0, true)), vec3<i32>(global0.b.b, 0i, firstLeadingBit(u_input.a.x)), u_input.a, global0.b.d.xy), _wgslsmith_add_vec3_i32(~u_input.c, -vec3<i32>(global0.d.b, u_input.d, 0i)), firstLeadingBit(select(~vec3<i32>(-1i, -2147483647i, 1i), u_input.c, any(vec4<bool>(true, false, var_0, true)))), vec2<bool>(all(vec2<bool>(global0.d.c.x, global0.b.d.x)), global0.b.a)).d, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -2233f), global0.c.x, func_2(func_2(Struct_2(vec3<u32>(u_input.b.x, 1u, u_input.e), Struct_1(true, u_input.c.x, global0.d.c, vec3<bool>(true, false, global0.b.c.x)), vec4<f32>(713f, -565f, global0.c.x, -2491f), global0.d), u_input.c, u_input.c, vec2<bool>(var_0, var_0)), u_input.c, ~vec3<i32>(-1i, u_input.c.x, u_input.a.x), global0.d.c.yz).c.x) - vec4<f32>(1391f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.c.x, _wgslsmith_f_op_f32(abs(-1499f)))), func_2(Struct_2(vec3<u32>(u_input.e, _wgslsmith_clamp_u32(6468u, u_input.e, global0.a.x), global0.a.x >> (38358u % 32u)), Struct_1(true, func_2(Struct_2(u_input.b.www, global0.b, vec4<f32>(-951f, 447f, 331f, -416f), global0.b), vec3<i32>(u_input.d, global0.d.b, 2147483647i), vec3<i32>(u_input.d, -23610i, 14857i), global0.d.d.xy).b.b, global0.b.c, vec3<bool>(true, global0.b.a, var_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(251f, 525f, global0.c.x, 2549f), global0.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-869f, 1003f, 980f, -709f))), Struct_1(var_0 && true, global0.d.b, vec4<bool>(var_0, false, var_0, var_0), global0.d.d)), reverseBits(select(u_input.c, vec3<i32>(global0.d.b, 0i, u_input.d), vec3<bool>(global0.d.c.x, var_0, true))), countOneBits(~(-u_input.a)), select(global0.d.d.zx, global0.b.d.xy, vec2<bool>(true, true))).b);
    var_1 = Struct_2(func_2(func_2(Struct_2(max(u_input.b.xzw, u_input.b.xxx), global0.b, _wgslsmith_f_op_vec4_f32(global0.c + var_1.c), global0.d), _wgslsmith_mod_vec3_i32(vec3<i32>(13593i, -49519i, u_input.c.x), u_input.c), vec3<i32>(global0.d.b, _wgslsmith_mod_i32(var_1.d.b, 0i), u_input.d), vec2<bool>(var_0, true)), u_input.a, u_input.a, vec2<bool>(true, true)).a, Struct_1(false, global0.d.b, !var_1.b.c, !var_1.b.d), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c.x))), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -586f), var_1.c.x), func_2(func_2(func_2(Struct_2(vec3<u32>(global0.a.x, 4294967295u, u_input.e), var_1.b, global0.c, Struct_1(var_1.b.d.x, -1i, vec4<bool>(false, global0.d.c.x, false, var_1.d.c.x), global0.b.d)), vec3<i32>(u_input.c.x, -61037i, 1i), ~vec3<i32>(-53904i, global0.d.b, var_1.d.b), global0.b.c.zz), firstLeadingBit(-u_input.c), -vec3<i32>(u_input.d, 34665i, u_input.a.x), !func_2(Struct_2(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), var_1.b, var_1.c, Struct_1(false, global0.b.b, var_1.d.c, vec3<bool>(true, true, var_0))), u_input.a, u_input.a, global0.d.c.xx).b.d.zx), u_input.a | u_input.c, -(~u_input.c), vec2<bool>(var_0, var_1.b.c.x)).d);
    return Struct_2(~(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, 0u, global0.a.x), var_1.a))), var_1.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(global0.c)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(var_1.c)))))), !select(true, true, true))), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = Struct_2(vec3<u32>(u_input.b.x, ~_wgslsmith_sub_u32(~u_input.b.x, func_3(global0.c.xzz, vec4<u32>(u_input.b.x, u_input.e, 74248u, 42939u), Struct_1(global0.b.a, 1i, vec4<bool>(true, global0.d.a, global0.b.c.x, false), vec3<bool>(true, global0.d.d.x, false)), vec3<u32>(u_input.e, 0u, global0.a.x))), firstLeadingBit(4294967295u)), Struct_1(false, global0.d.b, global0.d.c, vec3<bool>(any(vec2<bool>(true, global0.d.c.x)), !(u_input.c.x != -1i), global0.d.c.x)), vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), -230f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-219f - -621f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-815f)) + _wgslsmith_f_op_f32(f32(-1f) * -222f)))), global0.b);
    global0 = func_1();
    global0 = func_1();
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b.x));
}

