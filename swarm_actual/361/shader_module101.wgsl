struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1u, false);

var<private> global1: vec4<i32>;

var<private> global2: array<f32, 17>;

var<private> global3: Struct_3 = Struct_3(1u, false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_2(max(4294967295u, 18766u), -452f, global1.x > -7976i, ~max(_wgslsmith_mult_vec3_u32(vec3<u32>(global3.a, u_input.b.x, u_input.d) | vec3<u32>(4294967295u, global3.a, global3.a), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.b.x, 76024u), vec3<u32>(global3.a, global0.a, global3.a))), abs(~vec3<u32>(global0.a, 1u, 37823u))));
    global2 = array<f32, 17>();
    let var_1 = 0u;
    global2 = array<f32, 17>();
    global2 = array<f32, 17>();
    return var_0;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: i32, arg_3: vec3<u32>) -> Struct_3 {
    let var_0 = select(select(!vec4<bool>(-10112i != u_input.e, global0.b, true, arg_1.c), vec4<bool>(global3.b, _wgslsmith_sub_i32(arg_2, 34100i) >= 1i, any(vec3<bool>(arg_1.c, arg_1.c, global3.b)), any(vec2<bool>(arg_1.c, global0.b))), false), vec4<bool>(!any(vec4<bool>(global3.b, true, arg_1.c, true)) || all(vec3<bool>(true, false, true)), !all(vec4<bool>(arg_1.c, global3.b, arg_1.c, global3.b)), all(vec2<bool>(global0.b || false, true)), any(vec3<bool>(396i != u_input.c, all(vec2<bool>(false, false)), !global0.b))), select(select(select(vec4<bool>(arg_1.c, false, arg_1.c, false), vec4<bool>(global0.b, global3.b, true, arg_1.c), select(vec4<bool>(arg_1.c, false, arg_1.c, true), vec4<bool>(global3.b, global3.b, global3.b, global0.b), global3.b)), !(!vec4<bool>(true, arg_1.c, global0.b, false)), select(false, global1.x >= global1.x, any(vec3<bool>(false, true, global3.b)))), !(!select(vec4<bool>(global0.b, global3.b, global3.b, true), vec4<bool>(true, true, global3.b, global3.b), true)), true));
    let var_1 = 38737i;
    let var_2 = 0u;
    let var_3 = u_input.c;
    let var_4 = -(~min(-vec3<i32>(var_1, 0i, -50572i), ~abs(global1.xxz)));
    return Struct_3(~arg_3.x, all(select(!select(var_0.xwy, vec3<bool>(global3.b, true, true), vec3<bool>(var_0.x, false, var_0.x)), !(!vec3<bool>(var_0.x, arg_1.c, arg_1.c)), vec3<bool>(false, true, false))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: bool, arg_3: vec4<bool>) -> vec4<u32> {
    global3 = func_3(~_wgslsmith_mult_vec2_u32(~arg_1.zz, vec2<u32>(0u, 0u) & vec2<u32>(global3.a, global3.a)), func_2(global2[_wgslsmith_index_u32(4294967295u, 17u)]), -30819i, countOneBits(select(~(arg_1 ^ vec3<u32>(8216u, 0u, arg_1.x)), arg_1, !arg_3.x)));
    var var_0 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3.a, 17u)] - -1055f);
    var var_1 = vec4<bool>(func_3(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.zy, vec2<u32>(58487u, global3.a)), select(arg_1.xy, vec2<u32>(u_input.b.x, global3.a), arg_0.x)), vec2<u32>(func_2(290f).d.x, u_input.d & 4294967295u)), func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 17u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3.a, 17u)] + global2[_wgslsmith_index_u32(26716u, 17u)]), func_2(-790f).c))), 2147483647i, arg_1).b, arg_2, true, true);
    var_0 = -649f;
    var_1 = select(select(vec4<bool>(all(var_1.xxy) | (u_input.c < global1.x), !global0.b, !global0.b, true & any(arg_0)), !select(vec4<bool>(true, global3.b, arg_0.x, false), !arg_0, select(false, arg_2, arg_2)), !vec4<bool>(all(arg_0.yy), arg_3.x, true, global3.b)), arg_0, func_2(-557f).c);
    return ~vec4<u32>(0u & arg_1.x, ~(~global0.a ^ global0.a), func_3(_wgslsmith_mult_vec2_u32(vec2<u32>(global3.a, arg_1.x), u_input.b) ^ vec2<u32>(39161u, global3.a), func_2(global2[_wgslsmith_index_u32(~u_input.b.x, 17u)]), -_wgslsmith_mod_i32(-15892i, u_input.c), arg_1).a, ~global3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(global0.a, u_input.b.x, global3.a, global3.a)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.a, global3.a, u_input.d), func_1(vec4<bool>(global0.b, global0.b, true, true), vec3<u32>(26205u, global3.a, global0.a), global0.b, vec4<bool>(global0.b, global0.b, global3.b, global3.b))) % vec4<u32>(32u)), vec4<u32>(~global3.a, global3.a, 116951u, 1u)), func_1(select(vec4<bool>(global3.b, true, global3.b, select(true, global3.b, false)), vec4<bool>(global0.b, all(vec4<bool>(false, true, global0.b, true)), true, global3.b && global3.b), global3.b), vec3<u32>(~global0.a | ~1u, reverseBits(_wgslsmith_sub_u32(global3.a, 4294967295u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 12628u, u_input.d), vec3<u32>(0u, 8420u, u_input.d))), -52156i <= global1.x, vec4<bool>(global3.b, any(vec4<bool>(false, global0.b, global0.b, false)), global3.b, global0.b)), ~(~(~vec4<u32>(u_input.d, 4294967295u, 4294967295u, 2446u))) >> (vec4<u32>(50679u, global3.a, 4294967295u, ~14984u) % vec4<u32>(32u)));
    global1 = _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, firstTrailingBit(1i), global1.x, 11890i), vec4<i32>(1i, 1i, _wgslsmith_mult_i32(u_input.e, -select(u_input.c, global1.x, true)), 6380i));
    global1 = ~(vec4<i32>(-56570i, abs(min(-1i, -1i)), abs(global1.x), select(global1.x, -1i, true) & ~u_input.a.x) ^ -abs(-vec4<i32>(u_input.c, 29819i, -2147483647i, -2147483647i)));
    var var_1 = ~(-1i);
    let var_2 = !vec2<bool>(!(!any(vec3<bool>(false, global0.b, global0.b))), !(_wgslsmith_f_op_f32(f32(-1f) * -741f) >= _wgslsmith_div_f32(219f, global2[_wgslsmith_index_u32(global3.a, 17u)])));
    var_0 = vec4<u32>(var_0.x, 1u, abs(var_0.x), global3.a) | ~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(23596u, var_0.x, global0.a, u_input.d)), firstLeadingBit(vec4<u32>(global3.a, global3.a, global3.a, global0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec3_u32(~var_0.yzz, var_0.yzx) | _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(var_0.x, var_0.x), 4294967295u, u_input.b.x), var_0.wxy), abs(~(-4391i)));
}

