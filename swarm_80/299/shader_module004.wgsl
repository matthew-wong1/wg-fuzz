struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(658f)))), countOneBits(u_input.a));
}

fn func_3(arg_0: f32, arg_1: f32) -> i32 {
    var var_0 = func_2();
    var var_1 = countOneBits(_wgslsmith_clamp_vec4_i32(min(-(~vec4<i32>(-191i, -20243i, -13088i, -76162i)), select(-vec4<i32>(-1i, 2147483647i, 1i, -23557i), -vec4<i32>(1i, -2147483647i, 2147483647i, -53068i), 66534u != var_0.b)), vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(95295i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, -19111i, -12679i), vec4<i32>(2147483647i, 0i, 1i, 0i)), 1i, ~(-2147483647i)), vec4<i32>(1i, 1i, 1i, 1i))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1322f)))), true || all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))))), var_0.b);
    let var_2 = Struct_2(select(vec3<bool>(false, -26935i <= var_1.x, all(vec2<bool>(true, true))), vec3<bool>(!all(vec3<bool>(false, true, true)), (var_1.x << (var_0.b % 32u)) != reverseBits(var_1.x), false), ~115u <= var_0.b), countOneBits(-var_1.ww), var_0.b);
    let var_3 = vec4<i32>(0i, var_2.b.x, ~var_2.b.x, var_2.b.x ^ -var_1.x) >> (vec4<u32>(~(~0u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(57894u, u_input.a, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.b, u_input.a, var_2.c), vec3<u32>(1378u, 1u, u_input.a))), _wgslsmith_sub_u32(var_0.b, max(1u, 25706u)), var_0.b) % vec4<u32>(32u));
    return ~(-var_3.x);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec3<i32>, arg_3: f32) -> bool {
    let var_0 = arg_3;
    let var_1 = select(!vec2<bool>(false, all(vec4<bool>(true, true, true, true))), vec2<bool>(false, all(vec4<bool>(true, true, true, false)) | true), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), true)));
    var var_2 = true;
    var_2 = var_1.x;
    var_2 = any(select(var_1, !(!var_1), var_1));
    return true;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = ~(~(~_wgslsmith_mod_u32(arg_2.b, var_0.b))) > ~arg_3.c;
    let var_2 = Struct_2(select(arg_3.a, vec3<bool>(any(vec2<bool>(arg_1, var_1)) | all(arg_3.a.yy), true, var_1), ~select(1i, 86069i, arg_1) == min(abs(arg_3.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.b.x, arg_3.b.x, 0i, arg_3.b.x), vec4<i32>(arg_3.b.x, arg_3.b.x, arg_3.b.x, -10286i)))), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(abs(vec2<i32>(arg_3.b.x, -1i)), arg_3.b) | _wgslsmith_div_vec2_i32(arg_3.b, arg_3.b), -(~(-arg_3.b))), firstTrailingBit(1u));
    let var_3 = all(select(!arg_3.a.zx, !select(select(arg_3.a.zz, arg_3.a.zy, var_2.a.x), select(arg_3.a.xx, vec2<bool>(arg_1, true), arg_3.a.x), true), !vec2<bool>(arg_3.b.x >= -14231i, var_1)));
    let var_4 = true;
    return Struct_1(1265f, ~1u);
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_1 {
    let var_0 = func_5(func_2(), func_4(min(-abs(-1i), abs(1i)), u_input.a, vec3<i32>(i32(-1i) * -31702i, max(-32191i, firstTrailingBit(-1i)), _wgslsmith_sub_i32(func_3(-501f, arg_0), _wgslsmith_mod_i32(26049i, 2147483647i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0)))), Struct_1(1553f, ~(~4294967295u)), Struct_2(vec3<bool>(true, firstTrailingBit(-2147483647i) < _wgslsmith_sub_i32(-5i, -22377i), any(vec2<bool>(true, true))), select(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(63183i, 2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -9678i), vec2<i32>(1i, 68368i), vec2<i32>(0i, -23651i)), -vec2<i32>(1i, -26851i)), firstTrailingBit(vec2<i32>(1i, 1i)), vec2<bool>(all(vec4<bool>(false, false, true, true)), true)), ~4294967295u));
    var var_1 = min(_wgslsmith_mult_i32(13935i, 1i), _wgslsmith_sub_i32(-1i, abs(~1i)));
    let var_2 = !vec4<bool>(true, true && func_4(countOneBits(-24973i), _wgslsmith_add_u32(arg_1, 4294967295u), abs(vec3<i32>(2147483647i, 34713i, 16289i)), _wgslsmith_f_op_f32(-arg_0)), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), true);
    var_1 = firstTrailingBit(firstTrailingBit(1i));
    let var_3 = _wgslsmith_add_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(0u, 4294967295u | var_0.b), 0u), firstTrailingBit(firstTrailingBit(abs(vec2<u32>(arg_1, u_input.a)) >> ((vec2<u32>(var_0.b, u_input.a) & vec2<u32>(4851u, arg_1)) % vec2<u32>(32u)))));
    return Struct_1(arg_0, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(10461u, 4294967295u), _wgslsmith_sub_vec2_u32(var_3, firstLeadingBit(var_3))), select(var_3.x, ~var_3.x ^ 24015u, var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-259f, ~(~_wgslsmith_sub_u32(0u, ~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(select(countOneBits(vec3<i32>(-6441i, -32356i, -31408i) >> (vec3<u32>(var_0.b, var_0.b, u_input.a) % vec3<u32>(32u))), select(abs(vec3<i32>(10559i, -1i, 1i)), -vec3<i32>(2147483647i, 0i, -1i), vec3<bool>(false, false, true)), false), _wgslsmith_add_vec3_i32(vec3<i32>(1i, i32(-1i) * -1i, _wgslsmith_add_i32(26865i, -16278i)), -vec3<i32>(1i, 1i, 1i))), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(~(-64585i), 1i, ~16988i, 19485i)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(14734i, -22559i, 0i, -21893i))), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(var_0.b << (4294967295u % 32u), _wgslsmith_add_u32(11838u, var_0.b)), _wgslsmith_clamp_u32(4294967295u, ~4294967295u, ~17482u), ~0u), vec3<u32>(_wgslsmith_mult_u32(u_input.a, 4294967295u) & 26365u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(92464u, 0u, 1u), vec3<u32>(4294967295u, 0u, 4294967295u)), max(0u, u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, 74547u), vec2<u32>(var_0.b, 1u)) | (0u ^ var_0.b))), 1u);
}

