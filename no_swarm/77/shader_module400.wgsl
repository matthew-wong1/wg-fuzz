struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<u32>;

var<private> global2: array<bool, 9> = array<bool, 9>(false, false, false, true, true, true, false, false, false);

var<private> global3: array<f32, 28> = array<f32, 28>(980f, -278f, 488f, 856f, 1000f, 1000f, 881f, -553f, -155f, -1163f, -655f, -1381f, -312f, -355f, -637f, 1127f, 1892f, 346f, 984f, 333f, 1597f, -1060f, -1339f, -392f, -271f, -906f, -668f, 250f);

var<private> global4: array<u32, 2> = array<u32, 2>(4294967295u, 80174u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    let var_0 = arg_1.zx;
    let var_1 = arg_0;
    let var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(max(var_1.b, abs(1u)), reverseBits(~_wgslsmith_div_u32(global1.x, 0u))), 28u)];
    let var_3 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -510f))), 15559u, select(~_wgslsmith_sub_vec2_u32(global1.zy >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)), ~vec2<u32>(5411u, global1.x)), ~(~u_input.a.zz), vec2<bool>(!arg_1.x & !global2[_wgslsmith_index_u32(1u, 9u)], var_0.x)));
    global3 = array<f32, 28>();
    return 1u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(203f - global3[_wgslsmith_index_u32(arg_0.c.x, 28u)]), _wgslsmith_f_op_f32(arg_0.a * -1000f), _wgslsmith_f_op_f32(floor(arg_0.a)), _wgslsmith_f_op_f32(select(1438f, global3[_wgslsmith_index_u32(arg_1.c.x, 28u)], true))))))));
    let var_1 = arg_0;
    global1 = u_input.a;
    let var_2 = any(!vec3<bool>((arg_1.c.x | global1.x) < _wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(26132u, 2u)], 4294967295u, 4294967295u), false, any(select(vec4<bool>(true, global2[_wgslsmith_index_u32(10552u, 9u)], global2[_wgslsmith_index_u32(arg_1.c.x, 9u)], false), vec4<bool>(false, false, true, false), false))));
    global3 = array<f32, 28>();
    return global1.x;
}

fn func_2(arg_0: vec3<f32>) -> vec3<bool> {
    var var_0 = global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(func_4(Struct_1(357f, 1u, vec2<u32>(~global1.x, ~_wgslsmith_clamp_u32(global1.x, u_input.a.x, 1u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(683f - global3[_wgslsmith_index_u32(countOneBits(global1.x), 28u)])), _wgslsmith_mult_u32(func_3(Struct_1(591f, 1982u, vec2<u32>(47791u, 233u)), !vec4<bool>(global2[_wgslsmith_index_u32(48341u, 9u)], false, global2[_wgslsmith_index_u32(global1.x, 9u)], false)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.xz, u_input.a.xz), vec2<u32>(global1.x, u_input.a.x))), _wgslsmith_clamp_vec2_u32(select(global1.zz, vec2<u32>(70532u, global1.x), global2[_wgslsmith_index_u32(u_input.a.x, 9u)]) | (u_input.a.wx | vec2<u32>(16657u, 4294967295u)), _wgslsmith_div_vec2_u32(select(u_input.a.wy, u_input.a.zw, vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 9u)])), countOneBits(global1.xx)), ~vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 2u)], 1u))), firstLeadingBit(u_input.d.xy), 66695i), 2u)], 28u)];
    global4 = array<u32, 2>();
    var_0 = _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 0u, u_input.a.x), _wgslsmith_div_u32(global1.x, 34036u))), firstLeadingBit(_wgslsmith_clamp_vec2_u32(global1.yz, vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(1u, 1u)))), 2u)], 28u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 2u)], 28u)] * -1455f) - _wgslsmith_f_op_f32(floor(-900f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) + 543f))));
    var var_1 = 455f;
    global0 = false;
    return !(!(!select(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 9u)], false, false), !vec3<bool>(global2[_wgslsmith_index_u32(0u, 9u)], false, true), false)));
}

fn func_1() -> vec3<i32> {
    var var_0 = vec4<i32>(-22210i, -2147483647i, max(u_input.b, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, u_input.c, u_input.b, -77676i), ~vec4<i32>(23780i, 27920i, u_input.c, u_input.c)), ~(-1i))), u_input.d.x);
    var var_1 = !select(select(vec3<bool>(!global2[_wgslsmith_index_u32(global1.x, 9u)], true, global2[_wgslsmith_index_u32(1u, 9u)] && false), func_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3[_wgslsmith_index_u32(global1.x, 28u)], -332f, 383f)))), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 28u)] < -1353f, false, global2[_wgslsmith_index_u32(4294967295u, 9u)])), !func_2(vec3<f32>(244f, global3[_wgslsmith_index_u32(global1.x, 28u)], 572f)), any(select(vec4<bool>(false, global2[_wgslsmith_index_u32(global1.x, 9u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 2u)], 9u)], false), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(40753u, 9u)], false, global2[_wgslsmith_index_u32(0u, 9u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(29612u, 9u)], false, false))) || all(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(global1.x, 9u)], global2[_wgslsmith_index_u32(u_input.a.x, 9u)], true)));
    global4 = array<u32, 2>();
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(abs(~18941u), select(max(global1.x, global1.x), 39763u, false)), u_input.a.ww) | (select(~abs(global1.zy), u_input.a.xw, var_1.yz) ^ vec2<u32>(u_input.a.x, 67043u));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.x, 28u)] - -806f)), global3[_wgslsmith_index_u32(~0u, 28u)])) - -262f), 43044u, _wgslsmith_sub_vec2_u32(~select(global1.yy, vec2<u32>(global4[_wgslsmith_index_u32(1u, 2u)], 4294967295u), false), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_2.x), _wgslsmith_mod_vec2_u32(u_input.a.yy, global1.zw), ~vec2<u32>(1u, global4[_wgslsmith_index_u32(45108u, 2u)]))) & global1.wz);
    return u_input.d;
}

fn func_5(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = arg_2;
    global2 = array<bool, 9>();
    return _wgslsmith_add_u32(~_wgslsmith_mod_u32(~arg_1, _wgslsmith_sub_u32(~73156u, ~var_0.c.x)), max(~var_0.b, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(func_5(_wgslsmith_mult_vec3_i32(func_1(), vec3<i32>(-30877i, 0i, -14734i) & _wgslsmith_div_vec3_i32(min(vec3<i32>(u_input.b, -2147483647i, u_input.d.x), vec3<i32>(u_input.c, -22008i, u_input.c)), -vec3<i32>(1i, 2147483647i, u_input.c))), global4[_wgslsmith_index_u32(u_input.a.x, 2u)] << (~((4891u | global1.x) >> (global1.x % 32u)) % 32u), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.x, 28u)] * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 28u)])))), u_input.a.x, u_input.a.zz << (global1.yw % vec2<u32>(32u))), _wgslsmith_f_op_f32(max(2183f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, 23063u), 28u)])))), 28u)];
    global0 = all(select(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(634f, global3[_wgslsmith_index_u32(6608u, 28u)], global3[_wgslsmith_index_u32(0u, 28u)]), vec3<f32>(global3[_wgslsmith_index_u32(11788u, 28u)], global3[_wgslsmith_index_u32(u_input.a.x, 28u)], 933f))))), vec3<bool>(true, !select(global2[_wgslsmith_index_u32(global1.x, 9u)], false, global2[_wgslsmith_index_u32(54034u, 9u)]), !global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(7877u, 2u)] ^ u_input.a.x, 9u)]), !select(func_2(vec3<f32>(825f, -663f, global3[_wgslsmith_index_u32(50318u, 28u)])), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.x, 2u)], 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)]), any(vec3<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(24755u, 2u)], 9u)], false, false)))));
    let var_1 = Struct_1(global3[_wgslsmith_index_u32(min(reverseBits(global1.x | 54786u), func_4(Struct_1(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(26145u, 2u)], 28u)], 50424u, vec2<u32>(1u, 0u)), Struct_1(global3[_wgslsmith_index_u32(u_input.a.x, 28u)], global1.x, vec2<u32>(u_input.a.x, global1.x)), _wgslsmith_mult_vec2_i32(u_input.d.xy, vec2<i32>(-35505i, 2147483647i)), countOneBits(u_input.c))) | global1.x, 28u)], global1.x, vec2<u32>(global1.x, ~(~firstTrailingBit(u_input.a.x))));
    let var_2 = ~u_input.a;
    let var_3 = u_input.c;
    var var_4 = vec4<f32>(global3[_wgslsmith_index_u32(29288u, 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1581f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(61101u, 2u)], 28u)]))))), global3[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_div_u32(0u, 50222u & var_1.c.x)), 28u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-925f - global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 56085u, global1.x), var_2.xwx), 28u)]))))));
    var var_5 = Struct_1(var_1.a, abs(4294967295u & (~var_2.x >> (39262u % 32u))), ~abs(vec2<u32>(var_2.x, var_2.x) ^ (var_1.c & u_input.a.yw)));
    global1 = firstTrailingBit(vec4<u32>(~0u, 0u, _wgslsmith_mod_u32(26517u, min(var_1.c.x, 1u)), _wgslsmith_mult_u32(firstTrailingBit(func_5(u_input.d, 29962u, var_1, -266f)), 1u)));
    global1 = vec4<u32>(firstTrailingBit(var_2.x), _wgslsmith_dot_vec4_u32(~var_2, firstTrailingBit(~min(vec4<u32>(u_input.a.x, global1.x, 0u, var_2.x), vec4<u32>(98105u, global1.x, 35367u, 59013u)))), global1.x, 1136u);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-u_input.d << (var_2.zxz % vec3<u32>(32u))));
}

