struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: Struct_1,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(4294967295u, 0u, 21856u, 34481u), vec4<u32>(2441u, 0u, 1u, 38719u), vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<u32>(1u, 83490u, 0u, 31361u));

var<private> global1: vec4<u32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2) -> bool {
    let var_0 = arg_2;
    var var_1 = Struct_4(arg_0.a, countOneBits((vec3<u32>(arg_2.a.b.x, var_0.a.b.x, arg_0.b.x) << (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, var_0.a.b.x, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, arg_1)) % vec3<u32>(32u))) >> (select(vec3<u32>(arg_0.b.x, arg_2.a.b.x, arg_2.a.b.x), countOneBits(vec3<u32>(4294967295u, 6626u, arg_1)), true) % vec3<u32>(32u))), Struct_1(_wgslsmith_div_vec2_f32(arg_0.a.a.a, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.a.a.x, arg_0.a.a.a.x)))), vec2<u32>(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global1.x, arg_1, u_input.b.x, u_input.b.x), vec4<u32>(0u, 13090u, 48188u, var_0.a.b.x)), vec4<u32>(arg_0.a.a.b.x, u_input.b.x, var_0.a.b.x, u_input.b.x))), arg_2.a.c), Struct_2(arg_2.a, !select(!arg_0.a.b, arg_0.a.b, global1.x == 1u)), Struct_2(var_0.a, select(vec2<bool>(true, true), vec2<bool>(true, false), arg_0.a.b)));
    let var_2 = arg_0;
    global0 = array<vec4<u32>, 4>();
    var_1 = Struct_4(var_1.a, abs(~(~vec3<u32>(4294967295u, 1u, 98493u))) | vec3<u32>(_wgslsmith_clamp_u32(var_1.e.a.b.x, var_2.b.x, 36472u) | _wgslsmith_add_u32(1u, var_0.a.b.x), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_2.a.a.b.x, u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(arg_2.a.b.x, arg_2.a.b.x)), arg_1 ^ 1u), arg_2.a.b.x), Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.d.a.a), vec2<u32>(firstLeadingBit(0u), ~abs(global1.x)), -868f), var_0, arg_2);
    return all(!vec3<bool>(arg_0.a.b.x, (var_0.b.x | true) == var_2.a.b.x, true));
}

fn func_2() -> Struct_2 {
    global0 = array<vec4<u32>, 4>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(593f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(307f * 397f)))));
    let var_1 = false;
    var var_2 = countOneBits(select(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(global1.xzw, countOneBits(vec3<u32>(var_0.b.x, 1u, var_0.b.x))), 28808u, 4294967295u ^ var_0.b.x), u_input.b.x, func_3(Struct_3(Struct_2(Struct_1(var_0.a, var_0.b, -255f), vec2<bool>(false, var_1)), global1.xz), 27277u, Struct_2(Struct_1(vec2<f32>(321f, var_0.c), global1.yy, -542f), !vec2<bool>(var_1, var_1)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + _wgslsmith_f_op_f32(step(276f, -309f)));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, -1936f)))))), u_input.b, -687f), select(!select(vec2<bool>(var_1, var_1), select(vec2<bool>(var_1, true), vec2<bool>(false, var_1), vec2<bool>(var_1, var_1)), vec2<bool>(var_1, var_1)), select(!select(vec2<bool>(false, var_1), vec2<bool>(var_1, true), vec2<bool>(true, var_1)), select(vec2<bool>(var_1, true), select(vec2<bool>(var_1, var_1), vec2<bool>(false, true), var_1), vec2<bool>(true, true)), !select(vec2<bool>(false, var_1), vec2<bool>(var_1, var_1), vec2<bool>(var_1, true))), vec2<bool>(!var_1, _wgslsmith_mod_i32(34256i, u_input.a.x) >= ~u_input.a.x)));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> vec3<bool> {
    return vec3<bool>(arg_1.a.b.x, !(!(any(arg_2.b) || arg_1.a.b.x)), true && any(vec4<bool>(true, true, true, true)));
}

fn func_1() -> Struct_4 {
    let var_0 = select(select(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, all(vec2<bool>(false, false)), true)), vec3<bool>(true, !(u_input.a.x >= u_input.a.x), true), !(_wgslsmith_mod_i32(u_input.a.x, 2147483647i) >= u_input.a.x)), !func_4(_wgslsmith_mult_i32(~36837i, i32(-1i) * -40659i), Struct_3(func_2(), vec2<u32>(35122u, 0u)), func_2()), true);
    global1 = _wgslsmith_div_vec4_u32(~(~(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 60775u, 4294967295u, global1.x), global0[_wgslsmith_index_u32(4294967295u, 4u)]), 4u)])), vec4<u32>(global1.x, firstLeadingBit(~(~u_input.b.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(~20171u, _wgslsmith_mod_u32(32511u, global1.x), 7812u), global1.zzw), _wgslsmith_div_u32(global1.x, abs(20191u))));
    var var_1 = vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(-u_input.a.wy, countOneBits(vec2<i32>(-18273i, 2147483647i)));
    let var_2 = 1u;
    let var_3 = var_0.x;
    return Struct_4(func_2(), ~(~vec3<u32>(1u, global1.x, _wgslsmith_mod_u32(u_input.b.x, global1.x))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1451f, -1000f), vec2<f32>(1750f, 2492f), var_0.xy)))), global1.xx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1129f, 969f))))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-211f, -295f)), global1.xy, _wgslsmith_f_op_f32(f32(-1f) * -756f)), vec2<bool>(var_3, true)), Struct_2(func_2().a, var_0.xz));
}

fn func_5(arg_0: Struct_5) -> vec3<i32> {
    global1 = global0[_wgslsmith_index_u32(1u, 4u)];
    let var_0 = arg_0.b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(667f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.b.e.a.a.x * arg_0.c.a.x), _wgslsmith_f_op_f32(var_0.e.a.c * arg_0.c.c)))))));
    let var_2 = vec4<u32>(abs(u_input.b.x), _wgslsmith_dot_vec4_u32(select(~(vec4<u32>(arg_0.c.b.x, u_input.b.x, global1.x, var_0.b.x) & vec4<u32>(26114u, 6652u, u_input.b.x, arg_0.b.b.x)), global0[_wgslsmith_index_u32(countOneBits(~4294967295u), 4u)], true), _wgslsmith_mult_vec4_u32(vec4<u32>(~global1.x, u_input.b.x >> (var_0.e.a.b.x % 32u), 4294967295u, global1.x), ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(29559u, arg_0.b.d.a.b.x), 4u)])), _wgslsmith_dot_vec2_u32(abs(min(abs(u_input.b), vec2<u32>(8206u, 1u))), firstTrailingBit(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(15481u, 1u), arg_0.c.b)))), abs(~select(25741u, ~u_input.b.x, func_4(2147483647i, Struct_3(var_0.a, global1.yx), arg_0.b.d).x)));
    var var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.c.b.x, var_0.b.x, ~(~(~138460u)), 33645u), select(~global0[_wgslsmith_index_u32(arg_0.b.a.a.b.x, 4u)], firstTrailingBit(var_2), select(select(vec4<bool>(arg_0.b.d.b.x, arg_0.b.a.b.x, true, true), vec4<bool>(var_0.e.b.x, false, false, arg_0.b.d.b.x), var_0.d.b.x), vec4<bool>(var_0.a.b.x, var_0.d.b.x, true, arg_0.b.e.b.x), !vec4<bool>(false, false, var_0.d.b.x, true))) & (vec4<u32>(_wgslsmith_sub_u32(global1.x, var_0.e.a.b.x), ~global1.x, u_input.b.x << (var_0.d.a.b.x % 32u), 4294967295u) | _wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(~u_input.b.x, 4u)], global0[_wgslsmith_index_u32(0u, 4u)])));
    return u_input.a.zxx;
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> Struct_1 {
    var var_0 = global1.wz << (arg_1.b % vec2<u32>(32u));
    global1 = global0[_wgslsmith_index_u32(var_0.x, 4u)];
    global1 = vec4<u32>(22037u, 92931u, _wgslsmith_div_u32(arg_1.b.x, 17098u), arg_1.b.x);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3, arg_1.c)))))));
    var var_2 = func_1();
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(876f, 100f)))), vec2<u32>(1u, _wgslsmith_sub_u32(arg_1.b.x & 1u, 4294967295u)), _wgslsmith_f_op_f32(-arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(Struct_5(~(~global1.x), func_1(), func_2().a, _wgslsmith_div_vec2_i32(u_input.a.ww, u_input.a.zy >> (global1.wx % vec2<u32>(32u))), ~0i >> (u_input.b.x % 32u))), func_1().c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().a.a.x + -1000f)) < -1584f, -753f);
    let var_1 = u_input.a.x << (0u % 32u);
    global0 = array<vec4<u32>, 4>();
    global1 = ~(~vec4<u32>(~u_input.b.x | 1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.b, global1.zy), ~4294967295u), var_0.b.x, var_0.b.x));
    let var_2 = vec4<bool>(true, (func_6(vec3<i32>(var_1, var_1, u_input.a.x), var_0, true, _wgslsmith_f_op_f32(-var_0.c)).c <= -619f) == (~u_input.b.x <= 2854u), true, !(var_1 >= -1i) || !((global1.x << (1u % 32u)) > global1.x));
    var var_3 = func_1().a.a.b;
    global1 = global0[_wgslsmith_index_u32(~1u, 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c, 1308f, -2183f, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, -588f, var_0.a.x)))))), select(reverseBits(max(_wgslsmith_clamp_vec2_u32(var_0.b, global1.xy, vec2<u32>(global1.x, 74045u)), countOneBits(vec2<u32>(48131u, var_3.x)))), ~(~vec2<u32>(var_3.x, global1.x) & ~global1.xy), !(!(!var_2.zz))), global1.x, _wgslsmith_div_vec2_u32(global1.yy, var_0.b));
}

