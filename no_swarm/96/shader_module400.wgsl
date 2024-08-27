struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 2>;

var<private> global1: bool = true;

var<private> global2: Struct_2;

var<private> global3: Struct_3 = Struct_3(4294967295u, 13194i, -27341i, 19260u, Struct_2(Struct_1(0u)));

var<private> global4: array<Struct_3, 5>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    global0 = array<vec2<f32>, 2>();
    global2 = Struct_2(global2.a);
    var var_0 = ~(~max(firstTrailingBit(_wgslsmith_sub_vec4_u32(arg_2, u_input.b)), vec4<u32>(~8200u, ~1u, arg_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.d, 22668u, 0u, 1u), vec4<u32>(arg_2.x, arg_1.a.a.a, 141791u, arg_2.x)))));
    var var_1 = Struct_3(arg_1.a.a.a, ~49094i, 1i, 4294967295u, arg_1.a);
    var var_2 = arg_2.zz;
    return ((_wgslsmith_f_op_f32(-181f - 499f) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(862f)), _wgslsmith_f_op_f32(f32(-1f) * -293f))) && (all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false)) && true)) && true;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    global0 = array<vec2<f32>, 2>();
    var var_0 = Struct_4(Struct_2(Struct_1(~_wgslsmith_div_u32(global2.a.a, u_input.a.x))), global2.a, ~(~_wgslsmith_div_u32(4294967295u, 1u) & (u_input.a.x >> (~0u % 32u))), global2.a);
    global3 = global4[_wgslsmith_index_u32(12704u, 5u)];
    let var_1 = all(vec4<bool>(!any(!vec3<bool>(true, arg_0.x, false)), arg_0.x, arg_0.x, !func_3(u_input.c.x, Struct_4(Struct_2(global2.a), var_0.b, 4294967295u, Struct_1(62609u)), reverseBits(vec4<u32>(1u, u_input.b.x, 0u, 74715u)), var_0.b)));
    var var_2 = (u_input.a.wyw ^ vec3<u32>(1u, ~4294967295u, ~(~126841u))) >> (~(~(~reverseBits(u_input.b.wyw))) % vec3<u32>(32u));
    return global2.a;
}

fn func_1() -> Struct_1 {
    let var_0 = false;
    var var_1 = -1692f;
    var var_2 = _wgslsmith_div_i32(-28231i, ~min(-1i, abs(u_input.c.x) ^ global3.b));
    global4 = array<Struct_3, 5>();
    let var_3 = ~27163u;
    return func_2(vec3<bool>(var_0, (1i > ~u_input.c.x) & true, var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 2>();
    global3 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(63805u << ((global2.a.a << (global3.a % 32u)) % 32u)), ~(~global2.a.a)), 5u)];
    global2 = global3.e;
    var var_0 = func_1();
    let var_1 = vec2<i32>(-firstLeadingBit(abs(i32(-1i) * -31480i)), global3.c);
    let var_2 = -_wgslsmith_div_vec3_i32(select(~_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, 0i), vec3<i32>(u_input.c.x, u_input.c.x, var_1.x)), vec3<i32>(-42165i, _wgslsmith_mod_i32(0i, -29948i), _wgslsmith_mod_i32(2147483647i, global3.c)), all(vec3<bool>(true, true, true))), -vec3<i32>(var_1.x, _wgslsmith_sub_i32(-4899i, global3.b), 0i));
    global4 = array<Struct_3, 5>();
    global2 = Struct_2(func_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    global2 = Struct_2(func_2(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(global3.a, 2u)], _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -183f), _wgslsmith_f_op_f32(944f * 1044f), _wgslsmith_f_op_f32(1013f + 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(127f, -495f, -1000f)))))), min(_wgslsmith_mult_vec3_u32(u_input.a.xww ^ u_input.a.wzw, vec3<u32>(4294967295u, global2.a.a, 1u)), u_input.b.yyx) << (max(vec3<u32>(_wgslsmith_mult_u32(global2.a.a, 26346u), ~global2.a.a, ~var_0.a), vec3<u32>(~4294967295u, 24202u, 0u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(342f)) - _wgslsmith_f_op_f32(1294f * 1815f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(700f))))));
}

