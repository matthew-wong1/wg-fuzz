struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 15>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(282f));
    global0 = array<vec4<i32>, 15>();
    let var_1 = Struct_1(all(!vec3<bool>(true, any(vec3<bool>(false, false, true)), false)), vec3<u32>(~(~0u & u_input.c), 0u, _wgslsmith_mult_u32(u_input.c, _wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 3790u), ~2993u, u_input.e.x))));
    var var_2 = firstTrailingBit(u_input.d.x);
    var var_3 = Struct_1(all(!(!select(vec4<bool>(var_1.a, var_1.a, true, true), vec4<bool>(false, false, var_1.a, var_1.a), true))), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_div_u32(~0u, ~var_1.b.x), u_input.e.x, firstTrailingBit(~var_1.b.x)), vec3<u32>(~0u | select(34994u, var_1.b.x, true), 1u, ~u_input.e.x)));
    return u_input.d | (~(-select(vec3<i32>(u_input.b.x, u_input.b.x, u_input.a), vec3<i32>(-22231i, 2147483647i, u_input.d.x), vec3<bool>(true, true, var_3.a))) & (vec3<i32>(1i, countOneBits(u_input.d.x), i32(-1i) * -2147483647i) << (vec3<u32>(_wgslsmith_sub_u32(0u, var_3.b.x), _wgslsmith_sub_u32(u_input.e.x, 24141u), var_1.b.x) % vec3<u32>(32u))));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    global0 = array<vec4<i32>, 15>();
    global0 = array<vec4<i32>, 15>();
    var var_0 = Struct_1(true, ~_wgslsmith_sub_vec3_u32(max(arg_0.b.b, ~arg_0.b.b), u_input.e));
    var_0 = Struct_1(all(select(select(vec4<bool>(false, var_0.a, var_0.a, arg_0.b.a), vec4<bool>(false, var_0.a, arg_0.b.a, arg_0.b.a), false), !vec4<bool>(false, arg_0.b.a, true, false), var_0.a)) | all(vec4<bool>(var_0.a, var_0.a, true, arg_0.b.b.x == 13706u)), u_input.e);
    var var_1 = arg_0.b;
    return Struct_2(2147483647i, Struct_1(false, ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0.b.b, var_0.b), u_input.e)), abs(firstTrailingBit(-arg_0.c) | func_3()));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_3 {
    global0 = array<vec4<i32>, 15>();
    global0 = array<vec4<i32>, 15>();
    let var_0 = global0[_wgslsmith_index_u32(~u_input.e.x, 15u)] | _wgslsmith_add_vec4_i32(~abs(global0[_wgslsmith_index_u32(21283u, 15u)]), ~global0[_wgslsmith_index_u32(~arg_0.x, 15u)]);
    var var_1 = arg_1;
    var var_2 = arg_2.x;
    return Struct_3(vec3<i32>(_wgslsmith_clamp_i32(countOneBits(u_input.d.x >> (arg_1.b.b.x % 32u)), -1i, -40939i), var_1.a, max(~(-u_input.d.x), _wgslsmith_add_i32(min(10690i, var_0.x), var_0.x))), (abs(0i) | -arg_1.c.x) ^ (arg_1.c.x >> (~(var_1.b.b.x << (arg_0.x % 32u)) % 32u)), var_1.b, u_input.c);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = vec4<i32>(arg_0.a.x, -func_3().x, -arg_1.x, _wgslsmith_add_i32(arg_1.x, -min(-2147483647i, arg_3.a.x))) ^ arg_1;
    global0 = array<vec4<i32>, 15>();
    var var_1 = ~abs(vec2<u32>(4294967295u >> (1u % 32u), ~arg_0.d));
    let var_2 = _wgslsmith_add_vec3_i32(max(arg_0.a, -select(arg_0.a, u_input.d, vec3<bool>(arg_3.c.a, false, false)) >> (arg_0.c.b % vec3<u32>(32u))), ~(u_input.d & ~(arg_0.a >> (vec3<u32>(u_input.c, arg_3.d, 40296u) % vec3<u32>(32u)))));
    var_1 = max(vec2<u32>(1u, u_input.c), u_input.e.yz);
    return Struct_1(arg_0.c.a, ~abs(select(func_4(arg_0.c.b.zx, Struct_2(0i, arg_3.c, vec3<i32>(var_2.x, 0i, var_2.x)), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true)).c.b, firstTrailingBit(arg_3.c.b), vec3<bool>(arg_2.x, false, true))));
}

fn func_1(arg_0: u32) -> vec3<i32> {
    var var_0 = Struct_3(-(u_input.b | u_input.d), i32(-1i) * -(~(~u_input.b.x)), func_5(Struct_3(vec3<i32>(~u_input.b.x, ~u_input.a, u_input.b.x), 1i, Struct_1(true, u_input.e), 68691u), global0[_wgslsmith_index_u32(~(~(48792u >> (arg_0 % 32u))), 15u)], vec3<bool>(true, false, abs(u_input.a) < _wgslsmith_div_i32(2147483647i, u_input.b.x)), func_4(abs(u_input.e.yx) << (_wgslsmith_div_vec2_u32(u_input.e.zz, u_input.e.zz) % vec2<u32>(32u)), func_2(Struct_2(u_input.a, Struct_1(false, u_input.e), u_input.d), 1i), vec4<bool>(true, true, true, true))), _wgslsmith_div_u32(arg_0, 5739u));
    var var_1 = !select(select(!select(vec4<bool>(var_0.c.a, var_0.c.a, true, var_0.c.a), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(var_0.c.a, false, false, var_0.c.a), true), select(vec4<bool>(var_0.c.a, var_0.c.a, true, false), vec4<bool>(true, false, true, var_0.c.a), true), true), !(!vec4<bool>(true, var_0.c.a, var_0.c.a, var_0.c.a))), select(vec4<bool>(var_0.c.a, all(vec4<bool>(true, true, var_0.c.a, true)), var_0.c.a, var_0.c.a), !vec4<bool>(true, true, true, var_0.c.a), vec4<bool>(func_4(u_input.e.xz, Struct_2(1i, var_0.c, vec3<i32>(var_0.b, -2147483647i, u_input.d.x)), vec4<bool>(var_0.c.a, var_0.c.a, var_0.c.a, var_0.c.a)).c.a, !var_0.c.a, true, all(vec2<bool>(var_0.c.a, var_0.c.a)))), func_2(func_2(Struct_2(34558i, Struct_1(var_0.c.a, vec3<u32>(6397u, arg_0, u_input.e.x)), u_input.d), ~var_0.b), 2147483647i >> (_wgslsmith_mod_u32(var_0.d, 0u) % 32u)).b.a);
    let var_2 = 1i;
    var_0 = func_4(func_4(firstLeadingBit(~_wgslsmith_add_vec2_u32(u_input.e.xx, vec2<u32>(36985u, 0u))), Struct_2(u_input.d.x, func_5(Struct_3(vec3<i32>(0i, -6590i, var_2), 2147483647i, var_0.c, 23287u), ~vec4<i32>(var_0.b, var_0.b, var_2, var_0.b), var_1.wwz, Struct_3(u_input.b, 2147483647i, Struct_1(false, var_0.c.b), 54182u)), min(firstLeadingBit(vec3<i32>(-51079i, -15429i, 2147483647i)), -var_0.a)), !vec4<bool>(!var_0.c.a, true, true, true)).c.b.zy, Struct_2(-_wgslsmith_mult_i32(func_2(Struct_2(var_0.a.x, var_0.c, vec3<i32>(u_input.b.x, var_0.a.x, -13108i)), var_0.b).c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, 1i), u_input.b.yy)), Struct_1(true & var_0.c.a, func_4(vec2<u32>(8977u, 0u), Struct_2(u_input.d.x, Struct_1(var_1.x, var_0.c.b), u_input.d), vec4<bool>(false, var_0.c.a, var_0.c.a, var_0.c.a)).c.b), vec3<i32>(_wgslsmith_add_i32(2147483647i, u_input.a) ^ -var_2, -2147483647i, 3541i)), vec4<bool>(true, var_1.x, func_4(~func_2(Struct_2(0i, Struct_1(var_1.x, vec3<u32>(var_0.c.b.x, var_0.d, 0u)), var_0.a), -22900i).b.b.xy, Struct_2(_wgslsmith_mult_i32(var_2, var_0.a.x), var_0.c, vec3<i32>(var_0.b, -15967i, u_input.a)), select(select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_0.c.a), vec4<bool>(true, var_1.x, true, false)), vec4<bool>(var_0.c.a, var_0.c.a, var_0.c.a, false), var_1.x)).c.a, var_0.c.a));
    var var_3 = func_2(Struct_2((9854i << (abs(u_input.e.x) % 32u)) | min(u_input.a, 14930i), Struct_1(var_0.c.a || var_1.x, abs(u_input.e)), vec3<i32>(var_2 | u_input.d.x, -15726i & var_2, max(var_0.b, var_0.b)) & _wgslsmith_div_vec3_i32(select(var_0.a, u_input.b, vec3<bool>(true, false, false)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_2, var_0.b, -1i), vec3<i32>(var_2, var_2, 12685i)))), ~min(_wgslsmith_add_i32(_wgslsmith_mult_i32(var_2, 2225i), abs(var_0.b)), 0i));
    return ~(var_0.a >> (u_input.e % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(u_input.d.x, u_input.a, ~(-(i32(-1i) * -1i)), _wgslsmith_mod_i32(reverseBits(_wgslsmith_add_i32(_wgslsmith_mult_i32(-52618i, u_input.a), min(u_input.d.x, u_input.d.x))), -(min(u_input.b.x, -24501i) ^ u_input.b.x)));
    var var_1 = true;
    var var_2 = Struct_2(reverseBits(u_input.b.x), Struct_1(!(!(1i < var_0.x)), u_input.e), min((func_1(4294967295u) ^ -u_input.b) | func_1(firstLeadingBit(u_input.c)), vec3<i32>(-select(44478i, var_0.x, true), 2147483647i, min(_wgslsmith_dot_vec2_i32(vec2<i32>(46770i, u_input.a), vec2<i32>(var_0.x, -2147483647i)), _wgslsmith_sub_i32(1i, var_0.x)))));
    var_1 = all(!select(!vec4<bool>(var_2.b.a, false, var_2.b.a, false), !(!vec4<bool>(var_2.b.a, false, var_2.b.a, true)), !func_4(var_2.b.b.zz, Struct_2(u_input.d.x, var_2.b, vec3<i32>(-5551i, u_input.d.x, var_2.a)), vec4<bool>(true, false, false, false)).c.a));
    var var_3 = Struct_3(vec3<i32>(max(-1i, -8294i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a, 38461i), abs(var_2.c.x)), abs(_wgslsmith_mod_i32(var_2.a, 10915i))), var_2.c.x), -func_2(Struct_2(_wgslsmith_mult_i32(var_2.a, 2147483647i), func_4(u_input.e.xz, Struct_2(-40458i, Struct_1(false, vec3<u32>(13969u, var_2.b.b.x, 15790u)), var_0.yyz), vec4<bool>(var_2.b.a, var_2.b.a, false, var_2.b.a)).c, var_2.c), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), var_2.c.yx), 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(23444i, -5251i), u_input.d.zy))).c.x, var_2.b, var_2.b.b.x);
    var var_4 = 84090u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -855f) * _wgslsmith_f_op_f32(sign(341f))))), _wgslsmith_f_op_f32(ceil(702f)));
}

