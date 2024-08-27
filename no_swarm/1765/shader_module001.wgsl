struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(true, false, true, false));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-1824f + -283f);
    var var_1 = Struct_4(~vec2<u32>(44528u, u_input.a), Struct_2(vec3<u32>(11866u, ~1834u & u_input.a, u_input.a), vec2<f32>(_wgslsmith_f_op_f32(step(-909f, _wgslsmith_f_op_f32(-125f * 1025f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(910f * -1236f))))));
    var_1 = Struct_4(~(~_wgslsmith_clamp_vec2_u32(var_1.a, var_1.b.a.zz, var_1.b.a.xy) & vec2<u32>(~0u, _wgslsmith_dot_vec2_u32(var_1.b.a.xz, var_1.a))), var_1.b);
    var var_2 = Struct_3(select(vec4<bool>(true, true, global0.a.x && (var_1.b.b.x > var_1.b.b.x), true), !vec4<bool>(all(vec3<bool>(true, true, false)), false, var_1.b.b.x <= var_1.b.b.x, false & global0.a.x), !(!any(vec4<bool>(true, false, global0.a.x, true)))));
    var_1 = Struct_4(vec2<u32>(u_input.a, var_1.b.a.x), Struct_2(~select(vec3<u32>(var_1.a.x, 83753u, u_input.a) & var_1.b.a, countOneBits(var_1.b.a), select(vec3<bool>(var_2.a.x, var_2.a.x, true), vec3<bool>(var_2.a.x, var_2.a.x, false), global0.a.ywx)), _wgslsmith_f_op_vec2_f32(floor(var_1.b.b))));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b.b + var_1.b.b), vec2<f32>(var_1.b.b.x, 113f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_1.b.b)))))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_4(~(~vec2<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, 88292u, 1u)))), Struct_2(vec3<u32>(u_input.a | u_input.a, max(6425u, u_input.a), 44238u) >> (firstTrailingBit(vec3<u32>(4294967295u, u_input.a, 33330u) ^ vec3<u32>(u_input.a, 1u, 10013u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(func_3())));
    let var_1 = vec4<u32>(abs(max(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(var_0.b.a.x, 4294967295u, u_input.a, 82803u)) & 905u)), _wgslsmith_dot_vec2_u32(firstTrailingBit(var_0.b.a.yz), var_0.b.a.zy), min(~_wgslsmith_dot_vec4_u32(vec4<u32>(7054u, var_0.b.a.x, 45611u, 70306u) << (vec4<u32>(var_0.a.x, 0u, 14700u, var_0.a.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(5577u, 6416u, var_0.b.a.x, u_input.a), vec4<u32>(0u, 0u, 1u, 44777u))), ~(countOneBits(148u) | ~var_0.b.a.x)), abs(27651u));
    let var_2 = ~(max(~vec2<u32>(9297u, 4294967295u), var_1.xx << (~vec2<u32>(u_input.a, var_1.x) % vec2<u32>(32u))) << (var_0.b.a.xy % vec2<u32>(32u)));
    var var_3 = min(vec4<u32>(var_2.x, _wgslsmith_clamp_u32(max(1u, 53337u), 13437u, 24947u | u_input.a), u_input.a, var_1.x), var_1);
    let var_4 = countOneBits(var_1);
    return Struct_3(vec4<bool>(global0.a.x, true, all(!select(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false), global0.a, vec4<bool>(global0.a.x, global0.a.x, false, false))), global0.a.x && false));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_4) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(-vec3<i32>(-35900i, -54829i, 2147483647i)), firstTrailingBit(firstTrailingBit(vec3<i32>(-1i, 2147483647i, 4626i)))) & _wgslsmith_div_vec3_i32(countOneBits(~vec3<i32>(-9926i, -2147483647i, -199i)), reverseBits(firstLeadingBit(vec3<i32>(13045i, -2147483647i, -5260i)))), vec3<i32>(-1i, ~(-1i), i32(-1i) * -11035i));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(f32(-1f) * -771f), -200f, _wgslsmith_f_op_f32(arg_2.b.b.x * 672f)) * vec4<f32>(-830f, 885f, _wgslsmith_f_op_f32(f32(-1f) * -1051f), -694f)))));
    let var_2 = func_2();
    global0 = Struct_3(global0.a);
    global0 = Struct_3(arg_0.a);
    return 1u;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> Struct_1 {
    var var_0 = vec3<u32>(_wgslsmith_div_u32(func_4(func_2(), Struct_4(vec2<u32>(u_input.a, 26311u), Struct_2(vec3<u32>(14240u, arg_0.x, arg_0.x), vec2<f32>(1243f, -152f))), Struct_4(vec2<u32>(17121u, arg_0.x), Struct_2(vec3<u32>(1u, 1u, 26469u), vec2<f32>(-1795f, -587f)))), 0u), _wgslsmith_sub_u32(arg_0.x, 0u), 94766u);
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(17038u, 36508u, u_input.a, arg_0.x) << (vec4<u32>(1u, 1u, var_0.x, arg_0.x) % vec4<u32>(32u)), vec4<u32>(var_0.x, 1u, u_input.a, 1u) << (vec4<u32>(var_0.x, 50872u, arg_0.x, 79093u) % vec4<u32>(32u))), abs(~arg_0.x), _wgslsmith_mod_u32(var_0.x | var_0.x, func_4(Struct_3(vec4<bool>(false, false, true, arg_1)), Struct_4(arg_0, Struct_2(vec3<u32>(var_0.x, var_0.x, var_0.x), vec2<f32>(-238f, -215f))), Struct_4(vec2<u32>(var_0.x, arg_0.x), Struct_2(vec3<u32>(var_0.x, 4294967295u, arg_0.x), vec2<f32>(-1578f, -1135f))))), abs(9300u)), _wgslsmith_mult_vec4_u32(abs(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, var_0.x, 4294967295u, 4294967295u))), ~_wgslsmith_mod_vec4_u32(max(vec4<u32>(var_0.x, 5953u, 0u, 4294967295u), vec4<u32>(4294967295u, u_input.a, var_0.x, 4294967295u)), ~vec4<u32>(1u, 4294967295u, var_0.x, 39589u))), reverseBits(vec4<u32>(_wgslsmith_div_u32(1u, arg_0.x), ~var_0.x, ~56569u, ~0u)));
    let var_2 = -1203f;
    let var_3 = arg_1;
    var var_4 = -3152i;
    return Struct_1(~var_1.wxy, var_1.wwy, abs(_wgslsmith_add_i32(18602i, -(~(-1i)))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = vec2<u32>(_wgslsmith_add_u32(0u, u_input.a), _wgslsmith_mod_u32(1u, _wgslsmith_add_u32(u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 8552u, u_input.a, arg_1.a.x), vec4<u32>(arg_2, arg_2, arg_1.a.x, u_input.a)) % 32u), 1u)));
    global0 = func_2();
    var var_1 = func_1(arg_1.a.zx, true & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -870f) - -629f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2347f)))));
    let var_2 = Struct_4(min(var_0, vec2<u32>(u_input.a ^ var_0.x, ~1u) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(arg_2, u_input.a), arg_1.a.zz) % vec2<u32>(32u))), Struct_2(var_1.a, vec2<f32>(1f, 1f)));
    global0 = Struct_3(vec4<bool>(any(vec2<bool>(true, false)), true, false, true));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(global0.a);
    var var_0 = !(select(1u, 43488u, global0.a.x) > _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.a, 4294967295u, 0u)), ~min(vec3<u32>(82726u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))));
    let var_1 = func_5(false, func_1(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(51687u, u_input.a) | vec2<u32>(1u, 4294967295u), abs(vec2<u32>(51848u, 64411u))), ~(vec2<u32>(4294967295u, 0u) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)))), any(global0.a)), u_input.a);
    var_0 = !func_2().a.x;
    let var_2 = 1i;
    var var_3 = Struct_2(var_1.a, var_1.b);
    let var_4 = var_1.a ^ ~var_1.a;
    var_3 = var_1;
    var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.b.x * var_1.b.x)))), 611f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.b.x, 1495f, false))))), -402f), var_2, -2147483647i | func_1(vec2<u32>(max(u_input.a, var_3.a.x), var_3.a.x), true).c);
}

