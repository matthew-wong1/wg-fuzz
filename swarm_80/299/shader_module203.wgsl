struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec3<f32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(1i, 54506i, 2147483647i, 2147483647i, 26062i, 1i, -5374i, 7469i, i32(-2147483648), 1183i, 2147483647i, 35054i, -1i, 2147483647i, -27334i, 2147483647i, -41i, -1i);

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(4294967295u);

var<private> global3: bool = true;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_3) -> vec4<bool> {
    global0 = array<i32, 18>();
    global3 = arg_0.a.e;
    var var_0 = arg_0.a;
    global0 = array<i32, 18>();
    return vec4<bool>(true, !(!var_0.e), -global0[_wgslsmith_index_u32(var_0.c.a | ~0u, 18u)] <= min(_wgslsmith_mod_i32(~arg_0.b.x, _wgslsmith_mod_i32(-12614i, 9539i)), 1i), arg_0.a.e);
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~0u), ~0u, ~firstLeadingBit(34522u)), _wgslsmith_sub_vec3_u32(vec3<u32>(17576u, 0u, global2.a), vec3<u32>(11125u, 20040u, 4294967295u)) | ~(vec3<u32>(4294967295u, 1u, 24301u) << (vec3<u32>(95082u, 4294967295u, global1.a) % vec3<u32>(32u)))));
    global2 = Struct_1(2352u);
    var var_1 = !select(select(func_1(Struct_3(Struct_2(global0[_wgslsmith_index_u32(1u, 18u)], var_0.a, Struct_1(0u), Struct_1(121702u), false), vec4<i32>(1860i, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 18u)], u_input.b), vec3<f32>(-982f, 510f, -447f), Struct_1(global1.a), 0i)).wyx, vec3<bool>(true, true, true), false), vec3<bool>(false, !any(vec4<bool>(true, true, false, true)), true), false);
    let var_2 = _wgslsmith_div_vec3_u32(~(~min(firstTrailingBit(vec3<u32>(global1.a, var_0.a, 1u)), ~vec3<u32>(80742u, 5577u, 4294967295u))), vec3<u32>(~_wgslsmith_clamp_u32(countOneBits(global2.a), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 38152u, global2.a, global1.a), vec4<u32>(var_0.a, global2.a, 0u, global1.a)), ~global2.a), 77701u, 11593u));
    global3 = !(true & all(func_1(Struct_3(Struct_2(u_input.a.x, global1.a, Struct_1(21574u), Struct_1(global1.a), true), vec4<i32>(u_input.a.x, u_input.a.x, -1857i, u_input.b), vec3<f32>(320f, -920f, 655f), Struct_1(629u), u_input.b))));
    return 1048f;
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = Struct_1(~max(80871u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.a, 51368u, global1.a, global2.a), vec4<u32>(global2.a, 0u, global2.a, global2.a)), vec4<u32>(global2.a, 46712u, global1.a, global2.a))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1051f + -835f) + _wgslsmith_f_op_f32(ceil(-2695f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1328f * -1294f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), -509f);
    let var_2 = Struct_2(-arg_0.x, global2.a, var_0, Struct_1(50932u), !all(vec3<bool>(-1000f == var_1.x, all(vec3<bool>(false, true, false)), all(vec4<bool>(false, false, true, true)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(670f)))) + var_1.x);
    let var_4 = vec3<bool>(-493f > var_1.x, true, false);
    return Struct_3(var_2, vec4<i32>(~arg_0.x, _wgslsmith_div_i32(~(2147483647i << (global2.a % 32u)), reverseBits(~2147483647i)), -_wgslsmith_mod_i32(~arg_0.x, arg_0.x), u_input.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -1107f, 1647f) * vec3<f32>(-1133f, -1159f, 111f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 650f, var_1.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -899f, -875f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -138f, var_1.x)))), vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(-679f - var_1.x))))), Struct_1(~(~global1.a) ^ 4294967295u), 17351i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(firstLeadingBit(max(firstTrailingBit(4294967295u), global1.a)));
    let var_1 = vec3<bool>(all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), func_1(Struct_3(Struct_2(global0[_wgslsmith_index_u32(70120u, 18u)], 0u, Struct_1(41529u), Struct_1(global2.a), false), vec4<i32>(global0[_wgslsmith_index_u32(0u, 18u)], -1i, 0i, 0i), vec3<f32>(910f, -378f, 2637f), Struct_1(4294967295u), 1i)), any(vec2<bool>(false, false))), vec4<bool>(all(vec2<bool>(false, false)), func_1(Struct_3(Struct_2(8027i, 4294967295u, Struct_1(22620u), Struct_1(1u), false), vec4<i32>(global0[_wgslsmith_index_u32(global2.a, 18u)], u_input.b, 0i, 20855i), vec3<f32>(510f, 239f, -1069f), Struct_1(global1.a), 14457i)).x, true, true))), all(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), true);
    var var_2 = func_2(_wgslsmith_mult_vec2_i32(u_input.a << ((~vec2<u32>(global1.a, global2.a) << ((vec2<u32>(9748u, 4294967295u) & vec2<u32>(4294967295u, global1.a)) % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.a));
    var var_3 = func_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -36374i), max(reverseBits(_wgslsmith_mod_vec2_i32(var_2.b.yx, u_input.a)), -vec2<i32>(var_2.b.x, var_2.b.x)), u_input.a)).a;
    let var_4 = func_2(vec2<i32>(~u_input.b, 1i));
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-876f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_2.c.x))))))), _wgslsmith_f_op_f32(-764f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_4.c.x, -1173f, var_3.e)) - _wgslsmith_f_op_f32(var_4.c.x - var_4.c.x))))), var_4.c.x, var_2.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(var_2.a.d.a, _wgslsmith_div_u32(var_4.d.a, 4294967295u), true));
}

