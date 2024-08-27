struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(64400u, vec2<u32>(70586u, 195958u), vec3<i32>(1i, 2147483647i, -39888i), vec3<i32>(-19769i, 824i, 3382i), vec4<bool>(true, false, false, true)), Struct_1(57054u, vec2<u32>(1u, 0u), vec3<i32>(1i, -46572i, 120i), vec3<i32>(i32(-2147483648), -1i, 0i), vec4<bool>(false, false, false, false)), Struct_1(0u, vec2<u32>(4294967295u, 0u), vec3<i32>(0i, 26972i, 45291i), vec3<i32>(-386i, -22333i, 0i), vec4<bool>(true, false, true, false)), Struct_1(0u, vec2<u32>(45787u, 13607u), vec3<i32>(0i, 26967i, 2147483647i), vec3<i32>(-19518i, -20372i, 0i), vec4<bool>(false, true, false, true)), Struct_1(4294967295u, vec2<u32>(8790u, 0u), vec3<i32>(1i, -75107i, 13866i), vec3<i32>(53440i, -1i, 41835i), vec4<bool>(false, false, true, true)), Struct_1(4294967295u, vec2<u32>(1u, 25336u), vec3<i32>(i32(-2147483648), -873i, 1i), vec3<i32>(5868i, -73i, 24530i), vec4<bool>(true, false, true, true)), Struct_1(0u, vec2<u32>(31482u, 0u), vec3<i32>(1i, 0i, -1i), vec3<i32>(-1i, 24336i, 19310i), vec4<bool>(true, false, false, true)), Struct_1(47338u, vec2<u32>(0u, 60638u), vec3<i32>(-25474i, -51142i, 105i), vec3<i32>(i32(-2147483648), -17243i, -60001i), vec4<bool>(true, false, true, true)), Struct_1(4294967295u, vec2<u32>(10671u, 0u), vec3<i32>(0i, 10423i, 0i), vec3<i32>(-33117i, -795i, 47232i), vec4<bool>(false, false, false, false)), Struct_1(25779u, vec2<u32>(1u, 26015u), vec3<i32>(34473i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-48515i, -26639i, -3680i), vec4<bool>(false, false, true, true)), Struct_1(4294967295u, vec2<u32>(4294967295u, 4294967295u), vec3<i32>(-33971i, 27673i, 76458i), vec3<i32>(-24484i, i32(-2147483648), -78706i), vec4<bool>(false, true, true, true)), Struct_1(25753u, vec2<u32>(17116u, 1u), vec3<i32>(i32(-2147483648), -21085i, 23337i), vec3<i32>(i32(-2147483648), -1i, -1i), vec4<bool>(false, false, true, true)), Struct_1(4294967295u, vec2<u32>(4294967295u, 93335u), vec3<i32>(-37442i, 2147483647i, 0i), vec3<i32>(2147483647i, 25802i, -59114i), vec4<bool>(false, false, false, true)), Struct_1(0u, vec2<u32>(263u, 1u), vec3<i32>(-27999i, 1i, 3454i), vec3<i32>(0i, -6033i, 48440i), vec4<bool>(true, false, true, false)));

var<private> global1: array<vec2<i32>, 27>;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> u32 {
    global0 = array<Struct_1, 14>();
    return arg_0.x >> (reverseBits(1u) % 32u);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    let var_0 = -2147483647i;
    global2 = global0[_wgslsmith_index_u32(u_input.a.x, 14u)];
    let var_1 = select(~1u, global2.a, !(select(~u_input.a.x, func_3(vec4<u32>(7529u, u_input.a.x, global2.a, 7648u), arg_0), true) <= ~72686u));
    var var_2 = vec4<f32>(-1370f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-763f, 903f) - _wgslsmith_f_op_f32(f32(-1f) * -746f)) * -2021f)), _wgslsmith_f_op_f32(trunc(-522f)), _wgslsmith_f_op_f32(f32(-1f) * -1458f));
    global1 = array<vec2<i32>, 27>();
    return arg_0.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: bool, arg_3: i32) -> Struct_1 {
    var var_0 = vec4<i32>(-1i) * -vec4<i32>(~(-15904i), 1i, reverseBits(-1i), abs(i32(-1i) * -2147483647i));
    var var_1 = Struct_1(u_input.a.x, vec2<u32>(_wgslsmith_div_u32(firstLeadingBit(4294967295u), ~global2.a), global2.b.x) & select(vec2<u32>(_wgslsmith_div_u32(u_input.a.x, 0u), 4294967295u), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(40154u, 4294967295u)), ~vec2<u32>(0u, 1u)), true), global2.d << (vec3<u32>(1u, 0u, 0u) % vec3<u32>(32u)), vec3<i32>(1i, ~arg_3, min(arg_0.x, firstTrailingBit(firstTrailingBit(-11504i)))), global2.e);
    global0 = array<Struct_1, 14>();
    let var_2 = any(vec2<bool>(true, true));
    var_1 = Struct_1(4294967295u, global2.b, arg_0, vec3<i32>(-3462i, ~arg_0.x, _wgslsmith_add_i32(-(arg_3 << (global2.b.x % 32u)), ~(-var_1.d.x))), select(vec4<bool>(true, true, any(vec3<bool>(true, global2.e.x, var_1.e.x)), false), !(!select(global2.e, global2.e, arg_2)), any(select(!vec2<bool>(global2.e.x, arg_2), global2.e.yy, false))));
    return global0[_wgslsmith_index_u32(func_3((firstTrailingBit(min(vec4<u32>(var_1.b.x, global2.a, global2.b.x, 0u), vec4<u32>(5835u, 11966u, 0u, 0u))) ^ vec4<u32>(1u, ~global2.a, 13704u, u_input.a.x ^ 0u)) & ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global2.a, u_input.a.x, 4294967295u, 124914u), vec4<u32>(9760u, var_1.b.x, 55152u, u_input.a.x))), Struct_2(-20153i, var_2)), 14u)];
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>) -> i32 {
    var var_0 = func_4(vec3<i32>(_wgslsmith_mod_i32(2147483647i, _wgslsmith_mod_i32(-48163i, func_2(arg_0, arg_0))), min(-global2.d.x, select(_wgslsmith_mult_i32(arg_0.a, arg_0.a), _wgslsmith_div_i32(global2.d.x, global2.d.x), true)), -56054i), select(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global2.c.zx | select(~global1[_wgslsmith_index_u32(81093u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)] << (vec2<u32>(1u, global2.b.x) % vec2<u32>(32u)), any(arg_1.xx)), select(!select(vec2<bool>(arg_0.b, global2.e.x), vec2<bool>(true, arg_0.b), global2.e.x), vec2<bool>(true, arg_0.a <= -67294i), !global2.e.wx)), !(!select(arg_0.b && false, true, !global2.e.x)), -arg_0.a);
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x << (~(~1u) % 32u), 4653u), _wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.b.x, var_0.a), vec2<u32>(u_input.a.x, 286u)), vec2<u32>(func_4(vec3<i32>(global2.d.x, arg_0.a, -4187i), vec2<i32>(15962i, 1i), arg_1.x, -1i).a << (~u_input.a.x % 32u), reverseBits(abs(77293u))))), 14u)];
    var var_1 = ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, ~_wgslsmith_dot_vec2_u32(var_0.b, vec2<u32>(7458u, var_0.a)), select(global2.b.x, 0u, any(global2.e.yx)), 1u), vec4<u32>(global2.a, 17393u, 0u, _wgslsmith_mod_u32(~52554u, 4294967295u)));
    let var_2 = !((~60760i << (_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a, 29077u), ~var_0.b) % 32u)) >= -24926i);
    global1 = array<vec2<i32>, 27>();
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global2.a, vec2<u32>(global2.a, ~(~97931u)) & vec2<u32>(0u, (21032u & u_input.a.x) | _wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.x, 0u, global2.a), vec3<u32>(22900u, u_input.a.x, u_input.a.x))), global2.c, _wgslsmith_sub_vec3_i32(select(vec3<i32>(-global2.c.x, func_1(Struct_2(-35552i, global2.e.x), vec4<bool>(global2.e.x, true, global2.e.x, global2.e.x)), 1i), vec3<i32>(func_2(Struct_2(global2.c.x, true), Struct_2(global2.d.x, global2.e.x)), global2.c.x & global2.c.x, global2.d.x), global2.e.x), vec3<i32>(global2.c.x << (_wgslsmith_mod_u32(1u, global2.a) % 32u), -43891i, ~global2.c.x)), global2.e);
    let var_1 = global2.e.yw;
    let var_2 = false;
    let var_3 = vec3<u32>(~(~firstLeadingBit(countOneBits(var_0.b.x))), 4294967295u, var_0.b.x);
    var var_4 = vec3<bool>(var_2 && !(!var_1.x), var_2, true);
    global0 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d ^ global2.d, ~(~_wgslsmith_sub_u32(global2.a, 60620u)) << (abs(global2.a) % 32u), 39150u, ~var_0.a);
}

