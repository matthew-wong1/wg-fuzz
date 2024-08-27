struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(24291i, -1i), vec2<i32>(27802i, 29874i), vec2<i32>(15034i, 0i), vec2<i32>(-19089i, -15180i), vec2<i32>(-10367i, 53056i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-487i, 38673i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(36846i, 2147483647i), vec2<i32>(-12440i, 0i), vec2<i32>(-23075i, -10397i), vec2<i32>(22109i, 4114i), vec2<i32>(20439i, -67343i), vec2<i32>(-9912i, -1i));

var<private> global1: bool;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<f32>(802f, 197f)), Struct_1(vec2<f32>(-1000f, -515f)), Struct_1(vec2<f32>(-242f, 1324f)), vec3<f32>(-1000f, -1929f, 275f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> f32 {
    global2 = _wgslsmith_clamp_i32(abs(1i), -43777i, ~(~(-countOneBits(2147483647i))));
    global0 = array<vec2<i32>, 15>();
    var var_0 = global3.a;
    let var_1 = -116f;
    let var_2 = global3.d;
    return _wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(abs(-2263f))));
}

fn func_2(arg_0: Struct_3) -> vec4<u32> {
    global2 = arg_0.c;
    var var_0 = true;
    global2 = _wgslsmith_div_i32(-21445i, -39923i);
    var var_1 = ~arg_0.c;
    var var_2 = firstTrailingBit(firstTrailingBit(abs(select(firstLeadingBit(u_input.b.zx), vec2<u32>(0u, u_input.b.x) & vec2<u32>(arg_0.b, u_input.c.x), true))));
    return firstLeadingBit(abs(vec4<u32>(arg_0.b, ~u_input.b.x, 1u, 41689u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_2 {
    global1 = !(-2147483647i != firstTrailingBit(abs(15102i)));
    var var_0 = Struct_2(arg_0, Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, 525f))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1155f, -381f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.c.a.x, -926f)))) + vec2<f32>(global3.a.a.x, _wgslsmith_f_op_f32(-1797f + -1424f)))), global3.d);
    global0 = array<vec2<i32>, 15>();
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global3.d.yx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(355f, global3.a.a.x))), true))), global3.c, Struct_1(arg_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d + _wgslsmith_f_op_vec3_f32(vec3<f32>(-616f, 501f, var_0.a.a.x) * vec3<f32>(arg_0.a.x, -797f, -2370f)))));
    let var_1 = 0i ^ _wgslsmith_mod_i32(-_wgslsmith_mod_i32(1i, -13754i << (arg_1.x % 32u)), max(-2147483647i << (_wgslsmith_div_u32(34625u, 4294967295u) % 32u), _wgslsmith_div_i32(-465i, firstLeadingBit(827i))));
    return Struct_2(arg_0, Struct_1(arg_0.a), Struct_1(_wgslsmith_f_op_vec2_f32(global3.b.a * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(586f, 821f), arg_0.a)))))), var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<i32>(1i << (0u % 32u), 1i, -2147483647i, _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(11198i, 20719i, 47943i), vec3<i32>(2147483647i, -2147483647i, 1i)), ~vec3<i32>(17948i, 6061i, 2147483647i)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.a.x - _wgslsmith_f_op_f32(func_1())) * global3.c.a.x)));
    let var_2 = Struct_3(max((countOneBits(var_0.x) & _wgslsmith_mod_i32(var_0.x, var_0.x)) | var_0.x, 30698i), u_input.b.x, select(firstLeadingBit(var_0.x), var_0.x, true) >> (1u % 32u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(global3.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-319f, global3.a.a.x, global3.b.a.x)) + vec3<f32>(global3.b.a.x, global3.a.a.x, -1441f)))))));
    var var_3 = global3.b;
    global3 = func_3(Struct_1(var_2.d.yx), _wgslsmith_mod_vec4_u32(select(~(~vec4<u32>(9883u, 35002u, 18337u, 22127u)), ~vec4<u32>(u_input.c.x, var_2.b, 49004u, u_input.b.x), true), ~func_2(Struct_3(0i, 28156u, -2147483647i, global3.d))));
    let var_4 = global0[_wgslsmith_index_u32(44416u, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_div_i32(41536i, _wgslsmith_sub_i32(-20047i, var_0.x)), countOneBits(4316i)), -26875i, abs(~(-52419i)), func_3(global3.c, _wgslsmith_clamp_vec4_u32(min(vec4<u32>(4294967295u, 96833u, u_input.c.x, 0u), vec4<u32>(4294967295u, var_2.b, 1u, 25446u)) >> (vec4<u32>(u_input.a.x, u_input.c.x, var_2.b, var_2.b) % vec4<u32>(32u)), ~vec4<u32>(17640u, 1u, var_2.b, u_input.a.x), vec4<u32>(firstLeadingBit(var_2.b), 19964u, firstTrailingBit(var_2.b), select(0u, var_2.b, false)))).b.a.x);
}

