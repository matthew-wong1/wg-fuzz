struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
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

var<private> global0: array<f32, 15>;

var<private> global1: array<i32, 4>;

var<private> global2: Struct_4 = Struct_4(2147483647i, vec2<bool>(false, true), Struct_1(-1352f, false, 0i), false, Struct_3(Struct_2(2147483647i, vec2<f32>(1098f, 793f), vec4<f32>(1640f, -1697f, 1838f, 646f), 1i, 2147483647i), vec4<i32>(1i, -34646i, -6826i, -1i)));

var<private> global3: Struct_1;

var<private> global4: i32 = -17613i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: u32) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e.a.b.x) + -812f)), arg_0.x != _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), abs(vec2<i32>(u_input.b, -44385i))), global2.a);
    let var_1 = Struct_2(1i, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.a + arg_1.a.b.x))), _wgslsmith_f_op_f32(select(308f, 1f, all(vec2<bool>(global2.b.x, false))))), global2.e.a.c, -23682i, ~_wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b.x, global2.e.a.a), vec2<i32>(arg_0.x, -1i)), ~2147483647i), global2.e.b.x));
    let var_2 = global2.e.a;
    global2 = Struct_4(-1i, global2.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(890f)))), var_0.b, firstTrailingBit(_wgslsmith_mult_i32(firstLeadingBit(global1[_wgslsmith_index_u32(arg_2, 4u)]), abs(-2147483647i)))), global3.b, Struct_3(Struct_2(~var_0.c & 1i, vec2<f32>(399f, _wgslsmith_f_op_f32(-global2.e.a.b.x)), var_2.c, var_0.c, var_0.c), global2.e.b));
    global3 = Struct_1(_wgslsmith_f_op_f32(569f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-119f, _wgslsmith_f_op_f32(var_1.c.x * -144f)))), var_0.b, _wgslsmith_add_i32(~(-1i), 1i));
    return vec4<i32>(~arg_0.x, u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(-var_0.c), -(~(-26640i)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, arg_2), u_input.a.xy), 1u), 4u)]), global2.e.b.wzz), _wgslsmith_mult_i32(abs(_wgslsmith_dot_vec2_i32(abs(arg_1.b.wz), -global2.e.b.xz)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 29090i), countOneBits(arg_0)) | 32491i));
}

fn func_2(arg_0: Struct_3) -> Struct_4 {
    global0 = array<f32, 15>();
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec4_i32(max(func_3(arg_0.b.xz, Struct_3(global2.e.a, vec4<i32>(15445i, u_input.b, global3.c, 21107i)), u_input.a.x), _wgslsmith_add_vec4_i32(global2.e.b, arg_0.b)), reverseBits(global2.e.b) | global2.e.b), abs(_wgslsmith_dot_vec3_i32(global2.e.b.wyy, vec3<i32>(arg_0.b.x, -2147483647i, u_input.b))) | min(_wgslsmith_sub_i32(u_input.b, u_input.b), global1[_wgslsmith_index_u32(select(u_input.a.x, 0u, true), 4u)])), vec3<i32>(i32(-1i) * -arg_0.a.a, ~func_3(vec2<i32>(0i, 0i), global2.e, ~u_input.a.x).x, firstTrailingBit(2147483647i)));
    global3 = global2.c;
    global0 = array<f32, 15>();
    let var_1 = arg_0.a.b.x;
    return Struct_4(arg_0.a.a, global2.b, global2.c, any(!select(!vec3<bool>(global2.c.b, false, global2.d), vec3<bool>(global3.b, true, global2.b.x), true)), arg_0);
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = global2.c;
    global2 = func_2(global2.e);
    global2 = func_2(Struct_3(Struct_2(-_wgslsmith_mult_i32(u_input.b, 21688i), vec2<f32>(_wgslsmith_f_op_f32(-global2.c.a), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 15u)], -119f)), vec4<f32>(global2.e.a.c.x, _wgslsmith_div_f32(var_0.a, -1710f), -2910f, 1f), 10971i, 1i), -(vec4<i32>(-24175i, global3.c, 28630i, -2147483647i) & ~vec4<i32>(-22443i, 1i, global3.c, var_0.c))));
    global1 = array<i32, 4>();
    global4 = func_3(reverseBits(_wgslsmith_div_vec2_i32(global2.e.b.xw, vec2<i32>(firstTrailingBit(1i), ~global2.c.c))), global2.e, _wgslsmith_mod_u32(select(_wgslsmith_sub_u32(u_input.a.x, ~111518u), 1u, false), 4294967295u)).x;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(685f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 15>();
    var var_0 = global2.e.b.wwz;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.c.x, 15u)] * _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(global2.e.a.b.x + -880f)))), _wgslsmith_f_op_f32(-global3.a))));
    var var_2 = ~u_input.a.zy;
    let var_3 = Struct_4(3782i, vec2<bool>(true, true || !(!global2.b.x)), global2.c, !any(!select(vec3<bool>(true, global2.d, global3.b), vec3<bool>(global2.d, global2.c.b, false), vec3<bool>(global2.d, false, false))), Struct_3(Struct_2(1i, _wgslsmith_div_vec2_f32(global2.e.a.b, _wgslsmith_f_op_vec2_f32(-global2.e.a.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.e.a.c - vec4<f32>(-1153f, 472f, global0[_wgslsmith_index_u32(0u, 15u)], global3.a))), firstTrailingBit(1i), var_0.x), _wgslsmith_mod_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(0u, 4u)], -52816i, 1i, 2147483647i), vec4<i32>(-51360i, global3.c, -2147483647i, 6546i) ^ vec4<i32>(var_0.x, u_input.b, global3.c, u_input.b)) >> (u_input.c % vec4<u32>(32u))));
    let var_4 = _wgslsmith_mult_u32(var_2.x, var_2.x);
    var var_5 = !var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e.b.wy);
}

