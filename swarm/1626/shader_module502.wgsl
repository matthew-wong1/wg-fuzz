struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: f32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec4<bool>(false, false, true, false)), Struct_2(vec4<bool>(true, false, false, true)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(true, false, false, true)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(false, false, true, true)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(false, true, true, false)));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(2147483647i, 99409i, u_input.c, u_input.c), vec4<i32>(u_input.c, 0i, 14708i, 17948i), true), _wgslsmith_mult_vec4_i32(vec4<i32>(10254i, u_input.c, -2147483647i, u_input.c), vec4<i32>(u_input.c, -1i, u_input.c, u_input.c))), _wgslsmith_sub_vec4_i32(vec4<i32>(2470i, u_input.c, u_input.c, -2147483647i), vec4<i32>(u_input.c, u_input.c, 17667i, u_input.c)) | vec4<i32>(u_input.c, u_input.c, -1i, u_input.c)) << (~(~(~vec4<u32>(41189u, 4294967295u, 1u, 4294967295u))) % vec4<u32>(32u)), ((vec4<i32>(-13757i, u_input.c, -2147483647i, -19263i) << (vec4<u32>(u_input.b.x, u_input.b.x, 18099u, u_input.b.x) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_add_u32(16880u, 21197u), ~u_input.b.x, u_input.a, u_input.a) % vec4<u32>(32u))) >> (vec4<u32>(9858u, 4294967295u, u_input.a, (u_input.b.x >> (43759u % 32u)) ^ u_input.a) % vec4<u32>(32u)));
    global1 = array<Struct_2, 29>();
    let var_1 = ~(~u_input.b.x);
    global1 = array<Struct_2, 29>();
    global0 = u_input.c;
    return vec3<bool>(all(select(vec4<bool>(1u > u_input.b.x, all(vec4<bool>(true, false, true, true)), all(vec3<bool>(true, true, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), false))), select(all(vec2<bool>(true, any(vec2<bool>(true, false)))), !any(vec3<bool>(true, true, true)), true), _wgslsmith_clamp_i32(var_0 >> (_wgslsmith_mult_u32(65414u, 1u) % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(-9550i, var_0, var_0), vec3<i32>(0i, -2147483647i, 2147483647i)), u_input.c) >= (-1i & max(reverseBits(u_input.c), 19684i)));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: i32) -> u32 {
    let var_0 = 4294967295u;
    let var_1 = Struct_4(Struct_3(arg_2.a.a, !select(!vec3<bool>(arg_2.b.a.x, arg_2.a.b.x, arg_2.b.a.x), select(arg_2.a.b, vec3<bool>(arg_2.a.d.x, arg_2.a.a.a, true), arg_2.b.a.x), func_3()), Struct_1(all(!vec3<bool>(false, arg_2.b.a.x, arg_2.b.a.x))), arg_2.b.a), Struct_2(select(arg_2.a.d, select(!arg_2.b.a, vec4<bool>(arg_2.a.d.x, arg_2.b.a.x, true, arg_2.a.a.a), vec4<bool>(arg_2.b.a.x, arg_2.b.a.x, arg_2.a.c.a, arg_2.a.d.x)), arg_2.b.a)), arg_2.e, min(abs(~var_0), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, var_0), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 23338u, 33478u), u_input.b)), 31589u)), arg_2.e);
    var var_2 = _wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(reverseBits(var_0), 51843u, reverseBits(u_input.a)), select(u_input.b, u_input.b, arg_2.b.a.zwy)), ~select(reverseBits(_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(var_1.d, var_0, 0u))), firstTrailingBit(~u_input.b), vec3<bool>(all(var_1.a.d), false, var_1.a.c.a)));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(968f)), var_1.e));
    global1 = array<Struct_2, 29>();
    return 55335u;
}

fn func_1() -> StorageBuffer {
    var var_0 = ~vec2<u32>(~firstTrailingBit(func_2(1811i, u_input.b.zx, Struct_4(Struct_3(Struct_1(true), vec3<bool>(true, false, false), Struct_1(false), vec4<bool>(true, true, false, true)), global1[_wgslsmith_index_u32(u_input.b.x, 29u)], -536f, u_input.a, -940f), u_input.c)), _wgslsmith_add_u32(u_input.b.x | _wgslsmith_div_u32(1u, u_input.b.x), 1u));
    global1 = array<Struct_2, 29>();
    global1 = array<Struct_2, 29>();
    let var_1 = false;
    let var_2 = Struct_3(Struct_1(any(vec4<bool>(var_1, true, false, var_1)) && (u_input.c == (-22042i | u_input.c))), !vec3<bool>(true, -225f == _wgslsmith_f_op_f32(sign(-2743f)), true), Struct_1(var_1), select(!(!vec4<bool>(var_1, false, var_1, true)), select(select(vec4<bool>(false, false, var_1, false), vec4<bool>(true, var_1, true, false), var_1), select(!vec4<bool>(var_1, true, var_1, var_1), !vec4<bool>(true, var_1, var_1, true), any(vec2<bool>(var_1, true))), !vec4<bool>(true, var_1, true, var_1)), var_1));
    return StorageBuffer(_wgslsmith_add_vec3_u32(vec3<u32>(func_2(~u_input.c, u_input.b.yy | u_input.b.yx, Struct_4(Struct_3(var_2.a, var_2.d.ywx, Struct_1(false), vec4<bool>(var_1, var_1, var_1, var_2.a.a)), Struct_2(var_2.d), 953f, var_0.x, 496f), _wgslsmith_sub_i32(-1i, u_input.c)), 0u, 1u), ~vec3<u32>(1u, firstTrailingBit(0u), 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_i32(~u_input.c, 1i);
    global0 = reverseBits(_wgslsmith_sub_i32(-u_input.c, 40310i));
    global0 = -u_input.c;
    let x = u_input.a;
    s_output = func_1();
}

