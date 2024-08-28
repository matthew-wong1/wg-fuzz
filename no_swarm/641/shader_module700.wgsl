struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(1i, vec3<u32>(4294967295u, 6334u, 22799u), false, vec4<u32>(134814u, 1u, 357u, 17536u), 40363u);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_2) -> u32 {
    return 64572u;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> bool {
    return global1.c;
}

fn func_1() -> u32 {
    var var_0 = u_input.c.xx;
    var var_1 = _wgslsmith_sub_vec4_u32(~(~u_input.c), ~(~_wgslsmith_add_vec4_u32(global1.d, u_input.c)));
    let var_2 = vec4<bool>(func_3(Struct_1(~(-2147483647i), vec3<u32>(1u, u_input.e ^ 70856u, func_2(global1.c, Struct_1(global1.a, vec3<u32>(u_input.c.x, var_1.x, 4294967295u), true, vec4<u32>(var_1.x, 1182u, 4294967295u, 0u), 52087u), vec2<f32>(1061f, -1566f), Struct_2(global1.a))), all(vec2<bool>(true, true)), global1.d, _wgslsmith_mod_u32(~0u, global1.e)), firstLeadingBit(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.d, u_input.d, u_input.d), vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.d), vec4<i32>(u_input.d, global1.a, global1.a, u_input.d)), vec4<i32>(38347i, -2147483647i, global1.a, 23463i) & vec4<i32>(global1.a, global1.a, 61696i, -38772i)))), global1.c, global1.c, ~var_0.x < _wgslsmith_clamp_u32(0u, global1.e | firstTrailingBit(1u), var_0.x));
    var_0 = u_input.a.xy;
    var var_3 = Struct_2(1i);
    return global1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_add_i32(11854i, 1i), vec3<u32>(1u, global1.e, func_1()), true, vec4<u32>(87869u, u_input.a.x, global1.b.x, ~countOneBits(2366u)), _wgslsmith_mod_u32(42284u, u_input.e));
    let var_0 = ~global1.e;
    let var_1 = vec3<bool>(all(vec3<bool>(all(!vec2<bool>(global1.c, true)), false || all(vec3<bool>(true, false, global1.c)), !any(vec2<bool>(true, true)))), any(!vec4<bool>(global1.c, global1.c, global1.c, global1.c)) && all(!select(vec3<bool>(global1.c, global1.c, global1.c), vec3<bool>(true, true, false), global1.c)), all(!select(!vec3<bool>(global1.c, global1.c, false), vec3<bool>(global1.c, false, global1.c), vec3<bool>(false, global1.c, global1.c))));
    let var_2 = -1805f;
    let var_3 = _wgslsmith_div_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(max(u_input.d, u_input.d), _wgslsmith_div_i32(59295i, 2147483647i), countOneBits(global1.a)), vec3<i32>(1i, global1.a, -1i) | reverseBits(vec3<i32>(-2147483647i, 19401i, -2147483647i)), (vec3<i32>(global1.a, 0i, 3013i) | vec3<i32>(-60693i, global1.a, global1.a)) | _wgslsmith_mult_vec3_i32(vec3<i32>(10809i, 14384i, 1i), vec3<i32>(-1i, -2147483647i, u_input.d))), -firstLeadingBit(vec3<i32>(u_input.d, global1.a, u_input.d) ^ -vec3<i32>(-18498i, u_input.d, u_input.d)));
    let var_4 = -2147483647i;
    let var_5 = Struct_1(firstLeadingBit(_wgslsmith_dot_vec3_i32(var_3, var_3 ^ var_3)), vec3<u32>(1u, min(~(~var_0), _wgslsmith_div_u32(global1.d.x, countOneBits(10508u))), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(global1.d.x, _wgslsmith_sub_u32(u_input.e, var_0)), 0u, _wgslsmith_mult_u32(0u, 16352u))), global1.c, _wgslsmith_mult_vec4_u32(global1.d & _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_0, 0u, 4294967295u), vec4<u32>(0u, global1.b.x, 1u, u_input.b)), vec4<u32>(4294967295u, u_input.a.x, u_input.b, 4294967295u >> (0u % 32u))) << (((~u_input.a >> (min(global1.d, vec4<u32>(global1.b.x, u_input.b, 48370u, 29712u)) % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(~global1.d, ~global1.d) % vec4<u32>(32u))) % vec4<u32>(32u)), (0u >> (global1.e % 32u)) & countOneBits(min(_wgslsmith_mod_u32(u_input.e, u_input.a.x), ~u_input.e)));
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(-var_3), ~countOneBits(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b.x, global1.b.x, global1.e, 0u), vec4<u32>(4294967295u, 39566u, 9785u, var_5.d.x), vec4<u32>(var_5.e, 1u, u_input.a.x, var_0)), ~vec4<u32>(55019u, 0u, 10555u, 1u), true)), 769f);
}

