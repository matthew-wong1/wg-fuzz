struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 18302u, 1u, 4294967295u);

var<private> global1: Struct_1 = Struct_1(0i, 64501u);

var<private> global2: f32 = 391f;

var<private> global3: bool = false;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    global3 = all(select(select(vec3<bool>(true, u_input.c.x > 5032i, true), vec3<bool>(false, true, true), all(vec2<bool>(false, false))), vec3<bool>(true, true, true), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), any(vec2<bool>(false, true))), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))));
    var var_0 = Struct_1(0i, 4294967295u);
    let var_1 = true & any(!vec4<bool>(true, true, select(true, false, true), any(vec3<bool>(false, false, true))));
    let var_2 = Struct_1(3879i, ~(global1.b << (~global1.b % 32u)));
    let var_3 = var_0.b;
    return var_2.a;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(~func_3(), global0.x);
    return var_0.a;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>) -> vec4<u32> {
    var var_0 = vec3<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(func_2(), min(u_input.b.x, arg_1.a)), -(u_input.b ^ u_input.b)) >= -arg_1.a, select(-746f > arg_2.x, all(select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), !vec4<bool>(false, arg_0, true, arg_0))), arg_0), true);
    let var_1 = 0i;
    var var_2 = vec3<u32>(45540u, ~0u, _wgslsmith_mult_u32((u_input.a | abs(0u)) << ((1u | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 12638u, 61158u), vec3<u32>(u_input.a, 4294967295u, 1u))) % 32u), _wgslsmith_add_u32(~(~global1.b), global1.b)));
    var var_3 = Struct_1(-1i, 1u);
    var_0 = vec3<bool>(false, false, func_2() == (countOneBits(_wgslsmith_div_i32(arg_1.a, 1i)) ^ (firstTrailingBit(0i) << (_wgslsmith_add_u32(1u, global0.x) % 32u))));
    return _wgslsmith_clamp_vec4_u32(countOneBits(~vec4<u32>(arg_1.b, global1.b, 1u, 4294967295u) >> (countOneBits(abs(vec4<u32>(26803u, 85296u, 0u, var_3.b))) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_add_u32(~(~38782u), min(var_3.b, 4294967295u)), ~1u, firstTrailingBit(firstTrailingBit(countOneBits(40270u))), ~(_wgslsmith_mod_u32(arg_1.b, var_3.b) ^ ~var_2.x)), max(~vec4<u32>(40430u, ~var_2.x, 48903u, ~0u), countOneBits(~vec4<u32>(48747u, var_3.b, 0u, 26813u)) | _wgslsmith_add_vec4_u32(vec4<u32>(global1.b, u_input.d, u_input.d, 32124u), abs(vec4<u32>(4294967295u, 25307u, var_2.x, global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    global0 = ~_wgslsmith_clamp_vec4_u32(~func_1(u_input.a == global1.b, Struct_1(u_input.c.x, 25730u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(714f, -1000f, -548f, 957f))), firstLeadingBit(~vec4<u32>(0u, global0.x, 62834u, 44908u) >> (~vec4<u32>(42451u, global1.b, 0u, global0.x) % vec4<u32>(32u))), max(vec4<u32>(101997u ^ u_input.a, global0.x, u_input.a, 4294967295u), vec4<u32>(~global0.x, 51207u >> (global0.x % 32u), 20663u, 0u)));
    let var_1 = ~4294967295u;
    global1 = Struct_1(-13582i, ~_wgslsmith_dot_vec4_u32(vec4<u32>(~28045u, global0.x, u_input.a ^ 59980u, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(59406u, 1u, var_1, 43075u) & vec4<u32>(36481u, 0u, var_1, global0.x), abs(vec4<u32>(23589u, u_input.d, global1.b, 27326u)))));
    var var_2 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, 7000i, 135f);
}

