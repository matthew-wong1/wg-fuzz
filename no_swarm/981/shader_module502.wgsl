struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), -1i, -1i, 6289i);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    var var_0 = u_input.b.x >> ((_wgslsmith_dot_vec2_u32(reverseBits(select(vec2<u32>(22213u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.b.x), false)), vec2<u32>(4294967295u, 4294967295u) ^ ~u_input.a.yx) | min(u_input.a.x, ~firstTrailingBit(u_input.b.x))) % 32u);
    let var_1 = _wgslsmith_add_i32(~(~global0.x), -(global0.x ^ -_wgslsmith_mod_i32(global0.x, -6781i)));
    let var_2 = Struct_3(vec2<i32>(var_1, -2147483647i) & (global0.yw & _wgslsmith_div_vec2_i32(~vec2<i32>(global0.x, -1i), ~global0.ww)), select(vec4<bool>(all(vec4<bool>(true, false, false, false)) || any(vec3<bool>(false, true, false)), all(vec4<bool>(false, false, true, true)), true, firstTrailingBit(u_input.b.x) < u_input.a.x), !vec4<bool>(var_1 != global0.x, true, true, true), true), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(742f)) + 697f), 1289f))));
    var_0 = u_input.b.x;
    var var_3 = var_2.a.x;
    return _wgslsmith_f_op_f32(var_2.c.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x - var_2.c.x))) * -461f));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec2<bool>) -> vec4<i32> {
    global0 = vec4<i32>(select(arg_0, arg_1, arg_2.x), min(arg_0, 32265i), global0.x, firstLeadingBit(global0.x));
    var var_0 = _wgslsmith_f_op_f32(func_3());
    return (~(vec4<i32>(-1i) * -vec4<i32>(global0.x, -1i, 1i, -1i)) >> ((_wgslsmith_clamp_vec4_u32(select(u_input.a, u_input.a, vec4<bool>(false, true, arg_2.x, arg_2.x)), u_input.a ^ vec4<u32>(26766u, u_input.a.x, u_input.b.x, u_input.b.x), ~u_input.a) & ~vec4<u32>(33873u, u_input.b.x, 71840u, u_input.b.x)) % vec4<u32>(32u))) & vec4<i32>(~arg_1, 1i, arg_0, -84275i);
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<bool>) -> vec4<i32> {
    global0 = select(vec4<i32>(global0.x, global0.x, countOneBits(global0.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(30593u, 1u, u_input.b.x, 44916u), u_input.a) % 32u), global0.x) | _wgslsmith_clamp_vec4_i32(min(countOneBits(vec4<i32>(-24413i, -53042i, global0.x, global0.x)), ~vec4<i32>(0i, global0.x, 2147483647i, 55181i)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(global0.x, global0.x, global0.x, 2147483647i), func_2(global0.x, global0.x, arg_2), ~vec4<i32>(0i, -11444i, global0.x, global0.x)), vec4<i32>(global0.x, 1i, global0.x, global0.x)), _wgslsmith_clamp_vec4_i32(~select(vec4<i32>(global0.x, -42853i, global0.x, global0.x), vec4<i32>(global0.x, -52841i, 43800i, global0.x), select(vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), vec4<bool>(false, arg_2.x, false, true), vec4<bool>(true, arg_2.x, arg_2.x, false))), vec4<i32>(global0.x, global0.x, global0.x, countOneBits(global0.x)), ~abs(~vec4<i32>(global0.x, -874i, global0.x, global0.x))), !(!vec4<bool>(!arg_2.x, arg_2.x, !arg_2.x, any(arg_2))));
    global0 = ~(~abs(vec4<i32>(global0.x | -1i, global0.x, global0.x, -33553i)));
    let var_0 = -global0.x;
    global0 = ~vec4<i32>(max(select(~global0.x, i32(-1i) * -1i, all(arg_2)), countOneBits(global0.x) >> (~u_input.b.x % 32u)), 1i, global0.x >> (4294967295u % 32u), select(_wgslsmith_mult_i32(global0.x, abs(var_0)), min(-45263i ^ global0.x, var_0), arg_2.x));
    let var_1 = ~(~19591u);
    return select(-vec4<i32>(12541i, var_0, -11382i, 2147483647i) >> (~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(global0.x, 46889i, global0.x, 0i)), select(vec4<i32>(var_0, var_0, global0.x, -16965i), vec4<i32>(global0.x, global0.x, var_0, var_0), false)) | ((vec4<i32>(-6542i, -2147483647i, 849i, 1i) & vec4<i32>(-60570i, -16534i, global0.x, global0.x)) ^ ~vec4<i32>(global0.x, var_0, global0.x, 50477i)), select(vec4<bool>(false, any(vec3<bool>(true, arg_2.x, arg_2.x)), true, !arg_2.x), !vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), select(vec4<bool>(true, arg_2.x, arg_2.x, true), !vec4<bool>(false, arg_2.x, true, arg_2.x), any(vec4<bool>(true, false, arg_2.x, arg_2.x))))) ^ vec4<i32>(-45343i, global0.x, 3839i, firstTrailingBit(countOneBits(global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_mod_vec2_i32(global0.xz, _wgslsmith_sub_vec2_i32(vec2<i32>(firstTrailingBit(global0.x), _wgslsmith_div_i32(global0.x, 1i)), vec2<i32>(global0.x, reverseBits(global0.x)))), select(select(vec4<bool>(any(vec2<bool>(true, true)), false, true, all(vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(all(vec2<bool>(true, true)), select(false, true, false) && true, false, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1245f + 1237f), -392f)) + vec2<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-201f * 1156f))))));
    global0 = _wgslsmith_mult_vec4_i32(vec4<i32>(-_wgslsmith_add_i32(1i, var_0.a.x), _wgslsmith_sub_i32(-41035i, -reverseBits(5278i)), var_0.a.x, var_0.a.x), -func_1(var_0.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, 921f)) * vec3<f32>(-939f, var_0.c.x, var_0.c.x)), vec2<bool>(true, var_0.b.x)));
    var var_1 = _wgslsmith_f_op_f32(-var_0.c.x);
    var var_2 = Struct_2(-_wgslsmith_clamp_vec3_i32((global0.xyz ^ global0.zzw) ^ max(global0.xwz, global0.xxy), global0.zwx, abs(global0.zwz) ^ _wgslsmith_sub_vec3_i32(global0.yzw, vec3<i32>(global0.x, 9092i, 53408i))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x - 775f), _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x), _wgslsmith_f_op_f32(round(var_0.c.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x) + vec3<f32>(var_0.c.x, -246f, var_0.c.x)))))), vec3<f32>(_wgslsmith_f_op_f32(step(var_0.c.x, var_0.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(866f - -817f) * _wgslsmith_f_op_f32(1000f - 356f)))));
    var_2 = Struct_2(vec3<i32>(-1i) * -(abs(global0.www) ^ vec3<i32>(var_0.a.x, var_0.a.x, 1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.b + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(var_2.b, var_2.b, vec3<bool>(false, var_0.b.x, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(361f, var_2.b.x, 1572f)), !var_0.b.zxw)))));
    var_0 = Struct_3(-firstLeadingBit(vec2<i32>(~global0.x, global0.x)), !(!select(var_0.b, select(vec4<bool>(false, true, var_0.b.x, var_0.b.x), var_0.b, var_0.b), var_0.b)), _wgslsmith_f_op_vec2_f32(min(var_2.b.xx, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.b.x, -1858f))))));
    let var_3 = vec3<bool>(!var_0.b.x, true, select(true, all(select(vec2<bool>(var_0.b.x, var_0.b.x), select(var_0.b.zy, var_0.b.xy, var_0.b.x), var_0.b.yz)), !any(select(vec3<bool>(var_0.b.x, false, var_0.b.x), vec3<bool>(true, false, var_0.b.x), var_0.b.zxy))));
    var var_4 = Struct_1(~var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), global0.x);
}

