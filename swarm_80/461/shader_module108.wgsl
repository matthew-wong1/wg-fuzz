struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
    c: vec4<bool>,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true));

var<private> global2: array<i32, 9>;

var<private> global3: array<bool, 20>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -719f), _wgslsmith_f_op_f32(round(-485f)), global0.x, global0.x)))));
    var var_0 = !vec4<bool>(!(false == !global3[_wgslsmith_index_u32(54533u, 20u)]), true | select(!global3[_wgslsmith_index_u32(4095u, 20u)], all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 20u)], false, global3[_wgslsmith_index_u32(1u, 20u)], false)), true), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(u_input.c), u_input.a) << (u_input.a % 32u), 20u)], !global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 1u, u_input.c, 1u), countOneBits(u_input.b)), 20u)]);
    global1 = array<vec3<bool>, 5>();
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-336f, -411f, global0.x, global0.x) * vec4<f32>(global0.x, -1782f, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 322f, -1000f, global0.x)))))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, 683f))), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, -752f), -534f), -377f, global0.x))));
    global2 = array<i32, 9>();
    return 112701u;
}

fn func_2(arg_0: vec3<u32>) -> Struct_5 {
    global3 = array<bool, 20>();
    global1 = array<vec3<bool>, 5>();
    global2 = array<i32, 9>();
    global2 = array<i32, 9>();
    global3 = array<bool, 20>();
    return Struct_5(select(_wgslsmith_clamp_vec4_i32(~vec4<i32>(global2[_wgslsmith_index_u32(1u, 9u)], -43244i, global2[_wgslsmith_index_u32(39925u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)]), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-1i, global2[_wgslsmith_index_u32(arg_0.x, 9u)], global2[_wgslsmith_index_u32(arg_0.x, 9u)], global2[_wgslsmith_index_u32(u_input.c, 9u)]), vec4<i32>(2147483647i, 1i, global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(arg_0.x, 9u)]), global3[_wgslsmith_index_u32(arg_0.x, 20u)]), vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 9u)], global2[_wgslsmith_index_u32(arg_0.x, 9u)], global2[_wgslsmith_index_u32(58757u, 9u)], global2[_wgslsmith_index_u32(65641u, 9u)])), (vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 9u)], global2[_wgslsmith_index_u32(arg_0.x, 9u)], 0i, -1i) & vec4<i32>(global2[_wgslsmith_index_u32(arg_0.x, 9u)], global2[_wgslsmith_index_u32(arg_0.x, 9u)], global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(arg_0.x, 9u)])) | -vec4<i32>(1i, global2[_wgslsmith_index_u32(28191u, 9u)], global2[_wgslsmith_index_u32(5463u, 9u)], global2[_wgslsmith_index_u32(u_input.b.x, 9u)])), -select(~vec4<i32>(0i, global2[_wgslsmith_index_u32(0u, 9u)], -36001i, -64585i), countOneBits(vec4<i32>(-1i, -1i, global2[_wgslsmith_index_u32(arg_0.x, 9u)], -1i)), false), !vec4<bool>(global3[_wgslsmith_index_u32(abs(0u), 20u)], true, true, true)), any(vec4<bool>(!global3[_wgslsmith_index_u32(func_3(), 20u)], true, any(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 20u)], global3[_wgslsmith_index_u32(arg_0.x, 20u)], false)), !global3[_wgslsmith_index_u32(arg_0.x, 20u)])), !select(!select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.c, 20u)], false, global3[_wgslsmith_index_u32(u_input.b.x, 20u)], false), vec4<bool>(global3[_wgslsmith_index_u32(1424u, 20u)], global3[_wgslsmith_index_u32(15098u, 20u)], global3[_wgslsmith_index_u32(arg_0.x, 20u)], true), vec4<bool>(global3[_wgslsmith_index_u32(arg_0.x, 20u)], global3[_wgslsmith_index_u32(u_input.a, 20u)], global3[_wgslsmith_index_u32(32356u, 20u)], false)), !(!vec4<bool>(global3[_wgslsmith_index_u32(29116u, 20u)], global3[_wgslsmith_index_u32(u_input.b.x, 20u)], global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(50200u, 20u)])), select(select(vec4<bool>(global3[_wgslsmith_index_u32(13562u, 20u)], global3[_wgslsmith_index_u32(51250u, 20u)], false, true), vec4<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(arg_0.x, 20u)], global3[_wgslsmith_index_u32(0u, 20u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 20u)], global3[_wgslsmith_index_u32(arg_0.x, 20u)], false, true)), !vec4<bool>(global3[_wgslsmith_index_u32(37928u, 20u)], global3[_wgslsmith_index_u32(u_input.b.x, 20u)], global3[_wgslsmith_index_u32(arg_0.x, 20u)], false), vec4<bool>(false, false, global3[_wgslsmith_index_u32(74788u, 20u)], true))), Struct_4(select(!global1[_wgslsmith_index_u32(arg_0.x, 5u)], vec3<bool>(true, false, true), (global3[_wgslsmith_index_u32(arg_0.x, 20u)] || global3[_wgslsmith_index_u32(4294967295u, 20u)]) & global3[_wgslsmith_index_u32(~15072u, 20u)])));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: f32, arg_3: bool) -> i32 {
    let var_0 = -944f;
    let var_1 = abs(vec3<i32>(-1i) * -select(vec3<i32>(global2[_wgslsmith_index_u32(26166u, 9u)], 0i, -11807i), -vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(19323u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)]), u_input.a >= u_input.c));
    var var_2 = func_2(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(1u, u_input.b.x, 8148u & arg_0.x), ~(~vec3<u32>(arg_0.x, 1u, u_input.a))), abs(~(~u_input.b.xyw)), _wgslsmith_mod_vec3_u32(vec3<u32>(~0u, abs(arg_0.x), ~0u), u_input.b.yxz)));
    var var_3 = Struct_2(-abs(reverseBits(global2[_wgslsmith_index_u32(20880u, 9u)])) >> (~(arg_0.x << (reverseBits(0u) % 32u)) % 32u), all(!(!select(var_2.c.zxz, vec3<bool>(var_2.d.a.x, global3[_wgslsmith_index_u32(0u, 20u)], false), vec3<bool>(arg_3, global3[_wgslsmith_index_u32(u_input.b.x, 20u)], var_2.b)))), Struct_1(1u, u_input.a, ~var_2.a, func_2(arg_0.zwz).d.a.xy, 0i));
    var var_4 = vec4<u32>(var_3.c.a | var_3.c.b, firstTrailingBit(max(~u_input.a, ~var_3.c.a)), u_input.b.x | ((~var_3.c.b & var_3.c.a) >> (~abs(4294967295u) % 32u)), arg_0.x | countOneBits(58496u));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(countOneBits(countOneBits(u_input.b.x)), _wgslsmith_mod_u32(~u_input.b.x, u_input.b.x), vec4<i32>(-5966i ^ global2[_wgslsmith_index_u32(0u, 9u)], 18906i, -(~global2[_wgslsmith_index_u32(u_input.a, 9u)]), global2[_wgslsmith_index_u32(u_input.c, 9u)]) ^ (reverseBits(vec4<i32>(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(51864u, 9u)], global2[_wgslsmith_index_u32(u_input.c, 9u)], global2[_wgslsmith_index_u32(16229u, 9u)]) ^ vec4<i32>(1i, -1762i, 16680i, global2[_wgslsmith_index_u32(14973u, 9u)])) | vec4<i32>(-global2[_wgslsmith_index_u32(0u, 9u)], func_1(vec4<u32>(1862u, 5733u, 4294967295u, 2935u), vec4<f32>(global0.x, global0.x, -422f, global0.x), global0.x, true), global2[_wgslsmith_index_u32(4294967295u, 9u)], -1i)), !select(!func_2(u_input.b.wyx).d.a.xx, select(vec2<bool>(global3[_wgslsmith_index_u32(3802u, 20u)], false), select(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 20u)]), vec2<bool>(false, true), global3[_wgslsmith_index_u32(4294967295u, 20u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(54776u, 20u)])), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), 20u)]), 34063i >> (1u % 32u));
    global1 = array<vec3<bool>, 5>();
    var var_1 = Struct_1(~0u, 1u, var_0.c | _wgslsmith_mult_vec4_i32(max(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 0i, global2[_wgslsmith_index_u32(u_input.c, 9u)], var_0.e), vec4<i32>(var_0.c.x, -2147483647i, -56295i, var_0.c.x)), vec4<i32>(-39037i, var_0.e, -1i, 42073i)), _wgslsmith_add_vec4_i32(func_2(u_input.b.zww).a, var_0.c << (u_input.b % vec4<u32>(32u)))), vec2<bool>(!var_0.d.x, global3[_wgslsmith_index_u32(u_input.a, 20u)]), -2147483647i);
    var var_2 = vec2<i32>(_wgslsmith_clamp_i32(-func_1(u_input.b, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, global0.x, 445f, global0.x))), global0.x, all(vec2<bool>(var_1.d.x, false))), min(func_1(_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(var_1.b, 0u, 1u, var_0.b)), vec4<f32>(global0.x, global0.x, global0.x, global0.x), -146f, all(vec2<bool>(true, var_0.d.x))), -global2[_wgslsmith_index_u32(~0u, 9u)]), global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(25376u, var_0.a), 9u)] >> (reverseBits(abs(var_0.a)) % 32u)), abs(~1i));
    let var_3 = func_2(countOneBits(~vec3<u32>(var_1.a, 26006u, 3952u))).d;
    let x = u_input.a;
    s_output = StorageBuffer(570f, _wgslsmith_mod_vec3_u32(u_input.b.zwz, firstLeadingBit(u_input.b.yzy) ^ u_input.b.wxz));
}

