struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(486f, -477f, -252f, -1010f, 612f);

var<private> global1: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    global1 = u_input.a;
    global1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~0u, reverseBits(u_input.a), 1u, select(1u, 4294967295u, true)), ~(vec4<u32>(4294967295u, u_input.a, 20342u, 20254u) ^ vec4<u32>(u_input.a, u_input.a, 41045u, 1u))), _wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(5885u, u_input.a, 24275u, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), vec4<u32>(7579u, _wgslsmith_mult_u32(4294967295u, u_input.a), 4294967295u, _wgslsmith_add_u32(31424u, u_input.a)))), 0u);
    global0 = array<f32, 5>();
    var var_0 = Struct_1(u_input.b.x);
    var var_1 = vec3<u32>(~1u, ~u_input.a, u_input.a);
    return var_0.a >> (~(~(~u_input.a) ^ u_input.a) % 32u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec2<bool>) -> u32 {
    var var_0 = !select(vec4<bool>(false, all(vec3<bool>(false, arg_3.x, true)), any(!vec2<bool>(arg_3.x, arg_3.x)), any(select(vec2<bool>(false, false), vec2<bool>(false, arg_3.x), arg_3.x))), vec4<bool>(_wgslsmith_f_op_f32(floor(138f)) > _wgslsmith_f_op_f32(step(-757f, global0[_wgslsmith_index_u32(0u, 5u)])), true, !(!arg_3.x), arg_3.x), !(-2147483647i != _wgslsmith_clamp_i32(arg_0.a, -31388i, arg_0.a)));
    let var_1 = var_0.yxw;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(arg_2.x, 5u)])), global0[_wgslsmith_index_u32(u_input.a, 5u)], -570f);
    var var_3 = -282f;
    var var_4 = 66750u;
    return 56926u;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: u32) -> vec3<u32> {
    let var_0 = Struct_1(-1180i);
    var var_1 = global0[_wgslsmith_index_u32(select(reverseBits(min(~(arg_2 ^ 4294967295u), abs(u_input.a) << (1u % 32u))), arg_2, true), 5u)];
    global1 = abs(func_3(Struct_1(1i), Struct_1((var_0.a ^ -17430i) ^ func_2(vec4<bool>(true, true, false, true))), ~vec3<u32>(u_input.a, u_input.a, u_input.a), vec2<bool>(true, true)));
    let var_2 = vec3<bool>(true, 739f >= global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_2), _wgslsmith_sub_vec2_u32(vec2<u32>(20883u, u_input.a), vec2<u32>(45335u, u_input.a))) << (min(_wgslsmith_add_u32(0u, 79177u), u_input.a) % 32u), 5u)], true);
    global1 = ~u_input.a;
    return select(vec3<u32>(~(~(~42926u)), _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(26611u, u_input.a, 29881u), arg_2), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 21751u), vec2<u32>(24984u, u_input.a))), ~u_input.a), _wgslsmith_mult_vec3_u32(select(~vec3<u32>(u_input.a, 0u, 7404u) | _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(13463u, 81909u, 32866u)), ~vec3<u32>(arg_2, arg_2, 56506u) << (~vec3<u32>(u_input.a, u_input.a, 1u) % vec3<u32>(32u)), !all(var_2)), select(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, arg_2, 83300u), vec3<u32>(arg_2, arg_2, 85859u), vec3<u32>(u_input.a, 1u, u_input.a))), vec3<u32>(u_input.a, ~arg_2, 1u), vec3<bool>(var_2.x, select(false, var_2.x, false), any(vec4<bool>(var_2.x, true, var_2.x, true))))), _wgslsmith_add_i32(countOneBits(var_0.a), _wgslsmith_mod_i32(-33539i, u_input.b.x)) > u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(2147483647i);
    let var_1 = countOneBits(~select(min(func_1(u_input.b.ywx, vec2<i32>(-2147483647i, -1i), 4294967295u), ~vec3<u32>(4294967295u, 52426u, 83346u)), countOneBits(vec3<u32>(u_input.a, u_input.a, 4294967295u) >> (vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), true)));
    var var_2 = Struct_1(~select(-u_input.c ^ var_0.a, _wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.d), u_input.d & u_input.d), true));
    let var_3 = vec4<u32>(36312u, abs(10224u), reverseBits(select(1u, max(33043u, var_1.x), select(true, true, true))) >> (var_1.x % 32u), 1u);
    let var_4 = ~u_input.a | ~abs(~_wgslsmith_dot_vec2_u32(var_3.yz, var_1.zx));
    var_0 = Struct_1(var_2.a);
    var_0 = Struct_1(u_input.d.x);
    global1 = abs(var_1.x) ^ var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~select(var_3.zx, reverseBits(var_1.yy), vec2<bool>(true, false))), 0i);
}

