struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: f32 = 1167f;

var<private> global2: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(18018u, 50668u), vec2<u32>(12499u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 75384u), vec2<u32>(4294967295u, 18407u), vec2<u32>(1u, 13720u), vec2<u32>(34328u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(52434u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(1902u, 26510u), vec2<u32>(42118u, 0u), vec2<u32>(4294967295u, 68095u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 102140u), vec2<u32>(110510u, 0u), vec2<u32>(33382u, 12895u), vec2<u32>(9145u, 4294967295u), vec2<u32>(39413u, 1u), vec2<u32>(54982u, 17867u), vec2<u32>(4294967295u, 119130u), vec2<u32>(11462u, 15745u), vec2<u32>(36597u, 4294967295u), vec2<u32>(0u, 0u));

var<private> global3: array<Struct_2, 30>;

var<private> global4: array<Struct_2, 24>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<f32>) -> vec3<u32> {
    global4 = array<Struct_2, 24>();
    global3 = array<Struct_2, 30>();
    let var_0 = -40940i;
    let var_1 = global3[_wgslsmith_index_u32(~u_input.a, 30u)];
    return abs(~abs(vec3<u32>(~0u, _wgslsmith_mod_u32(0u, u_input.a), u_input.a)));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> i32 {
    var var_0 = Struct_2(_wgslsmith_mod_vec3_i32(~vec3<i32>(arg_0.c.x, arg_0.c.x, -1i), ~(vec3<i32>(arg_0.c.x, arg_0.c.x, -42188i) << (vec3<u32>(arg_0.d.x, arg_0.d.x, 11542u) % vec3<u32>(32u)))) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(func_3(vec2<f32>(336f, 941f)), _wgslsmith_mult_vec3_u32(arg_0.d, vec3<u32>(u_input.a, arg_0.d.x, u_input.a))), arg_0.d) % vec3<u32>(32u)), ~global2[_wgslsmith_index_u32(~(~(~arg_0.d.x)), 27u)], Struct_1(456f, !all(vec3<bool>(arg_0.b, false, true)), -(~(-arg_0.c)), arg_0.d ^ ~arg_0.d, _wgslsmith_f_op_f32(trunc(arg_1))), 2147483647i);
    let var_1 = ~(~min(arg_0.c, ~(var_0.c.c << (global2[_wgslsmith_index_u32(80045u, 27u)] % vec2<u32>(32u)))));
    let var_2 = Struct_2(~var_0.a, abs(~_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.x, 1402u), global2[_wgslsmith_index_u32(arg_0.d.x, 27u)]), var_0.c.d.zz)), Struct_1(arg_1, arg_0.b, ~(-arg_0.c), abs(~(~var_0.c.d)), _wgslsmith_f_op_f32(-arg_1)), var_0.c.c.x);
    global1 = _wgslsmith_f_op_f32(step(660f, 1821f));
    let var_3 = -firstTrailingBit(~(abs(-2147483647i) << (_wgslsmith_mod_u32(var_2.c.d.x, 4270u) % 32u)));
    return var_1.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>) -> i32 {
    global4 = array<Struct_2, 24>();
    global0 = ~(i32(-1i) * -(~func_2(Struct_1(1241f, arg_1.x, vec2<i32>(17349i, 6921i), vec3<u32>(4294967295u, u_input.a, 13446u), 280f), -1091f)));
    global2 = array<vec2<u32>, 27>();
    let var_0 = arg_1.x;
    global4 = array<Struct_2, 24>();
    return _wgslsmith_clamp_i32(~abs(_wgslsmith_mult_i32(36198i, 0i)), _wgslsmith_div_i32(1i, -1i), select(min(-24734i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(11003i, 17169i, -24915i, 25438i), vec4<i32>(-2147483647i, 1i, -9173i, -44644i)))), abs(~(i32(-1i) * -38775i)), var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-11382i, -23004i), ~vec2<i32>(1i, 1i)), _wgslsmith_mult_i32(func_1(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, 61210u), vec3<u32>(u_input.a, 4294967295u, 1u)), vec3<bool>(true, true, true)), select(1i, firstTrailingBit(-10199i), any(vec4<bool>(true, true, false, false)))), 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(1i, select(-31188i, -2147483647i, true)), _wgslsmith_sub_i32(0i << (u_input.a % 32u), countOneBits(-1i)), -1i), ~abs(-vec3<i32>(-42131i, 39470i, 64941i)), countOneBits(~vec3<i32>(1i, -48358i, -1i) >> (func_3(vec2<f32>(-409f, -1111f)) % vec3<u32>(32u)))));
    var var_1 = Struct_2(~(vec3<i32>(-78055i, firstLeadingBit(2387i), -2491i) & (-vec3<i32>(var_0.x, 0i, var_0.x) ^ ~vec3<i32>(-1i, var_0.x, 15956i))), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, _wgslsmith_add_u32(74432u, u_input.a)), vec2<u32>(u_input.a, 1u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(567f, 1103f))), !(true | all(vec3<bool>(false, true, false))), ~vec2<i32>(0i, var_0.x) | vec2<i32>(var_0.x, -10586i), vec3<u32>(u_input.a, u_input.a, ~u_input.a), 217f), 57279i);
    var_1 = Struct_2(max(_wgslsmith_mult_vec3_i32(var_1.a, countOneBits(firstTrailingBit(vec3<i32>(12130i, 1i, -2147483647i)))), var_1.a), vec2<u32>(~reverseBits(~75144u), 81905u), Struct_1(_wgslsmith_div_f32(var_1.c.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1154f, var_1.c.a))))), true, ~vec2<i32>(0i << (u_input.a % 32u), abs(0i)), abs(~vec3<u32>(var_1.b.x, u_input.a, var_1.c.d.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.a) * _wgslsmith_f_op_f32(-var_1.c.e))))), var_0.x);
    var var_2 = global3[_wgslsmith_index_u32(firstLeadingBit(~u_input.a) | 1u, 30u)];
    var_1 = Struct_2(reverseBits(abs(vec3<i32>(11769i & var_1.a.x, _wgslsmith_dot_vec2_i32(var_2.a.yx, var_0.zx), ~1i))), abs(_wgslsmith_mod_vec2_u32(reverseBits(var_2.b | vec2<u32>(var_2.b.x, 685u)), vec2<u32>(firstLeadingBit(var_2.c.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 53546u, 1u), vec4<u32>(14824u, var_2.c.d.x, 0u, 4294967295u))))), Struct_1(-509f, any(!vec2<bool>(var_2.c.b, var_2.c.b)) || !any(vec3<bool>(var_1.c.b, var_1.c.b, true)), (vec2<i32>(var_2.c.c.x, var_1.a.x) >> (vec2<u32>(0u, var_1.c.d.x) % vec2<u32>(32u))) ^ (max(var_0.zx, vec2<i32>(var_0.x, 153i)) | vec2<i32>(0i, var_2.d)), ~_wgslsmith_sub_vec3_u32(select(var_1.c.d, var_2.c.d, vec3<bool>(var_2.c.b, false, true)), var_1.c.d ^ var_1.c.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.a)), _wgslsmith_f_op_f32(trunc(-767f)))), -(~var_2.a.x) >> (~var_1.b.x % 32u));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(900f * var_1.c.e)) * -150f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(reverseBits(0i), -var_0.x, abs(~var_0.x ^ var_0.x)), vec4<i32>(-(i32(-1i) * -6053i), _wgslsmith_mult_i32(var_2.a.x, -26690i), -(~var_2.c.c.x), 22714i) & (-firstTrailingBit(vec4<i32>(var_0.x, -73696i, -30132i, var_1.c.c.x)) & vec4<i32>(firstLeadingBit(-13622i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d, var_1.a.x, -2147483647i), var_2.a), func_1(vec3<u32>(34272u, 4294967295u, 4379u), vec3<bool>(false, false, false)), var_0.x)), ~min(_wgslsmith_clamp_vec2_u32(var_1.b, var_2.c.d.xz, _wgslsmith_sub_vec2_u32(global2[_wgslsmith_index_u32(0u, 27u)], vec2<u32>(u_input.a, u_input.a))), vec2<u32>(~1u, ~u_input.a)));
}

