struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(vec3<bool>(false, true, true), 11693u, false, vec3<u32>(26543u, 1u, 0u), 53717u)), Struct_2(Struct_1(vec3<bool>(false, false, false), 4294967295u, false, vec3<u32>(1980u, 0u, 11334u), 67848u)));

var<private> global1: vec3<f32>;

var<private> global2: array<i32, 5>;

var<private> global3: vec2<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: bool, arg_3: bool) -> bool {
    global3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(~(-select(-1i, arg_1.x, arg_3)), global2[_wgslsmith_index_u32(~(~(~u_input.a)), 5u)]), vec2<i32>(-1i) * -vec2<i32>(firstLeadingBit(global3.x), global2[_wgslsmith_index_u32(1u, 5u)]), vec2<i32>(50962i, abs(global2[_wgslsmith_index_u32(min(arg_0.x, u_input.a), 5u)])));
    global2 = array<i32, 5>();
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-336f, -1935f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x))) * _wgslsmith_f_op_f32(-global1.x)), global1.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(f32(-1f) * -1060f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -119f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(ceil(1452f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -807f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(779f - 182f) + _wgslsmith_f_op_f32(f32(-1f) * -582f)), var_0.x))));
    let var_1 = Struct_1(select(!vec3<bool>(any(vec2<bool>(false, arg_3)), false, arg_2), !(!vec3<bool>(arg_3, false, arg_2)), all(vec4<bool>(arg_2 | arg_3, true, -667f <= global1.x, global2[_wgslsmith_index_u32(arg_0.x, 5u)] >= 2147483647i))), u_input.d.x, arg_2, ~(~select(vec3<u32>(u_input.d.x, u_input.d.x, arg_0.x), vec3<u32>(25734u, arg_0.x, u_input.d.x), vec3<bool>(true, arg_3, arg_3))) & ~vec3<u32>(_wgslsmith_mult_u32(u_input.a, 1u), ~arg_0.x, _wgslsmith_mod_u32(1u, 83342u)), ~(arg_0.x | u_input.a));
    return var_1.c;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: i32) -> vec3<u32> {
    global0 = array<Struct_2, 2>();
    var var_0 = Struct_2(Struct_1(!vec3<bool>(u_input.b.x < u_input.b.x, false, func_3(vec2<u32>(59031u, 27345u), vec3<i32>(0i, global3.x, -1i), true, false)), 1u, any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true)), max(vec3<u32>(u_input.d.x, u_input.a, 51299u), vec3<u32>(u_input.b.x, u_input.a, 4294967295u)) << (vec3<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.d.x, u_input.a), _wgslsmith_add_u32(4294967295u, u_input.a), _wgslsmith_sub_u32(40773u, u_input.a)) % vec3<u32>(32u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(49311u, u_input.b.x)), _wgslsmith_clamp_vec2_u32(u_input.d.yw, vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 4158u))), reverseBits(~u_input.d.x))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(round(927f)));
    let var_2 = u_input.d << (~u_input.d % vec4<u32>(32u));
    let var_3 = 241f;
    return vec3<u32>(select(u_input.d.x, reverseBits(var_2.x), true), var_2.x, u_input.d.x);
}

fn func_4(arg_0: Struct_1) -> Struct_4 {
    global0 = array<Struct_2, 2>();
    global2 = array<i32, 5>();
    var var_0 = arg_0;
    global2 = array<i32, 5>();
    var_0 = Struct_1(!(!(!select(vec3<bool>(arg_0.a.x, arg_0.a.x, var_0.a.x), var_0.a, vec3<bool>(true, var_0.a.x, var_0.c)))), 4294967295u, false, u_input.d.yww, u_input.d.x ^ (~arg_0.d.x >> (~_wgslsmith_div_u32(0u, 4294967295u) % 32u)));
    return Struct_4(770f);
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    let var_0 = u_input.e.x;
    global3 = ~select(vec2<i32>(global2[_wgslsmith_index_u32(~arg_2.a.e, 5u)], _wgslsmith_mod_i32(u_input.c, 16259i)), vec2<i32>(-global2[_wgslsmith_index_u32(u_input.d.x, 5u)], _wgslsmith_div_i32(arg_3, global3.x)), !(!vec2<bool>(arg_2.a.a.x, arg_2.a.a.x))) << ((vec2<u32>(arg_2.a.e, 0u) | u_input.d.zx) % vec2<u32>(32u));
    var var_1 = vec4<bool>((u_input.d.x == ~u_input.b.x) & true, arg_2.a.a.x & all(!arg_2.a.a.yy), !(!(!any(vec4<bool>(false, arg_2.a.c, arg_2.a.a.x, false)))), all(select(arg_2.a.a.xz, select(arg_2.a.a.yy, select(arg_2.a.a.xy, arg_2.a.a.zz, true), !arg_2.a.c), !arg_2.a.a.xx)));
    global2 = array<i32, 5>();
    var var_2 = abs(0u);
    return arg_2.a;
}

fn func_1(arg_0: i32, arg_1: Struct_4) -> Struct_1 {
    global0 = array<Struct_2, 2>();
    var var_0 = func_5(func_4(Struct_1(vec3<bool>(true, true, true), _wgslsmith_mult_u32(reverseBits(u_input.b.x), u_input.a), true, ~vec3<u32>(u_input.b.x, 0u, u_input.b.x), _wgslsmith_dot_vec3_u32(func_2(vec3<f32>(961f, -103f, 1827f), global1.x, arg_0), ~vec3<u32>(u_input.a, u_input.d.x, u_input.b.x)))), u_input.e.x, Struct_2(Struct_1(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true), _wgslsmith_mod_u32(u_input.a, u_input.a), all(vec2<bool>(true, true)), countOneBits(~u_input.d.xyy), u_input.d.x)), _wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 5u)], global2[_wgslsmith_index_u32(u_input.d.x, 5u)], global3.x, 1i), reverseBits(u_input.e)), select(u_input.c, u_input.e.x, true)));
    var var_1 = Struct_2(Struct_1(!vec3<bool>(var_0.c, !var_0.a.x, false), 77690u, true, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, 1u, _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b.x, 0u, 70218u), var_0.d)), ~_wgslsmith_add_u32(min(54783u, 0u), 21506u)));
    var var_2 = func_5(func_4(func_5(Struct_4(_wgslsmith_f_op_f32(global1.x + -1187f)), 12110i, Struct_2(Struct_1(vec3<bool>(true, var_0.a.x, var_0.c), u_input.b.x, var_1.a.a.x, var_0.d, u_input.d.x)), i32(-1i) * -38828i)), 0i, Struct_2(var_1.a), -arg_0);
    var var_3 = Struct_1(!var_1.a.a, 1u, var_0.c, var_0.d, ~1u);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(min(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), 5u)], 2736i), Struct_2(func_1(2147483647i, Struct_4(602f))), u_input.a, u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, -983f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x)))));
    var_0 = Struct_3(min(_wgslsmith_dot_vec3_i32(u_input.e.xxy, ~vec3<i32>(global3.x, var_0.a, u_input.e.x)), var_0.a) >> (max(u_input.d.x, func_1(firstLeadingBit(global3.x), Struct_4(-1653f)).b) % 32u), Struct_2(Struct_1(var_0.b.a.a, 20076u, !(u_input.c < -2147483647i), (u_input.d.wxz >> (var_0.b.a.d % vec3<u32>(32u))) ^ abs(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, var_0.b.a.b), vec2<u32>(u_input.a, 5820u)))), ~firstLeadingBit(0u), min(global2[_wgslsmith_index_u32(3233u | var_0.c, 5u)], _wgslsmith_mult_i32(2147483647i, u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) + global1.x) > 896f);
    var_0 = Struct_3(~0i, Struct_2(func_1(0i, Struct_4(-512f))), ~func_5(Struct_4(_wgslsmith_f_op_f32(-global1.x)), -global2[_wgslsmith_index_u32(~u_input.d.x, 5u)], Struct_2(func_1(-2147483647i, Struct_4(-2598f))), i32(-1i) * -18960i).e, -(~u_input.e.x), var_0.b.a.a.x);
    global0 = array<Struct_2, 2>();
    global2 = array<i32, 5>();
    let var_1 = Struct_2(Struct_1(var_0.b.a.a, var_0.b.a.e, true, ~((vec3<u32>(105270u, 43336u, 35497u) << (u_input.d.xww % vec3<u32>(32u))) << ((vec3<u32>(39033u, 1u, 8257u) >> (vec3<u32>(66535u, var_0.c, 48048u) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_add_u32(func_1(-1i, func_4(var_0.b.a)).d.x, var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -312f), global1.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(select(-446f, -1000f, var_1.a.c))))), var_0.b.a.d, _wgslsmith_mod_u32(var_1.a.b & (func_5(Struct_4(global1.x), var_0.a, Struct_2(Struct_1(var_1.a.a, 15854u, var_0.e, vec3<u32>(var_1.a.e, var_1.a.d.x, 4294967295u), var_1.a.e)), 24405i).d.x | var_1.a.d.x), 1u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-333f, -138f, 1133f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-154f, global1.x, global1.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(341f, global1.x, global1.x)))))))));
}

