struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<u32, 29> = array<u32, 29>(21118u, 4294967295u, 1u, 1u, 0u, 4294967295u, 18070u, 4294967295u, 0u, 28578u, 0u, 62964u, 34937u, 1u, 4294967295u, 0u, 15041u, 68326u, 50810u, 1u, 4294967295u, 0u, 1u, 30319u, 4294967295u, 42282u, 63812u, 1u, 4294967295u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>, arg_3: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_0.a.d)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a.d + arg_0.a.d)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a.d)))))));
    var var_1 = Struct_2(arg_0.a, ~vec4<u32>(arg_2.x, 497u, 9208u, max(arg_2.x ^ 108024u, global0.x)));
    var var_2 = var_1.a.d.zx;
    let var_3 = select(~(max(vec2<u32>(83538u, global1[_wgslsmith_index_u32(25919u, 29u)]), vec2<u32>(46201u, var_1.a.a)) | (vec2<u32>(arg_0.b.x, arg_2.x) << (arg_2 % vec2<u32>(32u)))), vec2<u32>(reverseBits(arg_0.a.a), 22318u), any(!select(vec2<bool>(false, arg_1), arg_0.a.b, var_1.a.b))) | arg_2;
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~var_1.b.x, global1[_wgslsmith_index_u32(1u, 29u)], (4294967295u & global1[_wgslsmith_index_u32(global0.x, 29u)]) & arg_0.b.x), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, var_3.x, global0.x, 1795u), arg_0.b), 55523u, 0u) << (vec3<u32>(41838u, 11855u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2.x, 29u)], 29u)]) % vec3<u32>(32u))), var_1.a.a);
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> u32 {
    global1 = array<u32, 29>();
    var var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(1u, 29u)], 1u, global0.x, 0u), vec4<u32>(24036u, global0.x, global0.x, 0u), vec4<u32>(global1[_wgslsmith_index_u32(57538u, 29u)], global0.x, 1u, global0.x) ^ vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)], 4034u, 1u, global0.x)), vec4<u32>(~65357u, 4294967295u, arg_0, 47620u)), vec4<u32>(18938u | _wgslsmith_div_u32(arg_0, global0.x), 53058u, 1u, ~0u), vec4<u32>(global1[_wgslsmith_index_u32(1u, 29u)], func_3(Struct_2(Struct_1(global0.x, vec2<bool>(false, false), vec4<i32>(-2147483647i, 0i, u_input.a.x, 1i), vec4<f32>(-361f, 1000f, 274f, arg_1.x), u_input.a.x), vec4<u32>(global0.x, global0.x, 0u, 51210u)), false, vec2<u32>(45433u, 4294967295u), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), u_input.a.xzx, u_input.a.ywz)), min(arg_0, ~0u), _wgslsmith_mod_u32(global0.x, 0u))), (~vec4<u32>(1u, 1u, 1u, 1u) << (vec4<u32>(arg_0, 52964u, global1[_wgslsmith_index_u32(0u, 29u)], ~arg_0) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(firstLeadingBit(arg_0), ~arg_0, arg_0 | global1[_wgslsmith_index_u32(1u, 29u)], 4294967295u), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 1u, arg_0, global0.x), vec4<u32>(4294967295u, global0.x, global0.x, 17429u)), ~vec4<u32>(global0.x, global0.x, 0u, global0.x))) % vec4<u32>(32u)), vec4<u32>(1u, 66734u, global0.x, 0u));
    var var_1 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_2 = _wgslsmith_div_vec3_u32(~var_0.zzw, _wgslsmith_add_vec3_u32(vec3<u32>(reverseBits(countOneBits(arg_0)), max(_wgslsmith_mult_u32(77792u, var_0.x), ~1u), ~32219u), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(arg_0, 29u)], 46323u), _wgslsmith_add_vec3_u32(vec3<u32>(global0.x, global1[_wgslsmith_index_u32(16662u, 29u)], 51130u), var_0.xzz), var_0.xyy)));
    let var_3 = Struct_1(arg_0, vec2<bool>(true, true), abs(vec4<i32>(_wgslsmith_mult_i32(1i, -2147483647i), u_input.a.x, firstTrailingBit(u_input.a.x), _wgslsmith_add_i32(2147483647i, u_input.a.x))), vec4<f32>(328f, arg_1.x, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(trunc(arg_1.x))))), ~(-21417i));
    return ~var_2.x;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = vec2<u32>(func_2(~arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(290f, 186f, -1006f, 764f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -559f, -975f, 111f)), vec4<bool>(true, true, true, true))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1164f, 773f, 1000f, 160f)))))), ~_wgslsmith_mult_u32(select(4294967295u, global1[_wgslsmith_index_u32(1u, 29u)], any(vec2<bool>(false, true))), ~4294967295u));
    let var_0 = vec3<u32>(_wgslsmith_div_u32(~_wgslsmith_add_u32(1u, ~global1[_wgslsmith_index_u32(arg_0, 29u)]), 0u), ~arg_0, global0.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-234f + -2275f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(351f - -1540f) * _wgslsmith_f_op_f32(-366f - -796f)), -1000f), 593f));
    global1 = array<u32, 29>();
    var var_2 = var_1.x;
    return Struct_1(abs(select(var_0.x, ~global1[_wgslsmith_index_u32(0u, 29u)], true) >> (_wgslsmith_add_u32(~global0.x, 0u) % 32u)), select(vec2<bool>(true, true), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true)), true), _wgslsmith_sub_vec4_i32(-select(select(u_input.a, u_input.a, vec4<bool>(true, true, true, true)), u_input.a, select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true)), ~(vec4<i32>(-1i) * -vec4<i32>(2147483647i, -1i, u_input.a.x, 49996i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, var_1.x, 864f, -1099f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1374f, var_1.x, 1139f, 1238f), vec4<f32>(168f, 2402f, -2347f, var_1.x))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(572f, 1388f, 1233f, -620f) - vec4<f32>(var_1.x, -989f, 318f, 1717f)), vec4<f32>(var_1.x, var_1.x, -241f, var_1.x))))), firstTrailingBit((u_input.a.x >> (11558u % 32u)) & _wgslsmith_mult_i32(3524i, _wgslsmith_sub_i32(48758i, u_input.a.x))));
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = false;
    var var_1 = Struct_3(select(!select(select(vec3<bool>(arg_0.b.x, true, arg_0.b.x), vec3<bool>(arg_0.b.x, false, false), vec3<bool>(true, arg_0.b.x, true)), !vec3<bool>(true, arg_0.b.x, arg_0.b.x), vec3<bool>(arg_0.b.x, true, arg_0.b.x)), vec3<bool>(true, true, arg_0.b.x), false), arg_0.b.x, all(select(!select(vec4<bool>(arg_0.b.x, true, arg_0.b.x, false), vec4<bool>(false, true, false, false), arg_0.b.x), vec4<bool>(all(vec3<bool>(false, false, arg_0.b.x)), arg_0.b.x, false, arg_0.b.x), _wgslsmith_f_op_f32(677f + arg_0.d.x) == -105f)), Struct_2(arg_0, vec4<u32>(global1[_wgslsmith_index_u32(global0.x << (1u % 32u), 29u)], global1[_wgslsmith_index_u32(arg_0.a, 29u)], _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, global0.x, arg_0.a, arg_0.a), ~vec4<u32>(global1[_wgslsmith_index_u32(0u, 29u)], 1u, 4294967295u, 31634u)), ~4294967295u)));
    var var_2 = func_1(max(~0u, 56936u)).b;
    var var_3 = var_1.d.a.d.x;
    let var_4 = var_1.d;
    return Struct_3(var_1.a, true, _wgslsmith_f_op_f32(round(var_1.d.a.d.x)) == var_1.d.a.d.x, var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(47407u, global1[_wgslsmith_index_u32(13962u, 29u)], global0.x, 22694u), ~(vec4<u32>(23536u, 49705u, 4294967295u, 88721u) ^ vec4<u32>(global0.x, global1[_wgslsmith_index_u32(4294967295u, 29u)], 4294967295u, 1u)))));
    var var_1 = 2822f;
    global1 = array<u32, 29>();
    var var_2 = !var_0.d.a.b.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -615f) + -1000f) - var_0.d.a.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_1(66121u).d.x), _wgslsmith_f_op_f32(var_0.d.a.d.x - _wgslsmith_f_op_f32(1144f + 822f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1203f - 1337f)) - var_0.d.a.d.x))));
}

