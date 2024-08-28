struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 384f;

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global2: array<Struct_1, 23>;

var<private> global3: vec3<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    global3 = !global1.xyx;
    var var_0 = Struct_3(arg_1, Struct_2(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))), arg_1.c, -select(-arg_1.d, ~2147483647i, !arg_1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(231f, 169f, arg_1.b)) + vec3<f32>(arg_1.b, arg_1.b, arg_1.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(569f * arg_1.b), 1645f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, 2259f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-162f, arg_1.b)))))));
    var var_1 = 1i;
    let var_2 = true;
    let var_3 = false;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-728f, -1246f, var_0.b.a)) - var_0.c.x), arg_1.b, !(-532f == var_0.a.b)))) * _wgslsmith_f_op_f32(var_0.b.b + var_0.a.b));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> vec3<f32> {
    let var_0 = Struct_3(Struct_2(((global3.x || arg_0) & any(vec4<bool>(global1.x, arg_0, false, arg_1.x))) | (firstTrailingBit(1i) >= -1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1405f), _wgslsmith_f_op_f32(f32(-1f) * -1360f))) + _wgslsmith_f_op_f32(608f + _wgslsmith_f_op_f32(func_3(Struct_1(u_input.a.x), Struct_2(arg_1.x, -519f, vec4<bool>(true, true, true, false), 1i), global2[_wgslsmith_index_u32(77207u, 23u)])))), !select(vec4<bool>(arg_0, arg_1.x, global3.x, arg_1.x), !vec4<bool>(true, false, global3.x, true), !global3.x), 0i), Struct_2(all(vec2<bool>(any(vec2<bool>(global1.x, false)), global1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(u_input.d, 23u)], Struct_2(false, 1102f, vec4<bool>(arg_0, false, false, false), u_input.a.x), Struct_1(u_input.a.x))))))), !(!(!vec4<bool>(arg_0, false, false, arg_1.x))), _wgslsmith_div_i32(-max(u_input.c, u_input.c), -_wgslsmith_mod_i32(u_input.c, -17087i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1823f, 520f, 554f) * vec3<f32>(868f, 502f, -776f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1703f, 259f, -1421f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1216f, -136f, -819f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1107f, 423f, 856f), vec3<f32>(1000f, -1622f, 530f))))))), vec2<f32>(-167f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(569f)), -1531f))));
    let var_1 = any(!var_0.b.c);
    let var_2 = true;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.c)) * vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.b))), var_0.d.x, _wgslsmith_f_op_f32(floor(954f))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-961f, arg_0.x, arg_0.x) + _wgslsmith_f_op_vec3_f32(func_2(global3.x, global1.zx)))))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(exp2(arg_0.x)), 235f), arg_0.xzw)));
    global2 = array<Struct_1, 23>();
    let var_1 = vec4<i32>(-2147483647i, 2147483647i, abs(min(max(1i, -1i), 1i)), u_input.c);
    let var_2 = Struct_1(firstLeadingBit(select(~(-arg_1.a), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, 5863i), vec3<i32>(-6282i, 16040i, var_1.x)), true)));
    global2 = array<Struct_1, 23>();
    return select(false, !(reverseBits(u_input.b << (13365u % 32u)) >= (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 20049u, u_input.e.x, u_input.e.x), vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.d)) ^ _wgslsmith_sub_u32(u_input.e.x, u_input.e.x))), any(!select(!global3.yz, select(vec2<bool>(true, true), global1.xw, vec2<bool>(global3.x, true)), global3.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.c > u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec4<bool>(true, all(vec4<bool>(any(global3.yx), u_input.b >= u_input.b, global3.x, global1.x)), func_1(vec4<f32>(-611f, -274f, 810f, -643f), Struct_1(1i)), true), u_input.a.x | _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(-2147483647i, u_input.c, 0i)), countOneBits(vec3<i32>(u_input.c, u_input.c, -7979i))), abs(select(vec3<i32>(-2147483647i, -2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, 29875i, u_input.a.x), global1.yxz))));
    global3 = vec3<bool>(var_0.a, any(select(!var_0.c.yyx, var_0.c.zzx, !global3.x && (75351u != u_input.e.x))), true);
    global3 = vec3<bool>(false, any(select(!vec2<bool>(var_0.a, false), select(var_0.c.xy, vec2<bool>(global1.x, false), global1.yx), vec2<bool>(false, false))) | global3.x, global1.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b, -686f, var_0.b)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b, -289f, var_0.b), vec3<f32>(-1238f, 1400f, -1323f), vec3<bool>(global3.x, global3.x, var_0.a))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, 609f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, -231f, -702f), vec3<f32>(var_0.b, var_0.b, 504f))), var_0.a))));
    let var_2 = global2[_wgslsmith_index_u32(1u, 23u)];
    var_0 = Struct_2((firstLeadingBit(var_0.d) ^ ~var_2.a) <= -1i, var_1.x, select(var_0.c, !select(var_0.c, select(var_0.c, vec4<bool>(false, true, true, global3.x), true), !global3.x), select(!select(vec4<bool>(false, global1.x, true, global3.x), var_0.c, true), !(!vec4<bool>(global1.x, var_0.c.x, true, false)), vec4<bool>(var_0.a, 2147483647i >= var_2.a, !global1.x, 2500u <= u_input.e.x))), ~_wgslsmith_div_i32(i32(-1i) * -19027i, var_2.a));
    var var_3 = ~min(vec2<i32>(0i, -34843i), -u_input.a);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x)));
    var var_5 = !global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, u_input.d), firstTrailingBit(2147483647i), u_input.e);
}

