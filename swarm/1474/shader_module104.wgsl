struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(7656u, 4294967295u, vec2<bool>(false, true), -1i), Struct_1(2218u, 1u, vec2<bool>(false, false), -14505i), Struct_1(0u, 23137u, vec2<bool>(true, false), 17123i), Struct_1(4294967295u, 30282u, vec2<bool>(true, true), -33032i), Struct_1(13356u, 48223u, vec2<bool>(false, true), -25607i), Struct_1(31612u, 8081u, vec2<bool>(true, false), 0i), Struct_1(96610u, 23389u, vec2<bool>(false, true), -12672i), Struct_1(54479u, 50482u, vec2<bool>(true, true), 21522i), Struct_1(4294967295u, 0u, vec2<bool>(true, false), 0i), Struct_1(88679u, 5525u, vec2<bool>(false, true), -7603i), Struct_1(0u, 17423u, vec2<bool>(false, true), -13772i), Struct_1(3193u, 7148u, vec2<bool>(false, true), 0i), Struct_1(1u, 2119u, vec2<bool>(true, false), 19187i), Struct_1(4294967295u, 41879u, vec2<bool>(true, true), -14084i), Struct_1(2678u, 4294967295u, vec2<bool>(true, true), -27693i), Struct_1(4294967295u, 60969u, vec2<bool>(false, true), 2147483647i), Struct_1(0u, 0u, vec2<bool>(true, true), 35120i), Struct_1(109221u, 1u, vec2<bool>(false, false), i32(-2147483648)), Struct_1(0u, 1u, vec2<bool>(false, false), i32(-2147483648)), Struct_1(4294967295u, 40287u, vec2<bool>(false, false), -37054i), Struct_1(0u, 1u, vec2<bool>(true, true), -20527i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<i32> {
    global0 = array<Struct_1, 21>();
    return select(~select(select(vec3<i32>(61889i, 2147483647i, -52376i), vec3<i32>(1i, 1i, 1i), u_input.a < 54685u), vec3<i32>(i32(-1i) * -22076i, countOneBits(1i), _wgslsmith_div_i32(0i, -18733i)), vec3<bool>(true, true, true)), ~vec3<i32>(reverseBits(-22225i << (u_input.a % 32u)), firstTrailingBit(0i), 37141i), false);
}

fn func_2() -> Struct_1 {
    let var_0 = func_3();
    let var_1 = vec3<u32>(u_input.a, ~firstLeadingBit(_wgslsmith_add_u32(9874u, firstTrailingBit(u_input.a))), u_input.a);
    let var_2 = min(func_3().x, _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(select(var_0.x, var_0.x, false), _wgslsmith_div_i32(-1i, 2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), abs(vec4<i32>(-33803i, var_0.x, 11395i, var_0.x)))), -5493i));
    var var_3 = var_2;
    var var_4 = var_1.x;
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u & _wgslsmith_sub_u32(firstTrailingBit(~u_input.a), _wgslsmith_div_u32(abs(var_1.x), ~u_input.a)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(reverseBits(var_1.xz) << (select(var_1.zz, var_1.zz, false) % vec2<u32>(32u)), ~var_1.yz ^ ~var_1.xy), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, 78269u)), countOneBits(vec2<u32>(0u, var_1.x))), 35998u))), 21u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_2();
    global0 = array<Struct_1, 21>();
    var var_1 = var_0.d;
    var var_2 = -601f;
    var_1 = ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~min(vec4<i32>(arg_0.d, -2147483647i, 19604i, -1i), vec4<i32>(arg_1.d, 19703i, arg_1.d, 2147483647i)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-5140i, -2147483647i, 2147483647i, arg_1.d), vec4<i32>(5570i, arg_1.d, arg_0.d, 2147483647i), vec4<i32>(arg_0.d, 2147483647i, arg_0.d, arg_1.d))), _wgslsmith_mod_i32(arg_0.d, select(firstTrailingBit(0i), _wgslsmith_mod_i32(arg_0.d, 0i), false)), min(2147483647i | arg_1.d, 1i));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec3<bool> {
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    let var_0 = ~abs(countOneBits(select(~vec4<u32>(46567u, 4294967295u, arg_1.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 24586u, 1u), false)));
    global0 = array<Struct_1, 21>();
    return select(vec3<bool>(any(func_1(global0[_wgslsmith_index_u32(arg_0.b, 21u)], global0[_wgslsmith_index_u32(0u, 21u)]).c), any(!(!arg_1.c)), false), vec3<bool>(true, true, arg_2), select(vec3<bool>(arg_2, !func_2().c.x, false), !vec3<bool>(!arg_0.c.x, arg_0.c.x, arg_0.c.x), arg_2));
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: vec3<bool>) -> u32 {
    let var_0 = select(~(~4294967295u), u_input.a | firstLeadingBit(firstLeadingBit(~4294967295u)), select(false, select(true, true, true), false));
    global0 = array<Struct_1, 21>();
    let var_1 = global0[_wgslsmith_index_u32(~countOneBits(_wgslsmith_clamp_u32(var_0, 0u, u_input.a) << (4294967295u % 32u)) ^ var_0, 21u)];
    global0 = array<Struct_1, 21>();
    var var_2 = ~(~(max(~vec2<u32>(var_1.a, u_input.a), select(vec2<u32>(var_0, var_1.a), vec2<u32>(66395u, var_0), true)) << (~min(vec2<u32>(var_1.b, var_0), vec2<u32>(var_0, 32971u)) % vec2<u32>(32u))));
    return firstTrailingBit(~1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(0u & func_5(true, 1090f, func_4(Struct_1(1u, u_input.a, vec2<bool>(true, false), -2147483647i), func_1(global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(12055u, 21u)]), true)), _wgslsmith_add_u32(u_input.a, ~u_input.a), func_2().c, firstTrailingBit(firstLeadingBit(min(~2147483647i, func_1(Struct_1(u_input.a, u_input.a, vec2<bool>(true, true), 0i), global0[_wgslsmith_index_u32(4294967295u, 21u)]).d))));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-305f)))));
    global0 = array<Struct_1, 21>();
    var var_2 = true;
    var var_3 = vec4<bool>(all(select(!vec3<bool>(false, true, var_0.c.x), func_4(Struct_1(u_input.a, 1u, vec2<bool>(true, true), var_0.d), Struct_1(var_0.a, u_input.a, var_0.c, 38168i), !var_0.c.x), true)), true, var_0.c.x, !(!any(!var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(17422i, u_input.a);
}

