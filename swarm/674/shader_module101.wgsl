struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec4<u32>(44266u, 144066u, 1u, 45859u)), Struct_2(vec4<u32>(63796u, 4294967295u, 1u, 0u)), Struct_2(vec4<u32>(1u, 1u, 11263u, 42934u)), Struct_2(vec4<u32>(4294967295u, 13009u, 32462u, 4294967295u)), Struct_2(vec4<u32>(0u, 1u, 33166u, 47927u)), Struct_2(vec4<u32>(0u, 61912u, 29704u, 4294967295u)), Struct_2(vec4<u32>(55103u, 61381u, 0u, 4294967295u)), Struct_2(vec4<u32>(1u, 1293u, 0u, 4294967295u)), Struct_2(vec4<u32>(23658u, 0u, 12385u, 1u)), Struct_2(vec4<u32>(1u, 85086u, 820u, 1994u)), Struct_2(vec4<u32>(25493u, 47134u, 21358u, 4294967295u)), Struct_2(vec4<u32>(44606u, 33416u, 1u, 1u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec3<bool>) -> u32 {
    var var_0 = ~(vec2<u32>(firstTrailingBit(global0.a.x), u_input.e ^ 51380u) & vec2<u32>(_wgslsmith_mod_u32(~1u, 1u), ~_wgslsmith_dot_vec2_u32(global0.a.xz, global0.a.xw)));
    let var_1 = 16527u;
    let var_2 = vec3<u32>(arg_2.x, var_1, 20841u);
    let var_3 = global1[_wgslsmith_index_u32(min((~var_2.x | u_input.a.x) >> ((~_wgslsmith_mod_u32(13465u, var_2.x) | 1u) % 32u), ~(~1u)), 12u)];
    var_0 = select(var_2.zy, select(vec2<u32>(max(global0.a.x, arg_2.x | 4294967295u), ~(~var_2.x)), _wgslsmith_add_vec2_u32(u_input.a.xy, var_2.yy & vec2<u32>(arg_2.x, 30807u)) ^ vec2<u32>(570u, ~var_3.a.x), vec2<bool>(true, true)), select(all(!vec3<bool>(arg_3.x, arg_1.a, arg_1.a)), true, arg_1.a));
    return _wgslsmith_div_u32(_wgslsmith_div_u32(var_3.a.x, _wgslsmith_dot_vec4_u32(select(firstTrailingBit(vec4<u32>(0u, 0u, var_3.a.x, 0u)), ~vec4<u32>(global0.a.x, global0.a.x, 1u, 1u), vec4<bool>(true, arg_0, true, arg_3.x)), _wgslsmith_mult_vec4_u32(global0.a, ~vec4<u32>(global0.a.x, global0.a.x, 0u, 34748u)))), 66278u);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_3) -> f32 {
    let var_0 = all(vec2<bool>(arg_2.a, !any(vec2<bool>(true, arg_2.a)) && select(false, !arg_2.a, true)));
    global1 = array<Struct_2, 12>();
    var var_1 = Struct_1(~select(-arg_0.x, _wgslsmith_add_i32(-2147483647i, u_input.b.x), !var_0) ^ max(_wgslsmith_sub_i32(u_input.d.x, abs(1i)), _wgslsmith_sub_i32(select(u_input.d.x, u_input.c, arg_2.a), reverseBits(0i))), !select(vec2<bool>(var_0 || arg_2.a, all(vec4<bool>(var_0, var_0, arg_2.a, arg_2.a))), !(!vec2<bool>(true, arg_2.a)), true));
    let var_2 = ~u_input.d.wz;
    var var_3 = Struct_3(true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-726f)) * -952f));
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec2_i32(u_input.b.zw, u_input.d.yy >> (vec2<u32>(global0.a.x, 0u) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(-_wgslsmith_div_vec2_i32(var_0, u_input.b.zw) << (_wgslsmith_sub_vec2_u32(vec2<u32>(global0.a.x, 43946u), vec2<u32>(11322u, 9978u)) % vec2<u32>(32u)), vec4<u32>(global0.a.x, _wgslsmith_clamp_u32(u_input.a.x, global0.a.x, func_3(true, Struct_3(true), u_input.a.zy, vec3<bool>(false, false, true))), ~1u, 40862u), Struct_3(all(vec4<bool>(false, true, false, true))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1013f), -325f))) - _wgslsmith_f_op_f32(func_4(u_input.b.yx, _wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.x, u_input.a.x, global0.a.x, 57044u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.e, global0.a.x)) | (global0.a >> (global0.a % vec4<u32>(32u))), Struct_3(0u == global0.a.x)))));
    let var_2 = Struct_3(all(!select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, false))));
    global1 = array<Struct_2, 12>();
    global1 = array<Struct_2, 12>();
    return Struct_3(4294967295u != global0.a.x);
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_3(false);
    global1 = array<Struct_2, 12>();
    var var_1 = func_2(countOneBits(_wgslsmith_sub_vec2_i32(~u_input.d.yw, u_input.d.wy) >> (vec2<u32>(abs(1u), u_input.e) % vec2<u32>(32u))));
    var var_2 = Struct_3(!(!(1i <= _wgslsmith_div_i32(7929i, u_input.b.x))));
    var_0 = Struct_3(var_0.a);
    return Struct_3(!var_0.a);
}

fn func_5(arg_0: Struct_3) -> StorageBuffer {
    var var_0 = func_1();
    var var_1 = u_input.a.x;
    var var_2 = func_1();
    global1 = array<Struct_2, 12>();
    global0 = Struct_2(global0.a);
    return StorageBuffer(_wgslsmith_mult_i32(21852i, -75462i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(457f, 913f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1());
}

