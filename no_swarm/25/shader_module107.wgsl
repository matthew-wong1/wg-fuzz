struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 14>;

var<private> global2: array<vec4<u32>, 30>;

var<private> global3: array<vec2<u32>, 31>;

var<private> global4: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec4<f32>) -> i32 {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(global2[_wgslsmith_index_u32(u_input.a.x & u_input.a.x, 30u)], select(_wgslsmith_sub_vec4_u32(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], arg_1.a), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 30010u), select(vec4<bool>(true, true, arg_1.d.b.x, arg_1.d.b.x), vec4<bool>(false, arg_1.d.b.x, false, arg_1.d.b.x), vec4<bool>(true, false, false, arg_1.d.b.x)))), ~global2[_wgslsmith_index_u32(countOneBits(~u_input.a.x), 30u)]), 20852u);
    let var_1 = Struct_3(Struct_2(~vec4<u32>(u_input.a.x, ~20687u, abs(u_input.a.x), 4294967295u), arg_3.wyx, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-639f - arg_1.c))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -718f), _wgslsmith_f_op_f32(-arg_1.b.x))))), Struct_1(~(vec2<i32>(arg_1.d.a.x, 0i) >> (u_input.a % vec2<u32>(32u))), vec2<bool>(true, all(vec3<bool>(true, true, global4.x)))), 718f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_3.xxx - arg_1.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.zwz) * arg_2.xyy), true)))), abs(~countOneBits(vec3<u32>(arg_1.a.x, arg_1.a.x, 0u) << (arg_1.a.wxw % vec3<u32>(32u)))));
    global1 = array<Struct_2, 14>();
    global2 = array<vec4<u32>, 30>();
    let var_2 = -(~vec4<i32>(var_1.a.d.a.x, ~arg_1.d.a.x, 2147483647i, countOneBits(var_1.a.d.a.x)));
    return _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(var_2.zyz, -max(var_2.yxz, vec3<i32>(arg_1.d.a.x, var_2.x, arg_1.d.a.x))), var_2.xwx), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 1i, _wgslsmith_sub_i32(var_1.a.d.a.x, 3613i)) & vec3<i32>(u_input.b, -29248i, max(-1i, arg_1.d.a.x)), var_2.zxw));
}

fn func_2() -> bool {
    var var_0 = vec3<i32>(0i, _wgslsmith_clamp_i32(~u_input.b, _wgslsmith_add_i32(func_3(_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(69221u, u_input.a.x)), Struct_2(vec4<u32>(u_input.a.x, 1u, 37379u, 1u), vec3<f32>(-333f, 1190f, -1058f), 2843f, Struct_1(vec2<i32>(u_input.b, u_input.b), global4.wy), -108f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-427f, 400f, 1877f, 197f), vec4<f32>(-736f, 1022f, -929f, 147f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-634f, -1000f, 649f, -1021f))), u_input.b), -(~(-u_input.b))), u_input.b);
    global4 = vec4<bool>(true, true, global4.x, false);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1406f);
    let var_2 = Struct_3(Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(29746u, u_input.a.x, 41645u), vec3<u32>(u_input.a.x, 33437u, 0u)), ~0u), global2[_wgslsmith_index_u32(max(4294967295u >> (u_input.a.x % 32u), ~1u), 30u)], global2[_wgslsmith_index_u32(u_input.a.x & 1u, 30u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1205f, var_1.x)), var_1.x, Struct_1(abs(-vec2<i32>(var_0.x, -11333i)), vec2<bool>(global4.x, false | global4.x)), 1206f), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), 1283f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2466f, var_1.x, -970f))))), ~abs(reverseBits(vec3<u32>(1u, 19788u, 0u))));
    let var_3 = var_2.a.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) > 154f;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec3<bool>) -> f32 {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_0.c.x, u_input.a.x, 4294967295u), vec4<u32>(arg_0.c.x, arg_0.c.x, 1939u, arg_2.a.x)), global2[_wgslsmith_index_u32(max(~(~arg_0.c.x), firstTrailingBit(u_input.a.x)), 30u)]), arg_0.a.a.x);
    var var_1 = select(vec3<bool>(!(!(!arg_3.x)), true, false), select(!select(select(vec3<bool>(false, true, true), global4.yzx, arg_3), select(arg_3, global4.zzz, true), true), vec3<bool>(~2147483647i >= arg_0.a.d.a.x, arg_3.x, true), !global4.zzw), select(arg_3, vec3<bool>((u_input.b == arg_1.x) && !arg_2.d.b.x, !all(vec3<bool>(global4.x, arg_2.d.b.x, true)), all(!arg_3.yx)), func_2() || arg_2.d.b.x));
    var var_2 = _wgslsmith_dot_vec2_i32(arg_2.d.a, -(vec2<i32>(-1i) * -(arg_0.a.d.a << (vec2<u32>(6829u, u_input.a.x) % vec2<u32>(32u)))));
    var var_3 = ~_wgslsmith_div_vec3_u32(arg_2.a.yyz, (vec3<u32>(arg_2.a.x, arg_2.a.x, arg_2.a.x) << (arg_2.a.zyz % vec3<u32>(32u))) & reverseBits(firstLeadingBit(arg_2.a.wzz)));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.b.x))))), arg_2.c, true));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(global2[_wgslsmith_index_u32(43671u, 30u)], _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(select(-1051f, -783f, true)), -118f))), _wgslsmith_div_f32(-407f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_3(global1[_wgslsmith_index_u32(u_input.a.x, 14u)], vec3<f32>(-373f, 1095f, 234f), vec3<u32>(4294967295u, u_input.a.x, 20915u)), vec4<i32>(0i, -2497i, u_input.b, u_input.b), Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], vec3<f32>(-793f, -1302f, -1083f), -984f, Struct_1(vec2<i32>(-2147483647i, -2147483647i), global4.wx), -1112f), global4.yxy)), _wgslsmith_f_op_f32(-1000f * 763f)))), Struct_1(firstLeadingBit(vec2<i32>(2147483647i, u_input.b) ^ vec2<i32>(u_input.b, 0i)), global4.xz), 1103f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-989f, -257f, true)), _wgslsmith_f_op_f32(f32(-1f) * -439f))), 1018f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(Struct_3(global1[_wgslsmith_index_u32(u_input.a.x, 14u)], vec3<f32>(-1443f, -136f, 1000f), vec3<u32>(u_input.a.x, 0u, u_input.a.x)), vec4<i32>(u_input.b, u_input.b, u_input.b, 44344i), global1[_wgslsmith_index_u32(0u, 14u)], global4.xyx)))))), reverseBits(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 65653u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 1u)) ^ vec3<u32>(0u, 16557u, u_input.a.x))));
    var var_1 = var_0.a.d;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(abs(abs(16117u)), (_wgslsmith_sub_u32(39989u, u_input.a.x) ^ 4294967295u) << (var_0.a.a.x % 32u)), _wgslsmith_add_u32(0u, _wgslsmith_clamp_u32(~reverseBits(u_input.a.x), firstLeadingBit(~54532u), ~max(26091u, 0u)))), 14u)];
    global4 = select(!select(vec4<bool>(true, false, var_1.b.x, false), vec4<bool>(var_2.d.b.x, true, all(vec2<bool>(var_1.b.x, true)), var_0.a.d.b.x & false), !global4.x), vec4<bool>(all(global4.zww), func_2(), var_0.a.d.b.x, any(!vec4<bool>(true, global4.x, var_2.d.b.x, var_1.b.x)) | var_1.b.x), !(true && all(!global4.zyy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(621f, var_2.b.x)), var_2.d.a.x);
}

