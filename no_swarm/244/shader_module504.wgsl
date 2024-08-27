struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: Struct_2,
    d: f32,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: vec2<f32>,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: Struct_1;

var<private> global2: vec2<i32> = vec2<i32>(9516i, i32(-2147483648));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: vec3<bool>) -> i32 {
    let var_0 = Struct_3(true, arg_0.b, _wgslsmith_clamp_i32(1i, -(u_input.d.x >> (35874u % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global2.x), u_input.c.xw) << (4294967295u % 32u)) >> (~(~_wgslsmith_div_u32(4294967295u, global1.a)) % 32u));
    global2 = u_input.d.zy;
    var var_1 = ~global1.a;
    let var_2 = arg_1;
    global0 = array<bool, 19>();
    return var_0.c;
}

fn func_1(arg_0: bool) -> vec4<i32> {
    global0 = array<bool, 19>();
    var var_0 = vec2<u32>((u_input.b & u_input.b) << (reverseBits(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(70099u, u_input.b)), vec2<u32>(4294967295u, u_input.b) >> (vec2<u32>(u_input.b, global1.a) % vec2<u32>(32u)))) % 32u), global1.a);
    global2 = ~vec2<i32>(func_2(Struct_4(false, vec3<i32>(u_input.a, -1i, 1308i), Struct_2(u_input.d.xwy, vec2<f32>(1386f, 472f)), _wgslsmith_div_f32(-534f, global1.b.x), vec2<bool>(false, false)), arg_0, global1.d.xzw), -1i);
    var var_1 = true;
    let var_2 = Struct_3(false, u_input.d.zyx, global2.x >> (~66218u % 32u));
    return _wgslsmith_div_vec4_i32(-firstLeadingBit(_wgslsmith_clamp_vec4_i32(u_input.c, u_input.d, u_input.c)), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(countOneBits(global1.a) > 33968u)) >> (~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(43705u, u_input.b, u_input.b, 4294967295u), reverseBits(vec4<u32>(0u, u_input.b, u_input.b, u_input.b))), (vec4<u32>(4294967295u, 0u, 5134u, global1.a) ^ vec4<u32>(125451u, 0u, global1.a, u_input.b)) & _wgslsmith_div_vec4_u32(vec4<u32>(31849u, 4294967295u, 74686u, 32950u), vec4<u32>(16520u, u_input.b, 1u, u_input.b))) % vec4<u32>(32u));
    global0 = array<bool, 19>();
    global2 = _wgslsmith_add_vec2_i32(vec2<i32>(-_wgslsmith_add_i32(-2147483647i, u_input.a), ~(-14650i)), firstTrailingBit(func_1((global1.a >= 34645u) && (0u >= global1.a)).xx));
    global2 = vec2<i32>(min(global2.x, abs(~(~global2.x))), abs(global2.x));
    let var_1 = Struct_1(1u, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.b.x + global1.b.x), 1f, _wgslsmith_f_op_f32(select(global1.b.x, -1823f, true)))))), !((abs(1i) >> (global1.a % 32u)) >= _wgslsmith_dot_vec3_i32(vec3<i32>(-12755i, 11321i, var_0.x), var_0.zwy << (vec3<u32>(u_input.b, 137970u, global1.a) % vec3<u32>(32u)))), select(select(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(global1.a, 19u)], true), global1.d, vec4<bool>(true, true, true, true)), !select(select(global1.d, global1.d, true), global1.d, vec4<bool>(true, global0[_wgslsmith_index_u32(42162u, 19u)], global1.d.x, global1.d.x)), global1.c));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(31315i, ~(-56418i)) & vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, -2147483647i, -2147483647i), vec3<i32>(u_input.d.x, 23271i, u_input.c.x)), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c.x, 25043i, var_0.x, 1i), u_input.c)), vec2<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, 0u), ~vec4<u32>(36025u, global1.a, u_input.b, var_1.a)) >> (var_1.a % 32u)));
}

