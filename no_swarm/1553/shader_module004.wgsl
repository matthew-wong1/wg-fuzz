struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(true, false);

var<private> global1: vec2<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>) -> i32 {
    global0 = array<bool, 2>();
    global1 = vec2<bool>(all(select(vec4<bool>(!global0[_wgslsmith_index_u32(arg_1.x, 2u)], global1.x != false, global1.x, true), select(!vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], true, global1.x), select(vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(arg_1.x, 2u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 2u)], true, global0[_wgslsmith_index_u32(u_input.c, 2u)]), global1.x)), select(select(vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(false, true, false, global1.x), vec4<bool>(false, global0[_wgslsmith_index_u32(24180u, 2u)], global1.x, global0[_wgslsmith_index_u32(arg_1.x, 2u)])), !vec4<bool>(false, global1.x, false, true), select(false, global1.x, false)))), !global0[_wgslsmith_index_u32(0u, 2u)]);
    let var_0 = vec3<f32>(2027f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1000f) + _wgslsmith_f_op_f32(step(-227f, -1643f))), _wgslsmith_f_op_f32(f32(-1f) * -961f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(274f, -673f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(292f - 733f) * _wgslsmith_f_op_f32(-108f + _wgslsmith_f_op_f32(f32(-1f) * -654f)))));
    let var_1 = _wgslsmith_div_i32(2147483647i, -2147483647i);
    let var_2 = ~u_input.b.wz;
    return ~reverseBits(var_2.x);
}

fn func_2() -> vec4<i32> {
    let var_0 = (u_input.b.xwz ^ ~vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), u_input.b.x, _wgslsmith_add_i32(u_input.b.x, 0i))) >> (~(~vec3<u32>(~69259u, 3194u, 4294967295u)) % vec3<u32>(32u));
    global1 = vec2<bool>(false, true);
    let var_1 = Struct_1(!select(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(0u, 2u)], false), vec4<bool>(global0[_wgslsmith_index_u32(~0u, 2u)], global1.x, 343u >= u_input.a.x, false), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, var_0.x), u_input.b) > (i32(-1i) * -1i)), vec4<i32>(var_0.x, -17271i, -25448i, -min(func_3(u_input.b, u_input.a), _wgslsmith_div_i32(var_0.x, 2147483647i))), u_input.a, u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(747f)))))));
    global0 = array<bool, 2>();
    var var_2 = Struct_1(var_1.a, var_1.b, _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(countOneBits(~vec2<u32>(u_input.c, u_input.a.x)), var_1.d, ~abs(u_input.a)), vec2<u32>(u_input.a.x, 23586u)), vec2<u32>(~19328u, var_1.c.x), var_1.e);
    return ~vec4<i32>(88321i, 1i, 16105i, firstTrailingBit(var_0.x)) << (reverseBits(vec4<u32>(max(_wgslsmith_div_u32(var_1.d.x, var_1.d.x), u_input.c), 4294967295u, 4294967295u, ~_wgslsmith_dot_vec2_u32(var_2.c, vec2<u32>(0u, var_2.d.x)))) % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_div_vec4_i32(func_2(), vec4<i32>(_wgslsmith_add_i32(41708i, arg_1.b.x) << (4294967295u % 32u), arg_0.b.x, -19308i, 1i)) >> (reverseBits(min(~(~vec4<u32>(arg_1.d.x, 4294967295u, arg_1.c.x, arg_1.d.x)), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(0u, 1u, 57380u, arg_1.d.x)), max(vec4<u32>(14482u, 0u, 686u, arg_1.d.x), vec4<u32>(u_input.a.x, arg_0.d.x, arg_0.d.x, 1u))))) % vec4<u32>(32u));
    global1 = vec2<bool>((_wgslsmith_sub_u32(0u, select(arg_0.c.x, arg_1.c.x, true)) ^ reverseBits(u_input.a.x << (1u % 32u))) < u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.e * arg_1.e))) - _wgslsmith_f_op_f32(abs(arg_1.e))));
    global1 = !select(!select(select(vec2<bool>(global0[_wgslsmith_index_u32(arg_1.c.x, 2u)], arg_0.a.x), arg_1.a.xx, true), select(arg_0.a.xw, arg_1.a.zx, arg_1.a.wy), true), vec2<bool>(true == arg_0.a.x, global1.x), all(vec2<bool>(any(vec4<bool>(false, true, true, true)), any(vec3<bool>(false, false, true)))));
    global0 = array<bool, 2>();
    var var_1 = 0u;
    return StorageBuffer(56049u, reverseBits(~(~arg_1.b.ywz) | firstLeadingBit(countOneBits(u_input.b.zyy))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e, -1453f, arg_1.e, 192f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.e, arg_1.e, 307f, arg_1.e), vec4<f32>(arg_0.e, -753f, arg_0.e, 845f), global1.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.e, arg_0.e, -1242f, arg_1.e)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<bool>(true, all(vec4<bool>(any(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)])), false, !(u_input.b.x < u_input.b.x), select(!global1.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(936u, u_input.a.x, u_input.a.x, u_input.c)), 2u)], true))));
    let x = u_input.a;
    s_output = func_1(Struct_1(select(vec4<bool>(global1.x | global0[_wgslsmith_index_u32(u_input.c, 2u)], global0[_wgslsmith_index_u32(27698u, 2u)] != global0[_wgslsmith_index_u32(u_input.c, 2u)], any(vec3<bool>(false, true, global1.x)), global0[_wgslsmith_index_u32(u_input.a.x, 2u)] || global0[_wgslsmith_index_u32(0u, 2u)]), !vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(true, true, global1.x, global1.x)), vec4<i32>(-39692i, u_input.b.x, min(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), u_input.b.x), u_input.b.x), u_input.a, vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, u_input.c, 104271u), u_input.c) << (~select(u_input.a, vec2<u32>(u_input.c, u_input.a.x), vec2<bool>(false, false)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1302f + -118f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(375f, 598f))))), Struct_1(!select(!vec4<bool>(global1.x, true, global0[_wgslsmith_index_u32(1u, 2u)], global1.x), vec4<bool>(false, true, false, false), global1.x), _wgslsmith_add_vec4_i32(u_input.b, ~(-u_input.b)), _wgslsmith_div_vec2_u32(~(vec2<u32>(u_input.c, u_input.a.x) | vec2<u32>(33233u, 1u)), u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(~4251u, abs(93487u)), select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.c), vec2<u32>(u_input.c, u_input.a.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.c), u_input.a), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(291f))))));
}

