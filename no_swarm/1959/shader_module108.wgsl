struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: u32,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(63245u, 4294967295u, 51079u, 67246u, 4294967295u, 62750u, 0u, 25499u, 1u, 5820u, 12509u, 3860u, 1u, 4294967295u, 0u, 52866u, 21882u, 0u, 50676u, 19192u, 0u);

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(60167i), Struct_1(-1i), Struct_1(1i), Struct_1(849i), Struct_1(-1i), Struct_1(-1i), Struct_1(3030i), Struct_1(0i), Struct_1(-38851i), Struct_1(-78001i), Struct_1(-31605i), Struct_1(5851i), Struct_1(2147483647i), Struct_1(-24983i), Struct_1(4602i), Struct_1(2147483647i), Struct_1(0i), Struct_1(-16975i), Struct_1(0i), Struct_1(0i), Struct_1(-4887i), Struct_1(0i));

var<private> global2: array<f32, 5> = array<f32, 5>(-609f, -806f, 1000f, 800f, 1000f);

var<private> global3: array<u32, 2> = array<u32, 2>(0u, 54363u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>) -> vec4<i32> {
    let var_0 = reverseBits(u_input.c.x);
    let var_1 = u_input.c;
    var var_2 = Struct_4(select(all(vec2<bool>(true, true)), true, false), true, _wgslsmith_mult_u32(4294967295u, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 2u)]), Struct_2(vec3<bool>(true, true, true), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(arg_1 >> (arg_1 % vec3<u32>(32u)), select(arg_1, u_input.a.zww, true)), global3[_wgslsmith_index_u32(1u, 2u)]), 2u)], abs(~(~arg_1.xx)), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_add_vec3_u32(arg_1 >> (u_input.a.xww % vec3<u32>(32u)), arg_1));
    var var_3 = Struct_4(true, var_2.b, abs(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27549u, 21u)], 2u)]), Struct_2(vec3<bool>(all(var_2.d.a), var_2.b, var_2.a), var_2.e.x, firstTrailingBit(u_input.a.yy), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -699f) + _wgslsmith_f_op_f32(round(var_2.d.d)))))), arg_1);
    global2 = array<f32, 5>();
    return max(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, var_1.x, -2147483647i, -14700i) | (vec4<i32>(-36648i, -44263i, 0i, u_input.c.x) ^ vec4<i32>(u_input.b, 0i, u_input.c.x, var_1.x)), vec4<i32>(u_input.b, 1i, 759i, -53573i) & firstLeadingBit(vec4<i32>(1i, var_0, -2147483647i, var_0)), -_wgslsmith_add_vec4_i32(vec4<i32>(var_0, 0i, 1i, 1i), vec4<i32>(u_input.c.x, 4541i, var_1.x, -2147483647i))), select(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(var_0, 65551i, 11699i, 1i)), abs(vec4<i32>(29287i, u_input.b, u_input.c.x, 19010i))), min(countOneBits(vec4<i32>(-2147483647i, var_1.x, 0i, 9100i)), -vec4<i32>(u_input.b, 1i, var_1.x, -46378i)), any(!vec2<bool>(var_3.b, var_2.b)))), _wgslsmith_clamp_vec4_i32(-((vec4<i32>(30911i, var_0, 4744i, 2147483647i) & vec4<i32>(u_input.b, 1i, var_0, 1i)) << (u_input.a % vec4<u32>(32u))), abs(-vec4<i32>(u_input.b, 2147483647i, var_0, 2147483647i) & _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_0, u_input.b, u_input.c.x), vec4<i32>(2147483647i, var_0, 0i, 0i))), select(abs(vec4<i32>(var_0, var_0, 2147483647i, var_0)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2615i, 2147483647i, 0i, var_1.x), vec4<i32>(-19702i, u_input.c.x, 1i, 2147483647i)), var_1.x & var_1.x, -u_input.b, _wgslsmith_div_i32(var_1.x, u_input.b)), !(!vec4<bool>(var_3.b, true, true, false)))));
}

fn func_2() -> u32 {
    global0 = array<u32, 21>();
    global3 = array<u32, 2>();
    var var_0 = select(vec2<i32>(u_input.c.x, -_wgslsmith_dot_vec4_i32(func_3(vec4<f32>(-172f, 1399f, global2[_wgslsmith_index_u32(70185u, 5u)], global2[_wgslsmith_index_u32(1u, 5u)]), vec3<u32>(1u, 4294967295u, 4300u)), ~vec4<i32>(2147483647i, u_input.b, u_input.c.x, 34934i))), -(~u_input.c), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true), vec2<bool>(true, any(vec3<bool>(false, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), true || all(vec3<bool>(true, false, true)))));
    global0 = array<u32, 21>();
    global3 = array<u32, 2>();
    return ~u_input.a.x;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: i32) -> Struct_2 {
    let var_0 = -arg_3;
    global0 = array<u32, 21>();
    let var_1 = _wgslsmith_mod_i32(var_0 ^ var_0, ~(~(~var_0)) << (1322u % 32u));
    let var_2 = firstLeadingBit(-16534i);
    global1 = array<Struct_1, 22>();
    return arg_1.d;
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_4(false, -reverseBits(u_input.b) != 44855i, _wgslsmith_dot_vec2_u32(~(max(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.yy) ^ vec2<u32>(0u, 138902u)), max(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), u_input.a.wx), u_input.a.zy & vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global3[_wgslsmith_index_u32(u_input.a.x, 2u)]), ~vec2<u32>(1u, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.zy))), func_4(func_2(), Struct_4(all(vec4<bool>(true, true, true, true)), true, ~1u << (reverseBits(global3[_wgslsmith_index_u32(1u, 2u)]) % 32u), Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)] & 20443u, u_input.a.xw >> (u_input.a.yz % vec2<u32>(32u)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 5u)] - global2[_wgslsmith_index_u32(21662u, 5u)])), vec3<u32>(max(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 0u), ~1459u, ~4294967295u)), abs(firstTrailingBit(u_input.a)) >> (_wgslsmith_clamp_vec4_u32(max(vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u)), _wgslsmith_mult_vec4_u32(u_input.a, u_input.a), ~u_input.a) % vec4<u32>(32u)), ~(i32(-1i) * -31613i)), vec3<u32>(20099u, ~global3[_wgslsmith_index_u32(u_input.a.x, 2u)], 4294967295u));
    let var_1 = vec2<f32>(var_0.d.d, _wgslsmith_div_f32(var_0.d.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-669f, 1236f), -559f)), -931f)));
    var var_2 = _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~abs(u_input.a.wz), u_input.a.ww), firstLeadingBit(~u_input.a.wy) >> (u_input.a.xz % vec2<u32>(32u)));
    var_2 = var_0.e.yz | u_input.a.ww;
    let var_3 = var_0.b;
    return (_wgslsmith_mod_vec4_u32(u_input.a, ~reverseBits(u_input.a)) | (vec4<u32>(~var_2.x, _wgslsmith_mult_u32(u_input.a.x, var_0.c), var_2.x >> (global3[_wgslsmith_index_u32(6510u, 2u)] % 32u), 66463u) << (vec4<u32>(func_2(), 1u, var_2.x, 21067u) % vec4<u32>(32u)))) & ~vec4<u32>(~4294967295u, min(1u, ~1u), ~global3[_wgslsmith_index_u32(67816u, 2u)], ~(~69219u));
}

fn func_5(arg_0: f32) -> Struct_4 {
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(32346u, 22u)], func_4(global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~0u, 141759u, 10348u), 2u)], Struct_4(all(vec4<bool>(true, false, false, false)) | true, _wgslsmith_dot_vec2_u32(u_input.a.zw, u_input.a.wz) >= firstTrailingBit(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(45455u, 2u)], 21u)]), abs(global3[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 2u)], 21u)], 2u)]), func_4(firstLeadingBit(73428u), Struct_4(false, false, 4294967295u, Struct_2(vec3<bool>(true, true, false), u_input.a.x, u_input.a.ww, -229f), vec3<u32>(global0[_wgslsmith_index_u32(0u, 21u)], 23406u, 4294967295u)), firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(10989u, 21u)], 67616u, global0[_wgslsmith_index_u32(0u, 21u)], 4294967295u)), min(u_input.b, 15583i)), _wgslsmith_mod_vec3_u32(~u_input.a.xwy, _wgslsmith_sub_vec3_u32(u_input.a.xww, u_input.a.ywy))), vec4<u32>(abs(min(global0[_wgslsmith_index_u32(34571u, 21u)], global3[_wgslsmith_index_u32(23347u, 2u)])), func_4(global3[_wgslsmith_index_u32(u_input.a.x, 2u)], Struct_4(false, false, 4294967295u, Struct_2(vec3<bool>(false, true, true), 101291u, u_input.a.xz, 404f), u_input.a.xww), vec4<u32>(1u, u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(33716u, 21u)]), u_input.b ^ u_input.b).b, _wgslsmith_dot_vec2_u32(reverseBits(u_input.a.zz), u_input.a.yz), ~(~32228u)), min(firstTrailingBit(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x)), select(firstTrailingBit(u_input.b), i32(-1i) * -2147483647i, true))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_sub_i32(-24691i, u_input.c.x)), -u_input.c) >> (4294967295u % 32u));
    var var_1 = ~vec4<u32>(51565u, ~39574u, 0u, func_4(60482u, Struct_4(true, !var_0.b.a.x, u_input.a.x, Struct_2(vec3<bool>(true, var_0.b.a.x, var_0.b.a.x), 1u, var_0.b.c, 2224f), u_input.a.yzy), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(31179u, 21u)], u_input.a.x, 1u, 0u), vec4<u32>(1256u, 54407u, global3[_wgslsmith_index_u32(4294967295u, 2u)], 5224u))), 10552i).b);
    var var_2 = var_0.a.a;
    global2 = array<f32, 5>();
    var var_3 = _wgslsmith_f_op_f32(abs(-765f));
    return Struct_4(true, true, _wgslsmith_div_u32(~(~reverseBits(4294967295u)), global0[_wgslsmith_index_u32(1u, 21u)] << (var_0.b.c.x % 32u)), func_4(u_input.a.x, Struct_4(false, true, ~reverseBits(1u), func_4(min(0u, 1u), Struct_4(var_0.b.a.x, var_0.b.a.x, 4294967295u, var_0.b, var_1.zxw), u_input.a, _wgslsmith_mult_i32(31036i, -2870i)), vec3<u32>(u_input.a.x, 0u, countOneBits(u_input.a.x))), ~vec4<u32>(1u, 10144u, ~u_input.a.x, _wgslsmith_clamp_u32(var_0.b.b, global0[_wgslsmith_index_u32(22329u, 21u)], 0u)), 52762i), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(32510u, _wgslsmith_clamp_u32(0u, var_1.x, u_input.a.x), reverseBits(global0[_wgslsmith_index_u32(888u, 21u)])), vec3<u32>(u_input.a.x, func_4(6645u, Struct_4(true, var_0.b.a.x, global0[_wgslsmith_index_u32(4294967295u, 21u)], Struct_2(vec3<bool>(false, var_0.b.a.x, var_0.b.a.x), 87094u, vec2<u32>(global3[_wgslsmith_index_u32(64546u, 2u)], global3[_wgslsmith_index_u32(0u, 2u)]), -1137f), vec3<u32>(86704u, u_input.a.x, 1u)), vec4<u32>(25527u, 4294967295u, 1u, 456u), u_input.c.x).b, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)], var_1.x), vec3<u32>(12534u, 33439u, var_0.b.b)), 2u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    global0 = array<u32, 21>();
    var var_1 = func_5(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_1(), u_input.a), 5u)], global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(select(u_input.a.wz, u_input.a.wz, vec2<bool>(false, true)), ~u_input.a.yy), 5u)])));
    var var_2 = 1u;
    var var_3 = ~_wgslsmith_sub_u32(~(22708u >> (global3[_wgslsmith_index_u32(var_1.e.x, 2u)] % 32u)), ~_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 2u)], global3[_wgslsmith_index_u32(27189u, 2u)])) & var_1.c;
    let var_4 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(521f - _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(13419u, 5u)], global2[_wgslsmith_index_u32(1u, 5u)])))));
    var_2 = ~56436u;
    let var_5 = vec2<u32>(~_wgslsmith_sub_u32(_wgslsmith_add_u32(~global3[_wgslsmith_index_u32(u_input.a.x, 2u)], var_1.d.b), 1u), _wgslsmith_mod_u32(var_1.d.b, ~var_1.d.b));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<i32>(_wgslsmith_mod_i32(3151i, u_input.b), ~u_input.c.x, -2147483647i << (0u % 32u), -44317i) >> (~min(u_input.a, vec4<u32>(81650u, 1u, 56464u, 0u)) % vec4<u32>(32u))), _wgslsmith_clamp_u32(abs(var_1.d.b), global3[_wgslsmith_index_u32(~((0u << (u_input.a.x % 32u)) | var_1.e.x), 2u)], 0u >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(var_5.x, var_1.e.x)) << (~27109u % 32u)) % 32u)), i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(-15730i, u_input.b)), var_0), ~(~(~_wgslsmith_mod_u32(0u, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 2u)]))));
}

