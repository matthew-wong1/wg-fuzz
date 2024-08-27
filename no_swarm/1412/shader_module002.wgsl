struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec3<bool>, 2>;

var<private> global2: i32;

var<private> global3: f32 = -397f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = arg_1.c;
    var_0 = Struct_2(arg_1.a);
    var var_1 = countOneBits(max(-arg_1.a.a, min(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.a.d.x, var_0.a.d.x, arg_1.c.a.a), vec3<i32>(1i, 1i, 1i)), 38400i)));
    global2 = _wgslsmith_clamp_i32(-2147483647i, abs(~(-firstTrailingBit(arg_1.b.a))), firstTrailingBit(arg_1.c.a.a));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2218f * 1534f)))), _wgslsmith_f_op_f32(abs(global0.x)));
    return arg_1.b.c.xz;
}

fn func_2(arg_0: vec2<bool>) -> vec2<bool> {
    let var_0 = Struct_4(Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-48388i, -2147483647i, -29408i)), vec3<i32>(-2147483647i, 1i, -1i)), ~1i), ~select(vec4<u32>(u_input.a.x, 37718u, 11058u, u_input.a.x), u_input.a, arg_0.x), global1[_wgslsmith_index_u32(u_input.a.x, 2u)], reverseBits(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(-2147483647i, -1i)), firstTrailingBit(vec2<i32>(0i, 1i))))), Struct_1(-1i, u_input.a, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-42177i, -1i, -23719i), vec3<i32>(1i, 1i, 1i)), 0i)));
    var var_1 = global0.x;
    var var_2 = vec3<bool>(false, all(select(vec2<bool>(true, true), var_0.a.c.xy, select(arg_0, func_3(vec2<u32>(var_0.a.b.x, 35436u), Struct_3(var_0.b, Struct_1(var_0.a.a, vec4<u32>(var_0.a.b.x, var_0.b.b.x, 32157u, 33534u), global1[_wgslsmith_index_u32(11443u, 2u)], vec2<i32>(41576i, -36691i)), Struct_2(Struct_1(var_0.b.d.x, vec4<u32>(u_input.a.x, 1u, var_0.b.b.x, var_0.a.b.x), global1[_wgslsmith_index_u32(var_0.b.b.x, 2u)], var_0.a.d)), var_0.b)), select(var_0.b.c.yy, vec2<bool>(var_0.b.c.x, arg_0.x), var_0.b.c.x)))), !(var_0.b.c.x != false));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-309f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global0.x)))), false)), _wgslsmith_f_op_f32(-832f + -1352f))), _wgslsmith_f_op_f32(-global0.x));
    var var_4 = _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(var_0.b.a, -2147483647i)) | vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-56287i, var_0.b.d.x, 2147483647i), vec3<i32>(var_0.a.d.x, var_0.a.d.x, var_0.a.d.x)), -52422i), -(~var_0.b.d)), max(firstLeadingBit(-(~vec2<i32>(var_0.a.a, var_0.a.a))), _wgslsmith_clamp_vec2_i32(select(var_0.b.d, vec2<i32>(1i, var_0.b.a), true), ~(~vec2<i32>(var_0.b.d.x, 2147483647i)), firstLeadingBit(~var_0.a.d))));
    return var_0.b.c.zz;
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(~(~(-1i)) << (~(~_wgslsmith_clamp_u32(38985u, 4294967295u, arg_1.b.b.x)) % 32u), _wgslsmith_mod_vec4_u32(vec4<u32>(~(arg_1.b.b.x | 1u), 43153u | ~arg_1.a.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1894u, arg_1.a.b.x, arg_1.a.b.x), arg_1.a.b.xyw), arg_1.b.b.xxx), firstLeadingBit(39676u)), ~(arg_2.a.b | vec4<u32>(arg_2.a.b.x, 41100u, 52408u, arg_2.a.b.x))), vec3<bool>(true & !arg_1.b.c.x, arg_2.a.c.x, countOneBits(abs(arg_2.a.a)) < -2147483647i), _wgslsmith_mod_vec2_i32(~vec2<i32>(arg_1.b.d.x, arg_1.b.a) >> ((firstLeadingBit(arg_1.b.b.xy) ^ abs(arg_2.a.b.yy)) % vec2<u32>(32u)), select(-arg_2.a.d, (vec2<i32>(-1i, arg_2.a.d.x) & vec2<i32>(-31429i, arg_1.b.a)) ^ vec2<i32>(2147483647i, arg_1.b.d.x), true)));
    var var_1 = !select(func_2(var_0.c.yx), var_0.c.xy, select(vec2<bool>(0u != var_0.b.x, arg_2.a.c.x & false), vec2<bool>(arg_2.a.c.x, !arg_1.a.c.x), func_3(~vec2<u32>(0u, u_input.a.x), Struct_3(Struct_1(24267i, vec4<u32>(1u, var_0.b.x, u_input.a.x, var_0.b.x), var_0.c, vec2<i32>(12822i, arg_1.a.a)), Struct_1(4146i, vec4<u32>(4294967295u, 62645u, 0u, 1u), arg_2.a.c, arg_2.a.d), arg_2, Struct_1(-4433i, arg_1.b.b, vec3<bool>(false, false, arg_2.a.c.x), vec2<i32>(arg_2.a.d.x, -1i)))).x));
    let var_2 = countOneBits(vec4<u32>(4294967295u | firstTrailingBit(arg_1.b.b.x), ~arg_2.a.b.x, ~firstTrailingBit(33420u), 19070u)) ^ vec4<u32>(arg_1.b.b.x, 113562u, 19795u, 12936u);
    return Struct_1(arg_1.b.a, var_0.b, vec3<bool>(func_2(!var_0.c.xx).x, arg_1.a.c.x, var_0.c.x), arg_1.b.d);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec2<f32>) -> vec2<i32> {
    let var_0 = -20960i >> (((arg_1 & 1u) | arg_0.a.b.x) % 32u);
    global2 = i32(-1i) * -(~var_0);
    let var_1 = arg_0.a.c;
    var var_2 = 352f;
    var var_3 = ~abs((vec4<i32>(var_0, arg_0.a.d.x, var_0, arg_0.a.d.x) & vec4<i32>(arg_0.a.a, var_0, 2147483647i, var_0)) | reverseBits(vec4<i32>(arg_0.a.a, var_0, arg_0.a.d.x, arg_0.a.d.x))) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-39671i, ~_wgslsmith_clamp_i32(arg_0.a.d.x, -7742i, arg_0.a.a), var_0, arg_0.a.d.x), ~(vec4<i32>(-1i) * -vec4<i32>(0i, -2147483647i, 1i, 23827i)));
    return -arg_0.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-480f, global0.x));
    var var_0 = 25341i;
    var var_1 = ~func_4(Struct_2(func_1(global0.x, Struct_4(Struct_1(0i, vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec3<bool>(false, true, true), vec2<i32>(-1i, 36695i)), Struct_1(0i, u_input.a, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec2<i32>(-58067i, -27558i))), Struct_2(Struct_1(-1i, u_input.a, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec2<i32>(0i, 5879i))))), u_input.a.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1442f, global0.x))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, -1356f))))) | firstTrailingBit(countOneBits(vec2<i32>(1i, 1i)));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(global0.x, 735f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(841f, global0.x)))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, -991f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1623f, -867f) * vec2<f32>(1000f, global0.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -232f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, global0.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(-113f, 1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(countOneBits(~firstLeadingBit(vec2<i32>(-1i, var_1.x))), vec2<i32>(var_1.x, -2147483647i)));
}

