struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 11>;

var<private> global3: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    let var_0 = global1.b;
    var var_1 = select(select(select(select(select(vec4<bool>(global1.b.x, true, global1.b.x, global1.b.x), vec4<bool>(true, global1.b.x, global1.b.x, true), vec4<bool>(global1.b.x, true, var_0.x, false)), !vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(true, false, global1.b.x, true)), vec4<bool>(true, true, true, all(vec3<bool>(global1.b.x, global1.b.x, true))), 13701u == ~u_input.c.x), select(vec4<bool>(false, !var_0.x, var_0.x, any(vec4<bool>(true, var_0.x, var_0.x, true))), vec4<bool>(false, global1.b.x, true, true), any(select(vec3<bool>(true, global1.b.x, var_0.x), vec3<bool>(false, var_0.x, global1.b.x), vec3<bool>(false, true, var_0.x)))), all(select(select(vec3<bool>(true, false, global1.b.x), vec3<bool>(var_0.x, var_0.x, true), false), vec3<bool>(false, false, global1.b.x), var_0.x))), !select(vec4<bool>(true, !global1.b.x, global1.b.x || var_0.x, true), vec4<bool>(all(vec4<bool>(false, false, true, false)), !var_0.x, true, all(vec4<bool>(false, true, global1.b.x, true))), !(!vec4<bool>(var_0.x, true, false, true))), var_0.x);
    var var_2 = Struct_1(true);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), vec2<bool>(true, true), 1770i, _wgslsmith_div_f32(-1000f, global1.d));
    global3 = any(vec4<bool>(true, var_0.x, any(select(vec2<bool>(true, false), select(var_3.b, vec2<bool>(false, global1.b.x), vec2<bool>(var_1.x, true)), var_1.ww)), any(select(!vec4<bool>(false, false, var_1.x, true), vec4<bool>(true, var_3.b.x, true, var_2.a), global1.d >= -283f))));
    return global1.b.x;
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = func_3();
    global1 = arg_0;
    global3 = false;
    let var_1 = Struct_1(true);
    let var_2 = _wgslsmith_mod_u32(u_input.b.x, u_input.a) == _wgslsmith_clamp_u32(23214u, u_input.a, _wgslsmith_mod_u32(u_input.a, 1u) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.c.x, 1065u, u_input.a), vec4<u32>(1u, u_input.a, 66358u, u_input.b.x)));
    return 4294967295u;
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(~1u, 15u)];
    let var_1 = vec4<u32>(40875u, u_input.c.x | func_2(global0[_wgslsmith_index_u32(~1u, 15u)]), u_input.c.x, func_2(global0[_wgslsmith_index_u32(2012u, 15u)]));
    let var_2 = select(select(!(!select(vec3<bool>(global1.b.x, global1.b.x, false), vec3<bool>(global1.b.x, global1.b.x, var_0.b.x), false)), vec3<bool>(true, ~arg_0 <= 4294967295u, false), !vec3<bool>(true, true, global1.b.x)), !select(select(!vec3<bool>(var_0.b.x, global1.b.x, var_0.b.x), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, var_0.b.x)), true), select(!vec3<bool>(var_0.b.x, true, var_0.b.x), select(vec3<bool>(var_0.b.x, false, true), vec3<bool>(var_0.b.x, var_0.b.x, false), vec3<bool>(var_0.b.x, false, true)), vec3<bool>(true, false, global1.b.x)), !(!vec3<bool>(var_0.b.x, var_0.b.x, false))), !select(select(!vec3<bool>(false, global1.b.x, false), !vec3<bool>(var_0.b.x, global1.b.x, var_0.b.x), !vec3<bool>(global1.b.x, false, global1.b.x)), select(!vec3<bool>(true, var_0.b.x, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), !vec3<bool>(global1.b.x, var_0.b.x, global1.b.x)));
    global1 = Struct_2(-122f, select(!global1.b, global1.b, !var_0.b), _wgslsmith_div_i32(firstTrailingBit(~global1.c), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.c, 2147483647i, 2147483647i, global1.c), select(vec4<i32>(global1.c, global1.c, global1.c, global1.c), vec4<i32>(-1i, 2147483647i, global1.c, 0i), vec4<bool>(var_2.x, true, false, var_0.b.x))) >> (1u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) * global1.d)));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1752f, 375f, 851f, 473f))), vec4<f32>(-1536f, 1f, -757f, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1296f, 685f, -375f, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, var_0.d, 1020f, var_0.a) - vec4<f32>(-540f, 3469f, global1.d, -149f)), select(false, global1.b.x, true))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(313f, arg_1, -2095f, var_0.d) * vec4<f32>(-1410f, var_0.a, -1055f, 912f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2478f, -766f, arg_1, -157f)))))));
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1822f), -730f), select(!select(select(var_2.zz, var_0.b, true), !vec2<bool>(global1.b.x, false), true), select(select(var_0.b, select(global1.b, var_2.yy, vec2<bool>(false, false)), vec2<bool>(global1.b.x, true)), vec2<bool>(true, true), !select(vec2<bool>(false, global1.b.x), global1.b, true)), !vec2<bool>(any(vec4<bool>(false, true, var_2.x, var_2.x)), true)), _wgslsmith_mod_i32(global1.c << (arg_0 % 32u), var_0.c) ^ -var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * 316f) - _wgslsmith_f_op_f32(ceil(1615f))) - 1127f));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> f32 {
    global1 = Struct_2(240f, arg_2.b, ~min(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.c, global1.c, global1.c), vec3<i32>(-61324i, 2147483647i, arg_2.c)), ~36465i), arg_2.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1170f - arg_2.a), _wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(select(arg_2.d, 141f, arg_1.a)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.d))))));
    global3 = false;
    let var_0 = _wgslsmith_add_vec3_i32(~(~vec3<i32>(-arg_2.c, -43353i, global1.c)), firstTrailingBit(vec3<i32>(global1.c, global1.c, -global1.c)));
    global3 = arg_2.b.x;
    var var_1 = true;
    return _wgslsmith_f_op_f32(-arg_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = ~(~firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c.xx, u_input.b.xw), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, 0u), u_input.c.zx, vec2<u32>(var_0, var_0)))));
    let var_2 = vec2<u32>(u_input.b.x, 0u);
    var var_3 = _wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec3_u32(u_input.b.wxw, ~(~u_input.c)), Struct_1(global1.b.x), func_1(select(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(20367u, 38111u, 4294967295u, var_1), u_input.b), u_input.b), 0u, global1.b.x), -787f), ~vec2<u32>(32622u, ~u_input.c.x)));
    global2 = array<Struct_1, 11>();
    global1 = func_1(var_2.x, -427f);
    global0 = array<Struct_2, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(_wgslsmith_mult_i32(global1.c, 399i)) & abs(global1.c)), _wgslsmith_mult_vec2_u32(vec2<u32>(max(max(var_0, 60049u), var_1), _wgslsmith_mult_u32(reverseBits(var_0), 50386u)), ~vec2<u32>(abs(var_0), abs(var_1))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~2147483647i, _wgslsmith_clamp_i32(global1.c, -2147483647i, global1.c), -23990i | global1.c, global1.c | 44142i), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(13501i, global1.c, global1.c, global1.c), vec4<i32>(27442i, global1.c, -2147483647i, -2147483647i), vec4<i32>(0i, global1.c, 56675i, global1.c)), -vec4<i32>(global1.c, 68491i, global1.c, global1.c))), firstTrailingBit(vec4<i32>(global1.c, global1.c << (var_0 % 32u), countOneBits(global1.c), 29418i))));
}

