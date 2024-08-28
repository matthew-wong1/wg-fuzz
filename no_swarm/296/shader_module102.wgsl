struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec4<bool>;

var<private> global2: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true));

var<private> global3: array<vec4<u32>, 8>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(trunc(-2458f)))), _wgslsmith_f_op_f32(max(-718f, arg_0.x)));
    return Struct_3(abs(firstTrailingBit(u_input.a)));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec2<bool> {
    let var_0 = any(vec4<bool>(!global1.x, !all(global2[_wgslsmith_index_u32(~1u, 32u)]), global0.x, !global0.x));
    global0 = select(!global1.wy, select(!(!(!vec2<bool>(global0.x, var_0))), !select(vec2<bool>(false, var_0), global1.yx, select(vec2<bool>(global0.x, true), vec2<bool>(true, false), var_0)), vec2<bool>(!var_0, false)), !(!any(vec3<bool>(true, true, false))));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -1609f), _wgslsmith_f_op_f32(trunc(-761f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))));
    return select(select(global1.wy, !global1.zx, !select(select(global1.yw, global1.xz, true), !global1.xx, global0.x)), select(select(select(!global1.xx, !vec2<bool>(global0.x, false), all(global2[_wgslsmith_index_u32(406u, 32u)])), global1.zw, vec2<bool>(true, select(false, false, global0.x))), global1.zy, true), select(global1.wz, vec2<bool>(any(vec3<bool>(false, global1.x, false)), any(select(global2[_wgslsmith_index_u32(4294967295u, 32u)], vec3<bool>(var_0, global0.x, global0.x), vec3<bool>(true, false, var_0)))), select(!select(vec2<bool>(false, true), global1.yw, vec2<bool>(global1.x, false)), vec2<bool>(true, global1.x), false)));
}

fn func_2() -> Struct_4 {
    global2 = array<vec3<bool>, 32>();
    var var_0 = u_input.c.ywx;
    let var_1 = _wgslsmith_f_op_f32(580f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-603f))) - _wgslsmith_f_op_f32(-245f - _wgslsmith_f_op_f32(floor(-1950f)))) + 846f));
    var var_2 = Struct_2(select(global1.zz, func_3(u_input.a, -29701i), true), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-597f, var_1, global1.x)), _wgslsmith_f_op_f32(min(-993f, var_1))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1, var_1), vec2<f32>(-276f, 1196f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + vec2<f32>(var_1, 1496f)))), vec2<bool>(true, global1.x), true), _wgslsmith_sub_i32(~(-27878i), u_input.a) >> (_wgslsmith_dot_vec4_u32(~u_input.b, firstLeadingBit(vec4<u32>(u_input.b.x, 1u, 0u, var_0.x))) % 32u), reverseBits(vec2<i32>(~u_input.a, _wgslsmith_mult_i32(countOneBits(49087i), u_input.a))));
    global1 = select(vec4<bool>(func_3(max(var_2.c & -1i, ~2147483647i), u_input.a).x, all(!global1.wxy), global0.x, true), !select(vec4<bool>(all(global2[_wgslsmith_index_u32(var_0.x, 32u)]), true, var_2.a.x, var_2.b.b.x), select(select(vec4<bool>(false, global0.x, var_2.b.c, true), vec4<bool>(global0.x, false, var_2.b.b.x, var_2.a.x), vec4<bool>(var_2.a.x, var_2.a.x, true, global1.x)), select(vec4<bool>(global1.x, var_2.b.b.x, global0.x, false), vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, global0.x), vec4<bool>(var_2.a.x, global0.x, var_2.a.x, global1.x)), !vec4<bool>(global0.x, true, global1.x, global1.x)), !select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(var_2.a.x, true, global0.x, false), vec4<bool>(global0.x, var_2.a.x, global0.x, global1.x))), !(!(!(!vec4<bool>(var_2.b.c, true, true, false)))));
    return Struct_4(Struct_2(vec2<bool>(true, !(false && global1.x)), var_2.b, _wgslsmith_div_i32(46822i, u_input.a & reverseBits(var_2.d.x)), _wgslsmith_sub_vec2_i32(select(var_2.d, -vec2<i32>(-1i, -57367i), false), var_2.d)), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(var_2.b.a)), vec2<bool>(true, true), all(vec3<bool>(all(global1.zyw), any(vec4<bool>(false, false, global0.x, global1.x)), select(false, true, var_2.b.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 751f, 1124f, 2347f), vec4<f32>(2356f, -626f, -1000f, -593f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1026f, -1491f, 231f, 1634f)))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(439f, _wgslsmith_f_op_f32(f32(-1f) * -438f), _wgslsmith_div_f32(841f, _wgslsmith_f_op_f32(step(1788f, -490f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-493f))))))));
    global2 = array<vec3<bool>, 32>();
    let var_1 = Struct_3(2147483647i);
    let var_2 = func_1(_wgslsmith_f_op_vec3_f32(select(var_0.wwy, var_0.yzz, !global1.xwx)), -1000f, vec4<i32>(2147483647i, abs(2147483647i), var_1.a, -reverseBits(-2147483647i)));
    global2 = array<vec3<bool>, 32>();
    let var_3 = u_input.c;
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_2.a), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_4.a.b.a.x + _wgslsmith_f_op_f32(abs(589f))))), 1079f, var_4.b.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1847f, var_4.b.a.x)) * _wgslsmith_f_op_f32(exp2(var_4.a.b.a.x))), _wgslsmith_div_f32(939f, _wgslsmith_f_op_f32(f32(-1f) * -689f)))));
}

