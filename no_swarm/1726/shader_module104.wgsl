struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 9>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    return arg_0.d.xz;
}

fn func_2() -> Struct_3 {
    global0 = array<vec3<i32>, 9>();
    global0 = array<vec3<i32>, 9>();
    var var_0 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(~(~4294967295u), u_input.c), vec2<u32>(_wgslsmith_sub_u32(7528u, 0u), u_input.c), firstLeadingBit(~(vec2<u32>(43048u, 4294967295u) & vec2<u32>(14524u, u_input.c))));
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -154f, -1000f, 1025f), _wgslsmith_div_vec4_f32(vec4<f32>(-593f, 1608f, 1091f, 1401f), vec4<f32>(553f, 1567f, -1926f, 1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-650f, 1000f, -2140f, 1385f)))), vec2<bool>(!(28342u != var_0.x), 1u > _wgslsmith_mod_u32(u_input.c, 0u)), !((u_input.a.x >= 1i) && all(vec3<bool>(false, false, true))), vec3<bool>(true, true, true)), Struct_2(!select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec3<bool>(false, true, true)))));
    let var_2 = vec3<u32>(max(~100941u | ~var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 57983u, 4294967295u), min(vec3<u32>(44639u, u_input.c, var_0.x), vec3<u32>(0u, 8929u, var_0.x)))), ~103238u, _wgslsmith_div_u32(66150u, ~countOneBits(var_0.x))) >> ((vec3<u32>(~_wgslsmith_div_u32(u_input.c, 4294967295u), ~9744u, _wgslsmith_mult_u32(~0u, _wgslsmith_mod_u32(u_input.c, 0u))) >> ((~(~vec3<u32>(u_input.c, var_0.x, var_0.x)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_0.x, var_0.x), abs(vec3<u32>(var_0.x, u_input.c, 1u)))) % vec3<u32>(32u))) % vec3<u32>(32u));
    return Struct_3(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.xy, vec2<i32>(u_input.a.x, -2147483647i), u_input.a.yz), vec2<i32>(-firstTrailingBit(-51252i), -u_input.a.x)), Struct_2(select(select(var_1.b.a, vec2<bool>(var_1.a.b.x, var_1.a.b.x), select(vec2<bool>(true, var_1.b.a.x), vec2<bool>(false, true), var_1.a.d.x)), vec2<bool>(!var_1.b.a.x, 304f >= var_1.a.a.x), func_3(Struct_1(vec4<f32>(1394f, 1000f, var_1.a.a.x, 858f), vec2<bool>(var_1.b.a.x, var_1.a.b.x), var_1.b.a.x, vec3<bool>(var_1.a.b.x, true, var_1.a.c))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    let var_0 = ~(select(u_input.a.yx, -u_input.a.yy << (abs(vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u)), vec2<bool>(arg_0.b.a.x, true)) << (countOneBits(~vec2<u32>(u_input.c, u_input.c) | vec2<u32>(4294967295u, 54893u)) % vec2<u32>(32u)));
    return func_2();
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>) -> vec3<f32> {
    var var_0 = !(!vec3<bool>(arg_0.b.a.x, true && any(vec2<bool>(arg_0.b.a.x, arg_0.b.a.x)), false));
    global0 = array<vec3<i32>, 9>();
    var var_1 = Struct_2(select(vec2<bool>(all(!vec4<bool>(false, false, true, arg_0.b.a.x)), true), !arg_0.b.a, func_2().b.a.x));
    var var_2 = vec4<bool>(arg_0.b.a.x, !(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.xz, u_input.a.yz), ~u_input.a.xx) == abs(-u_input.a.x)), arg_0.b.a.x, !arg_0.b.a.x);
    var_0 = vec3<bool>(false, var_1.a.x, false);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-194f, _wgslsmith_f_op_f32(-arg_1.x), -2643f), _wgslsmith_f_op_vec3_f32(-arg_1.yyz), select(select(var_2.yxz, vec3<bool>(var_2.x, true, true), true), var_2.yzw, !var_2.x))) + vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(ceil(arg_1.x)), any(vec3<bool>(arg_0.b.a.x, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-652f)) * _wgslsmith_div_f32(1000f, arg_1.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(arg_1.x, -1000f)), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(-665f * arg_1.x))), arg_1.wwz));
}

fn func_6(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = true | !func_3(Struct_1(vec4<f32>(-1367f, 1296f, arg_0.x, arg_0.x), vec2<bool>(true, true), true, select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false))).x;
    let var_1 = vec2<bool>(true, 9789i == u_input.a.x);
    var var_2 = func_4(func_4(func_2(), Struct_3(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, 27255i, u_input.a.x, 11813i), reverseBits(vec4<i32>(u_input.b, 2147483647i, u_input.a.x, u_input.b))), Struct_2(func_4(Struct_3(72935i, Struct_2(vec2<bool>(false, var_1.x))), Struct_3(u_input.b, Struct_2(var_1))).b.a))), func_4(func_4(Struct_3(_wgslsmith_add_i32(0i, 17807i), func_2().b), func_2()), func_2()));
    var var_3 = -select(-32847i, 7013i, var_1.x);
    let var_4 = _wgslsmith_add_vec3_i32(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.c, 0u), 9u)], global0[_wgslsmith_index_u32(42784u, 9u)]);
    return var_2.b;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    let var_0 = vec2<u32>(~(~54104u), u_input.c);
    global0 = array<vec3<i32>, 9>();
    global0 = array<vec3<i32>, 9>();
    global0 = array<vec3<i32>, 9>();
    global0 = array<vec3<i32>, 9>();
    return func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(func_4(Struct_3(36951i, Struct_2(arg_1.b)), func_2()), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(849f, arg_1.a.x, -727f, 260f) + vec4<f32>(163f, 1172f, -1162f, arg_1.a.x)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.a.x, -414f)), _wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x), -714f))));
}

fn func_7(arg_0: Struct_2) -> StorageBuffer {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1337f, -430f, -1045f, -1223f) - vec4<f32>(-1205f, 688f, 891f, 234f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1083f, -584f, 1025f, 1000f) + vec4<f32>(-1776f, 1000f, -115f, -485f))), _wgslsmith_div_vec4_f32(vec4<f32>(-2037f, 1003f, -657f, -267f), vec4<f32>(278f, 787f, -952f, -725f)), !select(vec4<bool>(arg_0.a.x, false, false, true), vec4<bool>(arg_0.a.x, arg_0.a.x, true, false), arg_0.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -754f, 1906f, -350f), vec4<f32>(1331f, -1951f, -841f, 1196f), true)) + vec4<f32>(-423f, 1118f, -926f, -106f))))), !func_2().b.a, -(-30428i >> (u_input.c % 32u)) < ~_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a.xz), vec2<i32>(u_input.b, u_input.b)), !(!select(vec3<bool>(false, arg_0.a.x, false), vec3<bool>(false, false, false), select(vec3<bool>(false, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, arg_0.a.x, false), false))));
    var var_1 = select(var_0.d, vec3<bool>(func_6(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x * -1221f), _wgslsmith_f_op_f32(select(1541f, -245f, false)), _wgslsmith_f_op_f32(max(1588f, var_0.a.x)))).a.x, false, true), true);
    let var_2 = 0u;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -331f) + _wgslsmith_f_op_f32(round(-1000f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.a.x, var_0.a.x)))))));
    let var_4 = func_2();
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), var_0.a.yxw, u_input.a.zx, -reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-2679i, 21131i, -2147483647i, -1i), vec4<i32>(1i, var_4.a, u_input.a.x, var_4.a)) << (vec4<u32>(23917u, 10426u, 1u, 23190u) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 9>();
    global0 = array<vec3<i32>, 9>();
    global0 = array<vec3<i32>, 9>();
    global0 = array<vec3<i32>, 9>();
    global0 = array<vec3<i32>, 9>();
    let x = u_input.a;
    s_output = func_7(func_1(false, Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(368f, -565f, -190f, 1551f))))), vec2<bool>(false, false), any(vec3<bool>(true, true, true)), vec3<bool>(true, true, any(vec2<bool>(true, true))))));
}

