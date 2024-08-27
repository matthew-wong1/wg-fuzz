struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1i, i32(-2147483648));

var<private> global1: u32;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(select(-584f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2340f)))))), true));
    return Struct_2(~(-1i), 0i);
}

fn func_3(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec4<u32>(global2.b, 58502u, abs(_wgslsmith_add_u32(1u, global2.b) >> ((49945u << (global2.b % 32u)) % 32u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 44606u), vec2<u32>(global2.b, global2.b) & ~vec2<u32>(4294967295u, 1u))) | ~firstTrailingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(global2.b, 40462u, 4294967295u, 1u), vec4<u32>(global2.b, 1u, 9057u, global2.b)));
    var var_1 = var_0.x >> (_wgslsmith_mult_u32(global2.b, 4294967295u) % 32u);
    global1 = _wgslsmith_sub_u32(var_0.x, 29005u);
    var_1 = var_0.x ^ ~(global2.b << (global2.b % 32u));
    let var_2 = vec4<u32>(firstTrailingBit(1u), ~61567u, _wgslsmith_sub_u32(~(~25268u), 1u & _wgslsmith_add_u32(global2.b, global2.b)) << (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(14611u, global2.b, var_0.x, var_0.x)), vec4<u32>(min(4294967295u, 111468u), _wgslsmith_div_u32(83235u, var_0.x), var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(27690u, global2.b, global2.b, 38248u), vec4<u32>(4294967295u, 34999u, var_0.x, 43801u)))) % 32u), 1u);
    return func_2(-vec2<i32>(~global0.b, abs(i32(-1i) * -15514i)));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(global0.b, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(1835u, 47482u, 4294967295u, 0u) ^ ~vec4<u32>(0u, 68351u, 4294967295u, global2.b), max(~vec4<u32>(global2.b, 12439u, global2.b, 3872u), vec4<u32>(global2.b, global2.b, global2.b, 4294967295u) >> (vec4<u32>(global2.b, global2.b, global2.b, 1u) % vec4<u32>(32u)))), ~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 43284u, 0u, 32398u), vec4<u32>(31429u, global2.b, global2.b, 52694u), vec4<u32>(33019u, global2.b, global2.b, 44424u)), ~vec4<u32>(global2.b, 0u, global2.b, 0u))));
    global1 = _wgslsmith_add_u32(global2.b, _wgslsmith_sub_u32(16421u, _wgslsmith_add_u32(global2.b, ~4294967295u)) | (1u ^ ~(var_0.b ^ 0u)));
    let var_1 = var_0.a;
    let var_2 = ~var_0.b;
    let var_3 = !all(vec3<bool>(false, true, true));
    return func_3(func_2(vec2<i32>(-2147483647i, _wgslsmith_sub_i32(firstLeadingBit(-13255i), global2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec2<i32>(global2.a, -30718i));
    let var_1 = func_1();
    let var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(-13259i, (reverseBits(36043i) >> ((global2.b | 4294967295u) % 32u)) ^ -24264i), -vec2<i32>(_wgslsmith_div_i32(min(-2147483647i, -26920i), abs(1i)), global0.b << (1u % 32u)));
    let var_3 = global2.b;
    global0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<u32>(firstTrailingBit(global2.b), 1u, ~1u, max(global2.b, global2.b)) >> ((max(vec4<u32>(37290u, global2.b, global2.b, 1349u), vec4<u32>(50263u, global2.b, global2.b, 70381u)) ^ ~vec4<u32>(global2.b, global2.b, global2.b, 1u)) % vec4<u32>(32u)), vec4<u32>(~countOneBits(global2.b), global2.b, 0u, _wgslsmith_add_u32(global2.b, ~0u))), _wgslsmith_dot_vec2_u32(~(~(vec2<u32>(0u, 89770u) >> (vec2<u32>(global2.b, 41289u) % vec2<u32>(32u)))), firstLeadingBit(~vec2<u32>(1u, global2.b) >> (~vec2<u32>(global2.b, global2.b) % vec2<u32>(32u)))), 2147483647i);
}

