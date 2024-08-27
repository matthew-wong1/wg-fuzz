struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: Struct_2,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: u32) -> vec3<u32> {
    var var_0 = ~u_input.a.xxx;
    return ~_wgslsmith_sub_vec3_u32(~u_input.a.yzw, _wgslsmith_div_vec3_u32(vec3<u32>(~4294967295u, arg_2, ~arg_0), u_input.a.wyy));
}

fn func_3(arg_0: Struct_3) -> f32 {
    global0 = arg_0.c.c.x;
    global0 = false;
    global0 = true;
    global0 = any(!arg_0.b);
    return -653f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = !arg_1.b.x;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(select(select(vec4<bool>(true, arg_1.b.x, false, arg_1.b.x), vec4<bool>(false, arg_0.b.x, true, arg_0.b.x), vec4<bool>(true, arg_1.b.x, true, false)), select(vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x), vec4<bool>(true, true, arg_0.b.x, true), arg_1.b.x), all(vec4<bool>(false, arg_0.b.x, arg_0.b.x, arg_0.b.x))), select(vec2<bool>(true, true), vec2<bool>(false, true), arg_1.b), Struct_2(arg_1.a.xy, arg_0, arg_0.b, -45363i | arg_0.a.x, u_input.a.x), countOneBits(~u_input.b), !(!vec2<bool>(arg_1.b.x, true))))));
    let var_1 = _wgslsmith_f_op_f32(var_0 * -535f);
    let var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(reverseBits(vec2<u32>(4294967295u, 31628u)) & vec2<u32>(4294967295u, u_input.a.x)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(8366u, 0u, 1u), vec3<u32>(28938u, u_input.a.x, u_input.a.x)), u_input.a.x) >> (vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, 4294967295u), u_input.a.x) % vec2<u32>(32u))), _wgslsmith_sub_u32(33515u, 0u));
    let var_3 = _wgslsmith_mod_vec2_i32(select(-_wgslsmith_mult_vec2_i32(arg_1.a.xx, -vec2<i32>(-29543i, 3999i)), vec2<i32>(~0i, abs(~(-1i))), arg_1.b), select(vec2<i32>(1i, max(0i, arg_0.a.x)), arg_1.a.xy, select(vec2<bool>(true, true), vec2<bool>(!arg_1.b.x, true), vec2<bool>(all(vec3<bool>(true, false, false)), true != arg_0.b.x))));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (~(~firstLeadingBit(u_input.a.x)) >= _wgslsmith_dot_vec3_u32(func_1(~u_input.a.x, u_input.b, 1u), firstLeadingBit(~u_input.a.zxy))) & (((func_2(Struct_1(vec3<i32>(u_input.c, u_input.b, 10985i), vec2<bool>(true, true)), Struct_1(vec3<i32>(u_input.b, u_input.b, u_input.b), vec2<bool>(false, false))) << (~37203u % 32u)) < (-2009i & _wgslsmith_sub_i32(u_input.b, -2147483647i))) | true);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, -265f);
}

