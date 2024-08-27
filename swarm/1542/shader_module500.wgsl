struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12>;

var<private> global1: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.a);
    return Struct_1(arg_0.a);
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    global1 = array<vec3<bool>, 13>();
    let var_0 = _wgslsmith_sub_vec2_u32(min(countOneBits(firstTrailingBit(vec2<u32>(726u, 45150u))), ~(~vec2<u32>(u_input.b, u_input.c))) & (max(vec2<u32>(u_input.b, 0u), ~vec2<u32>(48418u, u_input.c)) ^ (vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(17978u, u_input.b) % vec2<u32>(32u)))), ~(~((vec2<u32>(31302u, u_input.b) | vec2<u32>(63494u, 4294967295u)) & ~vec2<u32>(u_input.b, 0u))));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2285f), _wgslsmith_f_op_f32(arg_0.a + arg_0.a)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1331f));
    global0 = array<vec4<i32>, 12>();
    return ~vec2<u32>(_wgslsmith_add_u32(var_0.x, 1u), ~48144u);
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-460f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1138f, _wgslsmith_f_op_f32(f32(-1f) * -982f))))));
    let var_1 = ~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(49763u, arg_1.x, 50063u), vec3<u32>(20116u, arg_0, arg_1.x)), ~max(vec3<u32>(42480u, arg_1.x, arg_0), vec3<u32>(arg_1.x, 98193u, 18234u))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(trunc(1097f)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * _wgslsmith_f_op_f32(max(func_1(var_2).a, _wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(trunc(var_0))));
    let var_4 = !select(select(!(!global1[_wgslsmith_index_u32(var_1, 13u)]), global1[_wgslsmith_index_u32(~5865u, 13u)], global1[_wgslsmith_index_u32(arg_0, 13u)]), !select(vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(select(0u, 0u, false), 13u)], true), ((u_input.c | arg_1.x) >= countOneBits(13455u)) && true);
    return Struct_1(342f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(4294967295u, u_input.c), _wgslsmith_div_u32(0u, u_input.c));
    let var_1 = func_3(_wgslsmith_mod_u32(abs(var_0.x), ~1u), ~vec2<u32>(62092u, ~4294967295u) ^ _wgslsmith_mult_vec2_u32(select(min(var_0, vec2<u32>(var_0.x, u_input.c)), vec2<u32>(1u, 0u), true), func_2(func_1(Struct_1(706f)))));
    var var_2 = var_1;
    let var_3 = !select(!vec4<bool>(select(false, true, false), true, true, all(vec4<bool>(true, false, true, true))), vec4<bool>(!all(vec4<bool>(false, true, true, true)), false, true, 11741i < _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, -25881i), vec3<i32>(36278i, 33873i, u_input.d))), select(vec4<bool>(true, true, true, true), vec4<bool>(select(false, true, true), true, all(vec4<bool>(true, false, true, false)), any(vec2<bool>(false, true))), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(false, false, false, true), true)));
    let var_4 = func_1(func_3(~1u, abs(max(vec2<u32>(0u, 67186u) << (var_0 % vec2<u32>(32u)), ~vec2<u32>(0u, u_input.b)))));
    let var_5 = ~global0[_wgslsmith_index_u32(abs(firstTrailingBit(~4294967295u)), 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f))) * vec2<f32>(_wgslsmith_f_op_f32(var_1.a - -763f), _wgslsmith_f_op_f32(var_4.a - var_4.a))) + vec2<f32>(_wgslsmith_div_f32(-1095f, _wgslsmith_f_op_f32(var_2.a - -1816f)), var_1.a)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-238f)), _wgslsmith_f_op_f32(abs(-1000f)), var_1.a) + vec3<f32>(_wgslsmith_f_op_f32(-721f + var_2.a), _wgslsmith_f_op_f32(abs(984f)), _wgslsmith_f_op_f32(max(-680f, -2051f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a, var_4.a, -276f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1195f, var_1.a, -743f))))))));
}

