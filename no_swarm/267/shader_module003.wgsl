struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: array<bool, 20>;

var<private> global2: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(37652u, 0u, 0u, 25504u), vec4<u32>(0u, 73352u, 1u, 1u), vec4<u32>(59391u, 18179u, 33138u, 0u), vec4<u32>(22705u, 92700u, 3916u, 0u), vec4<u32>(0u, 1u, 13819u, 0u), vec4<u32>(55123u, 6536u, 17592u, 1u), vec4<u32>(1u, 1u, 12350u, 0u), vec4<u32>(0u, 39743u, 4294967295u, 39787u), vec4<u32>(42371u, 19387u, 16017u, 1u), vec4<u32>(11886u, 4294967295u, 1u, 1u), vec4<u32>(0u, 1u, 1u, 0u), vec4<u32>(4294967295u, 27703u, 1u, 33965u), vec4<u32>(48602u, 4294967295u, 65654u, 256u), vec4<u32>(25314u, 0u, 0u, 0u), vec4<u32>(0u, 13221u, 0u, 1u), vec4<u32>(4294967295u, 4294967295u, 23489u, 58999u), vec4<u32>(9925u, 0u, 1u, 103047u), vec4<u32>(18549u, 32608u, 124925u, 27803u), vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(53012u, 30879u, 31445u, 23629u), vec4<u32>(648u, 1u, 25540u, 0u), vec4<u32>(70201u, 16424u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 22935u, 15543u, 17462u), vec4<u32>(4294967295u, 15007u, 0u, 46222u), vec4<u32>(0u, 2279u, 1u, 28313u));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_1(~(_wgslsmith_clamp_vec2_i32(vec2<i32>(35672i, u_input.e.x), -u_input.e, vec2<i32>(-1i, 12667i)) << (((u_input.b.ww >> (u_input.b.wx % vec2<u32>(32u))) | u_input.c) % vec2<u32>(32u))), -(countOneBits(~vec3<i32>(u_input.e.x, -2147483647i, u_input.e.x)) >> (~u_input.b.xwx % vec3<u32>(32u))));
    let var_1 = Struct_2(Struct_1(vec2<i32>(countOneBits(u_input.e.x), u_input.e.x), _wgslsmith_sub_vec3_i32(var_0.b, var_0.b)), Struct_1(var_0.a, vec3<i32>(var_0.b.x, var_0.b.x, firstLeadingBit(52667i)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, u_input.d, u_input.d) << (vec3<u32>(u_input.d, 47354u, u_input.c.x) % vec3<u32>(32u)), select(vec3<u32>(25697u, 1u, 77209u), u_input.b.zxx, vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 20u)], global1[_wgslsmith_index_u32(u_input.a, 20u)])), vec3<u32>(u_input.b.x, 36506u, 15372u)) % vec3<u32>(32u))), _wgslsmith_mod_u32(~u_input.c.x, reverseBits(~reverseBits(u_input.b.x))), Struct_1(_wgslsmith_mult_vec2_i32(max(-var_0.b.xx, vec2<i32>(u_input.e.x, var_0.a.x)), countOneBits(~var_0.b.zy)), vec3<i32>(~firstLeadingBit(-2147483647i), select(var_0.a.x, -822i, true) & -1i, 1i)));
    global2 = array<vec4<u32>, 25>();
    var var_2 = !select(!vec2<bool>(global0[_wgslsmith_index_u32(var_1.c, 7u)] | global0[_wgslsmith_index_u32(u_input.a, 7u)], true), !(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(var_1.c, 7u)]))), !select(!vec2<bool>(global1[_wgslsmith_index_u32(18359u, 20u)], global0[_wgslsmith_index_u32(1u, 7u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(4096u, 20u)], true), vec2<bool>(true, true), vec2<bool>(false, global0[_wgslsmith_index_u32(var_1.c, 7u)])), !vec2<bool>(global0[_wgslsmith_index_u32(11894u, 7u)], global0[_wgslsmith_index_u32(var_1.c, 7u)])));
    var_0 = Struct_1(~(vec2<i32>(-1i) * -vec2<i32>(-35039i, var_0.a.x)) << (u_input.c % vec2<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>((4693i & var_1.d.b.x) ^ (i32(-1i) * -2147483647i), -max(u_input.e.x, 0i), u_input.e.x << (reverseBits(64736u) % 32u)), countOneBits(vec3<i32>(-1i) * -vec3<i32>(var_0.b.x, var_1.b.a.x, 30229i))));
    return firstLeadingBit(countOneBits(-abs(reverseBits(var_1.d.a))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.e, vec2<i32>(~u_input.e.x, 1i)), ~_wgslsmith_mult_vec2_i32(~u_input.e, vec2<i32>(u_input.e.x, -11272i) >> (vec2<u32>(u_input.b.x, u_input.c.x) % vec2<u32>(32u)))), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.e.x, arg_0.x, -9023i), abs(arg_0.xyx), arg_0.yzx), abs(arg_0.wzy)));
    var var_1 = Struct_1(max(func_3(), var_0.b.zy), vec3<i32>(arg_0.x & (_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, var_0.b.x), var_0.b) & -2147483647i), 2147483647i, func_3().x));
    let var_2 = Struct_2(Struct_1(~countOneBits(vec2<i32>(var_1.b.x, 1i)), vec3<i32>(~arg_0.x << (min(45951u, 21603u) % 32u), 1i, var_1.b.x)), Struct_1(vec2<i32>(var_0.b.x, var_1.a.x), vec3<i32>(_wgslsmith_clamp_i32(-var_0.a.x, ~12338i, 45137i), reverseBits(~var_0.a.x), func_3().x)), 4294967295u, Struct_1(arg_0.wx, vec3<i32>(-var_0.b.x, arg_0.x, 9264i)));
    let var_3 = (_wgslsmith_f_op_f32(select(324f, _wgslsmith_f_op_f32(abs(491f)), false)) > 582f) && !global1[_wgslsmith_index_u32(11572u, 20u)];
    let var_4 = (~firstLeadingBit(~var_2.d.a.x) << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), firstLeadingBit(vec2<u32>(4294967295u, 41211u))), 1u, u_input.c.x) % 32u)) ^ -2147483647i;
    return Struct_1(firstLeadingBit(~(~arg_0.zz) & var_1.b.xx), -select(vec3<i32>(var_4 >> (30183u % 32u), var_1.b.x, 1i), vec3<i32>(2147483647i, 1i, -1i), vec3<bool>(true | var_3, global1[_wgslsmith_index_u32(reverseBits(1u), 20u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, u_input.c.x), 7u)])));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(func_2(firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(u_input.e.x, u_input.e.x, 35919i, u_input.e.x))), Struct_1(-(func_2(vec4<i32>(u_input.e.x, -26963i, u_input.e.x, 1i)).b.yy >> (vec2<u32>(arg_1, u_input.c.x) % vec2<u32>(32u))), _wgslsmith_mult_vec3_i32(vec3<i32>(-60719i, countOneBits(arg_2.a.x), func_2(vec4<i32>(u_input.e.x, u_input.e.x, arg_2.b.x, -33379i)).b.x), abs(~vec3<i32>(u_input.e.x, -1i, 14970i)))), abs(~(~(~0u))), Struct_1(_wgslsmith_mod_vec2_i32(arg_0.a, _wgslsmith_sub_vec2_i32(countOneBits(arg_2.b.xz), vec2<i32>(0i, 34074i) << (u_input.b.xy % vec2<u32>(32u)))), (_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, arg_0.b.x, -9312i), vec3<i32>(-1i, 2147483647i, arg_0.a.x)) >> ((u_input.b.xzz >> (u_input.b.xzy % vec3<u32>(32u))) % vec3<u32>(32u))) >> (~vec3<u32>(arg_1, 66852u, 1u) % vec3<u32>(32u))));
    var var_1 = 1i;
    var_1 = abs(var_0.b.b.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-641f, 516f, 1005f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-311f, -698f, -274f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(135f, 462f, -2515f) + vec3<f32>(322f, -1487f, -1584f))))), global1[_wgslsmith_index_u32(1u, 20u)]))));
    let var_3 = var_0;
    return var_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec4<i32>) -> vec3<i32> {
    global2 = array<vec4<u32>, 25>();
    let var_0 = func_4(func_2(-max(_wgslsmith_mult_vec4_i32(arg_2, arg_2), -vec4<i32>(35662i, u_input.e.x, arg_0.x, arg_2.x))), 12462u, func_2(vec4<i32>(-arg_2.x, i32(-1i) * -15524i, 0i, -_wgslsmith_mod_i32(-1i, arg_0.x))));
    let var_1 = !global1[_wgslsmith_index_u32(min(reverseBits(~var_0.c), ~4294967295u), 20u)];
    var var_2 = select(!vec2<bool>(all(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 7u)])), _wgslsmith_f_op_f32(-arg_1) <= _wgslsmith_f_op_f32(-arg_1)), vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_1, arg_1)))) <= _wgslsmith_f_op_f32(trunc(782f)), true), true);
    global2 = array<vec4<u32>, 25>();
    return -_wgslsmith_div_vec3_i32(vec3<i32>(17590i, func_2(vec4<i32>(var_0.d.b.x, 24862i, u_input.e.x, -80485i)).a.x, arg_2.x), reverseBits(-(~vec3<i32>(1i, u_input.e.x, arg_0.x))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = arg_1.zzy;
    global0 = array<bool, 7>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(795f, 534f, 693f, -1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-878f, -1010f, -1665f, -116f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    global1 = array<bool, 20>();
    return func_2(vec4<i32>(_wgslsmith_div_i32(arg_0.a.x, reverseBits(-2147483647i)), func_3().x, -16843i, ~_wgslsmith_mult_i32(max(67966i, -2147483647i), -2147483647i << (arg_2.c % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    global2 = array<vec4<u32>, 25>();
    var var_1 = func_5(Struct_1(u_input.e, -func_1(~vec3<i32>(38688i, u_input.e.x, 41336i), _wgslsmith_f_op_f32(f32(-1f) * -723f), countOneBits(vec4<i32>(0i, -9764i, u_input.e.x, u_input.e.x)))), vec4<u32>(_wgslsmith_add_u32(func_4(func_4(Struct_1(u_input.e, vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x)), 57562u, Struct_1(u_input.e, vec3<i32>(u_input.e.x, -26788i, 1i))).a, ~1u, Struct_1(vec2<i32>(u_input.e.x, u_input.e.x), vec3<i32>(16906i, -2482i, u_input.e.x))).c, var_0.x), ~var_0.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.x, u_input.a), 1u) | ~(~1u), ~(~abs(0u))), func_4(func_2(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(38155i, u_input.e.x, -2147483647i, 0i), vec4<i32>(47224i, 39287i, u_input.e.x, -28201i)))), min(_wgslsmith_clamp_u32(u_input.d, 37921u, var_0.x) << (u_input.a % 32u), 15920u), Struct_1(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e.x, 18934i), u_input.e), _wgslsmith_sub_vec3_i32(vec3<i32>(45905i, u_input.e.x, 0i) << (vec3<u32>(var_0.x, 2737u, 19446u) % vec3<u32>(32u)), max(vec3<i32>(15390i, u_input.e.x, u_input.e.x), vec3<i32>(u_input.e.x, 2147483647i, u_input.e.x))))));
    var_0 = vec4<u32>(var_0.x, _wgslsmith_mult_u32(33788u, u_input.d), ~(reverseBits(u_input.d) | 1u), ~2287u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_sub_u32(u_input.b.x >> (84609u % 32u), u_input.c.x)), firstTrailingBit(0u)), 1f, var_1.b.x);
}

