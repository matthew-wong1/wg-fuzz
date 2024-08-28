struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(-1336f, -590f, 844f, -2403f, -481f, -163f, 693f, 174f, -832f, 417f, 960f, 104f);

var<private> global1: array<i32, 17>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> bool {
    global0 = array<f32, 12>();
    let var_0 = vec3<u32>(_wgslsmith_add_u32(~u_input.a.x | 57536u, 1u), ~_wgslsmith_add_u32(~111700u, 1u), 36186u) | u_input.a.wzx;
    var var_1 = firstLeadingBit(arg_0.b);
    global1 = array<i32, 17>();
    let var_2 = !(!select(!(!arg_1.b.zzx), arg_1.b.wzx, (1u ^ var_0.x) >= _wgslsmith_add_u32(21713u, var_0.x)));
    return arg_1.d.x;
}

fn func_3(arg_0: u32) -> vec2<i32> {
    global1 = array<i32, 17>();
    global1 = array<i32, 17>();
    global1 = array<i32, 17>();
    return _wgslsmith_add_vec2_i32(~vec2<i32>(25449i, global1[_wgslsmith_index_u32(min(u_input.a.x, u_input.a.x), 17u)] >> (~arg_0 % 32u)), firstTrailingBit(-(~vec2<i32>(u_input.b.x, -2147483647i))));
}

fn func_4(arg_0: vec2<i32>) -> f32 {
    let var_0 = countOneBits(1663u);
    var var_1 = ~u_input.a.xx;
    var_1 = _wgslsmith_clamp_vec2_u32(~(~(~vec2<u32>(var_1.x, var_0))), ~_wgslsmith_div_vec2_u32(u_input.a.wy, u_input.a.yw >> (u_input.a.yw % vec2<u32>(32u))), vec2<u32>(~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~21923u)) << (vec2<u32>(var_1.x, ~(~firstLeadingBit(var_1.x))) % vec2<u32>(32u));
    let var_2 = Struct_3((global1[_wgslsmith_index_u32(0u, 17u)] & arg_0.x) << (reverseBits(4294967295u) % 32u), vec4<bool>(all(vec3<bool>(true, true, true)), true, true, (false || any(vec4<bool>(false, false, false, false))) == select(true, any(vec3<bool>(true, false, false)), true)), u_input.b.xww, select(vec2<bool>(!select(false, false, true), true), select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, true)), var_1.x != 4294967295u), true));
    global1 = array<i32, 17>();
    return 414f;
}

fn func_5(arg_0: f32, arg_1: vec2<bool>) -> vec2<bool> {
    var var_0 = -min(-func_3(reverseBits(u_input.a.x)).x, abs(u_input.b.x));
    global1 = array<i32, 17>();
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(38015u, 17u)], !(!vec4<bool>(all(vec3<bool>(true, true, true)), !arg_1.x, 0u < u_input.a.x, u_input.a.x != u_input.a.x)), -vec3<i32>(select(~u_input.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], true), 1i, -1i), arg_1);
    let var_2 = Struct_3(abs(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 17u)]), vec4<bool>(arg_1.x, true, any(select(!var_1.b, !var_1.b, select(vec4<bool>(var_1.b.x, var_1.d.x, arg_1.x, arg_1.x), var_1.b, false))), !((u_input.b.x <= 2147483647i) || arg_1.x)), abs(~vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b.zzx, vec3<i32>(-1i, var_1.a, 40197i)), _wgslsmith_div_i32(var_1.a, -1098i), min(var_1.a, -2147483647i))), !select(!vec2<bool>(true, arg_1.x), arg_1, select(vec2<bool>(var_1.b.x, var_1.b.x), !vec2<bool>(var_1.d.x, var_1.d.x), false)));
    global0 = array<f32, 12>();
    return select(!(!vec2<bool>(-22132i == global1[_wgslsmith_index_u32(39800u, 17u)], all(var_1.d))), vec2<bool>(var_1.b.x, var_2.b.x), var_1.b.ww);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = Struct_3(countOneBits(-27146i), !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, false, false, false), func_2(Struct_1(u_input.b.x, vec3<i32>(arg_1.a, 0i, arg_1.b.x)), Struct_3(-11391i, vec4<bool>(true, false, false, true), arg_1.b, vec2<bool>(false, true))))), _wgslsmith_sub_vec3_i32(-min(~u_input.b.xyy, -vec3<i32>(u_input.b.x, 2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 17u)])), _wgslsmith_div_vec3_i32(~arg_1.b ^ u_input.b.xww, _wgslsmith_clamp_vec3_i32(vec3<i32>(31115i, -1i, global1[_wgslsmith_index_u32(1u, 17u)]), vec3<i32>(arg_1.a, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 6961i), arg_1.b) >> (u_input.a.yxw % vec3<u32>(32u)))), select(func_5(_wgslsmith_f_op_f32(func_4(func_3(u_input.a.x))), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), !any(vec4<bool>(true, true, false, true))));
    let var_1 = true && var_0.b.x;
    let var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.wz, ~u_input.a.zy), u_input.a.x, select(u_input.a.x, u_input.a.x, false), reverseBits(u_input.a.x));
    var var_3 = vec2<bool>(true, all(!vec3<bool>(true, any(var_0.b), true)));
    var var_4 = any(vec4<bool>(false, false, true, func_2(arg_1, var_0)));
    return vec2<u32>(22794u, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 12>();
    let var_0 = func_1(-823f, Struct_1(-23518i, ~vec3<i32>(i32(-1i) * -1i, 1i, 49508i)));
    var var_1 = Struct_1(~30509i, u_input.b.wwz);
    var var_2 = Struct_3(0i, !select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(false, true, false, true)), false), firstLeadingBit(vec3<i32>(global1[_wgslsmith_index_u32(1u, 17u)], ~_wgslsmith_add_i32(global1[_wgslsmith_index_u32(1u, 17u)], u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.b.zz, var_1.b.zz))), !select(vec2<bool>(var_1.b.x <= 14467i, global1[_wgslsmith_index_u32(4294967295u, 17u)] > -2147483647i), func_5(1000f, vec2<bool>(true, true)), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), true)));
    let var_3 = var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1006f, -578f, -242f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-119f * 207f), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(var_0.x, 12u)]))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-418f, -348f)))))))), min(vec3<u32>(var_0.x, 6657u, 1u), reverseBits(~vec3<u32>(u_input.a.x, var_0.x, u_input.a.x))));
}

