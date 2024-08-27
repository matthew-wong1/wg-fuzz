struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(21456i, -19243i, 2147483647i);

var<private> global1: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> i32 {
    var var_0 = Struct_1(4294967295u);
    var var_1 = false;
    var var_2 = Struct_1(8664u);
    var var_3 = ~vec4<u32>(1u, ~max(79349u, u_input.a), var_0.a, var_2.a);
    var var_4 = all(!vec2<bool>(false, any(vec4<bool>(true, true, false, true))));
    return ~(-1i);
}

fn func_1(arg_0: bool, arg_1: u32) -> i32 {
    global0 = ~(-max(countOneBits(u_input.b.ywz), vec3<i32>(-u_input.b.x, reverseBits(1i), global0.x)));
    var var_0 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 38704u, 15716u, arg_1), vec4<u32>(arg_1, 1u, u_input.a, 1u)), vec4<u32>(arg_1, 40567u, 82180u, 0u)), ~min(vec4<u32>(23199u, 26321u, 137760u, 1311u), vec4<u32>(arg_1, 4582u, arg_1, arg_1))) << ((vec4<u32>(u_input.a, arg_1, _wgslsmith_mod_u32(_wgslsmith_div_u32(4649u, 38996u), _wgslsmith_sub_u32(u_input.a, 4294967295u)), 0u) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, u_input.a, 1u, u_input.a), ~vec4<u32>(u_input.a, 0u, arg_1, u_input.a))) % vec4<u32>(32u));
    var var_1 = true;
    let var_2 = !(!select(select(vec2<bool>(false, true), vec2<bool>(true, arg_0), all(vec3<bool>(false, arg_0, false))), select(vec2<bool>(arg_0, false), select(vec2<bool>(arg_0, false), vec2<bool>(true, arg_0), arg_0), arg_0), !(!vec2<bool>(arg_0, arg_0))));
    let var_3 = vec2<i32>(~(-1i), func_2());
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a;
    global0 = vec3<i32>(_wgslsmith_clamp_i32(global0.x, _wgslsmith_add_i32(u_input.c, global0.x), firstTrailingBit(~(-21675i))), -_wgslsmith_dot_vec2_i32(min(u_input.b.xy | vec2<i32>(u_input.c, u_input.b.x), global0.zx), global0.yz), ~(-func_1(true, 1u)));
    let var_0 = false;
    let var_1 = Struct_1(0u);
    var var_2 = u_input.b | u_input.b;
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~(-(i32(-1i) * -1i)), var_2.x, ~_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(var_2.xx, vec2<i32>(0i, 1i)), 0i), _wgslsmith_mult_vec2_i32(vec2<i32>(67935i, global0.x), u_input.b.zy) >> (vec2<u32>(u_input.a, var_1.a) % vec2<u32>(32u))));
}

