struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<f32>(-759f, -1000f, -1265f, 2220f), vec3<i32>(1i, 2147483647i, 10296i), vec2<u32>(64264u, 1u), 1u, false), Struct_1(vec4<f32>(664f, 1000f, 273f, 1281f), vec3<i32>(0i, -19568i, -1i), vec2<u32>(40841u, 73465u), 0u, true), Struct_1(vec4<f32>(2025f, -737f, -557f, 501f), vec3<i32>(-1i, -7627i, 1i), vec2<u32>(3147u, 20054u), 1u, false), Struct_1(vec4<f32>(-1031f, -975f, -869f, 1000f), vec3<i32>(17997i, 2147483647i, 1i), vec2<u32>(0u, 79835u), 41701u, true), Struct_1(vec4<f32>(1659f, -860f, -1063f, 386f), vec3<i32>(66352i, i32(-2147483648), 2147483647i), vec2<u32>(1u, 4294967295u), 4294967295u, false), Struct_1(vec4<f32>(952f, -292f, 360f, 234f), vec3<i32>(-14810i, -16380i, 2147483647i), vec2<u32>(42253u, 96727u), 53687u, false), Struct_1(vec4<f32>(113f, -415f, -1415f, 800f), vec3<i32>(2147483647i, 39738i, 13654i), vec2<u32>(106091u, 4294967295u), 1u, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3.a.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x)));
    global0 = array<Struct_1, 7>();
    let var_1 = vec4<i32>(-_wgslsmith_mod_i32(-21278i, arg_0.c.x), ~(-2147483647i), -13065i, _wgslsmith_sub_i32(arg_3.b.x, -arg_2) << (4294967295u % 32u));
    let var_2 = abs(_wgslsmith_sub_i32(arg_3.b.x, 1i));
    let var_3 = _wgslsmith_add_i32(-29861i, arg_3.b.x);
    return u_input.a.x;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<u32>) -> vec2<i32> {
    var var_0 = min(~abs(4294967295u) << (~_wgslsmith_sub_u32(arg_3.x, u_input.a.x) % 32u), countOneBits(_wgslsmith_dot_vec2_u32(firstTrailingBit(arg_3), select(vec2<u32>(1u, 0u), u_input.a.xz, true)))) ^ (u_input.a.x >> (~11921u % 32u));
    return firstTrailingBit(countOneBits(arg_2.c));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> i32 {
    var var_0 = Struct_2(select(!vec2<bool>(true, arg_1.x < -1569f), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), (-880f != arg_1.x) | true), vec2<bool>(true, true)), true, firstTrailingBit(_wgslsmith_clamp_vec2_i32((vec2<i32>(arg_0, 20099i) >> (u_input.a.xy % vec2<u32>(32u))) << (u_input.a.zw % vec2<u32>(32u)), vec2<i32>(arg_0 >> (52424u % 32u), 1i), -func_3(vec4<f32>(arg_1.x, 307f, arg_1.x, -596f), Struct_2(vec2<bool>(true, false), true, vec2<i32>(arg_0, -27777i), vec4<i32>(-2147483647i, 29312i, arg_0, 0i), vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false), true, vec2<i32>(arg_0, -1i), vec4<i32>(arg_0, 32838i, arg_0, 1i), vec2<bool>(false, true)), u_input.a.xx))), select(select(vec4<i32>(arg_0, -2147483647i, -59394i, arg_0) >> (~u_input.a % vec4<u32>(32u)), vec4<i32>(-47082i, arg_0, arg_0, arg_0) | _wgslsmith_clamp_vec4_i32(vec4<i32>(22665i, -1i, -26073i, 2147483647i), vec4<i32>(arg_0, arg_0, 0i, -4553i), vec4<i32>(arg_0, 2147483647i, 3174i, -1i)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), true), true)), vec4<i32>(-7969i, 0i, arg_0, arg_0), (arg_0 == _wgslsmith_add_i32(arg_0, -50983i)) && any(vec4<bool>(true, false, true, false))), !select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, true, true)), true), true));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 791f, 941f, arg_1.x) * vec4<f32>(-759f, arg_1.x, arg_1.x, 144f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 222f, arg_1.x, arg_1.x)))))), vec3<i32>(-1i) * -vec3<i32>(var_0.d.x, _wgslsmith_dot_vec3_i32(var_0.d.zxx, var_0.d.zyw), -var_0.d.x), u_input.a.yx, min((~u_input.a.x ^ u_input.a.x) << (~(0u << (0u % 32u)) % 32u), 4294967295u | ((u_input.a.x << (4294967295u % 32u)) >> (u_input.a.x % 32u))), !(4294967295u == func_1(Struct_2(var_0.e, var_0.e.x, var_0.c, vec4<i32>(2147483647i, arg_0, arg_0, -23045i), var_0.e), var_0.e, 1i, Struct_1(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -112f), var_0.d.xzz, u_input.a.xw, u_input.a.x, var_0.a.x))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.x)))) * arg_1.x));
    var var_3 = -_wgslsmith_dot_vec4_i32(var_0.d, _wgslsmith_add_vec4_i32(vec4<i32>(abs(2147483647i), -var_0.c.x, -var_1.b.x, arg_0 << (var_1.c.x % 32u)), max(vec4<i32>(49756i, var_0.d.x, 1i, var_0.d.x), -vec4<i32>(68723i, var_0.d.x, 0i, -1i))));
    let var_4 = ~vec4<u32>(1u, u_input.a.x, 81897u, select(~var_1.c.x, abs(var_1.d) | ~23600u, true));
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4755u, u_input.a.x) << (~u_input.a.x % 32u), 7u)];
    var var_1 = vec4<u32>(80914u, u_input.a.x, func_1(Struct_2(!select(vec2<bool>(false, false), vec2<bool>(true, var_0.e), vec2<bool>(false, var_0.e)), all(!vec3<bool>(false, var_0.e, false)), ~(-vec2<i32>(var_0.b.x, var_0.b.x)), vec4<i32>(_wgslsmith_mult_i32(var_0.b.x, 63589i), var_0.b.x, max(var_0.b.x, 0i), abs(var_0.b.x)), vec2<bool>(true, true)), vec2<bool>(true, var_0.e), -1i, global0[_wgslsmith_index_u32(var_0.c.x, 7u)]), reverseBits(var_0.c.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x) - _wgslsmith_f_op_f32(abs(var_0.a.x))));
    global0 = array<Struct_1, 7>();
    var_1 = min(u_input.a, ~vec4<u32>(~func_1(Struct_2(vec2<bool>(false, false), var_0.e, vec2<i32>(-15856i, -1i), vec4<i32>(-32482i, 2147483647i, -2147483647i, -51615i), vec2<bool>(true, true)), vec2<bool>(false, true), var_0.b.x, Struct_1(vec4<f32>(var_0.a.x, 467f, var_0.a.x, var_2), vec3<i32>(-4050i, var_0.b.x, var_0.b.x), var_1.zy, var_1.x, var_0.e)), 48483u, abs(0u), 1137u));
    var var_3 = var_0.a.x;
    let var_4 = func_2(var_0.b.x, vec2<f32>(-203f, var_0.a.x));
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, u_input.a & u_input.a);
}

