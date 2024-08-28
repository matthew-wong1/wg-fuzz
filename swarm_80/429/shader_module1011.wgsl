struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(-1000f, vec3<f32>(1000f, -1900f, 425f), Struct_2(36314i, false, -1093f, -79746i, 33179i)), Struct_3(-652f, vec3<f32>(611f, -539f, -242f), Struct_2(-20957i, false, 209f, i32(-2147483648), 2147483647i)), Struct_3(199f, vec3<f32>(208f, 185f, 440f), Struct_2(1i, true, 877f, 10954i, 7406i)), Struct_3(-793f, vec3<f32>(-1223f, -573f, -320f), Struct_2(i32(-2147483648), false, 1000f, -1i, 2147483647i)), Struct_3(-225f, vec3<f32>(599f, 1137f, -774f), Struct_2(-1i, false, -616f, -1i, -9866i)), Struct_3(-1000f, vec3<f32>(-225f, -1315f, 1580f), Struct_2(-1i, true, -527f, 12438i, -37970i)), Struct_3(1254f, vec3<f32>(499f, -489f, 526f), Struct_2(1815i, true, 341f, -1i, 2147483647i)), Struct_3(1000f, vec3<f32>(-525f, -635f, -623f), Struct_2(0i, false, -1000f, -18409i, 1i)), Struct_3(139f, vec3<f32>(-144f, 162f, 268f), Struct_2(1i, false, 277f, -16585i, 1i)), Struct_3(1000f, vec3<f32>(829f, -770f, 1048f), Struct_2(i32(-2147483648), true, 121f, 2147483647i, -36502i)), Struct_3(-1615f, vec3<f32>(-1159f, 719f, -1320f), Struct_2(-16341i, false, 1775f, 2147483647i, 8630i)), Struct_3(868f, vec3<f32>(-234f, -1155f, 1395f), Struct_2(i32(-2147483648), false, 1000f, -1i, -10452i)), Struct_3(506f, vec3<f32>(-270f, -459f, -148f), Struct_2(i32(-2147483648), true, -115f, 9181i, -1i)), Struct_3(-1423f, vec3<f32>(759f, 282f, -2213f), Struct_2(i32(-2147483648), false, 1667f, -38144i, -1i)), Struct_3(-1846f, vec3<f32>(-829f, 1000f, -1581f), Struct_2(2147483647i, true, 532f, 0i, -36086i)), Struct_3(229f, vec3<f32>(-1000f, 166f, -1292f), Struct_2(1i, true, 1000f, 34263i, -19176i)), Struct_3(-1000f, vec3<f32>(759f, -762f, -109f), Struct_2(0i, true, 203f, 1i, -1i)), Struct_3(2010f, vec3<f32>(865f, 1675f, -232f), Struct_2(-1i, false, 1248f, 14120i, 0i)), Struct_3(-388f, vec3<f32>(480f, 163f, -1000f), Struct_2(0i, true, 314f, -42577i, 15245i)), Struct_3(1173f, vec3<f32>(-663f, -644f, 413f), Struct_2(2147483647i, false, -1067f, 2147483647i, -50164i)));

var<private> global1: Struct_4 = Struct_4(Struct_1(vec2<i32>(i32(-2147483648), 9077i), -841f, 1i), Struct_3(-1010f, vec3<f32>(-2311f, -1000f, 611f), Struct_2(45221i, false, -3005f, -1i, -8858i)), Struct_2(-39144i, false, -947f, 0i, 1i), vec3<bool>(true, false, true), vec4<bool>(true, false, true, true));

var<private> global2: vec2<f32>;

var<private> global3: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec3<f32>) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec2_f32(-arg_2.xy);
    let var_0 = global1.b;
    return global1.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> i32 {
    global0 = array<Struct_3, 20>();
    let var_0 = select(!select(!global1.d.xy, !select(global1.d.xx, vec2<bool>(true, global1.c.b), global1.e.zy), _wgslsmith_f_op_f32(-arg_0.b) <= -737f), global1.d.zz, true);
    var var_1 = ~max(_wgslsmith_div_vec2_u32(abs(vec2<u32>(37616u, 0u)), select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, 4294967295u)), vec2<u32>(4294967295u, u_input.b) >> (vec2<u32>(u_input.b, 85822u) % vec2<u32>(32u)), global1.d.zx)), ~(~vec2<u32>(u_input.b, 0u)));
    global1 = Struct_4(global1.a, global1.b, Struct_2(u_input.a, global1.e.x, global1.c.c, _wgslsmith_dot_vec2_i32((vec2<i32>(arg_1.x, 4334i) & vec2<i32>(arg_1.x, u_input.a)) & _wgslsmith_sub_vec2_i32(arg_1.xz, vec2<i32>(u_input.a, arg_1.x)), _wgslsmith_sub_vec2_i32(~vec2<i32>(-2147483647i, 1i), vec2<i32>(arg_0.c, global1.a.c) | vec2<i32>(8655i, 3831i))), -arg_0.c), vec3<bool>(true, false, global1.b.c.b), !vec4<bool>(var_0.x == true, all(!vec4<bool>(false, var_0.x, global1.b.c.b, var_0.x)), !global1.c.b, any(vec4<bool>(true, false, global1.e.x, global1.c.b))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-143f)) * global1.b.c.c), 170f);
    return -(abs(-40353i) ^ -global1.b.c.a);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> i32 {
    let var_0 = arg_1.b.yx;
    let var_1 = u_input.a | -55499i;
    global0 = array<Struct_3, 20>();
    var var_2 = global1.b;
    var var_3 = max(_wgslsmith_clamp_i32(firstLeadingBit(-16112i), func_3(func_2(vec4<bool>(true, true, var_2.c.b, arg_0.c.b), select(vec2<bool>(false, true), vec2<bool>(true, var_2.c.b), global1.e.zz), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.c, -516f, global1.a.b) - arg_0.b)), -select(vec3<i32>(-1i, -5181i, -24244i), vec3<i32>(-23576i, 1411i, arg_1.c.d), global1.d)), _wgslsmith_sub_i32(~var_1, var_1) << (~14926u % 32u)), global1.a.a.x | var_1);
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(global1.b.c.d, u_input.a, ~_wgslsmith_sub_i32(global1.b.c.d, -2147483647i), func_1(global1.b, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.b, 1000f) - _wgslsmith_f_op_f32(1940f * global1.b.a)), global1.b.b, Struct_2(_wgslsmith_mult_i32(9117i, -1i), true, _wgslsmith_f_op_f32(-global1.c.c), global1.b.c.e, -7188i)), ~(~(~u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-416f, _wgslsmith_f_op_f32(global1.c.c * 1014f)), global1.b.b.yz))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-805f * _wgslsmith_f_op_f32(global2.x * global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -881f))), (_wgslsmith_add_i32(min(-25932i, var_0.x), -16308i) ^ (i32(-1i) * -var_0.x)) >> (0u % 32u));
}

