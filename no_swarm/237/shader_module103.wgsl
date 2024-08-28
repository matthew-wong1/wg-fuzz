struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(false, true, true, false));

var<private> global1: array<u32, 19>;

var<private> global2: array<vec3<u32>, 31>;

var<private> global3: array<Struct_2, 26>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: bool) -> u32 {
    global2 = array<vec3<u32>, 31>();
    global2 = array<vec3<u32>, 31>();
    global2 = array<vec3<u32>, 31>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(472f, _wgslsmith_f_op_f32(-951f + -2259f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2040f, 493f)), -454f, arg_3)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - -460f), _wgslsmith_div_f32(-906f, -849f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(2628f, 196f))))));
    let var_1 = !(any(vec3<bool>(arg_2.x, arg_0, true)) & any(global0.a.zy)) | true;
    return 11508u << ((4294967295u | global1[_wgslsmith_index_u32(7311u, 19u)]) % 32u);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global3 = array<Struct_2, 26>();
    let var_0 = Struct_2(arg_0.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -923f), _wgslsmith_f_op_f32(select(1000f, 1116f, false)), arg_1.e, -595f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.x, arg_2.e, arg_1.d.x, 311f)) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.d.x, -1296f, arg_2.d.x, arg_2.e), vec4<f32>(396f, arg_1.d.x, 1111f, 297f)))) + vec4<f32>(arg_1.d.x, 2279f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x + arg_1.d.x)), _wgslsmith_f_op_f32(738f - -1487f)))));
    let var_2 = _wgslsmith_f_op_f32(-1113f * arg_2.e);
    let var_3 = Struct_1(max(vec3<i32>(~(-14416i), arg_1.a.x, _wgslsmith_div_i32(reverseBits(-2147483647i), u_input.c.x)), reverseBits(_wgslsmith_clamp_vec3_i32(u_input.d, vec3<i32>(1i, 1i, arg_1.a.x), countOneBits(u_input.d)))), true, 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.x, -1506f, 1047f))))))), _wgslsmith_f_op_f32(min(arg_2.e, 1050f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x)));
}

fn func_2() -> bool {
    global3 = array<Struct_2, 26>();
    var var_0 = global3[_wgslsmith_index_u32(select(u_input.b >> (~54359u % 32u), _wgslsmith_add_u32(abs(global1[_wgslsmith_index_u32(4294967295u, 19u)]) << (30694u % 32u), 0u) << (reverseBits(u_input.a.x) % 32u), false), 26u)];
    let var_1 = Struct_1(u_input.d, !((u_input.e >> (global1[_wgslsmith_index_u32(u_input.a.x & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 19u)], 19u)] % 32u)) != 0i), u_input.a.x | ~global1[_wgslsmith_index_u32(~4294967295u, 19u)], vec3<f32>(_wgslsmith_f_op_f32(abs(-2562f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2062f - -1499f) - _wgslsmith_f_op_f32(f32(-1f) * -368f)), -1342f), 527f), _wgslsmith_f_op_f32(func_4(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], Struct_1(~countOneBits(u_input.c), true, _wgslsmith_mod_u32(36812u, func_3(var_0.a.x, global3[_wgslsmith_index_u32(75336u, 26u)], var_0.a.zwy, var_0.a.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1467f, 1000f, -388f) * vec3<f32>(-162f, -193f, 624f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-967f))))), Struct_1(reverseBits(vec3<i32>(2147483647i, u_input.d.x, 50951i)), false, 1u, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(441f, -478f, 220f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -614f))))));
    let var_2 = var_1.e;
    var var_3 = var_1;
    return any(global0.a);
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = vec3<i32>(-1i) * -u_input.c;
    let var_1 = Struct_2(global0.a);
    global0 = var_1;
    global0 = global3[_wgslsmith_index_u32(u_input.b | 1u, 26u)];
    let var_2 = all(vec4<bool>(!func_2(), var_1.a.x, var_1.a.x, _wgslsmith_f_op_f32(-arg_0) < arg_0));
    return global0.a.x;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: u32) -> Struct_1 {
    global3 = array<Struct_2, 26>();
    global0 = global3[_wgslsmith_index_u32(arg_3, 26u)];
    let var_0 = ~(~0i) <= _wgslsmith_dot_vec4_i32(min(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.e, arg_1.a.x, -44213i), vec4<i32>(arg_1.a.x, -2147483647i, arg_1.a.x, arg_1.a.x))), vec4<i32>(-77365i, max(-2147483647i, u_input.c.x), _wgslsmith_clamp_i32(2147483647i, -9247i, u_input.d.x), _wgslsmith_sub_i32(u_input.c.x, -1i))), _wgslsmith_add_vec4_i32(-(~vec4<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, 44689i)), vec4<i32>(-17437i, 16068i, 1i, _wgslsmith_mult_i32(-13836i, arg_1.a.x))));
    global3 = array<Struct_2, 26>();
    let var_1 = u_input.c.x;
    return Struct_1(_wgslsmith_mult_vec3_i32((vec3<i32>(1i, 1i, 1i) << (min(vec3<u32>(arg_1.c, 1u, arg_1.c), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.c, 19u)], 31u)]) % vec3<u32>(32u))) >> ((vec3<u32>(27630u, 1u, 1u) << (~vec3<u32>(arg_3, arg_3, 31526u) % vec3<u32>(32u))) % vec3<u32>(32u)), arg_1.a), any(select(select(global0.a, vec4<bool>(arg_2.x, arg_1.b, arg_2.x, global0.a.x), global0.a), select(vec4<bool>(global0.a.x, false, true, true), !global0.a, true), true)), abs(u_input.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.e, _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-835f * _wgslsmith_f_op_f32(-arg_1.d.x)))), 378f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 49107u), vec3<u32>(u_input.a.x, u_input.b, u_input.b))) >> (vec2<u32>(~19604u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(10731u, 4294967295u, 0u, u_input.b))) % vec2<u32>(32u))), vec2<u32>(~_wgslsmith_div_u32(u_input.b >> (1u % 32u), ~1u), _wgslsmith_dot_vec3_u32(~u_input.a.ywx, ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 19u)], 19u)], 4294967295u, u_input.a.x)))), 26u)];
    let var_1 = func_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-589f)))), -1016f)), -723f)), Struct_1(vec3<i32>(~2147483647i, -2147483647i, 2147483647i), !func_1(_wgslsmith_f_op_f32(trunc(1234f))), abs(u_input.b), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-126f, -209f, 677f)) - vec3<f32>(210f, -1000f, -601f)))), _wgslsmith_f_op_f32(f32(-1f) * -1461f)), var_0.a, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(73233u, 19u)], 19u)], 19u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45991u, 19u)], 19u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 19u)]), vec4<u32>(u_input.b, 73373u, 0u, 1u)) ^ vec4<u32>(u_input.b, 54164u, ~1u, reverseBits(33583u)), min(select(u_input.a, ~vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 0u, 4497u), true), u_input.a)), 19u)]);
    global2 = array<vec3<u32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_dot_vec4_i32(abs(countOneBits(vec4<i32>(48660i, 5003i, -1097i, 3743i))), -(vec4<i32>(-13561i, -1i, u_input.c.x, 1i) << (vec4<u32>(u_input.b, 4294967295u, var_1.c, u_input.b) % vec4<u32>(32u))))), func_5(var_1.d.x, Struct_1(u_input.c, func_1(var_1.e), ~_wgslsmith_add_u32(u_input.b, u_input.b), vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(var_1.e + 2231f), var_1.e), _wgslsmith_f_op_f32(-1f)), vec4<bool>(var_1.b, all(var_0.a.wzx), !(!var_1.b), true), 20371u).a.zz);
}

