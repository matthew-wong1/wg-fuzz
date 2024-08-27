struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
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

var<private> global0: array<Struct_2, 1>;

var<private> global1: vec2<u32>;

var<private> global2: array<u32, 2> = array<u32, 2>(4294967295u, 29766u);

var<private> global3: Struct_4 = Struct_4(Struct_2(Struct_1(false, vec4<u32>(23003u, 0u, 4294967295u, 0u)), vec2<i32>(-1746i, 2147483647i), 1000f), 1i, vec3<i32>(-1i, 2147483647i, 12501i));

var<private> global4: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_3) -> f32 {
    let var_0 = select(vec3<bool>(!(!all(vec4<bool>(true, false, global3.a.a.a, global3.a.a.a))), !arg_0.a.a || true, true), !(!(!vec3<bool>(arg_3.b.a, true, true))), all(vec2<bool>(-487f == arg_3.c, global3.a.a.a)));
    global2 = array<u32, 2>();
    var var_1 = 0u;
    global4 = all(!select(select(vec2<bool>(var_0.x, true), vec2<bool>(false, true), vec2<bool>(arg_3.b.a, global3.a.a.a)), !var_0.xx, global3.a.a.a)) != true;
    global1 = abs(~min(vec2<u32>(4294967295u | global2[_wgslsmith_index_u32(8478u, 2u)], ~1u), arg_3.a.b.wy));
    return _wgslsmith_f_op_f32(f32(-1f) * -796f);
}

fn func_4(arg_0: vec2<bool>, arg_1: f32) -> vec2<i32> {
    let var_0 = reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(max(global1.x, 4294967295u) << (global1.x % 32u), ~1u, global2[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(10300u, 2u)], 22220u, 138200u), 2u)]), 2u)]), global3.a.a.b.xxy));
    var var_1 = Struct_1(all(arg_0), ~global3.a.a.b);
    var var_2 = 1252f;
    global1 = ~(~_wgslsmith_sub_vec2_u32(max(vec2<u32>(1u, global3.a.a.b.x), global3.a.a.b.zw), countOneBits(vec2<u32>(51274u, 23400u) >> (vec2<u32>(61386u, global1.x) % vec2<u32>(32u)))));
    var var_3 = u_input.b;
    return vec2<i32>(0i, _wgslsmith_div_i32(~27057i, _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(var_3.x), 11463i, u_input.a), ~min(var_3.yxy, global3.c))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>) -> vec3<bool> {
    var var_0 = func_4(!select(arg_0.xx, select(select(arg_0.xz, arg_0.zx, arg_0.xz), !vec2<bool>(arg_0.x, global3.a.a.a), select(vec2<bool>(arg_0.x, true), arg_0.xy, false)), global3.a.a.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(global3.a.a.a, global3.a.a.b), Struct_1(false, global3.a.a.b), -1049f), global1.x, vec4<i32>(-31125i, u_input.b.x, global3.b, global3.b), Struct_3(Struct_1(true, vec4<u32>(0u, arg_1.x, arg_1.x, global2[_wgslsmith_index_u32(1u, 2u)])), Struct_1(arg_0.x, vec4<u32>(arg_1.x, 31938u, 29340u, global3.a.a.b.x)), global3.a.c)))) - -1029f))));
    let var_1 = global0[_wgslsmith_index_u32((~4294967295u & (global1.x >> (42325u % 32u))) & global1.x, 1u)];
    let var_2 = global3.a.c;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1267f, global3.a.c, global3.a.c, global3.a.c))))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -443f), var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c, global3.a.c))))));
    var var_4 = _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, ~0i & _wgslsmith_add_i32(firstTrailingBit(-27918i), global3.a.b.x)), vec2<i32>(countOneBits(~_wgslsmith_mult_i32(var_0.x, var_1.b.x)), abs(1i)));
    return select(vec3<bool>(true, var_1.a.a, true), select(select(vec3<bool>(!var_1.a.a, true, true), !(!arg_0), select(true, true, false) && true), arg_0, vec3<bool>(var_1.a.a, all(!vec4<bool>(global3.a.a.a, false, true, var_1.a.a)), all(select(vec2<bool>(false, true), arg_0.yy, true)))), any(arg_0));
}

fn func_1() -> Struct_1 {
    let var_0 = select(select(!func_2(select(vec3<bool>(true, false, true), vec3<bool>(global3.a.a.a, true, global3.a.a.a), global3.a.a.a), vec3<u32>(0u, 31039u, 41821u)), vec3<bool>(global3.a.c != 113f, !any(vec2<bool>(global3.a.a.a, true)), global3.a.a.a), true), select(!(!(!vec3<bool>(global3.a.a.a, global3.a.a.a, true))), select(vec3<bool>(!global3.a.a.a, global3.a.a.a, !global3.a.a.a), select(vec3<bool>(global3.a.a.a, false, global3.a.a.a), vec3<bool>(true, false, global3.a.a.a), vec3<bool>(false, false, global3.a.a.a)), vec3<bool>(true, true, true)), vec3<bool>(!(!global3.a.a.a), all(select(vec2<bool>(global3.a.a.a, global3.a.a.a), vec2<bool>(false, true), false)), !(495f < global3.a.c))), vec3<bool>(false, true, func_2(vec3<bool>(global3.a.a.a, false, false), vec3<u32>(~4294967295u, reverseBits(1u), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(13726u, 2u)], global2[_wgslsmith_index_u32(0u, 2u)]))).x));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.c)), 831f, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(floor(1585f)))))));
    global1 = vec2<u32>(select(_wgslsmith_mod_u32(_wgslsmith_sub_u32(global3.a.a.b.x, global2[_wgslsmith_index_u32(global1.x, 2u)]), 4294967295u), 1u, true), 0u);
    return Struct_1(var_0.x, _wgslsmith_clamp_vec4_u32(~min(vec4<u32>(global1.x, 4294967295u, 43728u, global2[_wgslsmith_index_u32(26363u, 2u)]), global3.a.a.b) << ((~global3.a.a.b ^ (vec4<u32>(global1.x, global1.x, global1.x, 4294967295u) << (global3.a.a.b % vec4<u32>(32u)))) % vec4<u32>(32u)), global3.a.a.b << (vec4<u32>(reverseBits(global1.x), _wgslsmith_add_u32(1u, global3.a.a.b.x), 4294967295u, countOneBits(4294967295u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(0u, 102727u, global2[_wgslsmith_index_u32(4294967295u, 2u)], 47707u)), vec4<u32>(~global1.x, global2[_wgslsmith_index_u32(~302u, 2u)], _wgslsmith_mult_u32(37374u, global3.a.a.b.x), 26448u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~global3.a.a.b.x, _wgslsmith_dot_vec3_u32(global3.a.a.b.xzx, firstLeadingBit(vec3<u32>(global3.a.a.b.x, 9958u, global3.a.a.b.x)) & ~vec3<u32>(global2[_wgslsmith_index_u32(global3.a.a.b.x, 2u)], 1u, 4294967295u))), firstLeadingBit(global3.a.a.b.yx));
    let var_1 = Struct_3(global3.a.a, func_1(), global3.a.c);
    global3 = Struct_4(global3.a, -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 4393i, global3.a.b.x, global3.a.b.x), vec4<i32>(-2147483647i, u_input.b.x, global3.b, 42757i) >> (vec4<u32>(global3.a.a.b.x, 1u, 25142u, 30019u) % vec4<u32>(32u))), -_wgslsmith_clamp_i32(u_input.a, 1i, u_input.a)), vec3<i32>(~u_input.a, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_mod_i32(9068i, 2612i)), _wgslsmith_div_i32(select(-1i, 2147483647i, var_1.b.a), u_input.b.x)), u_input.b.x));
    var var_2 = Struct_5(global3.a, Struct_2(var_1.a, vec2<i32>(u_input.a, _wgslsmith_sub_i32(1i, abs(u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c - 606f) * _wgslsmith_f_op_f32(-var_1.c)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(420f, -141f)))))), vec2<bool>(true && !(global1.x < 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.c) + _wgslsmith_f_op_f32(global3.a.c * 836f)) != _wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(step(var_1.c, -424f)))));
    var var_3 = true;
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(var_2.a.a.b.x, _wgslsmith_dot_vec3_u32(var_1.a.b.zzx, vec3<u32>(var_2.b.a.b.x, global3.a.a.b.x, 3875u)), ~0u)));
}

