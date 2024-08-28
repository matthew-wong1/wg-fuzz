struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 25894u;

var<private> global1: bool = false;

var<private> global2: array<i32, 32> = array<i32, 32>(i32(-2147483648), 1i, 1i, 2147483647i, 48836i, i32(-2147483648), -58915i, 44199i, 0i, -1i, i32(-2147483648), -48667i, -5996i, i32(-2147483648), -1i, 1i, i32(-2147483648), i32(-2147483648), i32(-2147483648), i32(-2147483648), 22636i, -1i, i32(-2147483648), i32(-2147483648), -57274i, -9832i, -1i, -1i, 1i, 23229i, -37246i, -2752i);

var<private> global3: array<bool, 18> = array<bool, 18>(true, false, true, true, false, false, true, false, false, false, true, false, false, true, false, true, false, true);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(_wgslsmith_mod_vec4_i32(~(~firstLeadingBit(vec4<i32>(u_input.a.x, global2[_wgslsmith_index_u32(u_input.b.x, 32u)], u_input.c.x, -16543i))), max(_wgslsmith_div_vec4_i32(vec4<i32>(1i, global2[_wgslsmith_index_u32(u_input.b.x, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)], u_input.a.x) & vec4<i32>(-25978i, -12932i, global2[_wgslsmith_index_u32(69649u, 32u)], -34066i), ~vec4<i32>(-35273i, global2[_wgslsmith_index_u32(u_input.b.x, 32u)], global2[_wgslsmith_index_u32(u_input.b.x, 32u)], 1i)), vec4<i32>(u_input.a.x, 51900i, global2[_wgslsmith_index_u32(53349u, 32u)], 64729i) & ~vec4<i32>(0i, -2147483647i, -60587i, -1i))), global3[_wgslsmith_index_u32(u_input.b.x, 18u)], !(!vec2<bool>(false, u_input.b.x != u_input.b.x)), -max(firstLeadingBit(max(vec2<i32>(u_input.a.x, global2[_wgslsmith_index_u32(u_input.b.x, 32u)]), u_input.c.yx)), u_input.a));
    var_0 = Struct_3(vec4<i32>(var_0.d.x >> ((firstTrailingBit(u_input.b.x) << (~u_input.b.x % 32u)) % 32u), _wgslsmith_dot_vec4_i32((vec4<i32>(global2[_wgslsmith_index_u32(17583u, 32u)], global2[_wgslsmith_index_u32(u_input.b.x, 32u)], -1i, 1i) << (u_input.b % vec4<u32>(32u))) ^ select(vec4<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 32u)], var_0.d.x, var_0.d.x, u_input.a.x), var_0.a, vec4<bool>(var_0.b, false, true, true)), -firstLeadingBit(vec4<i32>(global2[_wgslsmith_index_u32(1u, 32u)], 23724i, 22831i, global2[_wgslsmith_index_u32(30646u, 32u)]))), 12608i, -39208i), true, !(!vec2<bool>(var_0.c.x || true, any(vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(0u, 18u)])))), countOneBits(min(select(u_input.a, _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(var_0.d.x, 16495i)), vec2<bool>(true, true)), vec2<i32>(-73325i, -2147483647i))));
    global2 = array<i32, 32>();
    var_0 = Struct_3(var_0.a, true, var_0.c, _wgslsmith_add_vec2_i32(~firstTrailingBit(vec2<i32>(27095i, var_0.a.x)) & firstTrailingBit(u_input.a), ~abs(vec2<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 32u)], global2[_wgslsmith_index_u32(0u, 32u)]) >> (u_input.b.zx % vec2<u32>(32u)))));
    global3 = array<bool, 18>();
    return 35310u;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: f32) -> vec4<bool> {
    var var_0 = -(vec4<i32>(~0i, 1i, global2[_wgslsmith_index_u32(~abs(u_input.b.x), 32u)], global2[_wgslsmith_index_u32(func_3(), 32u)]) >> (~u_input.b % vec4<u32>(32u)));
    var var_1 = Struct_3(vec4<i32>(firstTrailingBit(u_input.c.x), global2[_wgslsmith_index_u32(~(~23611u), 32u)] ^ abs(2147483647i), ~21180i, ~_wgslsmith_div_i32(~var_0.x, i32(-1i) * -2147483647i)), true, vec2<bool>(abs(~u_input.b.x) == abs(abs(u_input.b.x)), true), max(-select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, var_0.x), u_input.c.xx, var_0.zx), vec2<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 32u)], 0i), vec2<bool>(true, true)), _wgslsmith_mult_vec2_i32(u_input.a, -vec2<i32>(-1i, u_input.c.x))));
    var_0 = var_1.a << (~u_input.b % vec4<u32>(32u));
    global1 = true;
    let var_2 = arg_1.xx;
    return vec4<bool>(any(arg_0.zz), true, global3[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(1u, u_input.b.x)), 18u)], true);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = u_input.b.ywy;
    var var_1 = !func_2(!select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 18u)], global3[_wgslsmith_index_u32(0u, 18u)], arg_0), vec3<bool>(true, false, arg_0), select(vec3<bool>(true, true, arg_0), vec3<bool>(global3[_wgslsmith_index_u32(var_0.x, 18u)], true, global3[_wgslsmith_index_u32(u_input.b.x, 18u)]), vec3<bool>(arg_0, global3[_wgslsmith_index_u32(1u, 18u)], true))), !(!select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 18u)], false, true), vec3<bool>(false, arg_0, false), vec3<bool>(true, global3[_wgslsmith_index_u32(37068u, 18u)], false))), _wgslsmith_f_op_f32(2558f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -552f) - _wgslsmith_f_op_f32(f32(-1f) * -137f))));
    var var_2 = Struct_2(Struct_1(false, -u_input.c.xz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * -1180f), arg_0, Struct_1(any(!vec4<bool>(true, false, true, var_1.x)), vec2<i32>(select(~global2[_wgslsmith_index_u32(5328u, 32u)], ~(-61796i), !var_1.x), countOneBits(-51802i))));
    global1 = var_2.b > _wgslsmith_f_op_f32(floor(var_2.b));
    global3 = array<bool, 18>();
    return var_2.d;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_3) -> f32 {
    var var_0 = select(vec4<bool>(arg_0.a, true, arg_2, !(!(true && arg_0.a))), vec4<bool>(arg_3.b, select(!all(arg_3.c), true, false), arg_0.a, false), func_2(!select(vec3<bool>(false, arg_3.b, arg_0.a), select(vec3<bool>(arg_0.a, false, arg_2), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 18u)], arg_3.b, true), vec3<bool>(true, arg_2, arg_2)), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 18u)], global3[_wgslsmith_index_u32(u_input.b.x, 18u)], arg_2)), select(select(vec3<bool>(arg_2, true, true), !vec3<bool>(arg_2, true, true), select(vec3<bool>(arg_3.c.x, global3[_wgslsmith_index_u32(10077u, 18u)], arg_2), vec3<bool>(arg_3.c.x, true, false), vec3<bool>(true, false, arg_0.a))), !vec3<bool>(false, false, global3[_wgslsmith_index_u32(u_input.b.x, 18u)]), all(select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 18u)], arg_2), vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 18u)], arg_0.a), true))), 2038f));
    global1 = arg_3.c.x;
    let var_1 = Struct_2(func_1(true), _wgslsmith_f_op_f32(-arg_1.x), func_2(select(select(select(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b.x, 18u)], global3[_wgslsmith_index_u32(u_input.b.x, 18u)]), vec3<bool>(false, false, false), false), !var_0.zzx, select(vec3<bool>(global3[_wgslsmith_index_u32(51237u, 18u)], true, true), var_0.yxy, true)), func_2(select(var_0.zwz, var_0.zwx, vec3<bool>(false, true, false)), !vec3<bool>(true, true, arg_3.b), arg_1.x).yzz, !(!vec3<bool>(arg_2, true, true))), vec3<bool>(true, true, global3[_wgslsmith_index_u32(u_input.b.x, 18u)]), -922f).x, Struct_1(u_input.b.x <= _wgslsmith_div_u32(1u & u_input.b.x, u_input.b.x), ~u_input.a));
    let var_2 = u_input.b.yx;
    var_0 = !vec4<bool>(any(!vec4<bool>(var_1.c, false, false, global3[_wgslsmith_index_u32(var_2.x, 18u)])), global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, u_input.b.x, 9492u, var_2.x), u_input.b)), 18u)], arg_3.b, arg_3.c.x);
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 32>();
    global1 = global3[_wgslsmith_index_u32(~countOneBits(_wgslsmith_div_u32(~(~u_input.b.x), 12047u)), 18u)];
    global2 = array<i32, 32>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-751f, -1896f, -433f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-484f, 448f, 1235f), vec3<f32>(2204f, 116f, -150f), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 18u)], global3[_wgslsmith_index_u32(1u, 18u)], false))))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(global3[_wgslsmith_index_u32(54324u, 18u)]), vec4<f32>(471f, -322f, 845f, 732f), !global3[_wgslsmith_index_u32(4294967295u, 18u)], Struct_3(vec4<i32>(-457i, -2147483647i, -12682i, global2[_wgslsmith_index_u32(0u, 32u)]), true, vec2<bool>(false, global3[_wgslsmith_index_u32(29831u, 18u)]), u_input.a))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-421f * -1543f) + 737f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1105f, 623f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(362f - 1091f), 1156f)))));
    let var_1 = u_input.b.xxy;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~vec2<u32>(max(4294967295u, 0u), reverseBits(u_input.b.x))));
}

