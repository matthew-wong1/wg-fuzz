struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: Struct_3,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20>;

var<private> global1: Struct_2 = Struct_2(33079i, Struct_1(true, vec2<i32>(36898i, 2147483647i), 2147483647i));

var<private> global2: array<bool, 26>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: vec2<u32>) -> Struct_3 {
    return Struct_3(Struct_2(min(-_wgslsmith_dot_vec3_i32(vec3<i32>(-31697i, 96181i, 76762i), vec3<i32>(-29173i, global1.b.b.x, 2147483647i)), ~_wgslsmith_mod_i32(4439i, 1i)), global1.b), global1.b, global1.b);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_5, arg_3: u32) -> Struct_1 {
    global0 = array<vec4<u32>, 20>();
    var var_0 = u_input.b.yz;
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(min(43983i, max(-global1.b.b.x, 7058i)), 9016i), ~0i, _wgslsmith_div_i32(1i, max(_wgslsmith_mult_i32(2147483647i, arg_0.b.b.x), 2147483647i & arg_2.c.b.b.x) << (countOneBits(1u << (arg_3 % 32u)) % 32u)), u_input.a.x);
    let var_2 = arg_2;
    let var_3 = _wgslsmith_div_vec2_f32(var_2.a.xx, arg_2.a.yx);
    return var_2.c.a.b;
}

fn func_1(arg_0: bool) -> Struct_4 {
    global0 = array<vec4<u32>, 20>();
    var var_0 = Struct_3(Struct_2(global1.b.b.x & 37010i, func_3(func_2(false, vec3<u32>(1u, 1u, 106887u), firstTrailingBit(vec2<u32>(10567u, 0u))), u_input.b.xy, Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(738f, 2330f, -330f)), ~vec2<i32>(1i, -11837i), func_2(global1.b.a, u_input.b.zzw, u_input.b.yw), !vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 26u)], global1.b.a, global2[_wgslsmith_index_u32(0u, 26u)])), u_input.b.x)), func_3(Struct_3(Struct_2(select(global1.a, u_input.a.x, arg_0), func_3(Struct_3(Struct_2(u_input.a.x, global1.b), Struct_1(true, vec2<i32>(0i, u_input.a.x), u_input.a.x), global1.b), vec2<u32>(u_input.b.x, 20380u), Struct_5(vec3<f32>(1883f, 418f, 578f), u_input.a.xx, Struct_3(Struct_2(global1.b.b.x, global1.b), global1.b, Struct_1(arg_0, vec2<i32>(u_input.a.x, 14187i), -1i)), vec4<bool>(true, true, global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(34163u, 26u)])), u_input.b.x)), Struct_1(all(vec3<bool>(true, false, false)), ~global1.b.b, firstLeadingBit(-1i)), global1.b), ~(~vec2<u32>(u_input.b.x, 10640u)), Struct_5(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-580f, 1752f, 383f) + vec3<f32>(933f, 376f, -972f)))), abs(global1.b.b) & vec2<i32>(-774i, 2147483647i), Struct_3(Struct_2(global1.a, Struct_1(false, u_input.a.yy, -55044i)), Struct_1(false, vec2<i32>(global1.a, global1.b.b.x), global1.b.c), func_2(true, vec3<u32>(16292u, u_input.b.x, 1u), vec2<u32>(u_input.b.x, u_input.b.x)).b), !select(vec4<bool>(true, global1.b.a, global1.b.a, global2[_wgslsmith_index_u32(u_input.b.x, 26u)]), vec4<bool>(arg_0, true, true, false), vec4<bool>(false, true, global2[_wgslsmith_index_u32(0u, 26u)], arg_0))), select(abs(u_input.b.x) ^ _wgslsmith_mult_u32(u_input.b.x, 1u), 121066u, !func_3(Struct_3(Struct_2(global1.a, Struct_1(arg_0, vec2<i32>(1i, global1.a), global1.a)), global1.b, Struct_1(global2[_wgslsmith_index_u32(u_input.b.x, 26u)], u_input.a.xx, 51450i)), vec2<u32>(5828u, u_input.b.x), Struct_5(vec3<f32>(-1501f, 991f, 248f), u_input.a.yz, Struct_3(Struct_2(-33344i, global1.b), Struct_1(global2[_wgslsmith_index_u32(u_input.b.x, 26u)], u_input.a.wx, global1.a), global1.b), vec4<bool>(true, true, arg_0, true)), u_input.b.x).a)), Struct_1(any(select(vec4<bool>(arg_0, arg_0, global2[_wgslsmith_index_u32(u_input.b.x, 26u)], true), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 26u)], true, global1.b.a, global2[_wgslsmith_index_u32(0u, 26u)]), vec4<bool>(false, global1.b.a, global2[_wgslsmith_index_u32(49235u, 26u)], true))), vec2<i32>(global1.a, _wgslsmith_dot_vec3_i32(u_input.a.zyx, u_input.a.wxz & u_input.a.zzw)), global1.b.b.x));
    let var_1 = Struct_4(select(!(!select(vec3<bool>(var_0.b.a, true, global2[_wgslsmith_index_u32(u_input.b.x, 26u)]), vec3<bool>(arg_0, global1.b.a, arg_0), global1.b.a)), vec3<bool>(!(u_input.a.x > 1i), true, true), !select(vec3<bool>(var_0.b.a, true, global2[_wgslsmith_index_u32(20549u, 26u)]), !vec3<bool>(var_0.b.a, arg_0, global2[_wgslsmith_index_u32(u_input.b.x, 26u)]), !vec3<bool>(global1.b.a, true, global2[_wgslsmith_index_u32(u_input.b.x, 26u)]))), u_input.b, vec2<bool>(true, true), vec4<i32>(~(-2147483647i & -var_0.a.a), var_0.b.c, 0i, u_input.a.x), -2147483647i);
    let var_2 = _wgslsmith_dot_vec2_i32(global1.b.b >> ((_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xw << (vec2<u32>(var_1.b.x, u_input.b.x) % vec2<u32>(32u))) >> (u_input.b.xw % vec2<u32>(32u))) % vec2<u32>(32u)), select(global1.b.b, _wgslsmith_mod_vec2_i32(~var_0.b.b, _wgslsmith_sub_vec2_i32(u_input.a.xw | vec2<i32>(var_0.c.c, -72667i), vec2<i32>(0i, global1.a))), !func_2(var_0.c.a, ~u_input.b.wwy, reverseBits(vec2<u32>(u_input.b.x, 1u))).b.a));
    let var_3 = reverseBits(_wgslsmith_mod_u32(u_input.b.x & _wgslsmith_sub_u32(var_1.b.x, 1u), ~(~0u)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(firstLeadingBit(37163i) <= u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(1462f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-636f - -2289f)) + _wgslsmith_f_op_f32(-1f)))));
    let var_2 = Struct_2(_wgslsmith_add_i32(~6050i, u_input.a.x) >> (~1u % 32u), global1.b);
    global1 = var_2;
    let var_3 = vec2<u32>(_wgslsmith_mod_u32(var_0.b.x >> (~(~0u) % 32u), firstLeadingBit(var_0.b.x)), firstLeadingBit(var_0.b.x) ^ u_input.b.x);
    var var_4 = Struct_1(func_3(Struct_3(Struct_2(1i, var_2.b), var_2.b, func_3(Struct_3(Struct_2(u_input.a.x, Struct_1(true, global1.b.b, 2147483647i)), global1.b, global1.b), select(vec2<u32>(var_0.b.x, var_0.b.x), var_3, global2[_wgslsmith_index_u32(var_3.x, 26u)]), Struct_5(vec3<f32>(-1016f, 826f, -705f), var_0.d.yy, Struct_3(var_2, var_2.b, global1.b), vec4<bool>(global1.b.a, global2[_wgslsmith_index_u32(var_0.b.x, 26u)], false, true)), 0u)), var_0.b.xx, Struct_5(vec3<f32>(-652f, 1064f, -1000f), select(global1.b.b, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 0i), u_input.a.ww), vec2<bool>(true, true)), func_2(false, ~var_0.b.zxy, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(0u, var_0.b.x))), !select(vec4<bool>(var_2.b.a, false, true, var_2.b.a), vec4<bool>(var_2.b.a, true, global1.b.a, false), vec4<bool>(true, false, global1.b.a, false))), u_input.b.x).a, global1.b.b ^ vec2<i32>(~var_0.d.x, select(12134i, global1.b.c, var_0.c.x) | global1.b.c), ~16973i & u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d.x, global1.b.b.x, 14041i, var_2.a), var_0.d))));
}

