struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<bool>,
    e: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: array<Struct_1, 22>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(621f, -2477f, -181f, 1329f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2185f, 612f, 1829f, -901f)), arg_3.a.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-281f, 2818f, -1812f, -1263f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(611f, 1852f, 282f, -201f))))), !arg_3.a.a.x))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-446f, var_0.x))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-160f, -3051f)), _wgslsmith_f_op_vec2_f32(-var_0.wy))))), Struct_1(select(!arg_3.a.a, vec4<bool>(arg_0, all(arg_3.a.a.yzw), true, arg_0), !(!arg_0)), vec4<i32>(-(~arg_3.b.x), 0i, 2147483647i, _wgslsmith_dot_vec4_i32(arg_3.b, arg_3.b >> (vec4<u32>(arg_3.a.c, 5262u, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 0u) % vec4<u32>(32u)))), 1u), vec4<u32>(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(abs(3423u), 20u)], 1u), 20u)], arg_3.a.c, _wgslsmith_add_u32(countOneBits(13039u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(30202u, u_input.b.x, u_input.b.x, arg_3.a.c), vec4<u32>(arg_1.c, u_input.b.x, arg_3.a.c, 0u)) & ~0u, 20u)]), max(max(40745u, ~arg_1.c), 1u)));
    let var_2 = Struct_1(vec4<bool>(arg_1.a.x, !arg_3.d.x, var_1.b.a.x, false), -var_1.b.b, abs(_wgslsmith_div_u32(arg_1.c, ~arg_1.c)));
    let var_3 = vec2<f32>(var_0.x, -1616f);
    return min(_wgslsmith_dot_vec4_u32(~(vec4<u32>(var_1.c.x, global0[_wgslsmith_index_u32(122377u, 20u)], 4294967295u, var_2.c) << ((vec4<u32>(global0[_wgslsmith_index_u32(0u, 20u)], 25420u, 93516u, u_input.b.x) ^ vec4<u32>(1u, 0u, 0u, u_input.b.x)) % vec4<u32>(32u))), ~var_1.c), abs(var_2.c));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<bool>) -> f32 {
    let var_0 = Struct_2(arg_0, (firstLeadingBit(vec4<i32>(0i, -1i, arg_0.b.x, -2147483647i)) >> (vec4<u32>(~global0[_wgslsmith_index_u32(arg_0.c, 20u)], _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 4294967295u, 4294967295u), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 1u, 51978u), func_3(arg_2.x, Struct_1(arg_0.a, arg_0.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(120068u, 20u)], 20u)], 20u)]), 25663i, Struct_2(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.c, 20u)], 22u)], vec4<i32>(arg_0.b.x, 10774i, -57279i, arg_0.b.x), global1[_wgslsmith_index_u32(1u, 22u)], vec4<bool>(true, arg_0.a.x, true, true), -34027i))) % vec4<u32>(32u))) >> (~(~vec4<u32>(u_input.b.x, 0u, 109453u, u_input.b.x)) % vec4<u32>(32u)), arg_0, arg_0.a, firstTrailingBit(1i));
    let var_1 = -1079f;
    let var_2 = _wgslsmith_clamp_vec2_u32(~(~(~min(u_input.b.xz, u_input.b.zz))), u_input.b.zx, _wgslsmith_div_vec2_u32(max(max(~u_input.b.xz, u_input.b.xy >> (vec2<u32>(global0[_wgslsmith_index_u32(66812u, 20u)], u_input.b.x) % vec2<u32>(32u))), vec2<u32>(u_input.b.x, _wgslsmith_mod_u32(11055u, 23345u))), firstLeadingBit(vec2<u32>(arg_0.c, u_input.b.x))));
    global0 = array<u32, 20>();
    var var_3 = vec2<bool>(arg_2.x, arg_2.x);
    return var_1;
}

fn func_1() -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-184f - -1874f)), _wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(-3873i, 29038i, u_input.a.x, u_input.a.x), u_input.b.x), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)))))), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(7486i, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a) << (u_input.b.x % 32u), _wgslsmith_sub_i32(~2147483647i, u_input.a.x), ~(-37871i)), u_input.b.x), select(~max(~vec4<u32>(u_input.b.x, 12119u, global0[_wgslsmith_index_u32(122175u, 20u)], 0u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 61193u, global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)])), ~min(~vec4<u32>(u_input.b.x, 44817u, 77688u, u_input.b.x), vec4<u32>(u_input.b.x, 0u, 61170u, 14582u) & vec4<u32>(64817u, 48699u, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(14330u, 20u)])), true));
    var var_1 = u_input.b.x;
    let var_2 = Struct_1(!select(select(var_0.b.a, var_0.b.a, true), var_0.b.a, select(!vec4<bool>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, true), select(vec4<bool>(var_0.b.a.x, true, var_0.b.a.x, var_0.b.a.x), vec4<bool>(var_0.b.a.x, false, var_0.b.a.x, var_0.b.a.x), var_0.b.a), var_0.b.a.x)), _wgslsmith_mult_vec4_i32(var_0.b.b, vec4<i32>(u_input.a.x, _wgslsmith_add_i32(var_0.b.b.x, 69460i), var_0.b.b.x, _wgslsmith_clamp_i32(0i, 44840i, -1i)) >> (vec4<u32>(0u, ~u_input.b.x, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 20u)], 23958u), u_input.b.x & 29639u) % vec4<u32>(32u))), ~global0[_wgslsmith_index_u32(var_0.c.x, 20u)]);
    return -2255f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-630f)))));
    let var_2 = u_input.b.x;
    var var_3 = -1131f;
    var var_4 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(46439u, func_3(true, Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(8920i, var_0.x, var_0.x, 2147483647i), var_2), var_0.x, Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(-51034i, 39054i, 1i, 2147483647i), 32148u), vec4<i32>(4724i, 34413i, var_0.x, var_0.x), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(var_0.x, 2147483647i, 2147483647i, u_input.a.x), var_2), vec4<bool>(true, true, false, true), var_0.x))) | min(~4294967295u, _wgslsmith_mult_u32(1u, ~global0[_wgslsmith_index_u32(~1u, 20u)])), 20u)];
    var var_5 = 2777i;
    var var_6 = !(!(!vec2<bool>(true, select(true, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

