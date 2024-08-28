struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<bool, 23> = array<bool, 23>(false, false, false, false, true, false, true, false, false, false, false, false, true, false, true, false, true, false, true, false, false, true, false);

var<private> global2: vec3<f32> = vec3<f32>(1268f, -1318f, 1558f);

var<private> global3: array<vec4<i32>, 11>;

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> Struct_2 {
    global3 = array<vec4<i32>, 11>();
    global0 = u_input.b;
    global3 = array<vec4<i32>, 11>();
    global4 = Struct_2(abs(min(global4.a, ~107910u)) << (((u_input.b | ~1u) >> (4294967295u % 32u)) % 32u), Struct_1(arg_1), global4.c, !(!(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(52417u, 23u)], false, global1[_wgslsmith_index_u32(98078u, 23u)]), vec4<bool>(true, global4.d.x, false, arg_1), false))));
    global3 = array<vec4<i32>, 11>();
    return Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, 38335u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 6034u), vec3<u32>(u_input.b, 50768u, 64512u))) >> (global4.a % 32u), Struct_1(global4.d.x), u_input.c, select(global4.d, vec4<bool>(global4.d.x || false, global4.d.x, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(34374u, 1u) << (u_input.b % 32u), 23u)], !(global4.c == -11432i)), global4.d));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = arg_3;
    var_0 = func_2(arg_3.b, !global1[_wgslsmith_index_u32(51983u, 23u)], var_0.c);
    global3 = array<vec4<i32>, 11>();
    return ~(~vec2<i32>(global4.c, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 23>();
    global0 = _wgslsmith_sub_u32(~_wgslsmith_mod_u32(global4.a ^ global4.a, 66202u), _wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(4294967295u, global4.a, global4.a) ^ ~vec3<u32>(0u, u_input.a.x, 80050u)), vec3<u32>(u_input.a.x, 0u, u_input.a.x)));
    global3 = array<vec4<i32>, 11>();
    var var_0 = Struct_2(global4.a, global4.b, -_wgslsmith_mult_i32(1i, _wgslsmith_div_i32(u_input.c >> (u_input.a.x % 32u), firstLeadingBit(u_input.c))), global4.d);
    var var_1 = _wgslsmith_sub_i32(~(i32(-1i) * -1626i), 36478i);
    global4 = Struct_2(~(~23094u ^ ~(16832u >> (var_0.a % 32u))), Struct_1(34229u < abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, var_0.a, var_0.a), vec3<u32>(40612u, var_0.a, 85176u)))), 8691i, var_0.d);
    var var_2 = u_input.a.x != 0u;
    var_2 = global4.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(var_0.a, 1u), ~(vec2<i32>(-var_0.c, global4.c) | _wgslsmith_div_vec2_i32(func_1(false, u_input.c, global2.x, Struct_2(global4.a, Struct_1(var_0.d.x), -2147483647i, var_0.d)), vec2<i32>(33773i, var_0.c) | vec2<i32>(0i, u_input.c))), global4.c);
}

