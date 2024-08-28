struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_2(Struct_1(arg_1.b, arg_1.a.b, true, vec3<i32>(max(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_1.a.d.x), vec2<i32>(arg_0, 17856i)), -2147483647i), u_input.b, -_wgslsmith_sub_i32(u_input.a, 2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-677f, 1024f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1302f + arg_1.b)))) + global0.a));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(sign(global0.a))) + _wgslsmith_f_op_f32(-1111f * _wgslsmith_f_op_f32(arg_1.b - -1246f)))))));
    global0 = arg_1.a;
    global0 = Struct_1(-570f, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(min(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.b, 23868u), vec2<u32>(u_input.d, 1407u)), firstLeadingBit(vec2<u32>(4294967295u, global0.b))), vec2<u32>(59706u, reverseBits(u_input.d))), ~vec2<u32>(_wgslsmith_add_u32(global0.b, arg_1.a.b), _wgslsmith_sub_u32(25995u, var_0.a.b))), global0.c, arg_1.a.d >> (_wgslsmith_sub_vec3_u32(max(vec3<u32>(41780u, 37220u, arg_1.a.b), vec3<u32>(1u, var_0.a.b, 287u)) << (vec3<u32>(global0.b, 20493u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(min(1u, 28720u), 5054u << (1u % 32u), global0.b)) % vec3<u32>(32u)));
    var var_2 = vec4<bool>(global0.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * global0.a))))) < _wgslsmith_f_op_f32(sign(241f)), global0.c, true);
    return 30125u;
}

fn func_2(arg_0: i32) -> vec3<u32> {
    let var_0 = arg_0;
    var var_1 = ~min(select(min(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.c, 31514u), vec3<u32>(global0.b, global0.b, 1u), vec3<u32>(6870u, 1u, u_input.c)), vec3<u32>(14785u, 1u, 102800u)), ~vec3<u32>(0u, u_input.d, 15875u), global0.c != global0.c), vec3<u32>(_wgslsmith_mult_u32(global0.b, u_input.d), global0.b, ~0u) ^ (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.c, u_input.c), vec3<u32>(global0.b, 1u, u_input.d)) ^ (vec3<u32>(global0.b, global0.b, 0u) & vec3<u32>(13613u, global0.b, u_input.d))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-global0.a), ~(~global0.b) >> (0u % 32u), ~func_3(_wgslsmith_sub_i32(var_0, -1i), Struct_2(Struct_1(global0.a, 4294967295u, global0.c, vec3<i32>(var_0, arg_0, global0.d.x)), 828f)) <= var_1.x, select(~vec3<i32>(~0i, u_input.e.x, 13692i), firstLeadingBit(~global0.d) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(40078i, u_input.b, u_input.e.x) | global0.d, -global0.d), select(vec3<bool>(true, true, true), select(!vec3<bool>(true, global0.c, global0.c), select(vec3<bool>(false, true, true), vec3<bool>(global0.c, false, false), vec3<bool>(global0.c, false, true)), any(vec2<bool>(global0.c, global0.c))), _wgslsmith_f_op_f32(floor(global0.a)) <= global0.a)));
    let var_3 = var_1.x;
    var var_4 = var_2;
    return vec3<u32>(~(~var_1.x), min(_wgslsmith_div_u32(global0.b, reverseBits(func_3(u_input.b, Struct_2(var_2, -2124f)))), select(~(~var_1.x), select(~21233u, 4294967295u, all(vec4<bool>(true, var_4.c, true, var_2.c))), true)), _wgslsmith_sub_u32(~39870u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(~global0.b, var_1.x), 8781u)));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(1000f)), ~global0.b, false, -vec3<i32>(32397i << (0u % 32u), u_input.a | u_input.a, ~global0.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(trunc(global0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, global0.a)) * global0.a)));
    global0 = Struct_1(_wgslsmith_f_op_f32(sign(620f)), 0u, false, vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, -36807i, ~1i), min(min(11454i, var_0.a.d.x), global0.d.x ^ -1i)), _wgslsmith_clamp_i32(-global0.d.x, global0.d.x, countOneBits(u_input.b)), _wgslsmith_dot_vec3_i32(select(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.d.x, global0.d.x, 13748i), global0.d), global0.d, vec3<bool>(false, true, false)), reverseBits(var_0.a.d >> (arg_1 % vec3<u32>(32u))))));
    var var_1 = vec3<u32>(34917u, 1u, var_0.a.b);
    let var_2 = var_0;
    global0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1412f), arg_1.x | var_1.x, !(var_2.b == -1014f), ~var_0.a.d);
    return Struct_2(Struct_1(289f, arg_1.x, all(select(!vec4<bool>(global0.c, true, false, false), select(vec4<bool>(false, true, var_2.a.c, var_2.a.c), vec4<bool>(global0.c, global0.c, false, arg_0), vec4<bool>(true, global0.c, arg_0, var_0.a.c)), arg_0)), vec3<i32>(-29685i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.a.d.x, var_0.a.d.x, 2147483647i, var_2.a.d.x), vec4<i32>(var_0.a.d.x, var_2.a.d.x, -42694i, -10741i), vec4<i32>(u_input.e.x, var_0.a.d.x, global0.d.x, u_input.e.x)), vec4<i32>(var_0.a.d.x, -52412i, 10410i, var_2.a.d.x)), -2147483647i)), var_2.b);
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = func_4(global0.c, func_2(reverseBits(global0.d.x)), countOneBits(~((vec4<u32>(global0.b, global0.b, u_input.c, 12171u) & vec4<u32>(1u, 1u, 41045u, 1u)) ^ ~vec4<u32>(1u, 1u, 54034u, 22409u))));
    let var_1 = _wgslsmith_clamp_u32(countOneBits(~(~u_input.d)), 0u, var_0.a.b | 0u);
    let var_2 = _wgslsmith_div_vec4_i32(-vec4<i32>(~(-29057i), -2147483647i, i32(-1i) * -14300i, ~_wgslsmith_div_i32(u_input.a, var_0.a.d.x)), vec4<i32>(2147483647i, ~u_input.a ^ u_input.a, i32(-1i) * -var_0.a.d.x, _wgslsmith_sub_i32(17907i, 49037i)));
    global0 = func_4(any(select(!vec4<bool>(var_0.a.c, true, global0.c, true), vec4<bool>(true, true, 584f != global0.a, var_0.a.c), func_4(true, vec3<u32>(var_1, var_1, 4294967295u) & vec3<u32>(var_0.a.b, 0u, 3256u), vec4<u32>(64225u, var_0.a.b, var_1, var_0.a.b)).a.c)), abs(countOneBits(vec3<u32>(~1u, abs(u_input.c), _wgslsmith_sub_u32(0u, var_0.a.b)))), ~reverseBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(50104u, 1u, 4294967295u, global0.b), vec4<u32>(0u, 22839u, 4294967295u, 32846u), vec4<u32>(u_input.d, u_input.c, 1u, 103541u)))).a;
    let var_3 = var_0.a;
    return func_4(global0.c, _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(~19828u, var_0.a.b), 0u >> (0u % 32u), var_0.a.b), ~(~vec3<u32>(var_0.a.b, 64873u, 4294967295u))), _wgslsmith_add_vec4_u32(~(~(vec4<u32>(1u, global0.b, 0u, 1u) << (vec4<u32>(1u, 60748u, var_3.b, var_0.a.b) % vec4<u32>(32u)))), countOneBits(~(~vec4<u32>(82035u, global0.b, var_3.b, var_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(select(3205i, ~(-45106i), !global0.c));
    let var_1 = abs(_wgslsmith_sub_u32(14489u, countOneBits(_wgslsmith_add_u32(1u, ~4294967295u))));
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, global0.d.x, u_input.a), vec3<i32>(-1i, u_input.e.x, 1i)), ~vec3<i32>(global0.d.x, 0i, 2147483647i))), -42506i, _wgslsmith_div_i32(-29255i, countOneBits(var_0)) | select(u_input.e.x, _wgslsmith_div_i32(-6295i, global0.d.x), global0.c)), _wgslsmith_clamp_vec3_i32(~global0.d, global0.d, vec3<i32>(var_0, countOneBits(-2147483647i), reverseBits(2066i)) ^ -vec3<i32>(-1i, -2147483647i, -2147483647i)));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a)))), 4294967295u, _wgslsmith_div_f32(global0.a, -930f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a)) - _wgslsmith_f_op_f32(max(251f, -1000f))), global0.d), _wgslsmith_div_f32(global0.a, -684f));
    var var_4 = func_1(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-658f, -1287f))))), var_3.a.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.b, -603f) + _wgslsmith_div_f32(global0.a, -548f))))));
    let var_5 = abs(~vec4<u32>(_wgslsmith_div_u32(9699u, ~1u), 15437u, func_3(var_3.a.d.x, var_3), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 77085u, 4294967295u), vec3<u32>(global0.b, var_1, 0u)), ~var_4.a.b)));
    let var_6 = !(!select(vec3<bool>(var_3.a.c || true, all(vec2<bool>(var_3.a.c, false)), var_3.a.c), !vec3<bool>(global0.c, true, global0.c), var_4.a.c));
    global0 = func_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_4.b, -718f, -1375f))) + vec3<f32>(1000f, var_3.b, -1000f)), vec3<f32>(444f, -422f, _wgslsmith_f_op_f32(-global0.a))))))).a;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a * var_4.a.a))), global0.a, -2043f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.b), global0.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.a, var_3.b, var_3.b, global0.a), vec4<f32>(-1000f, global0.a, var_3.b, var_4.b))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_4.a.a, var_3.b, -768f, var_4.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1570f, global0.a, global0.a, -1461f)))), select(!select(vec4<bool>(var_4.a.c, false, global0.c, true), vec4<bool>(global0.c, false, var_3.a.c, false), false), select(vec4<bool>(var_4.a.c, var_4.a.c, var_4.a.c, false), !vec4<bool>(global0.c, false, true, false), select(false, global0.c, var_3.a.c)), select(select(vec4<bool>(true, true, global0.c, var_4.a.c), vec4<bool>(false, true, false, true), vec4<bool>(var_3.a.c, var_4.a.c, false, false)), vec4<bool>(false, false, true, var_6.x), global0.c | true)))));
}

