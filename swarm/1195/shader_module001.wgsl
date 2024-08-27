struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(0i), Struct_1(42401i), Struct_1(32710i), Struct_1(19866i), Struct_1(44669i), Struct_1(-11873i), Struct_1(-1i), Struct_1(29015i), Struct_1(2147483647i), Struct_1(-13735i), Struct_1(-9425i), Struct_1(5842i));

var<private> global1: array<vec2<bool>, 26>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> u32 {
    global0 = array<Struct_1, 12>();
    var var_0 = Struct_1(firstLeadingBit(12472i));
    let var_1 = Struct_3(vec2<u32>(u_input.c, ~abs(u_input.c)), (vec3<u32>(~11404u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(32675u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c))) << (abs(~vec3<u32>(u_input.c, u_input.c, u_input.c)) % vec3<u32>(32u))) ^ min(vec3<u32>(1u, 1u, 1u) >> (~vec3<u32>(25384u, u_input.c, 67283u) % vec3<u32>(32u)), min(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.c), vec3<u32>(7939u, u_input.c, u_input.c)), vec3<u32>(u_input.c, 29337u, u_input.c))));
    global1 = array<vec2<bool>, 26>();
    var var_2 = !select(arg_1.a.zwx, select(!vec3<bool>(true, arg_1.a.x, arg_1.a.x), arg_1.a.wwz, (var_1.b.x < u_input.c) || select(true, arg_1.a.x, false)), !(select(29161u, 4294967295u, false) <= firstLeadingBit(var_1.b.x)));
    return 96181u;
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> vec3<u32> {
    let var_0 = 1i;
    global1 = array<vec2<bool>, 26>();
    var var_1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~(~21064u), _wgslsmith_clamp_u32(46103u, ~19068u, arg_0)), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1, u_input.c), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(22624u, 86898u)), abs(vec2<u32>(u_input.c, 0u))), firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, arg_0), vec2<u32>(arg_1, arg_1)))), ~((vec2<u32>(arg_1, arg_1) ^ vec2<u32>(u_input.c, 1u)) & vec2<u32>(18274u, arg_0)), ~vec2<u32>(1u, 93412u) & ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, arg_1))), vec2<u32>(reverseBits(u_input.c), 1u));
    global1 = array<vec2<bool>, 26>();
    var var_2 = vec4<bool>(true, (((var_0 ^ -1i) < ~(-2147483647i)) & true) & !(!all(vec2<bool>(true, true))), false, !(true || (all(vec3<bool>(true, false, true)) && true)));
    return _wgslsmith_add_vec3_u32(~abs(~select(vec3<u32>(var_1.x, var_1.x, arg_0), vec3<u32>(arg_1, arg_1, 0u), var_2.wyz)), _wgslsmith_mod_vec3_u32(~abs(vec3<u32>(0u, arg_0, var_1.x)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(58719u, 50233u, 4294967295u, 1u), vec4<u32>(u_input.c, arg_0, arg_1, u_input.c)), ~25422u, 20075u)) & (abs(~vec3<u32>(23662u, arg_0, arg_0)) << (~firstLeadingBit(vec3<u32>(0u, 4294967295u, 4294967295u)) % vec3<u32>(32u))));
}

fn func_1(arg_0: vec2<f32>) -> vec2<i32> {
    let var_0 = all(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.c, u_input.c, func_2(u_input.b.x, Struct_2(vec4<bool>(true, true, false, false)))) >> (firstLeadingBit(0u) % 32u), 26u)]);
    global1 = array<vec2<bool>, 26>();
    let var_1 = func_3(min(53038u, u_input.c) & 61978u, ~u_input.c, global0[_wgslsmith_index_u32(u_input.c, 12u)], -736f);
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    return vec2<i32>(u_input.d.x, _wgslsmith_mod_i32(u_input.a, min(u_input.a, max(u_input.a, ~23455i))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32, arg_3: f32) -> Struct_1 {
    let var_0 = ~(~(~104866u));
    let var_1 = 1u;
    global1 = array<vec2<bool>, 26>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + arg_3) - arg_3);
    let var_3 = _wgslsmith_div_f32(1212f, 1193f);
    return Struct_1(firstLeadingBit(firstTrailingBit(20609i) << (_wgslsmith_add_u32(u_input.c, u_input.c) % 32u)) << (reverseBits(_wgslsmith_mult_u32(57774u, var_1) & var_0) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 12>();
    var var_0 = func_4(Struct_1(17224i), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(min(vec2<i32>(u_input.d.x, u_input.d.x), u_input.b.yx), firstLeadingBit(vec2<i32>(19364i, u_input.b.x))), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.a, -2147483647i)), func_1(vec2<f32>(430f, 1546f)))), _wgslsmith_dot_vec2_i32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(275f, -768f))), u_input.b.zx), _wgslsmith_clamp_i32(u_input.d.x, (u_input.e.x & u_input.e.x) & u_input.b.x, -2147483647i)), _wgslsmith_mod_i32(_wgslsmith_div_i32(~3461i, countOneBits(u_input.e.x) >> (u_input.c % 32u)), 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1386f - -1474f)))));
    var_0 = func_4(Struct_1(max(firstLeadingBit(abs(0i)), -_wgslsmith_mod_i32(u_input.d.x, u_input.d.x))), u_input.b, 14913i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1116f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2380f, 1321f)))));
    var var_1 = select(firstLeadingBit(reverseBits(vec4<u32>(u_input.c, u_input.c, 24920u, u_input.c)) & select(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<bool>(false, true, false, false))), countOneBits(vec4<u32>(47081u, u_input.c, u_input.c, u_input.c) >> (vec4<u32>(u_input.c, u_input.c, u_input.c, 21675u) % vec4<u32>(32u))) & ~vec4<u32>(27914u, 2902u, 27446u, u_input.c), true) >> (abs(_wgslsmith_add_vec4_u32((vec4<u32>(u_input.c, u_input.c, u_input.c, 1u) | vec4<u32>(u_input.c, u_input.c, 10390u, u_input.c)) << (~vec4<u32>(1u, u_input.c, 0u, 1u) % vec4<u32>(32u)), vec4<u32>(~u_input.c, u_input.c, ~0u, 46450u))) % vec4<u32>(32u));
    let var_2 = _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(1u, 0u, _wgslsmith_mod_u32(u_input.c, 7488u), var_1.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, _wgslsmith_div_u32(var_1.x, 47392u), u_input.c, 4294967295u) << (_wgslsmith_sub_vec4_u32(vec4<u32>(48220u, var_1.x, u_input.c, 55715u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 98968u, 8485u, u_input.c), vec4<u32>(u_input.c, u_input.c, 86463u, 4294967295u))) % vec4<u32>(32u)), vec4<u32>(var_1.x >> (var_1.x % 32u), 0u, u_input.c ^ 95104u, u_input.c) << (max(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 103640u, 39252u, 83172u), vec4<u32>(u_input.c, 1u, 1u, var_1.x), vec4<u32>(5742u, 4294967295u, 4294967295u, 70570u)), ~vec4<u32>(50538u, var_1.x, var_1.x, 4294967295u)) % vec4<u32>(32u))), vec4<u32>(40959u, 4294967295u, ~(~15183u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x ^ 1u, abs(var_1.x)), vec2<u32>(u_input.c, 4294967295u) | vec2<u32>(var_1.x, 0u))));
    let var_3 = _wgslsmith_add_u32(var_2.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~var_2.xxw, ~vec3<u32>(u_input.c, 75117u, u_input.c)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 68988u << (0u % 32u), _wgslsmith_dot_vec3_u32(var_2.xzx, vec3<u32>(u_input.c, var_2.x, 4294967295u))), vec3<u32>(_wgslsmith_dot_vec2_u32(var_2.yy, vec2<u32>(u_input.c, 59445u)), u_input.c & 34644u, var_1.x), ~select(vec3<u32>(var_2.x, 0u, 70576u), var_1.wwz, vec3<bool>(false, false, true)))));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(753f, _wgslsmith_f_op_f32(max(-387f, 1147f)))))), -298f)), 177f);
    let x = u_input.a;
    s_output = StorageBuffer(abs(reverseBits(~vec2<u32>(4294967295u, var_1.x)) << (~vec2<u32>(4294967295u, var_3) % vec2<u32>(32u))), _wgslsmith_dot_vec4_u32(var_2, var_2), min(~vec2<i32>(i32(-1i) * -2147483647i, 0i), min(u_input.e, ~u_input.b.yy)));
}

