struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_3, 16>;

var<private> global2: f32;

var<private> global3: Struct_3;

var<private> global4: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(18186i, -1000f), Struct_2(1i, 513f), Struct_2(-1i, -840f), Struct_2(11835i, -174f), Struct_2(1i, 719f), Struct_2(48543i, 1598f), Struct_2(-8337i, 123f), Struct_2(0i, 1320f), Struct_2(-1i, 101f), Struct_2(2147483647i, -1400f), Struct_2(7844i, 368f), Struct_2(32518i, 922f), Struct_2(48653i, -1000f), Struct_2(17174i, 1112f), Struct_2(1i, 651f), Struct_2(-9394i, 2363f), Struct_2(5641i, 857f), Struct_2(-1i, -1110f), Struct_2(-38718i, -2283f));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: u32) -> bool {
    var var_0 = vec2<u32>(_wgslsmith_div_u32(0u, ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global3.d.yx, vec2<u32>(u_input.a.x, 49243u)), arg_1)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(0u, global3.d.x) ^ ~39594u, firstLeadingBit(~u_input.a.x), reverseBits(global3.c.b)), global3.d));
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1839f - -1916f)));
    return ~u_input.c >= firstTrailingBit(u_input.c);
}

fn func_2() -> Struct_3 {
    global3 = global1[_wgslsmith_index_u32(global3.c.b, 16u)];
    var var_0 = global3.e;
    var var_1 = global3.c.c.x;
    var_1 = 489f;
    var var_2 = u_input.c;
    return Struct_3(select(select(select(vec3<bool>(global3.c.a.x, global3.e, false), vec3<bool>(global3.c.a.x, true, global3.e), !global3.c.a.x), vec3<bool>(u_input.b >= 2147483647i, func_3(true, 65627u), any(vec3<bool>(global3.e, global3.c.a.x, global3.a.x))), any(!vec2<bool>(global3.a.x, false))), vec3<bool>(true, all(vec4<bool>(true, global3.c.a.x, global3.c.a.x, false)), false), global3.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.c.c.x, global3.c.c.x, 647f, global3.c.c.x))), vec4<f32>(-412f, 1000f, 960f, _wgslsmith_f_op_f32(-global3.b.x)))), global3.c, abs(global3.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1083f) * _wgslsmith_div_f32(1026f, -567f)) * global3.c.c.x) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -101f))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    global1 = array<Struct_3, 16>();
    var var_0 = global4[_wgslsmith_index_u32(0u, 19u)];
    global1 = array<Struct_3, 16>();
    var var_1 = global4[_wgslsmith_index_u32(~(countOneBits(_wgslsmith_sub_u32(20372u, u_input.a.x) ^ arg_0.b) << (u_input.a.x % 32u)), 19u)];
    global0 = var_1.a;
    return firstLeadingBit(~(~arg_1 >> (_wgslsmith_mult_u32(global3.c.b, u_input.a.x) % 32u))) >> (max(1u, u_input.a.x) % 32u);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<i32>) -> vec2<u32> {
    var var_0 = Struct_3(!vec3<bool>(!(arg_0.c.c.x > 1764f), false || arg_0.c.a.x, global3.c.a.x), global3.b, arg_0.c, vec3<u32>(4294967295u, min(~(~1u), 1u), min(func_4(global3.c, ~4294967295u, func_2(), func_2()), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(global3.c.b, 0u)), arg_0.d.yy))), all(select(vec3<bool>(true, true, true), !select(vec3<bool>(global3.a.x, global3.a.x, false), global3.c.a.yyx, arg_0.c.a.wzy), vec3<bool>(true, false, any(vec2<bool>(true, true))))));
    let var_1 = Struct_1(global3.c.a, firstLeadingBit(~1u), func_2().b);
    var var_2 = var_1;
    let var_3 = global4[_wgslsmith_index_u32(firstLeadingBit(var_0.c.b), 19u)];
    global3 = global1[_wgslsmith_index_u32(~(1u | countOneBits(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(3580u, 58234u), vec2<u32>(14518u, var_2.b))))), 16u)];
    return vec2<u32>(1u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.c.b & 21281u, var_2.b, var_1.b << (0u % 32u), 13155u)), firstTrailingBit(vec4<u32>(select(1u, 89705u, var_2.a.x), ~52153u, global3.c.b, min(97873u, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global3.b.x, -140f)));
    var var_0 = global3.c.a.zwz;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-111f * global3.b.x));
    global0 = _wgslsmith_sub_i32(~abs(~u_input.c), _wgslsmith_div_i32(-2147483647i, (i32(-1i) * -2147483647i) & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(-4707i, u_input.c)))) | (i32(-1i) * -26291i);
    let var_1 = global3.c;
    let var_2 = 46712u < _wgslsmith_sub_u32(u_input.a.x << (firstLeadingBit(_wgslsmith_sub_u32(global3.d.x, var_1.b)) % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(52988u, var_1.b), func_1(Struct_3(global3.c.a.xwx, var_1.c, Struct_1(vec4<bool>(var_0.x, var_1.a.x, global3.a.x, global3.c.a.x), 4294967295u, vec4<f32>(var_1.c.x, global3.b.x, global3.c.c.x, 1000f)), vec3<u32>(4294967295u, 77301u, 93991u), global3.e), Struct_2(42473i, global3.b.x), vec2<i32>(10714i, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i ^ _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.c), vec2<i32>(11861i, 19473i)), _wgslsmith_mult_i32(31151i, -1i), u_input.c), -(1i & -u_input.c), ~0i, u_input.b), global3.c.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) * -1817f), ~(~(abs(vec3<u32>(global3.d.x, var_1.b, 14206u)) ^ countOneBits(global3.d))), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -1i, i32(-1i) * -2147483647i), reverseBits(-vec2<i32>(u_input.b, u_input.b))), min(reverseBits(~vec2<i32>(0i, 17179i)), -firstTrailingBit(vec2<i32>(2147483647i, u_input.c)))));
}

