struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 5435u, 54226u, 4118u);

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<i32>(1i, 20656i, 45360i, 2147483647i), vec3<f32>(-1470f, 339f, 574f), true, -2030f), Struct_1(vec4<i32>(1i, 2147483647i, -51378i, -1i), vec3<f32>(1107f, 935f, 141f), true, -844f), Struct_1(vec4<i32>(37218i, 2147483647i, -1874i, 43802i), vec3<f32>(-1000f, -1519f, -1000f), true, -1000f), Struct_1(vec4<i32>(0i, 0i, 46518i, 27408i), vec3<f32>(426f, 426f, 1620f), true, -1000f), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -1i), vec3<f32>(-493f, -809f, 142f), false, 231f), Struct_1(vec4<i32>(-29615i, 21426i, 2147483647i, 8531i), vec3<f32>(757f, -889f, 1268f), false, 469f), Struct_1(vec4<i32>(2147483647i, -62144i, 2147483647i, -34742i), vec3<f32>(-423f, 1019f, 894f), true, 279f), Struct_1(vec4<i32>(-1i, 4033i, 46681i, 12309i), vec3<f32>(-841f, 155f, 416f), true, -507f), Struct_1(vec4<i32>(-24666i, -44283i, -27928i, -54813i), vec3<f32>(796f, -1000f, -1486f), true, 867f), Struct_1(vec4<i32>(1i, -1i, 2147483647i, i32(-2147483648)), vec3<f32>(-1825f, -1628f, 300f), false, -514f), Struct_1(vec4<i32>(1i, -1i, 12711i, 2147483647i), vec3<f32>(472f, 2358f, -1110f), true, -1148f), Struct_1(vec4<i32>(24464i, -29489i, 26238i, 1i), vec3<f32>(1177f, 535f, 2077f), false, 828f), Struct_1(vec4<i32>(-29967i, -3353i, -1i, 1i), vec3<f32>(166f, 148f, 195f), true, -241f), Struct_1(vec4<i32>(1i, 31604i, -1i, 1i), vec3<f32>(680f, -133f, 711f), true, -1290f), Struct_1(vec4<i32>(-15493i, 1i, 28655i, -1i), vec3<f32>(945f, -1652f, 210f), false, 569f), Struct_1(vec4<i32>(1i, -30977i, 2147483647i, 1i), vec3<f32>(-142f, -294f, -2878f), false, 1503f), Struct_1(vec4<i32>(0i, 2491i, -20431i, -7088i), vec3<f32>(180f, -711f, 2551f), false, 692f), Struct_1(vec4<i32>(54269i, 1i, -36481i, 59615i), vec3<f32>(202f, -370f, -217f), false, -354f), Struct_1(vec4<i32>(42851i, 0i, 33663i, 2797i), vec3<f32>(-1002f, -419f, 1867f), false, -1105f), Struct_1(vec4<i32>(-1i, i32(-2147483648), 1i, 0i), vec3<f32>(1714f, -1797f, 610f), true, -1014f));

var<private> global2: Struct_2;

var<private> global3: array<bool, 12> = array<bool, 12>(true, true, false, true, false, false, true, false, true, false, true, true);

var<private> global4: vec2<i32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(select(reverseBits(-49780i), 96775i, global2.a.d >= global2.a.d), -37591i), global2.c.x), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(global2.c, _wgslsmith_clamp_vec2_i32(global2.a.a.wz, abs(u_input.a.yx), vec2<i32>(global2.c.x, u_input.a.x))), -_wgslsmith_mult_vec2_i32(global2.a.a.zz, vec2<i32>(2231i, global4.x)), vec2<i32>(1i, ~1i)));
    global4 = _wgslsmith_mod_vec2_i32(-(vec2<i32>(2147483647i, 42758i) >> (~vec2<u32>(u_input.c, 0u) % vec2<u32>(32u))), vec2<i32>(var_0.x, ~(~global4.x))) & u_input.a.yx;
    return reverseBits(firstLeadingBit(vec4<u32>(~0u >> (_wgslsmith_mod_u32(global2.b, u_input.c) % 32u), 2420u << (_wgslsmith_div_u32(global2.b, global2.b) % 32u), 71u, global2.b)));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = select(vec2<bool>(any(select(vec3<bool>(global3[_wgslsmith_index_u32(global0.x, 12u)], arg_2.c, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), !global3[_wgslsmith_index_u32(global2.b, 12u)])), false), select(vec2<bool>(true, true), !vec2<bool>(arg_3.a.c, true), !arg_2.c), arg_3.a.c);
    global4 = arg_3.c;
    global4 = _wgslsmith_add_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.c.x, arg_2.a.x, -1i, arg_3.a.a.x), vec4<i32>(u_input.b, 13111i, 11305i, u_input.b)) >> (~u_input.c % 32u), -firstLeadingBit(-34521i)), vec2<i32>(~arg_3.c.x, abs(countOneBits(_wgslsmith_clamp_i32(arg_3.c.x, -9451i, 2147483647i)))));
    var var_1 = arg_3.a.b.xx;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(791f, 375f, arg_1))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, arg_2.d))), 954f, -1096f)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.b.x, 271f, -1548f)) * _wgslsmith_f_op_vec3_f32(-arg_3.a.b))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-608f, -1546f, arg_1))), vec3<bool>(global2.a.c, any(select(vec4<bool>(global2.a.c, false, true, true), vec4<bool>(true, global3[_wgslsmith_index_u32(global0.x, 12u)], global2.a.c, false), global3[_wgslsmith_index_u32(arg_0.x, 12u)])), var_0.x))));
    return vec2<i32>(_wgslsmith_div_i32(-4570i, 1i), max(_wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, global2.c.x, global4.x), global2.a.a.wzx, select(vec3<bool>(true, true, arg_2.c), vec3<bool>(false, var_0.x, false), true)), vec3<i32>(2147483647i, min(u_input.a.x, global2.c.x), 2147483647i)), arg_2.a.x));
}

fn func_2() -> vec4<bool> {
    global4 = countOneBits(func_4(abs(_wgslsmith_mod_vec4_u32(func_3(), _wgslsmith_div_vec4_u32(vec4<u32>(global2.b, 39109u, 4294967295u, global2.b), vec4<u32>(global0.x, global0.x, u_input.c, 0u)))), global2.a.b.x, global2.a, Struct_2(global2.a, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.b, global2.b, global2.b), vec3<u32>(u_input.c, u_input.c, global0.x)), ~global0.x), global2.a.a.xx)));
    global3 = array<bool, 12>();
    var var_0 = global2.a.b.xx;
    global0 = _wgslsmith_div_vec4_u32(vec4<u32>(0u, global0.x, 56553u, 16844u), _wgslsmith_clamp_vec4_u32(firstTrailingBit(max(vec4<u32>(4294967295u, global0.x, global2.b, global2.b), vec4<u32>(0u, u_input.c, 39035u, global0.x))), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, global0.x, global2.b, 25776u), ~vec4<u32>(0u, global2.b, 21471u, 4294967295u)), ~countOneBits(vec4<u32>(u_input.c, global0.x, global0.x, global2.b)) >> (~vec4<u32>(1u, u_input.c, 0u, 20534u) % vec4<u32>(32u))));
    var var_1 = var_0.x;
    return vec4<bool>(global2.a.c, any(select(!vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 12u)], false, true), vec4<bool>(false, all(vec3<bool>(false, global3[_wgslsmith_index_u32(50991u, 12u)], global3[_wgslsmith_index_u32(0u, 12u)])), !global2.a.c, !global3[_wgslsmith_index_u32(global2.b, 12u)]), global3[_wgslsmith_index_u32(41150u, 12u)])), true & (_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x * global2.a.d), _wgslsmith_f_op_f32(global2.a.b.x + -658f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-948f - -1440f) - var_0.x)), global2.a.c);
}

fn func_1(arg_0: Struct_2) -> f32 {
    global4 = vec2<i32>(u_input.b, global4.x);
    let var_0 = select(select(!func_2(), !vec4<bool>(all(vec3<bool>(global3[_wgslsmith_index_u32(27452u, 12u)], false, true)), global2.a.b.x >= global2.a.d, false, true), !(!all(vec3<bool>(true, global3[_wgslsmith_index_u32(arg_0.b, 12u)], arg_0.a.c)))), select(vec4<bool>(false & !global3[_wgslsmith_index_u32(global0.x, 12u)], true, global3[_wgslsmith_index_u32(0u, 12u)], _wgslsmith_clamp_u32(39641u, 4294967295u, global0.x) == ~arg_0.b), func_2(), select(!func_2(), !(!vec4<bool>(arg_0.a.c, arg_0.a.c, true, global2.a.c)), (u_input.b < 1i) & global3[_wgslsmith_index_u32(u_input.c, 12u)])), _wgslsmith_clamp_u32(13023u, ~global2.b, u_input.c) != arg_0.b);
    let var_1 = Struct_2(Struct_1(global2.a.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_0.a.b, global2.a.b))) * arg_0.a.b), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b.x + global2.a.b.x) * _wgslsmith_f_op_f32(step(-272f, 645f))), _wgslsmith_f_op_f32(-arg_0.a.d))), func_3().x, ~firstLeadingBit(-vec2<i32>(1965i, arg_0.a.a.x)) << (max(global0.xw, vec2<u32>(38376u, 35651u)) % vec2<u32>(32u)));
    global2 = Struct_2(var_1.a, ~_wgslsmith_mod_u32(0u, global0.x ^ firstLeadingBit(u_input.c)), ~vec2<i32>(0i, ~(-5080i & u_input.a.x)));
    global4 = firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(35121i, u_input.a.x), vec2<i32>(1i, 0i)), 1i | global4.x));
    return -1696f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(global2.a.a, global2.a.b, (~4294967295u >= firstTrailingBit(1u)) || (!global2.a.c & true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec4<i32>(-13512i, u_input.a.x, global2.c.x, -5638i), vec3<f32>(864f, -287f, 317f), global3[_wgslsmith_index_u32(global0.x, 12u)], -1000f), 1u, u_input.a.yy))))), _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(1u), reverseBits(~global0.x)), global0.yy), vec2<i32>(abs((global2.c.x & u_input.a.x) & 0i), 37469i));
    var var_1 = abs((-global2.c.x | -1i) << (_wgslsmith_sub_u32(51895u, ~var_0.b) % 32u)) & u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(625f, global2.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-620f, var_0.a.b.x)) + _wgslsmith_f_op_f32(abs(var_0.a.d)))), var_0.a.d), global2.b, 552f, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.a.b.x), -265f), vec2<f32>(_wgslsmith_f_op_f32(-1385f * global2.a.b.x), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.b.x), _wgslsmith_f_op_f32(var_0.a.d + _wgslsmith_f_op_f32(-global2.a.b.x)))));
}

