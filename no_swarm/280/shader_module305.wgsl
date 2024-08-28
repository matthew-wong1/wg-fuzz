struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(vec2<i32>(-23042i, 0i), vec2<i32>(-1i, 21516i));

var<private> global2: i32 = 2852i;

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

var<private> global4: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(491f, 706f), vec2<f32>(581f, 1181f), vec2<f32>(1944f, -486f), vec2<f32>(484f, -881f), vec2<f32>(779f, 312f), vec2<f32>(733f, 577f), vec2<f32>(766f, 1000f));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec3<bool>) -> f32 {
    var var_0 = u_input.a;
    var var_1 = arg_1;
    var_0 = vec4<u32>(var_0.x, var_0.x, ~1u, _wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(u_input.c, 1u, 4294967295u, var_0.x), u_input.a), firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(34861u, u_input.a.x, var_0.x, var_0.x), u_input.a)))));
    var var_2 = u_input.d;
    global3 = arg_2;
    return arg_1;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> vec3<bool> {
    global2 = _wgslsmith_dot_vec2_i32(max(u_input.d.zw, global0.b), global0.a);
    var var_0 = vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1171f, arg_1.a.x, arg_0)) + _wgslsmith_f_op_f32(trunc(-516f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1i, arg_1.a.x, vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(min(-843f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.a.x)) - 1837f) + _wgslsmith_f_op_f32(-arg_1.a.x)))));
    global3 = vec3<bool>(!arg_0, any(!select(vec3<bool>(arg_0, global3.x, false), !vec3<bool>(false, global3.x, global3.x), !vec3<bool>(global3.x, global3.x, true))), all(!vec3<bool>(850f == var_0.x, any(global3.xz), true)));
    let var_1 = Struct_3(Struct_2(global0.b ^ firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(global1.b.x, -2147483647i), global1.b)), vec2<i32>(1i, _wgslsmith_dot_vec3_i32(u_input.d.xwx, vec3<i32>(-1i, -18831i, -6825i))) >> (_wgslsmith_sub_vec2_u32(abs(u_input.a.ww), ~u_input.b.zx) % vec2<u32>(32u))));
    let var_2 = 20626u;
    return select(!(!(!(!vec3<bool>(true, arg_0, true)))), !select(vec3<bool>(true, true, all(vec2<bool>(arg_0, false))), select(!vec3<bool>(arg_0, false, true), !vec3<bool>(false, false, global3.x), select(vec3<bool>(false, false, false), vec3<bool>(true, global3.x, arg_0), vec3<bool>(global3.x, true, global3.x))), true), select(true | (false & all(vec3<bool>(arg_0, true, global3.x))), !any(vec4<bool>(true, arg_0, arg_0, false)), true));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = select(select(select(vec3<bool>(true, any(global3.zx), false), vec3<bool>(false, !global3.x, arg_1), !select(vec3<bool>(arg_1, true, true), vec3<bool>(global3.x, arg_1, false), vec3<bool>(global3.x, global3.x, global3.x))), vec3<bool>(all(vec2<bool>(global3.x, arg_1)) | any(global3.zy), true, arg_1), !vec3<bool>(select(global3.x, global3.x, global3.x), global3.x, select(global3.x, arg_1, true))), !select(select(select(vec3<bool>(true, false, arg_1), vec3<bool>(global3.x, true, true), arg_1), vec3<bool>(true, true, true), all(vec3<bool>(true, global3.x, global3.x))), vec3<bool>(arg_1, true, false), global3.x), func_2(all(vec2<bool>(global3.x, global3.x)) || any(vec2<bool>(true, false)), Struct_1(global4[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.b.x, 74328u, u_input.b.x), 7u)]), _wgslsmith_clamp_i32(~_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(-2147483647i, arg_3.x, 51243i, global0.b.x)), ~_wgslsmith_mod_i32(-2147483647i, global0.a.x), arg_2.a.x), global0.b.x));
    global4 = array<vec2<f32>, 7>();
    var var_1 = arg_2;
    var var_2 = vec2<i32>((min(~global0.b.x, 1i) & min(-14852i, arg_2.a.x)) << (~max(~0u, _wgslsmith_mod_u32(83601u, 90417u)) % 32u), firstTrailingBit(select(u_input.d.x, 2147483647i, arg_1)));
    global0 = arg_2;
    return Struct_3(arg_2);
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    global4 = array<vec2<f32>, 7>();
    global0 = func_1(select(max(u_input.a.yz & abs(vec2<u32>(4294967295u, arg_1)), u_input.a.ww), vec2<u32>(~(~4294967295u), 19760u), vec2<bool>(all(vec4<bool>(false, global3.x, global3.x, false)), !(40237u < u_input.a.x))), false, func_1(vec2<u32>(~20696u, firstTrailingBit(abs(u_input.a.x))), true, arg_0.a, -vec2<i32>(-u_input.d.x, -u_input.d.x)).a, abs(_wgslsmith_mult_vec2_i32((u_input.d.wz >> (u_input.a.zz % vec2<u32>(32u))) ^ abs(global0.b), vec2<i32>(reverseBits(7465i), 0i)))).a;
    let var_0 = Struct_1(vec2<f32>(2122f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1778f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -328f) + _wgslsmith_div_f32(505f, -2133f))))));
    let var_1 = Struct_1(vec2<f32>(var_0.a.x, _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(573f, -1093f)) * _wgslsmith_f_op_f32(var_0.a.x * 1188f)))));
    var var_2 = vec2<f32>(var_0.a.x, -1554f);
    return Struct_2(-(~arg_0.a.a), u_input.d.zx ^ arg_0.a.a);
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    var var_0 = arg_0.b;
    let var_1 = u_input.d;
    var var_2 = ~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.c, 6566u), abs(vec2<u32>(29322u, u_input.b.x)) << (u_input.b.zx % vec2<u32>(32u))) | (u_input.b.yy >> (_wgslsmith_div_vec2_u32(~(~vec2<u32>(u_input.c, u_input.b.x)), ~u_input.a.yy) % vec2<u32>(32u)));
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(1092f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-133f)))), _wgslsmith_f_op_f32(f32(-1f) * -2000f)));
    var var_4 = ~select(_wgslsmith_mult_vec3_i32(var_1.wzz, u_input.d.wwz), _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-2147483647i, -31986i, -11225i)), vec3<i32>(var_0.x, var_1.x, 1i)) | u_input.d.zwy, vec3<bool>(true, true, any(vec4<bool>(false, global3.x, false, arg_1))));
    return arg_0;
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = countOneBits(50921u);
    let var_1 = global3.x;
    let var_2 = Struct_2(u_input.d.zx | abs(arg_1.b), arg_1.b);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global4[_wgslsmith_index_u32(u_input.b.x, 7u)] * global4[_wgslsmith_index_u32(u_input.c, 7u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-611f, 320f)) - vec2<f32>(-586f, -131f)), any(!vec3<bool>(global3.x, false, global3.x)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(211f, -1000f))), _wgslsmith_f_op_vec2_f32(select(global4[_wgslsmith_index_u32(27816u, 7u)], global4[_wgslsmith_index_u32(~0u, 7u)], global3.xz)))))));
    var var_4 = _wgslsmith_div_f32(var_3.a.x, -1037f);
    return StorageBuffer(func_4(func_1(~(u_input.a.yx & u_input.a.xy), true, var_2, select(vec2<i32>(2147483647i, -36435i), arg_1.a, !vec2<bool>(global3.x, true))), 126430u).b.x, ~_wgslsmith_dot_vec3_u32(u_input.b, u_input.a.xxx ^ u_input.a.yxy));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(abs(-7644i), func_5(func_4(func_1(vec2<u32>(16131u, u_input.b.x), global3.x, Struct_2(vec2<i32>(-40259i, 5598i), vec2<i32>(8563i, -2147483647i)), countOneBits(global0.b)), firstTrailingBit(u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-292f)) + _wgslsmith_f_op_f32(-1000f - -375f)) > _wgslsmith_div_f32(-1219f, 536f)));
}

