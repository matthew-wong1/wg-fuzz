struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(1353f, -1357f, -1000f), vec3<f32>(1179f, 105f, 915f), vec3<f32>(238f, 546f, -1307f), vec3<f32>(-115f, 1430f, 1000f), vec3<f32>(-527f, -495f, 1000f), vec3<f32>(1340f, 821f, 1094f), vec3<f32>(528f, 153f, 1419f));

var<private> global1: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(-137f, -2272f), vec2<f32>(-644f, 2289f), vec2<f32>(-234f, -144f), vec2<f32>(509f, -962f), vec2<f32>(-625f, -663f), vec2<f32>(-777f, 762f), vec2<f32>(1851f, -367f), vec2<f32>(700f, 243f), vec2<f32>(459f, 697f), vec2<f32>(925f, 1862f), vec2<f32>(-347f, 622f), vec2<f32>(-134f, -591f), vec2<f32>(542f, 172f), vec2<f32>(2177f, 131f), vec2<f32>(222f, -622f), vec2<f32>(602f, 321f), vec2<f32>(-1446f, -974f), vec2<f32>(235f, 432f), vec2<f32>(1370f, 321f), vec2<f32>(545f, 711f), vec2<f32>(-579f, -1711f), vec2<f32>(373f, 468f), vec2<f32>(865f, 1949f), vec2<f32>(1003f, 735f), vec2<f32>(507f, -818f), vec2<f32>(-1373f, 1778f), vec2<f32>(-357f, 1000f), vec2<f32>(-633f, 927f), vec2<f32>(-1211f, -1152f), vec2<f32>(349f, -693f), vec2<f32>(-1903f, -283f));

var<private> global2: i32 = 2218i;

var<private> global3: u32 = 4294967295u;

var<private> global4: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: f32) -> u32 {
    let var_0 = arg_2;
    var var_1 = arg_0;
    global3 = u_input.c;
    let var_2 = _wgslsmith_mod_vec2_i32(max(_wgslsmith_div_vec2_i32(abs(arg_1.xy), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b.zy, vec2<i32>(u_input.d.x, 6798i)), arg_1.yy)), -(vec2<i32>(u_input.a, -12176i) & u_input.d.zw) | arg_1.xx), vec2<i32>(max(arg_1.x, arg_1.x) & (_wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.xx) ^ _wgslsmith_sub_i32(u_input.d.x, 0i)), ~min(~arg_1.x, _wgslsmith_clamp_i32(u_input.d.x, 0i, arg_1.x))));
    return ~4294967295u;
}

fn func_2(arg_0: vec3<bool>) -> vec2<u32> {
    var var_0 = Struct_2(arg_0);
    var var_1 = abs(-(((vec3<i32>(0i, 0i, -5113i) ^ u_input.d.wzz) << (vec3<u32>(65524u, 4294967295u, 0u) % vec3<u32>(32u))) ^ _wgslsmith_mult_vec3_i32(u_input.d.xzw, u_input.b.wxw)));
    let var_2 = all(vec3<bool>(arg_0.x, func_3(Struct_3(arg_0.x, false, Struct_2(arg_0), Struct_2(vec3<bool>(false, arg_0.x, false))), u_input.b.zww, -1135f) < 0u, select(arg_0.x, any(arg_0), var_0.a.x)));
    var var_3 = Struct_3(true, !any(!(!vec4<bool>(var_0.a.x, arg_0.x, false, true))), Struct_2(select(var_0.a, var_0.a, true)), Struct_2(!select(vec3<bool>(var_2, var_0.a.x, var_2), vec3<bool>(false, var_0.a.x, true), !vec3<bool>(false, arg_0.x, var_0.a.x))));
    let var_4 = var_1.x != var_1.x;
    return vec2<u32>(~(~4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c) >> (vec3<u32>(4294967295u, u_input.c, u_input.c) % vec3<u32>(32u)), vec3<u32>(u_input.c, 117607u, u_input.c)) ^ ~vec3<u32>(u_input.c, 16893u, 4294967295u), ~vec3<u32>(5847u ^ u_input.c, u_input.c, ~0u)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_mult_vec2_u32(~func_2(!(!vec3<bool>(arg_0.b.x, true, arg_0.a))), vec2<u32>(reverseBits(1u), ~countOneBits(u_input.c << (4294967295u % 32u))));
    var var_1 = min(66726u, u_input.c);
    global0 = array<vec3<f32>, 7>();
    global3 = ~27501u;
    global3 = 4294967295u;
    return min(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(min(u_input.b.xy >> (vec2<u32>(u_input.c, 0u) % vec2<u32>(32u)), arg_0.d.zz), ~(~vec2<i32>(0i, -41178i))), firstLeadingBit(select(u_input.b.xx, abs(vec2<i32>(2147483647i, u_input.b.x)), true))), ~_wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec2_i32(u_input.d.zy, u_input.d.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(select(vec3<i32>(-u_input.a & -u_input.b.x, func_1(Struct_1(true, vec2<bool>(false, true), 28224u, u_input.d.xww)), i32(-1i) * -24124i), vec3<i32>(max(2147483647i, _wgslsmith_mult_i32(u_input.b.x, u_input.a)), _wgslsmith_clamp_i32(0i, _wgslsmith_add_i32(u_input.b.x, u_input.a), u_input.a), u_input.a), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true))), vec3<i32>(-1i) * -vec3<i32>(~2562i, 0i, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)));
    let var_1 = 0u;
    var var_2 = -var_0;
    var var_3 = Struct_3((10368i > (-2147483647i ^ func_1(Struct_1(true, vec2<bool>(false, true), 38236u, u_input.d.yzx)))) || true, any(vec4<bool>(true, all(vec2<bool>(true, true)), !all(vec4<bool>(true, true, false, true)), true)), Struct_2(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), true & all(vec3<bool>(true, false, true)))), Struct_2(vec3<bool>(select(true, true, all(vec2<bool>(true, false))), true & select(false, true, true), true)));
    global4 = ~(~var_1 << (~_wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, 25646u), u_input.c ^ 1106u, firstLeadingBit(u_input.c)) % 32u));
    global2 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(firstTrailingBit(vec2<u32>(76182u, 1u)) ^ vec2<u32>(51316u, u_input.c))));
}

