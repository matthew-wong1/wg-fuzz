struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool;

var<private> global2: array<Struct_1, 25>;

var<private> global3: Struct_2;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1212f, global3.a.a)) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, arg_0.a), vec2<f32>(global3.a.a, arg_0.a)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.a + 2586f), 545f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, -1683f), vec2<f32>(372f, global3.a.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.a, global3.a.a)))), !(arg_1 && true))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2) -> u32 {
    var var_0 = u_input.b;
    let var_1 = Struct_4(~(-20802i), !select(vec2<bool>(true, true), vec2<bool>(false, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), false)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_1.x, 34244u), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.a, vec3<u32>(var_0.x, 20859u, 4294967295u)), reverseBits(u_input.c.wxz))));
    var_0 = vec4<u32>(~arg_0.e.x, 1u, var_1.c.x, ~_wgslsmith_add_u32(var_0.x, firstLeadingBit(_wgslsmith_add_u32(10295u, 7423u))));
    global1 = false;
    global2 = array<Struct_1, 25>();
    return 19468u;
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: vec4<f32>) -> f32 {
    global3 = Struct_2(global2[_wgslsmith_index_u32(arg_1, 25u)], vec4<i32>(~(-11854i), -1i, (u_input.d.x & 14914i) ^ u_input.d.x, -(u_input.d.x | -43160i)), arg_1, _wgslsmith_add_i32(select(-2147483647i, u_input.d.x, true), 1i << (u_input.e.x % 32u)));
    let var_0 = 42891i;
    global3 = Struct_2(global3.a, ~(_wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(25319i, u_input.d.x, u_input.d.x, u_input.d.x)) << (abs(~u_input.b) % vec4<u32>(32u))), 26546u, ~firstTrailingBit(global3.a.c));
    global2 = array<Struct_1, 25>();
    global1 = true;
    return -1000f;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: f32) -> Struct_2 {
    global3 = Struct_2(global3.a, vec4<i32>(_wgslsmith_dot_vec2_i32(abs(u_input.d.wz) << (u_input.a.yz % vec2<u32>(32u)), reverseBits(global3.b.zz)), -33935i, firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(global3.b.xyy, u_input.d.zyw), _wgslsmith_mult_vec3_i32(vec3<i32>(global3.a.d, u_input.d.x, global3.a.c), vec3<i32>(u_input.d.x, u_input.d.x, 26853i)))), 1i | _wgslsmith_mult_i32(~0i, global3.b.x)), 5314u, u_input.d.x);
    var var_0 = Struct_2(Struct_1(arg_2, vec3<u32>(_wgslsmith_div_u32(20886u, global3.a.e.x), ~abs(4294967295u), 1u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, ~u_input.d.x, _wgslsmith_div_i32(1i, u_input.d.x), global3.b.x), vec4<i32>(-1i) * -u_input.d), u_input.d.x >> (global3.c % 32u), vec3<u32>(~142827u, func_2(global3.a, u_input.c.wxz, Struct_2(Struct_1(-1246f, vec3<u32>(u_input.a.x, global3.a.e.x, global3.a.e.x), 0i, global3.d, global3.a.b), u_input.d, 57031u, 1i)), u_input.e.x)), -vec4<i32>(select(_wgslsmith_dot_vec3_i32(global3.b.ywz, vec3<i32>(27406i, 7182i, global3.d)), _wgslsmith_mod_i32(u_input.d.x, 0i), false), 0i, _wgslsmith_clamp_i32(~global3.d, -14211i, u_input.d.x), 2147483647i), u_input.b.x, global3.d);
    let var_1 = Struct_4(_wgslsmith_add_i32(_wgslsmith_add_i32(-48413i, -1i), -1i), select(!(!vec2<bool>(arg_1.x, arg_1.x)), vec2<bool>(!any(vec4<bool>(true, false, true, true)), arg_1.x), !any(vec4<bool>(true, false, arg_1.x, true))), u_input.a);
    let var_2 = 4294967295u;
    var var_3 = select(select(select(!select(arg_1.yww, arg_1.yyw, arg_1.wwx), arg_1.zwy, arg_1.wwy), vec3<bool>(true, !(!arg_1.x), true), true), select(arg_1.zyy, arg_1.xwy, vec3<bool>(false, false != select(var_1.b.x, var_1.b.x, false), global3.a.a > _wgslsmith_f_op_f32(arg_2 - global3.a.a))), select(vec3<bool>(var_1.b.x, any(vec3<bool>(var_1.b.x, var_1.b.x, false)), !select(true, arg_1.x, false)), select(!arg_1.yzx, vec3<bool>(all(arg_1), true, true), (-1i << (var_1.c.x % 32u)) >= _wgslsmith_clamp_i32(0i, global3.d, -52058i)), !(_wgslsmith_f_op_f32(min(arg_2, 662f)) < arg_2)));
    return Struct_2(Struct_1(var_0.a.a, _wgslsmith_mod_vec3_u32(countOneBits(var_1.c) >> (~global3.a.b % vec3<u32>(32u)), max(select(vec3<u32>(var_1.c.x, var_2, 0u), var_1.c, arg_1.xww), ~vec3<u32>(0u, u_input.c.x, u_input.c.x))), _wgslsmith_dot_vec4_i32(select(-vec4<i32>(u_input.d.x, 29738i, global3.b.x, 2147483647i), -vec4<i32>(-37114i, var_1.a, 2018i, u_input.d.x), !var_3.x), vec4<i32>(global3.d, u_input.d.x, var_0.d, _wgslsmith_dot_vec2_i32(u_input.d.xx, vec2<i32>(2147483647i, var_1.a)))), firstLeadingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(-34092i, 2147483647i, u_input.d.x), var_0.b.xwy)), vec3<u32>(1u, min(8287u, _wgslsmith_mult_u32(global3.a.e.x, 0u)), _wgslsmith_clamp_u32(u_input.b.x, var_2, ~4294967295u))), max(vec4<i32>(u_input.d.x, abs(14586i), ~(-8762i), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-1i, var_0.d)), var_0.b.ww)), u_input.d), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(global3.a.b.x, global3.a.e.x, 4294967295u, 11340u) >> (u_input.b % vec4<u32>(32u))), u_input.b, min(firstLeadingBit(vec4<u32>(global3.c, 4294967295u, 4294967295u, 0u)), u_input.b)), abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(19976u, var_2, 0u, global3.a.e.x), u_input.b))), abs(-var_1.a ^ -(~925i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(func_1(global3.a, false)), func_2(Struct_1(global3.a.a, vec3<u32>(4294967295u, global3.c, 1u), 17443i, 1i, global3.a.e), vec3<u32>(4294967295u, u_input.c.x, 1u), Struct_2(Struct_1(global3.a.a, global3.a.b, global3.b.x, -12829i, global3.a.e), vec4<i32>(-1i, global3.a.c, global3.a.c, 1i), 0u, global3.a.d)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1199f, -598f, global3.a.a, -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.a) - global3.a.a), 2068f))), select(!vec4<bool>(select(false, true, true), true, 103297u <= u_input.b.x, true), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(false, true, true, true), true), true), _wgslsmith_div_f32(global3.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1715f, global3.a.a)))));
    global2 = array<Struct_1, 25>();
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.a.a)));
    global0 = _wgslsmith_f_op_f32(global3.a.a - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a.a, -103f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) - _wgslsmith_f_op_f32(-var_0.a.a)))), var_0.a.a)));
    var var_2 = var_0.a.a;
    let var_3 = select(any(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), true)), any(vec3<bool>(true, true, true)), true);
    global3 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(882f, var_0.a.a, var_0.a.a, var_0.a.a) * vec4<f32>(var_0.a.a, 489f, global3.a.a, global3.a.a))))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-var_0.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.b.yz, 0i);
}

