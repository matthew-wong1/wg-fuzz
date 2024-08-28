struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, 18172i, -1i);

var<private> global2: vec4<bool>;

var<private> global3: bool = false;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -269f) - _wgslsmith_f_op_f32(772f + -686f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -564f)))))), _wgslsmith_mult_u32(~_wgslsmith_sub_u32(53546u, u_input.b), u_input.b) > _wgslsmith_sub_u32(firstLeadingBit(1u), 1u), global2.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * 908f) * _wgslsmith_f_op_f32(round(-959f)))), _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(max(var_0.a, 818f)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-708f)) + 396f), _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1193f - 935f) - _wgslsmith_f_op_f32(442f + 162f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * var_0.a)));
    global3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~reverseBits(~vec2<u32>(u_input.b, 1u)), (vec2<u32>(u_input.b, 39059u) << (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) << (vec2<u32>(1u, u_input.b) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_sub_u32(22384u, _wgslsmith_sub_u32(~9226u, u_input.b)), abs(_wgslsmith_sub_u32(u_input.b, ~u_input.b)))), 8u)];
    var var_2 = var_1.xz;
    var var_3 = ((-max(-1197i, 1i) < global1.x) || false) && false;
    return ~_wgslsmith_mult_i32(global1.x, _wgslsmith_mod_i32(-global1.x << (u_input.b % 32u), -2147483647i));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    global3 = global0[_wgslsmith_index_u32(1u, 8u)];
    let var_0 = ~(-18826i);
    var var_1 = Struct_3(select(!select(vec4<bool>(arg_1.d, global0[_wgslsmith_index_u32(u_input.b, 8u)], global2.x, global0[_wgslsmith_index_u32(u_input.b, 8u)]), vec4<bool>(arg_0.d, false, true, false), any(global2.xw)), select(select(select(vec4<bool>(false, false, true, arg_1.d), vec4<bool>(arg_1.d, arg_1.d, true, true), vec4<bool>(arg_0.c, false, true, arg_0.c)), vec4<bool>(false, false, arg_1.c, true), vec4<bool>(arg_1.d, global0[_wgslsmith_index_u32(u_input.b, 8u)], arg_1.d, true)), vec4<bool>(true, true, !global0[_wgslsmith_index_u32(91905u, 8u)], true), all(select(global2.xzx, global2.zxw, vec3<bool>(false, false, arg_1.d)))), !(func_3() >= ~(-11845i))), vec3<i32>(~min(-13622i, -603i), -222i, _wgslsmith_mod_i32(-34275i, global1.x)), ~(-(global1.zz ^ vec2<i32>(34593i, 0i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-581f, arg_1.a, arg_1.a, arg_0.b))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a, arg_0.a, -111f, arg_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-352f, -843f, 1175f, arg_0.a)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(477f + -2167f), -969f, _wgslsmith_f_op_f32(trunc(arg_1.b)), 1143f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.b, arg_0.b, arg_0.b, arg_1.b), vec4<f32>(-796f, arg_0.a, 606f, arg_1.a))))) - vec4<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1001f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, arg_1.a), _wgslsmith_f_op_f32(-arg_0.a), global0[_wgslsmith_index_u32(~1u, 8u)])), _wgslsmith_f_op_f32(select(arg_1.a, _wgslsmith_f_op_f32(909f + -1014f), select(false, arg_0.d, arg_0.d))))));
    global0 = array<bool, 8>();
    var var_2 = u_input.b >> ((reverseBits(min(u_input.b, min(u_input.b, 41720u))) & 3742u) % 32u);
    return Struct_2(arg_0, (-1036f > _wgslsmith_f_op_f32(round(arg_1.a))) || true, arg_1, ~max(vec2<u32>(1u, u_input.b), _wgslsmith_mod_vec2_u32(max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)), vec2<u32>(u_input.b, 63922u))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3) -> Struct_3 {
    let var_0 = arg_2.e.wwz;
    let var_1 = arg_2.b;
    var var_2 = 0i;
    var var_3 = firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.b) & 1u, ~firstTrailingBit(reverseBits(27697u)), firstTrailingBit(~_wgslsmith_sub_u32(u_input.b, 0u)), u_input.b));
    var var_4 = Struct_1(_wgslsmith_div_f32(2123f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -646f))), -2426f, any(select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 8u)] || arg_2.a.x, any(vec2<bool>(global0[_wgslsmith_index_u32(66621u, 8u)], arg_0.a.c))), global2.zzx, !global2.yzx)), false);
    return Struct_3(vec4<bool>(true, func_2(Struct_1(_wgslsmith_f_op_f32(1000f * arg_2.e.x), _wgslsmith_f_op_f32(-arg_0.c.a), var_4.c, true), func_2(arg_0.c, Struct_1(363f, -356f, arg_2.a.x, global0[_wgslsmith_index_u32(4294967295u, 8u)])).a).a.c, true, !(any(global2.zy) && select(true, global0[_wgslsmith_index_u32(arg_0.d.x, 8u)], false))), abs(reverseBits(abs(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, u_input.c.x, 1i), vec3<i32>(-2147483647i, var_1.x, arg_2.c.x))))), u_input.c.zz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.e - arg_2.d) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.c.b, -783f, 308f, -199f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_2.e, arg_2.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(444f, arg_0.c.a, 2068f, var_4.a)))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(303f, _wgslsmith_f_op_f32(f32(-1f) * -721f), 1092f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_4.a, arg_2.e.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_2.d))), var_4.d)));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec3<u32>, arg_3: vec3<u32>) -> StorageBuffer {
    let var_0 = func_4(func_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_1)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_f_op_f32(arg_1 * arg_1))), global2.x, false), Struct_1(-1094f, 955f, false, !(u_input.b < arg_0))), u_input.a, Struct_3(select(vec4<bool>(false, !global2.x, true, true), !vec4<bool>(false, global2.x, global0[_wgslsmith_index_u32(u_input.b, 8u)], false), true), u_input.d.wwy, _wgslsmith_sub_vec2_i32(u_input.d.xw << (arg_3.xz % vec2<u32>(32u)), vec2<i32>(-2147483647i, -1i)) << (vec2<u32>(_wgslsmith_dot_vec2_u32(arg_2.xy, vec2<u32>(u_input.b, 55906u)), 4294967295u) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -159f, -550f, arg_1)), vec4<f32>(1038f, arg_1, 668f, arg_1)))), vec4<f32>(arg_1, _wgslsmith_div_f32(918f, 1163f), 1f, 187f)));
    global1 = func_4(func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-205f * -562f)), true, global0[_wgslsmith_index_u32(0u, 8u)] && global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, arg_3.x), 8u)]), Struct_1(_wgslsmith_f_op_f32(arg_1 + 886f), arg_1, global2.x, false)), _wgslsmith_clamp_i32(global1.x, var_0.c.x, ~u_input.d.x), Struct_3(vec4<bool>(var_0.a.x, false, select(var_0.a.x, !var_0.a.x, true), !(false & global0[_wgslsmith_index_u32(arg_0, 8u)])), u_input.d.zwx, vec2<i32>(~firstLeadingBit(var_0.b.x), var_0.c.x), var_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(311f, -1418f, -1183f, -1000f)), _wgslsmith_f_op_vec4_f32(var_0.d + var_0.d)) + var_0.d))).b;
    var var_1 = ~10329u == arg_0;
    var var_2 = ~min(arg_0, u_input.b);
    let var_3 = func_2(Struct_1(arg_1, arg_1, global0[_wgslsmith_index_u32(arg_2.x, 8u)], true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.d.x, _wgslsmith_div_f32(-658f, -1000f)))), _wgslsmith_f_op_f32(-1f), true, any(!(!global2.zzy)))).a;
    return StorageBuffer(~(_wgslsmith_dot_vec3_u32(vec3<u32>(73764u, arg_2.x, 0u), vec3<u32>(arg_2.x, arg_0, 43199u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, 0u, arg_3.x), vec3<u32>(0u, arg_2.x, 4294967295u)) % 32u)) >> ((1u << (u_input.b % 32u)) % 32u), u_input.d.wwx, vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(0u, arg_2.x), arg_3.x), ~(~u_input.b ^ _wgslsmith_add_u32(arg_0, arg_2.x)), ~abs(0u), _wgslsmith_dot_vec2_u32(~(arg_3.zx | vec2<u32>(4294967295u, arg_2.x)), ~abs(vec2<u32>(u_input.b, 4294967295u)))), func_4(func_2(func_2(Struct_1(var_3.b, -587f, var_0.a.x, false), Struct_1(var_0.d.x, arg_1, var_3.c, var_3.c)).a, var_3), 3705i, Struct_3(var_0.a, firstTrailingBit(firstLeadingBit(vec3<i32>(-1i, 13834i, u_input.c.x))), ~(~global1.yz), vec4<f32>(650f, var_0.d.x, arg_1, -473f), func_4(func_2(Struct_1(arg_1, arg_1, false, false), var_3), u_input.a, Struct_3(var_0.a, vec3<i32>(-1i, var_0.c.x, global1.x), var_0.b.yx, vec4<f32>(arg_1, -269f, 1560f, -510f), vec4<f32>(arg_1, var_0.d.x, var_3.b, arg_1))).e)).d.yz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x & -u_input.c.x;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_add_u32(~(~0u), _wgslsmith_clamp_u32(~7824u, u_input.b ^ u_input.b, _wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.b, 1u), vec2<u32>(0u, u_input.b)), vec2<u32>(1u, 4294967295u) & vec2<u32>(30861u, u_input.b)))), -572f, max(abs(countOneBits(vec3<u32>(4294967295u, u_input.b, u_input.b))), _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, u_input.b, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(15514u, u_input.b, u_input.b), firstLeadingBit(vec3<u32>(u_input.b, u_input.b, u_input.b))))), ~(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4781u, u_input.b, 4294967295u), vec3<u32>(u_input.b, 0u, 0u), vec3<u32>(1u, u_input.b, 1u)))));
}

