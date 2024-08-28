struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(4031i, i32(-2147483648), 3845i), vec3<i32>(35i, i32(-2147483648), -37969i), vec3<i32>(24929i, -1i, 2147483647i), vec3<i32>(-13990i, 0i, 52637i), vec3<i32>(1i, -45502i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), 2147483647i), vec3<i32>(42495i, 2147483647i, 1i), vec3<i32>(-5505i, 0i, -10788i), vec3<i32>(-20216i, -52326i, i32(-2147483648)));

var<private> global1: Struct_2;

var<private> global2: Struct_3;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec2<bool> {
    var var_0 = -1000f;
    global1 = global2.a;
    let var_1 = max(vec4<i32>((-u_input.c.x << (arg_3 % 32u)) << (~firstLeadingBit(4294967295u) % 32u), -1i, global1.b.b.x, -u_input.a), vec4<i32>(global2.d.a.x, countOneBits(1i), ~arg_2.a.x, arg_2.a.x));
    let var_2 = Struct_3(Struct_2(vec2<bool>(global1.a.x, true), Struct_1(vec2<i32>(~1i, -42484i), u_input.c, 1u, ~select(global2.b.b.d, vec4<u32>(84530u, global2.a.b.d.x, arg_1.c, global1.c), false)), ~13665u), global2.a, vec3<i32>(u_input.c.x, _wgslsmith_mult_i32(global2.e.b.a.x, global1.b.a.x), ~u_input.a), Struct_1(var_1.wy, vec3<i32>(0i, var_1.x, i32(-1i) * -41967i), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(3900u, global2.e.c), global2.d.d.xw >> (arg_1.d.zz % vec2<u32>(32u))), ~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.d.x, 1u, arg_2.c, 1u), global2.d.d), vec4<u32>(5432u, u_input.b, 4294967295u, arg_3))), Struct_2(vec2<bool>(-var_1.x <= 35307i, global1.a.x), Struct_1(var_1.xx | vec2<i32>(-15116i, global1.b.b.x), ~arg_2.b, _wgslsmith_add_u32(_wgslsmith_add_u32(2421u, 6550u), _wgslsmith_mult_u32(arg_2.c, arg_2.d.x)), arg_2.d), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_2.d.zw, vec2<u32>(0u, 1u)), arg_1.d.yy)));
    var var_3 = var_2.a;
    return select(select(var_3.a, vec2<bool>(global2.e.a.x, true), all(var_3.a) && any(!vec3<bool>(var_3.a.x, false, false))), global2.e.a, !var_3.a.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3) -> u32 {
    let var_0 = all(arg_0);
    let var_1 = global2.d;
    var var_2 = arg_1.a;
    var_2 = global2.e;
    global2 = arg_1;
    return ~((arg_1.e.c | 4294967295u) & _wgslsmith_dot_vec4_u32(arg_1.e.b.d, _wgslsmith_mult_vec4_u32(global2.b.b.d, var_2.b.d)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> bool {
    global0 = array<vec3<i32>, 9>();
    var var_0 = vec4<u32>(func_4(!vec4<bool>(true, !global2.b.a.x, true, arg_2 | false), Struct_3(Struct_2(global1.a, global2.b.b, ~27390u), global2.e, max(reverseBits(global1.b.b), global0[_wgslsmith_index_u32(1u | u_input.b, 9u)]), Struct_1(vec2<i32>(u_input.c.x, 4567i), u_input.c, 41095u, vec4<u32>(4294967295u, arg_0.c, u_input.b, 31799u)), Struct_2(func_3(vec2<f32>(743f, -1422f), Struct_1(global2.a.b.b.yx, global1.b.b, 41524u, global2.d.d), global1.b, global1.b.c), arg_0, global1.b.d.x))), _wgslsmith_div_u32(u_input.b, ~func_4(select(vec4<bool>(global1.a.x, true, false, false), vec4<bool>(global2.b.a.x, global2.b.a.x, arg_2, arg_2), vec4<bool>(global1.a.x, true, global2.b.a.x, arg_2)), Struct_3(global2.a, global2.e, vec3<i32>(15436i, -2147483647i, -2147483647i), Struct_1(global1.b.a, arg_0.b, 0u, vec4<u32>(global1.b.c, 40223u, 1u, global1.c)), Struct_2(vec2<bool>(true, arg_2), Struct_1(vec2<i32>(global1.b.a.x, arg_0.a.x), vec3<i32>(global1.b.a.x, 4552i, global2.c.x), arg_0.c, global2.e.b.d), 1u)))), 0u, ~countOneBits(62589u));
    global0 = array<vec3<i32>, 9>();
    var var_1 = global2.e;
    var_1 = global2.a;
    return select(true, arg_2, false);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_2 {
    global0 = array<vec3<i32>, 9>();
    global2 = Struct_3(arg_2.a, arg_2.b, arg_2.b.b.b, global2.e.b, Struct_2(!select(select(arg_2.e.a, arg_2.a.a, arg_1.yx), func_3(vec2<f32>(763f, 327f), global2.b.b, global2.e.b, 4294967295u), any(global1.a)), Struct_1(arg_2.b.b.a, ~(~arg_2.c), 52705u, global1.b.d), _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.c, 1u, global1.b.c), vec3<u32>(1u, arg_2.d.c, 0u)), _wgslsmith_mult_u32(u_input.b, 1u)), 4294967295u)));
    let var_0 = Struct_2(vec2<bool>(true, true), Struct_1(~(vec2<i32>(0i, arg_2.e.b.b.x) >> (global1.b.d.xy % vec2<u32>(32u))), reverseBits(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(1i, 0i, global2.e.b.b.x)), vec3<i32>(2572i, -20011i, 2147483647i))), firstTrailingBit(~global1.c << (global2.b.c % 32u)), global1.b.d), 4294967295u);
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-709f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1220f + 1238f) + _wgslsmith_f_op_f32(max(-1678f, 1296f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-862f + -1385f))), -520f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1082f)), 1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(118f, -370f)))))));
    return Struct_2(select(vec2<bool>(false, !arg_0.x), !global2.b.a, func_3(vec2<f32>(1121f, _wgslsmith_f_op_f32(1029f * 1429f)), Struct_1(-vec2<i32>(u_input.c.x, var_1.b.a.x), vec3<i32>(33921i, global2.d.b.x, 20259i), 55458u ^ var_1.b.d.x, countOneBits(var_1.b.d)), Struct_1(u_input.c.yz, vec3<i32>(u_input.c.x, global2.a.b.a.x, -28790i), ~80839u, abs(global1.b.d)), abs(global2.e.c))), arg_2.a.b, 1u);
}

fn func_1() -> vec2<bool> {
    global1 = func_5(select(vec2<bool>(-8599i >= u_input.a, func_2(global2.a.b, _wgslsmith_f_op_f32(-1356f - 1018f), global2.e.a.x & global1.a.x)), global1.a, select(vec2<bool>(global2.a.a.x, all(global1.a)), !select(vec2<bool>(false, global2.e.a.x), global1.a, vec2<bool>(false, false)), vec2<bool>(true, true))), !vec3<bool>(any(!vec4<bool>(false, global2.b.a.x, false, true)), 46388u < firstLeadingBit(global1.b.d.x), true), Struct_3(Struct_2(!(!vec2<bool>(global1.a.x, global2.b.a.x)), global1.b, func_4(select(vec4<bool>(false, global2.a.a.x, false, false), vec4<bool>(global2.b.a.x, true, global2.b.a.x, true), true), Struct_3(global2.e, Struct_2(global1.a, global1.b, global2.a.b.c), u_input.c, global2.a.b, Struct_2(vec2<bool>(true, false), global1.b, global2.e.c)))), global2.e, _wgslsmith_clamp_vec3_i32(vec3<i32>(79878i, i32(-1i) * -1i, global1.b.a.x), -vec3<i32>(2147483647i, -2147483647i, -2147483647i), vec3<i32>(_wgslsmith_div_i32(8532i, -2147483647i), -19698i, ~(-7167i))), global1.b, global2.b));
    let var_0 = -_wgslsmith_dot_vec4_i32(~vec4<i32>(i32(-1i) * -1i, select(global2.a.b.a.x, u_input.c.x, global1.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.d.a.x, 1i, global1.b.a.x, u_input.a), vec4<i32>(55361i, -2147483647i, -8835i, u_input.c.x)), ~(-1i)), vec4<i32>(-(~0i), 9749i ^ ~global1.b.b.x, global1.b.b.x, _wgslsmith_div_i32(0i, i32(-1i) * -13741i)));
    var var_1 = any(select(select(select(vec3<bool>(global2.b.a.x, false, global2.e.a.x), select(vec3<bool>(true, global2.a.a.x, true), vec3<bool>(global2.b.a.x, true, false), vec3<bool>(false, false, false)), global2.e.a.x), select(!vec3<bool>(global1.a.x, global2.a.a.x, true), !vec3<bool>(true, false, global1.a.x), any(vec3<bool>(true, global1.a.x, global1.a.x))), vec3<bool>(func_3(vec2<f32>(-587f, 646f), Struct_1(vec2<i32>(-3497i, global2.d.b.x), global0[_wgslsmith_index_u32(u_input.b, 9u)], u_input.b, global1.b.d), global2.d, 1u).x, false, global1.a.x)), !(!(!vec3<bool>(true, global2.b.a.x, global2.a.a.x))), !select(vec3<bool>(true, true, true), !vec3<bool>(false, global1.a.x, global2.e.a.x), func_5(global1.a, vec3<bool>(false, global2.a.a.x, false), Struct_3(global2.a, global2.e, vec3<i32>(2147483647i, 0i, global1.b.b.x), global1.b, global2.e)).a.x)));
    let var_2 = func_5(global2.a.a, vec3<bool>(true, global2.b.a.x, ((global1.b.a.x >> (42593u % 32u)) < -9509i) | true), Struct_3(func_5(!select(global2.b.a, vec2<bool>(false, true), true), vec3<bool>(global2.a.a.x, true, false), Struct_3(global2.a, func_5(global2.a.a, vec3<bool>(true, global1.a.x, global1.a.x), Struct_3(Struct_2(global2.b.a, global1.b, u_input.b), Struct_2(vec2<bool>(false, global2.a.a.x), global1.b, 61623u), vec3<i32>(3549i, 0i, 7913i), global2.d, global2.a)), -vec3<i32>(-17197i, 3348i, -2147483647i), func_5(global1.a, vec3<bool>(false, global2.b.a.x, global1.a.x), Struct_3(Struct_2(global2.a.a, global1.b, global1.c), global2.a, vec3<i32>(u_input.a, 44040i, global1.b.a.x), Struct_1(global2.c.yz, global0[_wgslsmith_index_u32(global1.b.c, 9u)], global2.b.b.c, vec4<u32>(42402u, u_input.b, global1.c, global1.b.c)), global2.a)).b, Struct_2(vec2<bool>(global2.a.a.x, false), global2.b.b, global1.c))), Struct_2(select(global1.a, global1.a, false), func_5(global2.a.a, select(vec3<bool>(global2.b.a.x, false, global2.b.a.x), vec3<bool>(true, global1.a.x, global2.e.a.x), vec3<bool>(global1.a.x, global2.a.a.x, false)), Struct_3(global2.a, global2.e, vec3<i32>(2147483647i, u_input.c.x, -2147483647i), global2.b.b, global2.b)).b, func_4(!vec4<bool>(global2.e.a.x, false, false, global2.b.a.x), Struct_3(global2.b, global2.b, vec3<i32>(var_0, global2.c.x, global1.b.a.x), global1.b, global2.e))), -firstTrailingBit(global0[_wgslsmith_index_u32(u_input.b, 9u)]) >> (vec3<u32>(_wgslsmith_sub_u32(4294967295u, global2.a.b.d.x), global1.c, firstTrailingBit(4294967295u)) % vec3<u32>(32u)), func_5(global1.a, select(!vec3<bool>(global2.b.a.x, global1.a.x, global2.a.a.x), select(vec3<bool>(true, global2.b.a.x, false), vec3<bool>(global1.a.x, false, global2.b.a.x), vec3<bool>(true, global2.e.a.x, true)), false), Struct_3(Struct_2(vec2<bool>(global2.b.a.x, global1.a.x), global1.b, global2.b.c), global2.a, -u_input.c, func_5(global1.a, vec3<bool>(true, global1.a.x, true), Struct_3(Struct_2(global1.a, Struct_1(global1.b.b.yz, vec3<i32>(global2.e.b.a.x, 10314i, -49043i), global2.b.b.d.x, global1.b.d), global2.e.c), Struct_2(vec2<bool>(true, global2.b.a.x), global1.b, 0u), global2.c, global1.b, global2.b)).b, Struct_2(global2.b.a, global2.a.b, global1.c))).b, Struct_2(select(!vec2<bool>(global1.a.x, global1.a.x), vec2<bool>(true, true), vec2<bool>(global1.a.x, false)), func_5(global1.a, vec3<bool>(true, true, true), Struct_3(Struct_2(global2.b.a, Struct_1(global2.a.b.a, vec3<i32>(global1.b.b.x, var_0, -16858i), global1.b.d.x, global2.d.d), u_input.b), global2.b, vec3<i32>(-2147483647i, 0i, global2.e.b.b.x), Struct_1(global2.e.b.b.xz, vec3<i32>(18269i, 24430i, global1.b.a.x), 1u, global1.b.d), global2.b)).b, _wgslsmith_mod_u32(1u, func_4(vec4<bool>(false, global2.e.a.x, true, global2.e.a.x), Struct_3(Struct_2(vec2<bool>(false, false), global1.b, 38226u), Struct_2(vec2<bool>(global1.a.x, true), global2.d, global2.d.c), global1.b.b, global1.b, global2.e))))));
    global1 = func_5(!vec2<bool>(false, !(!var_2.a.x)), vec3<bool>(func_5(vec2<bool>(true, true), vec3<bool>(global2.a.a.x, global1.a.x, global1.a.x), Struct_3(Struct_2(global1.a, Struct_1(vec2<i32>(u_input.a, var_0), vec3<i32>(global1.b.a.x, u_input.a, global1.b.a.x), 4294967295u, var_2.b.d), 40422u), Struct_2(global1.a, Struct_1(vec2<i32>(var_2.b.b.x, global2.c.x), global1.b.b, var_2.b.d.x, vec4<u32>(22590u, 0u, 1u, 59900u)), global2.d.d.x), vec3<i32>(11551i, -47326i, 1i), var_2.b, global2.a)).a.x && global1.a.x, func_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -1000f))), global1.b, Struct_1(vec2<i32>(global2.d.a.x, -2147483647i), vec3<i32>(var_0, var_2.b.b.x, 0i), global1.c, global2.b.b.d), global2.b.c).x || false, false), Struct_3(var_2, global2.a, vec3<i32>(var_0, ~_wgslsmith_sub_i32(-29188i, global2.d.b.x), -var_2.b.a.x & 21942i), Struct_1(select(vec2<i32>(1i, var_0), u_input.c.yy & global1.b.a, var_2.a.x), ~vec3<i32>(3987i, var_0, u_input.c.x), 44523u, ~(vec4<u32>(u_input.b, global1.b.d.x, var_2.c, 0u) << (vec4<u32>(global2.a.b.d.x, global2.b.b.d.x, 0u, global1.b.c) % vec4<u32>(32u)))), Struct_2(select(vec2<bool>(false, global2.a.a.x), func_3(vec2<f32>(127f, -937f), global1.b, var_2.b, 0u), select(var_2.a, global2.e.a, vec2<bool>(global1.a.x, false))), Struct_1(-var_2.b.a, select(vec3<i32>(-2147483647i, -56522i, global1.b.a.x), var_2.b.b, false), 0u, ~global2.a.b.d), ~(~0u))));
    return func_5(!(!(!global2.e.a)), vec3<bool>(!all(select(vec3<bool>(global1.a.x, global2.e.a.x, global1.a.x), vec3<bool>(global1.a.x, false, false), var_2.a.x)), !(_wgslsmith_f_op_f32(trunc(1238f)) < _wgslsmith_f_op_f32(863f * 537f)), global1.a.x), Struct_3(Struct_2(global2.a.a, global2.d, _wgslsmith_sub_u32(firstTrailingBit(global2.a.c), abs(u_input.b))), global2.b, -vec3<i32>(global1.b.a.x, u_input.c.x, global1.b.a.x), Struct_1(global1.b.b.zz, firstLeadingBit(global0[_wgslsmith_index_u32(global2.a.c & global1.c, 9u)]), ~_wgslsmith_dot_vec3_u32(global2.d.d.wyz, vec3<u32>(0u, 60229u, 38686u)), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, u_input.b, global2.a.b.d.x), vec4<u32>(1u, 12833u, 0u, var_2.c)))), func_5(global2.a.a, select(select(vec3<bool>(global1.a.x, false, false), vec3<bool>(true, false, false), true), !vec3<bool>(true, var_2.a.x, global1.a.x), global2.a.a.x), Struct_3(func_5(var_2.a, vec3<bool>(global1.a.x, false, false), Struct_3(var_2, Struct_2(vec2<bool>(global2.a.a.x, global1.a.x), global2.d, 68091u), vec3<i32>(-1i, 1i, var_2.b.a.x), Struct_1(vec2<i32>(var_2.b.b.x, global1.b.a.x), var_2.b.b, global1.c, global1.b.d), Struct_2(vec2<bool>(true, global2.a.a.x), var_2.b, var_2.b.d.x))), Struct_2(var_2.a, var_2.b, var_2.b.c), global1.b.b, func_5(var_2.a, vec3<bool>(global2.a.a.x, global2.e.a.x, false), Struct_3(Struct_2(vec2<bool>(global2.b.a.x, false), var_2.b, u_input.b), global2.e, vec3<i32>(var_0, u_input.a, 1i), global2.e.b, Struct_2(global2.e.a, global1.b, var_2.c))).b, global2.e)))).a;
}

fn func_6(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_2) -> Struct_3 {
    let var_0 = arg_0;
    var var_1 = global2.e;
    global0 = array<vec3<i32>, 9>();
    global2 = Struct_3(func_5(func_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, arg_0.x), vec2<f32>(var_0.x, -347f), var_1.a)))), global1.b, Struct_1(vec2<i32>(1i, 1i), -vec3<i32>(u_input.c.x, 2147483647i, -40031i), select(global1.b.d.x, 102510u, global2.b.a.x), abs(vec4<u32>(u_input.b, global1.b.c, 22699u, 103170u))), arg_1.x), select(select(select(vec3<bool>(true, false, global2.b.a.x), vec3<bool>(true, true, arg_3.a.x), true), vec3<bool>(false, false, var_1.a.x), select(vec3<bool>(var_1.a.x, true, true), vec3<bool>(var_1.a.x, true, global1.a.x), vec3<bool>(global2.e.a.x, global2.a.a.x, global2.e.a.x))), !select(vec3<bool>(global2.a.a.x, false, false), vec3<bool>(global1.a.x, global1.a.x, true), vec3<bool>(false, false, global2.b.a.x)), select(!vec3<bool>(global1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(true, true, true), vec3<bool>(false, global1.a.x, true))), Struct_3(func_5(!vec2<bool>(false, var_1.a.x), vec3<bool>(false, true, var_1.a.x), Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(vec2<i32>(-1i, global2.a.b.b.x), vec3<i32>(u_input.a, global1.b.a.x, global2.d.a.x), arg_2, vec4<u32>(4294967295u, 3578u, var_1.b.c, 0u)), 3185u), Struct_2(global2.b.a, global1.b, 1u), global0[_wgslsmith_index_u32(arg_1.x, 9u)], Struct_1(vec2<i32>(arg_3.b.b.x, 35466i), vec3<i32>(u_input.a, global1.b.b.x, arg_3.b.a.x), 16964u, global1.b.d), arg_3)), func_5(global1.a, vec3<bool>(global2.b.a.x, false, true), Struct_3(arg_3, Struct_2(arg_3.a, Struct_1(global2.b.b.a, vec3<i32>(u_input.a, arg_3.b.b.x, var_1.b.b.x), 1902u, global2.e.b.d), var_1.b.c), u_input.c, Struct_1(vec2<i32>(u_input.a, -2147483647i), vec3<i32>(u_input.c.x, -39162i, -1i), 4294967295u, var_1.b.d), global2.a)), vec3<i32>(_wgslsmith_dot_vec2_i32(var_1.b.b.yy, vec2<i32>(var_1.b.a.x, global1.b.a.x)), -62984i & global1.b.a.x, ~global1.b.a.x), func_5(select(global2.b.a, vec2<bool>(global1.a.x, false), vec2<bool>(false, false)), !vec3<bool>(arg_3.a.x, false, global2.e.a.x), Struct_3(Struct_2(vec2<bool>(true, global1.a.x), var_1.b, 43588u), Struct_2(global1.a, global1.b, 1u), vec3<i32>(-2147483647i, 18751i, global1.b.a.x), Struct_1(global1.b.b.zy, vec3<i32>(global2.d.b.x, -14882i, 14955i), 0u, vec4<u32>(1u, 0u, 12591u, var_1.c)), global2.e)).b, Struct_2(arg_3.a, Struct_1(vec2<i32>(var_1.b.a.x, 2147483647i), global2.a.b.b, 21623u, vec4<u32>(5243u, var_1.c, 0u, 4294967295u)), var_1.c))), global2.a, vec3<i32>(_wgslsmith_clamp_i32(1i, global1.b.a.x, _wgslsmith_mod_i32(var_1.b.a.x << (arg_2 % 32u), 11951i)), 2147483647i, -(~arg_3.b.b.x)), global2.e.b, Struct_2(func_1(), func_5(vec2<bool>(false, arg_3.a.x && false), !select(vec3<bool>(global2.e.a.x, false, var_1.a.x), vec3<bool>(global2.e.a.x, false, global1.a.x), true), Struct_3(Struct_2(vec2<bool>(true, arg_3.a.x), global2.b.b, 4294967295u), global2.b, vec3<i32>(-2147483647i, -48820i, -19767i) | vec3<i32>(-85375i, 14883i, u_input.a), arg_3.b, func_5(global1.a, vec3<bool>(false, false, false), Struct_3(arg_3, Struct_2(vec2<bool>(false, arg_3.a.x), global1.b, global1.c), vec3<i32>(1i, 0i, global1.b.b.x), Struct_1(vec2<i32>(-2147483647i, global1.b.b.x), vec3<i32>(u_input.a, 1i, -84583i), 0u, vec4<u32>(global1.b.d.x, 2640u, global2.e.b.d.x, global2.d.d.x)), Struct_2(vec2<bool>(global1.a.x, arg_3.a.x), global2.a.b, var_1.c))))).b, ~(var_1.b.c >> (~1u % 32u))));
    let var_2 = 4294967295u;
    return Struct_3(arg_3, Struct_2(!(!select(global1.a, vec2<bool>(var_1.a.x, var_1.a.x), vec2<bool>(var_1.a.x, global1.a.x))), global1.b, ~((var_2 >> (global2.d.c % 32u)) << (global1.b.c % 32u))), _wgslsmith_clamp_vec3_i32(abs(-vec3<i32>(global1.b.a.x, global2.b.b.b.x, global2.d.b.x)), arg_3.b.b, u_input.c), func_5(func_1(), vec3<bool>(true, false, true), Struct_3(func_5(vec2<bool>(arg_3.a.x, global2.a.a.x), !vec3<bool>(false, arg_3.a.x, global2.a.a.x), Struct_3(global2.b, Struct_2(vec2<bool>(false, var_1.a.x), Struct_1(vec2<i32>(u_input.c.x, -27883i), vec3<i32>(global1.b.b.x, var_1.b.b.x, 2147483647i), arg_1.x, vec4<u32>(global1.b.d.x, 19145u, 4294967295u, 4294967295u)), u_input.b), vec3<i32>(2001i, -2147483647i, 85107i), Struct_1(vec2<i32>(var_1.b.a.x, 2147483647i), global2.c, var_2, global2.b.b.d), Struct_2(vec2<bool>(global1.a.x, var_1.a.x), Struct_1(vec2<i32>(u_input.c.x, var_1.b.a.x), global0[_wgslsmith_index_u32(arg_1.x, 9u)], 0u, vec4<u32>(global2.e.c, 19766u, arg_3.c, 70531u)), 4294967295u))), Struct_2(func_5(vec2<bool>(false, global1.a.x), vec3<bool>(global1.a.x, false, false), Struct_3(global2.e, global2.b, vec3<i32>(var_1.b.a.x, global1.b.a.x, global2.d.b.x), arg_3.b, global2.a)).a, func_5(global1.a, vec3<bool>(true, arg_3.a.x, var_1.a.x), Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec2<i32>(5419i, u_input.c.x), vec3<i32>(-2886i, -1i, -2147483647i), var_1.c, global2.a.b.d), arg_1.x), arg_3, vec3<i32>(2147483647i, 0i, 1i), var_1.b, arg_3)).b, _wgslsmith_mult_u32(arg_3.c, 1u)), vec3<i32>(reverseBits(arg_3.b.b.x), _wgslsmith_div_i32(global1.b.b.x, u_input.c.x), ~(-2147483647i)), var_1.b, global2.e)).b, global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global2 = func_6(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-128f + -982f) - _wgslsmith_f_op_f32(round(-945f))))), -186f, 326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(541f)), -564f)))), global2.b.b.d.ww, countOneBits(~u_input.b), Struct_2(func_1(), func_5(select(global2.e.a, global1.a, select(global2.e.a.x, global2.a.a.x, global2.b.a.x)), select(!vec3<bool>(true, global2.a.a.x, true), !vec3<bool>(true, global2.b.a.x, true), 0u < global2.d.d.x), Struct_3(global2.a, Struct_2(global1.a, global1.b, global1.b.d.x), vec3<i32>(0i, global1.b.b.x, global1.b.a.x), func_5(vec2<bool>(global2.a.a.x, true), vec3<bool>(false, false, false), Struct_3(Struct_2(vec2<bool>(global1.a.x, global1.a.x), Struct_1(vec2<i32>(-1i, 0i), global2.a.b.b, global2.a.c, global1.b.d), global2.d.c), Struct_2(global2.e.a, global2.e.b, u_input.b), vec3<i32>(-8312i, global2.b.b.a.x, global2.b.b.b.x), global2.b.b, Struct_2(global2.e.a, global1.b, global1.c))).b, global2.a)).b, abs(global1.b.c)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, 1i ^ u_input.c.x, abs(select(max(global1.b.d.ywz & global1.b.d.ywz, global2.e.b.d.xzx), _wgslsmith_add_vec3_u32(global2.a.b.d.zyw << (vec3<u32>(global1.b.c, 27230u, global2.a.b.c) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(global2.e.c, 10767u, u_input.b), global2.d.d.wzx)), any(global2.b.a))), global2.d.d.x, ~(~1u));
}

