struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: bool,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: Struct_2 = Struct_2(true, vec2<i32>(18931i, 1008i), true, vec4<u32>(0u, 29671u, 0u, 4294967295u), vec4<f32>(2258f, -702f, 1460f, -1235f));

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(false, vec2<i32>(77596i, 0i), false, vec4<u32>(1u, 4294967295u, 26070u, 86432u), vec4<f32>(2195f, -283f, -647f, 1082f)), Struct_2(false, vec2<i32>(1580i, i32(-2147483648)), false, vec4<u32>(0u, 0u, 9008u, 34684u), vec4<f32>(1000f, 1000f, 103f, 1449f)), Struct_2(true, vec2<i32>(13525i, 0i), false, vec4<u32>(1u, 4294967295u, 4647u, 56772u), vec4<f32>(-1196f, -1017f, 191f, 918f)), Struct_2(false, vec2<i32>(-41861i, 0i), false, vec4<u32>(0u, 4294967295u, 4295u, 24465u), vec4<f32>(472f, -1868f, 567f, -1599f)), Struct_2(true, vec2<i32>(0i, 2147483647i), true, vec4<u32>(13918u, 4294967295u, 4294967295u, 1u), vec4<f32>(-814f, -2197f, 1768f, -1000f)), Struct_2(true, vec2<i32>(2147483647i, 0i), true, vec4<u32>(4294967295u, 20236u, 5321u, 4294967295u), vec4<f32>(-197f, 373f, 737f, 514f)));

var<private> global4: array<f32, 21>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: vec4<u32>) -> i32 {
    global3 = array<Struct_2, 6>();
    global3 = array<Struct_2, 6>();
    global4 = array<f32, 21>();
    var var_0 = global2.e;
    global2 = global3[_wgslsmith_index_u32(1u, 6u)];
    return global2.b.x;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec3_i32(u_input.b, u_input.b);
    global2 = global3[_wgslsmith_index_u32(abs(~min(~global2.d.x >> (_wgslsmith_add_u32(75228u, global2.d.x) % 32u), min(99822u, 49529u))), 6u)];
    global0 = var_0;
    global4 = array<f32, 21>();
    global3 = array<Struct_2, 6>();
    return global3[_wgslsmith_index_u32(u_input.a.x, 6u)];
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_clamp_u32(firstLeadingBit(4294967295u), _wgslsmith_sub_u32(u_input.a.x, var_0.a), ~min(arg_2.a, arg_2.a));
    var var_2 = select(vec4<bool>(false, arg_0.c, any(!vec3<bool>(arg_2.c, var_0.c, true)), !any(!vec3<bool>(global1.x, true, true))), !(!(!(!vec4<bool>(arg_0.c, true, arg_0.c, arg_2.c)))), !select(!(!vec4<bool>(global2.c, true, var_0.c, arg_0.a)), !(!vec4<bool>(global1.x, true, arg_2.c, arg_2.c)), false));
    let var_3 = 22733u;
    let var_4 = arg_2;
    return func_2(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-arg_0.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(global2.c, vec2<i32>(-select(2147483647i >> (global2.d.x % 32u), global2.b.x, any(vec4<bool>(false, global1.x, false, global1.x))), u_input.b.x), global2.c, _wgslsmith_mult_vec4_u32(global2.d, global2.d), _wgslsmith_f_op_vec4_f32(global2.e + vec4<f32>(184f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(672f + global2.e.x))), -1000f, global4[_wgslsmith_index_u32(~global2.d.x | _wgslsmith_mult_u32(22400u, global2.d.x), 21u)])));
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-21342i, 2147483647i, _wgslsmith_div_i32(u_input.b.x, ~global2.b.x)), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-2247i, u_input.b.x, global2.b.x), vec3<i32>(-2147483647i, global2.b.x, u_input.b.x))) >> (_wgslsmith_add_vec3_u32(~global2.d.xzy, vec3<u32>(global2.d.x, 57438u, u_input.a.x)) % vec3<u32>(32u))), min(27150i, _wgslsmith_sub_i32(global2.b.x, func_1(select(vec3<bool>(global1.x, false, false), vec3<bool>(global2.a, true, true), global1.x), vec3<bool>(global1.x, global1.x, global2.a), countOneBits(global2.d)))));
    global2 = func_3(func_2(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(3408u, max(_wgslsmith_clamp_u32(67802u, 3586u, 0u), _wgslsmith_sub_u32(global2.d.x, 0u))), 21u)]), Struct_1(u_input.a.x, 0u, any(vec2<bool>(true, true))), Struct_1(~(~51415u), global2.d.x, true), -u_input.b.x);
    var var_1 = _wgslsmith_f_op_f32(-630f * global2.e.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-370f)), -1579f)));
    var var_3 = global3[_wgslsmith_index_u32(4294967295u, 6u)];
    let var_4 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>((global2.d.x << (101027u % 32u)) & max(global2.d.x, 25198u), abs(~12744u)));
}

