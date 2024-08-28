struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(-1091f, 655f, -700f);

var<private> global1: array<bool, 14>;

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), 29123i);

var<private> global3: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<bool>) -> vec3<bool> {
    global2 = select(select(firstTrailingBit(-vec2<i32>(global2.x, global2.x)), global3.d, !select(arg_0.zx, vec2<bool>(true, true), !global1[_wgslsmith_index_u32(global3.e, 14u)])), select(abs(-vec2<i32>(global2.x, 6317i) << (_wgslsmith_div_vec2_u32(vec2<u32>(24414u, u_input.a), vec2<u32>(0u, 0u)) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(abs(-global3.a), abs(abs(vec2<i32>(global2.x, global3.d.x)))), false), all(!arg_0.yz));
    global2 = firstTrailingBit(firstTrailingBit(vec2<i32>(_wgslsmith_clamp_i32(~(-1i), -39280i, _wgslsmith_clamp_i32(10230i, global3.a.x, global2.x)), -33313i)));
    global1 = array<bool, 14>();
    global0 = array<f32, 3>();
    let var_0 = _wgslsmith_f_op_f32(round(global3.b.a));
    return select(!(!select(select(arg_0, arg_0, arg_0), arg_0, false)), arg_0, !(!any(select(vec2<bool>(false, arg_0.x), vec2<bool>(false, true), false))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = !(!select(select(!vec3<bool>(global1[_wgslsmith_index_u32(global3.b.d.x, 14u)], false, true), vec3<bool>(false, false, true), func_3(vec3<bool>(false, global1[_wgslsmith_index_u32(63221u, 14u)], global1[_wgslsmith_index_u32(55835u, 14u)]))), vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, global3.b.d.x), 14u)], !global1[_wgslsmith_index_u32(global3.e, 14u)], global1[_wgslsmith_index_u32(5472u, 14u)]), true));
    global0 = array<f32, 3>();
    var var_1 = _wgslsmith_add_i32(firstTrailingBit(-2147483647i), _wgslsmith_dot_vec2_i32(arg_0.yz, global3.a >> (vec2<u32>(global3.e, 0u) % vec2<u32>(32u)))) << (1u % 32u);
    var var_2 = vec2<i32>(-1i) * -vec2<i32>(global3.d.x, _wgslsmith_div_i32(reverseBits(4784i), min(-16210i, 23400i)));
    var_2 = vec2<i32>(arg_0.x, 2229i);
    return Struct_2(global3.b);
}

fn func_1() -> f32 {
    var var_0 = func_2(_wgslsmith_mult_vec3_i32(max(select(vec3<i32>(-2147483647i, 0i, 0i), _wgslsmith_mult_vec3_i32(vec3<i32>(global2.x, global3.d.x, -2147483647i), vec3<i32>(global3.a.x, 2147483647i, 1i)), global1[_wgslsmith_index_u32(78515u, 14u)]), (vec3<i32>(global3.a.x, global2.x, 0i) & vec3<i32>(1i, 21030i, 37892i)) >> (global3.b.d.xzz % vec3<u32>(32u))), abs(vec3<i32>(_wgslsmith_add_i32(11588i, -2147483647i), 0i, 1i))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -767f), -1146f)), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(min(global3.e, var_0.a.d.x), 3u)]))))), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.c)), -565f, 524f, _wgslsmith_f_op_f32(exp2(global3.b.c))), -1265f, firstLeadingBit(max(global3.b.d, vec4<u32>(max(u_input.a, var_0.a.d.x), _wgslsmith_clamp_u32(38556u, global3.e, 4294967295u), global3.c, _wgslsmith_add_u32(42128u, var_0.a.d.x)))));
    global2 = firstLeadingBit(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(global3.d.x, 36410i, global3.d.x, -1i), countOneBits(vec4<i32>(global3.a.x, -1768i, global2.x, -1i))), -30596i));
    let var_2 = 738f <= var_0.a.c;
    var var_3 = func_2(firstLeadingBit(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(global3.a.x, global2.x, -1i), vec3<i32>(2147483647i, -17553i, 0i)))).a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.a.c)), var_0.a.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))));
    var var_1 = -1i;
    let var_2 = Struct_3(countOneBits(-firstTrailingBit(global3.d)), global3.b, global3.b.d.x ^ ~min(38094u ^ global3.b.d.x, 73231u), ~firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(global2.x, global2.x), vec2<i32>(39566i, 0i), vec2<i32>(13975i, global3.d.x)) >> (vec2<u32>(u_input.c.x, 26814u) % vec2<u32>(32u))), 81951u);
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(119f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.c) - _wgslsmith_f_op_f32(global3.b.a * var_2.b.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.b.x) + _wgslsmith_f_op_f32(max(516f, -1663f))))), -336f));
    var var_4 = Struct_4(~firstLeadingBit(var_2.c), func_2(countOneBits(min(~vec3<i32>(-36596i, 1i, -2147483647i), -vec3<i32>(2147483647i, -81381i, 5602i)))).a);
    global3 = Struct_3(~(-global3.d & -(~global3.d)), global3.b, var_4.a, select(((global3.d | vec2<i32>(-2147483647i, 2147483647i)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(33045u, var_4.b.d.x), var_2.b.d.zy) % vec2<u32>(32u))) & abs(global3.d), firstTrailingBit(select(-vec2<i32>(-41703i, 0i), -vec2<i32>(-1i, -69010i), select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(7775u, 14u)], global1[_wgslsmith_index_u32(global3.b.d.x, 14u)]), vec2<bool>(global1[_wgslsmith_index_u32(var_4.a, 14u)], global1[_wgslsmith_index_u32(var_2.e, 14u)])))), true), 26029u);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_div_vec2_u32(~(~var_4.b.d.zw), firstTrailingBit(abs(vec2<u32>(4294967295u, u_input.c.x)))), countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, var_2.b.d.x), vec2<u32>(0u, 0u)) & select(var_2.b.d.yx, vec2<u32>(global3.e, u_input.c.x), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(40843u, 14u)])))), _wgslsmith_div_f32(-182f, var_4.b.c), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global3.b.c, global0[_wgslsmith_index_u32(global3.e, 3u)]), _wgslsmith_f_op_f32(-940f + var_4.b.a)) - global3.b.a), -1396f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global3.b.b.x, 525f)))))));
}

