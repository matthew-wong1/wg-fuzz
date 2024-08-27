struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: array<vec3<bool>, 25>;

var<private> global1: array<f32, 8>;

var<private> global2: array<i32, 1>;

var<private> global3: array<Struct_1, 9>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> i32 {
    var var_0 = 1u;
    global1 = array<f32, 8>();
    let var_1 = select(any(!(!vec2<bool>(arg_1.x, false))) == any(!vec2<bool>(true, arg_1.x)), true, arg_1.x);
    global3 = array<Struct_1, 9>();
    global1 = array<f32, 8>();
    return global2[_wgslsmith_index_u32(0u, 1u)];
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> Struct_2 {
    global1 = array<f32, 8>();
    global1 = array<f32, 8>();
    var var_0 = select(!(!(!(!vec4<bool>(false, arg_1, arg_1, false)))), select(vec4<bool>(!(u_input.a.x < u_input.a.x), !any(global0[_wgslsmith_index_u32(31486u, 25u)]), any(!vec2<bool>(arg_1, arg_1)), false), !vec4<bool>(true, true, arg_1 || arg_1, true), arg_1), arg_1);
    var_0 = select(!select(vec4<bool>(true, true, true, true), !(!vec4<bool>(true, arg_1, arg_1, var_0.x)), all(vec4<bool>(var_0.x, arg_1, arg_1, false)) == (true && var_0.x)), vec4<bool>(!arg_1, !all(var_0.xy), arg_1, true), select(!(!vec4<bool>(arg_1, true, true, arg_1)), !select(vec4<bool>(false, true, false, false), !vec4<bool>(true, var_0.x, arg_1, var_0.x), true), !vec4<bool>(true, all(global0[_wgslsmith_index_u32(4294967295u, 25u)]), var_0.x, var_0.x && var_0.x)));
    var var_1 = vec4<i32>(abs(arg_0.x), min(_wgslsmith_mod_i32(func_2(Struct_2(u_input.a.x), !vec2<bool>(arg_1, true)), arg_0.x), 0i), arg_0.x, -3639i);
    return Struct_2(31195u ^ _wgslsmith_dot_vec2_u32(abs(_wgslsmith_mod_vec2_u32(u_input.a, u_input.a)), ~vec2<u32>(u_input.a.x, u_input.a.x)));
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_2 {
    let var_0 = abs(58372u);
    let var_1 = Struct_2(u_input.a.x);
    let var_2 = var_1;
    let var_3 = Struct_2(~((var_2.a & (1u | var_2.a)) >> (1u % 32u)));
    global1 = array<f32, 8>();
    return func_3(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~arg_1, global2[_wgslsmith_index_u32(~var_3.a, 1u)], -1i, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(var_1.a, 1u)], 2147483647i)), (vec4<i32>(global2[_wgslsmith_index_u32(var_3.a, 1u)], global2[_wgslsmith_index_u32(var_2.a, 1u)], arg_1, global2[_wgslsmith_index_u32(u_input.a.x, 1u)]) << (vec4<u32>(1u, var_2.a, var_2.a, var_1.a) % vec4<u32>(32u))) << (~vec4<u32>(90737u, var_3.a, var_2.a, 20277u) % vec4<u32>(32u))), reverseBits(func_2(var_2, vec2<bool>(true, arg_0))), -(i32(-1i) * -1i), reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(83761u), max(63163u, 51114u)), 1u)])), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(63000u);
    var var_1 = global3[_wgslsmith_index_u32(min(46373u, u_input.a.x), 9u)];
    var var_2 = func_1(select(!var_1.e, true, var_1.e), _wgslsmith_mult_i32(0i, firstTrailingBit(1i)));
    var var_3 = global3[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 4294967295u, 19179u, u_input.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1126u, var_2.a, var_2.a), vec4<u32>(u_input.a.x, u_input.a.x, 47326u, u_input.a.x), vec4<u32>(1u, var_0.a, 50607u, var_0.a)))) << (var_2.a % 32u), 9u)];
    let var_4 = !select(select(select(select(vec4<bool>(true, true, true, var_3.e), vec4<bool>(false, var_3.e, var_3.e, var_1.e), var_3.e), vec4<bool>(true, false, true, var_3.e), !vec4<bool>(var_1.e, true, true, var_3.e)), select(vec4<bool>(var_1.e, false, true, var_3.e), select(vec4<bool>(true, var_1.e, false, true), vec4<bool>(var_1.e, true, var_1.e, var_1.e), var_3.e), var_1.e), -34499i <= _wgslsmith_mult_i32(1i, var_1.d.x)), select(vec4<bool>(var_1.e, any(vec2<bool>(false, false)), var_1.e, 12484u > u_input.a.x), vec4<bool>(true, true, false, select(var_3.e, var_3.e, var_3.e)), !vec4<bool>(var_3.e, var_3.e, false, var_1.e)), !var_1.e);
    global0 = array<vec3<bool>, 25>();
    var_0 = func_1(var_1.e, max(abs(global2[_wgslsmith_index_u32(~1u, 1u)]), var_1.b.x) << (1u % 32u));
    var var_5 = global3[_wgslsmith_index_u32(var_0.a, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_add_i32(1i, -var_5.b.x), _wgslsmith_sub_i32(select(abs(var_1.d.x), select(41587i, -1i, var_1.e), select(var_1.e, var_3.e, var_4.x)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0.a, 1u), countOneBits(u_input.a.x)), 1u)])));
}

