struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(false, false, true, true, true, true, true, true, false, true, true, true, false, true, true, true, true, false, false, true, true, true, true);

var<private> global1: bool = false;

var<private> global2: u32;

var<private> global3: Struct_3;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(global3.b.d));
    global1 = all(!vec4<bool>(!select(global0[_wgslsmith_index_u32(15859u, 23u)], true, global3.b.e), select(true, global0[_wgslsmith_index_u32(1u, 23u)], !global0[_wgslsmith_index_u32(global3.b.c, 23u)]), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, global3.b.e, global3.b.e, global3.b.e), vec4<bool>(false, false, global3.b.e, false))), global3.b.e));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(global3.b.d, var_0), vec2<f32>(var_0, var_0)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.d, var_0))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-378f, -1248f))));
    let var_2 = Struct_3(abs((~vec3<u32>(u_input.b.x, 36558u, u_input.d.x) >> (vec3<u32>(0u, global3.b.a.x, u_input.b.x) % vec3<u32>(32u))) | abs(vec3<u32>(20461u, global3.a.x, 35141u) | u_input.b)), Struct_2(~vec2<u32>(1u, countOneBits(u_input.d.x)), global3.b.b, max(global3.b.c << (u_input.b.x % 32u), global3.b.c | u_input.b.x) >> (~(~4294967295u) % 32u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * var_0))), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(~global3.a.x, min(global3.a.x, u_input.b.x))), 23u)]));
    var var_3 = Struct_3(~(~_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 57546u, 66813u), abs(u_input.b))), Struct_2(u_input.b.xx, global3.b.b, ~var_2.a.x, _wgslsmith_f_op_f32(ceil(var_1.x)), global3.b.e));
    return 365f;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(u_input.b.yz, Struct_1(arg_3.b.a), max(4294967295u, _wgslsmith_div_u32(~1u, 4294967295u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), any(vec2<bool>(arg_0 >= _wgslsmith_f_op_f32(arg_3.d - arg_2.x), true)));
    let var_1 = Struct_1(var_0.b.a);
    var var_2 = !(!vec4<bool>(arg_3.e, false, global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(global3.b.a.x, 4294967295u), 23u)], true));
    global0 = array<bool, 23>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(234f)));
    return global3.b;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(global3.b.a, arg_3.b, 15641u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.d + arg_2.d), _wgslsmith_f_op_f32(select(-1000f, -523f, true)))), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.d), var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.d))))));
    return func_2(-1453f, -2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_1)) - vec3<f32>(_wgslsmith_f_op_f32(select(global3.b.d, 2282f, false)), var_0.d, var_1.x))), func_2(_wgslsmith_f_op_f32(trunc(-190f)), _wgslsmith_dot_vec2_i32(-arg_2.b.a.zz, select(~vec2<i32>(u_input.a, -39789i), global3.b.b.a.xx, all(vec3<bool>(var_0.e, true, false)))), var_1, arg_2));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = !arg_1;
    let var_1 = 1892i;
    let var_2 = abs(abs(29948u));
    global2 = 0u;
    var var_3 = arg_0;
    return Struct_1(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(_wgslsmith_dot_vec4_i32(global3.b.b.a, vec4<i32>(var_1, -1i, -32743i, global3.b.b.a.x)), ~u_input.a, arg_0.b.a.x, -u_input.c.x)), var_3.b.a | var_3.b.a, vec4<i32>(34983i, _wgslsmith_mult_i32(24838i, arg_0.b.a.x) | _wgslsmith_sub_i32(-2147483647i, u_input.c.x), reverseBits(global3.b.b.a.x), -var_1)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> bool {
    global0 = array<bool, 23>();
    var var_0 = false;
    let var_1 = Struct_3(min(~_wgslsmith_mod_vec3_u32(u_input.b & global3.a, u_input.b | global3.a), ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, global3.a.x, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.d.x), vec3<u32>(4294967295u, 21820u, u_input.b.x)))), Struct_2(vec2<u32>(func_4(global3.b.e, -2147483647i, global3.b, global3.b).c, global3.b.c), global3.b.b, reverseBits(global3.b.c), 1012f, global3.b.e));
    var var_2 = -665f;
    let var_3 = _wgslsmith_dot_vec4_u32(~(~firstTrailingBit(vec4<u32>(u_input.d.x, 50289u, 103027u, 18500u) | vec4<u32>(0u, var_1.b.a.x, 4294967295u, 32675u))), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 0u) | vec4<u32>(var_1.b.c, global3.b.c, 27535u, arg_2)) >> (_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(u_input.d.x, 1278u, var_1.a.x, global3.b.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, arg_2, u_input.b.x, u_input.b.x), vec4<u32>(0u, var_1.b.c, 0u, u_input.b.x))) % vec4<u32>(32u)), abs(vec4<u32>(11435u, 1u, _wgslsmith_add_u32(var_1.a.x, var_1.a.x), arg_2))));
    return all(!vec2<bool>(var_1.b.e & false, false));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>) -> bool {
    global0 = array<bool, 23>();
    global1 = !any(!(!(!vec2<bool>(global0[_wgslsmith_index_u32(global3.a.x, 23u)], true))));
    let var_0 = arg_0.x;
    var var_1 = vec4<bool>(func_6(func_5(func_4(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], u_input.a, Struct_2(vec2<u32>(u_input.d.x, u_input.d.x), Struct_1(vec4<i32>(70534i, -47981i, -1i, -77296i)), u_input.b.x, 1282f, false), func_2(-614f, -2147483647i, vec3<f32>(-1464f, -1537f, -142f), global3.b)), vec4<bool>(true, all(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 23u)])), false, u_input.c.x >= global3.b.b.a.x)), global3.b.b, _wgslsmith_clamp_u32(abs(~u_input.d.x), global3.a.x, ~u_input.d.x)), arg_0.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0)) * _wgslsmith_f_op_f32(f32(-1f) * -235f)) * _wgslsmith_f_op_f32(-1095f - _wgslsmith_f_op_f32(-arg_1.x))), global0[_wgslsmith_index_u32(10741u, 23u)], true);
    let var_2 = firstLeadingBit(~(_wgslsmith_div_u32(~1u, ~global3.a.x) & global3.b.c));
    return func_6(Struct_1(global3.b.b.a), Struct_1(vec4<i32>(_wgslsmith_mod_i32(u_input.a, 46924i) & firstLeadingBit(0i), 0i, global3.b.b.a.x, global3.b.b.a.x)), u_input.b.x & ~_wgslsmith_div_u32(38242u, _wgslsmith_mult_u32(u_input.b.x, 0u)));
}

fn func_7(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<i32>) -> Struct_2 {
    global2 = global3.a.x;
    let var_0 = ~countOneBits(-u_input.c.zy);
    let var_1 = global3.b;
    global0 = array<bool, 23>();
    global2 = ~reverseBits(~4294967295u);
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(-var_1.d), arg_1.x))))), (~(-11675i ^ u_input.c.x) | _wgslsmith_sub_i32(_wgslsmith_div_i32(-1i, -23532i), arg_2.x >> (global3.b.c % 32u))) ^ -var_1.b.a.x, vec3<f32>(func_2(arg_0.d, (1i << (var_1.a.x % 32u)) << (global3.a.x % 32u), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(320f, -497f, var_1.d) - vec3<f32>(var_1.d, var_1.d, 188f)))), Struct_2(firstLeadingBit(arg_0.a), arg_0.b, ~4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -1112f), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.d.x), 23u)])).d, 449f, _wgslsmith_f_op_f32(round(var_1.d))), func_2(arg_0.d, min(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global3.b.b.a.x), func_5(Struct_2(arg_0.a, arg_0.b, global3.b.a.x, -111f, arg_0.e), arg_1).a.yy), _wgslsmith_clamp_i32(2147483647i, 13232i, reverseBits(global3.b.b.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-135f, arg_0.d, arg_0.d))), Struct_2(vec2<u32>(arg_0.a.x, ~37699u), global3.b.b, u_input.d.x, var_1.d, var_1.d < 873f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false;
    global0 = array<bool, 23>();
    global3 = Struct_3(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~(vec3<u32>(u_input.b.x, global3.b.c, u_input.b.x) ^ vec3<u32>(1u, 0u, 70096u)), vec3<u32>(u_input.b.x, global3.a.x, 0u) | (global3.a | vec3<u32>(global3.a.x, global3.b.a.x, 41999u))), vec3<u32>(_wgslsmith_sub_u32(u_input.d.x, 4294967295u) ^ 1u, select(~global3.a.x, _wgslsmith_add_u32(global3.b.c, 0u), true), _wgslsmith_clamp_u32(global3.a.x, 50946u, 0u) ^ 28443u)), global3.b);
    var var_0 = vec4<bool>(true, global3.b.e, (1898i ^ firstTrailingBit(-global3.b.b.a.x)) > u_input.c.x, 1u != (u_input.b.x >> (u_input.b.x % 32u)));
    var var_1 = func_7(global3.b, vec4<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.b.d - global3.b.d), global3.b.d)) <= _wgslsmith_f_op_f32(select(-608f, _wgslsmith_f_op_f32(-global3.b.d), func_1(vec2<f32>(491f, -579f), vec3<f32>(global3.b.d, global3.b.d, -277f)))), !var_0.x, !(-global3.b.b.a.x <= global3.b.b.a.x), true), vec4<i32>(abs(func_4(func_6(global3.b.b, global3.b.b, 81940u), 18554i, Struct_2(vec2<u32>(12088u, u_input.b.x), Struct_1(vec4<i32>(global3.b.b.a.x, global3.b.b.a.x, global3.b.b.a.x, 48748i)), 4294967295u, 2111f, global3.b.e), global3.b).b.a.x), -2147483647i, global3.b.b.a.x, _wgslsmith_sub_i32(-8335i, func_5(func_4(var_0.x, 2147483647i, Struct_2(vec2<u32>(36795u, 27300u), Struct_1(vec4<i32>(2147483647i, -2698i, global3.b.b.a.x, u_input.c.x)), global3.b.a.x, 871f, false), global3.b), !vec4<bool>(true, var_0.x, true, false)).a.x)));
    var var_2 = global3.b.b.a.x;
    let var_3 = func_5(func_7(global3.b, vec4<bool>(any(vec2<bool>(global3.b.e, var_0.x)), func_6(Struct_1(global3.b.b.a), func_7(Struct_2(global3.a.yy, var_1.b, 4294967295u, global3.b.d, global3.b.e), vec4<bool>(global3.b.e, true, true, var_1.e), vec4<i32>(u_input.c.x, var_1.b.a.x, 2147483647i, var_1.b.a.x)).b, u_input.d.x), select(true, true, var_1.e), all(var_0.zyz)), firstTrailingBit(-vec4<i32>(var_1.b.a.x, 0i, var_1.b.a.x, var_1.b.a.x) << (~vec4<u32>(4294967295u, 4294967295u, 1u, 0u) % vec4<u32>(32u)))), select(select(select(select(vec4<bool>(true, var_0.x, global0[_wgslsmith_index_u32(0u, 23u)], var_0.x), vec4<bool>(false, global3.b.e, global3.b.e, global0[_wgslsmith_index_u32(var_1.a.x, 23u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 23u)], global3.b.e)), !vec4<bool>(true, global3.b.e, var_1.e, true), global0[_wgslsmith_index_u32(0u, 23u)]), select(!vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(var_1.c, 23u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global3.b.e, global0[_wgslsmith_index_u32(35993u, 23u)], true), -14338i > global3.b.b.a.x), true), vec4<bool>(true, !(u_input.d.x >= var_1.a.x), true, global0[_wgslsmith_index_u32(~(~var_1.c), 23u)]), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(global3.a.zy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 430f, -1000f, 657f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.d, -117f, 425f, 467f))))) + vec4<f32>(_wgslsmith_div_f32(var_1.d, func_7(Struct_2(u_input.b.yz, var_1.b, var_1.c, global3.b.d, global0[_wgslsmith_index_u32(global3.b.c, 23u)]), vec4<bool>(false, true, var_1.e, global0[_wgslsmith_index_u32(18941u, 23u)]), vec4<i32>(u_input.a, u_input.c.x, var_1.b.a.x, var_1.b.a.x)).d), global3.b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, global3.b.d)) - func_4(false, -2147483647i, Struct_2(var_1.a, var_3, global3.a.x, var_1.d, var_1.e), Struct_2(var_1.a, var_3, 0u, 378f, false)).d), global3.b.d)));
}

