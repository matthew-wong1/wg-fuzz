struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<bool>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = false;

var<private> global2: vec2<f32>;

var<private> global3: Struct_3;

var<private> global4: array<vec2<i32>, 14>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<i32> {
    global0 = global3.c.c;
    var var_0 = Struct_4(~vec2<u32>(~(global3.c.c.b | global0.b), global3.c.a.x), Struct_2(firstLeadingBit(global3.d.a), global4[_wgslsmith_index_u32(global0.b, 14u)], Struct_1(vec2<bool>(global3.a.c.c.x, global0.c.x), ~firstTrailingBit(u_input.b), vec3<bool>(global0.c.x, true, all(vec3<bool>(global0.c.x, false, global0.a.x))), -155f, ~_wgslsmith_dot_vec4_i32(vec4<i32>(9107i, -5698i, global0.e, global3.c.b.x), vec4<i32>(u_input.a, global0.e, u_input.d.x, global3.a.c.e))), global3.d.d, _wgslsmith_f_op_f32(select(global3.d.d.x, -346f, global3.c.c.a.x))), vec4<i32>(_wgslsmith_add_i32(global3.a.b.x, global3.a.b.x), -global0.e, _wgslsmith_mult_i32(global0.e, global0.e) | -1951i, -(~(-1i)) & (_wgslsmith_mult_i32(-42817i, global0.e) | ~global3.a.c.e)));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1990f, global3.a.c.d))))), var_0.b.d.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.d.x * global2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-364f))))));
    let var_2 = ~(-60642i);
    return vec2<i32>(-abs(abs(8300i)), -_wgslsmith_clamp_i32(var_0.b.b.x << (min(var_0.a.x, var_0.a.x) % 32u), var_2, -1i));
}

fn func_2(arg_0: bool) -> vec3<bool> {
    global1 = !(all(global0.c) == !(!global0.c.x));
    global3 = Struct_3(global3.a, ~global3.b, Struct_2(~(~vec4<u32>(11188u, u_input.b, global3.a.a.x, 0u)), abs(~func_3()), global3.c.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(global3.d.c.d, global3.d.c.d, global3.a.e, 1627f), global3.d.d), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 270f, global2.x, global0.d), global3.a.d, false))))), _wgslsmith_f_op_f32(-global3.c.e)), global3.a);
    global4 = array<vec2<i32>, 14>();
    global2 = _wgslsmith_f_op_vec2_f32(global3.c.d.wy * _wgslsmith_f_op_vec2_f32(-global3.c.d.yz));
    var var_0 = global3.c.a.wz;
    return select(vec3<bool>(select(global0.c.x, global3.d.c.c.x, global3.d.c.c.x) || (!global0.c.x & any(global3.c.c.c)), true, true), vec3<bool>(all(!select(vec4<bool>(true, global0.a.x, true, arg_0), vec4<bool>(false, true, true, global0.c.x), global3.a.c.c.x)), _wgslsmith_f_op_f32(sign(-584f)) >= _wgslsmith_f_op_f32(max(global2.x, -1277f)), true), vec3<bool>(any(global3.c.c.c.zy), !(!(arg_0 && global0.c.x)), any(select(!vec4<bool>(global0.c.x, false, global0.a.x, global0.a.x), !vec4<bool>(true, global3.d.c.a.x, global3.c.c.c.x, arg_0), !vec4<bool>(false, global3.a.c.a.x, global3.d.c.c.x, arg_0)))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = global3.a.c;
    let var_1 = Struct_1(select(global0.c.yx, !vec2<bool>(global0.d > -1820f, select(true, global3.c.c.c.x, true)), arg_3.c.xx), ~(~global3.a.a.x) >> (4294967295u % 32u), global3.d.c.c, -756f, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e, arg_3.e, -1i, max(firstTrailingBit(u_input.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 1i, -3676i), vec3<i32>(18366i, -18067i, -2147483647i)))), vec4<i32>(abs(firstLeadingBit(arg_1)), -1i, ~u_input.a, global3.a.b.x)));
    var_0 = Struct_1(vec2<bool>(true, true), ~(_wgslsmith_mod_u32(~u_input.b, abs(1927u)) >> (31637u % 32u)), vec3<bool>(!func_2(arg_0).x, global3.c.c.c.x, false), global2.x, countOneBits(global0.e));
    let var_2 = !var_0.a.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global3.c.d.xx)));
    return Struct_2(~abs(max(_wgslsmith_add_vec4_u32(global3.a.a, global3.a.a), vec4<u32>(1u, 0u, 1u, arg_3.b))), u_input.d, Struct_1(select(global0.c.yy, !(!arg_2), vec2<bool>(true, select(var_0.a.x, false, arg_3.c.x))), firstTrailingBit(4294967295u), vec3<bool>(true, true, true), global2.x, ~reverseBits(13213i)), global3.a.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * -2183f) * _wgslsmith_f_op_f32(-var_0.d))))));
}

fn func_1(arg_0: f32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global3.a.d.wy, vec2<f32>(1758f, global0.d))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(440f, arg_0), vec2<f32>(-2136f, -1551f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 248f) * global3.d.d.ww)))))));
    var var_1 = global0.a.x;
    global3 = Struct_3(func_4(false, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-global3.d.b.x, 60598i), ~countOneBits(80201i)), vec2<bool>(global3.a.c.c.x, global0.a.x), Struct_1(!(!vec2<bool>(global3.d.c.c.x, true)), 0u, func_2(!global3.c.c.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.x))), global0.e)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, ~0u, _wgslsmith_add_u32(global3.c.c.b, global0.b)), ~global3.b, vec3<u32>(0u ^ u_input.b, ~1u, 83943u) >> (~(~global3.d.a.xzw) % vec3<u32>(32u))), func_4(select(false, ~u_input.b >= ~71543u, all(select(vec2<bool>(global3.c.c.c.x, false), global3.d.c.a, false))), u_input.a, func_4(true, reverseBits(u_input.d.x), vec2<bool>(global2.x <= global2.x, !global0.a.x), Struct_1(!vec2<bool>(global3.a.c.c.x, false), ~u_input.b, !global0.c, _wgslsmith_f_op_f32(f32(-1f) * -1102f), 1i)).c.a, func_4(global0.a.x | any(vec2<bool>(false, global3.d.c.a.x)), global0.e, vec2<bool>(!global0.a.x, true), func_4(true, u_input.e, vec2<bool>(false, false), Struct_1(global3.a.c.c.xy, u_input.b, vec3<bool>(true, global3.a.c.a.x, false), global3.c.e, global3.a.c.e)).c).c), Struct_2(global3.a.a, vec2<i32>(-1i, -12400i), Struct_1(func_2(true).yz, 1u, func_2(global3.d.c.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -338f) - _wgslsmith_f_op_f32(-var_0.x)), func_4(global0.a.x | global3.d.c.a.x, 0i, !vec2<bool>(global3.c.c.c.x, false), global3.a.c).b.x), _wgslsmith_f_op_vec4_f32(-global3.c.d), _wgslsmith_f_op_f32(f32(-1f) * -467f)));
    global0 = func_4(all(global0.a), 1i, select(!func_4(select(global3.d.c.c.x, global0.c.x, true), func_3().x, vec2<bool>(true, true), func_4(global3.a.c.a.x, -2147483647i, global0.a, Struct_1(global0.a, u_input.b, global3.c.c.c, -522f, global0.e)).c).c.a, select(vec2<bool>(global0.c.x, global0.a.x), select(vec2<bool>(false, global3.a.c.a.x), vec2<bool>(global0.c.x, global0.a.x), vec2<bool>(false, global0.c.x)), select(!global3.a.c.a, func_4(global0.a.x, global3.d.b.x, global0.c.zz, Struct_1(vec2<bool>(global3.a.c.a.x, false), 4294967295u, vec3<bool>(global3.a.c.c.x, true, global3.c.c.a.x), 2284f, u_input.c.x)).c.a, vec2<bool>(true, true))), func_4(global0.c.x, -(global0.e & -2147483647i), global0.a, global3.a.c).c.a), func_4(!(-global3.d.b.x >= (i32(-1i) * -31983i)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(global3.d.b.x, -2147483647i, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 18140i, 4430i), vec3<i32>(global0.e, global3.d.c.e, global0.e))), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e, global0.e, 89925i), vec3<i32>(u_input.c.x, u_input.d.x, global0.e), vec3<i32>(u_input.d.x, -67474i, -1i)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -16324i, global3.c.c.e), vec3<i32>(2147483647i, -62817i, global0.e)), vec3<i32>(global3.a.b.x, 55179i, u_input.e) << (vec3<u32>(0u, 46887u, global0.b) % vec3<u32>(32u)))), !vec2<bool>(global0.a.x, false), func_4(global3.d.c.c.x == false, global0.e, global3.a.c.c.yz, Struct_1(global0.c.xx, ~global3.b.x, !vec3<bool>(global0.a.x, false, true), -260f, i32(-1i) * -3273i)).c).c).c;
    var var_2 = global4[_wgslsmith_index_u32(~(global0.b ^ _wgslsmith_mod_u32(~max(u_input.b, 47572u), ~countOneBits(global3.a.a.x))), 14u)];
    return ~vec3<u32>(u_input.b, global0.b, global3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_u32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global2.x, global2.x, true)))))), _wgslsmith_div_vec3_u32(min(select(_wgslsmith_div_vec3_u32(global3.d.a.zxw, vec3<u32>(57490u, 36849u, 4294967295u)), ~vec3<u32>(35398u, global3.d.a.x, 35659u), global0.b >= u_input.b), vec3<u32>(~global3.a.a.x, ~global3.b.x, func_1(166f).x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(global3.c.a.x, 13474u, global0.b), func_1(_wgslsmith_f_op_f32(sign(1000f))))));
    let var_1 = global3.d.c;
    global0 = func_4(true, i32(-1i) * -6847i, var_1.a, global3.d.c).c;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global3.d.d.zw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1055f, -115f)) - global3.a.d.yw)))) + _wgslsmith_f_op_vec2_f32(exp2(global3.a.d.yx)));
    global4 = array<vec2<i32>, 14>();
    global1 = all(func_2(!(733f <= _wgslsmith_f_op_f32(floor(var_1.d)))).zx);
    let var_3 = 1i;
    global4 = array<vec2<i32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(global3.d.b, global3.d.d.xwx);
}

