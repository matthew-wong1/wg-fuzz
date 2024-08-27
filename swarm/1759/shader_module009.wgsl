struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(27379i, 49010i, 2147483647i, 2147483647i, 2147483647i, -14360i, -911i, 1i, 8241i, -31703i, -1i, 47836i, 17797i, 2147483647i);

var<private> global1: Struct_3;

var<private> global2: array<i32, 17> = array<i32, 17>(1i, -1i, 2147483647i, -25241i, 2147483647i, i32(-2147483648), 2147483647i, 16293i, 2147483647i, 17242i, 0i, 3892i, 42454i, -54339i, 0i, -68235i, 8857i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(838f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1432f + 800f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(578f, -833f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(142f, -1122f)), vec2<bool>(true, false))), vec2<f32>(-1409f, _wgslsmith_f_op_f32(f32(-1f) * -477f)))), vec2<f32>(490f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1196f - 915f), -819f)), vec2<bool>((global1.a.b.a.x && arg_3) & (arg_3 & true), true))));
    global1 = Struct_3(arg_2, _wgslsmith_dot_vec3_i32(global1.a.b.b, arg_2.b.b >> (vec3<u32>(0u & u_input.b.x, arg_0.x, _wgslsmith_add_u32(global1.a.a.x, 48321u)) % vec3<u32>(32u))));
    return -551f;
}

fn func_2() -> Struct_2 {
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    var var_0 = Struct_2(~((~global1.a.a & _wgslsmith_clamp_vec4_u32(global1.a.a, vec4<u32>(global1.a.a.x, u_input.b.x, 2883u, 0u), vec4<u32>(global1.a.a.x, 1u, 1546u, global1.a.a.x))) >> (global1.a.a % vec4<u32>(32u))), global1.a.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-227f, 446f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1687f) * _wgslsmith_f_op_f32(f32(-1f) * -156f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-727f)), 133f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(vec3<u32>(global1.a.a.x, 17529u, var_0.a.x), vec4<i32>(31708i, 2147483647i, 1i, global2[_wgslsmith_index_u32(9730u, 17u)]), global1.a, global1.a.b.a.x)), 1202f, 1260f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-192f, -1977f, 515f))))));
    let var_2 = Struct_3(global1.a, _wgslsmith_mod_i32(reverseBits(u_input.a), firstLeadingBit(global1.b)));
    return Struct_2(select(select(~(~vec4<u32>(u_input.b.x, var_2.a.a.x, 28216u, 12711u)), global1.a.a, true), var_2.a.a, all(vec2<bool>(true, any(vec4<bool>(true, true, global1.a.b.a.x, false))))), Struct_1(vec2<bool>(!var_0.b.a.x, false), vec3<i32>(-1i, select(u_input.a, -var_2.a.b.b.x, all(vec3<bool>(true, true, var_0.b.a.x))), _wgslsmith_add_i32(2147483647i, var_0.b.b.x) << (~global1.a.a.x % 32u))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>) -> i32 {
    global1 = Struct_3(func_2(), select(global2[_wgslsmith_index_u32(31076u, 17u)], global2[_wgslsmith_index_u32(global1.a.a.x ^ ~func_2().a.x, 17u)], all(select(!vec3<bool>(false, arg_0.a.b.a.x, true), !vec3<bool>(global1.a.b.a.x, arg_0.a.b.a.x, arg_0.a.b.a.x), vec3<bool>(global1.a.b.a.x, global1.a.b.a.x, arg_0.a.b.a.x)))));
    global0 = array<i32, 14>();
    global1 = Struct_3(global1.a, _wgslsmith_sub_i32(global1.a.b.b.x, arg_0.a.b.b.x));
    let var_0 = -countOneBits(~(-(vec4<i32>(-1i, global2[_wgslsmith_index_u32(arg_1.x, 17u)], u_input.a, global2[_wgslsmith_index_u32(u_input.b.x, 17u)]) & vec4<i32>(-1i, global1.a.b.b.x, 2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 14u)]))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-299f, 839f, false)) - -145f))), 379f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1607f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - 800f))))));
    return var_0.x;
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: vec3<i32>) -> StorageBuffer {
    let var_0 = select(arg_1.a, !vec2<bool>(!(arg_1.a.x && true), 1u >= global1.a.a.x), arg_1.a.x);
    let var_1 = global1.a.a;
    var var_2 = _wgslsmith_div_f32(1000f, -1000f);
    let var_3 = Struct_1(vec2<bool>(-2147483647i != u_input.a, select(any(select(vec2<bool>(true, false), global1.a.b.a, vec2<bool>(var_0.x, true))), !var_0.x, true)), vec3<i32>(24996i, func_4(Struct_3(func_2(), -arg_2.x), ~_wgslsmith_div_vec2_u32(vec2<u32>(59644u, global1.a.a.x), vec2<u32>(24038u, 15423u))), global2[_wgslsmith_index_u32(countOneBits(reverseBits(_wgslsmith_mod_u32(19445u, global1.a.a.x))), 17u)]));
    let var_4 = -1621f;
    return StorageBuffer(-1000f, select(vec3<u32>(~u_input.b.x | global1.a.a.x, global1.a.a.x, ~(~global1.a.a.x)), _wgslsmith_div_vec3_u32(abs(var_1.zxy), _wgslsmith_div_vec3_u32(vec3<u32>(global1.a.a.x, 43332u, 4294967295u), global1.a.a.xww) << (abs(var_1.xwx) % vec3<u32>(32u))), !vec3<bool>(global1.a.b.a.x, true, true)), -global0[_wgslsmith_index_u32(var_1.x, 14u)] ^ -45611i, global0[_wgslsmith_index_u32(reverseBits(u_input.b.x), 14u)], -23293i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(2147483647i, Struct_4(vec2<bool>(true, false)), -(~(vec3<i32>(global1.a.b.b.x, global2[_wgslsmith_index_u32(global1.a.a.x, 17u)], -1731i) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.a.a.x, 4294967295u, global1.a.a.x), vec3<u32>(8908u, global1.a.a.x, 4294967295u), global1.a.a.wzy) % vec3<u32>(32u)))));
}

