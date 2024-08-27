struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec3<u32>, 14> = array<vec3<u32>, 14>(vec3<u32>(9307u, 90255u, 8516u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 4560u), vec3<u32>(4294967295u, 14107u, 1u), vec3<u32>(9883u, 1u, 52560u), vec3<u32>(26806u, 4294967295u, 4294967295u), vec3<u32>(59382u, 4294967295u, 102858u), vec3<u32>(47728u, 4833u, 37664u), vec3<u32>(34704u, 0u, 9087u), vec3<u32>(1u, 1u, 68703u), vec3<u32>(8083u, 13402u, 78416u), vec3<u32>(1u, 0u, 3330u), vec3<u32>(0u, 6118u, 4294967295u), vec3<u32>(40288u, 0u, 51504u));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: u32) -> u32 {
    let var_0 = arg_1;
    var var_1 = ~max(arg_1.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_0.a, firstTrailingBit(arg_1.a)), countOneBits(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, var_0.a.x, arg_1.a.x), 14u)])));
    let var_2 = Struct_1(abs(abs(75881u)), select(reverseBits(vec2<i32>(-1i, -2147483647i) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.a.x, arg_2), var_0.a.yx) % vec2<u32>(32u))), -vec2<i32>(-2406i ^ u_input.a, u_input.a), any(vec3<bool>(all(vec4<bool>(false, true, true, true)), select(true, true, true), any(vec2<bool>(false, true))))));
    var var_3 = var_0;
    global0 = arg_0;
    return arg_1.a.x;
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(min(~_wgslsmith_sub_u32(arg_0.x, arg_0.x), ~arg_0.x), min(arg_0.x, 1u), 14960u), vec3<u32>(arg_0.x, func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 394f))), Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(32849u, 1u, arg_0.x), vec3<u32>(1461u, arg_0.x, arg_0.x)), 14u)]), arg_0.x), _wgslsmith_add_u32(44551u, arg_0.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1370f, global0.x)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -155f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x)))))));
    var var_2 = vec3<i32>(u_input.a, -35492i, u_input.a);
    let var_3 = Struct_3(Struct_1(_wgslsmith_sub_u32(abs(~20774u), _wgslsmith_mod_u32(max(1u, 0u), var_0.x | 0u)), firstLeadingBit(vec2<i32>(var_2.x, var_2.x))));
    let var_4 = var_3;
    return var_4;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: Struct_3) -> vec2<i32> {
    let var_0 = _wgslsmith_mult_vec2_u32(~(~vec2<u32>(~4294967295u, ~arg_1.x)), firstLeadingBit(~(~(~arg_1.xy))));
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(firstLeadingBit(~var_0.x), 14u)]);
    var var_2 = vec2<bool>(all(select(vec2<bool>(select(false, true, false), select(true, false, false)), vec2<bool>(true, true), vec2<bool>(true, true))), false);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-589f, _wgslsmith_f_op_f32(trunc(global0.x))) - vec2<f32>(-687f, -134f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-390f, global0.x))))));
    let var_3 = var_2.x;
    return min(arg_3.a.b, -(~arg_3.a.b));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_2(vec4<u32>(~5584u, ~(~arg_1), firstLeadingBit(max(0u, 0u)) ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 73581u), select(vec2<u32>(arg_1, 0u), vec2<u32>(16997u, 53788u), arg_2.yy)), 23044u));
    let var_1 = Struct_3(Struct_1(45792u, ~_wgslsmith_sub_vec2_i32(var_0.a.b, reverseBits(arg_0.b))));
    let var_2 = var_1.a;
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(min(2147483647i, 0i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 0i, arg_3.b.x, arg_0.b.x) & vec4<i32>(-17328i, -2147483647i, u_input.a, -68965i), select(vec4<i32>(arg_3.b.x, -2147483647i, 1i, arg_3.b.x), vec4<i32>(-30800i, -51099i, -1i, var_1.a.b.x), arg_2)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(0i, u_input.a, var_1.a.b.x, -2147483647i)), ~vec4<i32>(30468i, arg_0.b.x, u_input.a, 19687i))), abs(abs(select(-5382i, var_2.b.x, arg_2.x)))), min(-reverseBits(-vec3<i32>(var_1.a.b.x, -797i, -59185i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(var_0.a.b.x, var_2.b.x, 2147483647i), ~vec3<i32>(var_2.b.x, arg_0.b.x, arg_0.b.x), firstLeadingBit(vec3<i32>(32775i, arg_3.b.x, -10988i))), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, var_0.a.b.x), vec3<i32>(var_0.a.b.x, var_0.a.b.x, var_2.b.x)), _wgslsmith_sub_vec3_i32(-vec3<i32>(var_1.a.b.x, arg_0.b.x, var_0.a.b.x), ~vec3<i32>(0i, 35971i, arg_0.b.x)))));
    var var_4 = Struct_2(abs(select(~vec3<u32>(arg_0.a, var_0.a.a, var_2.a), global1[_wgslsmith_index_u32(arg_0.a, 14u)] >> (global1[_wgslsmith_index_u32(21739u, 14u)] % vec3<u32>(32u)), any(arg_2.yxz))) ^ ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a, arg_1, 0u), vec3<u32>(5003u, 4294967295u, 1u))));
    return func_2(vec4<u32>(~24665u, var_2.a, 0u, 95795u)).a;
}

fn func_1() -> vec2<i32> {
    let var_0 = func_5(Struct_1(~(~28005u), ~func_4(~vec2<i32>(45701i, 48966i), ~vec4<u32>(28251u, 4294967295u, 0u, 4294967295u), func_2(vec4<u32>(28537u, 23842u, 4294967295u, 45375u)), Struct_3(Struct_1(10447u, vec2<i32>(u_input.a, 2147483647i))))), func_3(vec2<f32>(-447f, _wgslsmith_f_op_f32(select(-173f, _wgslsmith_f_op_f32(-global0.x), false))), Struct_2(abs(vec3<u32>(28624u, 4294967295u, 73655u) >> (global1[_wgslsmith_index_u32(35257u, 14u)] % vec3<u32>(32u)))), _wgslsmith_add_u32(select(46923u, abs(0u), false), _wgslsmith_add_u32(0u, 1u))), !vec4<bool>(false, !all(vec2<bool>(false, false)), _wgslsmith_clamp_i32(1i, u_input.a, -1i) <= 1i, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true))), func_2(vec4<u32>(1u, 47129u, _wgslsmith_dot_vec2_u32(vec2<u32>(8957u, 0u), ~vec2<u32>(1u, 4294967295u)), 1u)).a);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-862f))))));
    let var_1 = -5468i;
    var var_2 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a << (func_3(vec2<f32>(global0.x, -3182f), Struct_2(vec3<u32>(0u, 0u, 18680u)), var_0.a) % 32u), -(9333i >> (1u % 32u)), ~1i), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1i), ~vec3<i32>(2732i, u_input.a, var_0.b.x), -vec3<i32>(u_input.a, 1i, u_input.a)), vec3<i32>(-2147483647i ^ var_0.b.x, 2147483647i, _wgslsmith_mult_i32(0i, var_1))), countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 0i, var_1), vec3<i32>(1i, -2147483647i, u_input.a))) & vec3<i32>(var_0.b.x, select(var_1, var_0.b.x, true), var_0.b.x));
    var var_3 = false;
    return vec2<i32>(u_input.a, func_4(-vec2<i32>(var_2.x, i32(-1i) * -13076i), ~select(vec4<u32>(var_0.a, 9528u, 0u, 33623u), vec4<u32>(var_0.a, var_0.a, 1u, 23598u) >> (vec4<u32>(1u, 1u, 1u, var_0.a) % vec4<u32>(32u)), all(vec3<bool>(true, false, false))), func_2(vec4<u32>(var_0.a, 72241u, 1u, 29987u)), Struct_3(func_5(var_0, ~23641u, select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), func_5(var_0, 73305u, vec4<bool>(true, true, true, false), var_0)))).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1u, abs(vec2<i32>(~(i32(-1i) * -2147483647i), _wgslsmith_dot_vec2_i32(func_1(), vec2<i32>(u_input.a, u_input.a)))));
    global1 = array<vec3<u32>, 14>();
    let var_1 = func_2(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, 0u, var_0.a << (76574u % 32u), ~61061u), vec4<u32>(var_0.a, var_0.a, var_0.a, 20791u) ^ ~vec4<u32>(1u, 1u, var_0.a, var_0.a)));
    let var_2 = Struct_2(vec3<u32>(abs(0u) << (1u % 32u), ~4294967295u, 1905u));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(570f, global0.x) + vec2<f32>(-102f, -1000f))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, 798f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1893f), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -907f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1000f)), vec2<f32>(-529f, global0.x), select(vec2<bool>(true, true), vec2<bool>(false, true), false))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(176f, global0.x, false)), _wgslsmith_f_op_f32(602f + 432f), global0.x, _wgslsmith_f_op_f32(1038f - global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1832f, global0.x, -1334f, global0.x) - vec4<f32>(global0.x, global0.x, -1453f, 1485f)), vec4<bool>(true, true, true, true))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1295f, global0.x, 715f, 320f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-651f, global0.x, global0.x, -1031f)))))), -_wgslsmith_add_vec3_i32(vec3<i32>(0i, ~(-1i), firstTrailingBit(u_input.a)), vec3<i32>(reverseBits(var_1.a.b.x), 1i, -var_1.a.b.x)), -1707f);
}

