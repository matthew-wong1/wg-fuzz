struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<u32, 5>;

var<private> global1: bool = true;

var<private> global2: vec2<i32> = vec2<i32>(1i, 17746i);

var<private> global3: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true));

var<private> global4: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    let var_0 = arg_1;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(-575f, arg_1.a, !all(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4.x, 0u), 18u)]))), arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(exp2(var_0.c)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -127f))))));
    global4 = ~(min(~_wgslsmith_div_vec3_u32(vec3<u32>(34698u, 1u, 0u), vec3<u32>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4.x, 5u)], 5u)], 5u)], 5u)], global0[_wgslsmith_index_u32(18991u, 5u)])), ~abs(vec3<u32>(1u, 1u, 18235u))) ^ vec3<u32>(~global4.x, min(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, 31719u, 1u, 24875u), vec4<u32>(global0[_wgslsmith_index_u32(global4.x, 5u)], global4.x, global0[_wgslsmith_index_u32(1u, 5u)], global4.x)), 1u), 74248u));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, var_0.c))), _wgslsmith_f_op_f32(-var_2.c)));
    return arg_1.b.x;
}

fn func_2(arg_0: vec3<u32>) -> bool {
    var var_0 = !(!select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(621f, 1781f), vec2<f32>(-486f, 416f), true)), Struct_1(2957f, vec2<bool>(false, true), 1168f))));
    let var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(select(~vec4<i32>(global2.x, 2147483647i, -45477i, global2.x), u_input.a, var_0.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, global2.x, -606i, global2.x), -u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, -3398i, global2.x)) >> (~(~vec4<u32>(global4.x, arg_0.x, global0[_wgslsmith_index_u32(arg_0.x, 5u)], global4.x)) % vec4<u32>(32u))), reverseBits(-(u_input.a << (~vec4<u32>(30524u, 23997u, 57202u, 0u) % vec4<u32>(32u)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1244f) * _wgslsmith_f_op_f32(round(305f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1809f, _wgslsmith_f_op_f32(1488f - 437f))))), var_0.zy, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-383f + 433f) + -291f)), -400f)));
    global4 = _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~(~arg_0), vec3<u32>(arg_0.x, global4.x, global4.x) & arg_0), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(27552u, 560u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)]), arg_0, arg_0 ^ arg_0)));
    global2 = -var_1.xw;
    return select(var_2.b.x, var_2.a >= _wgslsmith_div_f32(-204f, var_2.c), any(vec3<bool>(!all(vec4<bool>(var_0.x, var_0.x, true, false)), false, false)));
}

fn func_1() -> f32 {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-293f)))));
    global3 = array<vec3<bool>, 18>();
    global1 = !all(vec2<bool>(func_2(vec3<u32>(14246u, 41902u, global4.x) >> (vec3<u32>(3429u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4.x, 5u)], 5u)], global4.x) % vec3<u32>(32u))), !var_0));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1323f))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<bool>, 18>();
    global3 = array<vec3<bool>, 18>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - 1350f)), vec2<bool>(false, all(global3[_wgslsmith_index_u32(1u, 18u)])), _wgslsmith_f_op_f32(floor(220f)));
    global1 = all(global3[_wgslsmith_index_u32(~(~15710u), 18u)]);
    let var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1104f, -626f));
}

