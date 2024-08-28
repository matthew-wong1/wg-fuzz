struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<u32, 15>;

var<private> global2: vec2<bool>;

var<private> global3: array<bool, 23>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: u32) -> u32 {
    global3 = array<bool, 23>();
    var var_0 = vec4<bool>(select(true, !global2.x, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(4294967295u, 15u)], _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 17496u), vec4<u32>(arg_2, 1u, 0u, global1[_wgslsmith_index_u32(11595u, 15u)])), 1u) | (u_input.a ^ (4294967295u >> (arg_2 % 32u))), 23u)]), all(!(!select(vec4<bool>(arg_0.a.x, true, true, false), vec4<bool>(false, arg_0.a.x, true, global2.x), vec4<bool>(global3[_wgslsmith_index_u32(arg_2, 23u)], global2.x, global2.x, true)))), false, global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(arg_2, 15u)], 23u)]);
    let var_1 = true;
    var var_2 = Struct_1(~19470u, !any(!select(var_0.yw, vec2<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 15u)], 23u)], true), var_0.wz)), ~(~countOneBits(vec4<u32>(0u, u_input.a, 24555u, 4175u))), _wgslsmith_div_i32(u_input.c, 17959i), 38667i);
    return global1[_wgslsmith_index_u32(max(~(~max(var_2.c.x, arg_2)) ^ arg_2, _wgslsmith_div_u32(4294967295u, u_input.a)), 15u)];
}

fn func_3(arg_0: u32) -> vec4<bool> {
    global3 = array<bool, 23>();
    let var_0 = Struct_2(true, 0u, countOneBits(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b, u_input.b, u_input.b), reverseBits(vec3<i32>(u_input.b, 2147483647i, 1i)))) >> (abs(abs(select(vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(global1[_wgslsmith_index_u32(arg_0, 15u)], global1[_wgslsmith_index_u32(43282u, 15u)], 41910u), vec3<bool>(true, global3[_wgslsmith_index_u32(78758u, 23u)], true)))) % vec3<u32>(32u)), select(max(-select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(1i, u_input.b), global3[_wgslsmith_index_u32(arg_0, 23u)]), -vec2<i32>(u_input.b, 1i)), _wgslsmith_add_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(-30148i, -2147483647i), vec2<i32>(-2147483647i, u_input.b)), max(-vec2<i32>(-2147483647i, u_input.c), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(1i, u_input.c)))), !(!(!vec2<bool>(global2.x, global3[_wgslsmith_index_u32(arg_0, 23u)])))));
    global0 = var_0.a;
    global1 = array<u32, 15>();
    let var_1 = _wgslsmith_f_op_f32(330f + -730f);
    return vec4<bool>(any(!(!(!vec3<bool>(true, false, global2.x)))), global2.x, true, var_0.a || var_0.a);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec4<u32>) -> Struct_3 {
    global0 = !any(select(!func_3(arg_0.x), !(!vec4<bool>(false, false, true, global3[_wgslsmith_index_u32(4294967295u, 23u)])), !vec4<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 15u)], 23u)], global2.x, false, global3[_wgslsmith_index_u32(0u, 23u)])));
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-540f, arg_1.x, arg_1.x), vec3<f32>(arg_1.x, -342f, arg_1.x))))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 1519f, 303f) + vec3<f32>(arg_1.x, 1418f, arg_1.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.x + arg_1.x), _wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(ceil(1649f))))));
    let var_1 = any(func_3(~1u).ywx);
    global2 = select(!select(vec2<bool>(false, !global3[_wgslsmith_index_u32(arg_0.x, 23u)]), func_3(_wgslsmith_dot_vec4_u32(arg_2, arg_2)).yy, var_1), vec2<bool>(func_3(37912u).x, var_1), global2.x);
    global1 = array<u32, 15>();
    return Struct_3(!func_3(_wgslsmith_sub_u32(arg_2.x << (global1[_wgslsmith_index_u32(1986u, 15u)] % 32u), ~global1[_wgslsmith_index_u32(38034u, 15u)])).yyy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(vec2<u32>(u_input.a, countOneBits(~u_input.a)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, -1254f), vec2<f32>(1000f, -819f))))))), vec4<u32>(u_input.a, 54790u, ~(~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 15u)], 15u)] & 72999u)), ~global1[_wgslsmith_index_u32(firstTrailingBit(func_1(Struct_3(vec3<bool>(global3[_wgslsmith_index_u32(3270u, 23u)], global2.x, true)), -958f, global1[_wgslsmith_index_u32(4294967295u, 15u)])), 15u)]));
    global2 = func_2(~reverseBits(firstTrailingBit(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], u_input.a) << (vec2<u32>(32539u, global1[_wgslsmith_index_u32(u_input.a, 15u)]) % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1216f, -190f) - vec2<f32>(-506f, -256f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -199f))))), vec4<u32>(~21461u, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(12893u, 15u)]), 15u)], 15u)], 0u)).a.yz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(354f, 1000f, 979f), vec3<f32>(303f, 585f, -1832f))))) - vec3<f32>(-1054f, _wgslsmith_f_op_f32(-143f * _wgslsmith_f_op_f32(f32(-1f) * -761f)), _wgslsmith_f_op_f32(ceil(-1574f)))), _wgslsmith_clamp_i32(abs(-11630i), max(_wgslsmith_clamp_i32(1i, _wgslsmith_sub_i32(-1i, u_input.b), _wgslsmith_add_i32(u_input.b, -1i)), ~_wgslsmith_sub_i32(17433i, -49601i)), -9245i), _wgslsmith_f_op_f32(select(-1601f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))), (u_input.a << (func_1(Struct_3(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 23u)], global2.x, global2.x)), -1151f, global1[_wgslsmith_index_u32(1u, 15u)]) % 32u)) < u_input.a)));
}

