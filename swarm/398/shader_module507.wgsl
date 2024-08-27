struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(vec3<i32>(-5732i, 1i, 29452i)), vec3<i32>(-10247i, 31628i, 1277i), Struct_1(vec3<i32>(-21585i, 2147483647i, 1i)), 87745u), Struct_2(Struct_1(vec3<i32>(-1i, 35839i, -81434i)), vec3<i32>(-29509i, 1i, 11062i), Struct_1(vec3<i32>(-1i, 2147483647i, -58004i)), 0u), Struct_2(Struct_1(vec3<i32>(-17656i, 30877i, 1i)), vec3<i32>(1i, 21488i, -50965i), Struct_1(vec3<i32>(-13511i, -39774i, 4227i)), 0u), Struct_2(Struct_1(vec3<i32>(48084i, -23531i, 16296i)), vec3<i32>(-8983i, 0i, 13086i), Struct_1(vec3<i32>(-14575i, i32(-2147483648), -57052i)), 0u), Struct_2(Struct_1(vec3<i32>(-84643i, 7734i, 1i)), vec3<i32>(1i, 73413i, -1i), Struct_1(vec3<i32>(0i, 59118i, 35760i)), 0u), Struct_2(Struct_1(vec3<i32>(-1i, 22541i, 1i)), vec3<i32>(-16942i, 24844i, -1i), Struct_1(vec3<i32>(471i, 4980i, -45929i)), 8258u), Struct_2(Struct_1(vec3<i32>(-12515i, 17486i, -13568i)), vec3<i32>(2147483647i, 26500i, 0i), Struct_1(vec3<i32>(10189i, -1i, 29075i)), 1u), Struct_2(Struct_1(vec3<i32>(1i, -28110i, -49535i)), vec3<i32>(20188i, 25412i, 14395i), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -11330i)), 84424u));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: u32) -> i32 {
    global0 = array<Struct_1, 31>();
    let var_0 = true;
    var var_1 = select(~select(vec3<u32>(countOneBits(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, arg_0, u_input.c), vec4<u32>(u_input.c, arg_0, 50004u, u_input.c)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(0u, u_input.c))), vec3<u32>(~arg_0, u_input.c, select(u_input.c, u_input.c, true)), var_0), ~_wgslsmith_div_vec3_u32(max(vec3<u32>(1u, 14106u, 29577u), vec3<u32>(arg_0, arg_0, u_input.c)), ~vec3<u32>(27161u, arg_0, 40947u)) | _wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.c, 4294967295u, u_input.c), firstLeadingBit(vec3<u32>(arg_0, u_input.c, u_input.c))), true);
    var_1 = vec3<u32>(4294967295u, arg_0, arg_0);
    var var_2 = Struct_1(-select(~(-u_input.b), _wgslsmith_add_vec3_i32(u_input.b, u_input.b), any(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, var_0), var_0))));
    return ~0i;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec3<u32>) -> vec2<bool> {
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(~(i32(-1i) * -arg_1.c.a.x), -2147483647i), _wgslsmith_div_i32(-abs(~u_input.a), arg_1.a.a.x), u_input.b.x);
    var var_1 = 0u;
    let var_2 = _wgslsmith_clamp_vec4_i32(-abs(vec4<i32>(-1i, 1i, 18285i, u_input.a) << ((vec4<u32>(u_input.c, arg_1.d, 4294967295u, 4294967295u) | vec4<u32>(arg_3.x, 41256u, u_input.c, 22598u)) % vec4<u32>(32u))), vec4<i32>(~35875i, abs(var_0.x), _wgslsmith_mult_i32(~u_input.a, func_2(27305u)), func_2(0u)) >> ((_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, arg_1.d, 1u, 32240u), vec4<u32>(arg_3.x, arg_3.x, arg_1.d, 4294967295u)), ~vec4<u32>(arg_3.x, 4294967295u, arg_1.d, u_input.c)) | ~(vec4<u32>(u_input.c, 1u, 33349u, u_input.c) & vec4<u32>(arg_3.x, 1u, u_input.c, arg_3.x))) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, u_input.a, arg_1.b.x, u_input.b.x)), firstLeadingBit(min(vec4<i32>(7632i, u_input.a, arg_1.c.a.x, arg_1.a.a.x), vec4<i32>(u_input.a, arg_1.a.a.x, arg_1.a.a.x, var_0.x)))));
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    return select(vec2<bool>(true, any(vec3<bool>(true, true, arg_0 >= -513f))), vec2<bool>(all(vec3<bool>(true, arg_1.d != arg_1.d, any(vec4<bool>(false, true, true, true)))), !select(false, all(vec3<bool>(true, false, true)), true)), _wgslsmith_dot_vec3_i32(arg_1.b, vec3<i32>(-var_0.x, abs(2147483647i), 1i)) != 1i);
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = -1i;
    var var_1 = Struct_1(-u_input.b);
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 31u)];
    var_0 = var_2.a.x;
    let var_3 = ~(1u >> (u_input.c % 32u));
    return _wgslsmith_f_op_f32(trunc(735f));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<f32>, arg_3: bool) -> StorageBuffer {
    var var_0 = global1[_wgslsmith_index_u32(u_input.c, 8u)];
    var var_1 = global1[_wgslsmith_index_u32(abs(43705u), 8u)];
    let var_2 = Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(-var_1.c.a, _wgslsmith_mod_vec3_i32(arg_0, u_input.b)) ^ firstLeadingBit(~var_0.b)), abs(arg_0) & vec3<i32>(var_1.c.a.x, ~var_0.b.x, _wgslsmith_add_i32(arg_0.x, countOneBits(25257i))), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d, var_0.d), vec2<u32>(75952u, var_0.d)), var_0.d) << ((_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, u_input.c, var_0.d), firstLeadingBit(vec3<u32>(var_1.d, var_0.d, var_1.d))) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, u_input.c, 1u, var_0.d) << (vec4<u32>(var_1.d, var_1.d, u_input.c, var_1.d) % vec4<u32>(32u)), ~vec4<u32>(u_input.c, 0u, 42212u, 12590u)) % 32u)) % 32u), 31u)], ~(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, 1u, 14326u, var_0.d), vec4<u32>(var_0.d, var_1.d, 4294967295u, 0u)) & select(u_input.c, u_input.c, arg_3)) >> (_wgslsmith_dot_vec3_u32((vec3<u32>(1u, 43501u, u_input.c) ^ vec3<u32>(58813u, var_1.d, var_0.d)) & firstLeadingBit(vec3<u32>(var_1.d, 1u, var_0.d)), ~firstLeadingBit(vec3<u32>(u_input.c, 1u, 20285u))) % 32u));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-576f)), _wgslsmith_f_op_f32(abs(arg_2.x)))))))));
    let var_4 = var_2;
    return StorageBuffer(arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global1 = array<Struct_2, 8>();
    var var_1 = true;
    var_1 = all(select(!vec2<bool>(false, u_input.a >= 44686i), vec2<bool>(true, true), vec2<bool>(!(u_input.c != 22161u), true)));
    var var_2 = vec3<u32>(~max(u_input.c, ~(~u_input.c)), u_input.c, 7979u);
    let x = u_input.a;
    s_output = func_4(reverseBits(u_input.b), true, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 332f) + _wgslsmith_f_op_f32(min(-331f, 434f))))), -493f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1332f * -1032f), _wgslsmith_f_op_f32(select(-285f, 162f, false))))), _wgslsmith_f_op_f32(func_3(select(func_1(1528f, global1[_wgslsmith_index_u32(u_input.c, 8u)], u_input.b, vec3<u32>(35751u, var_2.x, 0u)), func_1(-522f, Struct_2(global0[_wgslsmith_index_u32(var_2.x, 31u)], u_input.b, global0[_wgslsmith_index_u32(4294967295u, 31u)], 86331u), u_input.b, vec3<u32>(u_input.c, var_2.x, 48783u)), vec2<bool>(true, true))))), false);
}

