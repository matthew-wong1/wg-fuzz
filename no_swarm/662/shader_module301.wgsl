struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_4,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true));

var<private> global1: Struct_2 = Struct_2(vec4<f32>(-1767f, -160f, -1283f, -1000f), vec2<i32>(-1819i, -1i), Struct_1(774f, -1i, vec3<bool>(false, true, true)));

var<private> global2: vec2<f32>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec2<u32> {
    global1 = Struct_2(arg_1.a, ~firstTrailingBit(_wgslsmith_mult_vec2_i32(arg_1.b, _wgslsmith_add_vec2_i32(u_input.c.zy, global1.b))), Struct_1(469f, -(select(0i, arg_1.c.b, false) ^ _wgslsmith_add_i32(15279i, global1.c.b)), select(select(arg_1.c.c, !global0[_wgslsmith_index_u32(u_input.a, 5u)], !arg_1.c.c), vec3<bool>(false, arg_1.c.c.x, all(vec3<bool>(arg_0, global1.c.c.x, arg_0))), any(select(vec4<bool>(false, true, false, false), vec4<bool>(arg_0, true, false, false), arg_1.c.c.x)))));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-816f))) + global1.a.x));
    var var_0 = Struct_4(global2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(abs(83602u)), ~u_input.a ^ ~u_input.a), vec2<u32>(_wgslsmith_mult_u32(u_input.a >> (u_input.a % 32u), _wgslsmith_mod_u32(u_input.a, 4294967295u)), ~u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x >> (23807u % 32u)), vec2<i32>(1i, _wgslsmith_div_i32(u_input.c.x, arg_1.c.b))) >> (~abs(vec2<u32>(u_input.a, 1u) & vec2<u32>(0u, u_input.a)) % vec2<u32>(32u)), true);
    var var_1 = global1.c;
    var_0 = Struct_4(_wgslsmith_f_op_f32(select(-2069f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_1.a)))), false)), 11636u, vec2<i32>(-23747i, 0i), !all(vec3<bool>(global1.c.c.x || arg_1.c.c.x, all(vec4<bool>(false, arg_1.c.c.x, false, var_0.d)), false)));
    return vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(14420u, 0u, var_0.b) | vec3<u32>(0u, u_input.a, 29143u), select(vec3<u32>(15415u, 25923u, u_input.a), vec3<u32>(var_0.b, 1u, u_input.a), true)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0.b, 4294967295u, 43374u), ~vec3<u32>(0u, var_0.b, u_input.a), vec3<u32>(3195u, var_0.b, u_input.a))), _wgslsmith_mult_u32(3336u, u_input.a)), ~(~(_wgslsmith_add_u32(0u, 3249u) >> (u_input.a % 32u))));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: f32) -> Struct_5 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(max(0u, 1u), 1623u), ~(~vec2<u32>(48612u, u_input.a)) | _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a), func_3(false, Struct_2(vec4<f32>(1000f, global1.c.a, global2.x, -1162f), vec2<i32>(arg_0, arg_0), Struct_1(-730f, global1.c.b, global0[_wgslsmith_index_u32(u_input.a, 5u)]))))), u_input.a, ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), firstTrailingBit(vec2<u32>(1u, u_input.a)))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a)), _wgslsmith_clamp_vec2_i32(global1.b & vec2<i32>(~(-2147483647i), arg_0), -(vec2<i32>(-1i) * -vec2<i32>(global1.c.b, -1611i)), u_input.c.yx), global1.c);
    var var_2 = Struct_3(var_1.a.zxx, u_input.a);
    let var_3 = var_1.a;
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(var_3 * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a))), max(select(firstLeadingBit(global1.b), global1.b, arg_1), abs(-u_input.b.yz)), global1.c);
    return Struct_5(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -536f, _wgslsmith_f_op_f32(-global1.c.a), _wgslsmith_f_op_f32(f32(-1f) * -1192f))), -_wgslsmith_mult_vec2_i32(global1.b ^ u_input.c.zz, firstTrailingBit(vec2<i32>(arg_0, 2147483647i))), Struct_1(_wgslsmith_f_op_f32(var_1.c.a - _wgslsmith_f_op_f32(f32(-1f) * -728f)), -u_input.c.x, !vec3<bool>(global1.c.c.x, var_4.c.c.x, var_1.c.c.x))), ~(min(firstLeadingBit(vec4<u32>(4294967295u, 50951u, 0u, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(27610u, var_2.b, 1u, var_2.b), vec4<u32>(u_input.a, u_input.a, var_2.b, 1u))) | ~vec4<u32>(54463u, 28037u, var_0.x, var_0.x)), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.c.a * -876f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - -841f))), abs(abs(~u_input.a)), vec2<i32>(~30293i, _wgslsmith_mult_i32(2147483647i, -var_4.c.b)), true), vec4<u32>(var_2.b, abs(~(13586u >> (var_0.x % 32u))), 4294967295u, var_2.b), ~vec2<u32>(var_2.b, ~(~u_input.a)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: bool) -> Struct_1 {
    var var_0 = false;
    let var_1 = func_2(0i, global1.c.c.x, -1617f);
    global1 = func_2(-(~(-2147483647i >> (_wgslsmith_mod_u32(u_input.a, 20730u) % 32u))), true, 1f).a;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1066f);
    var var_3 = firstLeadingBit(~_wgslsmith_mod_vec4_i32(-select(vec4<i32>(-5026i, 1i, u_input.b.x, -1i), vec4<i32>(2147483647i, -1i, global1.b.x, -10740i), arg_1), (vec4<i32>(var_1.a.c.b, u_input.b.x, 1i, 1i) >> (vec4<u32>(var_1.d.x, 4294967295u, 42672u, 62386u) % vec4<u32>(32u))) >> (var_1.d % vec4<u32>(32u))));
    return global1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = global1.b;
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(308f, -790f, global2.x, 518f)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global1.a.x, global2.x, global2.x))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global1.a, global1.a))), global1.a))), countOneBits(vec2<i32>(abs(u_input.b.x), -38811i)), func_1(_wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1248f))))), !all(vec2<bool>(global1.c.c.x, global1.c.c.x)), false));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -931f), 1184f);
    var var_3 = min(9433u, var_0);
    let var_4 = false;
    let var_5 = vec4<i32>(firstTrailingBit(-30358i), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b.x, var_1.x, var_1.x, var_1.x), ~vec4<i32>(-1i, var_1.x, 59397i, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.b.x, -1i, u_input.c.x, -41748i), ~vec4<i32>(-2147483647i, 1i, 1i, -1i)), vec4<i32>(1i, func_2(1i, global1.c.c.x, global2.x).c.c.x, 31571i, global1.b.x)), ~vec4<i32>(countOneBits(2147483647i), u_input.c.x ^ 0i, _wgslsmith_add_i32(u_input.b.x, global1.b.x), _wgslsmith_div_i32(-55037i, var_1.x))), firstTrailingBit(_wgslsmith_div_i32(-firstTrailingBit(16278i), -82628i)), global1.b.x);
    let var_6 = func_2(-42507i, true, global1.c.a).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_1(global2.x, true, any(!vec4<bool>(var_4, var_6.d, global1.c.c.x, var_4))).a), ~_wgslsmith_sub_vec4_u32(vec4<u32>(~119609u, ~u_input.a, ~135919u, select(var_0, 10719u, true)), ~(vec4<u32>(var_6.b, 42844u, u_input.a, var_6.b) >> (vec4<u32>(0u, var_6.b, 4294967295u, 0u) % vec4<u32>(32u)))), global1.a.wz);
}

