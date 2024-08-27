struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: Struct_3,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_2, 31>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    let var_0 = Struct_3(select(vec3<i32>(11619i, -57553i, -2147483647i << (u_input.d.x % 32u)) << (vec3<u32>(u_input.d.x, _wgslsmith_mult_u32(68292u, global0.x), 0u) % vec3<u32>(32u)), -max(firstTrailingBit(vec3<i32>(40904i, -2147483647i, 27119i)), vec3<i32>(-1i, 2147483647i, -12869i)), true), 4621i, -(~(-26396i)));
    var var_1 = vec3<bool>(true, true, true);
    return !any(vec3<bool>(var_1.x, false, select(-1i == var_0.b, var_1.x, true)));
}

fn func_2() -> bool {
    var var_0 = vec3<bool>(any(vec4<bool>(true, true, true, true)), true, false);
    global1 = array<Struct_2, 31>();
    global0 = (~u_input.c << ((reverseBits(vec3<u32>(0u, 43051u, u_input.d.x) | u_input.d) | (u_input.d & u_input.c)) % vec3<u32>(32u))) << (~select(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 76139u, 4294967295u), vec3<u32>(global0.x, 4294967295u, 1u)), _wgslsmith_sub_vec3_u32(~u_input.d, u_input.c), vec3<bool>(var_0.x, all(vec3<bool>(var_0.x, true, var_0.x)), true)) % vec3<u32>(32u));
    global1 = array<Struct_2, 31>();
    global1 = array<Struct_2, 31>();
    return !func_3();
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec4<u32>) -> Struct_3 {
    global1 = array<Struct_2, 31>();
    let var_0 = true;
    var var_1 = !vec2<bool>(!arg_1, func_2());
    var_1 = !vec2<bool>(arg_0, true);
    let var_2 = true;
    return Struct_3(firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(24846i, -10389i, 2147483647i)), -4360i, -22363i);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: bool, arg_3: vec2<f32>) -> vec3<u32> {
    global1 = array<Struct_2, 31>();
    let var_0 = Struct_5(arg_3.x, func_1(true, global0.x >= select(1u | global0.x, select(global0.x, 0u, false), true), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, u_input.d.x, 4294967295u, global0.x), ~vec4<u32>(u_input.b, global0.x, 59926u, global0.x), select(vec4<bool>(arg_2, true, arg_2, true), vec4<bool>(arg_2, true, false, arg_2), arg_2)), _wgslsmith_mod_vec4_u32(min(vec4<u32>(u_input.c.x, u_input.a, global0.x, u_input.a), vec4<u32>(global0.x, 1565u, 14611u, 37052u)), ~vec4<u32>(1u, global0.x, 0u, 4294967295u)), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 39088u, 1u, u_input.a), vec4<u32>(1u, 65849u, 89910u, 9492u), vec4<u32>(4294967295u, global0.x, u_input.d.x, 31149u)), vec4<u32>(60802u, u_input.b, u_input.b, u_input.c.x) >> (vec4<u32>(u_input.c.x, 83598u, 3781u, u_input.d.x) % vec4<u32>(32u))))), func_1(true, -1i == max(arg_1.c, -11975i), select(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(136828u, global0.x, global0.x, global0.x), vec4<u32>(u_input.a, global0.x, 89037u, global0.x), vec4<u32>(u_input.b, u_input.c.x, global0.x, u_input.a))), ~vec4<u32>(global0.x, u_input.a, global0.x, 4294967295u) << (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global0.x, u_input.b, u_input.a), vec4<u32>(u_input.c.x, 761u, 68956u, 0u)) % vec4<u32>(32u)), any(select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_2, true, arg_2), arg_2)))), arg_1.c, _wgslsmith_f_op_f32(step(-146f, -1206f)));
    var var_1 = vec4<bool>(true, !(true || arg_2), true, all(vec4<bool>(true, !(global0.x == 0u), 1929f > _wgslsmith_f_op_f32(arg_0 - arg_3.x), true)));
    var var_2 = Struct_1(u_input.d.x, u_input.c.x, vec2<i32>(~(~var_0.d), -10188i) ^ vec2<i32>(-countOneBits(arg_1.a.x), max(var_0.c.c >> (global0.x % 32u), _wgslsmith_mod_i32(-48079i, 1i))));
    global0 = ~(~(~u_input.c));
    return select(_wgslsmith_sub_vec3_u32(u_input.d, _wgslsmith_mod_vec3_u32(u_input.d, firstLeadingBit(~vec3<u32>(var_2.b, u_input.a, 18921u)))), firstTrailingBit(u_input.c), !arg_2 == false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-reverseBits(25245i) >> (~(global0.x | global0.x) % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-16545i, 54563i, 0i), vec3<i32>(1i, 1i, 1i)) >> (func_4(1f, func_1(true, true, vec4<u32>(12712u, global0.x, global0.x, u_input.b)), all(vec4<bool>(true, false, false, false)), vec2<f32>(-1000f, 833f)) % vec3<u32>(32u)), countOneBits(vec3<i32>(42772i, -32866i, 0i)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(18414u, 29060u, 10053u), ~u_input.c, u_input.c) % vec3<u32>(32u))), ~(~(-2147483647i)), (i32(-1i) * -_wgslsmith_clamp_i32(-1i, -2147483647i, 61307i)) ^ ((-2147483647i << (max(37117u, global0.x) % 32u)) | -reverseBits(-2147483647i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-384f, -377f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - vec2<f32>(1f, 1f)))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1616f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-220f + -939f)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(447f + -1000f), -154f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2393f, -901f), vec2<f32>(961f, 183f), true)))))))));
    global1 = array<Struct_2, 31>();
    var var_2 = Struct_1(6651u, _wgslsmith_clamp_u32(63351u, _wgslsmith_mod_u32(countOneBits(u_input.a), 34315u >> (func_4(var_1.x, Struct_3(vec3<i32>(0i, var_0.x, var_0.x), 2147483647i, var_0.x), false, vec2<f32>(var_1.x, var_1.x)).x % 32u)), 23758u), var_0.xx);
    var var_3 = ~abs(abs(vec4<u32>(~69658u, 1u, 52748u, _wgslsmith_div_u32(u_input.c.x, 1u))));
    var var_4 = global1[_wgslsmith_index_u32(u_input.a, 31u)];
    global0 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~(abs(u_input.d) >> (vec3<u32>(u_input.a, 46860u, var_3.x) % vec3<u32>(32u))), ~u_input.d), vec3<u32>(var_2.b, abs(firstLeadingBit(var_2.a) | ~var_4.a.a), u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(~((vec4<u32>(var_3.x, 1u, var_4.a.a, var_3.x) ^ vec4<u32>(var_3.x, u_input.d.x, global0.x, var_3.x)) << ((vec4<u32>(var_4.a.b, var_4.a.b, var_4.a.b, var_2.b) << (vec4<u32>(0u, var_2.a, 4294967295u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 27095u), global0.xx), global0.x >> (52136u % 32u), func_4(var_1.x, Struct_3(var_0.yxw, 0i, var_2.c.x), true, vec2<f32>(var_1.x, -135f)).x, ~4294967295u))), ~var_2.c.x, firstTrailingBit(~_wgslsmith_mult_vec3_i32(-var_0.yyz, select(var_0.ywx, vec3<i32>(-519i, 24817i, -1i), vec3<bool>(var_4.b, var_4.b, true)))), var_0.x, vec2<u32>(var_4.a.a, ~0u));
}

