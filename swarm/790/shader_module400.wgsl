struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<bool>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(false, true, true, false, false, false, true, true, false, false, false, true, true, true, false, true, true, true, false, false, false, true, true, true, false, true, true, true);

var<private> global1: array<bool, 13>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> f32 {
    global1 = array<bool, 13>();
    let var_0 = arg_1;
    let var_1 = select(select(select(select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(arg_0.c, 28u)], global0[_wgslsmith_index_u32(arg_0.c, 28u)]), !global1[_wgslsmith_index_u32(0u, 13u)]), select(select(vec2<bool>(global1[_wgslsmith_index_u32(arg_0.c, 13u)], global0[_wgslsmith_index_u32(72304u, 28u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 28u)]), vec2<bool>(false, true)), select(vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 13u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 13u)], true), false), all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], false, false, global1[_wgslsmith_index_u32(4294967295u, 13u)]))), !select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.c, 28u)], global1[_wgslsmith_index_u32(u_input.a, 13u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 28u)], global1[_wgslsmith_index_u32(u_input.a, 13u)]), global0[_wgslsmith_index_u32(u_input.a, 28u)])), select(select(vec2<bool>(global1[_wgslsmith_index_u32(104157u, 13u)], false), !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 28u)]), !global1[_wgslsmith_index_u32(4294967295u, 13u)]), !vec2<bool>(global1[_wgslsmith_index_u32(14957u, 13u)], false), select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.c, 28u)], false), !vec2<bool>(global1[_wgslsmith_index_u32(arg_0.c, 13u)], global1[_wgslsmith_index_u32(arg_0.c, 13u)]), true)), global1[_wgslsmith_index_u32(arg_0.c, 13u)]), vec2<bool>(false, false), select(select(select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(0u, 28u)]), select(vec2<bool>(false, global1[_wgslsmith_index_u32(32925u, 13u)]), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.c, 13u)], global0[_wgslsmith_index_u32(u_input.a, 28u)]), true), all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 13u)], false, true, true))), vec2<bool>(!global0[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(arg_0.c, 13u)]), global0[_wgslsmith_index_u32(min(~u_input.a, _wgslsmith_clamp_u32(4294967295u, 1u, arg_0.c)), 28u)]), select(!vec2<bool>(false, global0[_wgslsmith_index_u32(63793u, 28u)]), vec2<bool>(true, true), true), u_input.a != firstTrailingBit(firstLeadingBit(u_input.a))));
    global0 = array<bool, 28>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-877f, -317f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2159f)) + -120f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-512f)) * 460f))) + 1f);
    return -888f;
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: bool, arg_3: vec4<f32>) -> vec4<u32> {
    var var_0 = abs((u_input.a & select(4294967295u, u_input.a, false)) & 4294967295u) | ~(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a, 1u, u_input.a), ~u_input.a));
    let var_1 = _wgslsmith_f_op_f32(-2405f - arg_3.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(u_input.b, arg_1.x, 30663u), -1i)) * var_1)), var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2051f) - _wgslsmith_f_op_f32(965f * -2295f)), _wgslsmith_f_op_f32(max(-1807f, -1356f))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)))), _wgslsmith_f_op_f32(f32(-1f) * -588f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.x)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1081f + 1297f)))), arg_3.x), true || all(select(vec2<bool>(true, true), vec2<bool>(true, arg_2), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 28u)])))));
    var var_3 = abs(firstTrailingBit(vec3<i32>(-1i, 1i, 45213i) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(118078u, 40747u, u_input.a)) % vec3<u32>(32u))) | _wgslsmith_clamp_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 2147483647i, 0i), vec3<i32>(arg_1.x, u_input.b, 0i), vec3<i32>(arg_1.x, arg_1.x, u_input.b)), vec3<i32>(-36526i, firstTrailingBit(1i), _wgslsmith_mult_i32(u_input.b, -61003i)), countOneBits(~vec3<i32>(1i, 24040i, arg_1.x))));
    var var_4 = select(vec2<u32>(10141u, 3097u | u_input.a), vec2<u32>(41988u, max(44667u, 22314u)), any(vec3<bool>(true, arg_2, all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 28u)], arg_2, global1[_wgslsmith_index_u32(137090u, 13u)], global1[_wgslsmith_index_u32(49501u, 13u)])))) & any(select(!vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(global0[_wgslsmith_index_u32(1u, 28u)], false, false), vec3<bool>(global1[_wgslsmith_index_u32(8543u, 13u)], false, arg_2))));
    return vec4<u32>(var_4.x, ~_wgslsmith_add_u32(u_input.a, var_4.x), 54435u, firstLeadingBit(~49028u) | ~_wgslsmith_add_u32(u_input.a, 4294967295u));
}

fn func_1() -> StorageBuffer {
    global0 = array<bool, 28>();
    var var_0 = func_2(-1040f, _wgslsmith_mod_vec2_i32(-(vec2<i32>(u_input.b, -33814i) ^ vec2<i32>(-1i, u_input.b)), ~(-vec2<i32>(u_input.b, 0i) >> (firstLeadingBit(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)))), u_input.a > _wgslsmith_clamp_u32(~min(73796u, u_input.a), 1u, _wgslsmith_mult_u32(u_input.a, u_input.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1966f), -442f, _wgslsmith_f_op_f32(-680f + -385f), 314f), vec4<f32>(788f, _wgslsmith_f_op_f32(f32(-1f) * -500f), _wgslsmith_f_op_f32(185f - -2681f), _wgslsmith_f_op_f32(ceil(-110f))), !(false && global1[_wgslsmith_index_u32(u_input.a, 13u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-532f, 2213f, -620f, 551f), vec4<f32>(-843f, 1000f, -1362f, -641f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-714f, -1021f, -626f, -1000f))))));
    let var_1 = Struct_5(var_0.yz);
    let var_2 = u_input.b;
    var_0 = reverseBits(vec4<u32>(~(~45763u), 17359u, var_0.x, reverseBits(~var_0.x >> (~36146u % 32u))));
    return StorageBuffer(min(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(24770i, u_input.b, u_input.b, 2147483647i), vec4<i32>(-25151i, 64877i, u_input.b, u_input.b))) ^ (_wgslsmith_add_vec4_i32(vec4<i32>(var_2, u_input.b, -55320i, 53419i), vec4<i32>(-32728i, u_input.b, -2147483647i, u_input.b)) ^ -vec4<i32>(1i, var_2, -28711i, var_2)), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(4455i, var_2, u_input.b, 26375i), firstLeadingBit(vec4<i32>(20605i, var_2, var_2, var_2))))), _wgslsmith_f_op_f32(trunc(1467f)), firstTrailingBit(vec2<i32>(-11701i, var_2)), -1i, vec2<i32>(-1148i, max(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2, var_2, var_2) << (vec3<u32>(var_1.a.x, 0u, var_1.a.x) % vec3<u32>(32u)), vec3<i32>(var_2, 35372i, -18692i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_2, -37951i, var_2) >> (vec4<u32>(15351u, var_1.a.x, u_input.a, var_1.a.x) % vec4<u32>(32u)), reverseBits(vec4<i32>(13397i, -63433i, var_2, u_input.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

