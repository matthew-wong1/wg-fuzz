struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool = true;

var<private> global2: array<Struct_3, 21>;

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: u32) -> bool {
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1)));
    let var_2 = -vec3<i32>(~(~u_input.b), -38535i, -1i) >> (~vec3<u32>(_wgslsmith_div_u32(u_input.c, 4294967295u), 0u, 20634u) % vec3<u32>(32u));
    var var_3 = u_input.a;
    var var_4 = Struct_1(any(vec4<bool>(true, true, true, true)));
    return var_4.a;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = u_input.b;
    let var_1 = vec2<u32>(arg_0, u_input.c);
    global1 = _wgslsmith_mult_i32(var_0, -1i) == _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(19272i, -2147483647i, var_0) << (~arg_2 % vec3<u32>(32u)), -reverseBits(vec3<i32>(-1i, 2147483647i, var_0))), _wgslsmith_div_i32(-var_0, _wgslsmith_sub_i32(2147483647i, var_0)) & ~(i32(-1i) * -35890i));
    let var_2 = arg_1 <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)));
    global2 = array<Struct_3, 21>();
    return global2[_wgslsmith_index_u32(1803u, 21u)];
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec4<u32>) -> vec4<bool> {
    let var_0 = Struct_5(vec3<bool>(u_input.b == select(4044i, reverseBits(u_input.b), !arg_1.b), arg_1.a.a, true), select(vec4<bool>((false == arg_1.a.a) && false, true, any(vec3<bool>(false, arg_1.a.a, false)), true), !select(arg_0, arg_0, arg_0), true), arg_1.b);
    var var_1 = select(vec2<bool>(true, any(!vec3<bool>(var_0.a.x, arg_0.x, arg_1.d.a)) || !arg_0.x), vec2<bool>(arg_1.a.a, -u_input.b < -2147483647i), vec2<bool>(arg_0.x, false));
    var var_2 = arg_2.ywy ^ vec3<u32>(u_input.c, u_input.a.x >> (arg_2.x % 32u), ~arg_2.x);
    var_1 = !arg_0.wz;
    global0 = ~arg_1.c ^ select(abs(60854u), 4294967295u, true);
    return !(!vec4<bool>(true, var_1.x, true, any(!vec3<bool>(false, true, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 21>();
    global2 = array<Struct_3, 21>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1211f * 276f)))))));
    let var_1 = Struct_5(vec3<bool>(func_1(_wgslsmith_f_op_f32(floor(-1674f)), 1141f, ~(~0u)), select(true, func_1(538f, -1000f, u_input.c) || true, false), false), !vec4<bool>(false, false, true, all(vec3<bool>(true, true, true))), !all(func_3(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true), func_2(4294967295u, 1000f, vec3<u32>(u_input.c, 24921u, u_input.c), global3[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec4<u32>(4294967295u, 65227u, 4294967295u, 66363u) << (vec4<u32>(4294967295u, u_input.c, u_input.c, 32968u) % vec4<u32>(32u)))));
    global1 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, firstLeadingBit(-vec4<i32>(11088i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2637i, u_input.b), vec2<i32>(0i, -1i)), 0i, ~9185i)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, abs(1u), reverseBits(u_input.a.x)), ~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(12097u, 0u, u_input.c) & vec3<u32>(u_input.c, 1u, u_input.c)))));
}

