struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 19871u, 40736u, 49431u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: u32) -> u32 {
    let var_0 = Struct_1(~5104u, 1i >> (_wgslsmith_add_u32(firstLeadingBit(~14954u), ~(arg_2 >> (65921u % 32u))) % 32u), select(vec2<bool>(true, _wgslsmith_div_f32(1531f, arg_1) < arg_1), arg_0.yx, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-12147i, u_input.c.x, -8485i)), vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i)) == -34846i));
    global1 = countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, ~u_input.a.x, reverseBits(var_0.a), arg_2), firstLeadingBit(vec4<u32>(arg_2, var_0.a, 22211u, 83522u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, u_input.a.x, 1u, arg_2), vec4<u32>(0u, global1.x, 26477u, global1.x)))) << (vec4<u32>(~firstLeadingBit(14407u), ~u_input.b.x, u_input.a.x, select(9341u, min(~781u, ~43904u), all(vec3<bool>(arg_0.x, var_0.c.x, var_0.c.x)))) % vec4<u32>(32u));
    var var_1 = var_0;
    var var_2 = var_0;
    var var_3 = vec2<i32>(-min(max(~var_1.b, var_0.b), firstTrailingBit(-18026i)), _wgslsmith_add_i32(~48530i | -_wgslsmith_mult_i32(var_1.b, 2147483647i), -15900i));
    return _wgslsmith_clamp_u32(min(4294967295u, 54299u), max(_wgslsmith_dot_vec4_u32(~vec4<u32>(64371u, global1.x, var_1.a, 4294967295u), select(vec4<u32>(1u, var_0.a, var_1.a, 4294967295u), vec4<u32>(0u, var_0.a, var_2.a, 4294967295u), var_2.c.x)) & 1u, abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 110830u), global1.yw))), countOneBits(~(~(var_0.a & 30394u))));
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    var var_0 = Struct_1(~(~(global1.x & 18092u)) ^ ~(~abs(global1.x)), -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 9945i, u_input.c.x, u_input.c.x) >> (vec4<u32>(u_input.a.x, 0u, u_input.a.x, global1.x) % vec4<u32>(32u)), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) ^ vec4<i32>(-2147483647i, 9170i, u_input.c.x, 2147483647i)), min(_wgslsmith_mod_i32(-2147483647i, u_input.c.x), _wgslsmith_add_i32(u_input.c.x, 2147483647i))), arg_0.zx);
    global0 = array<Struct_2, 8>();
    global1 = vec4<u32>(0u, _wgslsmith_mult_u32(44289u, ~global1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_mult_u32(func_3(vec4<bool>(false, var_0.c.x, true, false), 1000f, u_input.a.x), reverseBits(u_input.a.x)), var_0.a), vec3<u32>(~(~12397u), ~u_input.a.x >> ((var_0.a << (u_input.b.x % 32u)) % 32u), 4294967295u)), 58288u);
    var var_1 = Struct_1(global1.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(u_input.c.x >> (1u % 32u), ~(-16792i)), u_input.c), vec2<i32>(_wgslsmith_add_i32(1i, 1i), _wgslsmith_mod_i32(-1i, var_0.b) ^ (i32(-1i) * -19924i))), var_0.c);
    let var_2 = _wgslsmith_div_u32(~select(19193u, max(109017u, 4294967295u), u_input.c.x > 0i) ^ min(firstTrailingBit(u_input.b.x) >> (23618u % 32u), 43613u), var_0.a);
    return 201f;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> f32 {
    global0 = array<Struct_2, 8>();
    var var_0 = u_input.c.x;
    let var_1 = _wgslsmith_f_op_f32(func_2(select(select(vec3<bool>(true, arg_1.c.x, arg_1.c.x), select(vec3<bool>(true, arg_1.c.x, arg_1.c.x), vec3<bool>(arg_1.c.x, false, arg_1.c.x), vec3<bool>(arg_1.c.x, true, true)), select(vec3<bool>(arg_1.c.x, false, arg_1.c.x), vec3<bool>(false, arg_1.c.x, arg_1.c.x), vec3<bool>(arg_1.c.x, true, false))), !(!vec3<bool>(arg_1.c.x, arg_1.c.x, true)), select(vec3<bool>(true, true, true), vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x), true)))) <= _wgslsmith_f_op_f32(func_2(select(select(select(vec3<bool>(arg_1.c.x, true, arg_1.c.x), vec3<bool>(false, arg_1.c.x, true), arg_1.c.x), vec3<bool>(arg_1.c.x, arg_1.c.x, true), vec3<bool>(true, arg_1.c.x, arg_1.c.x)), vec3<bool>(true, arg_1.c.x, true), vec3<bool>(arg_1.c.x, !arg_1.c.x, false))));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-3149f + _wgslsmith_f_op_f32(-1206f - arg_0.x))));
    let var_3 = arg_1;
    return _wgslsmith_f_op_f32(-arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.x, ~(-2147483647i), vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), (~global1.x <= global1.x) & true));
    let var_1 = var_0.b;
    var var_2 = !vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(461f + 418f) - _wgslsmith_f_op_f32(-130f + 1077f)) < _wgslsmith_f_op_f32(min(-236f, _wgslsmith_f_op_f32(func_1(vec3<f32>(-1142f, -700f, -310f), var_0)))), var_0.c.x, var_0.c.x);
    global1 = _wgslsmith_div_vec4_u32(vec4<u32>(14276u, u_input.a.x, 52281u, abs(u_input.b.x)), ~(~vec4<u32>(global1.x, u_input.a.x, 1u, global1.x)) | select(reverseBits(vec4<u32>(global1.x, global1.x, 76941u, 70181u) & vec4<u32>(var_0.a, u_input.b.x, 27558u, u_input.b.x)), vec4<u32>(global1.x | 4294967295u, u_input.b.x, 0u, ~u_input.b.x), false));
    let var_3 = (-min(~0i, var_0.b) << (70616u % 32u)) & -11924i;
    var var_4 = ~_wgslsmith_add_vec4_i32(-(~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_3, 1i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, var_3, -2147483647i))), (vec4<i32>(0i, 1i, 0i, 27331i) ^ -vec4<i32>(u_input.c.x, -1i, var_1, 12462i)) << (~(vec4<u32>(global1.x, 49915u, var_0.a, var_0.a) << (vec4<u32>(var_0.a, 2495u, var_0.a, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_5 = var_0;
    var var_6 = -u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_vec2_u32(max(u_input.b, vec2<u32>(u_input.a.x, 34586u)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 41431u), vec2<u32>(var_5.a, var_0.a)))), ~var_4.yyy);
}

