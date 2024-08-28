struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15> = array<u32, 15>(59863u, 1u, 1u, 80159u, 4294967295u, 18035u, 16742u, 4294967295u, 0u, 1u, 4294967295u, 43800u, 0u, 0u, 1u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>) -> u32 {
    var var_0 = Struct_1(-541f);
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_0.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_0.a, -898f, true)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(var_0.a + 586f)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1336f)) * 310f)));
    let var_1 = Struct_1(1f);
    global0 = array<u32, 15>();
    return 30701u;
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> Struct_4 {
    var var_0 = Struct_4(u_input.b.x, countOneBits(max(1u, func_3(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(10844i, 1i, arg_1.x)), -arg_1))), Struct_2(vec2<u32>(1u, ~_wgslsmith_mod_u32(u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40156u, 15u)], 15u)])), _wgslsmith_sub_i32(-7000i | firstTrailingBit(-41320i), -64909i)), Struct_2(_wgslsmith_add_vec2_u32(~reverseBits(vec2<u32>(0u, global0[_wgslsmith_index_u32(55147u, 15u)])), u_input.b.zz), countOneBits(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 21381i, 2147483647i, -21036i), vec4<i32>(arg_1.x, -43914i, arg_1.x, u_input.a))))));
    global0 = array<u32, 15>();
    let var_1 = Struct_4(u_input.d, ~(~global0[_wgslsmith_index_u32(~41949u, 15u)]), var_0.c, var_0.d);
    let var_2 = firstTrailingBit(~27281u);
    global0 = array<u32, 15>();
    return var_1;
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> vec3<bool> {
    global0 = array<u32, 15>();
    let var_0 = func_2(arg_0, ~(vec2<i32>(abs(1059i), u_input.a) & (vec2<i32>(44996i, 51413i) >> (_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.d), u_input.b.xz) % vec2<u32>(32u)))));
    global0 = array<u32, 15>();
    var var_1 = countOneBits(func_3(_wgslsmith_div_vec3_i32(-vec3<i32>(10552i, -2147483647i, 1i), abs(select(vec3<i32>(u_input.a, var_0.c.b, -2147483647i), vec3<i32>(25156i, 1i, 16619i), false))), firstTrailingBit(-(vec2<i32>(-57226i, 1i) << (vec2<u32>(0u, u_input.d) % vec2<u32>(32u))))));
    var var_2 = vec2<bool>(!all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), true)), true);
    return !select(!(!(!vec3<bool>(var_2.x, var_2.x, true))), select(!vec3<bool>(var_2.x, false, true), vec3<bool>(select(false, var_2.x, var_2.x), all(vec3<bool>(var_2.x, var_2.x, var_2.x)), true), !all(vec3<bool>(true, var_2.x, var_2.x))), vec3<bool>(false, var_2.x, any(vec4<bool>(var_2.x, false, false, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    let var_1 = select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), func_1(650f, vec4<f32>(-883f, 1196f, -1081f, -575f)), true), vec3<bool>(true, true, true)), vec3<bool>(true, false, all(vec4<bool>(true, true, select(true, false, false), -30304i > u_input.a))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true)))));
    let var_2 = ~(_wgslsmith_clamp_u32(countOneBits(~u_input.b.x), ~u_input.d, 119887u) >> (~_wgslsmith_sub_u32(abs(3014u), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 15u)], u_input.c.x))) % 32u));
    var var_3 = func_2(476f, min(_wgslsmith_mod_vec2_i32(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(80516i, 22528i))), vec2<i32>(u_input.a, ~u_input.a)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 0i), abs(vec2<i32>(u_input.a, 2147483647i)), max(vec2<i32>(-24979i, u_input.a), vec2<i32>(u_input.a, u_input.a))))).d;
    global0 = array<u32, 15>();
    let var_4 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1214f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(925f)), _wgslsmith_f_op_f32(f32(-1f) * -1546f)))), _wgslsmith_f_op_f32(f32(-1f) * -786f))));
    var var_5 = vec3<i32>(min(_wgslsmith_mod_i32(abs(~u_input.a), ~var_3.b | -u_input.a), u_input.a), abs(u_input.a) >> ((~_wgslsmith_mod_u32(84444u, 4294967295u) ^ abs(_wgslsmith_dot_vec2_u32(var_3.a, vec2<u32>(1u, 1u)))) % 32u), _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-19725i, 1i, var_3.b), vec3<i32>(u_input.a, -22098i, u_input.a)), u_input.a, reverseBits(-10305i)), _wgslsmith_clamp_i32(u_input.a, _wgslsmith_sub_i32(0i, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(16469i, 20580i), vec2<i32>(-2147483647i, var_3.b)))), -2147483647i));
    var var_6 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(exp2(var_4.a))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(666f, 2132f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_4.a, var_4.a), vec2<f32>(var_4.a, -1000f))))))), 419f, -839f, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_4.a, -1034f, -1000f) - vec4<f32>(-606f, -1000f, var_4.a, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1123f, var_4.a, 219f, var_4.a) - vec4<f32>(1178f, var_4.a, var_4.a, var_4.a)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a)));
}

