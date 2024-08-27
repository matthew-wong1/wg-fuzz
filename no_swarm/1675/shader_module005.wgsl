struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: bool,
    e: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_5 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_4,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(10576u, 216f, vec3<i32>(1i, 51752i, -1i)), 1u, Struct_1(28935u, 1513f, vec3<i32>(18190i, 0i, -23695i)), false, vec3<bool>(true, false, true));

var<private> global1: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(59605u, 17151u), vec2<u32>(26048u, 3739u), vec2<u32>(1u, 4294967295u), vec2<u32>(41777u, 1u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(106540u, 0u), vec2<u32>(0u, 0u), vec2<u32>(17340u, 13202u), vec2<u32>(16844u, 0u), vec2<u32>(1u, 43313u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 5280u), vec2<u32>(1u, 230u), vec2<u32>(100659u, 17230u), vec2<u32>(4294967295u, 1u), vec2<u32>(267u, 1u), vec2<u32>(58150u, 0u), vec2<u32>(1u, 26356u), vec2<u32>(13027u, 4294967295u), vec2<u32>(49601u, 1u), vec2<u32>(4294967295u, 10693u), vec2<u32>(11173u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(13697u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(34030u, 16403u), vec2<u32>(31778u, 40254u), vec2<u32>(11248u, 4356u));

var<private> global2: array<i32, 19> = array<i32, 19>(-32852i, -21294i, -1i, i32(-2147483648), -61635i, 14834i, 41995i, -13883i, -32696i, -16170i, 38094i, -43417i, 20961i, 42500i, 9310i, i32(-2147483648), 2147483647i, -6793i, 0i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: u32) -> u32 {
    global1 = array<vec2<u32>, 29>();
    global2 = array<i32, 19>();
    let var_0 = false;
    var var_1 = select(~abs(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(arg_0, 29u)], vec2<u32>(1u, arg_0))) >> (28816u % 32u), arg_0, ((arg_0 >= ~arg_0) && !(!global0.d)) || true);
    var_1 = 67341u;
    return 0u;
}

fn func_3(arg_0: bool) -> bool {
    global2 = array<i32, 19>();
    var var_0 = Struct_5(4282u, u_input.a.zz, Struct_1(_wgslsmith_sub_u32(global0.c.a, 0u), _wgslsmith_f_op_f32(select(global0.a.b, -1712f, all(vec4<bool>(global0.d, arg_0, false, false)))), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(global0.c.c, u_input.a.yzw), global0.c.c)), Struct_4(vec4<bool>((global0.c.a >= global0.c.a) != true, false, false, all(vec4<bool>(true, global0.e.x, global0.d, false)) || (arg_0 && true)), _wgslsmith_clamp_u32(reverseBits(35528u), 1u, ~(~1u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global0.c.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(739f)) - -865f))))));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(12129u, global0.a.a, 0u, 95442u), vec4<u32>(global0.a.a, var_0.a, 24887u, global0.c.a)), 0u, 48610u)), ~55770u), 29u)];
    let var_2 = var_0.d;
    var_0 = Struct_5(~func_2(var_0.a), var_0.b | ~vec2<i32>(_wgslsmith_mult_i32(1i, global0.a.c.x), ~(-39630i)), Struct_1(1u, _wgslsmith_f_op_f32(exp2(global0.a.b)), global0.a.c), var_0.d, global0.c.b);
    return true;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> bool {
    let var_0 = select(abs(func_2(~arg_0.x)), 3122u, all(select(vec4<bool>(arg_1.a.b <= -566f, global0.e.x, global0.d & false, arg_2 < 300f), !select(vec4<bool>(false, global0.d, global0.e.x, true), vec4<bool>(arg_1.d, true, true, true), vec4<bool>(global0.d, global0.e.x, global0.e.x, global0.e.x)), !select(vec4<bool>(global0.d, true, arg_1.e.x, global0.d), vec4<bool>(arg_1.d, arg_1.e.x, true, global0.e.x), arg_1.e.x))));
    global1 = array<vec2<u32>, 29>();
    let var_1 = all(!(!select(!vec2<bool>(true, arg_1.e.x), global0.e.yz, select(arg_1.e.zy, global0.e.xx, vec2<bool>(false, arg_1.e.x)))));
    global1 = array<vec2<u32>, 29>();
    var var_2 = vec4<bool>(!func_3(var_1), false, select(arg_1.e.x, arg_1.e.x, true), all(!(!select(vec4<bool>(var_1, arg_1.e.x, var_1, true), vec4<bool>(true, global0.e.x, global0.d, false), vec4<bool>(arg_1.d, true, arg_1.e.x, arg_1.d)))));
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_3) -> Struct_4 {
    let var_0 = 14061u & firstTrailingBit(func_2(arg_1.b.b));
    var var_1 = Struct_2(arg_1.b.c, ~_wgslsmith_div_u32(~(15382u & arg_2.b.a.a), 56775u), global0.a, any(!vec4<bool>(all(arg_2.b.e.zx), true, true, arg_2.a)), vec3<bool>(false, arg_0.x, arg_1.b.a.b == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1000f, 1108f))))));
    var var_2 = 2147483647i;
    global1 = array<vec2<u32>, 29>();
    var var_3 = arg_0;
    return Struct_4(!(!vec4<bool>(true, true, true, select(arg_0.x, arg_2.b.d, false))), global0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 29>();
    let var_0 = 1u;
    var var_1 = func_4(select(select(select(global0.e.zz, global0.e.zx, vec2<bool>(global0.e.x, true)), vec2<bool>(all(vec2<bool>(false, global0.d)), all(vec4<bool>(false, global0.e.x, global0.e.x, global0.d))), !func_1(vec2<u32>(var_0, 0u), Struct_2(global0.c, 0u, global0.a, true, global0.e), global0.c.b, var_0)), global0.e.zx, global0.d), Struct_3(true, Struct_2(Struct_1(func_2(4294967295u), _wgslsmith_f_op_f32(floor(global0.a.b)), u_input.a.wyz), 88784u, Struct_1(~var_0, _wgslsmith_f_op_f32(global0.c.b * 246f), max(vec3<i32>(-2147483647i, 1i, 7835i), vec3<i32>(29633i, global0.c.c.x, global0.c.c.x))), !global0.e.x, vec3<bool>(true, global0.e.x, all(global0.e.xz)))), Struct_3(global0.a.c.x < abs(1i), Struct_2(Struct_1(max(65017u, global0.b), _wgslsmith_f_op_f32(min(global0.a.b, global0.a.b)), u_input.a.wxy), select(8468u, global0.b, true) | ~var_0, global0.a, any(select(vec2<bool>(global0.e.x, global0.e.x), vec2<bool>(false, global0.e.x), global0.e.yz)), select(!global0.e, vec3<bool>(global0.e.x, global0.e.x, true), global0.d))));
    var var_2 = Struct_2(global0.a, firstLeadingBit(1u << (var_0 % 32u)), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, var_1.b) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(26060u, 0u, 22687u), vec3<u32>(4189u, var_0, global0.a.a), vec3<u32>(var_0, var_1.b, global0.b)), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.a.a, 16193u, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, var_0, 4294967295u), vec3<u32>(var_1.b, 4294967295u, global0.a.a)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-602f, _wgslsmith_f_op_f32(global0.c.b * global0.c.b), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1396f))))), vec3<i32>(~(-24986i), ~(-2147483647i), global2[_wgslsmith_index_u32(1u, 19u)])), !all(select(var_1.a.wyw, select(var_1.a.zwx, var_1.a.xwz, vec3<bool>(global0.d, true, true)), false)), vec3<bool>(var_1.a.x, var_1.a.x, global0.d));
    var var_3 = var_2.c.b;
    global0 = Struct_2(var_2.a, func_4(!var_1.a.zz, Struct_3(!var_1.a.x, Struct_2(global0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, var_2.b, 0u, var_1.b), vec4<u32>(global0.c.a, 0u, 1u, var_2.c.a)), Struct_1(4294967295u, var_2.a.b, vec3<i32>(global0.a.c.x, global0.c.c.x, -8840i)), func_3(true), !vec3<bool>(var_1.a.x, true, global0.d))), Struct_3(false & any(vec4<bool>(true, global0.d, global0.d, false)), Struct_2(Struct_1(0u, var_2.a.b, var_2.c.c), ~var_2.a.a, global0.c, !global0.d, select(var_1.a.yzy, var_2.e, var_2.d)))).b, Struct_1(~(~0u ^ var_2.a.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.c.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, var_2.a.b) * global0.c.b), !global0.d)), firstTrailingBit(global0.a.c)), global0.e.x, vec3<bool>(any(!var_2.e.xz), var_1.a.x, !(!global0.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0 ^ ~0u, var_2.c.a, firstLeadingBit(~select(0u, 1u, var_1.a.x)), 1u), -vec4<i32>(_wgslsmith_add_i32(countOneBits(2147483647i), 55668i), _wgslsmith_mod_i32(global0.c.c.x, global2[_wgslsmith_index_u32(~0u, 19u)]), ~var_2.c.c.x, ~(-1i)));
}

