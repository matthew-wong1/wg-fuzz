struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1>;

var<private> global1: array<vec2<f32>, 11>;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<u32>(1u, 4294967295u, 60195u), vec4<u32>(1u, 42148u, 4294967295u, 1u), vec4<u32>(1u, 32480u, 35947u, 0u), 14960i), Struct_1(vec3<u32>(16191u, 42677u, 47673u), vec4<u32>(4294967295u, 19111u, 1u, 41194u), vec4<u32>(43259u, 14094u, 99927u, 1u), 0i), Struct_1(vec3<u32>(25824u, 4294967295u, 32319u), vec4<u32>(1u, 4294967295u, 25434u, 0u), vec4<u32>(60178u, 1u, 4294967295u, 25646u), -21980i), Struct_1(vec3<u32>(4294967295u, 5990u, 93450u), vec4<u32>(73445u, 4294967295u, 0u, 27758u), vec4<u32>(31232u, 6278u, 1u, 4294967295u), -6713i), Struct_1(vec3<u32>(53225u, 44337u, 128835u), vec4<u32>(17330u, 8189u, 1u, 1u), vec4<u32>(70496u, 12774u, 60840u, 68385u), 34267i), Struct_1(vec3<u32>(0u, 24020u, 32612u), vec4<u32>(21476u, 4294967295u, 0u, 33522u), vec4<u32>(0u, 1u, 1u, 1u), 0i), Struct_1(vec3<u32>(0u, 45663u, 1u), vec4<u32>(1u, 5426u, 21307u, 0u), vec4<u32>(935u, 84415u, 0u, 11854u), 1i), Struct_1(vec3<u32>(0u, 0u, 38452u), vec4<u32>(1u, 1u, 15136u, 23625u), vec4<u32>(72264u, 0u, 1u, 54119u), 19031i));

var<private> global3: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<bool>, arg_3: vec3<f32>) -> i32 {
    let var_0 = 1u;
    global0 = array<vec3<u32>, 1>();
    var var_1 = any(vec2<bool>(all(!(!vec4<bool>(true, true, arg_2.x, false))), arg_2.x));
    let var_2 = -227f;
    let var_3 = Struct_1(max(global0[_wgslsmith_index_u32(~1u, 1u)], vec3<u32>(1u, ~var_0, var_0 << (u_input.a.x % 32u)) ^ global0[_wgslsmith_index_u32(4294967295u, 1u)]), ~countOneBits(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 6799u)), ~_wgslsmith_clamp_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, var_0, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 18019u, u_input.a.x, 1u), vec4<u32>(44012u, u_input.a.x, var_0, 24814u))), ~(~vec4<u32>(u_input.a.x, 38664u, 0u, 4294967295u)), vec4<u32>(u_input.a.x << (21591u % 32u), ~var_0, 9149u, 6180u ^ var_0)), arg_0.x);
    return _wgslsmith_div_i32(firstLeadingBit(-31435i), ~(~(i32(-1i) * -7758i)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> bool {
    var var_0 = Struct_3(vec4<i32>(-arg_1.d, 57096i, 1i, func_3(~vec3<i32>(2147483647i, u_input.b.x, 14617i), arg_0.x, select(!vec2<bool>(true, arg_2), vec2<bool>(arg_3.x, true), select(arg_3, arg_3, arg_3.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(483f, -1077f, 232f)))), false);
    var var_1 = Struct_2(~vec4<u32>(70488u, firstTrailingBit(firstTrailingBit(arg_1.a.x)), arg_1.a.x, 4294967295u), arg_1, all(arg_3));
    var var_2 = select(!select(vec3<bool>(!arg_3.x, true, var_1.c), !vec3<bool>(false, false, arg_3.x), true), vec3<bool>(true, var_1.c, true), vec3<bool>(false, var_1.c, reverseBits(-2147483647i) <= _wgslsmith_sub_i32(abs(arg_0.x), ~2147483647i)));
    var_0 = Struct_3(arg_0, var_1.c);
    let var_3 = true;
    return select(arg_3.x, var_2.x, !(!(!var_2.x) != true));
}

fn func_1() -> Struct_3 {
    global0 = array<vec3<u32>, 1>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-662f * 1269f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(721f, 1135f) - _wgslsmith_f_op_f32(trunc(-1731f)))))));
    global3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(525f * var_0)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1396f - var_0)) - _wgslsmith_f_op_f32(-var_0)), -652f, false))));
    global2 = array<Struct_1, 8>();
    let var_1 = vec2<bool>(!(func_2(vec4<i32>(u_input.c.x, 32230i, 1i, u_input.c.x), global2[_wgslsmith_index_u32(0u >> (1u % 32u), 8u)], true, vec2<bool>(true, true)) | true), true);
    return Struct_3(abs(_wgslsmith_div_vec4_i32(min(u_input.b, u_input.d) ^ abs(vec4<i32>(u_input.b.x, u_input.d.x, -31298i, u_input.c.x)), min(-u_input.d, vec4<i32>(u_input.c.x, 22093i, 2147483647i, u_input.c.x) >> (vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))))), any(select(select(vec3<bool>(var_1.x, false, var_1.x), !vec3<bool>(true, true, var_1.x), var_1.x), !vec3<bool>(true, false, var_1.x), vec3<bool>(true, var_1.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = var_0.a;
    let var_2 = Struct_2(vec4<u32>(_wgslsmith_clamp_u32((u_input.a.x ^ 2974u) & 45697u, 1u, 4294967295u), 88847u, 56194u, u_input.a.x), Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(7918u, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(0u, 1u)]) >> (vec3<u32>(~u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, u_input.a.x), 1u) % vec3<u32>(32u)), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, u_input.a.x, 87073u), vec4<u32>(12471u, 84406u, 30614u, u_input.a.x))), vec4<u32>(u_input.a.x | firstLeadingBit(u_input.a.x), firstTrailingBit(u_input.a.x << (u_input.a.x % 32u)), 79919u, u_input.a.x), u_input.b.x), true);
    let var_3 = ~var_2.b.c;
    global1 = array<vec2<f32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(-578f + _wgslsmith_f_op_f32(-1730f * -613f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1019f)), _wgslsmith_f_op_f32(f32(-1f) * -1057f)))))), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(0u, 0u)), ~var_3.yz) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.a.x, ~var_2.a.x), firstLeadingBit(vec2<u32>(4294967295u, var_3.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(1259f)), 234f, _wgslsmith_f_op_f32(992f + _wgslsmith_f_op_f32(-1836f + 140f))) - vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1087f))), _wgslsmith_f_op_f32(-1068f * 365f))));
}

