struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<bool, 17>;

var<private> global1: array<vec4<bool>, 5>;

var<private> global2: f32;

var<private> global3: array<bool, 30>;

var<private> global4: vec3<i32> = vec3<i32>(1i, 2147483647i, -33917i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = true;
    global3 = array<bool, 30>();
    global3 = array<bool, 30>();
    var var_1 = Struct_4(all(vec2<bool>(true, true)), -1306f, reverseBits(~62464u));
    let var_2 = var_1.c;
    return var_1.c;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: f32) -> Struct_2 {
    global0 = array<bool, 17>();
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(abs(arg_2)), !arg_1.zzw, min(func_3(min(u_input.b, global4.x)), ~4294967295u), global4.x), vec3<u32>(1u, 1u, 1u), ~_wgslsmith_sub_u32(_wgslsmith_div_u32(~56569u, 1u), 1u));
    var var_1 = any(arg_1);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1109f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1065f + 249f) + _wgslsmith_f_op_f32(trunc(-701f)))) + arg_0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(437f - arg_0.x) + -2395f));
    global1 = array<vec4<bool>, 5>();
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1697f + _wgslsmith_f_op_f32(select(302f, arg_0.x, false))) * var_0.a.a), _wgslsmith_f_op_f32(ceil(var_0.a.a))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: vec3<f32>) -> vec3<f32> {
    var var_0 = Struct_5(max(min(-global4.xx | select(global4.yx, global4.zz, vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 17u)])), max(min(global4.yy, vec2<i32>(global4.x, global4.x)), max(global4.yz, global4.zx))), abs(-reverseBits(global4.xz))), arg_1);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-401f, var_0.b.a.x));
    let var_2 = -countOneBits(max(-2147483647i, select(abs(global4.x), var_0.a.x, var_0.a.x <= global4.x)));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -615f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1474f * 1026f) + arg_1.a.x), _wgslsmith_f_op_f32(-var_1.x))), vec3<f32>(336f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1897f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.x, 585f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(arg_1.a.x - var_1.x)) + _wgslsmith_f_op_f32(arg_3.x - var_1.x))));
}

fn func_1() -> Struct_3 {
    global0 = array<bool, 17>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(278f, -289f, -321f), vec3<f32>(-592f, -158f, -1356f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(494f, -615f, -1000f) + vec3<f32>(-2195f, 114f, -749f)))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1555f, -452f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2413f, -698f)))), !select(global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(43667u, 5u)], global1[_wgslsmith_index_u32(100435u, 5u)]), -291f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1323f - _wgslsmith_f_op_f32(-192f * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(459f, 667f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(-758f, -643f), _wgslsmith_f_op_f32(select(-545f, -213f, true)), _wgslsmith_div_f32(-607f, -2052f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 856f, 1225f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-596f, 261f, 470f) * vec3<f32>(1000f, 1475f, -1605f))))))));
    global4 = vec3<i32>(~(0i & (1i & ~u_input.b)), _wgslsmith_add_i32(u_input.a, _wgslsmith_add_i32(_wgslsmith_mod_i32(~40417i, _wgslsmith_sub_i32(-55793i, global4.x)), global4.x)), 77906i);
    let var_1 = abs(_wgslsmith_dot_vec2_i32(vec2<i32>(48816i, 1i), ~reverseBits(global4.xy)));
    var var_2 = ~29825u;
    return Struct_3(Struct_1(var_0.a.x, !vec3<bool>(global0[_wgslsmith_index_u32(abs(58927u), 17u)], global3[_wgslsmith_index_u32(~1u, 30u)], true), ~(1u & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(11762u, 4294967295u))), var_1), max(~vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_clamp_u32(70232u, 4294967295u, 29031u), func_3(global4.x), 0u)) ^ abs(min(~vec3<u32>(12876u, 1u, 48199u), ~vec3<u32>(27649u, 0u, 1u))), min(4294967295u, 34822u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 17>();
    let var_0 = func_1();
    global2 = -846f;
    let var_1 = func_1().a;
    var var_2 = vec3<bool>(true, !all(!select(global1[_wgslsmith_index_u32(4294967295u, 5u)], vec4<bool>(false, var_0.a.b.x, false, true), global3[_wgslsmith_index_u32(var_0.c, 30u)])), any(!var_1.b.yy));
    global0 = array<bool, 17>();
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a, 638f, 1461f), vec3<f32>(var_1.a, var_0.a.a, -1000f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(595f, var_0.a.a, var_1.a) * vec3<f32>(-2144f, var_1.a, -634f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1807f, _wgslsmith_f_op_f32(step(var_0.a.a, var_1.a)), var_0.a.a))));
    var var_4 = Struct_5(select(global4.zy, abs(vec2<i32>(global4.x, var_0.a.d)), false) & (_wgslsmith_sub_vec2_i32(vec2<i32>(46991i, -1i), -global4.xz) >> (_wgslsmith_mult_vec2_u32(~var_0.b.xy, var_0.b.yz) % vec2<u32>(32u))), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.d);
}

