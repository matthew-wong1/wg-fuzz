struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: f32 = 1755f;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(1686f, -6526i), Struct_1(-910f, i32(-2147483648)), Struct_1(-1721f, 7159i), Struct_1(636f, 1i), Struct_1(-203f, -7519i), Struct_1(-2471f, -1i), Struct_1(-320f, 13169i), Struct_1(-1171f, -1i), Struct_1(1362f, 1i), Struct_1(502f, 50449i), Struct_1(-660f, 0i), Struct_1(612f, -70037i), Struct_1(-320f, 40682i), Struct_1(-241f, i32(-2147483648)), Struct_1(128f, -63771i), Struct_1(-658f, 48856i), Struct_1(378f, i32(-2147483648)), Struct_1(1000f, i32(-2147483648)), Struct_1(501f, i32(-2147483648)), Struct_1(-320f, 0i), Struct_1(1480f, 1376i), Struct_1(-1163f, i32(-2147483648)), Struct_1(-334f, 0i), Struct_1(-1340f, 0i), Struct_1(-744f, -58445i), Struct_1(213f, -36560i), Struct_1(-1104f, 2147483647i), Struct_1(367f, 46069i), Struct_1(560f, 21138i), Struct_1(544f, 82650i), Struct_1(-493f, 24771i), Struct_1(-197f, 65044i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    global2 = array<Struct_1, 32>();
    global0 = array<i32, 27>();
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a)) + _wgslsmith_f_op_f32(-arg_0.a)), 329f, _wgslsmith_f_op_f32(-763f + _wgslsmith_f_op_f32(-arg_0.a))), ~0i, _wgslsmith_clamp_i32(min(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, reverseBits(1u)), 27u)], _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, arg_0.b, global0[_wgslsmith_index_u32(22470u, 27u)]), ~vec3<i32>(arg_0.b, u_input.a, 0i))), -4570i, select(0i, _wgslsmith_sub_i32(~3145i, firstLeadingBit(-1i)), select(true, true, false))), 4294967295u);
    let var_1 = true;
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, -489f, arg_0.a)) * var_0.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-arg_0.a)))), ~(-29600i), arg_0.b, 1u);
    return vec3<u32>(1705u, ~(~0u ^ countOneBits(var_0.d & var_0.d)), reverseBits(~1u));
}

fn func_2() -> u32 {
    global2 = array<Struct_1, 32>();
    var var_0 = func_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1087f))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -u_input.a));
    let var_1 = !any(vec3<bool>(any(vec3<bool>(true, true, true)), true, true));
    global0 = array<i32, 27>();
    var var_2 = global2[_wgslsmith_index_u32(var_0.x, 32u)];
    return var_0.x;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = 0u;
    let var_1 = _wgslsmith_f_op_f32(select(arg_0.a, -602f, !arg_1));
    let var_2 = !vec3<bool>(true, false, arg_1);
    var_0 = ~_wgslsmith_mod_u32(func_2(), abs(firstTrailingBit(1u)));
    let var_3 = arg_0;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(global0[_wgslsmith_index_u32(0u, 27u)], -1076i);
    var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(5331u, func_1(global2[_wgslsmith_index_u32(1u, 32u)], true), func_1(Struct_1(-552f, var_0.x), true)) << (func_3(Struct_1(442f, -20718i)).x % 32u), 27u)], 17989i), ~(~_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(1u, 27u)]), vec2<i32>(1i, 1i))));
    let var_1 = vec4<u32>(~(~(~74772u)) & func_1(Struct_1(-108f, global0[_wgslsmith_index_u32(~113286u, 27u)]), any(vec2<bool>(true, true))), 0u, 80749u, 1u);
    global2 = array<Struct_1, 32>();
    let var_2 = all(select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), true), vec3<bool>(select(true, true, true), true, any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true))), vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.xxz);
}

