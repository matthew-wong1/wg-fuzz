struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 17>;

var<private> global2: Struct_3 = Struct_3(741f, 603f);

var<private> global3: array<vec2<f32>, 1>;

var<private> global4: array<f32, 26> = array<f32, 26>(-1000f, 1529f, 608f, 1522f, -750f, -1090f, -1615f, 555f, 289f, -288f, 1718f, 741f, -824f, 2826f, 284f, -522f, 702f, 1869f, 1488f, -1711f, 1893f, 327f, 1139f, -909f, 501f, 1898f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> f32 {
    let var_0 = min(7561i, u_input.b.x);
    global1 = array<Struct_1, 17>();
    return _wgslsmith_f_op_f32(abs(126f));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(func_3());
    global2 = Struct_3(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~1u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d, ~u_input.d), ~u_input.d)), 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -181f)));
    global0 = !select(select(!select(vec2<bool>(false, true), vec2<bool>(false, global0.x), true), vec2<bool>(false, true), select(vec2<bool>(true, global0.x), select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), global0.x), !vec2<bool>(false, global0.x))), vec2<bool>(global0.x, true), vec2<bool>(!global0.x, all(!vec2<bool>(global0.x, true))));
    let var_1 = ~abs((max(u_input.b.x, u_input.b.x) << (~108502u % 32u)) ^ _wgslsmith_add_i32(u_input.b.x, u_input.b.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(0u, 1u)])));
    return Struct_2(firstTrailingBit(~(-select(u_input.b.x, 2147483647i, global0.x))), global1[_wgslsmith_index_u32(u_input.a, 17u)]);
}

fn func_1() -> vec4<u32> {
    global4 = array<f32, 26>();
    var var_0 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -1541f));
    let var_1 = Struct_4(func_2(1115f).b.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(u_input.d.x, 26u)], -854f) - -523f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -482f))) * _wgslsmith_f_op_f32(879f * -1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.a)))))), var_0.b);
    let var_2 = Struct_1(firstLeadingBit(var_1.d.a), ~countOneBits(-var_1.d.b));
    var var_3 = select(select(select(vec3<bool>(false, true, !global0.x), select(!vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, true, true), true), any(select(vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, false, false), global0.x))), select(vec3<bool>(true, false, !global0.x), vec3<bool>(true, true, true), select(select(vec3<bool>(global0.x, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, global0.x)), !vec3<bool>(false, global0.x, true), vec3<bool>(false, global0.x, global0.x))), true), select(select(!(!vec3<bool>(global0.x, global0.x, global0.x)), select(vec3<bool>(true, true, true), vec3<bool>(global0.x, false, global0.x), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, true), true)), false), !vec3<bool>(global0.x, global0.x || global0.x, global0.x), global0.x), all(vec4<bool>(!(1u == var_0.b.a.x), all(select(vec4<bool>(global0.x, false, true, true), vec4<bool>(false, true, global0.x, true), true)), !all(vec4<bool>(false, true, false, false)), all(!vec3<bool>(global0.x, true, false)))));
    return var_1.d.a ^ var_0.b.a;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32) -> vec3<f32> {
    let var_0 = Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(280f, 815f, 1000f), vec3<f32>(-764f, 466f, 699f))), vec3<f32>(global2.a, 1887f, arg_2))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_2, -1000f)), vec3<f32>(arg_0.x, global2.a, global4[_wgslsmith_index_u32(arg_1.a.x, 26u)]))))), -521f);
    global3 = array<vec2<f32>, 1>();
    global2 = Struct_3(-322f, _wgslsmith_f_op_f32(var_0.b * 1650f));
    global2 = Struct_3(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.a.x, arg_1.a.x), 26u)]), -359f);
    global3 = array<vec2<f32>, 1>();
    return vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, var_0.a.x) * 482f), _wgslsmith_f_op_f32(f32(-1f) * -327f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -563f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-907f, global4[_wgslsmith_index_u32(0u, 26u)]))), Struct_1(func_1(), u_input.b.x >> (93948u % 32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.a + global2.a)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2032f, global2.b, 1110f)) - vec3<f32>(1021f, global2.b, -1432f)));
    var var_1 = Struct_4(u_input.a, var_0.x, global4[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(~71661u, _wgslsmith_div_u32(4294967295u, u_input.a)) & _wgslsmith_sub_u32(1u, firstTrailingBit(43949u))), 17u)]);
    let var_2 = ~min(~(abs(0u) >> (~u_input.d.x % 32u)), 68277u);
    let var_3 = vec4<f32>(global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), -1277f, 130f);
    let var_4 = -10061i;
    var var_5 = Struct_3(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(ceil(global2.b))), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_1.d.a));
}

