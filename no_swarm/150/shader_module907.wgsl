struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<i32>(-1i, -37745i), 15482i, -20315i), Struct_1(vec2<i32>(-1i, 2147483647i), 17839i, -1i), Struct_1(vec2<i32>(0i, 0i), 0i, 2147483647i), Struct_1(vec2<i32>(10686i, 1i), 20817i, -9029i), Struct_1(vec2<i32>(-61789i, i32(-2147483648)), 10893i, 2147483647i), Struct_1(vec2<i32>(-1i, -50590i), -24809i, -18684i), Struct_1(vec2<i32>(-26994i, 7754i), -40794i, 6562i), Struct_1(vec2<i32>(9322i, 0i), 59147i, 0i), Struct_1(vec2<i32>(15670i, 0i), 0i, 0i), Struct_1(vec2<i32>(341i, 2147483647i), 21938i, -16152i), Struct_1(vec2<i32>(2147483647i, -7431i), i32(-2147483648), 1i), Struct_1(vec2<i32>(2147483647i, 16478i), -11438i, -1i), Struct_1(vec2<i32>(15383i, 18265i), -1i, 20141i), Struct_1(vec2<i32>(59667i, 0i), -1i, 1i), Struct_1(vec2<i32>(3607i, 21492i), 1i, i32(-2147483648)), Struct_1(vec2<i32>(-10457i, i32(-2147483648)), 2147483647i, 1i), Struct_1(vec2<i32>(-10991i, -10316i), -11276i, -69005i), Struct_1(vec2<i32>(-1i, -12271i), -20983i, -15104i), Struct_1(vec2<i32>(1i, 17414i), 2147483647i, 1i), Struct_1(vec2<i32>(19428i, 1i), i32(-2147483648), 1i), Struct_1(vec2<i32>(0i, 0i), i32(-2147483648), 55102i), Struct_1(vec2<i32>(0i, i32(-2147483648)), 0i, 1i), Struct_1(vec2<i32>(-32034i, -31027i), -1i, 8092i), Struct_1(vec2<i32>(0i, 1i), 2147483647i, 0i), Struct_1(vec2<i32>(39669i, 1i), 2147483647i, 1i), Struct_1(vec2<i32>(-33322i, -16115i), 21185i, 0i), Struct_1(vec2<i32>(13730i, -17237i), -24007i, 28359i), Struct_1(vec2<i32>(35662i, 39044i), 0i, 16995i), Struct_1(vec2<i32>(18637i, -52569i), 2147483647i, 49086i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_3) -> u32 {
    var var_0 = !arg_1.zy;
    var var_1 = -363f;
    let var_2 = arg_0;
    var_0 = vec2<bool>(arg_1.x, any(!(!vec4<bool>(true, var_0.x, var_0.x, var_0.x))));
    let var_3 = Struct_4(u_input.c);
    return _wgslsmith_clamp_u32(arg_3.a, _wgslsmith_sub_u32(_wgslsmith_div_u32(~var_3.a, 1u), countOneBits(abs(u_input.b.x))), 0u);
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.d << (u_input.b.x % 32u), _wgslsmith_mult_i32(0i, 11552i)), vec2<i32>(u_input.d, ~u_input.d));
    var var_1 = 4279i;
    let var_2 = 58969i;
    let var_3 = global0[_wgslsmith_index_u32(max(func_3(Struct_2(Struct_1(-u_input.a, u_input.d, var_0.x), Struct_1(u_input.a, u_input.a.x, var_2), vec4<i32>(2147483647i, -1i, var_0.x, var_0.x), global0[_wgslsmith_index_u32(u_input.b.x >> ((0u >> (1u % 32u)) % 32u), 29u)]), !vec4<bool>(true, true, true, any(vec2<bool>(true, true))), (_wgslsmith_mod_i32(u_input.d, -13081i) >> (_wgslsmith_add_u32(0u, u_input.b.x) % 32u)) << (u_input.c % 32u), Struct_3(~0u)), u_input.c), 29u)];
    var var_4 = -990f;
    return Struct_4(abs(0u) >> (_wgslsmith_dot_vec2_u32(max(_wgslsmith_mult_vec2_u32(u_input.b.xx, vec2<u32>(u_input.c, u_input.b.x)), ~u_input.b.yw), vec2<u32>(48020u, ~4294967295u)) % 32u));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_4) -> Struct_3 {
    var var_0 = func_2();
    var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-646f, 1463f, -2163f, -2299f) * vec4<f32>(-125f, 1138f, 400f, -1639f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 943f, -1207f, -1000f)))))));
    let var_2 = vec3<i32>(-1i, ~(~_wgslsmith_sub_i32(1i, -11324i) & (_wgslsmith_div_i32(-1i, u_input.d) << (1u % 32u))), -42159i);
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(496f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(var_1.x))))))));
    return Struct_3(4294967295u);
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    let var_0 = Struct_4(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 1u), ~vec2<u32>(u_input.c, 1u)) | (~(~0u) << (u_input.b.x % 32u)));
    var var_1 = var_0;
    var var_2 = func_4(max(4294967295u, var_0.a), _wgslsmith_clamp_i32(u_input.d, 1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(33387i, 1i), vec2<i32>(u_input.a.x, 2147483647i)) & min(abs(u_input.d), u_input.a.x)), func_2());
    let var_3 = arg_0.zz;
    var var_4 = true != arg_0.x;
    return u_input.a.x;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>) -> u32 {
    global0 = array<Struct_1, 29>();
    return min(u_input.b.x, ~38524u);
}

fn func_6(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<i32>) -> Struct_4 {
    let var_0 = global0[_wgslsmith_index_u32(~(4294967295u << (u_input.b.x % 32u)), 29u)];
    let var_1 = Struct_4(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c & 53268u, arg_0), vec2<u32>(u_input.c, 4294967295u) | vec2<u32>(1u, 46640u)));
    global0 = array<Struct_1, 29>();
    let var_2 = vec2<bool>(true, true);
    let var_3 = Struct_4(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_1, vec2<u32>(37571u, u_input.b.x) << (arg_1 % vec2<u32>(32u))), ~vec2<u32>(7650u, 764u) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 38288u), arg_1)), _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(62114u, 18818u, var_1.a, arg_0), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, u_input.c, u_input.c), u_input.b)))));
    return Struct_4(~(~arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.zxz;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1797f);
    let var_2 = vec2<bool>(true && any(vec4<bool>(true, true, true, true)), false);
    global0 = array<Struct_1, 29>();
    var var_3 = Struct_4(1u >> (~u_input.b.x % 32u));
    var_3 = func_6(func_5(Struct_2(Struct_1(u_input.a, -20290i, _wgslsmith_mod_i32(-5959i, u_input.d)), Struct_1(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-8285i, 13338i, u_input.a.x), vec3<i32>(-48489i, -35452i, -2147483647i)), func_1(vec4<bool>(true, var_2.x, var_2.x, true))), (vec4<i32>(u_input.d, 7868i, -2147483647i, 7278i) >> (u_input.b % vec4<u32>(32u))) | (vec4<i32>(u_input.a.x, u_input.d, -70991i, u_input.a.x) & vec4<i32>(900i, 2147483647i, -28620i, u_input.d)), Struct_1(u_input.a, _wgslsmith_sub_i32(u_input.a.x, -2147483647i), u_input.d << (0u % 32u))), abs(vec2<i32>(u_input.d, -1i))), vec2<u32>(0u, 7622u), -u_input.a);
    let var_4 = func_4(u_input.c, 0i, Struct_4(u_input.c));
    global0 = array<Struct_1, 29>();
    var_3 = Struct_4(reverseBits(abs(~1u) & ~var_4.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_add_i32(-1i, func_1(vec4<bool>(var_2.x, true, var_2.x, false))), ~(-max(47968i, u_input.d)), _wgslsmith_div_i32(41653i, ~(-u_input.a.x)), -11445i), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -1494f, 777f, 1000f))), vec4<f32>(_wgslsmith_div_f32(-1254f, -177f), _wgslsmith_f_op_f32(f32(-1f) * -883f), -890f, -2068f))))));
}

