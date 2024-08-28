struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<bool>,
    e: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global1: Struct_4;

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> Struct_1 {
    let var_0 = ~_wgslsmith_mult_vec4_i32(-reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.c.a, 39007i, -2147483647i, 1i), vec4<i32>(global1.a.a, global1.c.a, -7947i, -9327i), vec4<i32>(-3529i, global1.c.a, global1.a.a, global1.c.a))), vec4<i32>(global1.a.a, 1576i, ~_wgslsmith_clamp_i32(global1.c.a, global1.c.a, -1i), firstTrailingBit(global1.c.a) >> (44154u % 32u)));
    var var_1 = -970f;
    let var_2 = vec4<bool>(global1.d.x, global1.d.x, true, true);
    var var_3 = false;
    var var_4 = Struct_2(Struct_1(i32(-1i) * -5729i, -726f), global1.a.b, -global1.c.a);
    return Struct_1(global1.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.b)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_4.a.b, _wgslsmith_f_op_f32(-352f - 1723f), true)), global1.c.b))));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> i32 {
    return min(-2147483647i, abs(-_wgslsmith_sub_i32(1i, -1i)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = abs(countOneBits(4294967295u));
    var var_1 = Struct_5(Struct_3(Struct_1(~_wgslsmith_sub_i32(4031i, 25660i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(696f, arg_1.b)))), Struct_3(func_1()));
    global0 = array<vec2<bool>, 5>();
    let var_2 = Struct_5(var_1.a, Struct_3(var_1.a.a));
    let var_3 = global1.e;
    return var_1.a.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_5(Struct_3(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - arg_1.a.b) * _wgslsmith_f_op_f32(-278f + 391f)), func_1(), vec2<i32>(arg_1.a.a, func_3(arg_1.a.b, vec3<f32>(arg_1.a.b, 969f, 333f))))), Struct_3(Struct_1(i32(-1i) * -1i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_2.a.b)))))));
    global1 = Struct_4(Struct_1(7217i, 944f), ~vec3<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a)), (1u >> (u_input.a.x % 32u)) | ~arg_3, global1.e), func_1(), global1.d, 1u);
    let var_1 = var_0;
    let var_2 = func_1();
    global2 = global1.b.x;
    return func_4(var_1.b.a.b, var_2, abs(firstTrailingBit(arg_0.xz ^ arg_0.xy)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 5>();
    let var_0 = Struct_3(func_2(~vec3<i32>(~global1.a.a, -global1.a.a, max(3121i, global1.a.a)), Struct_3(func_1()), Struct_3(Struct_1(global1.a.a, -1054f)), 101405u));
    var var_1 = global1.c;
    global1 = Struct_4(func_4(_wgslsmith_f_op_f32(-267f * -298f), func_4(global1.c.b, Struct_1(global1.a.a ^ 2147483647i, var_1.b), vec2<i32>(abs(-1i), -var_1.a)), abs(firstLeadingBit(select(vec2<i32>(43335i, -16060i), vec2<i32>(0i, global1.c.a), global1.d.x)))), global1.b, Struct_1(20621i, _wgslsmith_f_op_f32(-var_1.b)), vec3<bool>(any(vec3<bool>(!global1.d.x, true, true)), true, all(!select(vec2<bool>(global1.d.x, global1.d.x), vec2<bool>(global1.d.x, global1.d.x), vec2<bool>(true, false)))), 20575u);
    global1 = Struct_4(Struct_1(func_2(select(~vec3<i32>(var_0.a.a, var_0.a.a, 0i), vec3<i32>(6007i, var_0.a.a, 0i), all(global1.d)), var_0, Struct_3(Struct_1(var_1.a, var_0.a.b)), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)).a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(272f))), _wgslsmith_f_op_f32(select(-1420f, global1.c.b, any(vec3<bool>(true, false, global1.d.x))))))), vec3<u32>(_wgslsmith_div_u32(global1.b.x, u_input.a.x), ~firstTrailingBit(1u), ~0u & _wgslsmith_clamp_u32(u_input.a.x, 1u, global1.e)) >> (vec3<u32>(5089u, ~max(17502u, global1.b.x), ~(u_input.a.x ^ 4025u)) % vec3<u32>(32u)), Struct_1(i32(-1i) * -(~var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b)))), global1.d, 35235u);
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a.b)) + 832f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b)) + -834f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.b, global1.c.b, -581f) * vec3<f32>(-471f, global1.c.b, global1.a.b)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1500f, 1209f, var_0.a.b)) * vec3<f32>(-618f, -1768f, var_2)))), u_input.a.x);
}

