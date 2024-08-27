struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false));

var<private> global1: array<vec3<bool>, 26>;

var<private> global2: array<Struct_2, 30>;

var<private> global3: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    let var_0 = Struct_1(u_input.b);
    global1 = array<vec3<bool>, 26>();
    global3 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32((u_input.b.x << (1u % 32u)) ^ 4760u, 50293u | (global3.x << (var_0.a.x % 32u))), ~(~_wgslsmith_dot_vec3_u32(var_0.a.wxz, var_0.a.xyx))), ~countOneBits(abs(~1u)), global3.x);
    let var_1 = (~global3.x & global3.x) >= 26247u;
    global1 = array<vec3<bool>, 26>();
    return select(vec4<bool>(false, !all(vec2<bool>(true, true)), any(vec2<bool>(any(vec3<bool>(var_1, false, var_1)), true)), select(true, any(!vec2<bool>(arg_0, false)), ~var_0.a.x > 9724u)), !vec4<bool>(true, var_1, arg_0, var_1), vec4<bool>(!arg_0, !(!var_1), any(select(vec3<bool>(var_1, var_1, arg_0), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(var_1, arg_0, true), var_1), !vec3<bool>(true, arg_0, false))), all(!vec2<bool>(var_1, arg_0))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<u32>) -> i32 {
    let var_0 = select(vec4<bool>(false, true, (!arg_2 & true) == true, true), func_3(true), arg_0.x);
    return u_input.c;
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_2(arg_1.a, _wgslsmith_div_i32(_wgslsmith_clamp_i32(~arg_1.b, (arg_3.b << (4294967295u % 32u)) | -arg_3.b, _wgslsmith_mod_i32(-279i, 1i)), abs(min(58917i, arg_3.b)) ^ ~func_2(vec2<bool>(false, arg_3.d), Struct_2(u_input.a.x, 5900i, 56702u, true, arg_3.e), true, arg_3.e.a)), ~select(4294967295u, _wgslsmith_div_u32(55243u ^ arg_3.a, ~global3.x), true), arg_1.d, arg_3.e);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(~firstTrailingBit(var_0.e.a.x) ^ _wgslsmith_dot_vec2_u32(arg_2.zz, ~vec2<u32>(0u, u_input.a.x))), 13115u), 30u)];
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1149f);
    var var_3 = Struct_1(vec4<u32>(~_wgslsmith_add_u32(arg_1.e.a.x, u_input.a.x), arg_3.e.a.x, ~arg_3.e.a.x, 4294967295u));
    let var_4 = arg_3.e;
    return ~arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 32>();
    let var_0 = ~global3.zy;
    let var_1 = global1[_wgslsmith_index_u32(select(~func_1(2147483647i, Struct_2(1u, u_input.c, ~4294967295u, true, Struct_1(u_input.b)), vec4<u32>(~29824u, u_input.a.x, 4294967295u, 4294967295u), Struct_2(reverseBits(1u), 20189i, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 23203u), vec3<u32>(4294967295u, 1u, 31217u)), true, Struct_1(u_input.b))), 7191u, true), 26u)];
    let var_2 = !var_1.x;
    let var_3 = global2[_wgslsmith_index_u32(4294967295u | (~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, global3.x), var_0 << (vec2<u32>(1u, global3.x) % vec2<u32>(32u))) >> (1u % 32u)), 30u)];
    global2 = array<Struct_2, 30>();
    global1 = array<vec3<bool>, 26>();
    let var_4 = Struct_3(-1357f, Struct_2(3077u, _wgslsmith_div_i32(-22611i, -abs(u_input.c)), _wgslsmith_mult_u32(~(~109016u), 0u), any(vec2<bool>(var_3.d, var_3.d)), Struct_1(select(countOneBits(vec4<u32>(u_input.a.x, var_3.e.a.x, 0u, 4294967295u)), u_input.b, var_3.d))), reverseBits(min(_wgslsmith_mult_i32(-17718i, -1281i), -2147483647i)));
    global3 = vec3<u32>(~(~reverseBits(5099u)) ^ var_0.x, 52359u, 1039u);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, _wgslsmith_f_op_f32(-var_4.a), var_0.x);
}

