struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(10381u, 1u, 0u, 25589u), vec4<u32>(0u, 31873u, 50899u, 74988u), vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec4<u32>(1u, 1604u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 0u, 1u), vec4<u32>(4294967295u, 0u, 7640u, 73894u), vec4<u32>(1u, 3599u, 18740u, 1u), vec4<u32>(12810u, 8741u, 1u, 1u), vec4<u32>(0u, 4294967295u, 9197u, 0u), vec4<u32>(18866u, 77568u, 14463u, 26663u), vec4<u32>(99621u, 1u, 12440u, 4294967295u));

var<private> global1: f32;

var<private> global2: array<bool, 2>;

var<private> global3: vec3<f32> = vec3<f32>(-479f, -539f, -934f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> f32 {
    let var_0 = 480f;
    var var_1 = Struct_1(any(select(vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 28360u, u_input.c), 2u)], false, !global2[_wgslsmith_index_u32(u_input.c, 2u)], true), !select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 2u)], true, true, false), vec4<bool>(global2[_wgslsmith_index_u32(94383u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(u_input.c, 2u)], global2[_wgslsmith_index_u32(1u, 2u)]), global2[_wgslsmith_index_u32(4294967295u, 2u)]), false)), _wgslsmith_f_op_vec2_f32(-global3.yy), u_input.a.x);
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(759f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -507f)), any(select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 2u)], var_1.a, false, false), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)], false), vec4<bool>(global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(u_input.d.x, 2u)], global2[_wgslsmith_index_u32(37407u, 2u)], global2[_wgslsmith_index_u32(u_input.d.x, 2u)]))) != !(1u <= u_input.c))), global3.x));
    var_1 = Struct_1(-289f != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(105f, var_2)))))), var_1.b, 1i);
    let var_3 = Struct_2(13048u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(528f + -128f) + -1516f), -1454f), select(u_input.d.xzz, ~u_input.d.wwz, !vec3<bool>(any(vec4<bool>(var_1.a, false, var_1.a, false)), u_input.d.x != u_input.c, all(vec2<bool>(true, var_1.a)))), (~4294967295u ^ ~reverseBits(u_input.c)) < u_input.d.x, ~u_input.d.x);
    return _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(var_3.b.x * _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(max(var_3.b.x, 2077f))))), global3.x);
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -817f), _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(1286f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(560f - global3.x) + -947f), global3.x)), _wgslsmith_f_op_f32(-global3.x));
    var var_1 = ~(vec4<u32>(0u, arg_0, ~4294967295u, firstLeadingBit(arg_0 ^ u_input.c)) | firstTrailingBit(u_input.d));
    let var_2 = Struct_2(~4294967295u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1465f - -792f), _wgslsmith_f_op_f32(-global3.x), false)) * global3.x), _wgslsmith_f_op_f32(select(global3.x, -598f, true))), _wgslsmith_div_vec3_u32(var_1.xyx, firstTrailingBit(select(vec3<u32>(var_1.x, 0u, u_input.c), vec3<u32>(var_1.x, u_input.c, arg_0), vec3<bool>(global2[_wgslsmith_index_u32(var_1.x, 2u)], global2[_wgslsmith_index_u32(var_1.x, 2u)], true)))), !(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(230f * global3.x))) >= 212f), ~4294967295u);
    global3 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(342f, -806f, _wgslsmith_f_op_f32(func_3()))));
    let var_3 = -489f;
    return u_input.c;
}

fn func_1() -> f32 {
    var var_0 = ~(~u_input.c);
    global0 = array<vec4<u32>, 11>();
    let var_1 = select(vec4<bool>(any(vec2<bool>(true, true)) == true, ((u_input.c ^ u_input.c) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.d.x), u_input.d.xz)) > ~(~43985u), true, global2[_wgslsmith_index_u32(1u, 2u)]), vec4<bool>(global2[_wgslsmith_index_u32(firstTrailingBit(15036u) ^ 1u, 2u)], any(!(!vec4<bool>(false, false, global2[_wgslsmith_index_u32(0u, 2u)], false))), true, (func_2(u_input.c) != min(u_input.c, u_input.c)) && (916u != ~u_input.d.x)), select(select(vec4<bool>(true, !global2[_wgslsmith_index_u32(87724u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)], true), !vec4<bool>(global2[_wgslsmith_index_u32(90964u, 2u)], global2[_wgslsmith_index_u32(u_input.d.x, 2u)], true, global2[_wgslsmith_index_u32(23582u, 2u)]), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.d.x, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(47261u, 2u)]), global2[_wgslsmith_index_u32(0u, 2u)]), select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.d.x, 2u)], global2[_wgslsmith_index_u32(u_input.c, 2u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 2u)], true, global2[_wgslsmith_index_u32(u_input.d.x, 2u)], global2[_wgslsmith_index_u32(u_input.c, 2u)]), true), vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.d.x, 2u)], true))), select(!(!vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.c, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)])), select(select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(51712u, 2u)], global2[_wgslsmith_index_u32(122378u, 2u)]), vec4<bool>(global2[_wgslsmith_index_u32(37432u, 2u)], false, global2[_wgslsmith_index_u32(u_input.d.x, 2u)], global2[_wgslsmith_index_u32(0u, 2u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 2u)], global2[_wgslsmith_index_u32(u_input.c, 2u)], true, global2[_wgslsmith_index_u32(u_input.d.x, 2u)])), !vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.d.x, 2u)], global2[_wgslsmith_index_u32(u_input.c, 2u)], global2[_wgslsmith_index_u32(1u, 2u)]), vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.d.x, 2u)], true)), select(global2[_wgslsmith_index_u32(u_input.c, 2u)] && global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)] | false, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, u_input.c), 2u)])), true));
    var var_2 = ~_wgslsmith_add_i32(12755i, u_input.a.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(318f, -514f)) + global3.xy)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * global3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(f32(-1f) * -165f)))));
    let var_0 = select(!(!(!(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(u_input.d.x, 2u)])))), vec4<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(0u, 2u)], any(vec3<bool>(true, true, true)), false, global2[_wgslsmith_index_u32(0u, 2u)])), global2[_wgslsmith_index_u32(58567u, 2u)], !global2[_wgslsmith_index_u32(u_input.c, 2u)], true), !select(!select(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 2u)], false, global2[_wgslsmith_index_u32(55680u, 2u)]), vec4<bool>(global2[_wgslsmith_index_u32(84614u, 2u)], global2[_wgslsmith_index_u32(u_input.d.x, 2u)], global2[_wgslsmith_index_u32(u_input.d.x, 2u)], global2[_wgslsmith_index_u32(44994u, 2u)]), global2[_wgslsmith_index_u32(u_input.d.x, 2u)]), select(!vec4<bool>(global2[_wgslsmith_index_u32(39849u, 2u)], global2[_wgslsmith_index_u32(u_input.d.x, 2u)], false, true), vec4<bool>(true, true, global2[_wgslsmith_index_u32(0u, 2u)], false), any(vec4<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(u_input.c, 2u)]))), select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(u_input.d.x, 2u)], global2[_wgslsmith_index_u32(u_input.d.x, 2u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(41891u, 2u)], true, true), global2[_wgslsmith_index_u32(u_input.c, 2u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(17856u, 2u)], global2[_wgslsmith_index_u32(0u, 2u)], true, global2[_wgslsmith_index_u32(u_input.c, 2u)]), vec4<bool>(global2[_wgslsmith_index_u32(24475u, 2u)], false, global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(u_input.c, 2u)]), vec4<bool>(global2[_wgslsmith_index_u32(25810u, 2u)], true, global2[_wgslsmith_index_u32(u_input.c, 2u)], false)), select(vec4<bool>(global2[_wgslsmith_index_u32(34387u, 2u)], true, false, global2[_wgslsmith_index_u32(u_input.d.x, 2u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 2u)], global2[_wgslsmith_index_u32(u_input.c, 2u)], false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(u_input.d.x, 2u)], false)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(410f)));
    let var_2 = -914f;
    var var_3 = Struct_4(Struct_1(var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.x, global3.x), vec2<f32>(484f, global3.x), vec2<bool>(true, global2[_wgslsmith_index_u32(5515u, 2u)]))), global3.xz)), abs(u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1014f + var_2) + -2771f), ~abs(u_input.a.yz), 2359u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zz, u_input.a.x, global3.yx);
}

