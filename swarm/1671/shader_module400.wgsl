struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(44595u, 4294967295u, 7654u);

var<private> global1: array<Struct_1, 18>;

var<private> global2: array<f32, 25>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    global0 = vec3<u32>(~global0.x, firstTrailingBit(37162u), 1u);
    var var_0 = Struct_1(~(~(-vec4<i32>(-14035i, -18397i, -68809i, 16181i) ^ vec4<i32>(22278i, u_input.a, u_input.a, u_input.a))), abs(global0.x), _wgslsmith_div_i32(u_input.e, ~13651i), true, vec3<u32>(47900u, 98764u, 60904u));
    let var_1 = select(!(!vec4<bool>(var_0.d, true, false, true)), select(vec4<bool>(any(vec4<bool>(false, var_0.d, true, false)), any(!vec4<bool>(true, var_0.d, false, var_0.d)), false, false), select(select(select(vec4<bool>(var_0.d, true, false, false), vec4<bool>(var_0.d, true, var_0.d, var_0.d), vec4<bool>(false, var_0.d, var_0.d, true)), !vec4<bool>(true, var_0.d, var_0.d, false), !var_0.d), vec4<bool>(select(var_0.d, false, var_0.d), true, select(var_0.d, false, var_0.d), var_0.d), true), vec4<bool>(true, var_0.d, true, !(!var_0.d))), select(vec4<bool>(true, select(any(vec4<bool>(var_0.d, false, false, false)), true, 0u >= u_input.d), true, !(global2[_wgslsmith_index_u32(39432u, 25u)] == global2[_wgslsmith_index_u32(0u, 25u)])), select(!(!vec4<bool>(var_0.d, var_0.d, false, var_0.d)), !select(vec4<bool>(var_0.d, false, var_0.d, false), vec4<bool>(var_0.d, true, false, var_0.d), var_0.d), !vec4<bool>(false, var_0.d, var_0.d, false)), all(!(!vec4<bool>(false, false, true, var_0.d)))));
    var var_2 = 2147483647i;
    let var_3 = Struct_2(global1[_wgslsmith_index_u32(~((~global0.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, u_input.b, 1u, 0u), vec4<u32>(11101u, global0.x, 1u, 0u)) % 32u)) | ~u_input.d), 18u)], select(var_1.zw, !var_1.xx, select(vec2<bool>(var_1.x & true, var_0.a.x <= -1151i), var_1.zz, vec2<bool>(var_1.x, !var_0.d))), !var_1.xw, global0.xx, var_0.a.x);
    return ~var_3.a.b;
}

fn func_2() -> vec4<f32> {
    global2 = array<f32, 25>();
    global1 = array<Struct_1, 18>();
    let var_0 = vec2<bool>(!(!(!select(false, true, true))), ~global0.x == 1u);
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.x, 10278u) & func_3(), 18u)], select(select(vec2<bool>(var_0.x, false), var_0, !(!var_0.x)), vec2<bool>(var_0.x, u_input.c != _wgslsmith_clamp_u32(0u, global0.x, 19775u)), var_0.x), var_0, _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, global0.x, 0u), vec4<u32>(global0.x, 1u, 0u, 0u)) | u_input.d, ~_wgslsmith_sub_u32(u_input.c, 85503u)), select(~vec2<u32>(u_input.c, 3187u), ~global0.xy, var_0.x)), i32(-1i) * -u_input.e);
    global2 = array<f32, 25>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 25u)] + global2[_wgslsmith_index_u32(0u, 25u)]), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(71798u, 25u)], global2[_wgslsmith_index_u32(0u, 25u)])), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(45856u, 25u)] * -102f), global2[_wgslsmith_index_u32(countOneBits(4294967295u), 25u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(213f, -875f, 1000f, global2[_wgslsmith_index_u32(0u, 25u)]), vec4<f32>(global2[_wgslsmith_index_u32(26721u, 25u)], global2[_wgslsmith_index_u32(global0.x, 25u)], -337f, 894f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(790f, global2[_wgslsmith_index_u32(global0.x, 25u)], -851f, global2[_wgslsmith_index_u32(global0.x, 25u)]), vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], global2[_wgslsmith_index_u32(4294967295u, 25u)], 737f, global2[_wgslsmith_index_u32(var_1.a.b, 25u)])))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1261f * -1184f), 168f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.x, 25u)] + global2[_wgslsmith_index_u32(var_1.d.x, 25u)]), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(global0.x, 25u)]))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2[_wgslsmith_index_u32(48330u, 25u)], 241f, 401f, global2[_wgslsmith_index_u32(global0.x, 25u)]), vec4<f32>(-379f, 522f, global2[_wgslsmith_index_u32(45007u, 25u)], global2[_wgslsmith_index_u32(global0.x, 25u)])))))))));
}

fn func_1() -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 25u)] * global2[_wgslsmith_index_u32(1u, 25u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(global0.yy, global0.yx), ~37885u), 25u)]) * global2[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_f_op_f32(f32(-1f) * -954f));
    global1 = array<Struct_1, 18>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(866f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1401f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-399f + var_0.x))))) - _wgslsmith_f_op_vec4_f32(func_2()));
    var var_2 = ~select(-max(vec2<i32>(2147483647i, -12523i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e, u_input.e), vec2<i32>(u_input.e, 0i))), -max(firstLeadingBit(vec2<i32>(41473i, 0i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.e, u_input.a), vec2<i32>(u_input.a, u_input.e))), select(vec2<bool>(true, 2147483647i < u_input.a), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, select(true, false, true))));
    var_2 = ~(abs(~(~vec2<i32>(2147483647i, var_2.x))) << ((reverseBits(vec2<u32>(u_input.d, 50416u) << (vec2<u32>(global0.x, u_input.c) % vec2<u32>(32u))) >> (global0.zz % vec2<u32>(32u))) % vec2<u32>(32u)));
    return all(select(vec4<bool>(true, true, true, true), vec4<bool>(-26462i < (u_input.a ^ var_2.x), (var_2.x > var_2.x) && true, !any(vec2<bool>(false, true)), any(vec4<bool>(false, true, true, false))), -427f > var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec3<bool>(true, !(!select(false, false, false)), true));
    let var_1 = Struct_1(_wgslsmith_add_vec4_i32(~vec4<i32>(_wgslsmith_add_i32(u_input.e, 58629i), -1i, 1087i, ~(-2147483647i)), (-vec4<i32>(u_input.e, u_input.a, u_input.a, u_input.e) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 113313u, u_input.b), vec4<u32>(global0.x, u_input.d, 4294967295u, global0.x)) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global0.x, u_input.d, 0u), ~vec4<u32>(0u, u_input.d, u_input.d, 59976u)) % vec4<u32>(32u))), 59585u, -9440i, !func_1(), vec3<u32>(abs(global0.x), ~min(1u, 4294967295u), ~(~(~global0.x))));
    global1 = array<Struct_1, 18>();
    global2 = array<f32, 25>();
    global1 = array<Struct_1, 18>();
    let var_2 = select(vec2<bool>(var_1.d, !(global2[_wgslsmith_index_u32(u_input.d, 25u)] <= _wgslsmith_f_op_vec4_f32(func_2()).x)), vec2<bool>(var_1.d, any(select(vec4<bool>(var_1.d, var_1.d, true, var_1.d), !vec4<bool>(var_1.d, var_1.d, true, false), vec4<bool>(var_1.d, true, false, var_1.d)))), false);
    global2 = array<f32, 25>();
    let var_3 = !select(vec3<bool>(all(select(vec2<bool>(var_1.d, var_1.d), vec2<bool>(var_1.d, var_1.d), var_2)), all(select(vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(false, false, var_2.x, var_1.d), true)), !(!var_1.d)), !(!vec3<bool>(var_1.d, var_1.d, true)), select(!vec3<bool>(var_2.x, false, var_2.x), select(!vec3<bool>(var_1.d, true, false), !vec3<bool>(false, false, var_1.d), !vec3<bool>(false, false, var_2.x)), var_1.d || (var_2.x & var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-617f);
}

