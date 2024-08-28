struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(true, Struct_1(vec4<bool>(false, true, true, true))), Struct_2(false, Struct_1(vec4<bool>(false, false, false, true))), Struct_2(false, Struct_1(vec4<bool>(true, true, false, true))), Struct_2(false, Struct_1(vec4<bool>(true, true, false, false))), Struct_2(true, Struct_1(vec4<bool>(true, true, false, true))), Struct_2(true, Struct_1(vec4<bool>(true, true, false, true))), Struct_2(false, Struct_1(vec4<bool>(true, false, true, false))), Struct_2(true, Struct_1(vec4<bool>(true, true, false, true))), Struct_2(false, Struct_1(vec4<bool>(true, false, false, true))), Struct_2(true, Struct_1(vec4<bool>(true, false, false, true))), Struct_2(true, Struct_1(vec4<bool>(false, false, false, false))), Struct_2(true, Struct_1(vec4<bool>(true, false, true, true))), Struct_2(false, Struct_1(vec4<bool>(true, true, false, true))), Struct_2(false, Struct_1(vec4<bool>(true, true, false, false))), Struct_2(false, Struct_1(vec4<bool>(false, true, false, true))), Struct_2(false, Struct_1(vec4<bool>(false, true, false, true))));

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, false, true, false)));

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, true, true, true));

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 0u, 0u, 0u);

var<private> global4: vec3<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -470f, -275f) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2, -821f, arg_2), vec3<f32>(arg_2, arg_2, arg_2)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(902f, arg_2, 212f))) + _wgslsmith_div_vec3_f32(vec3<f32>(1190f, -1015f, arg_2), vec3<f32>(1025f, 1109f, arg_2))))))));
    let var_1 = ~(~vec4<u32>(~global4.x & firstLeadingBit(global4.x), arg_0.x, 44428u, 0u));
    return _wgslsmith_mult_u32(global4.x, 4294967295u);
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -214f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(228f, -1385f)) + _wgslsmith_div_f32(1228f, 345f)) + _wgslsmith_f_op_f32(f32(-1f) * -1465f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(734f + -323f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1246f, 727f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1623f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-498f)))));
    let var_1 = Struct_1(!select(!vec4<bool>(global2.a.x, global2.a.x, false, false), global2.a, !any(global2.a)));
    global4 = vec3<u32>(arg_0, func_3(global3.yz, any(global2.a.xxw), 1167f, Struct_1(!vec4<bool>(false, false, var_1.a.x, var_1.a.x))), _wgslsmith_dot_vec2_u32(firstLeadingBit(countOneBits(vec2<u32>(18860u, 927u)) << (global3.xz % vec2<u32>(32u))), global3.zw));
    global1 = array<Struct_1, 28>();
    let var_2 = ~46898u;
    return global0[_wgslsmith_index_u32(~(abs(_wgslsmith_dot_vec3_u32(~global3.wwx, global3.www)) | ~abs(reverseBits(global4.x))), 16u)];
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global4 = ~global3.xyx;
    let var_0 = -_wgslsmith_sub_i32(select(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(3069i, u_input.a), vec2<i32>(2147483647i, -19427i)), false) ^ _wgslsmith_clamp_i32(~1i, countOneBits(-61101i), u_input.a), u_input.a);
    let var_1 = arg_2;
    global4 = _wgslsmith_sub_vec3_u32(global3.zxw, _wgslsmith_mult_vec3_u32(~min(global3.yyz, firstLeadingBit(global3.wzw)), ~abs(~vec3<u32>(global3.x, 0u, 10375u))));
    global4 = abs(vec3<u32>(4294967295u, ~13318u, ~1u));
    return Struct_1(vec4<bool>(func_2(~0u).a, any(select(!arg_2.b.a.wxy, !arg_1.b.a.xwz, var_1.b.a.www)), arg_2.b.a.x, global2.a.x));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = func_4(vec2<f32>(-563f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1084f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-492f))))), func_2(_wgslsmith_div_u32(firstTrailingBit(~0u), firstTrailingBit(20773u))), global0[_wgslsmith_index_u32(~global4.x, 16u)]);
    var var_1 = _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec4_i32(~vec4<i32>(_wgslsmith_mod_i32(arg_0, arg_0), ~2147483647i, -2147483647i, -u_input.a), firstLeadingBit(vec4<i32>(arg_0 | arg_0, select(-220i, arg_0, global2.a.x), ~arg_0, _wgslsmith_add_i32(0i, arg_0)))));
    var var_2 = global2.a.x;
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global3.x, 88236u, 7147u, global3.x), vec4<u32>(global3.x, 0u, 0u, global3.x)) | reverseBits(vec4<u32>(4294967295u, 47523u, 4294967295u, 62420u)), ~(~vec4<u32>(global4.x, 4294967295u, 4294967295u, global4.x))), vec4<u32>(~_wgslsmith_sub_u32(4294967295u, 628u), 108021u, 34580u, _wgslsmith_div_u32(1u, _wgslsmith_add_u32(4294967295u, global4.x)))), global3.x), 28u)];
    let var_3 = func_2(4294967295u).b;
    return -22621i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_div_i32(-_wgslsmith_mult_i32(u_input.a, 2147483647i), 1i));
    global4 = ~vec3<u32>(_wgslsmith_mult_u32(~(~46808u), _wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, global4.x), vec2<u32>(global4.x, 4294967295u))), ~abs(~144464u), 14308u);
    global0 = array<Struct_2, 16>();
    let var_1 = _wgslsmith_clamp_vec2_u32(global3.zz, vec2<u32>(2160u, 25896u), ~global4.xy) << (min(global3.xy, ~global3.wx) % vec2<u32>(32u));
    global4 = global3.wzx;
    var var_2 = Struct_1(global2.a);
    global2 = global1[_wgslsmith_index_u32(1u, 28u)];
    let var_3 = 23108i;
    global0 = array<Struct_2, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(-1476f);
}

