struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<bool>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11>;

var<private> global1: array<i32, 12>;

var<private> global2: array<Struct_1, 7>;

var<private> global3: Struct_2 = Struct_2(vec3<u32>(61419u, 28900u, 37647u), vec3<bool>(true, true, false));

var<private> global4: array<bool, 15>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    global4 = array<bool, 15>();
    let var_0 = Struct_3(vec3<i32>(~select(global1[_wgslsmith_index_u32(4294967295u, 12u)] >> (33884u % 32u), i32(-1i) * -26508i, !global3.b.x), global1[_wgslsmith_index_u32(global3.a.x, 12u)], -global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), 5932i, true, ~1u);
    var var_1 = u_input.e.zw;
    let var_2 = global3.b;
    var var_3 = global2[_wgslsmith_index_u32(var_1.x, 7u)];
    return !global4[_wgslsmith_index_u32(var_3.e, 15u)] || !var_2.x;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    var var_0 = global4[_wgslsmith_index_u32(global3.a.x, 15u)] || any(!select(vec2<bool>(arg_1.c.x, false), select(arg_2.yz, vec2<bool>(false, true), arg_2.x), select(vec2<bool>(arg_1.c.x, false), vec2<bool>(true, global4[_wgslsmith_index_u32(arg_1.a.x, 15u)]), true)));
    var var_1 = vec4<bool>(max(global3.a.x | max(0u, arg_1.a.x), ~1u) == ~85502u, func_3(), global3.b.x, true && (-(-60663i << (arg_1.e % 32u)) >= _wgslsmith_div_i32(i32(-1i) * -56983i, arg_1.b)));
    global4 = array<bool, 15>();
    global0 = array<vec4<i32>, 11>();
    global4 = array<bool, 15>();
    return -525f;
}

fn func_1(arg_0: vec2<i32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(929f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.d ^ 4294967295u, Struct_1(u_input.e, -22334i, vec3<bool>(global4[_wgslsmith_index_u32(global3.a.x, 15u)], true, global3.b.x), vec3<f32>(-414f, -283f, 981f), 22527u), global3.b)) - -293f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(669f, -126f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1397f, 116f)))))));
    global4 = array<bool, 15>();
    let var_1 = select(vec3<bool>(false, true, true), vec3<bool>(true, global3.b.x, global3.b.x), false);
    let var_2 = var_0.x;
    var var_3 = Struct_3(abs(vec3<i32>(0i, 0i, global1[_wgslsmith_index_u32(1u, 12u)] << (global3.a.x % 32u))), max(arg_0.x, _wgslsmith_mod_i32(arg_0.x | global1[_wgslsmith_index_u32(27861u, 12u)], firstLeadingBit(global1[_wgslsmith_index_u32(0u, 12u)]))) << (35335u % 32u), select(-1i <= reverseBits(arg_0.x), true, arg_0.x < _wgslsmith_sub_i32(-52020i, 30346i)), ~(~_wgslsmith_sub_u32(reverseBits(u_input.b.x), global3.a.x)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-729f, var_2, var_2), vec3<f32>(var_2, var_2, 454f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, -1357f, var_2), vec3<f32>(var_0.x, var_2, var_0.x), vec3<bool>(true, global4[_wgslsmith_index_u32(var_3.d, 15u)], false))), any(var_1.zz)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-971f, -1000f, var_0.x))))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = ~vec2<i32>(reverseBits(arg_1.b), 27754i);
    return countOneBits(~global3.a.x << (arg_1.e % 32u)) >> (~(~max(0u, 1u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 7>();
    global2 = array<Struct_1, 7>();
    let var_0 = global3.b.x;
    global0 = array<vec4<i32>, 11>();
    global1 = array<i32, 12>();
    let var_1 = global3.b.yy;
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.e, firstTrailingBit(u_input.e)), func_4(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(29533u, ~abs(71819u)), 12u)], Struct_1(u_input.e, -_wgslsmith_sub_i32(2163i, global1[_wgslsmith_index_u32(18985u, 12u)]), select(select(global3.b, vec3<bool>(false, false, false), global3.b), select(global3.b, vec3<bool>(false, true, false), vec3<bool>(var_1.x, true, global3.b.x)), var_1.x), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-132f, -851f, -719f), vec3<f32>(1000f, 409f, -837f)), _wgslsmith_f_op_vec3_f32(func_1(vec2<i32>(global1[_wgslsmith_index_u32(u_input.d, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)])))), 825u))), 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_2.d.x)))), -1823f), _wgslsmith_div_f32(1869f, _wgslsmith_f_op_f32(-var_2.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.d.x)) + _wgslsmith_f_op_f32(select(-1533f, -1000f, global4[_wgslsmith_index_u32(u_input.e.x, 15u)]))))), var_2.d.x), -10126i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.x, 1236f))))), max(2147483647i, (global1[_wgslsmith_index_u32(u_input.e.x, 12u)] << (4294967295u % 32u)) | 0i));
}

