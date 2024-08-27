struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<bool>(false, false, false, true), -837f, vec2<f32>(-430f, 1000f)), Struct_1(vec4<bool>(false, false, false, true), -355f, vec2<f32>(-685f, 589f)), Struct_1(vec4<bool>(false, true, false, true), 1703f, vec2<f32>(850f, -216f)), Struct_1(vec4<bool>(true, true, false, true), 1723f, vec2<f32>(663f, 1100f)), Struct_1(vec4<bool>(false, false, true, false), -468f, vec2<f32>(1503f, 1488f)), Struct_1(vec4<bool>(true, false, true, true), 1275f, vec2<f32>(553f, -933f)), Struct_1(vec4<bool>(false, true, false, true), 499f, vec2<f32>(218f, 563f)), Struct_1(vec4<bool>(true, true, false, true), 176f, vec2<f32>(-567f, 750f)), Struct_1(vec4<bool>(true, false, false, true), -2419f, vec2<f32>(-1000f, -151f)), Struct_1(vec4<bool>(true, true, false, false), -2074f, vec2<f32>(-1582f, -156f)), Struct_1(vec4<bool>(false, true, true, true), 659f, vec2<f32>(1193f, -954f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = u_input.a;
    global0 = array<f32, 26>();
    var var_1 = ~_wgslsmith_sub_vec2_u32(firstLeadingBit(~arg_0.a.b), ~arg_0.a.b);
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.d.x, 1u), 11u)];
    var_0 = arg_0.a.b.x;
    return arg_0.a.a.b;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: bool) -> bool {
    var var_0 = arg_1.a;
    var_0 = arg_1.a;
    global1 = array<Struct_1, 11>();
    global1 = array<Struct_1, 11>();
    var var_1 = global1[_wgslsmith_index_u32(62846u, 11u)];
    return !(!(!var_0.a.a.x) || var_1.a.x);
}

fn func_2() -> Struct_2 {
    var var_0 = vec4<u32>(u_input.c.x, 4294967295u, firstTrailingBit(~u_input.d.x), 38592u);
    let var_1 = all(vec2<bool>(func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 26u)]))), Struct_3(Struct_2(global1[_wgslsmith_index_u32(var_0.x, 11u)], var_0.yx, vec3<i32>(u_input.b, u_input.b, 1i)), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(global1[_wgslsmith_index_u32(4294967295u, 11u)], vec2<u32>(0u, var_0.x), vec3<i32>(u_input.b, -1i, 1i)), -2147483647i)))), true), all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))))));
    let var_2 = Struct_1(select(select(select(!vec4<bool>(true, var_1, true, true), vec4<bool>(true, var_1, var_1, true), vec4<bool>(var_1, var_1, var_1, false)), select(!vec4<bool>(var_1, false, true, var_1), select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(false, var_1, true, var_1), var_1), true), select(!vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(true, true, var_1, false), true)), vec4<bool>(any(vec3<bool>(true, true, var_1)), var_1, var_1, var_1), true), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~(~4294967295u), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(58709u, var_0.x, var_0.x)), vec3<u32>(15189u, 1u, var_0.x))), 26u)], vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.x, 26u)] * global0[_wgslsmith_index_u32(34208u, 26u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 38552u), vec3<u32>(32812u, u_input.d.x, u_input.a)), 26u)])));
    var_0 = vec4<u32>(var_0.x, 1u, abs(~47124u), 101130u) ^ ~_wgslsmith_div_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(34668u, u_input.c.x, 2776u, 63145u), vec4<u32>(u_input.a, u_input.a, var_0.x, 1u))), countOneBits(vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 1u)));
    let var_3 = Struct_1(select(vec4<bool>(false != any(vec4<bool>(var_2.a.x, var_2.a.x, var_1, var_1)), false, any(select(vec3<bool>(var_1, var_2.a.x, false), var_2.a.wxx, false)), false), select(select(select(vec4<bool>(var_2.a.x, false, var_1, var_1), var_2.a, true), !vec4<bool>(var_2.a.x, false, var_2.a.x, var_1), select(vec4<bool>(var_1, var_2.a.x, true, var_1), var_2.a, false)), vec4<bool>(true, false, true, select(var_2.a.x, var_1, var_2.a.x)), true), all(!var_2.a) & true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-688f, 1131f, var_1)), 1000f, true))))), var_2.c);
    return Struct_2(var_3, ~(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, var_0.x), ~var_0.zy) >> ((var_0.yx | abs(var_0.xy)) % vec2<u32>(32u))), ~(~vec3<i32>(i32(-1i) * -2147483647i, firstLeadingBit(60557i), u_input.b)));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_1 {
    global0 = array<f32, 26>();
    var var_0 = ~(~(arg_1.a.b.x & ~(~49629u)));
    let var_1 = false;
    let var_2 = Struct_3(Struct_2(func_2().a, u_input.d, vec3<i32>(2147483647i, ~reverseBits(arg_1.b), arg_1.b)), ~abs(1i));
    global1 = array<Struct_1, 11>();
    return arg_1.a.a;
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec2<i32>(~u_input.b, -12692i);
    let var_1 = ~(u_input.d.x >> (~u_input.c.x % 32u));
    var_0 = max(vec2<i32>(var_0.x, ~1i), ~(-(vec2<i32>(u_input.b, var_0.x) | vec2<i32>(var_0.x, var_0.x))));
    let var_2 = Struct_2(func_5(!vec4<bool>(func_5(arg_1.a, Struct_3(Struct_2(arg_1, u_input.d, vec3<i32>(var_0.x, 2147483647i, var_0.x)), 119i)).a.x, arg_1.a.x || false, true, u_input.b <= u_input.b), Struct_3(func_2(), var_0.x)), u_input.c.xx, vec3<i32>(_wgslsmith_mod_i32(-6325i ^ var_0.x, -1i), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -1i, -1i), vec3<i32>(1i, u_input.b, u_input.b)), 24239i) & select(~vec3<i32>(10762i, u_input.b, -80613i), vec3<i32>(-11787i, 1i, var_0.x), !select(arg_1.a.wzy, vec3<bool>(arg_1.a.x, false, arg_1.a.x), vec3<bool>(false, arg_1.a.x, arg_1.a.x))));
    var_0 = func_2().c.xx;
    return Struct_1(select(!arg_1.a, vec4<bool>(-314f >= arg_0.x, all(!vec4<bool>(var_2.a.a.x, var_2.a.a.x, true, true)), any(func_2().a.a.yxy), _wgslsmith_mod_u32(var_2.b.x, var_2.b.x) != 39947u), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_5(vec4<bool>(var_2.a.a.x, arg_1.a.x, false, true), Struct_3(var_2, var_2.c.x)).b * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 26u)]))))), var_2.a.c);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 26u)];
    global1 = array<Struct_1, 11>();
    let var_1 = vec3<i32>(-u_input.b, -(~(-2147483647i) << (u_input.a % 32u)), abs(~(~(u_input.b ^ u_input.b))));
    global0 = array<f32, 26>();
    global1 = array<Struct_1, 11>();
    return func_6(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, _wgslsmith_add_u32(23354u, 23760u), ~u_input.d.x), 26u)]), -1291f), func_5(vec4<bool>(any(select(arg_0, vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(true, arg_0.x))), arg_0.x, arg_0.x, all(select(vec3<bool>(false, arg_0.x, false), vec3<bool>(true, arg_0.x, false), arg_0.x))), Struct_3(func_2(), max(22245i, arg_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 11>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-573f, 1783f))), -759f)));
    var var_1 = Struct_3(Struct_2(func_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 26u)], global0[_wgslsmith_index_u32(u_input.d.x, 26u)])) + vec2<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.a, 26u)])), vec3<f32>(869f, _wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(-1255f - global0[_wgslsmith_index_u32(u_input.a, 26u)])), -vec4<i32>(57561i, 2147483647i, u_input.b, 0i)), u_input.c.zy, firstTrailingBit(abs(abs(vec3<i32>(u_input.b, u_input.b, u_input.b))))), u_input.b);
    var var_2 = Struct_1(vec4<bool>(func_6(var_1.a.a.c, global1[_wgslsmith_index_u32(~1u, 11u)]).a.x && var_1.a.a.a.x, var_1.a.b.x != ~func_2().b.x, (-2147483647i & min(u_input.b, -47159i)) < -firstLeadingBit(0i), true), -918f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(478f, global0[_wgslsmith_index_u32(var_1.a.b.x, 26u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(21614u, 26u)]))), _wgslsmith_f_op_f32(-var_1.a.a.b)));
    var var_3 = Struct_3(Struct_2(var_1.a.a, max(_wgslsmith_div_vec2_u32(var_1.a.b, vec2<u32>(var_1.a.b.x, 0u)) << ((u_input.d << (vec2<u32>(0u, var_1.a.b.x) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(u_input.d.x, u_input.c.x) >> ((vec2<u32>(u_input.c.x, u_input.d.x) >> (var_1.a.b % vec2<u32>(32u))) % vec2<u32>(32u))), reverseBits(~reverseBits(var_1.a.c))), -u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(~(var_1.a.b.x | var_3.a.b.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1155f))) - _wgslsmith_f_op_f32(var_2.c.x - _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1u, 26u)])))), -250f, -1376f, func_2().a.c.x), vec4<u32>(~(u_input.a << (1236u % 32u)) >> (~(~4294967295u) % 32u), select(u_input.c.x, ~(~1u), false), _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(var_3.a.b.x), 0u, 53629u), u_input.c), ~1u), vec2<i32>(min(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(11970i, -1i), var_3.a.c.xy), func_2().c.x), u_input.b), ~countOneBits(-29136i)));
}

