struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(16814u, 7550u), vec2<u32>(41819u, 0u), vec2<u32>(0u, 1u), vec2<u32>(1u, 0u), vec2<u32>(18616u, 84503u), vec2<u32>(1u, 1u), vec2<u32>(0u, 27287u), vec2<u32>(1u, 4294967295u), vec2<u32>(59694u, 33597u), vec2<u32>(0u, 54083u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(59509u, 22409u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 37089u), vec2<u32>(26557u, 50970u), vec2<u32>(1u, 4294967295u), vec2<u32>(20856u, 0u), vec2<u32>(78557u, 0u), vec2<u32>(0u, 14144u), vec2<u32>(47466u, 4294967295u), vec2<u32>(12927u, 26149u), vec2<u32>(4294967295u, 5170u), vec2<u32>(0u, 1u), vec2<u32>(1u, 2462u), vec2<u32>(43961u, 13540u), vec2<u32>(12349u, 0u), vec2<u32>(38179u, 78492u));

var<private> global1: vec2<u32>;

var<private> global2: Struct_1 = Struct_1(-1i, 18160i, vec2<i32>(-3349i, -1i), 4279u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_3, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1356f)));
    var var_1 = ~_wgslsmith_mult_u32(reverseBits(0u), reverseBits(u_input.a) >> (~15602u % 32u));
    var var_2 = 864f;
    var_2 = _wgslsmith_f_op_f32(arg_2.d * 621f);
    let var_3 = arg_2.a;
    return var_3.a;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(abs(min(global2.a, u_input.b ^ global2.c.x)), -func_3(true, any(vec2<bool>(true, false)), Struct_3(Struct_1(39010i, 2147483647i, u_input.c, global2.d), vec3<bool>(true, true, true), vec3<u32>(global2.d, 0u, global1.x), 1502f), all(vec4<bool>(true, false, false, false))), -(~global2.c), global1.x), select(select(vec3<bool>(false, any(vec3<bool>(false, false, false)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), vec3<bool>(false, true, true), true), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(false, true, true), all(vec3<bool>(false, true, false)))), ~abs(abs(vec3<u32>(global1.x, u_input.a, 1u)) & vec3<u32>(u_input.a, global2.d, u_input.a)), 697f);
    let var_1 = global0[_wgslsmith_index_u32(1558u, 27u)];
    var var_2 = !var_0.b.x;
    let var_3 = select(select(vec2<bool>(var_0.b.x, all(!vec2<bool>(var_0.b.x, var_0.b.x))), select(select(vec2<bool>(false, false), !vec2<bool>(false, var_0.b.x), select(var_0.b.yz, vec2<bool>(var_0.b.x, var_0.b.x), var_0.b.yx)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(var_0.b.x, true), true)), false), vec2<bool>(false, true), var_0.b.yx);
    let var_4 = var_0.b.xx;
    return var_0.a;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: i32, arg_3: Struct_1) -> Struct_3 {
    let var_0 = !vec4<bool>(all(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false))), !(true || any(vec3<bool>(false, true, false))), 2147483647i <= _wgslsmith_mult_i32(1i, -arg_2), true && any(vec4<bool>(true, false, false, false)));
    let var_1 = arg_3;
    global2 = Struct_1(u_input.c.x >> (23665u % 32u), _wgslsmith_mult_i32(var_1.a, -_wgslsmith_add_i32(~u_input.b, 2147483647i)), -(~(~u_input.c)), var_1.d);
    let var_2 = u_input.a;
    var var_3 = !var_0.yyy;
    return Struct_3(func_2(global2.a), var_0.zxw, ~countOneBits(vec3<u32>(arg_0, var_1.d, _wgslsmith_clamp_u32(arg_3.d, u_input.a, 43408u))), 1f);
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: i32) -> vec3<u32> {
    var var_0 = min(15038u, 70215u);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -384f);
    var var_2 = !any(!(!select(arg_2, vec4<bool>(true, true, arg_1.b.x, true), true)));
    var var_3 = Struct_1(firstTrailingBit(_wgslsmith_add_i32(abs(~(-2147483647i)), max(0i, countOneBits(u_input.b)))), _wgslsmith_div_i32(arg_3, ~(50528i ^ arg_1.a.a)) >> (~abs(~1u) % 32u), func_4(~_wgslsmith_add_u32(1u, 32280u), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(-2147483647i, -1i, global2.a), vec3<i32>(1i, -1i, -34044i), vec3<bool>(arg_1.b.x, arg_2.x, arg_1.b.x)), -vec3<i32>(global2.c.x, -1i, 1i), select(vec3<i32>(arg_3, -2147483647i, global2.a), vec3<i32>(-5437i, -58113i, arg_1.a.b), vec3<bool>(arg_1.b.x, arg_2.x, true))), ~(-u_input.c.x), Struct_1(select(2147483647i, 26733i, true), 12009i, vec2<i32>(u_input.b, 0i), max(global1.x, arg_1.c.x))).a.c ^ (_wgslsmith_mult_vec2_i32(arg_1.a.c, _wgslsmith_add_vec2_i32(u_input.c, arg_1.a.c)) >> (~global0[_wgslsmith_index_u32(~41468u, 27u)] % vec2<u32>(32u))), firstTrailingBit(1u));
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-786f)) - _wgslsmith_f_op_f32(select(-1259f, -1290f, false)))) - -362f)));
    return vec3<u32>(~_wgslsmith_mod_u32(73478u, _wgslsmith_mult_u32(global1.x, 4624u) ^ _wgslsmith_add_u32(arg_1.a.d, global2.d)), 41750u, select(var_3.d, 64971u, false) >> (global1.x % 32u));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: i32) -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mod_i32(-21218i, firstTrailingBit(global2.a)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(8875i, arg_2, 2147483647i, global2.b), vec4<i32>(-2147483647i, 2147483647i, 15788i, -1i)), 12401i), -(~u_input.c), max(~_wgslsmith_sub_u32(1u, u_input.a), 0u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-461f, -105f, -1930f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2045f, 107f, 818f), vec3<f32>(308f, -211f, -555f))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1321f * -1329f)), _wgslsmith_f_op_f32(f32(-1f) * -2250f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(473f))))), func_5(false, func_4(arg_1.x, -firstLeadingBit(vec3<i32>(arg_2, 8728i, u_input.b)), ~arg_2, func_2(firstLeadingBit(arg_2))), !(!(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x))), -49737i), func_2(~(global2.a & arg_2)), func_2(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global2.a, u_input.b) | vec3<i32>(global2.a, 37323i, arg_2), vec3<i32>(26623i, 0i, -27026i) | vec3<i32>(u_input.b, 0i, arg_2)))));
    var_0 = Struct_2(func_4(countOneBits(u_input.a), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.d.a, -1i, -29344i), vec3<i32>(global2.a, global2.b, -6183i)), abs(vec3<i32>(-14102i, u_input.b, -45689i))) ^ ~(~vec3<i32>(var_0.d.c.x, global2.b, 55240i)), arg_2, func_4(706u, _wgslsmith_clamp_vec3_i32(~vec3<i32>(var_0.e.a, 2147483647i, arg_2), _wgslsmith_mult_vec3_i32(vec3<i32>(17823i, -56043i, var_0.d.a), vec3<i32>(8744i, global2.a, global2.c.x)), _wgslsmith_div_vec3_i32(vec3<i32>(35325i, u_input.b, u_input.b), vec3<i32>(-1211i, 0i, u_input.c.x))), _wgslsmith_dot_vec2_i32(u_input.c >> (var_0.c.yx % vec2<u32>(32u)), reverseBits(vec2<i32>(u_input.b, -22266i))), Struct_1(arg_2, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.b, var_0.a.a, -9474i), vec3<i32>(0i, arg_2, 58955i)), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.a.a, -1i), global2.c), _wgslsmith_dot_vec3_u32(arg_1.zyw, var_0.c))).a).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.b)) - var_0.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(~40113u, 18752u, global1.x) >> (var_0.c % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(u_input.a, 4294967295u, var_0.a.d)), _wgslsmith_div_vec3_u32(var_0.c, var_0.c)), func_2(~(-1i | u_input.c.x)), func_2(~(var_0.e.b >> (abs(65766u) % 32u))));
    global2 = func_2(var_0.a.a);
    var var_1 = func_2(-u_input.c.x);
    var var_2 = Struct_3(var_0.a, select(select(func_4(var_1.d | 4294967295u, select(vec3<i32>(6800i, 0i, -43056i), vec3<i32>(var_0.d.a, 2147483647i, var_0.d.b), false), global2.a >> (global1.x % 32u), func_2(var_1.a)).b, func_4(arg_1.x, vec3<i32>(-47159i, -20047i, u_input.c.x), var_0.e.a & 1i, var_0.d).b, arg_0.x), func_4(~var_1.d, _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 0i, global2.b), ~vec3<i32>(u_input.c.x, 5363i, arg_2), vec3<i32>(2147483647i, var_0.d.a, u_input.b) & vec3<i32>(var_1.a, arg_2, arg_2)), 1i, var_0.a).b, !any(vec2<bool>(true, false))), select(func_5(true, func_4(4294967295u, min(vec3<i32>(1i, 30701i, 55706i), vec3<i32>(7081i, arg_2, var_1.a)), _wgslsmith_sub_i32(global2.a, arg_2), Struct_1(-1i, -1i, vec2<i32>(-31308i, -2147483647i), 1u)), vec4<bool>(arg_0.x & false, 102221u != var_0.a.d, arg_0.x || true, !arg_0.x), (arg_2 >> (var_0.d.d % 32u)) ^ countOneBits(-2313i)), select(vec3<u32>(54654u, arg_1.x, 1u), vec3<u32>(global2.d, u_input.a, global2.d), vec3<bool>(false, true, false)) << (arg_1.yzy % vec3<u32>(32u)), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-408f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -137f)))), -878f));
    return vec2<bool>(true, !all(vec3<bool>(true, !var_2.b.x, false)));
}

fn func_6(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<bool>) -> Struct_1 {
    global1 = vec2<u32>(~4294967295u, ~1u);
    global2 = Struct_1(abs(abs(_wgslsmith_mult_i32(u_input.b, ~global2.a))), select(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-8185i, -5135i), -32700i) & (~u_input.b ^ firstLeadingBit(global2.b)), u_input.b, !all(select(vec2<bool>(arg_2.x, true), arg_2.zw, arg_2.x))), global2.c, _wgslsmith_dot_vec2_u32(~(~global0[_wgslsmith_index_u32(~105142u, 27u)]), max(arg_1, ~vec2<u32>(global1.x, global2.d))));
    return Struct_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(firstTrailingBit(-1i), ~u_input.c.x), vec2<i32>(global2.b, 0i)), ~(~0i), global2.c, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(true, ~vec2<u32>(4294967295u, ~79931u), vec4<bool>(!any(func_1(vec2<bool>(false, true), vec4<u32>(global2.d, global2.d, 27411u, global2.d), -23155i)), all(vec2<bool>(true, true)) == true, true, true));
    let var_0 = _wgslsmith_f_op_f32(-895f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-592f + -1275f)), 602f)));
    global2 = func_2(func_4(u_input.a, vec3<i32>(global2.b, _wgslsmith_sub_i32(2147483647i, global2.c.x) | -22484i, 11569i), u_input.b, func_2(abs(u_input.b) & select(-22554i, global2.a, false))).a.b);
    let var_1 = any(!vec3<bool>(_wgslsmith_f_op_f32(sign(var_0)) > -120f, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(global2.d, vec2<u32>(_wgslsmith_clamp_u32(max(~global1.x, ~32950u), 29442u, ~_wgslsmith_div_u32(24881u, 1u)), ~_wgslsmith_add_u32(_wgslsmith_div_u32(global2.d, global1.x), func_6(true, global0[_wgslsmith_index_u32(28868u, 27u)], vec4<bool>(var_1, false, false, true)).d)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_0, 1127f, 237f), vec4<f32>(-1000f, var_0, 156f, var_0), var_1))))))), vec4<u32>(~(global2.d ^ 29080u), 91834u, global1.x, global2.d), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1529f, -1369f, 1000f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(889f, 308f, var_0))))), vec3<f32>(-230f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -1850f))))));
}

