struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<vec4<u32>, 16>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global1 = array<Struct_1, 6>();
    global2 = array<vec4<u32>, 16>();
    var var_0 = ~(-min(_wgslsmith_div_i32(26969i, 1i), abs(_wgslsmith_mod_i32(-22231i, 19537i))));
    let var_1 = global0.x;
    var_0 = 0i;
    return Struct_1(~vec4<u32>(~u_input.a.x, _wgslsmith_div_u32(1u, _wgslsmith_mod_u32(0u, u_input.b)), _wgslsmith_mod_u32(_wgslsmith_add_u32(17783u, u_input.b), 1u >> (global0.x % 32u)), ~countOneBits(0u)));
}

fn func_3(arg_0: vec3<i32>) -> vec2<i32> {
    let var_0 = !select(vec2<bool>(true, true), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true));
    var var_1 = global1[_wgslsmith_index_u32(1u, 6u)];
    let var_2 = -1i;
    global1 = array<Struct_1, 6>();
    let var_3 = _wgslsmith_mod_i32(arg_0.x, -40057i) << (~u_input.b % 32u);
    return ~arg_0.xz;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> StorageBuffer {
    let var_0 = ~func_3(min(-vec3<i32>(-1i, 0i, -1i), -vec3<i32>(-32299i, -2871i, -42585i)));
    var var_1 = func_1(select(vec2<bool>(true, true), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), false), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true))), vec2<bool>(false, true)));
    let var_2 = vec2<bool>(false, true);
    var var_3 = 0u;
    global1 = array<Struct_1, 6>();
    return StorageBuffer(vec4<u32>(~(~var_1.a.x), ~arg_1.x, u_input.a.x, _wgslsmith_sub_u32(81463u, u_input.b) << (_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, var_1.a.x), arg_0.a.xx, false), arg_0.a.zw) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(false, all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false))), true), vec3<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false)), any(vec2<bool>(true, true)), true), _wgslsmith_mult_u32(u_input.a.x | global0.x, global0.x) == 1u);
    let var_1 = Struct_1(~_wgslsmith_mult_vec4_u32(~vec4<u32>(8575u, 0u, 72558u, 41769u) << (~vec4<u32>(global0.x, 14068u, global0.x, 0u) % vec4<u32>(32u)), abs(~global2[_wgslsmith_index_u32(4294967295u, 16u)])));
    global1 = array<Struct_1, 6>();
    var var_2 = !(!(!var_0.x));
    global1 = array<Struct_1, 6>();
    let x = u_input.a;
    s_output = func_2(func_1(!select(select(var_0.zz, vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x), true), !vec2<bool>(var_0.x, true))), ~var_1.a);
}

