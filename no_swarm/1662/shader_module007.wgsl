struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: i32 = -19862i;

var<private> global2: vec4<i32> = vec4<i32>(1i, 52289i, -14781i, 4760i);

var<private> global3: vec3<bool>;

var<private> global4: array<Struct_5, 3> = array<Struct_5, 3>(Struct_5(Struct_4(vec2<f32>(-639f, 539f), vec3<f32>(443f, 199f, 514f), vec2<i32>(24381i, 90884i), true)), Struct_5(Struct_4(vec2<f32>(1129f, -892f), vec3<f32>(-1715f, 401f, 770f), vec2<i32>(-9177i, 28423i), true)), Struct_5(Struct_4(vec2<f32>(316f, 1000f), vec3<f32>(-1534f, 470f, -624f), vec2<i32>(-7681i, 18927i), true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(sign(927f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2)))));
    let var_1 = ~arg_0.x;
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(514f, -1582f) - vec2<f32>(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + 618f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-686f, var_0.x, var_0.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(-2049f, -134f, -2061f), vec3<f32>(arg_2, 580f, 530f)))))), min(vec2<i32>(global2.x, firstLeadingBit(global0.x)) >> ((_wgslsmith_div_vec2_u32(arg_0.zy, vec2<u32>(var_1, 0u)) | _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, arg_0.x), arg_0.xx)) % vec2<u32>(32u)), ~global0.yx), global3.x);
    let var_3 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(countOneBits(6544u), 1u), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(arg_0.x), ~u_input.b), ~_wgslsmith_add_vec2_u32(arg_0.xy, vec2<u32>(arg_0.x, var_1))))), 3u)];
    var var_4 = Struct_3(_wgslsmith_f_op_f32(-arg_2), Struct_2((true || global3.x) && var_3.a.d, _wgslsmith_dot_vec3_i32(u_input.a.wyx, countOneBits(vec3<i32>(var_2.c.x, -32049i, global0.x))), _wgslsmith_f_op_f32(1770f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x * var_0.x))))));
    return var_4.b.c;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) + _wgslsmith_f_op_f32(abs(arg_0.c))) + arg_0.c)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.c.x, 0u, u_input.b), arg_0.b, arg_0.c)))) * arg_0.c));
    var var_1 = Struct_1(arg_1.xyz);
    var var_2 = Struct_1(vec3<bool>(true, !(var_1.a.x | arg_1.x) | false, true));
    global2 = -u_input.a;
    global2 = vec4<i32>(global2.x, select(-abs(-6880i), _wgslsmith_mult_i32(-1i, global0.x ^ -8976i), false) & (u_input.a.x >> (~4294967295u % 32u)), ~firstTrailingBit(~global2.x), reverseBits((-91643i ^ abs(global0.x)) & abs(36042i)));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) + arg_0.c), -1762f));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_2(true, 35875i, -122f), vec4<bool>(global3.x, global3.x, global3.x, global3.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-525f, -898f))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(523f, 1393f)))))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-448f)), _wgslsmith_f_op_f32(func_3(vec3<u32>(64971u, 0u, u_input.b), global0.x, 318f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.c.x, 0u, 1u), global2.x, -178f)))), select(global3.zz, !select(vec2<bool>(false, true), global3.zz, global3.x), firstTrailingBit(global2.x) >= ~u_input.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1637f * -442f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1709f, 721f)), _wgslsmith_f_op_f32(f32(-1f) * -294f))), vec2<i32>(global0.x, i32(-1i) * -75529i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x & -39402i, -1i, global0.x, ~global0.x), u_input.a & ~u_input.a) > 2147483647i);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-402f, var_0.b.x)));
    return Struct_2(var_0.d, abs(81821i), var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_5, 3>();
    var var_0 = ~(~u_input.c.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-297f - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(423f * -984f)))))) + -1895f);
    let var_2 = Struct_3(var_1, func_1());
    global3 = !select(select(select(vec3<bool>(true, global3.x, false), vec3<bool>(true, var_2.b.a, true), !vec3<bool>(global3.x, var_2.b.a, false)), vec3<bool>(true, any(vec2<bool>(var_2.b.a, var_2.b.a)), true), vec3<bool>(true, true, global0.x != 1315i)), vec3<bool>(-21597i == -var_2.b.b, false, !(!global3.x)), var_2.b.a);
    var_0 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec4<u32>(39387u, u_input.b, 37723u, min(37094u, u_input.c.x))), _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(22579u, u_input.c.x), vec2<u32>(u_input.c.x, u_input.b)) >> (vec2<u32>(u_input.b, ~u_input.b) % vec2<u32>(32u)), u_input.c), 3577i);
}

