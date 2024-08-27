struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

var<private> global1: vec3<bool>;

var<private> global2: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true));

var<private> global3: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), 1168f))), global3.b, _wgslsmith_f_op_vec2_f32(-global3.c));
    var var_1 = var_0;
    var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1469f)), _wgslsmith_f_op_f32(-444f * _wgslsmith_f_op_f32(floor(var_0.c.x))), any(!global1.yx))))), ~reverseBits(~4294967295u), var_1.c);
    var_1 = var_0;
    global3 = Struct_1(-1523f, abs(_wgslsmith_clamp_u32(41523u, _wgslsmith_div_u32(u_input.b.x, var_1.b & global3.b), abs(_wgslsmith_sub_u32(global3.b, var_0.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-721f, var_0.c.x) * var_0.c), _wgslsmith_f_op_vec2_f32(-var_1.c)) * vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), -936f))));
    return global0[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(firstLeadingBit(var_1.b), abs(4294967295u | (var_1.b & u_input.d))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~u_input.b.yy & ~vec2<u32>(u_input.d, var_0.b), reverseBits(vec2<u32>(1u, 24345u) | u_input.c)), _wgslsmith_sub_u32(var_0.b, abs(var_0.b)) ^ 4294967295u), all(vec2<bool>(!(global0[_wgslsmith_index_u32(global3.b, 26u)] == global0[_wgslsmith_index_u32(1u, 26u)]), global1.x))), 26u)];
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~func_3() > -reverseBits(~u_input.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - -429f)), 418f, -476f)));
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(1027f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a), -1861f)));
    global3 = Struct_1(_wgslsmith_div_f32(-1327f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3 + var_1.x)))), var_2.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(269f, 300f) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-156f, var_2.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_1.zz)))))));
    return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global3.a, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-var_3)))))), ~abs(var_2.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_1.yz)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -631f), _wgslsmith_f_op_f32(round(-1362f)), _wgslsmith_f_op_f32(1179f - arg_0.c.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1977f, global3.c.x, arg_0.c.x) * vec3<f32>(arg_0.a, 444f, arg_0.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-412f, global3.a, 896f))))), vec3<bool>(global1.x, any(select(vec3<bool>(true, global1.x, false), vec3<bool>(false, global1.x, global1.x), global1.x)), !all(vec3<bool>(false, true, global1.x))))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(func_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(min(global3.c.x, global3.c.x))), global3.b, _wgslsmith_f_op_vec2_f32(select(global3.c, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.a, 348f))), vec2<bool>(global1.x, global1.x))))), (abs(firstTrailingBit(vec3<i32>(1i, -2147483647i, -56745i))) >> (u_input.b % vec3<u32>(32u))) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(~1u, 26u)], _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, -1737i), vec3<i32>(9908i, -2147483647i, 1i)), ~(-9598i)), vec3<i32>(firstLeadingBit(global0[_wgslsmith_index_u32(14789u, 26u)]), max(38041i, 53263i), 23468i >> (global3.b % 32u)), vec3<i32>(-u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], u_input.a >> (u_input.b.x % 32u)))));
    var var_1 = vec3<i32>(-2147483647i, max(~u_input.a, abs(u_input.a)), _wgslsmith_add_i32(u_input.a, 13687i));
    global0 = array<i32, 26>();
    global2 = array<vec4<bool>, 25>();
    global2 = array<vec4<bool>, 25>();
    return Struct_1(var_0.x, 1478u, _wgslsmith_f_op_vec2_f32(trunc(var_0.xx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1154f);
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x * 182f) + func_1().a), _wgslsmith_dot_vec3_u32(~u_input.b, vec3<u32>(46755u, ~(~13121u), ~(~global3.b))));
}

