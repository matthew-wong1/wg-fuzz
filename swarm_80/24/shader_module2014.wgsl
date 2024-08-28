struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 27>;

var<private> global2: i32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> vec3<u32> {
    var var_0 = -2147483647i;
    global0 = u_input.d.x << (~(~abs(_wgslsmith_add_u32(arg_0.a, 0u))) % 32u);
    global2 = -(~13940i);
    global0 = u_input.a;
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(8160u, 27u)]), select(!arg_0.b, vec2<bool>(any(vec3<bool>(arg_0.b.x, false, arg_0.b.x)), arg_0.b.x), any(select(vec2<bool>(true, true), select(arg_0.b, arg_0.b, arg_0.b.x), false))), vec3<i32>(~_wgslsmith_clamp_i32(2147483647i | u_input.d.x, -u_input.a, -u_input.a), min(2147483647i, 76661i), -u_input.d.x), -1881f);
    return u_input.c.zyy;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_4 {
    global1 = array<f32, 27>();
    global2 = -u_input.a;
    let var_0 = Struct_2(Struct_1(_wgslsmith_add_vec3_u32(u_input.c.wyz, vec3<u32>(arg_1.a.x, arg_1.a.x & 0u, abs(4294967295u)))), Struct_1(~u_input.b));
    var var_1 = arg_1;
    var var_2 = Struct_2(Struct_1(func_3(Struct_4(4294967295u, vec2<bool>(false, true)), Struct_3(var_1.a, var_1.b, -1362f, vec3<f32>(arg_1.c, 1000f, 639f))) | vec3<u32>(u_input.c.x, u_input.c.x, var_1.a.x)), var_0.a);
    return Struct_4(_wgslsmith_clamp_u32(1u, 1u, func_3(Struct_4(var_1.a.x, vec2<bool>(true, true)), Struct_3(var_1.a, vec4<f32>(967f, -2202f, global1[_wgslsmith_index_u32(var_1.a.x, 27u)], arg_1.b.x), -308f, vec3<f32>(-1386f, arg_1.c, 1199f))).x << ((3149u >> (u_input.b.x % 32u)) % 32u)), select(vec2<bool>(all(vec4<bool>(true, true, true, true)), true), vec2<bool>((u_input.b.x >> (var_0.a.a.x % 32u)) <= ~var_1.a.x, !any(vec3<bool>(false, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
}

fn func_1(arg_0: Struct_5) -> Struct_4 {
    let var_0 = true;
    var var_1 = arg_0.c.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1536f + global1[_wgslsmith_index_u32(0u, 27u)]))), _wgslsmith_f_op_f32(-1000f + global1[_wgslsmith_index_u32(1u, 27u)]))), _wgslsmith_f_op_f32(f32(-1f) * -854f)));
    var var_3 = -828f;
    let var_4 = Struct_5(var_2.x, arg_0.b, vec3<i32>(u_input.d.x, arg_0.c.x, i32(-1i) * -(~(-1i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, arg_0.d) * _wgslsmith_f_op_f32(select(arg_0.d, 1000f, true)))))));
    return func_2(var_2.xy, Struct_3(~(~vec2<u32>(0u, u_input.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-881f, var_4.d, arg_0.d, var_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, 1000f, 354f, global1[_wgslsmith_index_u32(u_input.b.x, 27u)]))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-935f, -295f, 1953f, 556f) * vec4<f32>(var_4.a, 1172f, -794f, global1[_wgslsmith_index_u32(0u, 27u)]))))), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(abs(~u_input.c.x), 27u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(630f + global1[_wgslsmith_index_u32(u_input.c.x, 27u)]) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a, -3072f, global1[_wgslsmith_index_u32(u_input.c.x, 27u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(177f, arg_0.d, -671f)))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = ~(~u_input.d.x) < abs(_wgslsmith_add_i32(0i, -1i | -arg_2.x));
    let var_1 = Struct_3(vec2<u32>(u_input.b.x, _wgslsmith_mod_u32(arg_1.a, ~arg_0.a & arg_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(-1000f, 389f), _wgslsmith_div_f32(-165f, global1[_wgslsmith_index_u32(56881u, 27u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.a, 27u)] + global1[_wgslsmith_index_u32(8745u, 27u)]), _wgslsmith_f_op_f32(f32(-1f) * -1612f))))), -1486f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(643f, -566f, 841f)))))))));
    let var_2 = firstLeadingBit(vec4<i32>(82571i, ~arg_2.x, ~arg_2.x, arg_2.x) << (vec4<u32>(~max(arg_0.a, 4294967295u), _wgslsmith_sub_u32(2366u, arg_1.a), 6285u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(21918u, 1705u), 4294967295u)) % vec4<u32>(32u)));
    var var_3 = Struct_1(~u_input.b);
    global1 = array<f32, 27>();
    return Struct_2(Struct_1(~select(vec3<u32>(var_1.a.x, 4294967295u, 57628u), vec3<u32>(58799u, u_input.c.x, 0u), var_0) ^ countOneBits(firstTrailingBit(u_input.c.zwx))), Struct_1(~(~var_3.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(Struct_5(495f, vec2<bool>(true, true), vec3<i32>(-1i, u_input.a | u_input.d.x, -1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(25517u, 27u)] * global1[_wgslsmith_index_u32(4294967295u, 27u)]), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], 438f)))), func_1(Struct_5(-1324f, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), abs(u_input.d), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(121002u, 27u)], global1[_wgslsmith_index_u32(u_input.c.x, 27u)]))))), u_input.d.xx);
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b.x, 0u, var_0.b.a.x), ~u_input.c)), ~u_input.c), u_input.c);
    var var_2 = u_input.a;
    var var_3 = reverseBits(func_3(Struct_4(~38121u, vec2<bool>(true, false)), Struct_3(var_0.b.a.xy >> (vec2<u32>(25834u, u_input.c.x) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 27u)], -517f, 279f, global1[_wgslsmith_index_u32(u_input.c.x, 27u)]) * vec4<f32>(-1000f, 1424f, global1[_wgslsmith_index_u32(u_input.c.x, 27u)], -2092f)), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(4294967295u, 27u)], 245f, true)), vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], -516f, 2895f))).x) | u_input.c.x;
    let var_4 = 0i >> (abs(u_input.b.x) % 32u);
    global2 = -76180i;
    var_3 = select(~abs(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.c.x), ~var_0.a.a.x)), ~1u, true);
    var var_5 = func_4(func_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1106f, global1[_wgslsmith_index_u32(95914u, 27u)]))))), Struct_3(u_input.c.yy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(974f, -1423f, 200f, -153f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 27u)])), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 27u)], global1[_wgslsmith_index_u32(u_input.b.x, 27u)], global1[_wgslsmith_index_u32(u_input.c.x, 27u)]), vec3<f32>(global1[_wgslsmith_index_u32(39028u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)], 1285f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-515f, global1[_wgslsmith_index_u32(1570u, 27u)], -1623f)))))), Struct_4(0u, !select(func_2(vec2<f32>(global1[_wgslsmith_index_u32(39573u, 27u)], global1[_wgslsmith_index_u32(u_input.c.x, 27u)]), Struct_3(var_0.a.a.zx, vec4<f32>(global1[_wgslsmith_index_u32(var_0.a.a.x, 27u)], 1208f, 2651f, global1[_wgslsmith_index_u32(46799u, 27u)]), -270f, vec3<f32>(global1[_wgslsmith_index_u32(23904u, 27u)], global1[_wgslsmith_index_u32(12283u, 27u)], 1059f))).b, func_2(vec2<f32>(-1070f, global1[_wgslsmith_index_u32(14047u, 27u)]), Struct_3(vec2<u32>(var_0.a.a.x, 0u), vec4<f32>(global1[_wgslsmith_index_u32(41014u, 27u)], global1[_wgslsmith_index_u32(var_0.a.a.x, 27u)], global1[_wgslsmith_index_u32(var_0.a.a.x, 27u)], global1[_wgslsmith_index_u32(u_input.b.x, 27u)]), 678f, vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], 959f, global1[_wgslsmith_index_u32(87302u, 27u)]))).b, vec2<bool>(true, true))), vec2<i32>(~firstLeadingBit(_wgslsmith_mult_i32(var_4, 59279i)), ~_wgslsmith_mod_i32(u_input.d.x, 1i))).a;
    global0 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(0u) << (func_4(func_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(49748u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)]))), Struct_3(vec2<u32>(46220u, u_input.b.x), vec4<f32>(global1[_wgslsmith_index_u32(26208u, 27u)], 767f, -1209f, global1[_wgslsmith_index_u32(1u, 27u)]), global1[_wgslsmith_index_u32(u_input.c.x, 27u)], vec3<f32>(2203f, global1[_wgslsmith_index_u32(13626u, 27u)], global1[_wgslsmith_index_u32(var_0.a.a.x, 27u)]))), func_1(Struct_5(global1[_wgslsmith_index_u32(var_0.b.a.x, 27u)], vec2<bool>(false, true), vec3<i32>(0i, u_input.d.x, u_input.a), global1[_wgslsmith_index_u32(1u, 27u)])), countOneBits(min(vec2<i32>(-33439i, 430i), vec2<i32>(u_input.a, -2828i)))).a.a.x % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-541f + -1645f) * 183f), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.c.x), 27u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.b.a.x, 27u)])), _wgslsmith_f_op_f32(-1150f + _wgslsmith_f_op_f32(trunc(1085f))))), ~21419i, reverseBits(max(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 2147483647i, var_4, -2147483647i), max(vec4<i32>(var_4, 1i, 2147483647i, var_4), vec4<i32>(u_input.a, -35993i, var_4, -46005i))), firstTrailingBit(reverseBits(vec4<i32>(30587i, u_input.d.x, var_4, u_input.d.x))))), 71968u >> (~(~1u) % 32u));
}

