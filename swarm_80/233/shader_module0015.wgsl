struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(2226f, 427f, -1000f, -1000f, -239f, -647f, -590f, 2059f, 331f, 797f, 245f, -475f, 1000f, -675f, 988f, -406f, 1000f, 911f, 154f, 2276f, -277f, 517f, 1187f);

var<private> global1: array<Struct_1, 11>;

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-1i), Struct_1(0i), Struct_1(14532i), Struct_1(0i), Struct_1(-2992i), Struct_1(-35214i), Struct_1(10436i), Struct_1(i32(-2147483648)), Struct_1(3440i), Struct_1(1i));

var<private> global3: Struct_1 = Struct_1(-53161i);

var<private> global4: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec2<i32>) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(1u, 10u)];
    var var_1 = Struct_1(firstTrailingBit(~_wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_0.x, global3.a), _wgslsmith_mod_i32(global3.a, global3.a), 1i)));
    let var_2 = ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 1u));
    var var_3 = false;
    let var_4 = global1[_wgslsmith_index_u32(var_2.x, 11u)];
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = arg_0;
    global1 = array<Struct_1, 11>();
    var var_1 = Struct_1(_wgslsmith_div_i32((~(-58590i) & _wgslsmith_mod_i32(global4.a, var_0.a)) & abs(firstLeadingBit(-28794i)), -global4.a));
    let var_2 = u_input.a >> (select(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_u32(~vec4<u32>(1919u, 32904u, 18572u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<bool>(!(!arg_2.x), true, arg_2.x, arg_2.x)) % vec4<u32>(32u));
    var var_3 = vec3<i32>(global4.a, var_0.a, _wgslsmith_sub_i32(firstTrailingBit(select(~u_input.b, global3.a, arg_1.x)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.a, global3.a, 1i), var_2.wzz), global3.a, -1i)));
    return Struct_1(global3.a);
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global2 = array<Struct_1, 10>();
    var var_0 = !vec2<bool>(true, all(vec2<bool>(true, true)));
    var var_1 = global1[_wgslsmith_index_u32(~21344u, 11u)];
    return func_3(global2[_wgslsmith_index_u32(1413u, 10u)], vec4<bool>(any(vec4<bool>(var_0.x, !var_0.x, var_0.x, func_2(arg_0.yx))), var_0.x, u_input.b != abs(-2147483647i), true), !(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(true, false, var_0.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec3<bool> {
    var var_0 = vec2<u32>(abs(~(arg_2 ^ arg_2)), arg_2);
    var var_1 = arg_0;
    var var_2 = ~var_0.x;
    global4 = global1[_wgslsmith_index_u32(var_0.x, 11u)];
    global2 = array<Struct_1, 10>();
    return select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(!select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), all(vec2<bool>(true, true))), vec3<bool>(true, any(vec4<bool>(true, true, false, false)), true)));
}

fn func_5(arg_0: vec3<bool>, arg_1: i32, arg_2: u32) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(33675u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_2, arg_2, arg_2), vec4<u32>(arg_2, 4294967295u, arg_2, arg_2)), _wgslsmith_mult_u32(0u, 0u), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2, 0u, arg_2), _wgslsmith_add_vec3_u32(vec3<u32>(99801u, arg_2, arg_2), vec3<u32>(51204u, 88044u, 0u)))), ~(~(~vec4<u32>(arg_2, arg_2, arg_2, 4294967295u)))), 11582u, arg_2), 11u)];
    let var_1 = global2[_wgslsmith_index_u32(arg_2, 10u)];
    var var_2 = all(vec3<bool>(all(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), true)) | all(!vec2<bool>(arg_0.x, true)), select(any(vec4<bool>(true, false, arg_0.x, false)), false, func_4(Struct_1(global4.a), global2[_wgslsmith_index_u32(0u, 10u)], 4294967295u).x) | (select(false, true, true) && (global3.a != var_0.a)), !(all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)) | arg_0.x)));
    let var_3 = func_1(u_input.a.xzw);
    global1 = array<Struct_1, 11>();
    return func_3(Struct_1(30665i), select(select(!select(vec4<bool>(false, true, true, arg_0.x), vec4<bool>(false, false, true, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), !select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, false, false, arg_0.x), false), select(!vec4<bool>(arg_0.x, true, false, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), arg_0.x))), vec4<bool>(select(func_2(u_input.a.wy), true, true), true, true, func_4(func_1(u_input.a.wxy), Struct_1(global3.a), ~7589u).x), false), !(!arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(global1[_wgslsmith_index_u32(40290u, 11u)], func_1(u_input.a.wwz), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, min(0u, 76589u)), ~(~vec2<u32>(0u, 45961u)))), global3.a, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec3<i32>(countOneBits(min(_wgslsmith_sub_i32(global4.a, -1i), 1i)), 0i, 2147483647i));
}

