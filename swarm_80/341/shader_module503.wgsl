struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true));

var<private> global1: vec3<i32> = vec3<i32>(-61794i, 839i, -31774i);

var<private> global2: array<vec2<i32>, 12>;

var<private> global3: f32;

var<private> global4: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: u32, arg_3: f32) -> bool {
    let var_0 = Struct_1(any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true))) && (((u_input.a.x != u_input.b) && any(vec3<bool>(false, false, false))) || any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)))));
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(453f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3 - 878f)))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2408f + _wgslsmith_f_op_f32(max(arg_3, -1504f))), 633f), all(!select(!vec4<bool>(var_0.a, var_0.a, true, var_0.a), !vec4<bool>(true, false, var_0.a, false), var_0.a)), select(!(!(-52283i <= u_input.a.x)), false, var_0.a));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(698f, arg_3, -888f, -191f));
    global0 = array<Struct_1, 29>();
    global2 = array<vec2<i32>, 12>();
    return select(var_1.x, !((_wgslsmith_sub_i32(global1.x, global1.x) >> (reverseBits(26770u) % 32u)) < -u_input.b), any(!select(!vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, true, true), var_0.a)));
}

fn func_2() -> Struct_1 {
    return Struct_1(any(vec4<bool>(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1833f), _wgslsmith_f_op_vec2_f32(vec2<f32>(198f, -676f) - vec2<f32>(600f, 365f)), 4389u, -1000f), func_3(-329f, vec2<f32>(422f, -1500f), 0u >> (1u % 32u), _wgslsmith_f_op_f32(select(-386f, -295f, true))), all(vec2<bool>(false, true)), func_3(1053f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(562f, 604f)), _wgslsmith_dot_vec2_u32(vec2<u32>(42702u, 0u), vec2<u32>(1u, 0u)), -533f))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1)));
    let var_1 = arg_1 <= arg_1;
    global2 = array<vec2<i32>, 12>();
    let var_2 = select(select(select(vec2<bool>(all(vec2<bool>(var_1, var_1)), func_2().a), select(!vec2<bool>(var_1, false), vec2<bool>(var_1, true), false), all(!vec4<bool>(true, var_1, false, true))), vec2<bool>(true, arg_0.a), var_1), select(select(vec2<bool>(true, arg_0.a), !vec2<bool>(false, var_1), all(!vec4<bool>(arg_0.a, arg_0.a, false, true))), vec2<bool>(select(!var_1, func_3(1072f, vec2<f32>(-329f, 1000f), 40729u, arg_1), !arg_0.a), arg_0.a), !vec2<bool>(true, !arg_0.a)), true);
    let var_3 = arg_0;
    return Struct_1(true);
}

fn func_1(arg_0: f32, arg_1: i32) -> f32 {
    let var_0 = func_4(func_2(), -1247f, -(~_wgslsmith_sub_vec3_i32(~u_input.a, u_input.a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-936f, 1404f, -627f))))))))));
    var var_2 = !vec3<bool>(var_0.a, all(select(vec3<bool>(var_0.a, var_0.a, var_0.a), !vec3<bool>(true, var_0.a, true), var_0.a)), all(select(vec2<bool>(true, true), vec2<bool>(false, false), !vec2<bool>(var_0.a, var_0.a))));
    global3 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = Struct_1(func_2().a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1783f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1003f - 464f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-1304f, u_input.a.x))), 1259f)));
    let var_0 = global0[_wgslsmith_index_u32(reverseBits(countOneBits(_wgslsmith_sub_u32(~12610u, 56655u))), 29u)];
    let var_1 = abs(vec4<u32>(56633u, 1u, firstLeadingBit(firstTrailingBit(45587u) << (1u % 32u)), max(countOneBits(4294967295u), 0u)));
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(1u, 39166u), var_1.x, var_1.x, var_1.x);
    let var_3 = select(!select(vec2<bool>(true, true), !select(vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, true), vec2<bool>(false, false)), ~var_1.x == (1u >> (var_1.x % 32u))), vec2<bool>(var_0.a, func_3(_wgslsmith_f_op_f32(-917f - -803f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-623f, -620f) * vec2<f32>(-573f, 193f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(807f, -812f))), min(var_2.x, var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1800f + -148f) * _wgslsmith_f_op_f32(f32(-1f) * -461f)))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(-37681i == u_input.a.x, !var_0.a)));
    var_2 = var_1;
    global2 = array<vec2<i32>, 12>();
    let var_4 = global0[_wgslsmith_index_u32(12095u, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(~(~(-vec3<i32>(-1i, 19840i, 1i))), select(-(~vec3<i32>(u_input.a.x, global1.x, u_input.b)), ~vec3<i32>(u_input.a.x, 1i, u_input.b), var_0.a)), firstLeadingBit(firstTrailingBit(var_1) << (_wgslsmith_add_vec4_u32(var_1, var_1) % vec4<u32>(32u))), 0u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(694f)))))));
}

