struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> f32 {
    var var_0 = true || !(!arg_0.x);
    var var_1 = arg_0.x;
    var_1 = false;
    var_0 = arg_0.x;
    var_0 = any(vec2<bool>(!(arg_0.x && arg_0.x), false));
    return 444f;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(func_3(!select(!(!vec3<bool>(arg_1.b.a.x, arg_1.b.a.x, arg_1.b.a.x)), vec3<bool>(u_input.a.x <= u_input.a.x, true, !arg_1.b.a.x), (arg_1.b.a.x && false) || true), Struct_3(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))), arg_0.x), ~(~arg_1.a)), Struct_3(countOneBits(_wgslsmith_div_i32(-1i, u_input.a.x) << (4294967295u % 32u)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, arg_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-531f, 1001f), arg_0))), vec2<bool>(!arg_1.b.a.x, all(vec4<bool>(true, true, arg_1.b.a.x, arg_1.b.a.x))))), ~u_input.d), Struct_3(reverseBits(abs(u_input.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0))), 38174u)));
    var var_1 = arg_1;
    var var_2 = Struct_1(var_1.b.a, -1000f);
    var_1 = arg_1;
    let var_3 = Struct_1(select(select(select(vec2<bool>(var_1.b.a.x, false), select(arg_1.b.a, var_1.b.a, var_2.a), !arg_1.b.a.x), !select(arg_1.b.a, var_1.b.a, false), !select(var_1.b.a, vec2<bool>(var_1.b.a.x, var_1.b.a.x), vec2<bool>(false, var_1.b.a.x))), vec2<bool>(any(select(vec4<bool>(var_2.a.x, false, true, var_2.a.x), vec4<bool>(var_2.a.x, arg_1.b.a.x, true, true), var_2.a.x)), any(!var_2.a)), var_2.a.x), arg_0.x);
    return arg_1.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<i32>, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = vec4<u32>(countOneBits(_wgslsmith_clamp_u32(u_input.b, ~func_2(arg_0, Struct_2(1u, Struct_1(vec2<bool>(false, true), 899f))), ~_wgslsmith_clamp_u32(72517u, 19211u, 56258u))), ~(u_input.d & 409u), 59158u, u_input.b);
    var var_1 = reverseBits(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, u_input.c.x), max(vec3<i32>(-1i, 23833i, -14707i), arg_3.wxy)), vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(0i, -2147483647i, 14085i), min(0i, u_input.a.x))) & firstLeadingBit(firstLeadingBit(vec3<i32>(17509i, 2147483647i, arg_2.x) & arg_3.zzz)));
    var_1 = -vec3<i32>(var_1.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(38131i, arg_2.x, -2147483647i), arg_3.xyz), vec3<i32>(_wgslsmith_mult_i32(arg_3.x, arg_2.x), abs(u_input.a.x), 1i)), arg_3.x);
    var var_2 = arg_1 >= 581f;
    var var_3 = vec2<bool>(true, any(select(vec3<bool>(true, false, arg_0.x == arg_0.x), vec3<bool>(true, true, true), false)));
    return Struct_2(1u, Struct_1(select(vec2<bool>(select(var_3.x, var_3.x, var_3.x), any(vec2<bool>(false, true))), !(!vec2<bool>(false, var_3.x)), !vec2<bool>(var_3.x, var_3.x)), -177f));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = select(arg_3 | abs(~firstLeadingBit(vec2<i32>(1i, arg_3.x))), -(vec2<i32>(-29185i, _wgslsmith_dot_vec2_i32(vec2<i32>(-13879i, arg_3.x), vec2<i32>(u_input.c.x, 0i))) >> (firstTrailingBit(~arg_2) % vec2<u32>(32u))), all(!arg_0.b.a));
    var var_1 = vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(2080i, arg_1.a), countOneBits(1i)), abs(-vec2<i32>(2147483647i, var_0.x))), var_0.x, arg_1.a);
    var var_2 = Struct_1(select(arg_0.b.a, arg_0.b.a, arg_0.b.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-623f - arg_1.b.x)))), 1000f)));
    var_2 = arg_0.b;
    let var_3 = func_1(vec2<f32>(-1924f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.b))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(func_1(vec2<f32>(arg_1.b.x, 485f), -265f, vec2<i32>(17406i, arg_3.x), vec4<i32>(1i, u_input.c.x, var_0.x, arg_3.x)).b.b)))), _wgslsmith_add_vec2_i32(-max(var_0, vec2<i32>(6481i, u_input.a.x)), -vec2<i32>(arg_1.a, -u_input.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-_wgslsmith_mod_i32(arg_1.a, -763i), -31803i ^ _wgslsmith_mult_i32(-1i, var_1.x), ~(i32(-1i) * -11100i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.x, -5414i) << (vec2<u32>(arg_0.a, u_input.e) % vec2<u32>(32u)), var_0)), select(vec4<i32>(reverseBits(arg_1.a), 17108i << (u_input.b % 32u), u_input.c.x, -4756i), vec4<i32>(firstLeadingBit(var_0.x), u_input.c.x, -2147483647i, -8922i), !var_2.a.x)));
    return Struct_3(arg_3.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(571f, 726f)) * arg_1.b), max(arg_0.a, func_2(arg_1.b, Struct_2(4294967295u, Struct_1(var_3.b.a, arg_0.b.b))) & 0u));
}

fn func_5(arg_0: Struct_3) -> u32 {
    var var_0 = ~u_input.b;
    var var_1 = !vec2<bool>((abs(11851u) | func_4(Struct_2(u_input.e, Struct_1(vec2<bool>(true, true), arg_0.b.x)), arg_0, vec2<u32>(1u, 39759u), u_input.a).c) <= arg_0.c, !((-1051f != arg_0.b.x) | select(false, true, false)));
    let var_2 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b * arg_0.b), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.x, arg_0.b.x), vec2<f32>(-1000f, 511f))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(1211f)), 421f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-910f, -792f)) + _wgslsmith_f_op_f32(f32(-1f) * -876f))), -879f)), vec2<i32>(0i & (arg_0.a >> (_wgslsmith_mod_u32(arg_0.c, arg_0.c) % 32u)), _wgslsmith_add_i32(20651i, (u_input.a.x >> (u_input.e % 32u)) >> ((0u >> (u_input.b % 32u)) % 32u))), vec4<i32>(func_4(Struct_2(1u, Struct_1(vec2<bool>(true, true), -1862f)), func_4(func_1(arg_0.b, arg_0.b.x, u_input.c, vec4<i32>(u_input.a.x, 18415i, -2147483647i, arg_0.a)), func_4(Struct_2(44611u, Struct_1(vec2<bool>(false, true), 1099f)), arg_0, vec2<u32>(0u, 29918u), u_input.c), ~vec2<u32>(u_input.b, u_input.e), vec2<i32>(arg_0.a, u_input.a.x)), firstLeadingBit(vec2<u32>(u_input.e, 14445u)), vec2<i32>(2147483647i << (u_input.d % 32u), arg_0.a | arg_0.a)).a, abs(2131i), _wgslsmith_clamp_i32(min(-2147483647i, u_input.c.x), -u_input.c.x, -_wgslsmith_mod_i32(u_input.a.x, 61603i)), u_input.c.x));
    let var_3 = var_2;
    let var_4 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-449f, var_3.b.b) * vec2<f32>(var_3.b.b, 709f))) + vec2<f32>(var_2.b.b, -678f))), var_3);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 46262u;
    var_0 = _wgslsmith_clamp_u32(~27761u, u_input.e & 24775u, ~u_input.e);
    var_0 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(~u_input.b | 4294967295u, 18321u, _wgslsmith_dot_vec2_u32(vec2<u32>(17744u, u_input.d), vec2<u32>(1588u, u_input.b)) << (~_wgslsmith_sub_u32(u_input.b, u_input.b) % 32u)), max(4294967295u, 0u));
    var var_1 = vec4<u32>(43620u << (1u % 32u), u_input.e, func_5(func_4(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1845f, -566f)), -2268f, u_input.a, reverseBits(vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, 2147483647i))), Struct_3(i32(-1i) * -1i, vec2<f32>(210f, 1446f), ~27521u), vec2<u32>(47374u >> (u_input.e % 32u), 0u), _wgslsmith_add_vec2_i32(u_input.a, min(u_input.c, vec2<i32>(u_input.c.x, -2147483647i))))), (min(firstTrailingBit(42616u), u_input.e) & 6041u) >> (((101461u << (func_1(vec2<f32>(113f, 376f), 1461f, u_input.c, vec4<i32>(u_input.c.x, u_input.a.x, u_input.a.x, u_input.a.x)).a % 32u)) >> (4294967295u % 32u)) % 32u));
    var_0 = ~46784u;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, var_1.x, ~vec4<u32>(abs(1u), 1u, 0u, ~func_1(vec2<f32>(1000f, -1354f), -551f, u_input.a, vec4<i32>(u_input.c.x, -2147483647i, 0i, -45460i)).a));
}

