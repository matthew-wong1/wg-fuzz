struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(749f, 850f);

var<private> global1: array<u32, 30>;

var<private> global2: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global3: array<u32, 28> = array<u32, 28>(101009u, 0u, 112725u, 73676u, 61533u, 33788u, 9705u, 3921u, 1u, 44433u, 15376u, 47409u, 26556u, 33922u, 9810u, 0u, 1u, 0u, 34985u, 62923u, 0u, 1u, 65886u, 25789u, 17612u, 4294967295u, 58546u, 0u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool) -> f32 {
    let var_0 = ~31513u;
    let var_1 = u_input.c.x;
    let var_2 = Struct_5(vec4<bool>(any(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 28u)], 28u)], 30u)]), _wgslsmith_add_u32(12843u, global3[_wgslsmith_index_u32(2540u, 28u)])), 28u)], 25u)]), any(select(vec4<bool>(true, true, true, arg_1), vec4<bool>(arg_1, false, true, true), arg_1)), !(true & all(vec4<bool>(true, false, true, arg_1))), true), Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-268f, global0.x, -770f) + vec3<f32>(-2083f, -722f, 1450f)), vec3<f32>(-277f, global0.x, global0.x), !vec3<bool>(arg_1, arg_1, true)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(-1053f, 1000f, 1026f)))), ~var_0, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1000f, global0.x) + vec3<f32>(global0.x, -423f, global0.x)))), Struct_2(~firstLeadingBit(vec3<u32>(0u, 19197u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 28u)], 28u)])), !any(vec2<bool>(false, false)), true, Struct_1(vec3<f32>(global0.x, 1000f, global0.x)), _wgslsmith_mult_vec2_u32(~vec2<u32>(4916u, 108698u), ~vec2<u32>(4294967295u, 4294967295u)))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.a.a.x * 363f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.x, -1000f), _wgslsmith_f_op_f32(exp2(var_2.b.e.d.a.x))))))), _wgslsmith_f_op_f32(f32(-1f) * -161f), 913f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)));
    let var_4 = true;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-432f + _wgslsmith_div_f32(1001f, 2096f)), _wgslsmith_f_op_f32(-1f)));
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -877f)))))) * vec2<f32>(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-2147483647i, false))))), global0.x));
    var var_0 = false;
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1998f))));
    let var_3 = !any(vec3<bool>(true, false, !any(vec4<bool>(false, false, false, false))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 149f, global0.x) * _wgslsmith_div_vec3_f32(vec3<f32>(468f, 937f, -947f), vec3<f32>(1612f, 362f, 871f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -957f, var_2)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, var_2, -854f))))))));
}

fn func_1() -> vec3<bool> {
    let var_0 = global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(10619u, 30u)], 30u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1460f, 1167f), 674f)), global0.x, -749f))));
    var var_2 = func_2();
    let var_3 = ~select(global1[_wgslsmith_index_u32(~1u, 30u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(66965u, 14594u, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 28u)], 30u)]) | 1u, 28u)], 30u)], true) ^ ~37596u;
    return !(!select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(329f + global0.x), _wgslsmith_f_op_f32(abs(global0.x)))), global0.x, -326f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1318f - 271f), -1000f))))));
    let var_1 = select(vec3<bool>(true, true, true), !func_1(), vec3<bool>(false && (_wgslsmith_f_op_f32(select(global0.x, var_0.x, false)) != _wgslsmith_f_op_f32(func_3(u_input.a.x, true))), var_0.x > _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-var_0.x))), true));
    var var_2 = u_input.a.zy;
    var var_3 = global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(countOneBits(38764u), 30u)], 28u)] >> (global3[_wgslsmith_index_u32(4294967295u, 28u)] % 32u)), 30u)], 28u)];
    global3 = array<u32, 28>();
    let var_4 = ~_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(abs(4294967295u), 28u)], firstTrailingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(598u, 30u)], 30u)], 30u)], 28u)] | 1u, 28u)], 28u)]), max(1u, 0u)) | select(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(15u, 28u)], 1u), firstLeadingBit(1u)), _wgslsmith_mult_u32(4294967295u, ~global1[_wgslsmith_index_u32(select(15244u, global1[_wgslsmith_index_u32(1u, 30u)], true), 30u)]), var_1.x);
    let var_5 = Struct_5(!select(vec4<bool>(any(var_1), select(var_1.x, true, false), any(vec2<bool>(var_1.x, true)), all(vec4<bool>(var_1.x, true, var_1.x, true))), select(!vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(false, false, var_1.x, false), vec4<bool>(var_1.x, true, var_1.x, true)), !vec4<bool>(true, var_1.x, var_1.x, true)), Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, global0.x), var_0.wwy))), func_2(), ~min(96090u, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(1u, 30u)], 0u)), func_2(), Struct_2((vec3<u32>(var_4, 4294967295u, 1u) | vec3<u32>(global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_4, 30u)], 28u)], 28u)], 30u)], var_4)) >> ((vec3<u32>(123120u, 4294967295u, 1u) >> (vec3<u32>(global1[_wgslsmith_index_u32(7365u, 30u)], var_4, 9667u) % vec3<u32>(32u))) % vec3<u32>(32u)), all(vec2<bool>(true, var_1.x)), select(true, var_1.x, false) | true, func_2(), firstLeadingBit(min(vec2<u32>(var_4, 3525u), vec2<u32>(global1[_wgslsmith_index_u32(1u, 30u)], 4294967295u))))));
    let var_6 = vec2<bool>(false, select(var_2.x, -_wgslsmith_clamp_i32(var_2.x, 2147483647i, u_input.a.x), global0.x > global0.x) < u_input.b.x);
    var_2 = _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.xx, u_input.c.xx), u_input.b, abs(firstLeadingBit(firstLeadingBit(~u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1263f, -1445f), u_input.c);
}

