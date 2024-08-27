struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(-1i, -65574i, -29604i, 1i, 0i, 24669i, -39718i, 1i, 24350i, 2147483647i, -41740i, -1i, -1i, 0i, -1i, -1i, -40861i, -29934i, 9229i, -46234i, 0i, 77330i, 1i, -28518i, i32(-2147483648), -48280i, 2147483647i, -1i, 34993i);

var<private> global1: array<vec2<f32>, 23>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(select(-558f, -1332f, any(vec2<bool>(false, true)) & true)) > _wgslsmith_f_op_f32(-688f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-924f, -200f, false)), _wgslsmith_f_op_f32(1126f + -1227f)))));
    var var_1 = 23872i;
    var_1 = ~(-1i);
    global0 = array<i32, 29>();
    let var_2 = abs(4294967295u);
    return 0u;
}

fn func_3(arg_0: vec4<u32>) -> vec3<i32> {
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(30300i, u_input.c, -32212i), ~vec3<i32>(global0[_wgslsmith_index_u32(reverseBits(arg_0.x & u_input.b.x), 29u)], abs(53171i), ~(~global0[_wgslsmith_index_u32(28433u, 29u)])));
    let var_1 = ~_wgslsmith_mult_i32(min(~(global0[_wgslsmith_index_u32(arg_0.x, 29u)] ^ var_0.x), (global0[_wgslsmith_index_u32(arg_0.x, 29u)] << (arg_0.x % 32u)) >> (_wgslsmith_add_u32(u_input.d.x, 6343u) % 32u)), 1316i & ~abs(var_0.x));
    let var_2 = Struct_1(arg_0.x < 4294967295u, vec2<i32>(abs(var_0.x), -(~0i & var_0.x)), -59877i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2034f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(544f))))) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-523f * 469f) - -318f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1015f)))))));
    var var_3 = arg_0.x;
    var_3 = 24020u;
    return max(vec3<i32>(-1i) * -abs(-var_0), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, var_1, global0[_wgslsmith_index_u32(0u, 29u)]), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -2147483647i, var_2.b.x), vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 29u)], var_2.b.x, 4715i))), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -1238i, var_1), var_0, var_0), min(var_0, var_0))) >> (~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, 485u, u_input.d.x), vec3<u32>(72812u, 4294967295u, 21291u))) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: i32) -> u32 {
    var var_0 = ~firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(u_input.d.x, 4294967295u, false) ^ (u_input.e.x | 4294967295u), ~u_input.e.x), 29u)]);
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    var var_1 = Struct_2(!vec4<bool>(true, true, false, arg_0.x), vec4<i32>(arg_3 >> (_wgslsmith_mult_u32(4294967295u, 4294967295u | u_input.e.x) % 32u), -46273i, ~1i, ~(-626i)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(30622i, -21312i, u_input.a)), vec3<i32>(0i, -26299i, arg_3)) >> (reverseBits(vec3<u32>(u_input.d.x, u_input.e.x, 33146u)) % vec3<u32>(32u)), reverseBits(func_3(~vec4<u32>(u_input.d.x, u_input.b.x, u_input.b.x, u_input.e.x)))));
    let var_2 = 37689i;
    return 45518u;
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<f32>, arg_3: vec3<u32>) -> vec2<u32> {
    let var_0 = !vec4<bool>(any(vec3<bool>(true, false, -2147483647i > u_input.a)), any(vec4<bool>(arg_1, arg_1, select(true, arg_1, arg_1), arg_1 || arg_1)), any(!select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(false, arg_1, arg_1, false))), arg_1);
    global1 = array<vec2<f32>, 23>();
    var var_1 = Struct_3(Struct_2(var_0, ~vec4<i32>(global0[_wgslsmith_index_u32(countOneBits(arg_3.x), 29u)], _wgslsmith_sub_i32(-49044i, -1i), _wgslsmith_clamp_i32(arg_0.x, global0[_wgslsmith_index_u32(8261u, 29u)], 1i), -5302i), vec3<i32>(33354i, ~(-39093i), -6235i | u_input.c) & (-arg_0 | _wgslsmith_sub_vec3_i32(arg_0, vec3<i32>(arg_0.x, 49593i, 17329i)))));
    global1 = array<vec2<f32>, 23>();
    global0 = array<i32, 29>();
    return vec2<u32>(max(~func_2(vec4<bool>(false, false, arg_1, var_1.a.a.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.x, -284f), vec2<f32>(arg_2.x, arg_2.x), true)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1542f, arg_2.x, arg_2.x, arg_2.x))), u_input.c & arg_0.x), firstLeadingBit(abs(1u))), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    var var_0 = 4294967295u;
    var var_1 = func_1();
    let var_2 = func_4(vec3<i32>(abs(global0[_wgslsmith_index_u32(func_2(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(852f, -766f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(623f, -1553f, 158f, -1000f)), -u_input.a), 29u)]), u_input.c, 1i), true, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(step(-909f, -721f)), _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2393f + 1981f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -583f))))), _wgslsmith_add_vec3_u32(u_input.b, reverseBits(~u_input.b)));
    let var_3 = all(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)));
    let var_4 = Struct_4(Struct_1(true, countOneBits(-(~vec2<i32>(global0[_wgslsmith_index_u32(159156u, 29u)], 0i))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, abs(var_2.x)), 29u)], any(vec3<bool>(all(vec4<bool>(true, true, false, var_3)), var_3, select(false, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(-(~min(vec3<i32>(2147483647i, u_input.c, u_input.c), vec3<i32>(global0[_wgslsmith_index_u32(0u, 29u)], u_input.a, u_input.a))), reverseBits(countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(var_2.x, 29u)], 30102i, u_input.a) >> (vec3<u32>(17157u, var_2.x, var_2.x) % vec3<u32>(32u))))), u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -560f));
}

