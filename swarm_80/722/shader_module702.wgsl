struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 57309u);

var<private> global1: Struct_2 = Struct_2(false, vec3<bool>(false, false, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-347f, _wgslsmith_f_op_f32(-888f + 706f))))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-139f, -861f) + -481f));
    global0 = _wgslsmith_add_vec2_u32(u_input.a.yz, ~vec2<u32>(0u, u_input.a.x));
    let var_1 = global1.a;
    var var_2 = select(!(!(!select(global1.b.zy, global1.b.xy, false))), global1.b.zy, !vec2<bool>(true, !(global1.a && global1.a)));
    var var_3 = any(vec4<bool>(var_2.x, !(!var_2.x), !(arg_0.x != 0u), false));
    return u_input.b;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> vec4<u32> {
    global0 = ~firstTrailingBit(u_input.a.wx);
    var var_0 = -(i32(-1i) * -18195i);
    var var_1 = Struct_3(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -30690i), ~vec2<i32>(u_input.b, u_input.b)), max(57003i, -21369i)) ^ -firstLeadingBit(func_3(u_input.a.xwx)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -795f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1021f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x - -794f))))));
    let var_3 = Struct_4(arg_0);
    return ~(~(~(max(vec4<u32>(global0.x, 4294967295u, arg_2.c.x, 4294967295u), u_input.a) >> (_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, global0.x, global0.x, arg_2.c.x)) % vec4<u32>(32u)))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = 65834u;
    var_0 = abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.x, arg_0.x, global0.x, arg_0.x), func_2(Struct_2(global1.a, global1.b), Struct_2(false, global1.b), Struct_1(0i, vec4<f32>(128f, 696f, -403f, 389f), arg_0.xzx, global0.x, global1.a))), 1u) & max(~1u, 4294967295u));
    global0 = u_input.a.ww;
    var var_1 = _wgslsmith_sub_i32(countOneBits(_wgslsmith_add_i32(45695i, 1i) & _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b, u_input.b), ~2147483647i)), ~_wgslsmith_sub_i32(-14740i, ~(-u_input.b)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1566f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(144f, 1424f)), _wgslsmith_f_op_f32(1000f + 1000f), false)) + _wgslsmith_f_op_f32(621f * 831f)), -166f)));
    return Struct_2(all(global1.b), vec3<bool>(all(!global1.b.xx), global1.a, all(!vec2<bool>(false, global1.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(~(~(~u_input.a))));
    global0 = firstLeadingBit(~vec2<u32>(34094u, u_input.a.x) >> (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u)));
    let var_1 = var_0;
    let var_2 = !(!select(!select(vec4<bool>(false, var_1.b.x, global1.b.x, true), vec4<bool>(true, var_1.a, true, var_0.a), vec4<bool>(global1.b.x, global1.a, var_0.b.x, false)), vec4<bool>(u_input.a.x != global0.x, true, any(vec3<bool>(var_1.a, false, true)), select(var_1.b.x, var_1.a, true)), vec4<bool>(all(global1.b.zx), true, !global1.b.x, var_1.a)));
    var var_3 = _wgslsmith_add_i32(firstLeadingBit(reverseBits(u_input.b)), _wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_div_vec4_i32(~vec4<i32>(-1i, u_input.b, 35386i, u_input.b), ~vec4<i32>(u_input.b, 44673i, u_input.b, u_input.b))), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 1i, -2147483647i, u_input.b) >> (vec4<u32>(u_input.a.x, 4294967295u, 114380u, global0.x) % vec4<u32>(32u)), reverseBits(vec4<i32>(u_input.b, 0i, 0i, 26505i)), vec4<i32>(u_input.b, u_input.b, -31386i, -2361i) & vec4<i32>(u_input.b, u_input.b, -41173i, u_input.b)), ~min(vec4<i32>(1i, -2147483647i, u_input.b, -24627i), vec4<i32>(-2147483647i, -11738i, 6972i, -1i)))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1717f, _wgslsmith_div_f32(211f, -743f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(498f, -889f)))));
    let var_5 = Struct_3(_wgslsmith_mod_i32(countOneBits(u_input.b), -countOneBits(_wgslsmith_mult_i32(0i, -1i))));
    let var_6 = Struct_2(all(!select(func_1(u_input.a).b, !vec3<bool>(var_2.x, var_1.b.x, false), var_1.b)), var_1.b);
    var_3 = ~(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.xwy | u_input.a.xyy, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1195f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1527f)), -1043f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-219f * 733f)) + 1879f)), min(global0.x, abs(0u)) >> (~global0.x % 32u), _wgslsmith_div_vec2_u32((u_input.a.wz | ~u_input.a.xz) & (u_input.a.yx >> (u_input.a.wz % vec2<u32>(32u))), ~(~vec2<u32>(73750u, global0.x)) >> (((vec2<u32>(0u, global0.x) >> (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u))) & ~vec2<u32>(u_input.a.x, global0.x)) % vec2<u32>(32u))));
}

