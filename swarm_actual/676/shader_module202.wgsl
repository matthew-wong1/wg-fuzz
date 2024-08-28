struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec4<bool>;

var<private> global2: array<i32, 21> = array<i32, 21>(-2040i, 38432i, 29851i, -18389i, -1i, 1i, -1i, 2147483647i, -40310i, 10613i, -1i, 2147483647i, 8797i, 0i, -14974i, 20868i, 2147483647i, -28738i, -30212i, i32(-2147483648), -2896i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 447f, 2385f) * vec3<f32>(global0.x, global0.x, -1260f))))))));
    let var_0 = Struct_1(true, !(!global1.zzw), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) + 1250f), u_input.b.x | abs(reverseBits(~101805u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), var_0.c, var_0.c));
    var var_2 = Struct_5(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, -5546i), select(vec3<i32>(-40030i, arg_0, global2[_wgslsmith_index_u32(var_0.d, 21u)]), vec3<i32>(1i, global2[_wgslsmith_index_u32(0u, 21u)], u_input.c.x), false)) << ((1u ^ _wgslsmith_clamp_u32(~var_0.d, 4294967295u, u_input.b.x)) % 32u), -1i, _wgslsmith_div_u32(countOneBits(~var_0.d), _wgslsmith_dot_vec2_u32(~u_input.b, ~vec2<u32>(47413u, var_0.d))), ~0u, -u_input.c);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-187f, var_1.x)) + var_1.zx))));
    return false;
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_4(Struct_1(func_3(u_input.a.x), select(!select(global1.yyy, vec3<bool>(true, arg_0, false), vec3<bool>(global1.x, global1.x, arg_0)), !vec3<bool>(true, true, global1.x), select(global1.yxx, global1.xyy, all(vec3<bool>(false, false, arg_0)))), -1630f, select(0u, 55144u, false)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 2524f, arg_1, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(380f, 438f, arg_1, arg_1)))))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, _wgslsmith_f_op_f32(-1332f + arg_1), _wgslsmith_f_op_f32(ceil(1582f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-357f, 2256f, -745f)))) - vec3<f32>(-1106f, global0.x, _wgslsmith_f_op_f32(-943f * arg_1)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global1 = select(select(!(!select(vec4<bool>(true, global1.x, arg_0, var_0.a.b.x), vec4<bool>(false, arg_0, false, false), vec4<bool>(true, global1.x, false, false))), vec4<bool>(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(0u, 21u)], -1676i) != global2[_wgslsmith_index_u32(1u, 21u)], true, true, any(!global1.xxy)), all(vec4<bool>(!var_0.a.a, any(vec2<bool>(true, var_0.a.b.x)), all(vec3<bool>(arg_0, true, true)), var_0.a.b.x))), select(select(vec4<bool>(global1.x, all(global1.wy), any(var_0.a.b), all(var_0.a.b)), vec4<bool>(any(global1.yz), !var_0.a.a, true, false), _wgslsmith_div_u32(1u, var_0.a.d) < (u_input.b.x & 0u)), select(vec4<bool>(!var_0.a.b.x, func_3(u_input.c.x), arg_1 != -217f, any(vec2<bool>(true, false))), select(vec4<bool>(arg_0, var_0.a.b.x, arg_0, global1.x), select(vec4<bool>(false, global1.x, false, false), vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(true, arg_0, true, arg_0)), any(vec4<bool>(arg_0, false, global1.x, false))), _wgslsmith_f_op_f32(abs(global0.x)) >= _wgslsmith_f_op_f32(-2548f + -940f)), vec4<bool>(var_0.a.a, arg_0, any(global1.xw), all(vec4<bool>(global1.x, var_0.a.a, false, false)) & (global1.x & true))), !select(select(!vec4<bool>(global1.x, true, global1.x, var_0.a.b.x), vec4<bool>(var_0.a.b.x, arg_0, arg_0, arg_0), select(vec4<bool>(true, false, global1.x, arg_0), vec4<bool>(global1.x, var_0.a.b.x, true, false), true)), !vec4<bool>(true, var_0.a.a, false, false), vec4<bool>(false, any(vec4<bool>(arg_0, true, global1.x, true)), var_0.a.a != true, true)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -478f)))))), global2[_wgslsmith_index_u32(1u, 21u)] >> (53618u % 32u));
    var var_2 = abs(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.wy, u_input.a.zz), -u_input.c.zw));
    let var_3 = Struct_5(-select(_wgslsmith_div_i32(u_input.a.x, 5681i), i32(-1i) * -global2[_wgslsmith_index_u32(6114u, 21u)], !select(true, false, true)), var_1.b, reverseBits(63203u), u_input.b.x, u_input.a);
    return var_0.a;
}

fn func_1() -> vec3<f32> {
    var var_0 = u_input.b;
    let var_1 = func_2(false, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(290f, -131f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(506f + 419f))), !(!global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1672f, _wgslsmith_f_op_f32(f32(-1f) * -1031f))))));
    let var_2 = Struct_5(countOneBits(_wgslsmith_clamp_i32(u_input.c.x, -28458i, -u_input.a.x)), -1i, _wgslsmith_mult_u32(~var_1.d, 1u) & var_0.x, ~0u, -(~u_input.a));
    global1 = select(vec4<bool>(var_1.b.x, var_1.b.x, !(_wgslsmith_f_op_f32(round(-1571f)) > global0.x), true), !select(!select(vec4<bool>(false, global1.x, var_1.a, false), vec4<bool>(false, global1.x, var_1.a, true), true), vec4<bool>(global1.x, select(var_1.b.x, false, true), any(vec3<bool>(global1.x, true, var_1.a)), any(vec3<bool>(false, global1.x, global1.x))), all(vec2<bool>(global1.x, false))), var_1.b.x || any(select(!var_1.b, vec3<bool>(true, global1.x, global1.x), var_1.b.x)));
    var var_3 = true && any(!vec4<bool>(true, global1.x, !global1.x, true));
    return vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -109f), true)))), global0.x, _wgslsmith_f_op_f32(var_1.c * -1003f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global0.x, 343f), vec3<f32>(-1000f, -1944f, global0.x)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(global0.x, 1135f, global0.x)))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())));
    var var_0 = _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(firstLeadingBit(~u_input.b.x) & 26525u, 21u)] ^ (258i & _wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.b.x | u_input.b.x, 21u)], ~1i)), -(i32(-1i) * -1i), -1i);
    let var_1 = !global1.x;
    var var_2 = Struct_2(Struct_1(!global1.x, vec3<bool>(false, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(round(639f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x)))), 0u));
    var_0 = -global2[_wgslsmith_index_u32(_wgslsmith_add_u32(8799u, u_input.b.x), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(~25275u, vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, 528i, 4765i), select(vec3<i32>(u_input.a.x, global2[_wgslsmith_index_u32(var_2.a.d, 21u)], 3038i), select(vec3<i32>(13284i, global2[_wgslsmith_index_u32(u_input.b.x, 21u)], 6680i), u_input.a.wyx, var_2.a.a), true)), -43474i), ~var_2.a.d, -_wgslsmith_add_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, global2[_wgslsmith_index_u32(4294967295u, 21u)], -2147483647i), vec4<i32>(u_input.a.x, u_input.c.x, global2[_wgslsmith_index_u32(4294967295u, 21u)], 0i), u_input.a), countOneBits(u_input.a)));
}

