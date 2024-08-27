struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: bool,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<u32, 27>;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-328f, 1577f, 146f), vec2<u32>(6713u, 4294967295u), vec4<bool>(false, true, true, false), 156674u, vec4<f32>(1000f, -1000f, -730f, -319f));

var<private> global3: array<f32, 21>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> u32 {
    global1 = array<u32, 27>();
    let var_0 = any(global2.c);
    global3 = array<f32, 21>();
    global0 = 0i;
    let var_1 = 18852i;
    return ~0u;
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: u32, arg_3: vec2<u32>) -> Struct_1 {
    global0 = _wgslsmith_div_i32(-_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 17664i, -2147483647i) << (u_input.d % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(u_input.c, arg_1.b.xww)), arg_1.b.x), -2147483647i);
    global2 = arg_1.d.d;
    let var_0 = arg_1.c;
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1570u, 27695u, max(arg_3.x, _wgslsmith_mult_u32(65639u, u_input.a.x))), _wgslsmith_mod_vec3_u32(u_input.d, _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.d, vec3<u32>(global1[_wgslsmith_index_u32(0u, 27u)], arg_3.x, arg_1.c.c), vec3<u32>(53001u, global2.b.x, var_0.a.b.x)), ~vec3<u32>(arg_3.x, var_0.d.d, arg_0)))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.c, 1u, 58288u, 29385u), ~vec4<u32>(global2.b.x, global2.b.x, arg_1.d.a.b.x, arg_1.a.d.d)), ~(~8417u)) | _wgslsmith_clamp_u32(firstTrailingBit(var_0.a.d), arg_2, _wgslsmith_dot_vec4_u32(vec4<u32>(39586u, 0u, arg_2, arg_3.x), vec4<u32>(4294967295u, 21038u, arg_0, arg_1.a.c))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)), -454f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 21u)] - -1098f))), _wgslsmith_f_op_f32(trunc(var_0.d.a.x)))));
    return arg_1.a.d;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    var var_0 = func_3(~arg_1.b.x, Struct_3(arg_0, vec4<i32>(-2147483647i, ~(-u_input.c.x), min(~44213i, 32646i), ~(~0i)), Struct_2(arg_0.d, true, global2.d, Struct_1(arg_0.a.e.zyz, vec2<u32>(60747u, arg_1.d), !arg_1.c, arg_1.d, global2.e)), arg_0, ((-41700i ^ u_input.c.x) << (func_2(Struct_1(arg_1.e.xwy, arg_1.b, global2.c, 39725u, global2.e), vec4<i32>(u_input.b.x, -8097i, u_input.b.x, u_input.c.x)) % 32u)) == u_input.b.x), 1u, _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(reverseBits(arg_0.a.b), arg_1.b), _wgslsmith_mod_vec2_u32(firstLeadingBit(arg_1.b), _wgslsmith_sub_vec2_u32(global2.b, arg_0.d.b))), _wgslsmith_add_vec2_u32(arg_1.b, vec2<u32>(arg_0.c, 88880u))));
    var_0 = arg_1;
    let var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b, select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -2147483647i), u_input.b, u_input.c.zx), u_input.b, true) >> (u_input.d.xz % vec2<u32>(32u))), -2853i);
    var var_2 = _wgslsmith_mod_i32(countOneBits(u_input.b.x), var_1.x) | (((-11855i >> ((arg_0.d.b.x << (1u % 32u)) % 32u)) >> (~min(74502u, u_input.d.x) % 32u)) << (~(~u_input.d.x) % 32u));
    global1 = array<u32, 27>();
    return var_0.b.x | arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(~4294967295u), reverseBits(func_1(Struct_2(Struct_1(vec3<f32>(global2.e.x, -367f, 345f), global2.b, vec4<bool>(global2.c.x, global2.c.x, global2.c.x, global2.c.x), 1652u, global2.e), true, global1[_wgslsmith_index_u32(0u, 27u)], Struct_1(vec3<f32>(-127f, global2.e.x, global3[_wgslsmith_index_u32(4294967295u, 21u)]), u_input.a, global2.c, 16360u, vec4<f32>(-1606f, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.b.x, 27u)], 21u)], -1399f, -627f))), Struct_1(vec3<f32>(610f, 296f, global3[_wgslsmith_index_u32(global2.d, 21u)]), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.d.x, 27u)]), global2.c, 0u, global2.e)))) >> (global2.b.x % 32u), u_input.a.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~global2.d, 0u >> (global1[_wgslsmith_index_u32(global2.d, 27u)] % 32u)), vec2<u32>(_wgslsmith_add_u32(7199u, u_input.a.x), 0u)), 27u)] & 1u, ~13213u & ~(~func_2(Struct_1(global2.a, global2.b, global2.c, u_input.d.x, vec4<f32>(1000f, global2.e.x, global2.e.x, global2.e.x)), vec4<i32>(-7716i, -2147483647i, -2147483647i, u_input.c.x))));
    var var_1 = (vec2<i32>(abs(~(-11891i)), u_input.b.x) ^ _wgslsmith_mod_vec2_i32(-select(u_input.c.xy, u_input.b, global2.c.ww), _wgslsmith_mod_vec2_i32(u_input.c.xx, vec2<i32>(u_input.b.x, u_input.c.x)))) | min(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-14949i, u_input.c.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x)) ^ 19956i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -54031i, 2334i), u_input.c)), abs(_wgslsmith_mult_vec2_i32(-u_input.c.yx, u_input.b)));
    var_1 = vec2<i32>(abs(countOneBits(var_1.x)), ~var_1.x) << (u_input.a % vec2<u32>(32u));
    global1 = array<u32, 27>();
    var var_2 = u_input.d.x;
    var_1 = vec2<i32>(~2147483647i, -19630i);
    var var_3 = vec4<f32>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(var_0.x >> (var_0.x % 32u)), func_3(~_wgslsmith_mult_u32(1u, var_0.x), Struct_3(Struct_2(Struct_1(global2.e.zww, var_0.yw, global2.c, 4294967295u, vec4<f32>(271f, global3[_wgslsmith_index_u32(9642u, 21u)], -161f, -1411f)), true, global2.d, Struct_1(vec3<f32>(-1188f, global3[_wgslsmith_index_u32(u_input.a.x, 21u)], global2.a.x), global2.b, global2.c, 4294967295u, vec4<f32>(global3[_wgslsmith_index_u32(0u, 21u)], global3[_wgslsmith_index_u32(0u, 21u)], global3[_wgslsmith_index_u32(4294967295u, 21u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21965u, 27u)], 21u)]))), vec4<i32>(-1i, var_1.x, u_input.c.x, -46109i) ^ vec4<i32>(1i, u_input.b.x, -60497i, var_1.x), Struct_2(Struct_1(vec3<f32>(523f, 1487f, global2.e.x), global2.b, vec4<bool>(global2.c.x, true, global2.c.x, global2.c.x), 3601u, vec4<f32>(global2.e.x, 261f, global2.e.x, global3[_wgslsmith_index_u32(4294967295u, 21u)])), global2.c.x, 38448u, Struct_1(vec3<f32>(956f, 388f, -1386f), var_0.xy, global2.c, global2.d, vec4<f32>(global3[_wgslsmith_index_u32(1u, 21u)], -2618f, 419f, -196f))), Struct_2(Struct_1(vec3<f32>(245f, 100f, global3[_wgslsmith_index_u32(19093u, 21u)]), vec2<u32>(var_0.x, 0u), global2.c, var_0.x, global2.e), global2.c.x, 0u, Struct_1(global2.a, vec2<u32>(9262u, global2.b.x), vec4<bool>(false, global2.c.x, global2.c.x, false), var_0.x, vec4<f32>(global3[_wgslsmith_index_u32(44373u, 21u)], -512f, -1004f, -684f))), false), _wgslsmith_mod_u32(18996u, u_input.a.x), reverseBits(~var_0.yx)).d, global1[_wgslsmith_index_u32(countOneBits(global2.d), 27u)]), 21u)], _wgslsmith_f_op_f32(-func_3((var_0.x & 1u) ^ ~23513u, Struct_3(Struct_2(Struct_1(global2.e.wxw, vec2<u32>(1u, 3540u), global2.c, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], vec4<f32>(460f, -1735f, global3[_wgslsmith_index_u32(46890u, 21u)], -856f)), false, 0u, Struct_1(global2.a, var_0.zx, vec4<bool>(true, global2.c.x, true, true), var_0.x, global2.e)), vec4<i32>(var_1.x, var_1.x, 1i, var_1.x), Struct_2(Struct_1(global2.e.xzw, vec2<u32>(1u, u_input.a.x), global2.c, u_input.a.x, global2.e), global2.c.x, global2.b.x, Struct_1(global2.a, vec2<u32>(9710u, global2.b.x), vec4<bool>(true, global2.c.x, global2.c.x, true), 1u, global2.e)), Struct_2(Struct_1(vec3<f32>(global3[_wgslsmith_index_u32(global2.d, 21u)], -114f, global3[_wgslsmith_index_u32(36099u, 21u)]), u_input.d.zx, global2.c, 43864u, global2.e), true, 0u, Struct_1(vec3<f32>(-649f, global2.e.x, global3[_wgslsmith_index_u32(u_input.d.x, 21u)]), var_0.yy, global2.c, global1[_wgslsmith_index_u32(global2.d, 27u)], vec4<f32>(global3[_wgslsmith_index_u32(global2.b.x, 21u)], global2.e.x, -1309f, 291f))), true), 1u, vec2<u32>(0u, ~65844u)).e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -596f))), _wgslsmith_f_op_f32(global2.e.x * 948f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) * global3[_wgslsmith_index_u32(~global2.b.x, 21u)]))));
    let var_4 = abs(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(var_0.x, 0u, 4294967295u), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(0u, 27u)], 1u, var_0.x)) & reverseBits(var_0.zz), abs(_wgslsmith_div_vec2_u32(~vec2<u32>(global2.d, 348u), ~var_0.zw))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(floor(1f))), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, ~u_input.a.x), global2.b), ~select(max(u_input.d, u_input.d), max(u_input.d, vec3<u32>(4607u, u_input.a.x, 4294967295u)), !(!global2.c.x)));
}

