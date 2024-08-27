struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: Struct_3,
    e: vec4<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, true));

var<private> global1: vec3<u32> = vec3<u32>(43511u, 32351u, 0u);

var<private> global2: vec2<u32> = vec2<u32>(0u, 1u);

var<private> global3: Struct_1 = Struct_1(vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec4<f32>(-1567f, -1000f, 148f, 909f));

var<private> global4: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_mod_u32(u_input.b.x, ~global1.x) >> ((firstLeadingBit(~(17933u ^ global2.x)) >> (~4294967295u % 32u)) % 32u);
    let var_1 = Struct_2(!select(select(global0.a, select(global0.a, global0.a, false), select(global0.a, vec2<bool>(global0.a.x, global0.a.x), false)), !global0.a, vec2<bool>(false, arg_0 == 18506i)));
    let var_2 = ~1u;
    let var_3 = Struct_1(vec3<i32>(-1i) * -(vec3<i32>(arg_0, -1i, -2147483647i) & max(vec3<i32>(-1i, 0i, -18512i), global3.a)), vec4<f32>(-416f, global3.b.x, global3.b.x, _wgslsmith_f_op_f32(global3.b.x * -507f)));
    global0 = var_1;
    return true;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> u32 {
    global4 = 1u;
    var var_0 = _wgslsmith_mult_vec3_u32(min(abs(_wgslsmith_sub_vec3_u32(select(u_input.d.wxy, vec3<u32>(7477u, 4294967295u, u_input.b.x), vec3<bool>(true, global0.a.x, global0.a.x)), u_input.d.zyw)), u_input.d.wxz), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(countOneBits(1u), global2.x, _wgslsmith_add_u32(global1.x, global2.x)), select(1u, 17236u, func_2(2147483647i))), countOneBits(max(select(0u, 37814u, global0.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(5696u, 112785u, 47528u), u_input.d.yyx))), 13693u));
    global4 = 67831u;
    let var_1 = vec4<u32>(global2.x, 0u, 4294967295u, global2.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-334f - _wgslsmith_f_op_f32(f32(-1f) * -844f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -213f), _wgslsmith_f_op_f32(-501f * global3.b.x))))));
    return ~(~13881u) | _wgslsmith_div_u32(max(~(~4294967295u), ~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(~38914u, firstLeadingBit(global1.x), min(4294967295u, 0u)), var_1.xww & ~vec3<u32>(8090u, 36745u, var_0.x)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec3<f32>) -> vec3<bool> {
    var var_0 = arg_1.b.zy;
    let var_1 = vec2<i32>(countOneBits(countOneBits(-2147483647i)), ~u_input.a << (~4294967295u % 32u));
    let var_2 = ~arg_1.c.yzw;
    var var_3 = 0i;
    return vec3<bool>(global0.a.x, true, any(vec4<bool>(all(vec4<bool>(true, false, false, arg_1.d.a)), arg_1.d.a, global0.a.x, _wgslsmith_mod_u32(1u, global2.x) == (u_input.b.x | 96181u))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = 38068u;
    var var_0 = ~vec3<i32>(9205i, 2147483647i, u_input.a);
    global1 = max(vec3<u32>(~global2.x, (firstTrailingBit(global2.x) >> (func_1(global1.x, vec2<u32>(global1.x, u_input.c)) % 32u)) & 4294967295u, u_input.b.x), firstLeadingBit(countOneBits(vec3<u32>(4466u, 0u, global2.x))) & abs(vec3<u32>(u_input.b.x, u_input.c, u_input.c) << (vec3<u32>(global1.x, 14809u, 48257u) % vec3<u32>(32u))));
    let var_1 = Struct_4(var_0.xz, select(select(!vec3<bool>(false, global0.a.x, global0.a.x), !vec3<bool>(global0.a.x, true, true), select(func_3(vec4<i32>(2147483647i, -1i, u_input.a, 33608i), Struct_4(var_0.zx, vec3<bool>(global0.a.x, true, true), vec4<i32>(-30091i, u_input.e, 0i, global3.a.x), Struct_3(global0.a.x, 1u), vec4<u32>(38804u, u_input.c, global1.x, global1.x)), global3.b.wxy), !vec3<bool>(global0.a.x, global0.a.x, false), true)), vec3<bool>(false, false, reverseBits(var_0.x) <= 1i), !vec3<bool>(true, global0.a.x && global0.a.x, all(vec2<bool>(false, global0.a.x)))), abs(firstTrailingBit(vec4<i32>(_wgslsmith_clamp_i32(global3.a.x, -37303i, global3.a.x), 8079i >> (global2.x % 32u), 2147483647i, ~39909i))), Struct_3(global0.a.x | (global3.a.x >= abs(u_input.a)), 47903u), ~u_input.d | vec4<u32>(global2.x, ~34398u << (firstLeadingBit(u_input.b.x) % 32u), 1u, 11839u));
    let var_2 = Struct_5(select(!vec3<bool>(true, true, !var_1.b.x), select(var_1.b, var_1.b, !vec3<bool>(var_1.b.x, var_1.b.x, false)), func_3(var_1.c, var_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-899f, -971f, global3.b.x), vec3<f32>(global3.b.x, global3.b.x, global3.b.x))) * global3.b.yzz))), select(!(!(!global0.a)), vec2<bool>(!var_1.b.x, true), global0.a.x));
    global4 = global1.x;
    global1 = var_1.e.zxw;
    global1 = vec3<u32>(30005u, _wgslsmith_div_u32(0u ^ (global2.x & 4294967295u), global2.x), select(74170u, _wgslsmith_add_u32(92463u, global1.x), false));
    let var_3 = Struct_1(max(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, var_1.a.x), vec3<i32>(u_input.a, -11448i, 36849i)), _wgslsmith_sub_i32(2147483647i, var_0.x), _wgslsmith_sub_i32(46477i, var_1.a.x)) << ((~vec3<u32>(0u, var_1.d.b, global2.x) ^ (var_1.e.wyz ^ vec3<u32>(var_1.e.x, 0u, u_input.c))) % vec3<u32>(32u)), vec3<i32>(-_wgslsmith_add_i32(30753i, var_0.x), u_input.e, i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, global3.b.x, global3.b.x, global3.b.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, -755f, global3.b.x, 644f) * vec4<f32>(global3.b.x, global3.b.x, -462f, -1586f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(var_3.a.x) & var_1.c.x, 34681i, _wgslsmith_add_i32(u_input.a, var_3.a.x)), ~var_1.e, var_1.e.x);
}

