struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<bool>(true, false), 1u, true, vec3<bool>(false, true, true), vec4<i32>(-70167i, i32(-2147483648), -31074i, -6200i)), Struct_1(vec2<bool>(false, true), 4294967295u, true, vec3<bool>(true, false, false), vec4<i32>(20408i, -13964i, -21068i, 0i)));

var<private> global1: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(1652f, 1214f, -1485f), vec3<f32>(168f, -400f, -503f), vec3<f32>(-1373f, 333f, 187f), vec3<f32>(1255f, 220f, -1031f), vec3<f32>(-1098f, 1000f, -1186f), vec3<f32>(1102f, -400f, 1064f), vec3<f32>(113f, -1288f, 2008f), vec3<f32>(-1789f, -571f, -388f));

var<private> global2: vec3<f32>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-1232f - 832f);
    var var_1 = arg_0;
    var var_2 = Struct_1(select(arg_0.a, select(!vec2<bool>(arg_0.d.x, arg_0.d.x), vec2<bool>(true, !var_1.d.x), true), false), var_1.b, var_1.c, !vec3<bool>(any(vec4<bool>(false, var_1.a.x, false, true)), all(!vec2<bool>(var_1.c, true)), select(false, !var_1.c, 1i < u_input.c.x)), _wgslsmith_add_vec4_i32(arg_0.e, ~(-vec4<i32>(-3539i, u_input.c.x, u_input.a.x, var_1.e.x)) ^ vec4<i32>(_wgslsmith_div_i32(u_input.c.x, 2147483647i), max(-2147483647i, 1i), u_input.c.x, 30614i ^ u_input.c.x)));
    var var_3 = Struct_1(select(var_2.a, select(!var_1.a, select(select(var_2.d.xx, var_1.d.zz, var_2.c), vec2<bool>(arg_0.d.x, var_2.c), select(arg_0.d.xz, var_2.a, true)), arg_0.d.x), !select(select(vec2<bool>(false, false), var_1.a, var_1.a.x), select(var_2.a, vec2<bool>(true, var_1.d.x), var_2.a.x), vec2<bool>(var_1.a.x, var_2.a.x))), select(~(~43925u), arg_0.b, 2147483647i < var_2.e.x), global2.x >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 - 807f), _wgslsmith_f_op_f32(exp2(var_0)), !var_2.d.x)))), !select(!vec3<bool>(true, var_2.d.x, var_1.c), !var_2.d, select(all(vec3<bool>(false, var_2.a.x, arg_0.a.x)), true, all(var_2.d))), ~firstTrailingBit(-(vec4<i32>(9396i, 8122i, 2147483647i, arg_0.e.x) & arg_0.e)));
    var var_4 = abs(abs(vec3<u32>(max(min(0u, 1u), ~4294967295u), _wgslsmith_mod_u32(var_3.b, var_3.b), 4294967295u)));
    return global1[_wgslsmith_index_u32(~(~var_4.x), 8u)];
}

fn func_2() -> vec4<bool> {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(880f)) + global2.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1492f, -730f)), 326f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1071f * global2.x) * 291f))));
    global1 = array<vec3<f32>, 8>();
    var var_0 = global0[_wgslsmith_index_u32(0u, 2u)];
    let var_1 = global2.x;
    var var_2 = Struct_2(~1u, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, -1800f, _wgslsmith_f_op_f32(global2.x * -250f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1034f, global2.x, -1045f) * global1[_wgslsmith_index_u32(var_0.b, 8u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec2<bool>(var_0.d.x, false), var_0.b, false, var_0.d, var_0.e))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1084f, global2.x, global2.x))))), !select(false, var_0.c, all(select(var_0.d, vec3<bool>(var_0.a.x, var_0.a.x, true), var_0.c))));
    return !select(select(select(!vec4<bool>(false, var_2.c, false, var_2.c), !vec4<bool>(false, var_2.c, true, true), false), select(!vec4<bool>(var_2.c, var_2.c, var_0.a.x, false), vec4<bool>(var_2.c, var_2.c, var_2.c, true), var_2.c && var_2.c), select(var_0.c, false, var_2.c) & select(true, true, true)), select(vec4<bool>(any(var_0.a), all(var_0.d.xy), !var_2.c, true), select(!vec4<bool>(false, false, var_0.c, false), select(vec4<bool>(var_2.c, var_2.c, var_0.d.x, false), vec4<bool>(var_2.c, false, var_2.c, var_2.c), var_2.c), vec4<bool>(var_0.d.x, var_0.a.x, false, var_0.c)), var_2.c), var_0.c);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: u32) -> vec4<bool> {
    var var_0 = u_input.a.x;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 8>();
    global2 = global1[_wgslsmith_index_u32(1u, 8u)];
    global1 = array<vec3<f32>, 8>();
    var var_0 = all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), func_1(global2.x, ~vec3<i32>(u_input.c.x, -1i, u_input.b), 4294967295u)));
    var var_1 = 1i;
    let var_2 = Struct_2(30537u, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 47005u, 4294967295u), 8u)], _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1553f, -475f, global2.x), _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(14439u, 8u)] * global1[_wgslsmith_index_u32(3903u, 8u)])))))), true);
    global1 = array<vec3<f32>, 8>();
    let var_3 = Struct_1(!func_2().yy, 1u, true, func_2().zxy, ~(abs(vec4<i32>(u_input.b, -59216i, 0i, u_input.a.x)) & vec4<i32>(-2147483647i, -10307i, u_input.a.x, 9830i)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(var_3.b, countOneBits(var_2.a))), max(~(~(~1i)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a.x, var_3.e.x, -13213i)), vec3<i32>(u_input.c.x, _wgslsmith_mult_i32(var_3.e.x, var_3.e.x), firstLeadingBit(1i)))), _wgslsmith_div_vec3_i32((u_input.a >> (select(vec3<u32>(var_2.a, var_3.b, var_2.a), vec3<u32>(4294967295u, var_2.a, 9213u), var_3.d.x) % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_i32(firstLeadingBit(var_3.e.wwy), var_3.e.xyy | vec3<i32>(1i, u_input.c.x, 1i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.b, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, 16818i)), -2147483647i, u_input.a.x) & _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(var_3.e.x, 2147483647i, var_3.e.x)), ~var_3.e.xyw, -vec3<i32>(var_3.e.x, var_3.e.x, u_input.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(global2.x)), -1000f)));
}

