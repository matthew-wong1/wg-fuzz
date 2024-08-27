struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648), -456f);

var<private> global1: Struct_1 = Struct_1(-5732i, -330f);

var<private> global2: Struct_1;

var<private> global3: array<bool, 2>;

var<private> global4: array<f32, 24>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    let var_0 = -vec2<i32>(_wgslsmith_div_i32(-15159i, global2.a), 20944i);
    let var_1 = reverseBits(_wgslsmith_add_vec3_i32(max(u_input.c, -select(u_input.c, vec3<i32>(-1i, 1i, -9067i), false)), u_input.c));
    global4 = array<f32, 24>();
    var var_2 = vec4<i32>(~_wgslsmith_add_i32(u_input.c.x, global2.a), firstTrailingBit((var_1.x ^ 0i) | 9778i), 36618i, global2.a << (_wgslsmith_mod_u32(52303u, u_input.b.x) % 32u)) & max(u_input.d, vec4<i32>(var_0.x, 0i, 5110i, global1.a) >> (~firstLeadingBit(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)));
    global2 = Struct_1((_wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, 1i)), vec2<i32>(82221i, 1i)) << ((~u_input.b.x | 51685u) % 32u)) << (~52979u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1050f, global4[_wgslsmith_index_u32(u_input.b.x, 24u)]))))));
    return true;
}

fn func_2() -> bool {
    global2 = Struct_1(_wgslsmith_div_i32(global2.a, global1.a), global2.b);
    let var_0 = vec3<u32>(~0u, ~u_input.b.x, firstTrailingBit(1u));
    var var_1 = 5809u;
    global3 = array<bool, 2>();
    global4 = array<f32, 24>();
    return any(!vec3<bool>(any(!vec2<bool>(global3[_wgslsmith_index_u32(1u, 2u)], global3[_wgslsmith_index_u32(var_0.x, 2u)])), !func_3(), global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(u_input.b.x, 36339u)), 2u)]));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = vec3<bool>(func_2(), true, select((_wgslsmith_f_op_f32(abs(arg_0.b)) >= _wgslsmith_f_op_f32(arg_1 + global0.b)) == true, select(any(select(vec3<bool>(true, true, global3[_wgslsmith_index_u32(0u, 2u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], global3[_wgslsmith_index_u32(u_input.b.x, 2u)], global3[_wgslsmith_index_u32(1u, 2u)]), vec3<bool>(false, false, global3[_wgslsmith_index_u32(14851u, 2u)]))), global3[_wgslsmith_index_u32(u_input.b.x, 2u)], all(select(vec4<bool>(true, true, global3[_wgslsmith_index_u32(54128u, 2u)], true), vec4<bool>(false, false, false, global3[_wgslsmith_index_u32(u_input.b.x, 2u)]), false))), !(global4[_wgslsmith_index_u32(max(u_input.b.x, u_input.b.x), 24u)] < _wgslsmith_div_f32(1114f, 137f))));
    global2 = Struct_1(firstLeadingBit(~(~(-u_input.d.x))), global2.b);
    var var_1 = reverseBits(vec4<u32>(u_input.b.x, 112744u, _wgslsmith_mult_u32(16630u, abs(1u)) | u_input.b.x, ~4294967295u));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(392f, _wgslsmith_f_op_f32(-arg_1)), arg_1, !(u_input.b.x > u_input.b.x))))), -1128f, _wgslsmith_f_op_f32(sign(global0.b)));
    var_2 = vec3<f32>(972f, -438f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(sign(-892f))));
    return Struct_1(_wgslsmith_sub_i32(1i, firstLeadingBit(~(-22778i))) >> ((~u_input.b.x << (u_input.b.x % 32u)) % 32u), global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(4070i, _wgslsmith_f_op_f32(f32(-1f) * -1574f));
    global1 = func_1(Struct_1(_wgslsmith_mult_i32(1i, ~0i) ^ _wgslsmith_mult_i32(1i, global1.a >> (u_input.b.x % 32u)), 815f), var_0.b);
    global2 = func_1(func_1(func_1(Struct_1(-1i, _wgslsmith_f_op_f32(f32(-1f) * -173f)), _wgslsmith_div_f32(1000f, global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) - _wgslsmith_f_op_f32(global2.b * var_0.b)))), 723f);
    var var_1 = -959f;
    var_1 = _wgslsmith_f_op_f32(step(-1205f, global0.b));
    var var_2 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(32353u, countOneBits(26536u)), u_input.b), u_input.b.x, u_input.b.x);
    let var_3 = func_1(Struct_1(i32(-1i) * -1i, -2083f), _wgslsmith_f_op_f32(f32(-1f) * -348f));
    global3 = array<bool, 2>();
    var var_4 = Struct_1(~21723i, var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-var_4.a, 0i, func_1(var_3, -991f).a, var_4.a), ~u_input.d << (_wgslsmith_mult_vec4_u32(vec4<u32>(18697u, u_input.b.x, 1u, u_input.b.x), vec4<u32>(18147u, var_2.x, 60960u, 14840u)) % vec4<u32>(32u)), vec4<i32>(global2.a, abs(max(u_input.a, global2.a)), abs(global0.a), firstTrailingBit(-global1.a))), ~_wgslsmith_clamp_i32(-var_0.a >> (var_2.x % 32u), 1i, global1.a), _wgslsmith_dot_vec4_u32(firstLeadingBit(countOneBits(vec4<u32>(57562u, u_input.b.x, 61450u, 0u))), ~vec4<u32>(select(115760u, 35477u, global3[_wgslsmith_index_u32(49156u, 2u)]), u_input.b.x, firstLeadingBit(4294967295u), min(var_2.x, u_input.b.x))), u_input.d, _wgslsmith_add_i32(1898i, _wgslsmith_mod_i32(0i, 1i)));
}

