struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<f32, 14>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec4<u32>) -> vec3<i32> {
    global0 = array<Struct_2, 10>();
    var var_0 = abs(_wgslsmith_clamp_vec2_u32(~reverseBits(vec2<u32>(60976u, arg_2.x)), arg_1, arg_1));
    return _wgslsmith_sub_vec3_i32(select(vec3<i32>(2147483647i, 21673i, u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.a), arg_0.c.a), true) << (arg_2.xyw % vec3<u32>(32u)), arg_0.c.a) & arg_0.c.a;
}

fn func_1() -> Struct_1 {
    let var_0 = false;
    global0 = array<Struct_2, 10>();
    global1 = array<f32, 14>();
    global1 = array<f32, 14>();
    let var_1 = Struct_1(u_input.d, u_input.b);
    return Struct_1(select(_wgslsmith_mod_vec3_i32(-func_2(global0[_wgslsmith_index_u32(70757u, 10u)], vec2<u32>(806u, 21171u), vec4<u32>(4452u, 1u, 0u, 24475u)), vec3<i32>(var_1.b << (9292u % 32u), u_input.c | u_input.a, var_1.a.x)), ~_wgslsmith_div_vec3_i32(vec3<i32>(var_1.b, var_1.a.x, var_1.a.x) << (vec3<u32>(55147u, 0u, 0u) % vec3<u32>(32u)), select(u_input.d, vec3<i32>(var_1.b, var_1.b, u_input.a), true)), !all(select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), vec2<bool>(true, false)))), -2147483647i);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32) -> bool {
    global0 = array<Struct_2, 10>();
    let var_0 = Struct_1(~_wgslsmith_clamp_vec3_i32(~arg_0.a, arg_0.a, vec3<i32>(1763i, u_input.b, -1i) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), ~(~arg_0.b));
    var var_1 = false;
    global0 = array<Struct_2, 10>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_u32(~(_wgslsmith_clamp_vec3_u32(~vec3<u32>(18960u, 1u, 4294967295u), ~vec3<u32>(19137u, 38076u, 27422u), firstTrailingBit(vec3<u32>(37952u, 10733u, 0u))) & vec3<u32>(1u, 1u, 1u)), vec3<u32>(1442u, 1u << (_wgslsmith_dot_vec2_u32(select(vec2<u32>(11922u, 1u), vec2<u32>(0u, 4294967295u), false), vec2<u32>(1u, 1u)) % 32u), _wgslsmith_add_u32(_wgslsmith_sub_u32(~34181u, 1u), reverseBits(0u))));
    global1 = array<f32, 14>();
    var var_1 = Struct_2(select(vec2<bool>(func_3(func_1(), vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(~49822u, 14u)]), false), vec2<bool>(true, true), vec2<bool>(true | all(vec2<bool>(true, true)), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), false)))), !select(vec2<bool>(true, 0i >= u_input.c), vec2<bool>(false, true), _wgslsmith_f_op_f32(step(-548f, global1[_wgslsmith_index_u32(55900u, 14u)])) < global1[_wgslsmith_index_u32(var_0.x, 14u)]), Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(u_input.d, u_input.d), u_input.d, max(u_input.d, vec3<i32>(21620i, u_input.d.x, 0i))) ^ countOneBits(-u_input.d), _wgslsmith_mult_i32(min(firstTrailingBit(2147483647i), u_input.a), _wgslsmith_add_i32(~u_input.d.x, abs(u_input.d.x)))), 1371f);
    let var_2 = _wgslsmith_mod_i32(~u_input.c, 40882i);
    let var_3 = vec2<u32>(reverseBits(_wgslsmith_add_u32(38721u | var_0.x, 128997u)) >> (~(~(~43200u)) % 32u), _wgslsmith_dot_vec4_u32(~countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(13317u, var_0.x, 8723u, 1u), vec4<u32>(4294967295u, var_0.x, 0u, 9441u), vec4<u32>(4294967295u, var_0.x, var_0.x, 1u))), max(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0.x, var_0.x, 0u), abs(vec4<u32>(var_0.x, var_0.x, var_0.x, 7120u))), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(var_0.x, 4294967295u, var_0.x, 0u)), ~vec4<u32>(var_0.x, var_0.x, 1u, var_0.x), ~vec4<u32>(29141u, var_0.x, var_0.x, 13527u)))));
    let var_4 = Struct_2(select(var_1.a, var_1.b, var_1.b), select(select(!select(vec2<bool>(var_1.b.x, var_1.a.x), var_1.b, var_1.a.x), var_1.b, true), var_1.b, !vec2<bool>(any(var_1.b), true)), func_1(), var_1.d);
    var var_5 = 32965i;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.b, ~(_wgslsmith_add_i32(var_4.c.b | var_1.c.a.x, -u_input.a) | _wgslsmith_sub_i32(~(-2147483647i), _wgslsmith_mod_i32(13964i, -63227i))), -1323f);
}

