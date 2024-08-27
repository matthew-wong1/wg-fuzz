struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec3<bool>(true, false, true), 4294967295u, Struct_1(false), vec2<i32>(47996i, 1i)), Struct_2(vec3<bool>(false, true, true), 14430u, Struct_1(false), vec2<i32>(1i, 0i)), Struct_2(vec3<bool>(true, true, false), 53356u, Struct_1(true), vec2<i32>(-1i, -3882i)), Struct_2(vec3<bool>(false, true, false), 1u, Struct_1(false), vec2<i32>(0i, -1i)), Struct_2(vec3<bool>(false, true, false), 67585u, Struct_1(true), vec2<i32>(2147483647i, -21402i)), Struct_2(vec3<bool>(false, true, false), 56894u, Struct_1(true), vec2<i32>(0i, 2147483647i)), Struct_2(vec3<bool>(true, true, true), 53494u, Struct_1(false), vec2<i32>(22912i, 0i)), Struct_2(vec3<bool>(false, false, true), 4294967295u, Struct_1(true), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_2(vec3<bool>(true, true, true), 37150u, Struct_1(true), vec2<i32>(1145i, 53070i)), Struct_2(vec3<bool>(false, true, false), 2338u, Struct_1(false), vec2<i32>(57981i, 1i)), Struct_2(vec3<bool>(true, false, true), 0u, Struct_1(true), vec2<i32>(2147483647i, 16308i)), Struct_2(vec3<bool>(true, true, true), 4294967295u, Struct_1(true), vec2<i32>(0i, 2147483647i)), Struct_2(vec3<bool>(false, true, false), 4294967295u, Struct_1(false), vec2<i32>(1i, i32(-2147483648))), Struct_2(vec3<bool>(false, true, false), 4294967295u, Struct_1(true), vec2<i32>(-659i, -1i)), Struct_2(vec3<bool>(true, false, true), 0u, Struct_1(false), vec2<i32>(65656i, -1i)), Struct_2(vec3<bool>(false, true, true), 0u, Struct_1(true), vec2<i32>(-14247i, 2147483647i)), Struct_2(vec3<bool>(false, true, false), 0u, Struct_1(false), vec2<i32>(-19231i, 2147483647i)), Struct_2(vec3<bool>(true, false, true), 22854u, Struct_1(true), vec2<i32>(80042i, 0i)), Struct_2(vec3<bool>(true, false, true), 37850u, Struct_1(true), vec2<i32>(-50056i, -653i)), Struct_2(vec3<bool>(false, true, false), 4294967295u, Struct_1(false), vec2<i32>(0i, -17482i)));

var<private> global1: u32;

var<private> global2: array<Struct_2, 2>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(true);
    global2 = array<Struct_2, 2>();
    var var_1 = true;
    global1 = u_input.b << (_wgslsmith_clamp_u32(max(select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 0u)), ~u_input.b, true), _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b, u_input.b), _wgslsmith_div_u32(u_input.b, u_input.b))), ~4294967295u, u_input.b) % 32u);
    var var_2 = Struct_1(var_0.a);
    return 1u;
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: vec2<f32>, arg_3: vec3<i32>) -> bool {
    let var_0 = vec2<u32>(func_3(), 0u);
    global2 = array<Struct_2, 2>();
    var var_1 = arg_0.x;
    let var_2 = !select(select(vec2<bool>(false, true), arg_0, vec2<bool>(arg_0.x | arg_0.x, !arg_0.x)), select(select(arg_0, select(vec2<bool>(arg_0.x, arg_0.x), arg_0, vec2<bool>(arg_0.x, true)), arg_0), !vec2<bool>(true, arg_0.x), !(!arg_0)), true);
    var var_3 = vec4<i32>(0i, ~(-1i), u_input.a, _wgslsmith_mult_i32(u_input.a | u_input.a, _wgslsmith_clamp_i32(arg_3.x << (~u_input.b % 32u), -1i, -u_input.a & abs(-10682i))));
    return true;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = arg_3.c;
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(arg_3.b << (1u % 32u), 31466u, ~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.b, u_input.b)), vec2<u32>(u_input.b, u_input.b))), ~_wgslsmith_div_vec3_u32(~vec3<u32>(arg_3.b, arg_3.b, u_input.b), ~vec3<u32>(4294967295u, 0u, arg_3.b) ^ vec3<u32>(80644u, arg_3.b, 74677u)));
    var var_2 = select(!(!(!vec2<bool>(true, arg_2.a))), vec2<bool>(any(vec2<bool>(func_2(arg_3.a.yz, 187f, vec2<f32>(arg_0, 1081f), vec3<i32>(arg_3.d.x, -2147483647i, 0i)), true)), arg_3.a.x != (arg_3.d.x != countOneBits(arg_1.x))), select(vec2<bool>(false, true), arg_3.a.xz, arg_3.a.zz));
    global1 = _wgslsmith_mod_u32(arg_3.b, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(firstLeadingBit(arg_3.b), u_input.b) << (_wgslsmith_sub_u32(4294967295u >> (arg_3.b % 32u), ~47678u) % 32u), firstLeadingBit(arg_3.b), _wgslsmith_mod_u32(var_1.x, 1u)));
    global1 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(~4294967295u, ~max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(arg_3.b, 4294967295u, 0u)), ~27391u)), u_input.b);
    return vec3<bool>(var_2.x, arg_2.a, ~func_3() >= arg_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(!vec3<bool>(true, u_input.b < u_input.b, true), select(vec3<bool>(false, true, u_input.a >= u_input.a), func_1(_wgslsmith_f_op_f32(max(1188f, 364f)), vec4<i32>(1912i, -18252i, -31830i, 2147483647i), Struct_1(true), global0[_wgslsmith_index_u32(~u_input.b, 20u)]), func_1(_wgslsmith_f_op_f32(-1131f + -1272f), vec4<i32>(0i, 34392i, -1i, u_input.a), Struct_1(false), Struct_2(vec3<bool>(false, false, true), u_input.b, Struct_1(true), vec2<i32>(u_input.a, 34608i)))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 1329f))), vec4<i32>(-28937i, u_input.a, -1i & u_input.a, u_input.a), Struct_1(u_input.b <= u_input.b), Struct_2(func_1(1602f, vec4<i32>(u_input.a, u_input.a, -1i, -2147483647i), Struct_1(false), global2[_wgslsmith_index_u32(u_input.b, 2u)]), 70659u, Struct_1(false), _wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, -1i))))), _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u) & vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), min(vec4<u32>(1u, 100573u, 4294967295u, 139826u), vec4<u32>(1u, 6092u, u_input.b, 36157u)))), reverseBits(~(u_input.b << (4294967295u % 32u)))), Struct_1(any(vec3<bool>(true, true, true))), max(~(-vec2<i32>(-1i, u_input.a)) ^ firstTrailingBit(min(vec2<i32>(-2147483647i, 43248i), vec2<i32>(-12613i, 0i))), _wgslsmith_add_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 62257i), vec2<i32>(u_input.a, 37253i)), ~(~vec2<i32>(u_input.a, u_input.a)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -197f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(1859f)), 1000f, -503f, _wgslsmith_f_op_f32(abs(var_1.x)));
    var var_3 = countOneBits(vec4<u32>(13213u, 31613u, _wgslsmith_add_u32(~var_0.b, ~1u), 1u));
    global2 = array<Struct_2, 2>();
    var_3 = _wgslsmith_mod_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b, 1u, var_3.x, 44012u), vec4<u32>(var_3.x, 69827u, 0u, var_3.x)), countOneBits(vec4<u32>(var_3.x, var_3.x, u_input.b, 14916u))) << (max(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, 4294967295u, 0u, 65979u), vec4<u32>(0u, var_0.b, 81413u, 0u)), ~vec4<u32>(39902u, var_3.x, 1u, 1u)) % vec4<u32>(32u))), vec4<u32>(~(~_wgslsmith_add_u32(69196u, 12569u)), 46652u, ~u_input.b ^ (~u_input.b >> (u_input.b % 32u)), ~u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1384f + var_2.x))), _wgslsmith_f_op_f32(select(1243f, _wgslsmith_f_op_f32(-var_1.x), var_0.c.a)))));
}

