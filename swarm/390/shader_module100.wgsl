struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 22>;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(i32(-2147483648), -8127i, 10561i, 0i), 1525i);

var<private> global2: Struct_4;

var<private> global3: array<Struct_2, 13>;

var<private> global4: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec2<f32>) -> vec4<f32> {
    global3 = array<Struct_2, 13>();
    var var_0 = 515f;
    global1 = Struct_1(~(vec4<i32>(global2.b.x, _wgslsmith_sub_i32(arg_0.b.x, -1i), -u_input.a, arg_2.c.x >> (5173u % 32u)) ^ vec4<i32>(arg_1.b.x, 2147483647i ^ u_input.a, ~u_input.e, -1i)), arg_2.c.x);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-130f, _wgslsmith_f_op_f32(max(arg_3.x, _wgslsmith_f_op_f32(arg_3.x + -517f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3.x))), arg_3.x)));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    var var_0 = Struct_1(global1.a, u_input.a);
    var var_1 = _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.c.x & u_input.d.x, 39632u), abs(select(u_input.b, ~(~37182u), select(global2.c && false, true, true))));
    global0 = array<vec2<bool>, 22>();
    var var_2 = Struct_3(Struct_1(vec4<i32>(~2147483647i, -(~var_0.b), global1.b, u_input.e), countOneBits(~_wgslsmith_sub_i32(-26199i, 30829i))));
    var var_3 = Struct_1(reverseBits(vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(~var_2.a.a.yyw, select(var_0.a.zyy, vec3<i32>(-14234i, -62i, global1.b), false)), -u_input.e, u_input.a)), var_2.a.b);
    return 23725u > u_input.b;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_4(global2.a, select(~_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.a), global1.a.yw, global2.b), global1.a.zy, global2.a.xx) >> (max(~u_input.d.wz, vec2<u32>(34828u ^ u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.c.x, u_input.d.x), u_input.c))) % vec2<u32>(32u)), func_3(!vec2<bool>(global2.c, u_input.e >= global2.b.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, -691f) * -661f));
    var var_2 = true;
    let var_3 = true;
    var var_4 = Struct_1(-global1.a, global1.a.x << (4294967295u % 32u));
    return Struct_1(~_wgslsmith_mod_vec4_i32(global1.a, _wgslsmith_sub_vec4_i32(global1.a, _wgslsmith_mult_vec4_i32(vec4<i32>(-13862i, global2.b.x, arg_1, var_4.b), vec4<i32>(1617i, -2147483647i, -23744i, -40983i)))), firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(68565i, 1i, -1i, var_4.a.x), vec4<i32>(var_0.b.x, arg_1, arg_1, var_4.b)), 1i)));
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> Struct_4 {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>((~38127u ^ u_input.b) & ~u_input.c.x, u_input.c.x, max(76251u, ~(~u_input.d.x))), ~u_input.c.wwz);
    global4 = _wgslsmith_div_i32(-14423i << (~max(u_input.d.x, 4294967295u) % 32u), arg_0.a.b) <= u_input.a;
    let var_1 = global2.a;
    let var_2 = global3[_wgslsmith_index_u32(u_input.b, 13u)];
    let var_3 = arg_0.a;
    return Struct_4(vec3<bool>(u_input.c.x == var_0.x, true != (reverseBits(global1.a.x) != min(u_input.a, arg_0.a.b)), !(all(var_2.b.zxw) || any(var_2.b.wx))), var_3.a.xy >> (_wgslsmith_div_vec2_u32(~vec2<u32>(30254u, u_input.c.x), vec2<u32>(u_input.c.x | 0u, 1u)) % vec2<u32>(32u)), var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_3(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-667f, 333f, -112f, -306f)), 2147483647i, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_1(Struct_4(vec3<bool>(global2.a.x, global2.a.x, false), global2.b, false), Struct_4(global2.a, vec2<i32>(1i, -2147483647i), false), global3[_wgslsmith_index_u32(u_input.b, 13u)], vec2<f32>(1000f, -1000f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1231f, -437f, -783f, 635f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1640f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1189f)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-844f, -610f)), _wgslsmith_f_op_f32(ceil(-461f)))))))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-643f)), -283f)));
    var var_2 = Struct_4(func_4(Struct_3(Struct_1(-global1.a, i32(-1i) * -2997i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1140f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(700f + -493f)))).a, -select(~(~var_0.b), var_0.b, !(!var_0.a.yx)), false);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-521f, 387f, true)), 1f) * 558f), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(round(494f)))), -650f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1065f, 1198f)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(361f, -436f, -1467f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1000f, -1175f), _wgslsmith_f_op_f32(abs(715f)), -362f))));
    let var_4 = _wgslsmith_f_op_f32(sign(1783f));
    var var_5 = func_3(var_0.a.yz);
    var var_6 = vec3<i32>(func_4(Struct_3(Struct_1(select(global1.a, global1.a, false), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b.x, global2.b.x, -2147483647i), global1.a.yyz))), var_4).b.x, 2147483647i, -26764i);
    var var_7 = any(!vec2<bool>(any(func_4(Struct_3(Struct_1(global1.a, 2147483647i)), var_4).a), all(select(vec4<bool>(var_0.a.x, global2.a.x, var_2.c, false), vec4<bool>(var_2.a.x, false, false, var_0.a.x), vec4<bool>(var_2.c, var_2.c, global2.c, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_2.b.x, var_2.b.x));
}

