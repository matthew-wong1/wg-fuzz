struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec2<i32>,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: u32;

var<private> global3: i32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    var var_0 = firstTrailingBit(vec3<u32>(~u_input.b, _wgslsmith_clamp_u32(~u_input.a, u_input.b, ~u_input.b), 4294967295u)) & ~vec3<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, u_input.a), vec4<u32>(u_input.a, u_input.b, 0u, 10359u))), u_input.a & _wgslsmith_sub_u32(u_input.b, u_input.a), u_input.b);
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(countOneBits(u_input.b), 1u)], global0[_wgslsmith_index_u32(4294967295u | _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(44523u, 4294967295u, var_0.x, u_input.b)), vec4<u32>(902u, u_input.b, 1u, 4294967295u) & vec4<u32>(46749u, u_input.a, var_0.x, var_0.x)), ~vec4<u32>(43767u, 0u, 4294967295u, var_0.x)), 1u)], Struct_1(abs(vec2<u32>(9480u, ~1u)), arg_0, _wgslsmith_clamp_u32(abs(4294967295u), abs(~var_0.x), 9922u), select(select(vec2<bool>(true, true), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], true), !vec2<bool>(global0[_wgslsmith_index_u32(31237u, 1u)], true)), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(3425u, 58521u), 1u)], true), vec2<bool>(true, true))), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_add_i32(u_input.c, 2147483647i)), min(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(-1i, u_input.c)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 54812i), vec2<i32>(u_input.c, u_input.c)))), vec2<i32>(i32(-1i) * -1i, u_input.c)), ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 1u, var_0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(52909u, var_0.x, 0u, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.b, 1u), vec4<u32>(17094u, 123420u, 20719u, u_input.b)))));
    let var_2 = !var_1.c.d;
    var_0 = vec3<u32>(var_0.x, u_input.b, u_input.b);
    var var_3 = -665f;
    return firstLeadingBit(var_0.yx);
}

fn func_2() -> i32 {
    var var_0 = Struct_3(abs(firstTrailingBit(firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(12607u, u_input.a), vec2<u32>(1166u, 1u))))), -2147483647i, abs(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, 12771u), func_3(false))) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.b, 35131u), _wgslsmith_mod_vec2_u32(vec2<u32>(7092u, 34280u), vec2<u32>(47397u, 1u))));
    var var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(firstLeadingBit(-19524i)), var_0.b, -30988i, -(~27523i)), min(vec4<i32>(-2147483647i, u_input.c, 1i, -27331i), vec4<i32>(var_0.b, 32482i, u_input.c, u_input.c)) >> (~(vec4<u32>(55768u, u_input.b, u_input.b, var_0.a.x) >> (vec4<u32>(8926u, 0u, var_0.c.x, var_0.c.x) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~var_0.b, _wgslsmith_div_i32(2147483647i, u_input.c), abs(-2147483647i)), ~countOneBits(vec3<i32>(var_0.b, -1i, u_input.c))), _wgslsmith_dot_vec3_i32(~vec3<i32>(29300i, 3867i, 2147483647i) | select(vec3<i32>(55512i, -2147483647i, u_input.c), vec3<i32>(u_input.c, 4480i, 9386i), vec3<bool>(true, true, global0[_wgslsmith_index_u32(20447u, 1u)])), vec3<i32>(var_0.b, 0i, u_input.c) << (min(vec3<u32>(10337u, var_0.a.x, 72248u), vec3<u32>(1u, 1u, 7943u)) % vec3<u32>(32u))), select(~u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, 2147483647i), ~vec2<i32>(2147483647i, u_input.c)), any(select(vec3<bool>(global0[_wgslsmith_index_u32(34563u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], false), vec3<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 1u)], global0[_wgslsmith_index_u32(var_0.c.x, 1u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(49204u, 1u)], false)))), -21128i));
    global1 = array<Struct_1, 22>();
    global2 = abs(~var_0.a.x);
    global3 = min(-1i << (firstTrailingBit(var_0.a.x) % 32u), _wgslsmith_sub_i32(19873i, -11440i));
    return var_1.x;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: i32) -> i32 {
    let var_0 = vec4<i32>(~15662i, _wgslsmith_mult_i32(arg_1.x, u_input.c), select(func_2(), reverseBits(~arg_2), true), _wgslsmith_dot_vec3_i32(-(vec3<i32>(arg_2, 48606i, 0i) | vec3<i32>(-24264i, arg_2, arg_2)), ~(~vec3<i32>(1i, 15953i, arg_1.x)))) >> ((countOneBits(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(1u, u_input.a, u_input.a)), ~u_input.a, 85992u)) | _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.b) | vec4<u32>(u_input.b, 8916u, u_input.b, 0u), vec4<u32>(16775u, u_input.b, 7374u, u_input.b) << (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a) % vec4<u32>(32u))), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 18867u, 0u, 0u), vec4<u32>(3019u, u_input.b, u_input.b, u_input.a))))) % vec4<u32>(32u));
    var var_1 = Struct_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(123120u, ~(~4294967295u)), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(u_input.a, u_input.b)), ~(~vec2<u32>(0u, u_input.b))), _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(4153u, u_input.b)), countOneBits(vec2<u32>(4294967295u, u_input.a)))), ~u_input.c << (func_3(select(true, !global0[_wgslsmith_index_u32(31976u, 1u)], all(vec2<bool>(true, true)))).x % 32u), vec2<u32>(4294967295u, _wgslsmith_mod_u32(~(~u_input.a), abs(1u))));
    global3 = -25524i | reverseBits(u_input.c);
    var var_2 = var_1.c.x;
    var var_3 = ~(~(~max(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, u_input.b, u_input.a), vec4<u32>(u_input.b, var_1.a.x, var_1.a.x, 40321u)), ~vec4<u32>(var_1.c.x, 1u, 4294967295u, 4294967295u))));
    return max(-2749i << (var_1.a.x % 32u), _wgslsmith_dot_vec2_i32(~arg_1.zx, ~vec2<i32>(_wgslsmith_add_i32(-32993i, -1189i), arg_1.x)));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_add_vec2_u32(firstTrailingBit(select(~vec2<u32>(u_input.b, u_input.a), select(vec2<u32>(arg_3.a.x, 16109u), vec2<u32>(arg_2.c.x, 0u), vec2<bool>(false, global0[_wgslsmith_index_u32(4278u, 1u)])), true)), ~arg_2.c), true, u_input.b, !select(!vec2<bool>(false, global0[_wgslsmith_index_u32(27853u, 1u)]), select(vec2<bool>(true, global0[_wgslsmith_index_u32(90258u, 1u)]), select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(19694u, 1u)], true), vec2<bool>(false, global0[_wgslsmith_index_u32(arg_3.a.x, 1u)])), !vec2<bool>(global0[_wgslsmith_index_u32(2289u, 1u)], true)), !global0[_wgslsmith_index_u32(arg_2.c.x, 1u)]));
    var var_1 = _wgslsmith_f_op_f32(arg_0.x - arg_0.x);
    var var_2 = vec3<i32>(2147483647i, func_1(true && any(select(vec4<bool>(var_0.b, true, global0[_wgslsmith_index_u32(5200u, 1u)], var_0.d.x), vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 1u)], false, global0[_wgslsmith_index_u32(u_input.b, 1u)], false), true)), -(~(vec3<i32>(-14151i, 0i, arg_2.b) | vec3<i32>(u_input.c, arg_3.b, -14499i))), arg_1), arg_1);
    let var_3 = arg_0.yww;
    let var_4 = select(select(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(491u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)]), select(vec3<bool>(false, global0[_wgslsmith_index_u32(39727u, 1u)], false), vec3<bool>(false, global0[_wgslsmith_index_u32(arg_2.c.x, 1u)], global0[_wgslsmith_index_u32(arg_3.a.x, 1u)]), false), var_0.d.x | false), !select(select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 1u)], true, false), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 1u)], false), vec3<bool>(var_0.d.x, true, var_0.b)), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], true), global0[_wgslsmith_index_u32(0u, 1u)]), !vec3<bool>(var_0.d.x, !var_0.d.x, false)), !(!(!(!vec3<bool>(true, var_0.b, false)))), vec3<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_3.a.x, ~0u), 1u)], true, all(select(vec4<bool>(var_0.d.x, global0[_wgslsmith_index_u32(51403u, 1u)], global0[_wgslsmith_index_u32(arg_3.c.x, 1u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(10365u, 1u)], var_0.b, var_0.d.x), vec4<bool>(var_0.b, global0[_wgslsmith_index_u32(4294967295u, 1u)], true, true))) && false));
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1190f, _wgslsmith_div_f32(1191f, 198f))) + -523f))));
    let var_1 = Struct_3(firstLeadingBit(reverseBits(vec2<u32>(11581u ^ u_input.a, u_input.a))), 0i, vec2<u32>(~u_input.b, u_input.b));
    var var_2 = Struct_1(vec2<u32>(~(~u_input.b), ~_wgslsmith_mod_u32(u_input.a & u_input.a, var_1.a.x)), false, u_input.b, func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-510f))), -1200f, _wgslsmith_f_op_f32(770f + _wgslsmith_f_op_f32(1000f - 396f)), _wgslsmith_div_f32(-1315f, -288f)), ((10997i & u_input.c) ^ (i32(-1i) * -2147483647i)) | firstTrailingBit(-9502i ^ var_1.b), Struct_3(var_1.c, _wgslsmith_mult_i32(var_1.b, func_1(global0[_wgslsmith_index_u32(44280u, 1u)], vec3<i32>(var_1.b, -1i, u_input.c), -46891i)), abs(select(var_1.a, var_1.a, vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 1u)], true)))), Struct_3(reverseBits(var_1.a), ~1i, abs(var_1.a))));
    var var_3 = select(select(vec4<bool>(all(vec2<bool>(true, true)), !global0[_wgslsmith_index_u32(select(4294967295u, 1u, false), 1u)], true || var_2.d.x, global0[_wgslsmith_index_u32(min(var_2.c, var_2.a.x), 1u)] & true), vec4<bool>(!var_2.d.x, false, global0[_wgslsmith_index_u32(firstTrailingBit(var_2.c), 1u)], true), select(vec4<bool>(true, true, 54461u >= var_2.c, true), select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(23363u, 1u)], true, var_2.d.x), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b, 1u)], true), global0[_wgslsmith_index_u32(u_input.a, 1u)]), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(var_2.a.x, 1u)]), true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 1u)], true, true), false), !vec4<bool>(var_2.b, false, true, var_2.b), vec4<bool>(var_2.b, false, var_2.b, global0[_wgslsmith_index_u32(37729u, 1u)])))), select(vec4<bool>(all(!vec3<bool>(false, false, var_2.d.x)), global0[_wgslsmith_index_u32(~47932u, 1u)], global0[_wgslsmith_index_u32(~(4294967295u & var_1.a.x), 1u)], false), !select(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 1u)], true, true, true), select(vec4<bool>(false, var_2.b, global0[_wgslsmith_index_u32(var_2.c, 1u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 1u)], false, var_2.d.x), vec4<bool>(var_2.d.x, global0[_wgslsmith_index_u32(var_1.a.x, 1u)], global0[_wgslsmith_index_u32(var_2.a.x, 1u)], false)), all(var_2.d)), select(select(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 1u)], false, false, false), !vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 1u)], true, false), select(vec4<bool>(true, true, var_2.b, false), vec4<bool>(false, global0[_wgslsmith_index_u32(31223u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)]), var_2.d.x)), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)], var_2.b, false, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_2.b, false, true, false), vec4<bool>(false, true, var_2.b, false), global0[_wgslsmith_index_u32(var_2.c, 1u)]), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], var_2.d.x, var_2.b, var_2.b)))), true);
    var var_4 = firstLeadingBit(68753u);
    global2 = u_input.b;
    var var_5 = ~vec2<u32>(var_2.c >> (_wgslsmith_mult_u32(u_input.a, ~var_2.c) % 32u), min(countOneBits(~u_input.b), _wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, var_2.c), ~var_2.a.x)));
    let var_6 = _wgslsmith_mod_i32(min(~(-1i), _wgslsmith_div_i32(u_input.c, 43102i)), firstLeadingBit(5117i));
    let var_7 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c | u_input.c, 0i << (_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_2.a.x, 4294967295u, 924u)), vec3<u32>(var_2.c, u_input.a, 33908u)) % 32u)), -min(countOneBits(firstTrailingBit(vec2<i32>(var_1.b, var_1.b))), max(vec2<i32>(var_6, 1i), vec2<i32>(var_6, -1i)) << (var_2.a % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1583f, -846f, 943f, -1263f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-2191f, -535f, 2051f, -356f) * vec4<f32>(-814f, -1932f, 288f, -372f))))), firstLeadingBit(var_1.b), _wgslsmith_add_i32(u_input.c, _wgslsmith_clamp_i32(var_7, 0i, ~var_1.b >> ((48570u | u_input.a) % 32u))), vec4<i32>(2147483647i, ~(~(-25109i >> (var_1.a.x % 32u))), var_1.b, var_6), vec2<u32>(~(var_2.a.x >> (1u % 32u)), var_2.a.x));
}

