struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(1u, 18696u, 4294967295u, 30596u, 4294967295u, 12034u, 1u, 47843u, 0u, 98059u, 0u, 24179u, 1u, 20256u, 132644u, 0u, 3619u, 0u, 58467u, 1u, 1u, 30009u, 4294967295u, 16489u, 4024u, 50204u);

var<private> global1: vec3<bool>;

var<private> global2: i32;

var<private> global3: bool;

var<private> global4: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<f32>(870f, 755f, 1869f, -297f), 16936u, 1196f, 11179i, vec3<u32>(9176u, 87847u, 0u)), Struct_1(vec4<f32>(-1667f, -1670f, -639f, 501f), 0u, 1580f, 1i, vec3<u32>(17280u, 0u, 102629u)), Struct_1(vec4<f32>(650f, 1928f, 1240f, -1522f), 0u, 1000f, -38422i, vec3<u32>(28237u, 4294967295u, 6500u)), Struct_1(vec4<f32>(1404f, 272f, 180f, 299f), 4294967295u, -800f, 1249i, vec3<u32>(1u, 1u, 1u)), Struct_1(vec4<f32>(-403f, -1452f, -1152f, -112f), 4294967295u, 1993f, 2147483647i, vec3<u32>(0u, 44724u, 36811u)), Struct_1(vec4<f32>(417f, -1794f, -1062f, 524f), 1u, -1827f, -6004i, vec3<u32>(17596u, 17535u, 8437u)), Struct_1(vec4<f32>(-2142f, -1000f, -1000f, 1000f), 59786u, -556f, 1i, vec3<u32>(19010u, 55236u, 8287u)), Struct_1(vec4<f32>(-2247f, 178f, 2288f, 1152f), 4294967295u, 148f, 4096i, vec3<u32>(12086u, 1u, 57966u)), Struct_1(vec4<f32>(-1572f, -1000f, -492f, -540f), 0u, -1000f, 33212i, vec3<u32>(4294967295u, 4294967295u, 9750u)), Struct_1(vec4<f32>(-1625f, 1123f, 1000f, 1632f), 9995u, 1278f, 0i, vec3<u32>(10529u, 4294967295u, 0u)), Struct_1(vec4<f32>(-494f, -1047f, 811f, -1195f), 4294967295u, 308f, 11226i, vec3<u32>(46700u, 4294967295u, 29830u)), Struct_1(vec4<f32>(180f, -1377f, 224f, -1345f), 35397u, 375f, -6622i, vec3<u32>(4294967295u, 0u, 34458u)), Struct_1(vec4<f32>(183f, -597f, -743f, 924f), 4294967295u, 521f, -24132i, vec3<u32>(2914u, 26812u, 22108u)), Struct_1(vec4<f32>(-1023f, -1204f, 388f, 190f), 1450u, -1424f, -1i, vec3<u32>(34621u, 62111u, 28236u)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    let var_0 = u_input.b.yww;
    var var_1 = global4[_wgslsmith_index_u32(max(23829u, 4294967295u), 14u)];
    global2 = arg_0.x;
    var_1 = global4[_wgslsmith_index_u32(1u, 14u)];
    global4 = array<Struct_1, 14>();
    return firstTrailingBit(max(-25654i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-64238i, arg_0.x, u_input.d), vec3<i32>(u_input.d, 0i, var_1.d)), ~vec3<i32>(arg_0.x, u_input.d, var_1.d)), -u_input.a | (-33379i >> (var_1.b % 32u)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec3<f32>) -> vec3<u32> {
    global4 = array<Struct_1, 14>();
    var var_0 = arg_1;
    global4 = array<Struct_1, 14>();
    global3 = !select(any(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, true, true))), true, false);
    var_0 = Struct_1(var_0.a, firstLeadingBit(17467u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-601f - _wgslsmith_f_op_f32(-409f * var_0.c))), _wgslsmith_add_i32(2511i, arg_0.x), abs(~vec3<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.b.x, 30525u), min(47006u, 137472u), 61385u)));
    return ~(vec3<u32>(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], 26u)] & arg_1.b), 1u, ~1u) ^ _wgslsmith_clamp_vec3_u32(~(arg_1.e | var_0.e), u_input.b.yxy, var_0.e));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = u_input.b.zw;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1713f);
    global3 = all(select(vec2<bool>(true, any(global1.zz)), global1.zz, false));
    let var_3 = arg_0;
    return Struct_1(arg_0.a, arg_1, _wgslsmith_f_op_f32(round(arg_0.c)), func_2(~select(vec2<i32>(-72278i, var_3.d), vec2<i32>(-1i, -2147483647i) | vec2<i32>(0i, var_3.d), global1.yx)), ~max(func_3(vec2<i32>(2147483647i, -24714i) >> (var_3.e.xz % vec2<u32>(32u)), arg_0, arg_0.a.xz, arg_0.a.xyx), ~vec3<u32>(global0[_wgslsmith_index_u32(3594u, 26u)], 8492u, 32558u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec3<bool>) -> u32 {
    global0 = array<u32, 26>();
    global4 = array<Struct_1, 14>();
    global2 = func_2(vec2<i32>(-(-arg_1.d << (abs(69332u) % 32u)), -2147483647i));
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(countOneBits(u_input.b)), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_1.e.x, 4294967295u, 1u), u_input.b, vec4<u32>(arg_0.b, arg_1.e.x, 61719u, 10314u)) | _wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(10525u, 0u, u_input.b.x, arg_0.e.x)), firstLeadingBit(firstLeadingBit(u_input.b)), ~(~vec4<u32>(arg_0.b, arg_0.b, arg_1.b, global0[_wgslsmith_index_u32(0u, 26u)])))), ~u_input.b), 14u)];
    var var_1 = min(-(~arg_0.d), func_1(func_1(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, var_0.a.x) - arg_0.a), global0[_wgslsmith_index_u32(min(14899u, 44993u), 26u)], -1622f, ~arg_1.d, arg_0.e), _wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.b, 0u), _wgslsmith_sub_u32(4294967295u, 29168u)), _wgslsmith_f_op_f32(-arg_1.a.x)), ~arg_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -359f))))).d);
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(11519u, arg_1.b), 60456u, firstTrailingBit(arg_1.e.x ^ var_0.e.x)), vec3<u32>(firstLeadingBit(_wgslsmith_mult_u32(4294967295u, var_0.b)), ~(~30518u) << (~(~u_input.b.x) % 32u), u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -561f;
    var var_1 = firstTrailingBit(_wgslsmith_add_vec4_u32(u_input.b, reverseBits(u_input.b | vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(u_input.c, 26u)], u_input.c, u_input.c)))) | vec4<u32>(17657u, 0u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(87550u, 40028u), 26u)], ~func_4(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(50166u, 2867u), 14u)], func_1(Struct_1(vec4<f32>(215f, 1597f, -451f, -629f), global0[_wgslsmith_index_u32(72357u, 26u)], -1624f, u_input.a, u_input.b.wzw), 4294967295u, -318f), u_input.d, !vec3<bool>(global1.x, false, global1.x)));
    var var_2 = !global1.x;
    global3 = true;
    var var_3 = global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~var_1.xy, max(countOneBits(u_input.b.wx), u_input.b.zx)), 14u)];
    let var_4 = any(!(!global1.yx));
    var_2 = true;
    var var_5 = global4[_wgslsmith_index_u32(select(~firstTrailingBit(_wgslsmith_div_u32(61737u, global0[_wgslsmith_index_u32(4294967295u, 26u)])), var_1.x, var_4) | 4294967295u, 14u)];
    let var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_3.a.zyz)) - func_1(Struct_1(vec4<f32>(var_5.a.x, var_5.c, var_3.a.x, 1245f), 0u, -1793f, var_5.d, var_5.e), 4294967295u, -1008f).a.xww)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_5.a.xwx * var_3.a.wzx), _wgslsmith_f_op_vec3_f32(vec3<f32>(859f, var_5.a.x, -502f) + vec3<f32>(var_3.a.x, var_5.a.x, var_3.c)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -361f) * _wgslsmith_f_op_f32(var_6.x - var_6.x)), var_3.c), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1640f, 239f, var_6.x, var_3.c) * vec4<f32>(-913f, -1625f, -1202f, 321f)) * vec4<f32>(var_3.a.x, var_5.a.x, -1513f, 296f)))))), var_1.xww, 0u);
}

