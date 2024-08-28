struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23>;

var<private> global1: array<vec3<u32>, 15>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> vec2<bool> {
    var var_0 = vec2<i32>(-22545i, ~(-(~(-59173i)))) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(~58103u, _wgslsmith_div_u32(u_input.a, u_input.a)), (vec2<u32>(u_input.a, 67933u) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(0u, u_input.a)) % vec2<u32>(32u))) % vec2<u32>(32u));
    return !(!vec2<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), true));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec3<i32>) -> Struct_1 {
    global0 = array<vec3<i32>, 23>();
    var var_0 = any(!(!(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))));
    var var_1 = arg_0.x;
    var var_2 = vec3<u32>(~u_input.a >> (~_wgslsmith_mod_u32(~54686u, ~arg_1.x) % 32u), arg_1.x, ~countOneBits(u_input.a));
    var var_3 = global0[_wgslsmith_index_u32(u_input.a, 23u)];
    return Struct_1(false, select(~arg_1.x, ~arg_1.x, arg_0.x) >> (~min(53311u, ~arg_1.x) % 32u), u_input.a, 7704u);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    global0 = array<vec3<i32>, 23>();
    var var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, select(15170i >> (0u % 32u), abs(2147483647i), true), arg_0.x >> (_wgslsmith_mod_u32(14755u, u_input.a) % 32u), ~(~0i)), vec4<i32>(1i, arg_1.x, 26549i, arg_0.x)) ^ (abs(vec4<i32>(~arg_1.x, -4965i, i32(-1i) * -32670i, arg_1.x)) | vec4<i32>(countOneBits(arg_0.x), 43354i, -2147483647i, firstTrailingBit(1i)));
    let var_2 = true;
    var var_3 = Struct_1(var_2, ~1u, arg_2.b, u_input.a);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 23>();
    global0 = array<vec3<i32>, 23>();
    global0 = array<vec3<i32>, 23>();
    var var_0 = func_3(vec3<i32>(countOneBits(-2189i), min(-2147483647i, 1i), _wgslsmith_div_i32(-1i, 9789i)), firstLeadingBit(-firstLeadingBit(vec4<i32>(-6817i, 0i, 0i, -29749i))), func_2(func_1(), vec2<u32>(~u_input.a, firstTrailingBit(18324u)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2093i, 13379i), vec2<i32>(-2147483647i, 0i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-28673i, 2147483647i), vec2<i32>(50318i, 31910i)), 50860i)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) >= (0u << (u_input.a % 32u));
    let var_1 = Struct_1(any(select(vec3<bool>(func_2(vec2<bool>(true, true), vec2<u32>(111065u, 4294967295u), vec3<i32>(1i, 25911i, 30852i)).a, true, false), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(trunc(1000f)) >= _wgslsmith_f_op_f32(1597f + -106f))), firstLeadingBit(36750u), ((~20193u | _wgslsmith_div_u32(u_input.a, u_input.a)) << (~firstLeadingBit(4294967295u) % 32u)) ^ func_2(vec2<bool>(true, true), _wgslsmith_clamp_vec2_u32(vec2<u32>(48162u, 4294967295u), vec2<u32>(u_input.a, 23681u), vec2<u32>(u_input.a, u_input.a)) << (vec2<u32>(u_input.a, 17004u) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(16264u, u_input.a) << ((4294967295u ^ u_input.a) % 32u), 23u)]).d, 1u);
    let var_2 = Struct_1(!var_1.a, ~min(~_wgslsmith_mod_u32(73662u, 4294967295u), 1u), ~u_input.a, 1u);
    var_0 = var_1.a | any(!vec2<bool>(true, all(vec2<bool>(true, false))));
    var_0 = false;
    var_0 = !select(true, var_1.a, func_1().x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~4294967295u), ~(global1[_wgslsmith_index_u32(firstTrailingBit(0u), 15u)] | firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u, 15u)])) << (abs(global1[_wgslsmith_index_u32(var_1.b, 15u)]) % vec3<u32>(32u)), ~vec3<u32>(var_2.d, 23019u, countOneBits(max(u_input.a, 1u))), _wgslsmith_f_op_f32(f32(-1f) * -201f), reverseBits(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(68911u, var_1.c, var_1.b, 8540u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, 2598u, 7654u), vec4<u32>(var_2.d, var_2.d, 1u, u_input.a)))), 15u)]));
}

