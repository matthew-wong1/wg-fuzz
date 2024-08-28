struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: bool,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<bool> {
    let var_0 = firstTrailingBit(firstTrailingBit(8100u));
    var var_1 = select(select(!vec2<bool>(var_0 != var_0, false), vec2<bool>(true, true), true), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), all(!select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)))));
    var_1 = vec2<bool>(var_1.x, all(!select(select(vec2<bool>(false, false), vec2<bool>(false, var_1.x), true), !vec2<bool>(var_1.x, var_1.x), true)));
    let var_2 = _wgslsmith_mod_u32(0u, ~(~var_0));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -881f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1360f, -728f), -1016f, true))) + -1000f));
    return select(select(vec2<bool>(!any(vec2<bool>(false, true)), any(select(vec2<bool>(true, var_1.x), vec2<bool>(true, var_1.x), var_1.x))), vec2<bool>(true | var_1.x, true), var_1.x), select(!(!select(vec2<bool>(false, false), vec2<bool>(var_1.x, var_1.x), var_1.x)), !(!select(vec2<bool>(var_1.x, true), vec2<bool>(true, var_1.x), vec2<bool>(false, false))), vec2<bool>(var_1.x, any(select(vec2<bool>(true, false), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x))))), !all(select(vec3<bool>(false, false, var_1.x), !vec3<bool>(var_1.x, var_1.x, true), var_1.x)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_3(false, vec3<bool>(!(!(u_input.a.x != -2147483647i)), true, false), arg_0.b.x, Struct_1(arg_0.a >> (vec4<u32>(0u, 0u, _wgslsmith_mod_u32(25900u, arg_0.e.x), ~arg_0.e.x) % vec4<u32>(32u)), select(arg_0.b, select(select(vec2<bool>(true, true), arg_0.b, vec2<bool>(arg_0.b.x, true)), vec2<bool>(false, arg_0.b.x), func_3()), true), arg_0.c, _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(35531i), _wgslsmith_clamp_i32(2147483647i, -1i, arg_0.a.x), -44999i), reverseBits(-u_input.a)), ~vec2<u32>(arg_0.e.x, _wgslsmith_div_u32(arg_0.e.x, 0u))), vec4<bool>(all(!vec4<bool>(true, arg_0.b.x, true, arg_0.b.x)), !all(vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x)), arg_0.b.x, any(arg_0.b)));
    let var_1 = arg_0;
    var var_2 = var_1.a & (vec4<i32>(~var_0.d.d, -8008i, u_input.a.x ^ var_0.d.a.x, -(-2147483647i | u_input.a.x)) ^ (var_1.a ^ arg_0.a));
    let var_3 = Struct_3(all(select(!vec4<bool>(false, true, false, var_0.b.x), !vec4<bool>(false, false, true, var_0.c), select(select(vec4<bool>(var_1.b.x, var_1.b.x, var_0.a, false), vec4<bool>(var_0.c, var_0.d.b.x, true, var_1.b.x), var_0.a), var_0.e, true))), vec3<bool>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.e.x, 60320u, var_1.e.x), vec3<u32>(var_0.d.e.x, arg_0.e.x, 14184u))) > ~0u, true, var_1.b.x), -_wgslsmith_mult_i32(-var_1.d, 0i) > (3515i & var_2.x), var_0.d, vec4<bool>(var_0.d.b.x, var_0.b.x, any(!(!vec4<bool>(false, var_0.b.x, var_1.b.x, true))), any(vec2<bool>(var_1.b.x, true))));
    var_2 = firstLeadingBit(-(arg_0.a >> (firstTrailingBit(select(vec4<u32>(96125u, 4294967295u, var_0.d.e.x, var_1.e.x), vec4<u32>(var_0.d.e.x, var_0.d.e.x, var_3.d.e.x, arg_0.e.x), var_3.d.b.x)) % vec4<u32>(32u))));
    return _wgslsmith_clamp_u32(var_1.e.x, var_3.d.e.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, ~_wgslsmith_add_u32(var_0.d.e.x, var_0.d.e.x)), 10327u));
}

fn func_1(arg_0: i32, arg_1: i32) -> i32 {
    var var_0 = vec4<u32>(~(~max(4294967295u, 8962u) & _wgslsmith_mult_u32(func_2(Struct_1(vec4<i32>(arg_0, 1i, -1i, 1i), vec2<bool>(false, true), 386f, arg_1, vec2<u32>(53446u, 53518u))), ~1u)), min(18873u, min(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(29583u, 4294967295u, 0u), vec3<u32>(1u, 1u, 1u)))), 43206u, ~49400u);
    let var_1 = vec4<u32>(34177u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(52599u, var_0.x, var_0.x, var_0.x) & vec4<u32>(var_0.x, var_0.x, var_0.x, 55254u)), max(~(vec4<u32>(var_0.x, 4294967295u, var_0.x, 1u) | vec4<u32>(1u, var_0.x, 0u, var_0.x)), countOneBits(firstTrailingBit(vec4<u32>(var_0.x, var_0.x, 4294967295u, 24083u))))), reverseBits(var_0.x), max(var_0.x, 40875u));
    let var_2 = vec3<u32>(var_1.x, ~(~select(_wgslsmith_add_u32(var_0.x, var_0.x), _wgslsmith_mod_u32(1u, var_0.x), false)), 38889u << (abs(max(max(4294967295u, var_0.x), _wgslsmith_div_u32(var_0.x, var_1.x))) % 32u));
    var var_3 = ~countOneBits(var_2.x);
    var var_4 = -37332i;
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<bool>(any(vec2<bool>(true, true)), all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, false, false), true))), Struct_1(vec4<i32>(-52061i, -69158i, countOneBits(-u_input.a.x), ~u_input.a.x), vec2<bool>(true, !any(vec2<bool>(false, true))), 1f, _wgslsmith_clamp_i32(0i, u_input.a.x, u_input.a.x >> (1559u % 32u)) | func_1(u_input.a.x ^ u_input.a.x, select(0i, u_input.a.x, false)), vec2<u32>(func_2(Struct_1(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 23398i), vec2<bool>(true, false), -2370f, u_input.a.x, vec2<u32>(31356u, 0u))), 1u)), countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(1u, 1u, 1u))));
    var_0 = Struct_2(var_0.a, var_0.b, 15468u);
    var var_1 = _wgslsmith_f_op_f32(ceil(1000f));
    var_1 = var_0.b.c;
    let var_2 = Struct_3(any(select(vec3<bool>(true, true, true), !vec3<bool>(false, var_0.b.b.x, var_0.a.x), !vec3<bool>(var_0.a.x, var_0.a.x, true))), !(!(!select(vec3<bool>(var_0.b.b.x, var_0.b.b.x, false), vec3<bool>(true, false, var_0.b.b.x), vec3<bool>(false, var_0.b.b.x, var_0.a.x)))), !any(func_3()), var_0.b, !(!vec4<bool>(!var_0.a.x, var_0.b.b.x, !var_0.b.b.x, all(vec4<bool>(var_0.b.b.x, true, var_0.a.x, false)))));
    var_0 = Struct_2(var_2.e.yw, Struct_1(_wgslsmith_mult_vec4_i32(var_0.b.a, var_2.d.a), select(var_0.b.b, !select(vec2<bool>(var_2.e.x, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(all(vec4<bool>(true, var_2.e.x, true, var_0.b.b.x)), false)), -1736f, var_0.b.d, vec2<u32>(1u, 1u) >> (_wgslsmith_mult_vec2_u32(var_0.b.e, vec2<u32>(var_0.c, 21637u)) % vec2<u32>(32u))), ~(var_2.d.e.x & ~_wgslsmith_add_u32(55182u, var_2.d.e.x)));
    var var_3 = Struct_3(!func_3().x, !(!select(!vec3<bool>(var_2.d.b.x, var_0.b.b.x, var_2.e.x), vec3<bool>(var_2.e.x, var_2.d.b.x, false), !var_2.b.x)), false, var_2.d, !var_2.e);
    let var_4 = var_3.e.xyz;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_3.d.d));
}

