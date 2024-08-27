struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<bool>(false, true, true)));

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(vec3<bool>(true, false, false))), Struct_2(Struct_1(vec3<bool>(false, true, false))), Struct_2(Struct_1(vec3<bool>(false, false, true))), Struct_2(Struct_1(vec3<bool>(false, false, false))), Struct_2(Struct_1(vec3<bool>(true, true, true))), Struct_2(Struct_1(vec3<bool>(false, true, true))), Struct_2(Struct_1(vec3<bool>(true, false, true))), Struct_2(Struct_1(vec3<bool>(true, true, false))), Struct_2(Struct_1(vec3<bool>(false, true, true))), Struct_2(Struct_1(vec3<bool>(true, true, true))), Struct_2(Struct_1(vec3<bool>(false, false, false))), Struct_2(Struct_1(vec3<bool>(true, false, true))), Struct_2(Struct_1(vec3<bool>(true, true, false))), Struct_2(Struct_1(vec3<bool>(true, true, true))));

var<private> global2: array<u32, 21>;

var<private> global3: Struct_3;

var<private> global4: array<vec3<bool>, 5>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: vec4<bool>) -> vec3<bool> {
    let var_0 = Struct_3(global3.a, u_input.a.x);
    global1 = array<Struct_2, 14>();
    let var_1 = _wgslsmith_div_vec3_i32(firstTrailingBit((vec3<i32>(-3782i, u_input.c.x, u_input.c.x) << (u_input.a % vec3<u32>(32u))) ^ select(u_input.c & vec3<i32>(u_input.c.x, 1i, u_input.c.x), u_input.c, global3.a.a.a)), vec3<i32>(u_input.c.x, _wgslsmith_sub_i32(~(-69908i), abs(5497i)) & _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(0i, u_input.c.x, u_input.c.x)), u_input.c), u_input.c.x));
    var var_2 = select(!arg_3, !vec4<bool>(any(select(vec2<bool>(arg_0.a.a.x, arg_3.x), var_0.a.a.a.zz, false)), true, any(!arg_3.xz), _wgslsmith_f_op_f32(round(arg_2.x)) <= _wgslsmith_f_op_f32(abs(arg_2.x))), !(!any(select(vec3<bool>(false, false, global0.a.a.x), vec3<bool>(true, global3.a.a.a.x, true), vec3<bool>(var_0.a.a.a.x, global3.a.a.a.x, true)))));
    var var_3 = abs(reverseBits(u_input.c.x));
    return !var_0.a.a.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: vec3<f32>) -> i32 {
    var var_0 = -arg_2;
    var var_1 = !(!all(select(select(global3.a.a.a, global0.a.a, arg_1.a.a.a.x), func_3(global1[_wgslsmith_index_u32(u_input.a.x, 14u)], u_input.b.xx, arg_3.xx, vec4<bool>(true, global0.a.a.x, arg_0.a.x, arg_0.a.x)), u_input.a.x >= 4294967295u)));
    var var_2 = arg_1;
    global1 = array<Struct_2, 14>();
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(-24702i, select(_wgslsmith_div_i32(abs(-1i), _wgslsmith_sub_i32(1i, u_input.c.x)), ~(~(-2147483647i)), any(select(global4[_wgslsmith_index_u32(u_input.b.x, 5u)], var_2.a.a.a, vec3<bool>(true, true, false)))), ~arg_2), -u_input.c);
    return _wgslsmith_dot_vec4_i32(reverseBits(-min(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_3, var_3, 1i), vec4<i32>(arg_2, 11207i, var_3, u_input.c.x)), ~vec4<i32>(19141i, u_input.c.x, arg_2, arg_2))), firstLeadingBit(min(_wgslsmith_mult_vec4_i32(vec4<i32>(1837i, arg_2, -22649i, var_3), vec4<i32>(var_3, var_3, -2147483647i, -27483i)), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.zz, vec2<i32>(74033i, var_3)), select(arg_2, arg_2, arg_1.a.a.a.x), i32(-1i) * -1i, 2147483647i))));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>) -> Struct_3 {
    let var_0 = vec3<f32>(-202f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -766f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), _wgslsmith_div_f32(arg_1.x, arg_1.x), true)), global3.a.a.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))));
    return Struct_3(Struct_2(Struct_1(global4[_wgslsmith_index_u32(1u, 5u)])), _wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], u_input.b.x), u_input.a.xy) << (~(~4294967295u) % 32u));
}

fn func_1() -> Struct_3 {
    let var_0 = global3.a;
    var var_1 = firstTrailingBit(global3.b);
    let var_2 = u_input.a;
    global3 = func_4(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), -2147483647i), ~firstTrailingBit(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -2147483647i))), ~(-func_2(Struct_1(vec3<bool>(false, false, global0.a.a.x)), Struct_3(Struct_2(Struct_1(vec3<bool>(global3.a.a.a.x, global0.a.a.x, var_0.a.a.x))), 23262u), 0i, vec3<f32>(-243f, -565f, 318f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-922f, _wgslsmith_f_op_f32(f32(-1f) * -1192f), -1514f, 222f), vec4<f32>(460f, _wgslsmith_f_op_f32(-403f + -119f), -562f, _wgslsmith_f_op_f32(max(-129f, -1079f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-361f, 1489f, -2641f, -676f)))))))));
    let var_3 = Struct_1(vec3<bool>(all(!select(global0.a.a, vec3<bool>(true, global3.a.a.a.x, false), global3.a.a.a.x)), any(select(global4[_wgslsmith_index_u32(~79634u, 5u)], global0.a.a, global3.a.a.a.x)), select(true, global3.a.a.a.x, global0.a.a.x)));
    return func_4(min(1i, u_input.c.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2496f, -760f, -1042f, -605f) - vec4<f32>(-1546f, 1355f, -1289f, 911f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2149f, -530f, -1000f, -114f), vec4<f32>(487f, -880f, 607f, -104f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(120f, -689f, 1422f, -1320f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-353f, -481f, -730f, 1370f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(197f, -641f, 761f, -1130f)) + vec4<f32>(-209f, -569f, 448f, -962f)))))));
    global2 = array<u32, 21>();
    let var_1 = func_1();
    let var_2 = func_1();
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(550f - 1027f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1285f + -145f))) + 213f), _wgslsmith_f_op_f32(exp2(var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1958f, -1000f, 124f)))))), ~vec4<u32>(_wgslsmith_div_u32(global3.b, global2[_wgslsmith_index_u32(~var_2.b, 21u)]), ~(1u << (global3.b % 32u)), 40459u, u_input.a.x));
}

