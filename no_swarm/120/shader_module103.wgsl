struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
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

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(-26114i, 50607i), 49901i, vec4<u32>(33612u, 1u, 6562u, 0u), -92940i, 1i));

var<private> global1: array<bool, 30> = array<bool, 30>(true, false, false, false, false, false, true, false, true, true, false, true, true, false, true, false, true, false, false, true, true, false, true, false, false, true, true, true, false, false);

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    global1 = array<bool, 30>();
    global1 = array<bool, 30>();
    let var_0 = -702f;
    let var_1 = _wgslsmith_f_op_f32(-var_0);
    var var_2 = (~global0.a.c.yz | vec2<u32>(global0.a.c.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(global2.a.c, vec4<u32>(global0.a.c.x, 42159u, 23334u, 0u)), abs(global2.a.c.x)))) & vec2<u32>(~0u, 0u);
    return global2.a;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = 4294967295u;
    global0 = Struct_2(Struct_1(u_input.a.yy << (global2.a.c.wx % vec2<u32>(32u)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.d, arg_1.a.x, global2.a.d, 17465i), -vec4<i32>(var_0.d, 20644i, -24923i, var_0.a.x)), select(global0.a.c, ~_wgslsmith_add_vec4_u32(global2.a.c, vec4<u32>(global0.a.c.x, 0u, 61212u, global2.a.c.x)), !(!vec4<bool>(true, false, global1[_wgslsmith_index_u32(974u, 30u)], global1[_wgslsmith_index_u32(global2.a.c.x, 30u)]))), 0i, 0i & min(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(global0.a.a.x, arg_1.b, -1i)), var_0.b)));
    var var_2 = 0u;
    var var_3 = vec2<i32>(~select(firstTrailingBit(4300i & arg_1.b), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.e, global2.a.d, arg_1.b), vec3<i32>(-542i, u_input.a.x, global0.a.b)), true), 11717i);
    return Struct_2(arg_1);
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = func_3(~reverseBits(-56213i), func_2());
    global1 = array<bool, 30>();
    var var_0 = (min(reverseBits(-global0.a.d), 58199i) | 1i) <= _wgslsmith_mod_i32(~(-func_3(global2.a.e, Struct_1(global0.a.a, global0.a.b, vec4<u32>(u_input.b.x, 28913u, 0u, u_input.b.x), u_input.a.x, global0.a.b)).a.e), global2.a.e);
    let var_1 = -809i;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(1315f, 352f)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global0.a.c, vec4<u32>(arg_0, arg_0, 32818u, 1u)), 30u)])))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1434f, -1000f)) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -463f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1275f - -110f) - _wgslsmith_f_op_f32(ceil(432f))) - _wgslsmith_f_op_f32(471f + _wgslsmith_f_op_f32(-1f))));
    return func_3(~global2.a.a.x, global2.a).a;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_2(func_1(~1u));
    global2 = func_3(global2.a.a.x, func_3(~(-32648i), Struct_1(vec2<i32>(u_input.a.x, global2.a.d) & _wgslsmith_div_vec2_i32(vec2<i32>(-47002i, -59734i), var_0.a.a), -41618i, vec4<u32>(1u, var_0.a.c.x, _wgslsmith_dot_vec3_u32(global2.a.c.xxy, global0.a.c.yyx), abs(global0.a.c.x)), 1i, global0.a.a.x)).a);
    let var_1 = func_3(arg_1.a.x | 49064i, func_2()).a;
    var var_2 = arg_0;
    global1 = array<bool, 30>();
    return Struct_2(Struct_1(abs(~vec2<i32>(-26836i, 22509i)), ~abs(global0.a.d), countOneBits(vec4<u32>(1u, 1u, ~var_1.c.x, ~global0.a.c.x)), -2147483647i, 4832i));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    var var_0 = global2.a.c.ww;
    global0 = Struct_2(global2.a);
    var var_1 = ~((~(~vec4<u32>(u_input.b.x, global2.a.c.x, 72803u, 0u)) << (vec4<u32>(1u, _wgslsmith_clamp_u32(arg_2.c.x, global2.a.c.x, global2.a.c.x), 16988u, arg_2.c.x >> (4294967295u % 32u)) % vec4<u32>(32u))) & min(firstTrailingBit(countOneBits(global0.a.c)), ~arg_1.a.c));
    let var_2 = Struct_2(Struct_1(~(~(arg_3.a.a ^ arg_1.a.a)), -1i, vec4<u32>(global2.a.c.x, ~arg_1.a.c.x, arg_1.a.c.x, arg_3.a.c.x), global2.a.e, global2.a.a.x));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 30>();
    var var_0 = func_5(select(u_input.a.x, -u_input.a.x, false), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1212f + -1108f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -133f), -1000f)), func_1(_wgslsmith_mult_u32(global2.a.c.x, 1u)), max(~global0.a.c.x, 26696u) == ~u_input.b.x, select(!(!vec2<bool>(global1[_wgslsmith_index_u32(65463u, 30u)], global1[_wgslsmith_index_u32(0u, 30u)])), vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(89330u, u_input.b.x, 4294967295u), 30u)], global1[_wgslsmith_index_u32(~u_input.b.x, 30u)]), vec2<bool>(true, false))), global0.a, func_3(2147483647i, Struct_1(select(global2.a.a, -vec2<i32>(-2147483647i, global0.a.d), true), (global2.a.e >> (4294967295u % 32u)) ^ select(-3886i, 0i, false), ~max(global0.a.c, vec4<u32>(0u, global2.a.c.x, u_input.b.x, global2.a.c.x)), abs(-21243i), ~global2.a.d)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-309f))));
    let var_2 = select(func_3(2147483647i, global2.a).a.c.xwz, func_2().c.zzx, _wgslsmith_sub_u32(~var_0.a.c.x, func_5(8173i, Struct_2(Struct_1(vec2<i32>(u_input.a.x, -646i), u_input.a.x, vec4<u32>(global0.a.c.x, 0u, global2.a.c.x, global2.a.c.x), -38873i, -15684i)), Struct_1(vec2<i32>(-8736i, var_0.a.d), 26077i, vec4<u32>(4294967295u, u_input.b.x, 1290u, 0u), 6676i, var_0.a.b), func_3(u_input.a.x, var_0.a)).a.c.x) <= _wgslsmith_dot_vec3_u32(vec3<u32>(~global2.a.c.x, 0u, 17733u), (vec3<u32>(69132u, global2.a.c.x, 55828u) << (global2.a.c.yzy % vec3<u32>(32u))) & (global2.a.c.xxy & global0.a.c.zwx)));
    var var_3 = _wgslsmith_mult_u32(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(global0.a.c.x, 59533u) ^ 1u, ~84839u), global2.a.c.x);
    var var_4 = var_0.a.c.yx;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_add_i32(reverseBits(1i), global2.a.b), 0i | -global2.a.e, _wgslsmith_sub_i32(-2147483647i, -2147483647i)) | min(-_wgslsmith_div_vec3_i32(u_input.a, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(global2.a.b, global0.a.a.x, u_input.a.x), u_input.a) ^ -vec3<i32>(18989i, -40021i, 0i)));
}

