struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 9>;

var<private> global1: vec3<f32> = vec3<f32>(244f, 137f, -450f);

var<private> global2: array<Struct_3, 1>;

var<private> global3: array<vec3<f32>, 31>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = 14546i <= arg_0.d;
    let var_1 = global0[_wgslsmith_index_u32(arg_0.c, 9u)];
    var var_2 = vec4<u32>(~(~(1u ^ ~arg_0.c)), 129687u >> (~arg_0.c % 32u), 1u, arg_0.a.c);
    let var_3 = select(firstTrailingBit(var_2.yyw), (vec3<u32>(countOneBits(var_2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 10373u, 74058u), vec3<u32>(4294967295u, u_input.a.x, 4294967295u)), _wgslsmith_mult_u32(33634u, arg_0.a.c)) >> (var_2.wxx % vec3<u32>(32u))) << ((vec3<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_2.x, var_1.x, 44735u), vec4<u32>(72939u, 4294967295u, var_1.x, 44911u)), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(26761u, 1u))) | ~var_2.yxx) % vec3<u32>(32u)), vec3<bool>(false, false, arg_0.a.b.x || !any(vec4<bool>(arg_0.a.b.x, arg_0.b, arg_0.b, true))));
    var var_4 = arg_0.b;
    return arg_0.b;
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    global2 = array<Struct_3, 1>();
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1233f), _wgslsmith_f_op_f32(arg_0.b.a.a.x - global1.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.b.a.a.x, 1693f, arg_0.b.a.a.x))))), func_3(arg_0.b))));
    var var_0 = 0i;
    global1 = arg_0.b.a.a.xxx;
    let var_1 = vec2<i32>(arg_0.b.d, 2147483647i);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(arg_0.b.a.a)))), select(select(vec3<bool>(false, arg_0.b.b, arg_0.a), select(vec3<bool>(arg_0.a, arg_0.a, true), arg_0.b.a.b, vec3<bool>(arg_0.b.b, arg_0.b.a.b.x, true)), func_3(arg_0.b)), arg_0.b.a.b, arg_0.b.a.b), ~arg_0.c), true, select(arg_0.c, _wgslsmith_clamp_u32(arg_0.c, 1u, ~14206u), any(vec2<bool>(false, arg_0.a))), firstLeadingBit(firstLeadingBit(var_1.x)));
}

fn func_4(arg_0: Struct_2) -> u32 {
    global2 = array<Struct_3, 1>();
    global3 = array<vec3<f32>, 31>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1605f, -448f, global1.x, global1.x))) - _wgslsmith_f_op_vec4_f32(-arg_0.a.a)) + _wgslsmith_div_vec4_f32(arg_0.a.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a.x, global1.x, arg_0.a.a.x, global1.x) - arg_0.a.a))), vec3<bool>(arg_0.b, true, !(!arg_0.b)), min(~u_input.a.x, u_input.a.x)), arg_0.b, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.c, 71643u) << (~vec2<u32>(arg_0.a.c, u_input.a.x) % vec2<u32>(32u)), firstLeadingBit(min(global0[_wgslsmith_index_u32(4294967295u, 9u)], vec2<u32>(13669u, 18571u)))), abs(~select(u_input.a.x, 20592u, arg_0.b))), (i32(-1i) * -arg_0.d) >> (arg_0.c % 32u));
    let var_1 = 1336f;
    var var_2 = func_2(global2[_wgslsmith_index_u32(40894u ^ var_0.c, 1u)]);
    return 52346u;
}

fn func_1() -> StorageBuffer {
    let var_0 = ~(~vec4<u32>(min(u_input.a.x, 4294967295u), u_input.a.x, u_input.a.x, 13202u) ^ countOneBits(~(~vec4<u32>(u_input.a.x, 1u, 9355u, 0u))));
    var var_1 = ~_wgslsmith_mod_u32(0u, ~(~_wgslsmith_add_u32(4294967295u, var_0.x)));
    var var_2 = Struct_3(!(u_input.a.x > func_4(func_2(Struct_3(false, Struct_2(Struct_1(vec4<f32>(-551f, -723f, 292f, -1032f), vec3<bool>(false, false, true), 35920u), true, 42521u, 0i), 0u)))), Struct_2(func_2(global2[_wgslsmith_index_u32(var_0.x, 1u)]).a, true, var_0.x, func_2(global2[_wgslsmith_index_u32(~var_0.x, 1u)]).d), min(u_input.a.x, u_input.a.x));
    var var_3 = global2[_wgslsmith_index_u32(~0u, 1u)];
    var var_4 = reverseBits((-vec4<i32>(var_3.b.d, var_2.b.d, var_2.b.d, var_2.b.d) & _wgslsmith_mult_vec4_i32(vec4<i32>(-9556i, 8641i, 43331i, 12630i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -2147483647i, var_3.b.d, var_3.b.d), vec4<i32>(-2147483647i, 0i, -11172i, 2147483647i)))) | (vec4<i32>(max(-22019i, var_2.b.d), 16532i, var_2.b.d, -1803i << (var_2.b.c % 32u)) ^ ~(vec4<i32>(var_3.b.d, var_2.b.d, var_2.b.d, -11307i) | vec4<i32>(var_3.b.d, var_3.b.d, -15835i, var_3.b.d))));
    return StorageBuffer(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), func_2(Struct_3(var_3.b.b, var_2.b, var_0.x)).a.a.x, var_3.c <= var_3.b.a.c))), -(~(var_4.x & var_3.b.d)) | var_2.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -546f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a.a.x))))), var_2.b.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

