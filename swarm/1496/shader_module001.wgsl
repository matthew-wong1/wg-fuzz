struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
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

var<private> global0: array<i32, 31> = array<i32, 31>(28941i, 9195i, -22968i, i32(-2147483648), -1i, i32(-2147483648), 21593i, -1i, 2540i, 0i, 8338i, -3642i, -67410i, 1868i, 0i, -1i, 1i, 1i, 6745i, 85670i, 2147483647i, 18766i, 2147483647i, -40470i, 28627i, -20051i, i32(-2147483648), i32(-2147483648), 35331i, -2176i, -16401i);

var<private> global1: array<Struct_3, 19>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<f32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-408f - _wgslsmith_f_op_f32(666f * _wgslsmith_f_op_f32(sign(-295f))))));
    let var_1 = Struct_3(Struct_1(vec4<u32>(u_input.a, 88301u, ~u_input.a, ~(4294967295u | u_input.a)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, false, false), arg_0), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, true, true), vec3<bool>(true, arg_0, false))), _wgslsmith_f_op_f32(f32(-1f) * -350f), vec3<bool>(select(!arg_0, u_input.a >= u_input.a, arg_1.x != var_0), !(!arg_0), true)), ~min(countOneBits(vec3<u32>(u_input.a, 10929u, u_input.a) ^ vec3<u32>(u_input.a, 1u, 51308u)), ~vec3<u32>(u_input.a, 46630u, 1u)), ~(~min(global0[_wgslsmith_index_u32(~u_input.a, 31u)], 1i)));
    let var_2 = Struct_1(_wgslsmith_add_vec4_u32(~countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.x, 39454u, var_1.a.a.x, 7398u), vec4<u32>(var_1.a.a.x, 1u, u_input.a, var_1.a.a.x), var_1.a.a)), max(_wgslsmith_sub_vec4_u32(var_1.a.a, vec4<u32>(u_input.a, var_1.b.x, 4294967295u, 9356u)) << (max(vec4<u32>(u_input.a, 72642u, 1u, var_1.a.a.x), var_1.a.a) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_u32(var_1.a.a, vec4<u32>(var_1.b.x, 0u, 0u, 0u)))), vec3<bool>(false, select(any(!var_1.a.b.zx), _wgslsmith_clamp_u32(var_1.b.x, 0u, u_input.a) > 0u, arg_0 | all(vec2<bool>(true, true))), var_1.a.d.x), var_0, !select(var_1.a.d, !(!var_1.a.d), select(var_1.a.b, !vec3<bool>(true, var_1.a.d.x, var_1.a.d.x), var_1.a.b)));
    var var_3 = var_1;
    var var_4 = _wgslsmith_div_f32(var_1.a.c, var_2.c);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_1)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_1))));
}

fn func_2() -> bool {
    let var_0 = global1[_wgslsmith_index_u32(27159u, 19u)];
    global0 = array<i32, 31>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(!(any(var_0.a.d) | true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.c), 848f)), vec4<f32>(1061f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-2081f, -999f))), var_0.a.c, var_0.a.c))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.c * var_0.a.c), var_0.a.c)), _wgslsmith_f_op_f32(var_0.a.c * _wgslsmith_div_f32(var_0.a.c, var_0.a.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c, -259f)))));
    global1 = array<Struct_3, 19>();
    let var_2 = firstTrailingBit(select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, ~u_input.b.x, reverseBits(-2147483647i)), min(abs(vec3<i32>(4253i, -29694i, global0[_wgslsmith_index_u32(39923u, 31u)])), vec3<i32>(u_input.b.x, 0i, var_0.c))), min(firstTrailingBit(u_input.b), _wgslsmith_clamp_vec3_i32(reverseBits(u_input.b), abs(vec3<i32>(2147483647i, 0i, var_0.c)), u_input.b)), select(var_0.a.d.x, var_0.a.b.x, var_0.a.c > var_1.x) && (-1i <= global0[_wgslsmith_index_u32(~u_input.a, 31u)])));
    return true;
}

fn func_1(arg_0: i32) -> vec3<u32> {
    let var_0 = vec3<bool>(select(!(u_input.a >= ~4294967295u), func_2(), true), !(!all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))), true);
    var var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 23759u, 31116u), abs(vec4<u32>(1u, u_input.a, 32216u, u_input.a))), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a)), max(vec4<u32>(u_input.a, 1u, 11963u, u_input.a), vec4<u32>(u_input.a, u_input.a, 31752u, 0u)), vec4<u32>(50675u, u_input.a, u_input.a, 4294967295u))), var_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-828f))))), vec3<bool>(var_0.x, !var_0.x, true)));
    let var_2 = ~(~_wgslsmith_div_vec2_i32(-(~u_input.b.xz), ~u_input.b.xx));
    global1 = array<Struct_3, 19>();
    global1 = array<Struct_3, 19>();
    return _wgslsmith_sub_vec3_u32(min(~_wgslsmith_sub_vec3_u32(min(var_1.a.a.wzw, var_1.a.a.www), vec3<u32>(2706u, 21246u, 0u)), _wgslsmith_div_vec3_u32(var_1.a.a.xwz >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_add_u32(var_1.a.a.x, 0u), 54425u, var_1.a.a.x | 69854u))), _wgslsmith_add_vec3_u32(var_1.a.a.yzx, firstTrailingBit(~(~var_1.a.a.wyw))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 31>();
    let var_0 = -88584i;
    var var_1 = _wgslsmith_dot_vec3_u32(max(firstTrailingBit(~select(vec3<u32>(36840u, 17021u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), false)), reverseBits(~vec3<u32>(u_input.a, 4294967295u, 66950u) >> (abs(vec3<u32>(u_input.a, 32509u, 1u)) % vec3<u32>(32u)))), vec3<u32>(~_wgslsmith_dot_vec3_u32(func_1(u_input.b.x), firstTrailingBit(vec3<u32>(1u, 1u, u_input.a))), max(min(~34414u, _wgslsmith_div_u32(u_input.a, 1u)), 1u), ~0u));
    let var_2 = true;
    var_1 = _wgslsmith_mult_u32(select(u_input.a, ~1u, var_2), ~(~_wgslsmith_mod_u32(19708u, u_input.a))) ^ 0u;
    var var_3 = false || var_2;
    var var_4 = Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(38471u, u_input.a, 16189u, reverseBits(u_input.a)), abs(vec4<u32>(u_input.a, u_input.a, 35904u, 1u))), firstTrailingBit(vec4<u32>(u_input.a, 32785u, 1u, u_input.a) << (~vec4<u32>(u_input.a, 39023u, 1u, 1u) % vec4<u32>(32u))), ~(~(~vec4<u32>(35263u, u_input.a, u_input.a, u_input.a)))), vec3<bool>(var_2, !(true || var_2), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(640f)), _wgslsmith_f_op_f32(f32(-1f) * -2184f), all(vec3<bool>(var_2, true, var_2)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec3<bool>(!var_2, true, true));
    let var_5 = Struct_2(Struct_1(~(~(var_4.a << (var_4.a % vec4<u32>(32u)))), var_4.b, -319f, !var_4.d));
    var var_6 = Struct_3(Struct_1(var_5.a.a, !select(select(vec3<bool>(false, false, false), vec3<bool>(var_4.d.x, true, var_4.d.x), false), vec3<bool>(var_4.d.x, false, var_5.a.d.x), !vec3<bool>(var_2, var_2, var_4.d.x)), var_5.a.c, var_5.a.d), vec3<u32>(var_5.a.a.x, ~_wgslsmith_div_u32(~u_input.a, var_5.a.a.x), _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(106193u, var_4.a.x), var_4.a.x & 1u, min(var_5.a.a.x, 27000u)), 68121u)), abs(var_0));
    let x = u_input.a;
    s_output = StorageBuffer(44573u);
}

