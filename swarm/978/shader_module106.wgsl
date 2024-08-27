struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(-45620i, vec2<i32>(2147483647i, 0i), Struct_1(true), vec4<u32>(1u, 4294967295u, 1u, 8083u), -1i), Struct_2(74984i, vec2<i32>(47385i, 1i), Struct_1(true), vec4<u32>(1u, 56231u, 4294967295u, 32453u), 1i), Struct_2(1i, vec2<i32>(1i, 10650i), Struct_1(true), vec4<u32>(4294967295u, 1u, 47068u, 1u), i32(-2147483648)), Struct_2(i32(-2147483648), vec2<i32>(-33041i, -12614i), Struct_1(false), vec4<u32>(0u, 0u, 4294967295u, 54924u), 13596i), Struct_2(-9541i, vec2<i32>(-5947i, 2147483647i), Struct_1(false), vec4<u32>(16600u, 4294967295u, 185u, 28453u), -1i), Struct_2(18299i, vec2<i32>(64703i, i32(-2147483648)), Struct_1(false), vec4<u32>(48366u, 1u, 0u, 2149u), 19902i), Struct_2(1i, vec2<i32>(-28930i, -14466i), Struct_1(true), vec4<u32>(1u, 4294967295u, 65107u, 4810u), 2147483647i), Struct_2(67165i, vec2<i32>(-1i, 10862i), Struct_1(false), vec4<u32>(37042u, 43654u, 1u, 0u), 0i), Struct_2(-1i, vec2<i32>(54861i, i32(-2147483648)), Struct_1(true), vec4<u32>(4294967295u, 17837u, 7936u, 5863u), i32(-2147483648)), Struct_2(i32(-2147483648), vec2<i32>(0i, 22878i), Struct_1(true), vec4<u32>(4294967295u, 38750u, 1u, 1u), -1i), Struct_2(25366i, vec2<i32>(-33469i, -22007i), Struct_1(true), vec4<u32>(1569u, 0u, 0u, 40264u), -5575i), Struct_2(29120i, vec2<i32>(1i, -1i), Struct_1(false), vec4<u32>(0u, 1u, 1u, 4294967295u), 47502i), Struct_2(-12773i, vec2<i32>(-1i, -57524i), Struct_1(false), vec4<u32>(4294967295u, 81967u, 48840u, 1u), -104503i), Struct_2(-52710i, vec2<i32>(0i, -9962i), Struct_1(false), vec4<u32>(54058u, 9637u, 1u, 34421u), -35i), Struct_2(0i, vec2<i32>(1i, -1i), Struct_1(false), vec4<u32>(46977u, 34056u, 24026u, 1u), 1i), Struct_2(0i, vec2<i32>(86742i, 7824i), Struct_1(true), vec4<u32>(0u, 7484u, 102045u, 30684u), 2147483647i), Struct_2(-1i, vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(true), vec4<u32>(0u, 20020u, 6590u, 33476u), 2147483647i), Struct_2(i32(-2147483648), vec2<i32>(1i, 41029i), Struct_1(true), vec4<u32>(1u, 0u, 19140u, 43236u), 38857i), Struct_2(0i, vec2<i32>(2147483647i, 0i), Struct_1(true), vec4<u32>(0u, 0u, 4294967295u, 78956u), 21705i), Struct_2(-37802i, vec2<i32>(4129i, 0i), Struct_1(true), vec4<u32>(13652u, 43379u, 0u, 4294967295u), i32(-2147483648)), Struct_2(-25035i, vec2<i32>(2147483647i, -1i), Struct_1(false), vec4<u32>(7576u, 0u, 4294967295u, 0u), 2147483647i), Struct_2(1i, vec2<i32>(57261i, 1i), Struct_1(true), vec4<u32>(72920u, 95347u, 1u, 12781u), 0i), Struct_2(70411i, vec2<i32>(15054i, 2147483647i), Struct_1(true), vec4<u32>(4294967295u, 1u, 4294967295u, 31567u), 1i), Struct_2(-44473i, vec2<i32>(15882i, -4283i), Struct_1(false), vec4<u32>(4294967295u, 38643u, 43335u, 4294967295u), -1i), Struct_2(-4140i, vec2<i32>(0i, i32(-2147483648)), Struct_1(false), vec4<u32>(1u, 58249u, 6674u, 11724u), 11093i), Struct_2(-3735i, vec2<i32>(-52982i, 1i), Struct_1(true), vec4<u32>(4294967295u, 12337u, 0u, 32410u), 0i), Struct_2(-1i, vec2<i32>(16192i, 2147483647i), Struct_1(true), vec4<u32>(1u, 0u, 4294967295u, 23815u), -23225i), Struct_2(-1i, vec2<i32>(i32(-2147483648), 1i), Struct_1(true), vec4<u32>(42964u, 34359u, 66917u, 10869u), 57031i));

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false));

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1559f + _wgslsmith_div_f32(-545f, -833f)) + _wgslsmith_f_op_f32(trunc(-261f)))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.a, u_input.a), 28u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(-1226f, var_0.x), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-163f, 802f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) * var_0.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(2731f - _wgslsmith_f_op_f32(abs(var_0.x))), 1787f, _wgslsmith_f_op_f32(max(266f, _wgslsmith_f_op_f32(714f - var_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-371f, 686f, var_0.x), vec3<f32>(-1000f, 512f, var_0.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1500f, var_0.x, 533f) * vec3<f32>(-391f, var_0.x, var_0.x)))), vec3<bool>(select(true, var_1.c.a, !var_1.c.a), true | all(vec4<bool>(var_1.c.a, arg_0.a, false, var_1.c.a)), var_1.c.a)))));
    global0 = array<Struct_2, 28>();
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-815f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_2.x, var_1.c.a)) + _wgslsmith_f_op_f32(var_2.x * var_0.x))), -282f), var_2.x);
    return select(vec3<bool>(var_1.c.a, !((var_1.e | 1i) <= (var_1.b.x << (1u % 32u))), true), select(select(select(!vec3<bool>(var_1.c.a, false, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, false), !vec3<bool>(false, false, var_1.c.a)), !(!vec3<bool>(var_1.c.a, var_1.c.a, var_1.c.a)), false), !select(select(vec3<bool>(arg_0.a, false, true), vec3<bool>(false, arg_0.a, true), vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), select(vec3<bool>(var_1.c.a, false, var_1.c.a), vec3<bool>(true, true, false), false), true), !vec3<bool>(var_1.c.a, all(vec4<bool>(arg_0.a, true, true, true)), arg_0.a)), select(vec3<bool>(true | all(vec2<bool>(false, false)), _wgslsmith_div_i32(2147483647i, var_1.b.x) >= -20321i, !(!var_1.c.a)), !vec3<bool>(!arg_0.a, var_1.c.a, true), !(!all(vec4<bool>(false, false, true, false)))));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = 0u;
    var_0 = abs(u_input.a.x);
    let var_1 = arg_0;
    var_0 = 1u;
    var var_2 = Struct_1(arg_1.x);
    return select(vec4<bool>(all(vec4<bool>(any(vec3<bool>(true, arg_1.x, var_2.a)), true, all(arg_1), true)), true, any(!arg_1), var_2.a), select(select(!select(vec4<bool>(false, var_2.a, false, var_2.a), vec4<bool>(arg_2.a, arg_1.x, arg_2.a, false), false), !(!vec4<bool>(false, var_2.a, true, var_2.a)), select(true, func_3(global1[_wgslsmith_index_u32(43798u, 28u)]).x, true)), vec4<bool>(false, arg_1.x, true, any(arg_1)), arg_1.x), false);
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    var var_0 = 172f;
    var var_1 = select(func_4(4294967295u ^ ~u_input.a.x, !select(func_3(Struct_1(true)), vec3<bool>(true, true, true), func_3(Struct_1(false))), Struct_1(true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(func_4(_wgslsmith_div_u32(u_input.a.x, 27283u), vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(u_input.a.x | u_input.a.x, 28u)]), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(true, false, true, true)), true, true, any(vec3<bool>(false, false, false)))), vec4<bool>(any(vec4<bool>(false, false, false, false)), false, !(arg_0.x <= arg_0.x), true)));
    let var_2 = true;
    var var_3 = Struct_2(2147483647i, ~arg_0.zw, global1[_wgslsmith_index_u32(u_input.a.x, 28u)], select(firstTrailingBit(_wgslsmith_div_vec4_u32(u_input.a & vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 97427u))), abs(u_input.a | u_input.a) >> (vec4<u32>(67729u, select(5196u, u_input.a.x, true), _wgslsmith_sub_u32(31625u, u_input.a.x), 4294967295u) % vec4<u32>(32u)), false), select(-arg_0.x, _wgslsmith_add_i32(arg_0.x, arg_0.x), all(vec3<bool>(var_1.x, true, true))) ^ arg_0.x);
    var var_4 = ~vec3<u32>(~(24027u | select(var_3.d.x, var_3.d.x, false)), _wgslsmith_mult_u32(~4294967295u, 20495u), _wgslsmith_div_u32(var_3.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 11385u), ~vec2<u32>(0u, 0u))));
    return countOneBits(max(countOneBits(_wgslsmith_sub_i32(_wgslsmith_sub_i32(2147483647i, var_3.e), 17412i | var_3.e)), firstLeadingBit(select(abs(-20276i), _wgslsmith_mult_i32(0i, arg_0.x), var_2))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(136f * _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(floor(1397f))))), _wgslsmith_f_op_f32(ceil(1987f)), 647f, _wgslsmith_f_op_f32(f32(-1f) * -734f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(step(1347f, arg_2))), -2097f, _wgslsmith_div_f32(arg_2, arg_2), -1271f)));
    let var_1 = Struct_2(select(1i, func_2(vec4<i32>(-2147483647i, -28174i, -6567i, 45122i)) ^ countOneBits(2147483647i), true), vec2<i32>(-(i32(-1i) * -884i), ~(-2147483647i)), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 43273u, u_input.a.x, u_input.a.x)), countOneBits(u_input.a)), ~u_input.a.x), 28u)], firstLeadingBit(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 14184u)), vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 0u), 1u, ~u_input.a.x), _wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.a.x, u_input.a.x, 81432u, u_input.a.x), u_input.a, vec4<bool>(true, false, arg_1, arg_1)), _wgslsmith_mod_vec4_u32(vec4<u32>(7336u, 69927u, 4294967295u, 4294967295u), u_input.a)))), _wgslsmith_mod_i32(~13555i, 1i));
    let var_2 = Struct_2(-2147483647i, -(~(vec2<i32>(var_1.e, var_1.e) | _wgslsmith_mult_vec2_i32(var_1.b, vec2<i32>(-13817i, 1i)))), global1[_wgslsmith_index_u32(firstTrailingBit(~min(~u_input.a.x, max(u_input.a.x, 0u))), 28u)], var_1.d, var_1.a);
    var var_3 = vec2<f32>(1931f, var_0.x);
    global0 = array<Struct_2, 28>();
    return (_wgslsmith_add_u32((u_input.a.x << (1u % 32u)) ^ var_1.d.x, 64683u) | var_1.d.x) ^ 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(true, all(vec2<bool>(true, false)), !any(vec3<bool>(true, true, true))), vec3<bool>(!all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), any(vec4<bool>(true, select(true, false, false), true, false)), true), !(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(475f * -857f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(721f, _wgslsmith_f_op_f32(step(-133f, 866f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1396f, 1124f)), vec2<f32>(296f, 466f))))));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_div_u32(func_1(u_input.a.x < u_input.a.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(673f + var_1.x))), ~(~40270u >> (~u_input.a.x % 32u))), u_input.a.x);
    global1 = array<Struct_1, 28>();
    var var_3 = max(u_input.a.xx, ~u_input.a.yy);
    var var_4 = vec2<bool>(var_0.x, var_0.x);
    let var_5 = true;
    let var_6 = _wgslsmith_dot_vec4_i32(abs(~(select(vec4<i32>(0i, -2147483647i, 21050i, -1i), vec4<i32>(-41543i, 2147483647i, 957i, 2147483647i), vec4<bool>(var_4.x, true, var_5, true)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-22679i, -34452i, -2147483647i, 2421i), vec4<i32>(1i, -29032i, -1i, 0i), vec4<i32>(0i, -37363i, 1i, 27454i)))), _wgslsmith_mult_vec4_i32(vec4<i32>(~(~2147483647i), ~(-108819i) << (var_3.x % 32u), ~1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -32538i), vec2<i32>(-2147483647i, 0i))), vec4<i32>(1i, 1i, 1i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(4294967295u, (var_3.x & var_3.x) >> (_wgslsmith_add_u32(var_3.x, 75482u) % 32u), u_input.a.x, 18112u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1160f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1121f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, var_1.x, 1970f), vec3<f32>(236f, var_1.x, var_1.x))))))));
}

