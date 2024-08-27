struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec2<bool>,
    d: bool,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 29> = array<bool, 29>(true, false, true, true, false, true, false, true, false, true, false, false, true, true, true, true, true, false, true, false, true, false, true, false, true, false, false, true, true);

var<private> global2: bool;

var<private> global3: array<f32, 31>;

var<private> global4: array<bool, 29> = array<bool, 29>(true, false, true, false, true, false, false, false, true, true, true, true, false, false, true, true, true, true, false, true, false, false, true, false, true, false, true, true, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> u32 {
    var var_0 = Struct_5(vec2<u32>(25281u, ~(~u_input.d)), abs(~select(max(vec4<u32>(u_input.d, 4294967295u, 59009u, 0u), vec4<u32>(u_input.c, u_input.c, u_input.b.x, 37576u)), ~vec4<u32>(0u, 0u, 1u, u_input.b.x), true)), Struct_1(!global0.a, global0.b), !(!select(!global0.a.xz, global0.a.yy, vec2<bool>(false, global0.a.x))));
    global1 = array<bool, 29>();
    let var_1 = Struct_2(Struct_1(!var_0.c.a, all(select(!var_0.c.a, select(vec3<bool>(false, true, global0.b), global0.a, true), vec3<bool>(var_0.c.b, true, var_0.d.x)))));
    global0 = var_1.a;
    var var_2 = Struct_3(Struct_1(global0.a, false), firstLeadingBit(firstTrailingBit(var_0.b)));
    return ~27049u;
}

fn func_3(arg_0: i32) -> vec3<u32> {
    let var_0 = vec3<bool>(global1[_wgslsmith_index_u32(58620u, 29u)], select(!(!all(vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 29u)]))), any(global0.a), all(select(global0.a, vec3<bool>(global4[_wgslsmith_index_u32(u_input.c, 29u)], global1[_wgslsmith_index_u32(u_input.d, 29u)], global0.a.x), false))), !any(global0.a.xx));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1348f)), 1242f)));
    global3 = array<f32, 31>();
    global1 = array<bool, 29>();
    let var_2 = true;
    return _wgslsmith_mod_vec3_u32(abs(vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), u_input.d, ~abs(u_input.b.x))), firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(u_input.d, u_input.d), 4294967295u, ~u_input.c)) ^ vec3<u32>(0u | _wgslsmith_add_u32(4294967295u, u_input.c), select(1u, ~u_input.b.x, all(global0.a.yx)), 49236u));
}

fn func_4(arg_0: vec3<u32>) -> vec3<f32> {
    let var_0 = true;
    global0 = Struct_1(!vec3<bool>(!global1[_wgslsmith_index_u32(4292u ^ arg_0.x, 29u)], any(select(vec3<bool>(global4[_wgslsmith_index_u32(u_input.c, 29u)], false, true), vec3<bool>(false, false, global0.b), global4[_wgslsmith_index_u32(u_input.b.x, 29u)])), !all(vec2<bool>(true, true))), global0.a.x);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 31u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1710f - global3[_wgslsmith_index_u32(u_input.b.x, 31u)]), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 31u)]))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(317f * global3[_wgslsmith_index_u32(u_input.d, 31u)]))))) < 1225f;
    var var_2 = vec2<u32>(max(23169u, u_input.b.x), u_input.c);
    var var_3 = global0.a;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, global3[_wgslsmith_index_u32(61887u, 31u)])), _wgslsmith_f_op_f32(-307f + global3[_wgslsmith_index_u32(var_2.x, 31u)]), _wgslsmith_f_op_f32(-443f * global3[_wgslsmith_index_u32(u_input.c, 31u)])))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 31u)]))))), -2542f, 428f));
}

fn func_1() -> vec3<bool> {
    global3 = array<f32, 31>();
    global1 = array<bool, 29>();
    let var_0 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(func_2(), ~u_input.c), reverseBits(vec2<u32>(u_input.b.x, u_input.b.x)) | u_input.b), u_input.b.x);
    global1 = array<bool, 29>();
    let var_1 = _wgslsmith_f_op_vec3_f32(func_4(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(10083u, var_0 >> (u_input.b.x % 32u), var_0 >> (u_input.c % 32u)), ~func_3(-1i)))));
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(func_1(), vec3<bool>(any(select(vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.b.x, 29u)]), global0.a.yy, global0.a.xy)), any(vec4<bool>(true, true, global4[_wgslsmith_index_u32(u_input.c, 29u)], global0.a.x)) & (-432f >= global3[_wgslsmith_index_u32(8395u, 31u)]), true), global0.b), !any(global0.a));
    let var_1 = Struct_4(Struct_2(Struct_1(var_0.a, any(var_0.a))), !all(select(!vec4<bool>(var_0.b, false, false, global0.b), vec4<bool>(true, false, global4[_wgslsmith_index_u32(u_input.c, 29u)], false), true)), func_1().zz, var_0.a.x);
    var var_2 = ~(~_wgslsmith_dot_vec4_i32(~u_input.a, -u_input.a) | -10952i);
    let var_3 = select(!(!vec2<bool>(var_1.a.a.a.x, true)), vec2<bool>(true, all(!vec4<bool>(false, true, var_0.a.x, true))), select(vec2<bool>(any(global0.a), true), var_1.c, var_1.c.x));
    let var_4 = u_input.a.x;
    var_2 = _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a.x, ~_wgslsmith_dot_vec4_i32(-u_input.a, u_input.a)), var_4);
    let x = u_input.a;
    s_output = StorageBuffer(~max(var_4 & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_4, var_4, 0i), u_input.a), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.e, u_input.e, 2147483647i, -19678i), min(vec4<i32>(var_4, u_input.a.x, u_input.e, -1i), vec4<i32>(16790i, u_input.a.x, var_4, 41929i)))), (vec3<u32>(1u, 1u, _wgslsmith_div_u32(u_input.d, u_input.b.x)) << (~vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u))) & ~(~(~vec3<u32>(64792u, u_input.c, 0u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(firstLeadingBit(u_input.d), 31u)], -1000f, _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(u_input.b.x, 31u)]))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-563f, global3[_wgslsmith_index_u32(0u, 31u)], 495f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 31u)], global3[_wgslsmith_index_u32(45564u, 31u)], 470f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1273f, -116f, 2081f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(453f, global3[_wgslsmith_index_u32(u_input.d, 31u)], 777f))))))));
}

