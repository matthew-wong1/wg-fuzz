struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 17996u, 0u);

var<private> global1: f32 = 886f;

var<private> global2: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(0i, 34636i, 1i), vec3<i32>(44699i, 4545i, 48747i), vec3<i32>(1i, i32(-2147483648), 0i), vec3<i32>(-1i, -1i, -14120i), vec3<i32>(-14798i, 2147483647i, 0i), vec3<i32>(2147483647i, -20000i, 42717i), vec3<i32>(0i, 56384i, -19144i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), -39910i, 3757i), vec3<i32>(42715i, 0i, -1i), vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(1i, -42483i, 44432i), vec3<i32>(-1i, -9002i, -38503i), vec3<i32>(-1i, 32984i, i32(-2147483648)), vec3<i32>(-43663i, 0i, 16992i), vec3<i32>(-36651i, 103882i, -386i));

var<private> global3: array<Struct_2, 7>;

var<private> global4: array<Struct_2, 8>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    var var_0 = ~countOneBits(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(global0.x, 0u, u_input.a)), ~vec3<u32>(1u, 19948u, global0.x)));
    global2 = array<vec3<i32>, 16>();
    let var_1 = ~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(select(1435i, arg_0.x, true), 1i, arg_0.x | arg_0.x, ~arg_0.x), ~vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, ~(-2147483647i), -10180i, abs(arg_0.x)), vec4<i32>(-45i, 8313i, _wgslsmith_add_i32(0i, 2147483647i), -2147483647i)));
    var var_2 = global4[_wgslsmith_index_u32(u_input.a, 8u)];
    global3 = array<Struct_2, 7>();
    return -558f;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> Struct_1 {
    var var_0 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(0i, 58678i)), firstTrailingBit(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(2147483647i, 29236i)))), vec2<i32>(_wgslsmith_mult_i32(-23864i, _wgslsmith_mod_i32(31749i, -19129i)), ~(-24143i)));
    return Struct_1(_wgslsmith_div_vec2_u32(arg_0.zw, global0.yz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))), 480f, vec2<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), any(vec4<bool>(true, true, 46926u != global0.x, arg_0.x <= global0.x))), -reverseBits(_wgslsmith_sub_vec2_i32(~vec2<i32>(-2147483647i, var_0.x), vec2<i32>(var_0.x, var_0.x) & vec2<i32>(0i, var_0.x))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(~reverseBits(36652u)), 96288u), abs(~(~_wgslsmith_add_vec2_u32(arg_3.a, vec2<u32>(arg_2.a.x, 0u)))));
    global4 = array<Struct_2, 8>();
    var var_1 = select(vec2<bool>(!select(all(arg_1.d), arg_3.d.x, all(arg_1.d)), arg_2.d.x), !arg_2.d, arg_1.d.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, _wgslsmith_f_op_f32(-arg_3.c), 263f, _wgslsmith_f_op_f32(-1000f * arg_2.b)) + vec4<f32>(_wgslsmith_f_op_f32(-arg_2.c), arg_3.b, arg_3.b, -208f));
    let var_3 = Struct_2(vec3<u32>(~(~(~408u)), _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_1.a.x, _wgslsmith_add_u32(6528u, global0.x)), arg_1.c), 4294967295u), arg_1.c, 4294967295u, vec4<bool>(arg_2.d.x, arg_1.d.x, arg_1.d.x, true));
    return _wgslsmith_f_op_f32(arg_3.c * -853f);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 8>();
    let var_0 = Struct_1(select(firstTrailingBit(select(global0.yx, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, global0.x), global0.yx), true)), ~(~global0.xx), !select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), false), u_input.a > u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<i32>(-1i, 0i, 1i, -27638i)))), 1f, _wgslsmith_mult_u32(4294967295u, global0.x) != (global0.x << (u_input.a % 32u))))), _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(u_input.a, 16u)], Struct_2(vec3<u32>(u_input.a, 1u & global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 7431u, 15480u), vec3<u32>(0u, global0.x, 66877u))), 23422u, ~_wgslsmith_dot_vec2_u32(global0.xy, vec2<u32>(4294967295u, 6057u)), vec4<bool>(true, true, true, true)), Struct_1(vec2<u32>(global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, 6770u), vec3<u32>(14472u, global0.x, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(467f - -1679f)), -1000f, select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), all(vec4<bool>(false, true, false, true))), vec2<i32>(i32(-1i) * -2147483647i, ~(-45640i))), func_2(~vec4<u32>(u_input.a, 22821u, 4294967295u, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-180f - -741f) * _wgslsmith_f_op_f32(ceil(1317f)))))), vec2<bool>(false | (false & select(false, false, false)), func_2(vec4<u32>(u_input.a, 0u, 0u, global0.x), -771f).a.x == ~_wgslsmith_mod_u32(global0.x, u_input.a)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-_wgslsmith_add_i32(0i, 28758i), (i32(-1i) * -19698i) << ((global0.x >> (u_input.a % 32u)) % 32u)), -reverseBits(vec2<i32>(-35045i, -1i)), vec2<i32>(1i, firstTrailingBit(-11533i) >> (1u % 32u))));
    let var_1 = global3[_wgslsmith_index_u32(countOneBits(u_input.a), 7u)];
    var var_2 = _wgslsmith_f_op_f32(step(-488f, _wgslsmith_f_op_f32(f32(-1f) * -268f)));
    var var_3 = var_0.a.x;
    let var_4 = ~firstTrailingBit(var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(2147483647i >> (var_1.b % 32u)), _wgslsmith_f_op_f32(round(-1222f)), -24873i, -countOneBits(~var_0.e.x));
}

