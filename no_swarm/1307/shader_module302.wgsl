struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
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

var<private> global0: Struct_3;

var<private> global1: array<vec3<i32>, 9>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_3(_wgslsmith_mult_vec3_i32(-global1[_wgslsmith_index_u32(u_input.d.x, 9u)] << (vec3<u32>(abs(4294967295u), u_input.d.x, global0.b.a.d.x) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_clamp_i32(i32(-1i) * -12435i, _wgslsmith_mod_i32(global0.a.x, -24980i), ~global0.b.b.x), select(~(-2147483647i), abs(u_input.c), true), abs(1i))), global0.b);
    let var_1 = var_0.b.a.b.x;
    let var_2 = Struct_1(var_0.b.a.a, !select(vec4<bool>(true, all(global0.b.a.b.xxy), var_0.b.a.b.x, true || global0.b.a.b.x), vec4<bool>(true, any(global0.b.a.c.xx), false, true), select(select(var_0.b.a.b, vec4<bool>(global0.b.a.b.x, true, true, var_0.b.a.b.x), var_0.b.a.b), vec4<bool>(false, var_0.b.a.b.x, false, false), vec4<bool>(global0.b.a.b.x, var_0.b.a.c.x, false, global0.b.a.c.x))), vec3<bool>(true, false, false), ~_wgslsmith_mult_vec4_u32(u_input.a, select(firstTrailingBit(global0.b.a.d), var_0.b.a.d, var_0.b.a.b)));
    let var_3 = global0.b.a;
    var_0 = Struct_3(select(min(vec3<i32>(var_3.a.x, var_0.a.x, global0.b.b.x) << (vec3<u32>(global0.b.a.d.x, 35223u, 4294967295u) % vec3<u32>(32u)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(13664i, 0i, -7323i), var_3.a.xyz)), vec3<i32>(max(u_input.c, -28265i) ^ _wgslsmith_mod_i32(0i, 6067i), max(global0.a.x, 43114i) ^ 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, -22112i), var_3.a.zz)), var_0.b.a.b.zxw), Struct_2(Struct_1(vec4<i32>(var_3.a.x, 0i, 4622i, 1i), global0.b.a.b, global0.b.a.b.zxz, abs(global0.b.a.d) & (var_2.d ^ global0.b.a.d)), firstLeadingBit(global1[_wgslsmith_index_u32(global0.b.a.d.x, 9u)])));
    return vec3<i32>(select(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-1i, -32691i) | global0.a.zy), -(vec2<i32>(u_input.c, 1i) >> (var_2.d.yz % vec2<u32>(32u)))), -2697i | _wgslsmith_add_i32(var_3.a.x, ~0i), any(!(!global0.b.a.c.xy))), 1i, ~(~(~(-2147483647i))));
}

fn func_2() -> i32 {
    global0 = Struct_3(global0.b.a.a.zzz, Struct_2(global0.b.a, func_3() >> (u_input.a.zww % vec3<u32>(32u))));
    global0 = Struct_3(-(vec3<i32>(-global0.b.a.a.x, _wgslsmith_add_i32(global0.a.x, -1i), select(u_input.c, global0.a.x, global0.b.a.c.x)) | -_wgslsmith_add_vec3_i32(vec3<i32>(global0.b.a.a.x, 902i, u_input.c), global0.a)), global0.b);
    global1 = array<vec3<i32>, 9>();
    var var_0 = global0.b.a;
    let var_1 = Struct_1(_wgslsmith_add_vec4_i32(global0.b.a.a, vec4<i32>(0i, reverseBits(-115i), countOneBits(u_input.c), min(var_0.a.x, u_input.c))), !vec4<bool>(select(false, var_0.c.x, global0.b.a.b.x) | (global0.b.a.a.x >= 32198i), global0.b.a.b.x, global0.b.a.c.x, var_0.c.x), !global0.b.a.b.xyy, vec4<u32>(1u >> (max(abs(u_input.a.x), u_input.b.x) % 32u), ~min(47385u, abs(global0.b.a.d.x)), ~_wgslsmith_div_u32(1u, global0.b.a.d.x) ^ (u_input.d.x & u_input.d.x), 0u));
    return var_1.a.x;
}

fn func_1() -> u32 {
    let var_0 = ~vec3<i32>(func_2(), u_input.c, _wgslsmith_div_i32(abs(global0.b.a.a.x), u_input.c));
    return ~_wgslsmith_mod_u32(u_input.b.x, 8696u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(firstLeadingBit(~4294967295u), u_input.b.x), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(func_1(), ~32731u)), vec2<u32>(u_input.a.x, abs(global0.b.a.d.x))));
    var var_1 = Struct_3(firstLeadingBit(~_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -20798i, u_input.c), global0.b.b), vec3<i32>(2147483647i, global0.b.a.a.x, u_input.c))), Struct_2(Struct_1(-vec4<i32>(2147483647i, -2147483647i, global0.a.x, -41164i) & ~vec4<i32>(12031i, -67826i, global0.b.a.a.x, 0i), select(vec4<bool>(global0.b.a.c.x, global0.b.a.b.x, false, global0.b.a.c.x), vec4<bool>(false, true, true, global0.b.a.b.x), global0.b.a.b.x), vec3<bool>(!global0.b.a.c.x, true, !global0.b.a.c.x), reverseBits(~global0.b.a.d)), vec3<i32>(-35092i, select(2147483647i, global0.b.b.x, global0.b.a.b.x), global0.b.a.a.x)));
    var_1 = Struct_3(min(global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_1.b.a.d.xyx, u_input.a.wwz), reverseBits(vec3<u32>(u_input.d.x, var_1.b.a.d.x, var_1.b.a.d.x))), _wgslsmith_mod_u32(var_1.b.a.d.x, ~var_1.b.a.d.x)), 9u)], _wgslsmith_div_vec3_i32(vec3<i32>(~1i, global0.b.b.x, _wgslsmith_mod_i32(var_1.a.x, 1i)), _wgslsmith_div_vec3_i32(~vec3<i32>(-1i, u_input.c, -2147483647i), -vec3<i32>(var_1.a.x, -36246i, -5486i)))), Struct_2(global0.b.a, var_1.b.b | -vec3<i32>(var_1.a.x, 11757i, 1i)));
    var var_2 = Struct_3(-(~var_1.b.a.a.yxx), var_1.b);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(253f, 1000f) + vec2<f32>(1000f, 829f))))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(276f, 712f), vec2<f32>(1000f, -1000f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1356f, -575f), vec2<f32>(-1019f, -626f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1257f, 661f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-787f, 317f)))), vec2<f32>(_wgslsmith_div_f32(426f, 843f), _wgslsmith_f_op_f32(860f * -361f)))), select(select(!var_1.b.a.b.xz, !var_1.b.a.c.xz, any(vec2<bool>(var_1.b.a.c.x, true))), select(select(global0.b.a.c.zy, var_2.b.a.b.wz, vec2<bool>(var_1.b.a.c.x, var_2.b.a.b.x)), select(var_1.b.a.c.zx, vec2<bool>(var_2.b.a.c.x, true), global0.b.a.b.x), var_2.b.a.c.x), var_2.b.a.c.x))));
    var var_4 = Struct_3(firstTrailingBit(vec3<i32>(min(_wgslsmith_clamp_i32(global0.a.x, u_input.c, u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, var_2.b.b.x, var_2.b.a.a.x), vec4<i32>(0i, -2147483647i, var_1.b.a.a.x, 0i))), ~global0.a.x, _wgslsmith_mult_i32(min(var_1.a.x, var_1.a.x), -2147483647i))), Struct_2(global0.b.a, ~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, var_1.b.a.d.x), 9u)]));
    var_1 = Struct_3(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(1i, 1i, global0.a.x), var_1.b.b), vec3<i32>(13356i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_4.a.x, var_2.b.b.x, 63819i, var_2.b.b.x), global0.b.a.a), u_input.c), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(8305i, var_4.b.b.x), var_1.a.yy), _wgslsmith_div_i32(var_2.a.x, 2147483647i), -25968i)), ~(vec3<i32>(var_1.b.b.x, var_2.b.b.x, var_1.b.b.x) | _wgslsmith_add_vec3_i32(vec3<i32>(23491i, u_input.c, var_4.b.a.a.x), var_2.b.a.a.xxy))), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.b.x);
}

