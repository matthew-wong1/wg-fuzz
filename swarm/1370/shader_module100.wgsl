struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 29>;

var<private> global2: array<Struct_4, 22>;

var<private> global3: array<i32, 4> = array<i32, 4>(i32(-2147483648), i32(-2147483648), 37731i, -33667i);

var<private> global4: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_3) -> f32 {
    global4 = Struct_1(global4.a);
    let var_0 = arg_3.a;
    global3 = array<i32, 4>();
    let var_1 = global1[_wgslsmith_index_u32(arg_3.a.x, 29u)];
    global2 = array<Struct_4, 22>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(644f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -130f)))));
}

fn func_3(arg_0: vec4<f32>) -> Struct_5 {
    var var_0 = global4.a;
    let var_1 = ~countOneBits(~abs(-vec4<i32>(u_input.c, u_input.c, -1i, u_input.c)));
    let var_2 = ~min(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(var_1, var_1), ~2147483647i), u_input.b.x);
    global0 = _wgslsmith_div_u32(firstTrailingBit(abs(~u_input.d)), 1u);
    global4 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x + -276f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x * arg_0.x))) - -1649f));
    return Struct_5(_wgslsmith_f_op_vec2_f32(-arg_0.wz), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 98292u)), firstLeadingBit(vec2<u32>(u_input.a, u_input.a))) & _wgslsmith_div_u32(1u, ~_wgslsmith_mod_u32(1u, u_input.a)), 29u)], _wgslsmith_sub_vec2_i32(u_input.b.xz, -(vec2<i32>(7350i, 46465i) & u_input.b.yx) & _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -48486i) ^ vec2<i32>(var_1.x, var_2), u_input.b.yy, -u_input.b.zz)), Struct_4(Struct_3(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 0u), vec2<u32>(1u, u_input.d)), ~vec2<u32>(u_input.d, u_input.a)), var_1.xy, 4294967295u, vec2<i32>(countOneBits(-2147483647i), 1i))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_5) -> Struct_3 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-arg_2.a.x);
    let var_2 = Struct_1(u_input.c > reverseBits(min(513i, 1i)));
    global0 = u_input.d;
    var var_3 = vec4<bool>(!(!(!var_2.a)), true, true, !all(vec3<bool>(all(vec2<bool>(var_0, arg_1.a)), select(false, global4.a, arg_1.a), arg_1.a)));
    return func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, arg_2.a.x, 932f, -2318f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_2.a.x, -1262f, var_1) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, var_1, 1368f, arg_2.a.x) * vec4<f32>(arg_2.a.x, -1301f, var_1, var_1))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(640f, -592f, arg_2.a.x, arg_2.a.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 606f, -195f, arg_2.a.x))))).d.a;
}

fn func_5(arg_0: u32, arg_1: Struct_3) -> u32 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(arg_1.c, 29u)], arg_1.d.x != -20508i, Struct_1(!all(select(vec3<bool>(global4.a, false, true), vec3<bool>(global4.a, global4.a, false), true))));
    let var_1 = 0u;
    var var_2 = _wgslsmith_mult_i32(arg_1.b.x, -global3[_wgslsmith_index_u32(var_1, 4u)]);
    let var_3 = func_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1024f)) - 931f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1i, vec3<i32>(43923i, 11532i, -42317i), arg_0, Struct_3(arg_1.a, u_input.b.zx, arg_0, vec2<i32>(arg_1.d.x, arg_1.d.x))))) + 1217f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(492f)), -904f))), _wgslsmith_f_op_f32(func_2(_wgslsmith_div_i32(arg_1.d.x, -15192i), ~vec3<i32>(arg_1.d.x, -14967i, 32712i), var_1, Struct_3(abs(arg_1.a), func_4(vec2<i32>(u_input.b.x, -9661i), Struct_1(true), Struct_5(vec2<f32>(-932f, -1885f), Struct_1(var_0.b), vec2<i32>(global3[_wgslsmith_index_u32(1u, 4u)], -35938i), Struct_4(arg_1))).d, 13763u << (1u % 32u), -vec2<i32>(2147483647i, 0i)))))).d.a;
    var var_4 = _wgslsmith_div_i32((-(i32(-1i) * -2147483647i) << (_wgslsmith_sub_u32(reverseBits(var_3.c), ~47160u) % 32u)) >> (~arg_0 % 32u), 3650i);
    return ~82151u;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>) -> StorageBuffer {
    var var_0 = func_5(~(~51888u), func_4(~vec2<i32>(_wgslsmith_sub_i32(-1i, 20534i), u_input.c | u_input.b.x), global1[_wgslsmith_index_u32(46302u, 29u)], func_3(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_2(0i, u_input.b, arg_2.x, Struct_3(vec2<u32>(19698u, arg_0), vec2<i32>(0i, 0i), u_input.a, u_input.b.yz))), _wgslsmith_f_op_f32(step(1303f, -1303f))))));
    var var_1 = -407f;
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1046f) - -479f) - _wgslsmith_f_op_f32(trunc(-1259f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-352f - -2720f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 892f) + vec2<f32>(226f, -1479f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-667f, -2339f)))))));
    global1 = array<Struct_1, 29>();
    let var_3 = func_4(u_input.b.xz, arg_1.c, func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<f32>(902f, 666f, var_2.x, var_2.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(213f, 256f, -1841f, -1389f))))));
    return StorageBuffer(var_2, ~u_input.b, select(u_input.b, ~(~vec3<i32>(global3[_wgslsmith_index_u32(67472u, 4u)], -2147483647i, u_input.c)), true), _wgslsmith_mod_vec2_u32((arg_2 << (~var_3.a % vec2<u32>(32u))) ^ arg_2, ~vec2<u32>(4294967295u, var_3.c) & max(~arg_2, _wgslsmith_sub_vec2_u32(arg_2, arg_2))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 22>();
    let x = u_input.a;
    s_output = func_1(1u, Struct_2(Struct_1(true), global4.a, global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_sub_u32(49714u, u_input.a), _wgslsmith_sub_u32(u_input.d, 50921u)), 29u)]), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, u_input.d, 1u, 1u), vec4<u32>(4294967295u, u_input.d, u_input.d, 4294967295u)), vec4<u32>(~u_input.d, u_input.a, min(35350u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.d, 4294967295u), vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u)))), u_input.d));
}

