struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: array<vec4<i32>, 11>;

var<private> global2: vec2<f32> = vec2<f32>(-547f, -1604f);

var<private> global3: Struct_2 = Struct_2(Struct_1(1i), Struct_1(10696i), Struct_1(i32(-2147483648)), Struct_1(0i), 2147483647i);

var<private> global4: Struct_2 = Struct_2(Struct_1(1i), Struct_1(2147483647i), Struct_1(1i), Struct_1(i32(-2147483648)), 1i);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<u32> {
    let var_0 = vec4<u32>(u_input.a, ~_wgslsmith_sub_u32(11679u, u_input.a ^ 38041u), _wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(u_input.b, 38113u, u_input.b)), _wgslsmith_div_vec3_u32(~vec3<u32>(7328u, 0u, 0u), ~vec3<u32>(u_input.a, 63739u, 13525u)))) >> (_wgslsmith_mod_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.a, 4294967295u, 0u, 0u)), ~(~vec4<u32>(4294967295u, u_input.b, 42511u, 83905u)) >> (~(~vec4<u32>(u_input.a, 12477u, 21107u, 27376u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_1 = (_wgslsmith_mult_vec3_i32(select(vec3<i32>(-44518i, global3.b.a, 0i) & vec3<i32>(-2147483647i, 2133i, global4.c.a), _wgslsmith_mult_vec3_i32(vec3<i32>(global4.d.a, -35228i, global3.b.a), vec3<i32>(global4.e, global4.c.a, 0i)), vec3<bool>(true, true, true)), countOneBits(vec3<i32>(global3.d.a, -38573i, 24321i))) ^ ~abs(-vec3<i32>(global4.e, global3.e, 5617i))) << (vec3<u32>(~59435u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.b, var_0.x)), firstLeadingBit(var_0.wy)), 0u ^ (~47782u << (u_input.b % 32u))) % vec3<u32>(32u));
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    var var_2 = ~vec4<u32>(u_input.a, ~(u_input.b << (min(4294967295u, 0u) % 32u)), reverseBits(firstLeadingBit(u_input.a ^ u_input.a)), 1u);
    return var_2.yzz;
}

fn func_2() -> Struct_2 {
    var var_0 = -(~(vec3<i32>(-7274i, -4710i, 1i) & -vec3<i32>(-8462i, 2147483647i, global3.e)) ^ (~(~vec3<i32>(2147483647i, 8288i, global4.e)) << ((~vec3<u32>(u_input.a, u_input.b, u_input.b) | (vec3<u32>(4294967295u, u_input.b, 4294967295u) << (vec3<u32>(u_input.b, 1u, 28367u) % vec3<u32>(32u)))) % vec3<u32>(32u))));
    global4 = Struct_2(Struct_1(var_0.x), Struct_1(~var_0.x), global4.b, global3.c, abs(i32(-1i) * -39787i));
    let var_1 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, _wgslsmith_f_op_f32(1000f + 279f) >= _wgslsmith_f_op_f32(ceil(-187f)), !all(vec4<bool>(true, true, false, false)), false), vec4<bool>(true, false, all(vec2<bool>(true, true)) || true, !all(vec2<bool>(true, false)))));
    var_0 = _wgslsmith_sub_vec3_i32(-_wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(1401i, global3.a.a, global4.d.a), -vec3<i32>(var_0.x, global4.e, global3.b.a)) | ((vec3<i32>(-44448i, 1i, 0i) & ~vec3<i32>(global3.b.a, global3.b.a, 38979i)) << (vec3<u32>(_wgslsmith_div_u32(4294967295u, u_input.a), 4294967295u, max(4294967295u, u_input.b)) % vec3<u32>(32u))), ~(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(51042i, -34855i, global4.d.a)), vec3<i32>(16132i, global4.a.a, global4.b.a)) & ((vec3<i32>(global4.c.a, 2147483647i, -16615i) ^ vec3<i32>(0i, -37740i, 20249i)) >> (func_3() % vec3<u32>(32u)))));
    var var_2 = var_0.xz;
    return global0[_wgslsmith_index_u32(u_input.a, 9u)];
}

fn func_1(arg_0: vec3<u32>) -> vec2<u32> {
    let var_0 = func_2();
    global1 = array<vec4<i32>, 11>();
    let var_1 = vec3<bool>(!any(vec2<bool>(true, true)), false, select(false, false, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    var var_2 = Struct_2(Struct_1(firstLeadingBit(var_0.c.a)), Struct_1(-(~1i)), var_0.c, global4.d, 1i);
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-289f, _wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(global2.x * global2.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, global2.x, global2.x, global2.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-795f, global2.x, global2.x, 1742f) - vec4<f32>(-1040f, global2.x, global2.x, 840f)))))), Struct_1(min(_wgslsmith_add_i32(-90592i, ~var_2.d.a), -19146i)));
    return abs(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.zz, arg_0.yy), ~arg_0.zz), arg_0.zy) & arg_0.yz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    var var_1 = _wgslsmith_mult_u32(min(u_input.a | u_input.b, ~48681u), _wgslsmith_mod_u32(~(_wgslsmith_add_u32(6738u, 17220u) ^ u_input.b), 0u));
    var var_2 = ~(abs(~(vec2<i32>(global3.d.a, global4.c.a) | vec2<i32>(global3.a.a, 15301i))) >> (_wgslsmith_sub_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.a, 16513u)), func_1(vec3<u32>(u_input.a, u_input.a, u_input.a) & vec3<u32>(4294967295u, 42210u, 49938u))) % vec2<u32>(32u)));
    let var_3 = 4787i;
    var var_4 = reverseBits(func_3().zy);
    var var_5 = -(~global4.e);
    let var_6 = vec4<bool>(_wgslsmith_div_i32(-1i, -22422i) >= global4.d.a, true, !var_0.x, false);
    var var_7 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.a, _wgslsmith_mod_u32(u_input.a, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 59293u), max(vec2<u32>(var_4.x, u_input.b), vec2<u32>(1u, u_input.a))), 34508u, u_input.b))), 9u)];
    let var_8 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global2.x, -1000f, var_0.x || false)))), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(268f - -1000f)), _wgslsmith_f_op_f32(step(1092f, 1491f))), func_2().c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~var_4.x, 45162u), _wgslsmith_add_u32(func_1(firstTrailingBit(vec3<u32>(11317u, var_4.x, var_4.x))).x, u_input.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_8.a) - var_8.a), max(abs(var_7.a.a), 1i >> (1u % 32u)));
}

