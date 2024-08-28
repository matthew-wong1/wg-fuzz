struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(58864u, vec2<bool>(false, true), vec4<bool>(false, true, true, true));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<i32>(1i, -1i)), Struct_1(vec2<i32>(-1i, -31903i)), 1u);

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec2<i32>(2147483647i, 1i)), Struct_1(vec2<i32>(7973i, -41246i)), 0u), Struct_2(Struct_1(vec2<i32>(0i, -26191i)), Struct_1(vec2<i32>(13464i, 38283i)), 30193u), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 7759i)), Struct_1(vec2<i32>(-1i, i32(-2147483648))), 0u), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 30144i)), Struct_1(vec2<i32>(33676i, -33254i)), 4294967295u), Struct_2(Struct_1(vec2<i32>(47219i, -1i)), Struct_1(vec2<i32>(-24527i, -40234i)), 32760u));

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<i32>(-33133i, 0i)), Struct_1(vec2<i32>(2147483647i, -53777i)), Struct_1(vec2<i32>(-1i, 1i)), Struct_1(vec2<i32>(i32(-2147483648), 27174i)), Struct_1(vec2<i32>(0i, 38934i)), Struct_1(vec2<i32>(0i, 2147483647i)), Struct_1(vec2<i32>(-1i, 13187i)), Struct_1(vec2<i32>(-21919i, -1i)), Struct_1(vec2<i32>(i32(-2147483648), -4786i)), Struct_1(vec2<i32>(1i, 1i)), Struct_1(vec2<i32>(2147483647i, -64403i)), Struct_1(vec2<i32>(2147483647i, -43010i)), Struct_1(vec2<i32>(57928i, 2147483647i)), Struct_1(vec2<i32>(16643i, -72753i)), Struct_1(vec2<i32>(10343i, i32(-2147483648))), Struct_1(vec2<i32>(1i, 2147483647i)), Struct_1(vec2<i32>(-11790i, i32(-2147483648))), Struct_1(vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec2<i32>(i32(-2147483648), -38283i)), Struct_1(vec2<i32>(2147483647i, 37659i)), Struct_1(vec2<i32>(-52489i, -7875i)), Struct_1(vec2<i32>(1i, 1533i)), Struct_1(vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec2<i32>(24071i, -1i)), Struct_1(vec2<i32>(-1i, 0i)), Struct_1(vec2<i32>(-37410i, -6203i)), Struct_1(vec2<i32>(i32(-2147483648), -48056i)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = arg_0;
    global2 = array<Struct_2, 5>();
    let var_1 = vec3<i32>(u_input.a, countOneBits(-25056i), u_input.a);
    var var_2 = Struct_1(global1.a.a);
    var var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(~var_2.a.x, -var_2.a.x) ^ u_input.a, _wgslsmith_dot_vec2_i32(var_1.xy, _wgslsmith_clamp_vec2_i32(max(vec2<i32>(-58807i, -61812i), vec2<i32>(-29676i, -12293i)), vec2<i32>(2147483647i, var_2.a.x), vec2<i32>(1i, var_2.a.x))), var_2.a.x, 0i), firstLeadingBit(vec4<i32>(_wgslsmith_clamp_i32(var_2.a.x | var_1.x, firstLeadingBit(var_1.x), -12327i), firstLeadingBit(global1.a.a.x << (global0.a % 32u)), ~2147483647i & global1.a.a.x, var_2.a.x)));
    return ~_wgslsmith_sub_u32(global1.c, _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(global0.a, global0.a), vec2<u32>(117334u, 1u)), vec2<u32>(1u, global0.a) << (firstTrailingBit(vec2<u32>(8562u, global1.c)) % vec2<u32>(32u))));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: bool, arg_3: vec3<bool>) -> i32 {
    var var_0 = Struct_3(36861u, arg_3.xx, arg_1);
    let var_1 = global3[_wgslsmith_index_u32(~firstTrailingBit(~(~var_0.a)), 27u)];
    let var_2 = global2[_wgslsmith_index_u32(func_3(true), 5u)];
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1162f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(812f, _wgslsmith_div_f32(736f, _wgslsmith_f_op_f32(ceil(2278f)))))));
    global2 = array<Struct_2, 5>();
    return 14793i;
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_3 {
    var var_0 = vec4<bool>(false, !any(global0.c.zxx), global1.c <= ~(~_wgslsmith_mod_u32(global0.a, 48080u)), select(arg_0, func_2(min(34527u, 1u), global0.c, true, select(global0.c.zww, global0.c.zwx, global0.c.xxy)), !(true & global0.b.x)) >= abs(firstLeadingBit(_wgslsmith_mult_i32(5622i, global1.b.a.x))));
    let var_1 = 338f;
    global0 = Struct_3(1u, global0.c.wy, !(!select(!vec4<bool>(var_0.x, global0.b.x, true, false), vec4<bool>(var_0.x, var_0.x, global0.b.x, global0.c.x), all(vec4<bool>(global0.c.x, true, var_0.x, false)))));
    global0 = Struct_3(~_wgslsmith_sub_u32(global1.c, 4294967295u), !vec2<bool>(var_0.x, !select(false, global0.b.x, true)), vec4<bool>(var_0.x, var_0.x || (var_0.x & select(true, false, true)), any(vec3<bool>(true, any(var_0.zz), select(false, true, true))), global0.c.x));
    global0 = Struct_3(31481u, !vec2<bool>(firstLeadingBit(global1.a.a.x) <= _wgslsmith_sub_i32(arg_0, -13582i), (global1.b.a.x >= global1.b.a.x) | !global0.b.x), select(vec4<bool>(var_0.x & any(vec2<bool>(var_0.x, var_0.x)), !any(global0.c.xz), all(vec2<bool>(true, false)), global1.b.a.x != -u_input.a), global0.c, true));
    return Struct_3(4294967295u, select(select(!var_0.zz, global0.b, true), !(!vec2<bool>(var_0.x, false)), global0.c.x), vec4<bool>(true, global0.b.x, (_wgslsmith_dot_vec3_u32(vec3<u32>(global1.c, 1u, 9431u), vec3<u32>(global0.a, 0u, global0.a)) ^ 1u) > 48692u, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2730f)))));
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global1.c, 23087u, global0.a, global0.a), vec4<u32>(global0.a, global1.c, global0.a, global0.a)), ~vec4<u32>(28061u, global1.c, global0.a, global0.a)) >> (min(vec4<u32>(global0.a, 58609u, global1.c, 0u) >> (vec4<u32>(global0.a, 72207u, global0.a, global0.a) % vec4<u32>(32u)), ~vec4<u32>(1u, 9127u, 1u, 0u)) % vec4<u32>(32u)), countOneBits((vec4<u32>(global0.a, 0u, 1u, global1.c) | vec4<u32>(global0.a, global0.a, 64137u, global0.a)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global0.a, global1.c, global1.c), vec4<u32>(16496u, 7855u, global0.a, 21966u)) % vec4<u32>(32u)))), vec4<u32>(reverseBits(_wgslsmith_mod_u32(~global1.c, global0.a)), firstLeadingBit(~(~1u)), _wgslsmith_clamp_u32(4294967295u, global0.a, _wgslsmith_div_u32(global0.a & 28715u, global1.c)), func_3((global1.b.a.x ^ u_input.a) > func_2(global0.a, global0.c, true, global0.c.wxy)))), 5u)];
    var var_0 = Struct_1(vec2<i32>(u_input.a | -30862i, _wgslsmith_div_i32(_wgslsmith_sub_i32(7846i, ~0i), ~u_input.a)));
    var var_1 = countOneBits(44273i);
    global1 = Struct_2(Struct_1(global1.b.a), global3[_wgslsmith_index_u32(func_3(false), 27u)], global0.a >> (_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(global1.c, 4294967295u)), vec2<u32>(global0.a, 31441u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -307f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(745f * -145f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1492f) - -1420f)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(firstLeadingBit(1i), 7208i, u_input.a, global1.b.a.x), ~max(vec4<i32>(u_input.a, var_0.a.x, u_input.a, global1.b.a.x), -vec4<i32>(u_input.a, global1.b.a.x, var_0.a.x, global1.a.a.x)), select(vec4<i32>(global1.b.a.x, global1.a.a.x, var_0.a.x, 1i) >> (firstTrailingBit(vec4<u32>(1u, global0.a, 4294967295u, global1.c)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(-23554i, var_0.a.x, 29286i, -2147483647i), vec4<i32>(u_input.a, -1i, global1.a.a.x, 1i)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(global1.b.a.x, var_0.a.x, u_input.a, var_0.a.x), vec4<i32>(u_input.a, u_input.a, u_input.a, var_0.a.x)), !(!global0.c))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(660f - -1757f)), 305f), vec2<f32>(1f, 1f))));
}

