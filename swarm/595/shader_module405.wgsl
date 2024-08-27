struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = ~_wgslsmith_sub_i32(abs(~u_input.a.x), u_input.a.x) >> (638u % 32u);
    var var_1 = 93921u;
    var var_2 = _wgslsmith_div_f32(-1068f, 1230f);
    var_0 = u_input.a.x;
    var_1 = max(~(~min(35745u, 70866u)), ~arg_2.b);
    return arg_2;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32) -> vec2<f32> {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -791f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-803f * _wgslsmith_div_f32(arg_1.a.x, arg_2)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_1.a.x, arg_1.a.x)))))), 4294967295u);
    var_0 = arg_1;
    global0 = array<vec2<bool>, 10>();
    var var_1 = arg_1;
    var_1 = func_2(~(arg_1.b & max(~var_0.b, _wgslsmith_div_u32(var_1.b, 4294967295u))), 7968i, func_2(var_0.b, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-u_input.a.zz, u_input.a.zy << (vec2<u32>(36479u, 7065u) % vec2<u32>(32u))), abs(abs(u_input.a.x)), i32(-1i) * -20721i), func_2(22552u, (u_input.a.x & 2147483647i) << (0u % 32u), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, arg_2) * arg_1.a), 36494u), arg_2), 2382f), 106f);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, var_0.a.x) * vec2<f32>(-1053f, -488f));
}

fn func_1() -> bool {
    var var_0 = select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(1u, ~(~36733u))), 10u)], !select(select(global0[_wgslsmith_index_u32(1u, 10u)], vec2<bool>(false, false), global0[_wgslsmith_index_u32(~0u, 10u)]), select(!global0[_wgslsmith_index_u32(4294967295u, 10u)], vec2<bool>(false, false), vec2<bool>(true, false)), true), true);
    var_0 = vec2<bool>(1f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(651f - -196f)))), any(vec2<bool>(var_0.x, var_0.x)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(func_3(select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(var_0.x, var_0.x, var_0.x)), u_input.a.x <= 0i), !vec2<bool>(var_0.x, false)), func_2(~firstLeadingBit(38225u), u_input.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(231f, -350f) - vec2<f32>(-1000f, -171f)), ~0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(676f, -1211f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-582f * 694f)))))), ~4294967295u);
    var_1 = func_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.b, 4294967295u, var_1.b) << (vec3<u32>(~var_1.b, _wgslsmith_mult_u32(39562u, var_1.b), 1u) % vec3<u32>(32u)), max(_wgslsmith_mult_vec3_u32(select(vec3<u32>(var_1.b, var_1.b, var_1.b), vec3<u32>(60573u, 51678u, 29386u), vec3<bool>(var_0.x, true, true)), max(vec3<u32>(15806u, var_1.b, 4294967295u), vec3<u32>(var_1.b, 0u, 84682u))), _wgslsmith_sub_vec3_u32(select(vec3<u32>(var_1.b, var_1.b, 0u), vec3<u32>(var_1.b, 1u, 0u), false), ~vec3<u32>(17931u, 0u, var_1.b)))), u_input.a.x, func_2(~31312u, -(-1i | (u_input.a.x | 35285i)), Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1302f, var_1.a.x), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.a.x, 882f), vec2<f32>(897f, 127f))))), ~23858u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1112f + var_1.a.x)));
    global0 = array<vec2<bool>, 10>();
    return var_0.x | !any(!vec4<bool>(true, var_0.x, var_0.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true || (true | (true & func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1427f, -331f) * vec2<f32>(1759f, 1000f)))), vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1460f, -177f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(223f, 433f)))), vec2<f32>(_wgslsmith_f_op_f32(1001f - _wgslsmith_f_op_f32(252f * 246f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -705f))))));
}

