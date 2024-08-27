struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_2(Struct_1(vec3<f32>(-1183f, 2080f, -974f), vec3<i32>(-56854i, -1i, -22733i), vec3<bool>(true, false, false), vec3<u32>(4294967295u, 1u, 12903u), vec2<u32>(17152u, 34745u)), Struct_1(vec3<f32>(670f, -1331f, 602f), vec3<i32>(0i, 1i, i32(-2147483648)), vec3<bool>(false, false, false), vec3<u32>(5211u, 1u, 1u), vec2<u32>(21736u, 29521u))), 32068i, vec4<i32>(2147483647i, 57837i, 2147483647i, 18392i), -707f);

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<f32>(-1444f, -484f, -387f), vec3<i32>(-1i, 29227i, -68110i), vec3<bool>(true, true, false), vec3<u32>(0u, 9441u, 0u), vec2<u32>(59042u, 0u)), Struct_1(vec3<f32>(586f, 1342f, 288f), vec3<i32>(-1i, 2147483647i, 31453i), vec3<bool>(true, true, true), vec3<u32>(29162u, 4294967295u, 15095u), vec2<u32>(1u, 1u)));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>) -> i32 {
    var var_0 = Struct_3(~select(vec3<i32>(-global2.b.b.x, arg_0.x >> (0u % 32u), 15524i), -global2.b.b, select(vec3<bool>(false, global2.a.c.x, true), vec3<bool>(global1.x, global2.b.c.x, global0.a.a.c.x), vec3<bool>(global1.x, false, false))), global0.a, ~arg_1, ~arg_1);
    var var_1 = _wgslsmith_div_u32(24589u, var_0.d.x) ^ 1u;
    let var_2 = Struct_4(19923i, 1000f, Struct_2(Struct_1(global0.a.a.a, vec3<i32>(select(-2147483647i, -2147483647i, false), 2147483647i, ~global0.a.a.b.x), !var_0.b.b.c, var_0.c.xxy, var_0.d.xw), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.b.a.x), _wgslsmith_f_op_f32(1445f - var_0.b.a.a.x), -1252f), vec3<i32>(-40529i, i32(-1i) * -17626i, var_0.b.b.b.x), vec3<bool>(true, any(vec4<bool>(true, global1.x, global1.x, false)), false), vec3<u32>(u_input.b, _wgslsmith_mod_u32(arg_1.x, global0.a.a.d.x), 1u), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(global2.a.e.x, 17133u)), vec2<u32>(u_input.b, 48586u)))), Struct_3(select(vec3<i32>(global2.b.b.x ^ -22097i, 1i, var_0.a.x | global2.a.b.x), max(global2.b.b, countOneBits(global2.a.b)), select(global0.a.b.c, var_0.b.a.c, true)), Struct_2(global0.a.b, Struct_1(vec3<f32>(1954f, 141f, -1899f), var_0.a, !global0.a.a.c, vec3<u32>(global2.b.e.x, 1841u, var_0.c.x), vec2<u32>(global0.a.b.e.x, global0.a.a.e.x))), max(vec4<u32>(~4294967295u, abs(1u), _wgslsmith_dot_vec3_u32(var_0.b.b.d, vec3<u32>(12813u, 1493u, u_input.b)), ~var_0.c.x), vec4<u32>(global2.a.e.x, reverseBits(global2.a.e.x), _wgslsmith_dot_vec2_u32(global0.a.a.d.yx, vec2<u32>(global0.a.b.d.x, 1u)), ~global0.a.a.e.x)), arg_1));
    var var_3 = vec3<bool>(global2.b.b.x > reverseBits(countOneBits(max(global0.c.x, 1i))), true, true);
    let var_4 = arg_0;
    return ~(-2147483647i);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.b.a.x + _wgslsmith_f_op_f32(f32(-1f) * -529f)) * -739f) + _wgslsmith_f_op_f32(f32(-1f) * -1801f)));
    var var_1 = Struct_3(-min(vec3<i32>(u_input.a.x, global2.a.b.x, global2.b.b.x) >> (vec3<u32>(u_input.b, arg_0.x, arg_0.x) % vec3<u32>(32u)), vec3<i32>(-10799i, -global2.a.b.x, func_3(arg_2, vec4<u32>(global2.b.d.x, arg_0.x, arg_0.x, u_input.b)))), Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0)), global0.d, _wgslsmith_f_op_f32(-global2.a.a.x)), (global2.b.b & arg_2.wxw) | -vec3<i32>(-2147483647i, arg_2.x, 5598i), global0.a.a.c, global2.a.d, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 0u), arg_0)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(global2.a.a.x)), global2.b.a.x, var_0), vec3<i32>(u_input.a.x, global0.a.a.b.x, -2147483647i) ^ vec3<i32>(arg_2.x, global2.b.b.x, 0i), select(!global2.a.c, vec3<bool>(global1.x, global0.a.b.c.x, false), any(vec2<bool>(false, global2.a.c.x))), ~(~global0.a.a.d), vec2<u32>(arg_0.x >> (1u % 32u), ~u_input.b))), ~countOneBits(_wgslsmith_sub_vec4_u32(max(vec4<u32>(arg_0.x, 42319u, 4294967295u, 48251u), vec4<u32>(global0.a.a.d.x, 46982u, global2.a.d.x, global0.a.a.e.x)), firstLeadingBit(vec4<u32>(arg_0.x, u_input.b, 1u, global2.b.e.x)))), _wgslsmith_div_vec4_u32(vec4<u32>(global0.a.b.d.x, u_input.b, ~(global2.a.d.x | arg_0.x), min(7297u, 47457u)), vec4<u32>(arg_0.x, max(0u, 6244u), 0u, _wgslsmith_dot_vec3_u32(global2.b.d, global2.a.d)) | vec4<u32>(~arg_0.x, firstLeadingBit(16226u), global0.a.b.d.x ^ u_input.b, firstLeadingBit(global0.a.b.d.x))));
    var var_2 = Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.x, global2.a.a.x, var_1.b.b.a.x), var_1.b.b.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-438f, var_1.b.b.a.x, global2.a.a.x) + var_1.b.b.a)), vec3<i32>(countOneBits(-4511i), _wgslsmith_mult_i32(13342i, u_input.a.x), 1i), global2.b.c, global0.a.b.d, global2.b.e), global0.a.a), _wgslsmith_dot_vec3_i32(var_1.b.b.b, _wgslsmith_mod_vec3_i32(select(max(global2.a.b, vec3<i32>(u_input.a.x, u_input.a.x, var_1.b.b.b.x)), -vec3<i32>(0i, arg_2.x, var_1.b.b.b.x), select(global2.a.c, var_1.b.b.c, true)), vec3<i32>(abs(2147483647i), -1i, u_input.a.x))), -_wgslsmith_mod_vec4_i32(min(_wgslsmith_div_vec4_i32(global0.c, arg_2), select(vec4<i32>(global2.b.b.x, global2.a.b.x, var_1.b.a.b.x, -1i), arg_2, vec4<bool>(true, true, global0.a.b.c.x, true))), _wgslsmith_div_vec4_i32(select(arg_2, vec4<i32>(-8213i, 2147483647i, -2147483647i, var_1.a.x), global1.x), -vec4<i32>(global2.a.b.x, 2147483647i, 34484i, -36045i))), 263f);
    var_1 = Struct_3(select(global0.c.zwy, _wgslsmith_mod_vec3_i32(select(abs(vec3<i32>(0i, var_2.c.x, 1i)), var_1.a, select(vec3<bool>(false, global1.x, global2.a.c.x), var_2.a.a.c, var_2.a.b.c.x)), ~(~vec3<i32>(1i, global0.a.a.b.x, 1i))), global0.a.b.c), var_2.a, ~_wgslsmith_mult_vec4_u32(var_1.d, var_1.c), var_1.c);
    let var_3 = -561f;
    return var_2.a.a;
}

fn func_1(arg_0: vec2<bool>) -> Struct_5 {
    global1 = select(select(global2.b.c.yx, vec2<bool>(true, true), !select(global0.a.b.c.yx, select(vec2<bool>(global2.b.c.x, arg_0.x), vec2<bool>(false, false), vec2<bool>(true, global0.a.b.c.x)), vec2<bool>(global0.a.b.c.x, global0.a.a.c.x))), arg_0, global2.a.c.x);
    var var_0 = 2322f;
    let var_1 = global2.b.d.x;
    global2 = Struct_2(global2.b, func_2(global0.a.a.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(903f, global2.a.a.x, -605f, -379f), vec4<f32>(289f, global2.b.a.x, -390f, 1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a.a.x, global0.d, global2.b.a.x, global0.a.a.a.x)))), -_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, global0.c.x), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -1918i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(76279i, -39649i, u_input.a.x, 788i), global0.c, vec4<i32>(global0.c.x, -1i, u_input.a.x, u_input.a.x)))));
    var var_2 = global0.a.a.c;
    return Struct_5(global0.a, max(min(firstLeadingBit(_wgslsmith_dot_vec3_i32(global2.a.b, global0.c.yzw)), global2.b.b.x), _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(u_input.a.x, global2.a.b.x, global0.a.b.b.x)), ~vec3<i32>(0i, 21341i, u_input.a.x))), _wgslsmith_clamp_vec4_i32(max(vec4<i32>(~u_input.a.x, ~global0.c.x, -17486i, -18904i), ~(~global0.c)), -(~max(vec4<i32>(26037i, 27767i, global0.a.a.b.x, -2587i), vec4<i32>(global2.a.b.x, global2.b.b.x, u_input.a.x, global2.b.b.x))), vec4<i32>(abs(u_input.a.x), abs(2575i), global2.a.b.x, -global2.b.b.x)), global0.a.b.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(select(!global2.a.c.yz, global0.a.a.c.yx, false || global1.x));
    global0 = Struct_5(Struct_2(func_2(vec2<u32>(~global2.b.d.x, u_input.b), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -806f), _wgslsmith_f_op_f32(global0.d + 1445f), global0.a.a.a.x, -524f), vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, 1i), 0i, ~(-1i), 0i)), global2.a), firstTrailingBit(14658i), vec4<i32>(_wgslsmith_div_i32(abs(1i), reverseBits(57i)) >> (min(~global0.a.b.e.x, ~38793u) % 32u), i32(-1i) * -21429i, 1i, 1i), -132f);
    let var_0 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.a.x, _wgslsmith_add_vec2_i32(reverseBits(-countOneBits(global2.a.b.xz)), firstTrailingBit(min(vec2<i32>(1i, global0.a.a.b.x), u_input.a)) & global2.b.b.xz));
}

