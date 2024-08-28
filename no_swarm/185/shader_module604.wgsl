struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    return 4294967295u;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool) -> f32 {
    global0 = array<Struct_1, 30>();
    let var_0 = vec3<i32>(u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, _wgslsmith_add_i32(1i, u_input.a)), abs(1i)) << (vec3<u32>(u_input.b, 0u, ~max(48066u, 40765u)) % vec3<u32>(32u));
    let var_1 = Struct_1(true & (1i < (_wgslsmith_clamp_i32(var_0.x, 0i, 1725i) & abs(2147483647i))));
    let var_2 = Struct_1(true);
    global0 = array<Struct_1, 30>();
    return -1169f;
}

fn func_2() -> bool {
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(func_3(Struct_1(false), Struct_1(false)), 30u)], _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1146f, -755f, 572f) - vec3<f32>(1000f, 906f, -581f)), vec3<f32>(-1068f, 726f, -2527f))), all(vec3<bool>(true, true, true)))))));
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b & max(u_input.b, 4294967295u), ~max(4294967295u, 0u), abs(_wgslsmith_sub_u32(1u, u_input.b))), abs(_wgslsmith_div_vec3_u32(min(vec3<u32>(32159u, 29748u, u_input.b), vec3<u32>(37602u, u_input.b, 38463u)), vec3<u32>(26393u, 17274u, 37453u)))), 30u)];
    var_0 = _wgslsmith_f_op_f32(step(1774f, 1f));
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    global0 = array<Struct_1, 30>();
    let var_0 = ~vec3<u32>(_wgslsmith_mult_u32(firstLeadingBit(15913u), 0u), ~u_input.b ^ 102u, u_input.b);
    var var_1 = func_2();
    let var_2 = any(!(!vec2<bool>(true, !arg_2.a)));
    let var_3 = vec2<bool>(any(select(vec4<bool>(select(true, false, var_2), var_0.x > 1u, true, true), vec4<bool>(select(true, arg_1.a, arg_2.a), arg_0.a, false && arg_0.a, true), !select(vec4<bool>(false, arg_2.a, arg_1.a, false), vec4<bool>(false, var_2, arg_2.a, false), vec4<bool>(true, arg_0.a, arg_0.a, false)))), arg_2.a);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(any(!func_1(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(~63149u, 30u)], Struct_1(false))));
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    var var_1 = vec4<i32>(u_input.c.x >> ((~(~11655u) & func_3(Struct_1(var_0.a), Struct_1(var_0.a))) % 32u), u_input.a, i32(-1i) * -1i, 31057i);
    let var_2 = Struct_1(func_2());
    let var_3 = ~24955u;
    let var_4 = Struct_1(all(vec4<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, var_0.a), var_0.a)), (45157i & u_input.c.x) > (u_input.c.x | u_input.c.x), true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(215f)), _wgslsmith_f_op_f32(round(-1302f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(991f, _wgslsmith_f_op_f32(ceil(804f))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, -215f), vec2<f32>(699f, 785f)))))), true)), var_3, ~(~vec4<u32>(13839u << (var_3 % 32u), countOneBits(4294967295u), var_3 & 0u, 1u)), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~min(vec3<u32>(4294967295u, var_3, u_input.b), vec3<u32>(u_input.b, 0u, var_3)), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, var_3, var_3), countOneBits(vec3<u32>(36932u, 45859u, var_3)))), _wgslsmith_mod_vec3_u32(vec3<u32>(var_3, u_input.b, _wgslsmith_div_u32(u_input.b, 17070u)), _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(u_input.b, 0u, u_input.b)), vec3<u32>(55573u, 57821u, u_input.b) & vec3<u32>(60564u, 48769u, 4294967295u), vec3<u32>(var_3, 1u, 1u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-704f, -871f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1071f, -444f) - -429f)))));
}

