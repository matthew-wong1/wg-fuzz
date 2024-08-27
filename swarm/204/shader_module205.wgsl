struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: f32,
    d: f32,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 28>;

var<private> global2: vec2<bool>;

var<private> global3: vec4<i32> = vec4<i32>(2147483647i, 0i, 2147483647i, 2147483647i);

var<private> global4: array<Struct_3, 25>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32) -> vec4<bool> {
    let var_0 = global3.x;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -954f);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-564f, arg_0)));
    global1 = array<bool, 28>();
    let var_2 = Struct_1(1u, ~(~vec4<u32>(~21172u, u_input.d.x, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x), u_input.d.x)));
    return !(!(!vec4<bool>(false, global2.x, false, true & global1[_wgslsmith_index_u32(49433u, 28u)])));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> Struct_2 {
    global2 = !arg_1.yy;
    var var_0 = global4[_wgslsmith_index_u32(4647u, 25u)];
    let var_1 = abs(u_input.d.x ^ 11231u);
    var var_2 = Struct_4(global4[_wgslsmith_index_u32(301u, 25u)], 0u, _wgslsmith_div_f32(379f, -1665f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(828f))), -1000f) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1194f, _wgslsmith_f_op_f32(f32(-1f) * -1271f)), -290f, true))), var_0.a);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-437f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.d)) - var_2.d)))));
    return Struct_2(Struct_1(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.a.yy, u_input.d.zx, vec2<u32>(1620u, 4294967295u)), countOneBits(vec2<u32>(8347u, arg_0))), vec4<u32>(var_2.e.x, 1u, 4294967295u, 4294967295u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d, _wgslsmith_f_op_f32(-var_2.d))) * vec2<f32>(_wgslsmith_f_op_f32(var_2.c - _wgslsmith_div_f32(var_3, var_2.d)), 529f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d * var_3) - _wgslsmith_f_op_f32(exp2(var_2.c))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.c))), _wgslsmith_f_op_f32(-826f + _wgslsmith_f_op_f32(var_3 - 200f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, var_2.d, var_3) * vec3<f32>(1076f, -924f, -918f))) * vec3<f32>(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(min(var_2.d, var_2.c)), var_3)), arg_1.zzy)), 0u, vec4<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(-var_2.c), 2236f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -929f) * _wgslsmith_div_f32(var_2.d, var_2.d)))));
}

fn func_4(arg_0: Struct_2) -> vec4<i32> {
    global0 = 1000f;
    var var_0 = arg_0.c;
    global0 = func_3(_wgslsmith_sub_u32(_wgslsmith_mult_u32((arg_0.d | 40078u) & countOneBits(4294967295u), ~u_input.d.x), arg_0.d), func_2(_wgslsmith_f_op_f32(f32(-1f) * -670f))).b.x;
    var var_1 = max(vec4<i32>(-_wgslsmith_dot_vec4_i32(~u_input.a, vec4<i32>(-4716i, -42023i, 27877i, -73381i) & u_input.a), u_input.b, u_input.c, global3.x << (reverseBits(_wgslsmith_clamp_u32(1u, u_input.d.x, arg_0.d)) % 32u)), vec4<i32>(_wgslsmith_sub_i32(~u_input.c, u_input.a.x >> (54050u % 32u)) >> (arg_0.a.b.x % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global3.x, global3.x, u_input.b, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(global3.x, global3.x, u_input.e, 0i), vec4<i32>(u_input.e, global3.x, -23360i, 45165i))), max(~vec4<i32>(u_input.a.x, u_input.e, 1i, -1i), ~u_input.a)), -u_input.b, global3.x));
    let var_2 = ~_wgslsmith_dot_vec3_u32(arg_0.a.b.xzx, max(select(u_input.d.zzw, _wgslsmith_mod_vec3_u32(arg_0.a.b.wzz, arg_0.a.b.xww), vec3<bool>(global1[_wgslsmith_index_u32(72770u, 28u)], global2.x, true)), vec3<u32>(35450u, 1u, arg_0.a.b.x)));
    return vec4<i32>(i32(-1i) * -1171i, global3.x, 35595i, firstTrailingBit(var_1.x));
}

fn func_1() -> Struct_1 {
    global2 = vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 28u)], any(!(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 28u)]))));
    var var_0 = func_4(func_3(1u, select(vec4<bool>(true, any(vec2<bool>(global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(u_input.d.x, 28u)])), u_input.d.x >= 16945u, global2.x), func_2(_wgslsmith_f_op_f32(-1272f * 1845f)), func_2(120f))));
    var var_1 = 12210u;
    global2 = !select(vec2<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(13618u, 28u)], global2.x, global1[_wgslsmith_index_u32(u_input.d.x, 28u)], false)) && global2.x, false), !func_2(_wgslsmith_f_op_f32(max(362f, 142f))).yx, global2.x);
    var_0 = abs(vec4<i32>(_wgslsmith_sub_i32(2147483647i, var_0.x), _wgslsmith_add_i32(var_0.x, u_input.a.x << (27839u % 32u)), global3.x, var_0.x | _wgslsmith_mod_i32(u_input.c, u_input.e))) & vec4<i32>(_wgslsmith_div_i32(global3.x, ~global3.x >> (~0u % 32u)), ~var_0.x, min(~_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), _wgslsmith_mod_i32(~var_0.x, 1i)), -global3.x);
    return Struct_1(u_input.d.x, u_input.d);
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec4<i32>(70372i, -(~firstTrailingBit(-2147483647i)), u_input.e, _wgslsmith_add_i32(global3.x, -_wgslsmith_sub_i32(-87247i, 0i)) ^ 0i);
    var var_1 = !vec4<bool>(true, true, false, !global1[_wgslsmith_index_u32(4294967295u, 28u)]);
    let var_2 = -var_0.xzy;
    global2 = !func_2(_wgslsmith_f_op_f32(-func_3(33509u & u_input.d.x, vec4<bool>(var_1.x, global1[_wgslsmith_index_u32(arg_2.b.x, 28u)], var_1.x, false)).b.x)).zy;
    var var_3 = Struct_5(arg_2, Struct_4(global4[_wgslsmith_index_u32(1u, 25u)], max(1u, arg_0) ^ ~(arg_2.a ^ u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(sign(-508f)), arg_2.b.ywz), func_3(countOneBits(u_input.d.x), vec4<bool>(func_2(_wgslsmith_f_op_f32(round(arg_1))).x, true, true, true)));
    return Struct_1(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(26210u, arg_0, 1746u), firstTrailingBit(arg_2.b.zyw))), ~(~select(vec4<u32>(32196u, 0u, 2082u, 90368u), ~vec4<u32>(arg_0, 1u, arg_2.b.x, 50731u), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 404f;
    var var_0 = func_5(~u_input.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -876f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1330f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(-383f, 112f, false)))))), func_1());
    global2 = select(select(select(!select(vec2<bool>(true, global2.x), vec2<bool>(false, true), true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global2.x), vec2<bool>(global2.x, global1[_wgslsmith_index_u32(30036u, 28u)])), vec2<bool>(false, true)), !vec2<bool>(global2.x, func_2(-1000f).x), !(!global1[_wgslsmith_index_u32(4568u, 28u)] & (var_0.a >= var_0.a))), vec2<bool>(true, true), (min(firstLeadingBit(14898u), firstTrailingBit(var_0.a)) | firstLeadingBit(1u)) <= (_wgslsmith_sub_u32(4294967295u, 1824u) & reverseBits(_wgslsmith_add_u32(0u, var_0.a))));
    var var_1 = func_3(1u, !(!func_2(-109f)));
    global3 = vec4<i32>(u_input.b >> (_wgslsmith_mod_u32(abs(41397u), 1u) % 32u), -abs(_wgslsmith_sub_i32(~global3.x, -17095i ^ global3.x)), ~u_input.e, i32(-1i) * -12626i);
    let var_2 = global4[_wgslsmith_index_u32(0u, 25u)];
    var var_3 = var_1.e;
    let x = u_input.a;
    s_output = StorageBuffer(~min(~_wgslsmith_add_u32(4294967295u, u_input.d.x), ~var_0.b.x));
}

