struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<u32, 32> = array<u32, 32>(4294967295u, 0u, 41838u, 4294967295u, 0u, 32973u, 61150u, 2133u, 0u, 3474u, 0u, 16135u, 4294967295u, 10070u, 1u, 88611u, 10941u, 0u, 4294967295u, 4294967295u, 1u, 23010u, 8912u, 4294967295u, 28360u, 1u, 4294967295u, 1u, 4294967295u, 28755u, 1u, 1u);

var<private> global2: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(47619u, 1u, 12229u, 1u), vec4<u32>(4294967295u, 100675u, 0u, 1u), vec4<u32>(4294967295u, 21282u, 0u, 1u), vec4<u32>(4294967295u, 1u, 46940u, 1u), vec4<u32>(56183u, 4294967295u, 1u, 6408u), vec4<u32>(9206u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(1u, 114u, 27388u, 35211u), vec4<u32>(4294967295u, 35919u, 4294967295u, 59918u));

var<private> global3: Struct_1;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<bool>) -> bool {
    let var_0 = ~abs(41147u);
    global3 = Struct_1(vec3<bool>(!arg_2.x, select(arg_2.x, true, any(!vec3<bool>(arg_2.x, global3.a.x, global3.a.x))), !(!(arg_2.x && true))));
    let var_1 = global0.xz;
    let var_2 = ~u_input.d;
    var var_3 = Struct_1(vec3<bool>(!global3.a.x, global3.a.x, arg_2.x));
    return all(var_3.a);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = vec3<i32>(~(i32(-1i) * -u_input.b) & -1i, u_input.a, ~select(-arg_0.x, -8014i, func_3(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)], 32u)], 12961u), global0.x, vec3<bool>(arg_1.a.x, true, false))) >> (~u_input.d % 32u));
    let var_1 = Struct_1(!select(select(vec3<bool>(true, true, false), select(vec3<bool>(false, arg_1.a.x, false), arg_1.a, false), global3.a), select(select(vec3<bool>(arg_1.a.x, false, arg_1.a.x), arg_1.a, false), global3.a, true), !(-1i >= global0.x)));
    global0 = _wgslsmith_clamp_vec3_i32(~vec3<i32>(firstTrailingBit(~arg_0.x), -(~68038i), global0.x), var_0 ^ -var_0, firstTrailingBit(_wgslsmith_add_vec3_i32(select(vec3<i32>(global0.x, arg_0.x, global0.x), var_0, arg_1.a) >> (~vec3<u32>(global1[_wgslsmith_index_u32(59810u, 32u)], 0u, global1[_wgslsmith_index_u32(u_input.d, 32u)]) % vec3<u32>(32u)), vec3<i32>(i32(-1i) * -31719i, _wgslsmith_dot_vec3_i32(var_0, var_0), -18128i ^ arg_0.x))));
    let var_2 = u_input.b;
    global2 = array<vec4<u32>, 8>();
    return ~(arg_2 << (4294967295u % 32u));
}

fn func_1() -> StorageBuffer {
    global0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x & global0.x, 2147483647i, ~(~2559i)), vec3<i32>(14388i, -(~(-2147483647i)), _wgslsmith_mod_i32(u_input.a & func_2(global0.zy, Struct_1(global3.a), -1i), select(-7174i, _wgslsmith_clamp_i32(-20892i, u_input.c, -4i), false))), firstTrailingBit(_wgslsmith_mult_vec3_i32(abs(firstLeadingBit(vec3<i32>(global0.x, global0.x, global0.x))), ~vec3<i32>(u_input.a, -1i, u_input.b) & -vec3<i32>(-38978i, 0i, global0.x))));
    global2 = array<vec4<u32>, 8>();
    global0 = -vec3<i32>(u_input.b, ~(~(global0.x ^ global0.x)), ~(~0i));
    var var_0 = Struct_1(select(select(select(global3.a, global3.a, vec3<bool>(global3.a.x, true, global3.a.x)), !vec3<bool>(global3.a.x, global3.a.x, false), select(vec3<bool>(false, false, global3.a.x), global3.a, func_3(vec2<u32>(37596u, 168313u), u_input.b, vec3<bool>(true, global3.a.x, false)))), !global3.a, !(!any(vec4<bool>(true, global3.a.x, false, global3.a.x)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1161f, -245f), vec3<f32>(-468f, 1287f, -1483f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-102f, 172f, -637f) - vec3<f32>(-1543f, 1147f, 1000f))), !global3.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-198f, 1231f, -287f) * vec3<f32>(1038f, -129f, -808f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    return StorageBuffer(1000f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(638f, var_1.x, _wgslsmith_f_op_f32(var_1.x - var_1.x), var_1.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x * -1600f), _wgslsmith_f_op_f32(872f + var_1.x), _wgslsmith_f_op_f32(-var_1.x)))), any(var_0.a.yx))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 1851f) + var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

