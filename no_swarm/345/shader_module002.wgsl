struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec2<bool>;

var<private> global2: array<bool, 31>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    global0 = !(!select(select(!vec4<bool>(global0.x, false, true, global1.x), select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 31u)], global0.x, false), vec4<bool>(true, false, global1.x, global1.x), false), true), !(!vec4<bool>(false, true, true, global0.x)), true));
    global2 = array<bool, 31>();
    let var_0 = 9221i;
    let var_1 = Struct_1(!global0.zyx, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(231f)), _wgslsmith_f_op_f32(426f + -144f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-690f - -732f) + _wgslsmith_f_op_f32(-1536f * 103f)), -658f))), true, vec4<bool>(global1.x, !(_wgslsmith_f_op_f32(f32(-1f) * -368f) != _wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -465f) - -1302f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -2283f))), global1.x));
    let var_2 = ~(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 4294967295u));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1.b), _wgslsmith_f_op_vec3_f32(trunc(var_1.b)), false)) + vec3<f32>(_wgslsmith_f_op_f32(min(var_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-325f)), var_1.b.x))), _wgslsmith_f_op_f32(ceil(1692f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b.x)))));
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_2(-36148i < abs(~u_input.a.x), Struct_1(select(select(global0.zxy, !global0.wzw, !vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 31u)], false)), !global0.zyy, !global0.wxz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, 29593u, u_input.b.x, u_input.b.x)), ~u_input.b.x), u_input.b.yx), 31u)], vec4<bool>(true, true & !global1.x, global2[_wgslsmith_index_u32(4294967295u, 31u)], true || select(true, true, true))));
    let var_1 = Struct_1(select(select(!global0.yzx, !select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 31u)], false, global1.x), var_0.b.a, global2[_wgslsmith_index_u32(1u, 31u)]), !select(true, true, true)), !select(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 31u)], true), select(global0.zyw, global0.wwy, true), !global0.zww), select(!select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 31u)], false, true), vec3<bool>(var_0.a, global2[_wgslsmith_index_u32(u_input.b.x, 31u)], true), var_0.b.d.zyx), select(!var_0.b.a, var_0.b.d.yzy, vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 31u)], true, false)), vec3<bool>(false, select(global0.x, global1.x, true), 0u < u_input.c))), _wgslsmith_f_op_vec3_f32(-var_0.b.b), global0.x, select(select(var_0.b.d, select(var_0.b.d, vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 31u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 31u)], global1.x), !global2[_wgslsmith_index_u32(u_input.c, 31u)]), !select(var_0.b.d, vec4<bool>(global1.x, global2[_wgslsmith_index_u32(0u, 31u)], global0.x, global0.x), false)), !var_0.b.d, !any(global0.xyz)));
    var var_2 = Struct_2(!((~1i >= _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)) | all(vec2<bool>(false, var_0.a))), var_1);
    var_0 = Struct_2(any(var_2.b.d), var_2.b);
    var var_3 = vec2<bool>(var_0.a, !all(vec2<bool>(true, true)));
    return var_2.b.d;
}

fn func_4(arg_0: vec4<bool>) -> i32 {
    global0 = arg_0;
    let var_0 = all(select(vec2<bool>(func_2().x, all(!vec4<bool>(global0.x, true, true, arg_0.x))), vec2<bool>(!(!global1.x), global1.x), select(vec2<bool>(global0.x, !arg_0.x), global0.ww, true)));
    var var_1 = Struct_1(vec3<bool>(func_2().x, var_0, any(vec4<bool>(global1.x, global1.x, !global0.x, arg_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-516f, -156f, -390f)))))), true, func_2());
    global0 = arg_0;
    global2 = array<bool, 31>();
    return -u_input.a.x;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_2) -> bool {
    var var_0 = -_wgslsmith_add_vec3_i32(~vec3<i32>(countOneBits(2147483647i), firstLeadingBit(u_input.a.x), 4133i), u_input.a.zxw);
    let var_1 = vec4<i32>(~func_4(select(arg_1.d, arg_1.d, func_2())), 0i, _wgslsmith_sub_i32(arg_0, 1i), _wgslsmith_dot_vec4_i32(-reverseBits(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a)), vec4<i32>(var_0.x, ~_wgslsmith_add_i32(62255i, var_0.x), reverseBits(-2976i), -(-16983i << (u_input.c % 32u)))));
    let var_2 = false;
    global2 = array<bool, 31>();
    let var_3 = Struct_2(true, arg_1);
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-450f * 448f);
    var var_1 = false;
    var_1 = true;
    var var_2 = Struct_2(global0.x, Struct_1(!vec3<bool>(true, func_1(0i, Struct_1(vec3<bool>(global0.x, false, global2[_wgslsmith_index_u32(1467u, 31u)]), vec3<f32>(372f, var_0, 1731f), true, vec4<bool>(global0.x, global0.x, global2[_wgslsmith_index_u32(u_input.b.x, 31u)], global1.x)), vec4<f32>(-173f, -1639f, var_0, var_0), Struct_2(global0.x, Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(1u, 31u)], true, global2[_wgslsmith_index_u32(34389u, 31u)]), vec3<f32>(var_0, var_0, 208f), false, vec4<bool>(true, global1.x, true, global1.x)))), false), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1235f + 420f)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) * _wgslsmith_f_op_f32(-var_0))), func_1(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), Struct_1(global0.zzw, vec3<f32>(var_0, -501f, var_0), global1.x, vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -357f, var_0, var_0)), Struct_2(true, Struct_1(global0.ywz, vec3<f32>(var_0, var_0, -510f), true, vec4<bool>(true, global0.x, global1.x, global1.x)))) | global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, u_input.c >> (16873u % 32u)), 31u)], func_2()));
    var_2 = Struct_2(true, Struct_1(select(select(!global0.yzw, var_2.b.a, !global0.zxx), select(!vec3<bool>(false, var_2.a, true), !var_2.b.d.ywy, var_2.b.c), (1u < u_input.c) && (u_input.c != u_input.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.b.x, _wgslsmith_f_op_f32(trunc(499f)), _wgslsmith_f_op_f32(trunc(var_2.b.b.x)))), !var_2.b.a.x, select(!var_2.b.d, var_2.b.d, global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-105f, vec4<i32>(abs(~(-39897i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(90600i, 1i, u_input.a.x), u_input.a.zxy)), _wgslsmith_sub_i32(-48050i, -34608i), _wgslsmith_dot_vec3_i32(~(u_input.a.xxx >> (u_input.b % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x) >> (vec3<u32>(4294967295u, u_input.c, 26866u) % vec3<u32>(32u)), firstLeadingBit(u_input.a.xww))), -_wgslsmith_clamp_i32(_wgslsmith_mod_i32(27804i, -16803i), ~u_input.a.x, 1i)), u_input.c, _wgslsmith_mod_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 91990u, u_input.b.x, 4294967295u), vec4<u32>(54640u, 74106u, 39460u, u_input.c))), vec4<u32>(select(1u, _wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.yx), select(false, false, false)), 32029u, ~_wgslsmith_clamp_u32(u_input.c, 21361u, 15716u), 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(firstLeadingBit(4294967295u), ~u_input.b.x), vec2<u32>(4294967295u, u_input.c)));
}

