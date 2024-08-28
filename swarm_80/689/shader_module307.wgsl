struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
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

var<private> global0: vec3<u32>;

var<private> global1: array<f32, 10>;

var<private> global2: array<u32, 10> = array<u32, 10>(4294967295u, 0u, 27454u, 1u, 4294967295u, 1456u, 11884u, 1u, 2571u, 18153u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    let var_0 = -u_input.b << (global0.x % 32u);
    var var_1 = countOneBits(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(arg_0, ~select(vec3<u32>(arg_0.x, u_input.d.x, u_input.d.x), u_input.d, true)), countOneBits(vec3<u32>(_wgslsmith_mult_u32(38836u, 1u), ~23973u, global0.x))));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~countOneBits(0u), 10u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1313f + -1722f))), global1[_wgslsmith_index_u32(4294967295u, 10u)])), global1[_wgslsmith_index_u32(u_input.d.x >> (~(~1244u) % 32u), 10u)], !(!select(true, arg_0.x == 0u, any(vec3<bool>(true, true, false))))));
    let var_3 = 1068f;
    let var_4 = !select(vec4<bool>(true, true && any(vec3<bool>(true, false, false)), any(vec3<bool>(false, false, true)), select(true, all(vec4<bool>(false, false, true, true)), true)), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true)), true);
    return any(!vec3<bool>(var_4.x, true, !(!var_4.x)));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> bool {
    let var_0 = true;
    var var_1 = var_0;
    var var_2 = u_input.a != 27036i;
    let var_3 = 1799f;
    global2 = array<u32, 10>();
    return any(vec3<bool>(func_3(u_input.d), false, !(-28029i != min(u_input.a, u_input.a))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_4) -> Struct_4 {
    global1 = array<f32, 10>();
    var var_0 = countOneBits(27099i);
    var_0 = u_input.a;
    global1 = array<f32, 10>();
    let var_1 = arg_2;
    return Struct_4(arg_0.a, arg_2.b);
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: bool, arg_3: vec2<u32>) -> u32 {
    var var_0 = func_4(Struct_1(_wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), u_input.d.yz, global0.yz)), reverseBits(vec2<u32>(12034u, 63509u))), global0.x), vec3<bool>(!func_2(_wgslsmith_f_op_f32(arg_0.c.a - -728f), _wgslsmith_f_op_vec4_f32(vec4<f32>(604f, -139f, global1[_wgslsmith_index_u32(global0.x, 10u)], -162f) + vec4<f32>(-844f, 1331f, 136f, -1000f))), false, true), Struct_4(global2[_wgslsmith_index_u32(0u, 10u)], arg_0.c.d));
    let var_1 = select(!vec2<bool>(any(vec3<bool>(false, arg_2, arg_2)) || true, arg_2), !select(select(!vec2<bool>(arg_2, true), !vec2<bool>(arg_2, arg_2), true), select(vec2<bool>(false, arg_2), select(vec2<bool>(true, true), vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_2)), true), vec2<bool>(func_3(vec3<u32>(2685u, u_input.d.x, global0.x)), 2147483647i != arg_1)), true);
    global0 = firstTrailingBit(vec3<u32>(_wgslsmith_clamp_u32(firstLeadingBit(var_0.b.b), ~4294967295u, global0.x), ~(~(u_input.d.x >> (1555u % 32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.d.x, 4294967295u << (u_input.d.x % 32u), _wgslsmith_mod_u32(14285u, global2[_wgslsmith_index_u32(4779u, 10u)]), arg_3.x), firstLeadingBit(firstTrailingBit(vec4<u32>(14009u, 0u, 1u, arg_3.x))))));
    global2 = array<u32, 10>();
    let var_2 = vec4<u32>(_wgslsmith_sub_u32(arg_3.x, reverseBits(~arg_3.x | var_0.a)), _wgslsmith_add_u32(_wgslsmith_mult_u32(countOneBits(~37581u), u_input.d.x), 24811u), 2777u, ~19846u);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstTrailingBit(vec3<u32>(min(func_1(Struct_3(vec4<i32>(-2768i, u_input.a, u_input.c, u_input.e.x), Struct_1(u_input.d.x, global0.x), Struct_2(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 10u)], 10u)], -67582i, Struct_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 10u)], 10u)], u_input.d.x), Struct_1(u_input.d.x, 0u), Struct_1(global2[_wgslsmith_index_u32(81685u, 10u)], u_input.d.x)), Struct_1(global0.x, 65366u)), -26664i, true, _wgslsmith_div_vec2_u32(global0.yy, vec2<u32>(global0.x, 31011u))), global2[_wgslsmith_index_u32(~(~1u), 10u)]), ~23406u, global2[_wgslsmith_index_u32(~12216u, 10u)]));
    global2 = array<u32, 10>();
    var var_0 = true;
    let var_1 = ~min(firstLeadingBit(firstLeadingBit(~vec4<i32>(u_input.c, u_input.b, 1i, u_input.c))), ~vec4<i32>(u_input.e.x | u_input.b, u_input.e.x ^ 67624i, u_input.c, firstLeadingBit(u_input.b)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 10u)]), global1[_wgslsmith_index_u32(21168u, 10u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -141f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(6149u, 10u)])), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(1u, 10u)], 1u), 10u)], 10u)])))), global1[_wgslsmith_index_u32(~1u, 10u)]);
    var var_3 = func_4(Struct_1(u_input.d.x, 51368u), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), func_4(func_4(func_4(func_4(Struct_1(u_input.d.x, 4294967295u), vec3<bool>(true, false, true), Struct_4(u_input.d.x, Struct_1(57727u, global2[_wgslsmith_index_u32(global0.x, 10u)]))).b, vec3<bool>(false, true, true), Struct_4(global2[_wgslsmith_index_u32(u_input.d.x, 10u)], Struct_1(4294967295u, 20525u))).b, select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), var_1.x <= 1i), func_4(func_4(Struct_1(u_input.d.x, 59968u), vec3<bool>(false, true, true), Struct_4(59945u, Struct_1(u_input.d.x, u_input.d.x))).b, select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), func_4(Struct_1(u_input.d.x, global0.x), vec3<bool>(false, false, false), Struct_4(global2[_wgslsmith_index_u32(25873u, 10u)], Struct_1(0u, 21193u))))).b, vec3<bool>(true, true, any(vec3<bool>(true, false, false))), Struct_4(global2[_wgslsmith_index_u32(~59873u << (global0.x % 32u), 10u)], Struct_1(global0.x, global0.x >> (global2[_wgslsmith_index_u32(26005u, 10u)] % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(firstLeadingBit(var_1.xwy >> (vec3<u32>(68112u, 4294967295u, global2[_wgslsmith_index_u32(1u, 10u)]) % vec3<u32>(32u))), -countOneBits(var_1.xzx)));
}

