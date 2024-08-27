struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
    d: u32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 15>;

var<private> global1: vec4<u32>;

var<private> global2: vec4<i32> = vec4<i32>(-6897i, 33181i, -1i, 2147483647i);

var<private> global3: array<i32, 25>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_5) -> vec4<u32> {
    global3 = array<i32, 25>();
    global0 = array<vec4<f32>, 15>();
    global0 = array<vec4<f32>, 15>();
    let var_0 = select(vec3<bool>(_wgslsmith_sub_u32(4294967295u, select(global1.x, 0u, false)) > _wgslsmith_div_u32(~31791u, arg_1.x), true, true), vec3<bool>(true, false, all(vec4<bool>(any(vec4<bool>(true, false, false, true)), any(vec3<bool>(true, true, false)), true, u_input.a.x < 25584u))), !(!vec3<bool>(any(vec4<bool>(true, true, true, false)), true, -37636i < u_input.b.x)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -641f);
    return ~vec4<u32>(~1u, _wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 6780u, u_input.a.x, 92666u), vec4<u32>(u_input.a.x, arg_1.x, 39792u, 1u)), ~global1.x)), ~countOneBits(_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.yz)), max(~global1.x, 4294967295u));
}

fn func_2() -> Struct_3 {
    global1 = func_3(_wgslsmith_f_op_f32(f32(-1f) * -441f), u_input.a.xz, Struct_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1504f, _wgslsmith_f_op_f32(-687f * -1604f), true))))));
    var var_0 = Struct_1(u_input.b.zw, countOneBits(_wgslsmith_div_i32(u_input.d.x, global3[_wgslsmith_index_u32(1u, 25u)])), _wgslsmith_dot_vec3_u32(vec3<u32>(~global1.x, 12584u, abs(u_input.a.x ^ u_input.a.x)), max(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 4235u, u_input.a.x), global1.yxy)), global1.zxx)), select(select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), vec2<bool>(false, true)), vec2<bool>(true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)))), select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))));
    var var_1 = Struct_4(Struct_2((global1.x & _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 50476u, var_0.c, var_0.c), vec4<u32>(4294967295u, u_input.a.x, 47031u, global1.x))) < ~func_3(1502f, u_input.a.xy, Struct_5(-1332f)).x), Struct_3(u_input.a), ~var_0.c, 0u);
    var var_2 = Struct_4(var_1.a, Struct_3(max(~(global1.xwx | vec3<u32>(4294967295u, 0u, 4294967295u)), vec3<u32>(select(var_0.c, 0u, var_0.d.x), var_0.c >> (var_1.b.a.x % 32u), u_input.a.x))), _wgslsmith_dot_vec3_u32(~var_1.b.a, var_1.b.a), abs(var_1.d));
    global2 = u_input.c;
    return Struct_3(vec3<u32>(u_input.a.x, ~(~11142u), var_0.c));
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-311f, -491f)) * _wgslsmith_f_op_f32(sign(985f))))));
    global3 = array<i32, 25>();
    let var_1 = func_2();
    var var_2 = func_2();
    var var_3 = firstTrailingBit(-1i);
    return StorageBuffer(global0[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-542f * _wgslsmith_f_op_f32(trunc(var_0))) - _wgslsmith_f_op_f32(-var_0)), ~var_2.a.zx, Struct_5(_wgslsmith_f_op_f32(-var_0))).x, 15u)], u_input.a.yx, max(1u, 0u), _wgslsmith_f_op_f32(ceil(var_0)), ~var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<i32>(max(~max(~(-1i), global2.x), 14997i), _wgslsmith_sub_i32(abs(0i), global3[_wgslsmith_index_u32(14995u, 25u)]), max(2147483647i, _wgslsmith_mod_i32(_wgslsmith_add_i32(~(-29338i), _wgslsmith_dot_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(40834u, 25u)], 1i), vec2<i32>(2147483647i, -13627i))), u_input.c.x)), 5986i);
    let var_0 = any(vec4<bool>(true, true, true, true));
    var var_1 = Struct_5(-155f);
    var var_2 = Struct_3(vec3<u32>(~(4294967295u | global1.x), 35061u, ~global1.x >> (~global1.x % 32u)) ^ abs(vec3<u32>(_wgslsmith_add_u32(global1.x, global1.x), ~38632u, u_input.a.x)));
    let var_3 = u_input.d.x;
    let x = u_input.a;
    s_output = func_1();
}

