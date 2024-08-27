struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32 = 14880u;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(1i, -23690i), vec2<bool>(false, true));

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<i32>(-1i, 0i), vec2<bool>(false, true)), Struct_1(vec2<i32>(i32(-2147483648), 16024i), vec2<bool>(false, true)), Struct_1(vec2<i32>(-1i, -8771i), vec2<bool>(true, true)), Struct_1(vec2<i32>(0i, 1552i), vec2<bool>(false, false)), Struct_1(vec2<i32>(-10294i, -1i), vec2<bool>(true, false)), Struct_1(vec2<i32>(1i, i32(-2147483648)), vec2<bool>(false, true)), Struct_1(vec2<i32>(1i, 0i), vec2<bool>(true, true)), Struct_1(vec2<i32>(36595i, 2147483647i), vec2<bool>(true, true)), Struct_1(vec2<i32>(2147483647i, 4368i), vec2<bool>(false, true)), Struct_1(vec2<i32>(1i, 1i), vec2<bool>(true, true)), Struct_1(vec2<i32>(0i, -26184i), vec2<bool>(true, true)), Struct_1(vec2<i32>(-9570i, 0i), vec2<bool>(false, false)));

var<private> global4: array<vec4<u32>, 9>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(vec2<i32>(11650i, global0.a.a.x) << (_wgslsmith_mod_vec2_u32(max(~vec2<u32>(1u, u_input.b), reverseBits(vec2<u32>(u_input.b, 56037u))), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 5603u), vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(4294967295u, u_input.b))) % vec2<u32>(32u)), select(vec2<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(true, global2.b.x, true), vec3<bool>(global2.b.x, global2.b.x, global0.a.b.x))), global2.b.x), vec2<bool>(true, true), vec2<bool>(any(!vec3<bool>(true, global2.b.x, global2.b.x)), true)));
    let var_1 = Struct_2(global0.a);
    var var_2 = !(!select(!vec3<bool>(global0.a.b.x, false, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, var_1.a.b.x, true), vec3<bool>(global2.b.x, true, false)), !vec3<bool>(false, true, global2.b.x)), all(select(vec3<bool>(false, true, global2.b.x), vec3<bool>(global0.a.b.x, var_1.a.b.x, global0.a.b.x), true))));
    let var_3 = var_1;
    let var_4 = select(_wgslsmith_mod_i32(select(_wgslsmith_add_i32(-29692i, 1i), var_1.a.a.x & -62631i, var_0.b.x && true), 1i) ^ global0.a.a.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(2147483647i, u_input.c)), vec2<i32>(-21726i, var_3.a.a.x)), var_1.a.a.x) << (reverseBits(~4294967295u) % 32u), var_2.x);
    return vec4<bool>(611f < _wgslsmith_f_op_f32(trunc(251f)), all(vec4<bool>(all(!vec3<bool>(var_1.a.b.x, true, true)), var_3.a.b.x, global0.a.b.x, false)), false, true);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: f32) -> vec2<bool> {
    global3 = array<Struct_1, 12>();
    global2 = global3[_wgslsmith_index_u32(select(~0u, firstTrailingBit(_wgslsmith_dot_vec3_u32(abs(min(vec3<u32>(arg_1.a.x, u_input.b, 38003u), vec3<u32>(arg_1.a.x, arg_1.a.x, 8200u))), vec3<u32>(u_input.a, 1u, _wgslsmith_add_u32(u_input.b, 10641u)))), global2.b.x), 12u)];
    let var_0 = -1249f;
    var var_1 = select(_wgslsmith_sub_vec3_u32(arg_1.a, _wgslsmith_mod_vec3_u32(arg_1.a, (arg_1.a & vec3<u32>(3291u, 4294967295u, 4294967295u)) & vec3<u32>(arg_1.a.x, arg_1.a.x, 1u))), _wgslsmith_mult_vec3_u32(max(arg_1.a, ~min(arg_1.a, vec3<u32>(0u, 4294967295u, 4294967295u))), ~(arg_1.a >> (~vec3<u32>(arg_1.b, 1u, u_input.b) % vec3<u32>(32u)))), func_3().ywy);
    let var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(453f, -1141f) - _wgslsmith_f_op_f32(trunc(var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(297f, var_0))))), -682f, _wgslsmith_f_op_f32(arg_2 + 1f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -168f), var_0, -2394f, _wgslsmith_f_op_f32(sign(-175f)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(494f)))), var_0, 271f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))))))));
    return select(arg_0.xw, !arg_0.xx, select(select(func_3().xy, global2.b, global0.a.b), vec2<bool>(global0.a.b.x, false), select(global0.a.b, vec2<bool>(false, global2.b.x), vec2<bool>(any(arg_0), any(vec2<bool>(false, false))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = false;
    var_0 = !(false && (-2147483647i != ~global0.a.a.x));
    global1 = firstLeadingBit(u_input.b);
    return Struct_2(Struct_1(vec2<i32>(-(26137i & arg_3.x), 12693i), select(vec2<bool>(global0.a.b.x, any(vec4<bool>(arg_1.a.b.x, global2.b.x, false, false))), func_4(func_3(), Struct_3(vec3<u32>(u_input.b, 4294967295u, u_input.a), 4294967295u), -1069f), func_4(!vec4<bool>(true, global0.a.b.x, false, false), Struct_3(vec3<u32>(39439u, u_input.a, 1u), 1u), -422f))));
}

fn func_1(arg_0: Struct_3) -> vec2<u32> {
    global0 = func_2(vec2<i32>(global2.a.x, 2147483647i), Struct_2(Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.a.x, 38853i, global0.a.a.x, global2.a.x), vec4<i32>(u_input.c, global2.a.x, global0.a.a.x, 1i)), ~47175i), vec2<bool>(!global0.a.b.x, true))), -274f, vec4<i32>(~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(9526i, global2.a.x, -2147483647i, global0.a.a.x)), vec4<i32>(-1i, u_input.c, 1i, global0.a.a.x) >> (global4[_wgslsmith_index_u32(u_input.a, 9u)] % vec4<u32>(32u))), abs(global0.a.a.x), global2.a.x, ~global0.a.a.x));
    var var_0 = vec2<i32>(~(-23793i), firstTrailingBit(_wgslsmith_dot_vec4_i32(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.a.x, u_input.c, -6375i, global0.a.a.x), vec4<i32>(global2.a.x, 0i, -2147483647i, global2.a.x), vec4<i32>(-47252i, -23593i, u_input.c, u_input.c)), firstLeadingBit(vec4<i32>(40349i, -26795i, -2147483647i, -43123i))), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, global2.a.x, global2.a.x, u_input.c) & vec4<i32>(u_input.c, -1i, 2147483647i, 37469i), vec4<i32>(u_input.c, u_input.c, -2147483647i, 69366i)))));
    var var_1 = Struct_3(~vec3<u32>(1u, 1u, arg_0.a.x), abs(arg_0.a.x) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, arg_0.b) << (vec2<u32>(arg_0.a.x, 4294967295u) % vec2<u32>(32u)), vec2<u32>(arg_0.a.x, u_input.a))));
    var var_2 = vec3<bool>(!global0.a.b.x, ~abs(_wgslsmith_mod_u32(var_1.b, 4294967295u)) >= ~abs(arg_0.a.x & 31800u), func_4(vec4<bool>(true, true, true, true), Struct_3(reverseBits(vec3<u32>(1u, 34864u, u_input.b)), 4294967295u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-369f, 1779f)), -922f))).x);
    global2 = func_2(global0.a.a >> (var_1.a.xx % vec2<u32>(32u)), func_2(global0.a.a, Struct_2(Struct_1(global2.a, global2.b)), 1150f, ~(-countOneBits(vec4<i32>(u_input.c, global2.a.x, 0i, global2.a.x)))), -415f, vec4<i32>(-2147483647i, ~var_0.x, 15522i, -global2.a.x & _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(1i, -36839i, 407i, u_input.c)), reverseBits(vec4<i32>(global2.a.x, 4520i, -1i, -1i))))).a;
    return var_1.a.yz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = Struct_3(select(vec3<u32>(~93376u, 4294967295u, _wgslsmith_div_u32(u_input.a, 34001u)), ~vec3<u32>(u_input.b, u_input.b, 1u), !select(true, global0.a.b.x, var_0)) << (~abs(vec3<u32>(u_input.b, u_input.b, u_input.a)) % vec3<u32>(32u)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.a, 4294967295u), func_1(Struct_3(vec3<u32>(u_input.b, 0u, 1u), 0u))), firstTrailingBit(vec2<u32>(0u, 20200u) | vec2<u32>(u_input.b, 24248u))), 28869u));
    global0 = func_2(~(global2.a >> (var_1.a.zz % vec2<u32>(32u))), func_2(~vec2<i32>(u_input.c ^ -2147483647i, countOneBits(2147483647i)), func_2(~(vec2<i32>(global0.a.a.x, -40199i) << (vec2<u32>(u_input.b, u_input.a) % vec2<u32>(32u))), func_2(~global0.a.a, Struct_2(Struct_1(global2.a, global2.b)), -1699f, -vec4<i32>(-2147483647i, -2147483647i, global2.a.x, 2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1280f) * _wgslsmith_f_op_f32(select(725f, -773f, true))), ~(~vec4<i32>(global0.a.a.x, -7118i, global0.a.a.x, 5310i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-678f)) - _wgslsmith_f_op_f32(f32(-1f) * -858f)), max(firstTrailingBit(max(vec4<i32>(1i, -74347i, 18174i, global2.a.x), vec4<i32>(22466i, -1i, 66024i, global2.a.x))), select(vec4<i32>(global2.a.x, -1i, u_input.c, u_input.c), vec4<i32>(global0.a.a.x, 2147483647i, 11107i, global0.a.a.x), vec4<bool>(global2.b.x, var_0, global0.a.b.x, true)) & -vec4<i32>(global0.a.a.x, 44513i, 2147483647i, global0.a.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1213f))))), vec4<i32>(_wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.a.x, global2.a.x, global0.a.a.x, 14609i), vec4<i32>(global2.a.x, -4776i, global2.a.x, -6398i), vec4<i32>(54201i, 13879i, 35642i, global2.a.x)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.c, 0i, 14782i), vec4<i32>(10589i, -41894i, 1i, global2.a.x), vec4<i32>(u_input.c, 2147483647i, global2.a.x, global0.a.a.x))), select(_wgslsmith_div_i32(global0.a.a.x, abs(global0.a.a.x)), _wgslsmith_dot_vec2_i32(-vec2<i32>(global0.a.a.x, u_input.c), global0.a.a << (var_1.a.yz % vec2<u32>(32u))), func_3().x), 1i, -1i));
    var var_2 = Struct_3(~_wgslsmith_div_vec3_u32(abs(firstTrailingBit(vec3<u32>(u_input.a, 75546u, var_1.b))), min(var_1.a, ~vec3<u32>(6273u, u_input.b, 6402u))), 1u);
    let var_3 = 0i;
    let var_4 = Struct_3(_wgslsmith_mult_vec3_u32(var_2.a, _wgslsmith_clamp_vec3_u32(abs(firstTrailingBit(var_2.a)), var_1.a, vec3<u32>(var_1.b, ~4294967295u, var_1.a.x))), 0u);
    global2 = func_2(~select(~global2.a, global0.a.a, global2.b.x), func_2(global0.a.a, func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(var_3, -33738i), vec2<i32>(-13178i, u_input.c)), func_2(vec2<i32>(-1339i, 15548i), Struct_2(Struct_1(vec2<i32>(var_3, -2147483647i), vec2<bool>(false, var_0))), _wgslsmith_div_f32(705f, 1000f), vec4<i32>(1i, -46873i, var_3, u_input.c)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), reverseBits(select(vec4<i32>(global0.a.a.x, u_input.c, 1i, 0i), vec4<i32>(global0.a.a.x, -21488i, var_3, 2147483647i), false))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1797f + 497f)))), vec4<i32>(countOneBits(var_3), firstLeadingBit(select(2147483647i, 34078i, true)), firstTrailingBit(select(u_input.c, 31779i, false)), global0.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -163f)), _wgslsmith_f_op_f32(trunc(1f))))), countOneBits((vec4<i32>(-35251i, u_input.c, 1i, var_3) << (~global4[_wgslsmith_index_u32(1u, 9u)] % vec4<u32>(32u))) >> (global4[_wgslsmith_index_u32(min(firstLeadingBit(var_1.b), 1u), 9u)] % vec4<u32>(32u)))).a;
    let var_5 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1849f - 462f) - -794f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -224f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(592f, -416f, false)) - _wgslsmith_f_op_f32(f32(-1f) * -619f)))), true));
    let var_6 = Struct_2(global3[_wgslsmith_index_u32(var_1.a.x | 93239u, 12u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(615f, _wgslsmith_f_op_f32(f32(-1f) * -815f)));
}

