struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 17>;

var<private> global1: Struct_4;

var<private> global2: array<bool, 9>;

var<private> global3: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32, arg_1: Struct_5, arg_2: bool) -> Struct_4 {
    var var_0 = arg_1.b;
    var_0 = Struct_2(true, var_0.b, select(vec4<i32>(global1.b.a.x, max(~(-29652i), arg_1.e), 0i, i32(-1i) * -1i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.c.a.x, global1.c.a.x), ~u_input.a.yy), 1i, arg_1.d.c.x, -1i), false));
    let var_1 = ~(_wgslsmith_add_vec2_i32(global1.c.a, countOneBits(~vec2<i32>(arg_1.e, 1i))) << (countOneBits(global1.a.xz) % vec2<u32>(32u)));
    var var_2 = vec4<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 9u)], false, !(!arg_1.d.a), true);
    var var_3 = global0[_wgslsmith_index_u32(arg_1.c.x, 17u)];
    return Struct_4(arg_1.c, global1.c, Struct_3(vec2<i32>(_wgslsmith_clamp_i32(44794i, 1i, arg_1.e), abs(14019i)) | var_3.b.c.zx, _wgslsmith_div_u32(~(59176u << (var_3.c.x % 32u)), var_3.c.x)), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.x, 1f, var_3.d.a))), any(vec4<bool>(var_0.a, false, var_0.a, false)) && (_wgslsmith_f_op_f32(-global1.d) <= _wgslsmith_f_op_f32(-global1.d)))));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    var var_0 = Struct_1(global1.d);
    global2 = array<bool, 9>();
    let var_1 = u_input.a;
    let var_2 = global1.a;
    global0 = array<Struct_5, 17>();
    return global1.a;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<f32>) -> vec4<u32> {
    var var_0 = -(~((u_input.a & vec4<i32>(-2147483647i, u_input.a.x, 30900i, 0i)) >> (~vec4<u32>(5202u, arg_1.x, 0u, 0u) % vec4<u32>(32u))) >> (min(_wgslsmith_sub_vec4_u32(max(vec4<u32>(0u, u_input.d, u_input.d, 4294967295u), vec4<u32>(arg_1.x, 36301u, 0u, global1.c.b)), countOneBits(vec4<u32>(global1.a.x, 0u, 14126u, u_input.e.x))), select(min(vec4<u32>(0u, arg_1.x, 4294967295u, 26004u), vec4<u32>(u_input.d, global1.a.x, global1.a.x, 60811u)), vec4<u32>(u_input.d, global1.b.b, global1.b.b, 104832u), true)) % vec4<u32>(32u)));
    global1 = func_2(_wgslsmith_f_op_f32(-271f - 1176f), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.d, abs(arg_1.x)) ^ global1.a.x, 17u)], global2[_wgslsmith_index_u32(~firstTrailingBit(21610u), 9u)]);
    var var_1 = Struct_5(-(~(vec4<i32>(arg_0, global1.c.a.x, -2147483647i, 1i) | vec4<i32>(arg_0, global1.c.a.x, -16677i, -1i))), Struct_2(global2[_wgslsmith_index_u32(min(countOneBits(u_input.d), arg_1.x), 9u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-736f, 196f, 101f, -2072f), vec4<f32>(arg_2.x, global1.d, -498f, 330f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1041f, 1000f, 1449f, global1.d) - vec4<f32>(2605f, global1.d, arg_2.x, arg_2.x)))) - vec4<f32>(-547f, _wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(2171f + 416f), global1.d)), vec4<i32>(u_input.b, select(-55389i, -60353i, any(vec2<bool>(global2[_wgslsmith_index_u32(global1.a.x, 9u)], global2[_wgslsmith_index_u32(51703u, 9u)]))), -14509i, 11857i)), ~(global1.a << (func_3(-arg_0) % vec3<u32>(32u))), Struct_2(all(!select(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(29640u, 9u)]), vec3<bool>(true, true, global2[_wgslsmith_index_u32(arg_1.x, 9u)]), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(trunc(-771f)), arg_2.x, _wgslsmith_f_op_f32(max(-1560f, arg_2.x)), -1000f))), -vec4<i32>(~9635i, u_input.b, 0i, 6725i >> (u_input.e.x % 32u))), -arg_0);
    global0 = array<Struct_5, 17>();
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.a.x, _wgslsmith_dot_vec2_u32(abs(arg_1.yy), vec2<u32>(9284u, var_1.c.x)) << (1u % 32u)) >> (~_wgslsmith_dot_vec3_u32(global1.a >> (var_1.c % vec3<u32>(32u)), max(~arg_1, select(vec3<u32>(u_input.d, u_input.d, 0u), var_1.c, true))) % 32u), 17u)];
    return countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~0u, u_input.d, _wgslsmith_clamp_u32(1u, 4294967295u, u_input.d)), abs(~vec4<u32>(arg_1.x, arg_1.x, 0u, u_input.e.x))) & vec4<u32>(var_1.c.x, func_3(_wgslsmith_clamp_i32(arg_0, arg_0, -1i)).x, 1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-global1.c.a.x, vec3<u32>(68509u, ~(~reverseBits(57766u)), 1u), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d), -1122f), global1.d, global1.d))));
    let var_1 = true;
    global0 = array<Struct_5, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(0u & firstLeadingBit(_wgslsmith_mult_u32(global1.c.b, _wgslsmith_mod_u32(15491u, var_0.x))), global1.b.a, _wgslsmith_sub_vec4_u32(vec4<u32>(global1.a.x, _wgslsmith_sub_u32(var_0.x & var_0.x, u_input.e.x), global1.b.b, global1.a.x), reverseBits(vec4<u32>(~10955u, 0u, 12927u, 1u))), u_input.c);
}

