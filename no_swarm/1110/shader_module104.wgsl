struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(45685u, 61091u, 0u, 11877u);

var<private> global1: array<u32, 8> = array<u32, 8>(50256u, 1u, 37398u, 5611u, 1u, 1u, 90000u, 12844u);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec4<i32>, arg_3: i32) -> vec3<i32> {
    var var_0 = vec4<bool>(all(vec4<bool>(true, any(vec2<bool>(true, true)), true, false)), !(_wgslsmith_div_f32(arg_0, arg_0) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -158f) - _wgslsmith_f_op_f32(floor(1432f)))), any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)))) & !any(vec4<bool>(true, true, true, true)), all(!vec3<bool>(true, true, all(vec2<bool>(true, true)))));
    var var_1 = vec4<i32>(arg_2.x, ~(~firstLeadingBit(1i)), u_input.a.x >> (u_input.b.x % 32u), i32(-1i) * -max(-1173i, u_input.a.x << (10780u % 32u)));
    var var_2 = Struct_1(select(!var_0.wzy, select(!var_0.wzx, var_0.ywy, ~global0.x == abs(global0.x)), select(vec3<bool>(true, select(var_0.x, true, false), true), var_0.xzy, any(!vec3<bool>(false, true, var_0.x)))), arg_2, firstLeadingBit(~u_input.b), var_0.x, ~vec3<i32>(19849i, -35349i >> (u_input.b.x % 32u), ~1i));
    var var_3 = select(-_wgslsmith_div_i32(arg_3, firstLeadingBit(-1i)), _wgslsmith_mult_i32(13595i, firstTrailingBit(~(~var_1.x))), var_2.d);
    var var_4 = all(select(vec4<bool>(!var_0.x, var_0.x, true, true), vec4<bool>(all(vec2<bool>(false, false)), (var_0.x || false) | !var_0.x, ~var_2.c.x <= select(0u, global0.x, var_2.d), arg_1 <= _wgslsmith_div_f32(-912f, arg_1)), select(!vec4<bool>(true, var_0.x, false, var_0.x), !select(vec4<bool>(true, var_2.d, false, false), vec4<bool>(true, false, var_0.x, false), var_2.d), true)));
    return ~(~vec3<i32>(2147483647i, _wgslsmith_add_i32(countOneBits(var_2.b.x), u_input.a.x), _wgslsmith_mod_i32(-arg_2.x, var_2.b.x >> (global0.x % 32u))));
}

fn func_2() -> vec4<u32> {
    global0 = u_input.b;
    var var_0 = Struct_1(!select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, any(vec2<bool>(false, true))), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)), -vec4<i32>(u_input.a.x, 24185i, -85684i, 1i), firstLeadingBit(_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(0u, 28406u, select(22697u, global0.x, true), 48326u))), false, _wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.a.x, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(abs(u_input.a.x), -28624i, u_input.a.x), ~func_3(-1221f, -2016f, vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), 51239i))));
    var var_1 = Struct_2(any(select(vec4<bool>(false, true, false, true), select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.d, var_0.d), !vec4<bool>(var_0.d, true, false, true), !var_0.d), vec4<bool>(true, all(vec4<bool>(false, true, false, var_0.a.x)), true, var_0.a.x | var_0.a.x))), -17864i);
    let var_2 = Struct_1(select(var_0.a, vec3<bool>(!(3805i < var_1.b), true, any(!var_0.a)), var_0.a), select(~var_0.b, -max(vec4<i32>(34752i, -86162i, u_input.a.x, 1i), vec4<i32>(var_1.b, var_1.b, var_1.b, 1i) >> (var_0.c % vec4<u32>(32u))), _wgslsmith_mult_u32(~4294967295u, max(global0.x, 55898u)) == max(var_0.c.x, 1u)), ~var_0.c, true, abs(-(vec3<i32>(-1i) * -var_0.b.yyw)));
    var var_3 = Struct_2(all(!vec4<bool>(var_2.d, var_2.a.x, any(vec4<bool>(false, var_1.a, true, var_1.a)), all(var_0.a.zy))), var_1.b);
    return u_input.b | firstTrailingBit(reverseBits(firstLeadingBit(vec4<u32>(35446u, u_input.b.x, 7480u, global0.x) << (vec4<u32>(global1[_wgslsmith_index_u32(global0.x, 8u)], u_input.b.x, 1u, var_2.c.x) % vec4<u32>(32u)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>) -> Struct_1 {
    global0 = func_2();
    global1 = array<u32, 8>();
    global1 = array<u32, 8>();
    let var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u) << (reverseBits(arg_0.zy | (vec2<u32>(u_input.c.x, global0.x) & global0.yy)) % vec2<u32>(32u)), vec2<u32>(func_2().x, countOneBits(global0.x) << (0u % 32u)));
    var var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0, _wgslsmith_clamp_u32(var_0, global0.x, 40112u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, arg_0.x), vec2<u32>(9089u, 73219u)) % 32u), (arg_0.x << (4294967295u % 32u)) << (_wgslsmith_mod_u32(649u, global0.x) % 32u), abs(1u)), ~(~vec4<u32>(var_0, 36532u, global1[_wgslsmith_index_u32(u_input.b.x, 8u)], global0.x))), u_input.b >> (((u_input.b >> (select(u_input.b, u_input.b, vec4<bool>(false, false, false, false)) % vec4<u32>(32u))) & (vec4<u32>(8688u, global1[_wgslsmith_index_u32(arg_0.x, 8u)], u_input.c.x, 4294967295u) << (vec4<u32>(global0.x, 4294967295u, 4294967295u, global1[_wgslsmith_index_u32(58988u, 8u)]) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    return Struct_1(!(!vec3<bool>(any(vec3<bool>(false, true, false)), false, u_input.b.x == 24881u)), _wgslsmith_mult_vec4_i32(~vec4<i32>(arg_1.x, u_input.a.x, arg_1.x, u_input.a.x) | -vec4<i32>(-1i, -1i, -1i, -19252i), ~(~vec4<i32>(u_input.a.x, arg_1.x, arg_1.x, arg_1.x))) >> (u_input.b % vec4<u32>(32u)), ~(~u_input.b), !all(vec4<bool>(true, true, true, true)), countOneBits(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-8905i, arg_1.x, -304i) >> (vec3<u32>(var_0, global0.x, 48966u) % vec3<u32>(32u)), vec3<i32>(28575i, u_input.a.x, 60398i)), vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, 11690i), vec2<i32>(30497i, 2147483647i)), 54476i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~min(global0.wxx, u_input.c), vec2<i32>(0i & firstLeadingBit(u_input.a.x), -12412i));
    global1 = array<u32, 8>();
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -601f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(481f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1894f), _wgslsmith_f_op_f32(f32(-1f) * -507f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1053f * _wgslsmith_f_op_f32(f32(-1f) * -118f)) - -1205f) + -1000f)));
    global0 = ~vec4<u32>(~(~_wgslsmith_dot_vec3_u32(var_0.c.xzw, vec3<u32>(global0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 8u)], 32972u))), _wgslsmith_sub_u32(1784u, _wgslsmith_dot_vec2_u32(select(global0.wx, vec2<u32>(4294967295u, 0u), var_0.a.zz), vec2<u32>(global0.x, u_input.c.x) << (vec2<u32>(8020u, 50236u) % vec2<u32>(32u)))), 0u, select(4294967295u, ~(~46061u), true));
    let var_2 = !any(func_1(select(vec3<u32>(global0.x, u_input.c.x, u_input.c.x), vec3<u32>(793u, 1u, 35577u), true), _wgslsmith_mult_vec2_i32(countOneBits(u_input.a), _wgslsmith_clamp_vec2_i32(var_0.e.yx, vec2<i32>(-67961i, u_input.a.x), u_input.a))).a.xx);
    global1 = array<u32, 8>();
    global0 = vec4<u32>(~0u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(5683u, global1[_wgslsmith_index_u32(~22834u, 8u)]), global1[_wgslsmith_index_u32(firstLeadingBit(~abs(global1[_wgslsmith_index_u32(4294967295u, 8u)])), 8u)]), u_input.b.x, ~func_2().x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(-var_1))), var_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1))), var_1), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, -348f, _wgslsmith_div_f32(-160f, 1166f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), ~(u_input.c << (func_2().zzy % vec3<u32>(32u))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.b.x, -20773i) << (u_input.c.xy % vec2<u32>(32u)), min(vec2<i32>(u_input.a.x, 1i), vec2<i32>(-1i, u_input.a.x))), min(u_input.a, vec2<i32>(u_input.a.x, 0i)) & select(vec2<i32>(u_input.a.x, 0i), vec2<i32>(var_0.e.x, -36916i), false)), -(_wgslsmith_sub_vec2_i32(vec2<i32>(-40210i, u_input.a.x), u_input.a) ^ (var_0.e.zz >> (vec2<u32>(global0.x, 4294967295u) % vec2<u32>(32u))))));
}

