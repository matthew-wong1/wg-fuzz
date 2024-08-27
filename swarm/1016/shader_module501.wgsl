struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec3<i32>(-33963i, 2147483647i, -34097i)), Struct_3(vec3<i32>(0i, 1i, -28166i)), Struct_3(vec3<i32>(i32(-2147483648), -7416i, 20183i)), Struct_3(vec3<i32>(-1i, -1927i, -30871i)), Struct_3(vec3<i32>(22939i, -22892i, 0i)), Struct_3(vec3<i32>(-20198i, -1i, 40400i)), Struct_3(vec3<i32>(51309i, 62290i, -1i)), Struct_3(vec3<i32>(1i, i32(-2147483648), -11912i)), Struct_3(vec3<i32>(2147483647i, -24930i, -46315i)), Struct_3(vec3<i32>(8022i, -4074i, i32(-2147483648))), Struct_3(vec3<i32>(i32(-2147483648), 0i, 0i)), Struct_3(vec3<i32>(-57668i, -1i, 27363i)), Struct_3(vec3<i32>(2147483647i, 2147483647i, -46589i)), Struct_3(vec3<i32>(2147483647i, 1i, 2147483647i)), Struct_3(vec3<i32>(i32(-2147483648), -1i, 2147483647i)), Struct_3(vec3<i32>(0i, 71i, -50313i)), Struct_3(vec3<i32>(3818i, -13014i, -63945i)), Struct_3(vec3<i32>(1i, 1i, 5465i)));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: f32) -> vec2<u32> {
    let var_0 = Struct_2(Struct_1(any(vec3<bool>(true, true, true)) || any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), firstTrailingBit(-31739i), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), true), !select(false, false, false)), ~(~firstLeadingBit(vec2<u32>(arg_1.x, u_input.a.x)))), Struct_1(true, -7897i, select(vec4<bool>(true, all(vec4<bool>(true, false, false, false)), false, any(vec4<bool>(false, true, true, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false))), any(vec4<bool>(true, true, true, true))), ~vec2<u32>(69508u, u_input.a.x)), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)), false)), vec4<bool>(u_input.b.x >= max(u_input.b.x, u_input.b.x), true | (arg_2 < arg_2), all(vec3<bool>(true, true, true)), true), vec4<bool>(any(vec3<bool>(true, true, false)), true, false, true)), Struct_1(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)), ~u_input.b.x >> (1u % 32u), vec4<bool>(true, true, true, true), u_input.a.zz));
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    var var_1 = !(!var_0.a.c.xz);
    var_1 = select(!select(select(!var_0.d.c.zz, var_0.b.c.wz, var_0.b.c.xw), var_0.d.c.yz, var_0.a.c.yy), !var_0.b.c.xx, !select(var_0.c.x, (false | var_0.d.c.x) & false, true));
    return ~firstLeadingBit(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), vec2<u32>(23716u, 1u), vec2<u32>(arg_1.x, arg_1.x))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> bool {
    var var_0 = ~(~countOneBits(vec4<i32>(arg_2.b, select(-25471i, arg_2.b, arg_0.c.x), ~arg_2.b, reverseBits(arg_2.b))));
    var var_1 = arg_0;
    global0 = array<Struct_3, 18>();
    let var_2 = Struct_2(Struct_1(arg_2.a, ~arg_0.b, !(!(!arg_0.c)), _wgslsmith_add_vec2_u32(~u_input.a.yz, abs(func_3(vec4<f32>(508f, -998f, arg_1, arg_1), vec4<u32>(1u, 4294967295u, u_input.a.x, arg_0.d.x), 687f)))), arg_2, arg_0.c, Struct_1(!(!(!var_1.a)), arg_0.b, vec4<bool>(true, arg_2.c.x, var_1.a, true), arg_0.d));
    var_1 = arg_0;
    return var_2.c.x & arg_2.c.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<f32>) -> vec4<i32> {
    global0 = array<Struct_3, 18>();
    var var_0 = Struct_1(!any(select(vec2<bool>(true, false), vec2<bool>(false, true), func_2(Struct_1(true, u_input.b.x, vec4<bool>(false, true, false, false), u_input.a.zy), -1359f, Struct_1(false, 0i, vec4<bool>(false, false, true, false), vec2<u32>(7027u, u_input.a.x))))), 2147483647i, select(select(vec4<bool>(all(vec3<bool>(true, false, true)), any(vec4<bool>(true, true, false, false)), true, select(false, false, false)), vec4<bool>(true, true, true, true), -19924i < u_input.b.x), vec4<bool>(true, true, true, !all(vec4<bool>(false, false, false, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), arg_0.yx);
    let var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(arg_0, firstLeadingBit(_wgslsmith_clamp_vec4_u32(arg_0, vec4<u32>(0u, var_0.d.x, 1u, var_0.d.x), arg_0))), vec4<u32>(60850u, countOneBits(arg_0.x), arg_0.x, ~12349u)), _wgslsmith_div_vec4_u32(~(~vec4<u32>(2952u, 0u, arg_0.x, arg_0.x) >> (reverseBits(vec4<u32>(0u, u_input.a.x, arg_0.x, 4294967295u)) % vec4<u32>(32u))), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.d.x, u_input.a.x, u_input.a.x, 41521u) & vec4<u32>(0u, 28238u, u_input.a.x, 1u), countOneBits(vec4<u32>(33060u, 1u, 103970u, arg_0.x)), ~vec4<u32>(var_0.d.x, var_0.d.x, 46772u, 1u)))), vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(23115u) & 1u, reverseBits(abs(1u))), arg_0.x, 32894u, u_input.a.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x), arg_1.x) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(2003f, 1829f, arg_1.x), vec3<f32>(1000f, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 329f, arg_1.x))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, arg_1.x, arg_1.x)))))) - vec3<f32>(_wgslsmith_f_op_f32(abs(-448f)), arg_1.x, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(-1000f, 924f)), arg_1.x)));
    global0 = array<Struct_3, 18>();
    return select(vec4<i32>(1i, _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(1i, 10684i)), 0i), i32(-1i) * -7044i), -var_0.b, ~1i), vec4<i32>(firstLeadingBit(1i >> (var_1.x % 32u)), abs(var_0.b & 18816i) | ~abs(3119i), -u_input.b.x >> (countOneBits(arg_0.x) % 32u), u_input.b.x), !(!select(select(var_0.c, vec4<bool>(var_0.c.x, var_0.c.x, var_0.a, var_0.c.x), var_0.c), var_0.c, false)));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_4) -> u32 {
    var var_0 = vec2<bool>(false, false && arg_0);
    var var_1 = true;
    let var_2 = 4294967295u;
    var_1 = any(vec2<bool>(~(-arg_1.x) >= (_wgslsmith_div_i32(arg_2, -31033i) & -19574i), var_0.x));
    var var_3 = arg_3.a;
    return u_input.a.x & (_wgslsmith_dot_vec2_u32(vec2<u32>(8931u, u_input.a.x), ~u_input.a.xz) << (reverseBits(max(30884u, 0u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 66338u, u_input.a.x), select(vec4<u32>(26822u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), false)), u_input.a.x), u_input.a.x);
    global0 = array<Struct_3, 18>();
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 0u, var_0, ~(~var_0)), vec4<u32>(_wgslsmith_sub_u32(var_0, _wgslsmith_clamp_u32(var_0, u_input.a.x, 1u)), u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, var_0, var_0), max(vec4<u32>(4294967295u, 15326u, 19574u, u_input.a.x), vec4<u32>(var_0, 4294967295u, u_input.a.x, u_input.a.x))), _wgslsmith_mult_u32(~7951u, abs(var_0)))) & _wgslsmith_clamp_vec4_u32(select(~(vec4<u32>(1u, 10156u, var_0, u_input.a.x) | vec4<u32>(1u, 0u, 1295u, 0u)), ~(~vec4<u32>(4294967295u, 76827u, u_input.a.x, 0u)), true), _wgslsmith_mod_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_0, u_input.a.x, var_0, 0u), vec4<u32>(u_input.a.x, var_0, var_0, var_0))), ~vec4<u32>(u_input.a.x, 26486u, 29729u, var_0)), ~(~vec4<u32>(var_0, var_0, 0u, var_0)));
    var_1 = select(vec4<u32>(0u, u_input.a.x, reverseBits(func_4(true, func_1(vec4<u32>(1u, var_1.x, 92447u, u_input.a.x), vec2<f32>(1000f, -2229f)), firstLeadingBit(-11231i), Struct_4(global0[_wgslsmith_index_u32(1u, 18u)]))), 1u), vec4<u32>(_wgslsmith_add_u32(firstLeadingBit(u_input.a.x), _wgslsmith_div_u32(1u, var_0)) << (4294967295u % 32u), ~0u, 14153u, 43656u), !(!all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false))));
    global0 = array<Struct_3, 18>();
    let var_2 = Struct_2(Struct_1(true, u_input.b.x, select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(false, false, false)), true, true, u_input.a.x > var_1.x)), vec2<u32>(63122u, 1u) >> (var_1.zw % vec2<u32>(32u))), Struct_1((_wgslsmith_f_op_f32(select(700f, 796f, false)) > _wgslsmith_div_f32(581f, 813f)) == (true & all(vec2<bool>(true, false))), abs(u_input.b.x), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), false), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false), true)), reverseBits(u_input.a.yy)), vec4<bool>(false, true, false || all(vec4<bool>(true, false, false, false)), true & select(any(vec3<bool>(false, false, false)), select(true, false, false), all(vec2<bool>(true, true)))), Struct_1(any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), false)) || true, u_input.b.x, select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), min(var_1.wy, firstLeadingBit(u_input.a.yz) ^ ~vec2<u32>(var_0, u_input.a.x))));
    let var_3 = var_2;
    let var_4 = !var_3.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(~min(~(~vec4<u32>(var_3.d.d.x, var_2.d.d.x, 4294967295u, u_input.a.x)), vec4<u32>(select(var_2.d.d.x, 4935u, true), ~0u, var_1.x, var_1.x << (u_input.a.x % 32u))), vec3<u32>(~abs(116737u), select(_wgslsmith_div_u32(min(0u, 0u), u_input.a.x), ~(~var_1.x), any(!var_4.yyy)), _wgslsmith_div_u32(var_3.d.d.x, var_3.a.d.x)));
}

