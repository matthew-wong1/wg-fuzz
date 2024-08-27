struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 30>;

var<private> global1: u32 = 36036u;

var<private> global2: vec4<i32> = vec4<i32>(2949i, i32(-2147483648), 0i, 0i);

var<private> global3: vec4<i32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_add_u32(u_input.b.x, ~4294967295u) >= _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), ~u_input.b.x);
    var_0 = true;
    let var_1 = Struct_2(Struct_1(vec4<bool>(all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)), any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false))), true)));
    var var_2 = -827f;
    var var_3 = _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(~_wgslsmith_clamp_vec4_i32(~vec4<i32>(-2147483647i, 0i, -1i, global2.x), select(u_input.d, u_input.d, false), vec4<i32>(43723i, global3.x, 23814i, global2.x)), abs(vec4<i32>(max(4265i, global2.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, 2147483647i), vec2<i32>(global2.x, 4891i)), _wgslsmith_sub_i32(u_input.d.x, global2.x), global2.x))), vec4<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, global2.x, -2147483647i), global3.zyy), 16689i, _wgslsmith_clamp_i32(global2.x, -22071i, global3.x)), global2.xyy), 2147483647i, global2.x));
    return Struct_2(var_1.a);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_2 {
    global3 = _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(2147483647i & -global2.x, 2147483647i, firstLeadingBit(global3.x << (u_input.b.x % 32u)), reverseBits(firstTrailingBit(global2.x)))), -_wgslsmith_mult_vec4_i32(u_input.c, u_input.d));
    global1 = ~(~u_input.b.x);
    global0 = array<vec2<bool>, 30>();
    global0 = array<vec2<bool>, 30>();
    global1 = abs(abs(67269u));
    return func_2();
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = min(_wgslsmith_mod_vec3_u32(~abs(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~((u_input.b << (u_input.b % vec3<u32>(32u))) & vec3<u32>(40746u, u_input.b.x, 6774u))), vec3<u32>(u_input.b.x, ~_wgslsmith_clamp_u32(~u_input.b.x, abs(u_input.b.x), u_input.b.x), firstTrailingBit(u_input.b.x & 23309u) & select(u_input.b.x, u_input.b.x, true)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.d)));
    var var_3 = Struct_3(func_2(), Struct_2(Struct_1(select(select(arg_0.a.a, arg_0.a.a, false), !vec4<bool>(false, false, arg_2.a.x, arg_2.a.x), arg_0.a.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.c)))) - vec4<f32>(var_2, _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(913f * -465f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1363f * arg_1.d)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_1.d, 205f)))));
    let var_4 = var_0.x;
    return global2.zzw;
}

fn func_4(arg_0: i32, arg_1: vec3<i32>) -> vec4<i32> {
    global3 = u_input.c;
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-619f * _wgslsmith_f_op_f32(f32(-1f) * -856f)), 118f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -565f)), -601f))));
    global3 = -vec4<i32>(1i, 18058i, 9047i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec3_i32(u_input.c.wyy, u_input.c.zwx), arg_1.x), firstTrailingBit(global2.x)));
    global3 = (firstTrailingBit(u_input.d ^ ~u_input.d) >> (firstTrailingBit(~max(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x))) % vec4<u32>(32u))) & (~(-(vec4<i32>(-1i, -5259i, -22445i, u_input.a.x) >> (vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))) >> ((vec4<u32>(_wgslsmith_sub_u32(8082u, u_input.b.x), _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x), ~44033u, firstLeadingBit(0u)) >> (~vec4<u32>(1u, 19248u, u_input.b.x, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = (_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, global3.x, arg_0), arg_0, ~u_input.d.x, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c)), -vec4<i32>(arg_0, global2.x, arg_0, 2147483647i)) ^ _wgslsmith_clamp_i32(~select(67141i, global2.x, false), 1i, 44827i)) >= func_3(Struct_2(Struct_1(vec4<bool>(true, true, true, true))), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, false))), func_1(func_2(), func_2().a.a.yy), vec4<f32>(_wgslsmith_div_f32(var_0.x, 1722f), -1769f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - 333f), _wgslsmith_f_op_f32(-var_0.x))), Struct_1(func_1(func_1(Struct_2(Struct_1(vec4<bool>(false, true, true, false))), vec2<bool>(false, true)), vec2<bool>(true, true)).a.a)).x;
    return -u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_i32(func_4(1i, func_3(func_1(Struct_2(Struct_1(vec4<bool>(true, false, true, true))), vec2<bool>(false, true)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, false, true))), Struct_2(Struct_1(vec4<bool>(true, true, false, true))), vec4<f32>(-2192f, -320f, 317f, 246f), 657f), func_1(Struct_2(Struct_1(vec4<bool>(false, false, true, true))), vec2<bool>(false, true)).a) ^ ~_wgslsmith_sub_vec3_i32(global3.yyx, global3.zww)), vec4<i32>(-(~u_input.c.x) >> (19997u % 32u), func_3(func_2(), Struct_3(func_1(Struct_2(Struct_1(vec4<bool>(false, false, false, true))), vec2<bool>(true, false)), Struct_2(Struct_1(vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-709f, 1166f, -298f, 774f), vec4<f32>(168f, 1269f, -134f, -1000f))), -1440f), Struct_1(vec4<bool>(false, true, true, true))).x, (~global3.x | _wgslsmith_sub_i32(global2.x, -17920i)) | firstTrailingBit(u_input.c.x << (u_input.b.x % 32u)), firstTrailingBit(u_input.a.x)));
    var var_1 = func_2();
    var var_2 = !select(!func_1(func_2(), vec2<bool>(false, false)).a.a.zw, global0[_wgslsmith_index_u32(~62973u, 30u)], global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(15795u, 52718u, 14008u, u_input.b.x)), ~vec4<u32>(0u, 1u, u_input.b.x, u_input.b.x))), 30u)]);
    let var_3 = Struct_1(var_1.a.a);
    var var_4 = func_2();
    global3 = ~abs(u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(u_input.b.x, 0u), u_input.b.zx, !var_3.a.yw), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-616f, -1000f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-699f, 312f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -771f), vec2<f32>(-1093f, -409f), var_3.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(494f, -1097f) - vec2<f32>(-679f, -1000f)))))), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(49851u, 1u, u_input.b.x) | vec3<u32>(1u, 4294967295u, 4294967295u), firstTrailingBit(u_input.b))));
}

