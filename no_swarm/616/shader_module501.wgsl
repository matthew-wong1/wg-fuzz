struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<u32>(0u, 34482u)), Struct_1(vec2<u32>(34611u, 0u)), Struct_1(vec2<u32>(10348u, 1u)));

var<private> global1: i32;

var<private> global2: array<vec4<f32>, 7>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_mult_i32(~u_input.c.x, reverseBits(u_input.a.x & ~1935i));
    global1 = ~max(-1i, -u_input.a.x);
    var var_1 = true | (_wgslsmith_add_i32(-1i, _wgslsmith_dot_vec3_i32(u_input.c, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-2147483647i, 2147483647i, 1i)))) != -(~firstTrailingBit(u_input.c.x)));
    var var_2 = abs(~(~_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 1u))));
    var var_3 = ~(~_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.d, -74227i, u_input.c.x) | vec4<i32>(u_input.d, u_input.a.x, u_input.a.x, u_input.d), vec4<i32>(-11939i, u_input.d, -1i, u_input.c.x)), vec4<i32>(reverseBits(u_input.a.x), u_input.d >> (u_input.b % 32u), -12159i, 2147483647i ^ u_input.a.x)));
    return Struct_2(Struct_1(vec2<u32>(u_input.b, u_input.b)), Struct_1(var_2.xy));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(arg_1.a.a.x, 3u)];
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(arg_1.b.a.x, 3u)], Struct_1(vec2<u32>(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 33327u), vec2<u32>(4294967295u, var_0.a.x)) >> (countOneBits(arg_1.a.a.x) % 32u))));
    let var_2 = arg_1.a;
    let var_3 = select(!select(!(!vec2<bool>(false, arg_2)), !select(vec2<bool>(true, true), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, true)), vec2<bool>(true, true)), !(!vec2<bool>(arg_2 & arg_2, arg_0.x != 605f)), true);
    global2 = array<vec4<f32>, 7>();
    return ~var_1.b.a.x;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec2<u32>, arg_3: f32) -> u32 {
    global0 = array<Struct_1, 3>();
    let var_0 = global0[_wgslsmith_index_u32(1312u, 3u)];
    let var_1 = Struct_2(Struct_1(arg_2), global0[_wgslsmith_index_u32(56322u << (func_2().a.a.x % 32u), 3u)]);
    global0 = array<Struct_1, 3>();
    let var_2 = abs(u_input.c.xx);
    return ~11673u;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = Struct_1(~arg_0.a);
    global2 = array<vec4<f32>, 7>();
    var var_1 = true;
    var var_2 = func_2();
    var var_3 = func_4(all(vec2<bool>(!any(vec4<bool>(false, false, false, false)), all(vec4<bool>(true, true, true, true)))), _wgslsmith_add_u32(var_0.a.x, ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(51542u, 50623u), func_3(vec2<f32>(-1339f, -1584f), Struct_2(Struct_1(vec2<u32>(1u, u_input.b)), Struct_1(vec2<u32>(arg_1, arg_2.a.a.x))), true))), abs(~((vec2<u32>(var_0.a.x, arg_0.a.x) >> (var_0.a % vec2<u32>(32u))) >> ((vec2<u32>(15597u, arg_0.a.x) >> (vec2<u32>(4294967295u, 6030u) % vec2<u32>(32u))) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(255f))))));
    return ~_wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_2.b.a.x, 94215u, 113415u, arg_0.a.x), min(vec4<u32>(var_2.b.a.x, 0u, var_0.a.x, arg_0.a.x), vec4<u32>(1u, 768u, var_2.b.a.x, 103449u)), ~vec4<u32>(36020u, arg_0.a.x, 42979u, 1u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(45030u, 1u, 28774u, var_0.a.x), abs(vec4<u32>(0u, arg_2.b.a.x, u_input.b, u_input.b))), vec4<u32>(arg_2.a.a.x, _wgslsmith_clamp_u32(var_2.a.a.x, var_2.b.a.x, var_0.a.x), ~4294967295u, 4294967295u)));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = abs(~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.a.x, 42289u, arg_1.a.x), ~vec3<u32>(arg_1.a.x, 0u, 65597u)), vec3<u32>(13706u, arg_2, arg_1.a.x & u_input.b)));
    global0 = array<Struct_1, 3>();
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, var_0.x), 7u)];
    let var_2 = Struct_1(vec2<u32>(firstLeadingBit(arg_1.a.x), var_0.x));
    return ~abs(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(372f, 587f) - var_1.zx)), func_2(), -1000f >= _wgslsmith_f_op_f32(-var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1523f;
    let var_1 = 1340f;
    global1 = _wgslsmith_mod_i32(reverseBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.d, 0i, u_input.a.x), vec4<i32>(u_input.c.x, -1i, -572i, 6914i)), u_input.d) >> (u_input.b % 32u)), _wgslsmith_dot_vec4_i32(max(-vec4<i32>(-7201i, -6906i, 2147483647i, 2147483647i), firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.d, -29061i))), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(25207i, -4384i, 43956i, u_input.a.x), vec4<i32>(15736i, 1i, -32544i, u_input.a.x), vec4<i32>(-26104i, 14508i, -2147483647i, u_input.d)), vec4<i32>(u_input.d, 2147483647i, 1i, 51876i) << (vec4<u32>(4294967295u, 4294967295u, u_input.b, 0u) % vec4<u32>(32u)))) & -u_input.c.x);
    let var_2 = -(_wgslsmith_dot_vec2_i32(u_input.c.yy, vec2<i32>(countOneBits(-7495i), i32(-1i) * -26550i)) ^ u_input.a.x);
    global1 = ~2796i;
    var var_3 = Struct_1(~_wgslsmith_sub_vec2_u32(~(~vec2<u32>(21368u, 21604u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(10437u, u_input.b))));
    var var_4 = func_5(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2, u_input.d, var_2, u_input.c.x) >> (func_1(Struct_1(var_3.a), 0u, Struct_2(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(16760u, 3u)])) % vec4<u32>(32u)), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 25635i, 2267i), vec4<i32>(var_2, 1i, var_2, var_2))), global0[_wgslsmith_index_u32(var_3.a.x << (1u % 32u), 3u)], 1u) | func_2().a.a.x;
    var var_5 = var_3.a;
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(37640u, var_5.x, var_3.a.x)), abs(firstTrailingBit(vec3<u32>(var_5.x, 4294967295u, u_input.b)))), vec4<i32>(~(~20426i), -var_2, 15286i, ~_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(2147483647i, var_2, var_2))) & abs((vec4<i32>(1i, var_2, var_2, var_2) ^ vec4<i32>(u_input.d, 0i, var_2, 1i)) << (_wgslsmith_add_vec4_u32(vec4<u32>(var_5.x, u_input.b, var_3.a.x, 34901u), vec4<u32>(2440u, u_input.b, 99818u, 31436u)) % vec4<u32>(32u))));
}

