struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(1i, Struct_3(vec3<bool>(true, false, false), -37644i, vec4<f32>(-364f, -1914f, -1539f, -283f), Struct_2(Struct_1(1102f, vec4<f32>(-180f, 145f, 2672f, -1000f), 76370u, -51801i, -699f))));

var<private> global1: array<u32, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    global0 = Struct_4(i32(-1i) * -67715i, global0.b);
    let var_0 = !select(vec4<bool>(true, true, true, true), !(!vec4<bool>(global0.b.a.x, global0.b.a.x, global0.b.a.x, true)), -37761i != u_input.d.x);
    let var_1 = any(vec4<bool>(global0.b.a.x, all(vec2<bool>(global0.b.a.x, false)), all(!vec2<bool>(global0.b.a.x, true)), var_0.x)) && true;
    var var_2 = Struct_4(~_wgslsmith_add_i32(37212i, -2147483647i), global0.b);
    let var_3 = vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-154f * var_2.b.d.a.b.x), global0.b.c.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2212f, 650f)))) - var_2.b.c.x), _wgslsmith_f_op_f32(var_2.b.c.x * var_2.b.d.a.e));
    return global0.b.d.a.c >> (global0.b.d.a.c % 32u);
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    var var_0 = ~((u_input.b >> (vec4<u32>(11038u, func_3(), global1[_wgslsmith_index_u32(58448u >> (u_input.a.x % 32u), 22u)], firstTrailingBit(global0.b.d.a.c)) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(27505u, 1u, u_input.a.x), countOneBits(42338u)), 1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, global1[_wgslsmith_index_u32(140414u, 22u)]), vec2<u32>(1u, 1u)), 30859u) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(global0.b.c.zww * _wgslsmith_f_op_vec3_f32(-global0.b.d.a.b.wyz));
    var_0 = ~vec4<u32>(1u, u_input.b.x, ~firstLeadingBit(global1[_wgslsmith_index_u32(firstTrailingBit(var_0.x), 22u)]), (_wgslsmith_mod_u32(44332u, 1u) & ~global1[_wgslsmith_index_u32(var_0.x, 22u)]) << (u_input.c % 32u));
    var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.c.x, 1543f, 381f)) - vec3<f32>(-139f, _wgslsmith_div_f32(var_1.x, -1470f), -431f)))), global0.b.d.a.b.xxx, !vec3<bool>(!global0.b.a.x, select(false, true, false), true)));
    global1 = array<u32, 22>();
    return global0.b;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<i32>) -> Struct_3 {
    var var_0 = ~(i32(-1i) * -2147483647i);
    var var_1 = arg_0;
    var var_2 = func_2(firstLeadingBit(max(abs(u_input.b.xxx), vec3<u32>(0u, arg_1, 0u))) << (u_input.b.xyy % vec3<u32>(32u)));
    let var_3 = u_input.b;
    var var_4 = Struct_4(_wgslsmith_mod_i32(_wgslsmith_sub_i32(21137i, i32(-1i) * -2147483647i), abs(arg_0)) & -37727i, global0.b);
    return func_2(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(28676u, var_3.x, global0.b.d.a.c), vec3<u32>(global0.b.d.a.c ^ 1u, var_3.x >> (var_2.d.a.c % 32u), 49384u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<i32>) -> StorageBuffer {
    let var_0 = u_input.d.xy;
    global0 = arg_1;
    var var_1 = Struct_3(!(!(!func_2(vec3<u32>(arg_0.c, 57469u, arg_1.b.d.a.c)).a)), arg_1.b.b, _wgslsmith_f_op_vec4_f32(-arg_0.b), Struct_2(arg_0));
    var var_2 = Struct_2(arg_1.b.d.a);
    global0 = Struct_4(-1i, func_2(~(u_input.b.wwx ^ ~u_input.b.xxx)));
    return StorageBuffer(-vec4<i32>(var_2.a.d & 0i, ~(-u_input.d.x), ~(var_2.a.d >> (4294967295u % 32u)), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b.d;
    var var_1 = global0.b.a.x;
    var var_2 = global0.b.a;
    var var_3 = _wgslsmith_mult_vec2_u32(u_input.b.xz, ~select(u_input.a.xz, reverseBits(reverseBits(vec2<u32>(0u, 60556u))), select(global0.b.a.xy, vec2<bool>(var_2.x, global0.b.a.x), any(vec4<bool>(global0.b.a.x, true, global0.b.a.x, false)))));
    var var_4 = global0.b;
    var var_5 = 1u;
    let x = u_input.a;
    s_output = func_4(var_4.d.a, Struct_4(select(-41367i, var_0.a.d, var_2.x) & _wgslsmith_dot_vec2_i32(select(vec2<i32>(0i, global0.b.d.a.d), u_input.d.yz, global0.b.a.x), vec2<i32>(global0.a, var_4.b)), func_1(_wgslsmith_dot_vec2_i32(u_input.d.zy & u_input.d.yy, u_input.d.xy), var_3.x, u_input.d)), vec4<i32>(~_wgslsmith_add_i32(firstLeadingBit(var_4.b), -2147483647i), -48065i, var_0.a.d | -5889i, ~0i));
}

