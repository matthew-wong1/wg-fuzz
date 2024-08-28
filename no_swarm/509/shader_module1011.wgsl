struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: bool = true;

var<private> global3: array<Struct_4, 31>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<i32>) -> Struct_2 {
    global2 = true;
    return Struct_2(Struct_1(arg_2.zx, -arg_2.x), ~min(-arg_2.x, ~(arg_2.x & -8965i)), Struct_1(~(firstTrailingBit(arg_2.xx) << (~vec2<u32>(58545u, 29079u) % vec2<u32>(32u))), -(i32(-1i) * -23952i)), !any(select(select(vec2<bool>(global1.x, arg_1), global1.yy, vec2<bool>(global1.x, true)), select(vec2<bool>(arg_1, arg_1), global1.yy, global1.zz), true)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_1) -> bool {
    var var_0 = Struct_3(func_2(reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(45745u, 1u), vec2<u32>(0u, 4294967295u))), arg_1.d, _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a.x, -37694i, -2147483647i)), max(vec3<i32>(1845i, -46965i, 0i) | vec3<i32>(-69529i, arg_1.b, 27176i), vec3<i32>(-1i, 2147483647i, arg_1.c.a.x)))).a);
    let var_1 = vec2<u32>(countOneBits(34946u), ~1u);
    let var_2 = Struct_3(func_2(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(40038u, 31882u, var_1.x, var_1.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, 1u, var_1.x, var_1.x), vec4<u32>(6650u, 1520u, var_1.x, var_1.x)), select(vec4<u32>(4294967295u, var_1.x, var_1.x, var_1.x), vec4<u32>(var_1.x, 7903u, var_1.x, var_1.x), vec4<bool>(false, false, false, global1.x)))), false, select(vec3<i32>(1i, arg_1.a.a.x, arg_3.b), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -32577i, -5176i), ~vec3<i32>(arg_3.b, arg_3.b, -5679i)), vec3<bool>(all(global1.zy), true, global1.x))).c);
    let var_3 = _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(45043u, var_1.x, var_1.x), vec3<u32>(4294967295u, min(83415u, 4294967295u), _wgslsmith_div_u32(8889u, 43746u))), ~vec3<u32>(abs(11653u), 17740u & var_1.x, ~var_1.x)) ^ vec3<u32>(4294967295u, ~32375u, 3205u);
    let var_4 = Struct_4(Struct_2(var_2.a, var_2.a.b, arg_1.a, true));
    return any(!vec4<bool>(!(!global1.x), global1.x, false, var_4.a.d));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32) -> Struct_2 {
    global1 = select(!vec3<bool>(func_3(arg_1.a.c, func_2(arg_2, global1.x, vec3<i32>(0i, arg_1.a.c.b, u_input.a.x)), vec4<f32>(-903f, -194f, -1791f, 605f), arg_0.c), false, global1.x), !vec3<bool>(arg_1.a.d, global1.x, arg_0.d), vec3<bool>(!func_2(61364u, arg_1.a.d, vec3<i32>(arg_0.c.a.x, arg_0.b, 0i)).d | arg_0.d, true, arg_1.a.d));
    let var_0 = arg_1;
    var var_1 = 0u;
    var var_2 = 1u;
    let var_3 = ~54510u;
    return func_2(11279u, global1.x, abs(vec3<i32>(select(-45941i, arg_1.a.b, true), 0i, -2147483647i)) << (~max(vec3<u32>(0u, 75298u, var_3) ^ vec3<u32>(var_3, 42760u, 1635u), firstTrailingBit(vec3<u32>(arg_2, 1u, arg_2))) % vec3<u32>(32u)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_4) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-979f, -948f, -1062f, -1286f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(659f, 828f, 272f, -1747f))))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1022f - -364f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(429f * -964f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(248f, 264f), _wgslsmith_f_op_f32(f32(-1f) * -633f)))))));
    var var_1 = arg_3;
    let var_2 = abs(~firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -33513i, arg_1.a.a.x), vec3<i32>(2147483647i, -2147483647i, arg_3.a.c.b)) & countOneBits(-2147483647i)));
    var var_3 = ~(~(_wgslsmith_mod_u32(_wgslsmith_div_u32(3224u, 4294967295u), _wgslsmith_add_u32(35078u, 0u)) >> (_wgslsmith_mod_u32(0u, 4294967295u) % 32u)));
    global2 = !all(arg_0);
    return vec3<bool>(all(vec4<bool>(arg_3.a.d, true, false, arg_3.a.d)), arg_1.d, !(!any(select(vec3<bool>(arg_0.x, arg_2, arg_0.x), vec3<bool>(true, global1.x, var_1.a.d), vec3<bool>(true, arg_2, arg_3.a.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!(!func_4(global1.xz, func_1(Struct_2(Struct_1(u_input.a, u_input.a.x), u_input.a.x, Struct_1(u_input.a, -40931i), false), Struct_4(Struct_2(Struct_1(u_input.a, -2147483647i), u_input.a.x, Struct_1(u_input.a, 24997i), false)), 56164u), true, global3[_wgslsmith_index_u32(1u, 31u)])));
    var var_0 = u_input.a;
    let var_1 = func_1(func_1(Struct_2(func_2(_wgslsmith_mod_u32(23682u, 29794u), !global1.x, -vec3<i32>(u_input.a.x, -75954i, u_input.a.x)).c, reverseBits(var_0.x), func_1(Struct_2(Struct_1(vec2<i32>(-44265i, -3870i), -2147483647i), var_0.x, Struct_1(u_input.a, var_0.x), global1.x), Struct_4(Struct_2(Struct_1(vec2<i32>(u_input.a.x, var_0.x), 23874i), -14185i, Struct_1(vec2<i32>(u_input.a.x, var_0.x), 2147483647i), false)), 4294967295u).c, true), global3[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_sub_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(44393u, 11267u), vec2<u32>(6771u, 60206u))), 15168u)), global3[_wgslsmith_index_u32(38920u, 31u)], ~77540u);
    var_0 = func_2(_wgslsmith_div_u32(1u, 1u), true, ~vec3<i32>(~_wgslsmith_mult_i32(1i, -52523i), ~(i32(-1i) * -542i), u_input.a.x)).a.a;
    let var_2 = -16783i;
    global1 = vec3<bool>(!(1i == _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, var_0.x, -425i), _wgslsmith_add_vec4_i32(vec4<i32>(0i, var_0.x, var_2, 18637i), vec4<i32>(12703i, var_1.b, u_input.a.x, var_2)))), false, _wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, 93627u, 16907u) << (_wgslsmith_div_u32(49509u, 7858u) % 32u), 1u) <= 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(select(u_input.a.x, -44919i, !global1.x) & firstLeadingBit(min(-22037i, 0i)), var_0.x), 11906u);
}

