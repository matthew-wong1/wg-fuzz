struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-323i, -7207i, -35753i);

var<private> global1: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false));

var<private> global2: array<vec2<f32>, 13>;

var<private> global3: array<i32, 9>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1151f, 277f, -1127f))))), select(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(all(vec3<bool>(true, false, false)), select(2147483647i < global0.x, true, true)), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), vec2<bool>(true, true), true)));
    let var_1 = !select(vec2<bool>(any(vec2<bool>(var_0.b.x, true)), select(select(var_0.b.x, var_0.b.x, true), 0u >= u_input.c.x, all(vec2<bool>(false, var_0.b.x)))), select(vec2<bool>(false, true), !select(var_0.b, vec2<bool>(var_0.b.x, false), vec2<bool>(false, var_0.b.x)), var_0.b.x), var_0.b.x);
    let var_2 = ~select(~vec3<u32>(~10604u, 1u, ~u_input.a), vec3<u32>(~88538u, ~u_input.c.x, 1u & u_input.a), select(!select(vec3<bool>(false, var_0.b.x, false), vec3<bool>(false, true, var_1.x), vec3<bool>(var_0.b.x, true, false)), !(!vec3<bool>(true, var_0.b.x, false)), !vec3<bool>(var_0.b.x, var_0.b.x, false)));
    let var_3 = var_0;
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-158f, 393f)), var_3.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.x) + _wgslsmith_f_op_f32(select(var_0.a.a.x, var_0.a.a.x, false))))));
    return ~_wgslsmith_mod_vec4_u32(select(reverseBits(~vec4<u32>(4294967295u, var_2.x, var_2.x, var_2.x)), ~(~vec4<u32>(0u, 0u, 4294967295u, var_2.x)), !(var_3.a.a.x == var_3.a.a.x)), ~(~vec4<u32>(3108u, u_input.c.x, 14508u, u_input.c.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> vec2<bool> {
    global1 = array<vec4<bool>, 6>();
    var var_0 = arg_0;
    let var_1 = arg_0.a;
    global3 = array<i32, 9>();
    return select(!(!(!(!var_0.b))), vec2<bool>(var_0.b.x, var_0.b.x), select(var_0.b.x, !select(var_0.b.x, true, !var_0.b.x), false));
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -496f)) >= arg_0.a.x);
    let var_1 = global2[_wgslsmith_index_u32(u_input.b.x, 13u)];
    let var_2 = 70498u;
    var var_3 = Struct_2(arg_0, select(func_4(Struct_2(arg_0, vec2<bool>(false, true)), arg_0, func_3(), arg_0), vec2<bool>(true, true), vec2<bool>(false, !all(vec4<bool>(true, false, true, true)))));
    var var_4 = Struct_1(var_3.a.a);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_0.a)) * _wgslsmith_f_op_vec3_f32(abs(arg_0.a))));
}

fn func_1() -> Struct_2 {
    var var_0 = 0u;
    global2 = array<vec2<f32>, 13>();
    global3 = array<i32, 9>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2272f, _wgslsmith_f_op_f32(ceil(-588f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -365f))))));
    var_0 = ~select(u_input.a, ~u_input.c.x, true) & _wgslsmith_mod_u32(select(u_input.c.x, u_input.a, select(true, true, false)) | countOneBits(u_input.a), _wgslsmith_mult_u32(~min(u_input.b.x, 11643u), u_input.b.x));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, 1126f, var_1.a.x) * var_1.a) * _wgslsmith_f_op_vec3_f32(func_2(Struct_1(var_1.a))))), select(!vec2<bool>(false, any(vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(true, any(global1[_wgslsmith_index_u32(u_input.b.x, 6u)])), u_input.c.x < _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 52196u, u_input.b.x), vec4<u32>(14973u, 0u, 0u, 0u))), func_4(Struct_2(Struct_1(var_1.a), func_4(Struct_2(Struct_1(vec3<f32>(-1000f, -535f, var_1.a.x)), vec2<bool>(false, true)), Struct_1(vec3<f32>(585f, -1053f, var_1.a.x)), vec4<u32>(7654u, 2942u, 4294967295u, u_input.a), Struct_1(var_1.a))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.x, 149f, var_1.a.x), var_1.a)), vec4<u32>(reverseBits(u_input.a), ~u_input.b.x, 40654u, 104973u), Struct_1(vec3<f32>(var_1.a.x, -1133f, var_1.a.x)))));
}

fn func_5(arg_0: Struct_2) -> StorageBuffer {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(ceil(arg_0.a.a.x));
    global0 = _wgslsmith_sub_vec3_i32(min(vec3<i32>(~max(global0.x, global0.x), reverseBits(global3[_wgslsmith_index_u32(32449u, 9u)]), i32(-1i) * -4106i), ~_wgslsmith_mod_vec3_i32(select(vec3<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], global0.x, global0.x), vec3<i32>(43199i, 20514i, 0i), vec3<bool>(arg_0.b.x, true, false)), -vec3<i32>(2147483647i, global0.x, 0i))), vec3<i32>(24120i, 0i, firstTrailingBit(~(~global3[_wgslsmith_index_u32(4294967295u, 9u)]))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(699f * 706f), arg_0.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.x) * arg_0.a.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.a.x, _wgslsmith_f_op_f32(arg_0.a.a.x + var_0.a.a.x)) + -403f)));
    var var_2 = _wgslsmith_clamp_u32(select(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.a) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 4294967295u), vec3<u32>(1u, 40935u, u_input.b.x)), _wgslsmith_dot_vec2_u32(u_input.b, ~vec2<u32>(4294967295u, 1u))), select(34546u, 45133u, (global0.x >= global0.x) && false), any(global1[_wgslsmith_index_u32(u_input.c.x, 6u)])), ~(~min(~u_input.a, reverseBits(u_input.a))), 1u);
    return StorageBuffer(_wgslsmith_mod_u32(0u, 49653u) | abs(_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, 1u), u_input.c.x)), global3[_wgslsmith_index_u32(firstLeadingBit(select(_wgslsmith_div_u32(u_input.c.x, 4294967295u), 0u, 646f >= var_0.a.a.x)) | u_input.a, 9u)], countOneBits((~vec3<u32>(u_input.c.x, u_input.a, 1u) | vec3<u32>(u_input.c.x, u_input.a, u_input.a)) ^ vec3<u32>(u_input.c.x, firstLeadingBit(4294967295u), 4294967295u << (u_input.a % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = 1i ^ abs(~(i32(-1i) * -global0.x));
    global1 = array<vec4<bool>, 6>();
    let var_2 = _wgslsmith_f_op_f32(select(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2118f)) * _wgslsmith_f_op_f32(f32(-1f) * -1731f))), _wgslsmith_f_op_f32(1329f - 339f)), any(vec2<bool>(false, all(vec3<bool>(false, true, true)) & true))));
    global1 = array<vec4<bool>, 6>();
    var_1 = ~abs(_wgslsmith_add_i32(0i, i32(-1i) * -1i) >> (abs(var_0) % 32u));
    let x = u_input.a;
    s_output = func_5(func_1());
}

