struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_1, 10>;

var<private> global2: vec2<i32> = vec2<i32>(-5782i, -30598i);

var<private> global3: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_4 {
    let var_0 = ~_wgslsmith_mult_u32(reverseBits(4294967295u), ~u_input.a.x);
    global2 = vec2<i32>(global2.x, (global2.x >> (10383u % 32u)) ^ -2147483647i);
    return Struct_4(_wgslsmith_div_u32(54614u << (_wgslsmith_div_u32(firstLeadingBit(0u), _wgslsmith_sub_u32(var_0, 9179u)) % 32u), ~var_0));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = Struct_2(~abs((vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_0.a) ^ vec4<u32>(4294967295u, u_input.a.x, arg_1.c, 6350u)) ^ (vec4<u32>(u_input.a.x, arg_1.c, 4294967295u, arg_1.c) & vec4<u32>(1u, arg_0.a, u_input.b.x, 4294967295u))), -vec2<i32>(-global0.x ^ u_input.c.x, _wgslsmith_add_i32(global0.x, global0.x) ^ firstTrailingBit(u_input.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(arg_1.d + _wgslsmith_f_op_f32(-arg_1.d))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1166f) * vec2<f32>(arg_1.d, 770f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c + vec2<f32>(133f, -481f)));
    global2 = -vec2<i32>(-var_0.b.x, u_input.d) >> (select(_wgslsmith_div_vec2_u32(countOneBits(reverseBits(var_0.a.wy)), _wgslsmith_mult_vec2_u32(vec2<u32>(4048u, 1u), var_0.a.xw) & u_input.b), _wgslsmith_mult_vec2_u32(var_0.a.wx, abs(vec2<u32>(1u, arg_0.a))), select(!select(vec2<bool>(false, arg_1.a), vec2<bool>(arg_1.a, arg_1.b), vec2<bool>(false, arg_1.b)), select(vec2<bool>(arg_1.a, false), vec2<bool>(false, arg_1.b), false), !(!arg_1.b))) % vec2<u32>(32u));
    global1 = array<Struct_1, 10>();
    global0 = vec3<i32>(-1i, u_input.c.x, 18914i);
    return -(~var_0.b);
}

fn func_1() -> Struct_4 {
    global1 = array<Struct_1, 10>();
    global2 = select(~(-global0.yy), func_3(func_2(), global1[_wgslsmith_index_u32(28162u, 10u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -473f))) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(161f, -735f)))))));
    var var_0 = global0.x;
    var var_1 = Struct_2(vec4<u32>(_wgslsmith_add_u32(1u, countOneBits(1u)), 1u, ~1u, 1u), u_input.c.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1294f, -983f))))))));
    var var_2 = func_2();
    return func_2();
}

fn func_4(arg_0: Struct_4) -> bool {
    var var_0 = -2044f;
    global0 = u_input.c;
    var var_1 = arg_0;
    global2 = global0.xx;
    global2 = vec2<i32>(-(global0.x | -42083i), 1i);
    return select(select(false, false, any(select(vec2<bool>(true, true), vec2<bool>(false, true), false))), true && (all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))) & any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = func_4(func_1());
    var var_2 = vec3<bool>(false, select(true, _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 21936u, 14171u, u_input.b.x), vec4<u32>(u_input.a.x, 7374u, 0u, u_input.a.x), vec4<bool>(var_1, true, var_1, var_1)), vec4<u32>(1523u, 1u, u_input.b.x, 21999u)) >= u_input.b.x, var_1), all(!(!(!vec2<bool>(true, var_1)))));
    let var_3 = u_input.a;
    let var_4 = Struct_4(~((1u & firstTrailingBit(u_input.b.x)) >> (0u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(2147483647i, -41149i, 1i, 23550i)), select(vec4<i32>(global2.x, 2147483647i, u_input.d, global2.x), vec4<i32>(26003i, -15756i, global0.x, global0.x), vec4<bool>(true, var_1, true, false))), -(vec4<i32>(global2.x, 31601i, -1i, global0.x) << (vec4<u32>(var_4.a, var_3.x, u_input.b.x, 25440u) % vec4<u32>(32u)))), vec4<i32>(1i, 14514i, -2147483647i, _wgslsmith_mod_i32(i32(-1i) * -23344i, select(19316i, 18712i, true))), ~(-(vec4<i32>(u_input.c.x, 1i, -19834i, u_input.c.x) >> (vec4<u32>(1u, 1u, var_3.x, var_3.x) % vec4<u32>(32u))))), _wgslsmith_dot_vec2_u32(~reverseBits(~var_3.zz), var_3.xz), global2.x << (_wgslsmith_mod_u32(abs(~u_input.a.x), u_input.b.x) % 32u));
}

