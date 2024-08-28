struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: array<vec3<bool>, 20>;

var<private> global2: array<f32, 30>;

var<private> global3: array<f32, 8> = array<f32, 8>(-727f, 116f, -1585f, 314f, -495f, 477f, 286f, 751f);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> vec4<i32> {
    let var_0 = Struct_4(vec4<i32>(arg_0.a.x, -5143i, i32(-1i) * -_wgslsmith_clamp_i32(arg_0.a.x, u_input.a, -1i), -48125i), arg_0.b, global0[_wgslsmith_index_u32((arg_0.b.x & _wgslsmith_mod_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(1u, 11u)], 4294967295u), ~4294967295u)) << (1u % 32u), 11u)]);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0.b.zxw, ~vec3<u32>(var_0.b.x, 78505u, global0[_wgslsmith_index_u32(62912u, 11u)])), 30u)]) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1524f)))));
    let var_2 = _wgslsmith_sub_vec3_i32(~arg_0.a.xxy, ~_wgslsmith_sub_vec3_i32(~vec3<i32>(-1i, 2147483647i, u_input.a), vec3<i32>(var_0.a.x, 21366i, var_0.a.x))) | arg_0.a.yxy;
    global1 = array<vec3<bool>, 20>();
    let var_3 = global2[_wgslsmith_index_u32(arg_0.c, 30u)];
    return ~firstLeadingBit(~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 1i, arg_0.a.x, var_0.a.x), countOneBits(var_0.a)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<i32>) -> bool {
    let var_0 = arg_0;
    global3 = array<f32, 8>();
    global2 = array<f32, 30>();
    var var_1 = Struct_4(min(vec4<i32>(50440i, _wgslsmith_dot_vec2_i32(var_0.b.c, var_0.b.c), arg_1.a << (var_0.c % 32u), firstTrailingBit(1i)), arg_2 >> (vec4<u32>(arg_0.c, var_0.c, 4294967295u, var_0.c) % vec4<u32>(32u))) | -_wgslsmith_clamp_vec4_i32(arg_2 ^ vec4<i32>(-16231i, arg_0.b.c.x, arg_2.x, -19559i), ~arg_2, vec4<i32>(17454i, arg_1.a, arg_2.x, u_input.a) >> (vec4<u32>(var_0.c, global0[_wgslsmith_index_u32(4294967295u, 11u)], arg_0.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)]) % vec4<u32>(32u))), (min(~vec4<u32>(82156u, 40157u, var_0.c, var_0.c), vec4<u32>(arg_0.c, global0[_wgslsmith_index_u32(var_0.c, 11u)], 19820u, 4294967295u)) | firstTrailingBit(countOneBits(vec4<u32>(4000u, arg_0.c, global0[_wgslsmith_index_u32(arg_0.c, 11u)], 1u)))) << (_wgslsmith_clamp_vec4_u32(select(min(vec4<u32>(var_0.c, 10826u, 1u, global0[_wgslsmith_index_u32(arg_0.c, 11u)]), vec4<u32>(2772u, 28131u, global0[_wgslsmith_index_u32(var_0.c, 11u)], 628u)), ~vec4<u32>(var_0.c, arg_0.c, var_0.c, 71333u), var_0.b.b.x), vec4<u32>(36222u, 39638u, 6106u, 28514u) & ~vec4<u32>(global0[_wgslsmith_index_u32(1u, 11u)], 1u, global0[_wgslsmith_index_u32(54332u, 11u)], 0u), ~min(vec4<u32>(var_0.c, arg_0.c, 27087u, 4294967295u), vec4<u32>(var_0.c, var_0.c, 4294967295u, 1u))) % vec4<u32>(32u)), ~arg_0.c);
    var var_2 = true;
    return false;
}

fn func_2() -> vec4<u32> {
    var var_0 = vec4<i32>(select(u_input.a, 34487i, func_4(Struct_2(false, Struct_1(vec3<f32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 8u)], -696f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34913u, 11u)], 30u)]), vec2<bool>(true, false), vec2<i32>(-7562i, u_input.a)), 1u), Struct_3(0i), func_3(Struct_4(vec4<i32>(-24006i, -2147483647i, u_input.a, u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58614u, 11u)], 11u)], 11u)], 71001u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(77880u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 0u), global0[_wgslsmith_index_u32(19442u, 11u)])))), u_input.a, u_input.a, u_input.a) ^ vec4<i32>(abs(0i), ~(1099i & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -8193i, u_input.a), vec3<i32>(u_input.a, 1i, u_input.a))), max(_wgslsmith_mod_i32(~u_input.a, u_input.a), -firstTrailingBit(27530i)), u_input.a);
    global3 = array<f32, 8>();
    var_0 = min(~func_3(Struct_4(countOneBits(vec4<i32>(u_input.a, 2686i, 11301i, -2147483647i)), ~vec4<u32>(1072u, 2364u, 6720u, 1u), 8526u)), max(-_wgslsmith_div_vec4_i32(vec4<i32>(46290i, var_0.x, -1i, 0i) << (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9322u, 11u)], 11u)], 11u)], 11u)], 11u)], global0[_wgslsmith_index_u32(13177u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], 4913u) % vec4<u32>(32u)), vec4<i32>(0i, var_0.x, 1i, var_0.x)), vec4<i32>(min(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, 25777i, -1i), vec4<i32>(u_input.a, u_input.a, u_input.a, var_0.x))), var_0.x, -2147483647i, ~1i)));
    var_0 = vec4<i32>(-25521i, u_input.a, abs(0i), _wgslsmith_sub_i32(abs(u_input.a), ~u_input.a));
    global2 = array<f32, 30>();
    return reverseBits(min(max(_wgslsmith_clamp_vec4_u32(~vec4<u32>(63716u, global0[_wgslsmith_index_u32(1u, 11u)], 17873u, 16105u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 30208u, global0[_wgslsmith_index_u32(1u, 11u)], 1u) >> (vec4<u32>(83777u, 4294967295u, global0[_wgslsmith_index_u32(1u, 11u)], 2696u) % vec4<u32>(32u)), vec4<u32>(global0[_wgslsmith_index_u32(73890u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37490u, 11u)], 11u)], 0u)), countOneBits(~vec4<u32>(32402u, 106794u, global0[_wgslsmith_index_u32(0u, 11u)], 14685u))), vec4<u32>(~_wgslsmith_div_u32(38341u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32128u, 11u)], 11u)], 11u)], 11u)]), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(10701u, 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(69263u, 11u)], 11u)], 11u)]), 11u)], 1u, 1u)));
}

fn func_1(arg_0: u32, arg_1: u32) -> StorageBuffer {
    var var_0 = _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, 1u, 66385u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 11u)], 11u)]), vec4<u32>(12761u, arg_0, arg_1, 30148u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], 4294967295u, 4294967295u, arg_0), _wgslsmith_mod_vec4_u32(vec4<u32>(20236u, 0u, arg_0, 5390u), vec4<u32>(arg_0, 1u, 4294967295u, 0u))), firstTrailingBit(func_2())), firstLeadingBit(countOneBits(vec4<u32>(arg_1, 34134u, arg_1, 0u) | vec4<u32>(arg_1, arg_1, 20525u, 4294967295u))));
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    global3 = array<f32, 8>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(-1170f)), global2[_wgslsmith_index_u32(arg_1, 30u)]);
    return StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -819f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(498f, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 11u)], 8u)], true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + global3[_wgslsmith_index_u32(0u, 8u)]) - _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 30u)]))))), vec2<u32>((arg_1 << (arg_0 % 32u)) & firstTrailingBit(4294967295u), max(~0u, firstTrailingBit(arg_0 << (global0[_wgslsmith_index_u32(arg_0, 11u)] % 32u)))), vec3<u32>(abs(36109u), ~arg_0, 1u), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = vec4<bool>(true, !var_0, var_0, false);
    global1 = array<vec3<bool>, 20>();
    let var_2 = vec2<f32>(-718f, 1328f);
    var var_3 = reverseBits(global0[_wgslsmith_index_u32(~1u, 11u)]);
    let x = u_input.a;
    s_output = func_1(global0[_wgslsmith_index_u32(countOneBits(43485u), 11u)], 4114u);
}

