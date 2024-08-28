struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1057f;

var<private> global1: array<vec3<i32>, 8>;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(true, 1u, vec4<i32>(-15934i, 0i, 2147483647i, -24280i)), Struct_1(true, 49325u, vec4<i32>(-10151i, i32(-2147483648), -1i, -1i)), Struct_1(false, 11562u, vec4<i32>(14024i, 2147483647i, 2147483647i, -12566i)), Struct_1(false, 60977u, vec4<i32>(82916i, 1i, -1i, -1i)), Struct_1(true, 0u, vec4<i32>(-1i, 2147483647i, -1i, -4522i)), Struct_1(true, 0u, vec4<i32>(68792i, 0i, -1i, -7226i)), Struct_1(false, 1u, vec4<i32>(2147483647i, 2147483647i, 2147483647i, 0i)), Struct_1(false, 7664u, vec4<i32>(28971i, -36053i, i32(-2147483648), 1i)), Struct_1(false, 1u, vec4<i32>(0i, 1i, 1i, -1i)), Struct_1(true, 78806u, vec4<i32>(2143i, -17959i, i32(-2147483648), -1i)), Struct_1(true, 10774u, vec4<i32>(-12417i, 2147483647i, 2147483647i, 20967i)), Struct_1(true, 85217u, vec4<i32>(2147483647i, -4531i, 40975i, 1i)), Struct_1(false, 4294967295u, vec4<i32>(0i, 16274i, 20887i, -2841i)), Struct_1(true, 14612u, vec4<i32>(0i, 1i, 1i, -1i)), Struct_1(true, 4294967295u, vec4<i32>(-1i, -1i, -28434i, -28287i)), Struct_1(true, 46894u, vec4<i32>(i32(-2147483648), -12211i, 18306i, -1i)), Struct_1(true, 1u, vec4<i32>(15350i, 65697i, 2147483647i, 30279i)), Struct_1(true, 0u, vec4<i32>(2283i, 14778i, 7078i, -2717i)), Struct_1(false, 31763u, vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -5458i)), Struct_1(true, 1u, vec4<i32>(-7266i, -6377i, 19096i, 4500i)), Struct_1(false, 206u, vec4<i32>(1i, 6029i, 1i, 15026i)), Struct_1(true, 671u, vec4<i32>(i32(-2147483648), -20134i, 0i, -43009i)), Struct_1(false, 1u, vec4<i32>(i32(-2147483648), 0i, 1i, -1i)), Struct_1(true, 50639u, vec4<i32>(i32(-2147483648), -54344i, -46505i, 2147483647i)), Struct_1(true, 88984u, vec4<i32>(-27958i, 2147483647i, -8737i, 0i)), Struct_1(false, 1u, vec4<i32>(-8320i, -1322i, 1i, 45555i)), Struct_1(true, 20767u, vec4<i32>(-1i, -33221i, -6431i, 2147483647i)), Struct_1(false, 20318u, vec4<i32>(0i, 0i, -38516i, 2147483647i)), Struct_1(true, 2751u, vec4<i32>(0i, -24659i, 14478i, -32098i)), Struct_1(false, 0u, vec4<i32>(-33430i, 39378i, -2029i, i32(-2147483648))));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    return _wgslsmith_dot_vec2_u32(vec2<u32>(5371u, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, u_input.a ^ u_input.a), ~u_input.a)), (abs(~vec2<u32>(u_input.a, u_input.a)) | max(vec2<u32>(u_input.a, 4294967295u) << (vec2<u32>(62915u, 31125u) % vec2<u32>(32u)), vec2<u32>(u_input.a, 1u))) | ~firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))));
}

fn func_2() -> Struct_1 {
    global0 = 148f;
    var var_0 = firstLeadingBit(vec4<u32>(u_input.a, func_3(), _wgslsmith_dot_vec2_u32(abs(max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 0u))), abs(firstTrailingBit(vec2<u32>(1437u, u_input.a)))), u_input.a));
    var var_1 = Struct_1(true, u_input.a >> (7789u % 32u), u_input.b);
    var_0 = vec4<u32>(~u_input.a, func_3() | ((var_1.b << (min(var_1.b, u_input.a) % 32u)) & abs(22110u)), ~(~u_input.a), 0u);
    var_1 = Struct_1(var_1.a, u_input.a, abs(firstTrailingBit(~vec4<i32>(-2147483647i, 2147483647i, u_input.b.x, 12230i))));
    return global2[_wgslsmith_index_u32(1u, 30u)];
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> StorageBuffer {
    global1 = array<vec3<i32>, 8>();
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1327f, 1285f))))), _wgslsmith_f_op_f32(trunc(-1792f)))));
    global1 = array<vec3<i32>, 8>();
    var var_1 = Struct_1(select(false, true, true), 1u, ~(_wgslsmith_clamp_vec4_i32(u_input.b, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, arg_1, arg_1, 2147483647i), vec4<i32>(-2147483647i, 35430i, 1i, 16556i)), u_input.b) >> (~(~vec4<u32>(u_input.a, 1u, 1u, u_input.a)) % vec4<u32>(32u))));
    let var_2 = func_2();
    return StorageBuffer(1642f, vec3<f32>(var_0, 582f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-var_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(u_input.b.wyx >> (_wgslsmith_sub_vec3_u32(abs(vec3<u32>(62738u, u_input.a, 4294967295u) ^ vec3<u32>(1u, 1u, u_input.a)), vec3<u32>(reverseBits(u_input.a), ~u_input.a, max(4294967295u, 1u))) % vec3<u32>(32u)), -u_input.b.x);
}

