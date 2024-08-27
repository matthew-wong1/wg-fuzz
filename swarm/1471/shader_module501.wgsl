struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(-1891f, vec4<bool>(false, true, false, true), vec4<f32>(-162f, 505f, 275f, 240f)));

var<private> global1: vec3<i32>;

var<private> global2: array<vec4<i32>, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>) -> vec3<i32> {
    var var_0 = vec2<f32>(1354f, 1398f);
    let var_1 = arg_0.b.xy;
    global2 = array<vec4<i32>, 29>();
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    return vec3<i32>(_wgslsmith_mod_i32((i32(-1i) * -arg_2.x) & ~0i, _wgslsmith_dot_vec2_i32(abs(_wgslsmith_sub_vec2_i32(arg_2.zy, arg_2.zw)), vec2<i32>(0i ^ arg_2.x, -2147483647i))), arg_2.x, 43772i);
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec4<u32>) -> i32 {
    global2 = array<vec4<i32>, 29>();
    global1 = _wgslsmith_sub_vec3_i32(-(firstLeadingBit(vec3<i32>(arg_2.b, arg_2.b, 0i)) >> (~arg_3.yyy % vec3<u32>(32u))), arg_2.a);
    let var_0 = Struct_1(1073f, select(select(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), select(vec4<bool>(false, true, arg_1.x, true), vec4<bool>(arg_1.x, true, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)), vec4<bool>(true, arg_1.x, select(arg_1.x, arg_1.x, false), true), vec4<bool>(global1.x != 19106i, arg_1.x || arg_1.x, all(vec2<bool>(false, arg_1.x)), all(vec2<bool>(arg_1.x, false)))), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), arg_1.x), select(!vec4<bool>(true, arg_1.x, false, arg_1.x), vec4<bool>(false, false, arg_1.x, true), !vec4<bool>(false, arg_1.x, true, true)), !vec4<bool>(false, arg_1.x, arg_1.x, true)), global1.x > -2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(196f)) * _wgslsmith_f_op_f32(f32(-1f) * -761f)), _wgslsmith_f_op_f32(527f - 112f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1165f, -1361f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-435f)), _wgslsmith_f_op_f32(ceil(927f))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(498f, -1000f, 1113f, -1499f))))))));
    let var_1 = Struct_3(arg_2.a, 0i);
    var var_2 = var_1;
    return global1.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec4<bool>) -> vec3<i32> {
    global1 = vec3<i32>(func_4(1i, !vec2<bool>(false, any(arg_2.wz)), Struct_3(func_3(global0[_wgslsmith_index_u32(reverseBits(u_input.b.x), 1u)], arg_1.x, global2[_wgslsmith_index_u32(select(arg_1.x, 4294967295u, false), 29u)]), countOneBits(global1.x)), ~(~vec4<u32>(0u, u_input.a.x, 79220u, 0u) & vec4<u32>(u_input.b.x, 0u, 4294967295u, 89349u))), _wgslsmith_add_i32(global1.x, 0i), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-35584i, global1.x), vec2<i32>(global1.x, -34814i)) & _wgslsmith_clamp_vec2_i32(global1.xx, arg_0.b.xy, global1.yz), arg_0.b.xz) | ~func_4(_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(u_input.b.x, 29u)], global2[_wgslsmith_index_u32(arg_1.x, 29u)]), vec2<bool>(true, true), Struct_3(vec3<i32>(-33813i, 1i, arg_0.b.x), global1.x), vec4<u32>(u_input.b.x, 4294967295u, u_input.a.x, 1u) | vec4<u32>(u_input.a.x, arg_1.x, arg_1.x, u_input.b.x)));
    global0 = array<Struct_1, 1>();
    let var_0 = false;
    global1 = arg_0.b;
    let var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 1u)];
    return _wgslsmith_clamp_vec3_i32(firstLeadingBit(select(-func_3(global0[_wgslsmith_index_u32(arg_1.x, 1u)], 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 29u)]), arg_0.b, arg_2.x)), -min(_wgslsmith_add_vec3_i32(arg_0.b, arg_0.b), _wgslsmith_div_vec3_i32(arg_0.b | arg_0.b, _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, global1.x, arg_0.b.x), vec3<i32>(arg_0.b.x, -2147483647i, -1i)))), ~vec3<i32>(~global1.x, ~func_4(arg_0.b.x, var_1.b.xw, Struct_3(vec3<i32>(0i, 14963i, arg_0.b.x), 1i), vec4<u32>(arg_1.x, u_input.a.x, 1u, 1u)), ~(~arg_0.b.x)));
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(~(~u_input.b.x), 1u)];
    let var_1 = Struct_3(func_2(Struct_2(var_0.a, _wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, -1i, global1.x), vec3<i32>(global1.x, -14396i, global1.x))), _wgslsmith_div_vec2_u32(u_input.a.zz, vec2<u32>(61750u, u_input.b.x)), vec4<bool>(var_0.b.x, true, !arg_0, false)) ^ (-firstLeadingBit(vec3<i32>(global1.x, -2147483647i, global1.x)) & vec3<i32>(-2147483647i, -global1.x, -31348i)), max(global1.x, -9031i));
    global0 = array<Struct_1, 1>();
    let var_2 = abs(min(var_1.b, -1i));
    global0 = array<Struct_1, 1>();
    return func_2(Struct_2(var_0.c.x, _wgslsmith_div_vec3_i32(func_3(Struct_1(var_0.c.x, var_0.b, vec4<f32>(var_0.c.x, 947f, var_0.c.x, 716f)), _wgslsmith_clamp_u32(27546u, u_input.b.x, u_input.b.x), -global2[_wgslsmith_index_u32(u_input.a.x, 29u)]), select(vec3<i32>(-2147483647i, 18543i, 1i) & var_1.a, func_3(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 1512u, global2[_wgslsmith_index_u32(549u, 29u)]), var_0.b.wyz))), _wgslsmith_add_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u) | vec2<u32>(u_input.b.x, u_input.a.x), abs(u_input.a.yy)), u_input.b.zy), select(var_0.b, var_0.b, vec4<bool>(any(!vec2<bool>(false, arg_0)), any(var_0.b), var_0.b.x || var_0.b.x, !(!var_0.b.x)))).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(func_1(!all(vec2<bool>(true, true))), i32(-1i) * -53819i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(49469u, 1u), reverseBits(u_input.b.xx >> (u_input.b.xy % vec2<u32>(32u)))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global1.xz, global1.xy >> (vec2<u32>(u_input.a.x, 8014u) % vec2<u32>(32u))), -12628i), firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(firstLeadingBit(global1.x), global1.x), 0i, global1.x, ~(-10277i))), _wgslsmith_mult_i32(global1.x, global1.x), -3351f);
}

