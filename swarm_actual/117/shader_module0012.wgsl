struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1736i, 6985i, 2147483647i, 5230i);

var<private> global1: Struct_1;

var<private> global2: array<f32, 26> = array<f32, 26>(342f, 108f, -1817f, -1247f, 1899f, 1000f, -1000f, -1180f, 1438f, 1398f, 1228f, 942f, -485f, -1000f, 341f, -1758f, -393f, 1030f, -1135f, 154f, -1181f, 159f, -617f, 986f, 418f, -1000f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: i32) -> vec2<u32> {
    global0 = select(vec4<i32>(arg_0, -8465i, arg_0, firstTrailingBit(-29198i)), abs(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, -2147483647i, 1i, 11634i), vec4<i32>(global0.x, global0.x, global1.d.x, arg_0), u_input.a), abs(u_input.a), !global1.c.x)), global1.c) ^ vec4<i32>(~(-_wgslsmith_dot_vec3_i32(global1.d, global1.d)), reverseBits(u_input.a.x | global1.a), arg_0, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, arg_0), min(vec2<i32>(15358i, -23372i), global0.yw)) | -(~(-2147483647i)));
    let var_0 = !(!select(!global1.c.xy, !select(global1.c.zz, global1.c.xy, vec2<bool>(global1.c.x, global1.c.x)), !(4294967295u <= global1.b.x)));
    global2 = array<f32, 26>();
    let var_1 = Struct_1(~reverseBits(arg_0), vec2<u32>(~u_input.b, ~global1.b.x), global1.c, ~(~firstLeadingBit(countOneBits(vec3<i32>(63583i, 48761i, 1i)))));
    global0 = u_input.a;
    return vec2<u32>(4294967295u, u_input.b);
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1356f - -331f));
    let var_1 = Struct_1(i32(-1i) * -56826i, ~(~func_3(-42561i) >> (select(firstLeadingBit(global1.b), reverseBits(global1.b), global1.c.yz) % vec2<u32>(32u))), !(!global1.c), vec3<i32>(min(global0.x, firstTrailingBit(1i)), _wgslsmith_dot_vec4_i32(u_input.a, ~min(vec4<i32>(u_input.a.x, u_input.a.x, global1.d.x, 2147483647i), vec4<i32>(global0.x, -1i, -1i, 18760i))), abs(firstLeadingBit(1i) ^ -global1.a)));
    global0 = select(u_input.a, u_input.a, vec4<bool>(global1.c.x, global1.c.x, true, global1.c.x)) ^ -(-u_input.a << (reverseBits(~vec4<u32>(34426u, u_input.b, u_input.b, global1.b.x)) % vec4<u32>(32u)));
    global1 = var_1;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.b.x, 26u)])));
    return Struct_1(0i, _wgslsmith_add_vec2_u32(min(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_0), ~global1.b), (vec2<u32>(global1.b.x, u_input.b) ^ global1.b) & vec2<u32>(3637u, global1.b.x)), _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, global1.b.x) ^ func_3(59208i), global1.b)), vec4<bool>(!(var_1.c.x == var_1.c.x), !global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.b.x, 26u)])) >= -524f, !(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.b, 26u)], var_0, global1.c.x)) < _wgslsmith_f_op_f32(var_0 - -661f))), _wgslsmith_clamp_vec3_i32(vec3<i32>(abs(_wgslsmith_sub_i32(var_1.a, 1i)), var_1.a, 1520i), vec3<i32>(2147483647i, u_input.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, var_1.b.x, 56524u), vec3<u32>(u_input.b, 0u, 1u)) % 32u), global1.a), global1.d));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = func_2(firstTrailingBit(countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.b.x, 18481u, 61644u), abs(vec3<u32>(global1.b.x, global1.b.x, 3452u))))));
    var var_1 = var_0.d.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 1841f));
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1612f, _wgslsmith_f_op_f32(-541f + -958f)) - -813f), 128f, global2[_wgslsmith_index_u32(global1.b.x | 1u, 26u)], 447f)));
    let var_4 = var_0.c.x;
    return Struct_1(countOneBits(func_2(abs(43064u) | _wgslsmith_dot_vec2_u32(var_0.b, global1.b)).d.x), ~vec2<u32>(32821u, global1.b.x) >> ((vec2<u32>(0u, ~var_0.b.x) & max(firstTrailingBit(vec2<u32>(var_0.b.x, u_input.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_0.b.x), vec2<u32>(1u, u_input.b)))) % vec2<u32>(32u)), vec4<bool>(false, true, true, var_0.c.x), (vec3<i32>(-25397i, -48126i, countOneBits(global1.a)) & -vec3<i32>(1358i, -21344i, 89572i)) & vec3<i32>(reverseBits(-2147483647i), (global0.x << (46308u % 32u)) ^ 1i, ~(-global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 26>();
    let var_0 = select(select(true && !all(global1.c), any(global1.c.wz), !global1.c.x & global1.c.x), !any(global1.c), !global1.c.x);
    var var_1 = func_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(global1.b.x, 26u)], -268f, 150f)))))))));
    let var_2 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_1.d.x, -2147483647i), 59122i, global1.a), global1.b, select(select(global1.c, var_1.c, vec4<bool>(!var_0, true, false, var_1.c.x)), var_1.c, var_1.c), countOneBits(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1010f, global2[_wgslsmith_index_u32(u_input.b, 26u)], global2[_wgslsmith_index_u32(1u, 26u)])))).d));
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_clamp_i32(7758i, 55668i, u_input.a.x), var_3.a, -33189i), -52105i);
}

