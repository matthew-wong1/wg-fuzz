struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(0u, 1u, 27698u), vec3<u32>(1u, 1u, 0u), vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 24216u, 1u), vec3<u32>(84781u, 0u, 4294967295u), vec3<u32>(44709u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 1u, 10694u), vec3<u32>(0u, 1u, 0u), vec3<u32>(0u, 4294967295u, 38217u), vec3<u32>(11713u, 38310u, 1u), vec3<u32>(86962u, 16239u, 1u), vec3<u32>(4294967295u, 32864u, 1u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(0u, 0u, 74459u), vec3<u32>(29806u, 39624u, 4294967295u), vec3<u32>(618u, 5482u, 19838u), vec3<u32>(0u, 3084u, 4294967295u), vec3<u32>(29076u, 94424u, 67306u), vec3<u32>(2685u, 19509u, 0u), vec3<u32>(997u, 65810u, 1u), vec3<u32>(4934u, 54616u, 4294967295u), vec3<u32>(44324u, 1u, 11075u), vec3<u32>(14261u, 0u, 94663u), vec3<u32>(1u, 1u, 32291u), vec3<u32>(0u, 29603u, 2912u), vec3<u32>(2656u, 18791u, 1u), vec3<u32>(1984u, 0u, 51818u), vec3<u32>(4294967295u, 13357u, 4294967295u), vec3<u32>(1u, 1u, 29277u), vec3<u32>(14336u, 82742u, 17469u), vec3<u32>(81393u, 39220u, 4294967295u));

var<private> global1: array<u32, 17>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

var<private> global3: Struct_1 = Struct_1(false, vec3<i32>(i32(-2147483648), -39863i, 17644i));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = Struct_1(global3.a, vec3<i32>(-1i & -global3.b.x, _wgslsmith_dot_vec3_i32(global3.b, global3.b), abs(global3.b.x)) | vec3<i32>(~_wgslsmith_add_i32(global3.b.x, global3.b.x), firstLeadingBit(abs(global3.b.x)), 2147483647i));
    let var_1 = Struct_3(~countOneBits(vec2<u32>(global1[_wgslsmith_index_u32(25402u, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)]) ^ (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26525u, 17u)], 17u)], global1[_wgslsmith_index_u32(44244u, 17u)]) & vec2<u32>(u_input.a, 29061u))), var_0);
    let var_2 = ~(select(-vec2<i32>(1i, global3.b.x), reverseBits(vec2<i32>(1i, 1i)), ~16742u <= (4797u ^ var_1.a.x)) >> (min(vec2<u32>(~4294967295u, ~var_1.a.x), _wgslsmith_clamp_vec2_u32(~vec2<u32>(60626u, 1u), vec2<u32>(61986u, var_1.a.x), abs(vec2<u32>(85782u, u_input.a)))) % vec2<u32>(32u)));
    global3 = var_1.b;
    let var_3 = max(firstLeadingBit(vec2<i32>(var_0.b.x, -1i)), var_1.b.b.yx);
    return _wgslsmith_add_i32(firstTrailingBit(i32(-1i) * -36978i), var_0.b.x) ^ (~countOneBits(35102i) >> (var_1.a.x % 32u));
}

fn func_2() -> vec2<bool> {
    var var_0 = true | !global3.a;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-358f - -696f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-284f, _wgslsmith_f_op_f32(select(-435f, 1174f, global2.x)), true)))), global3.a));
    let var_2 = ~(~(~_wgslsmith_div_u32(u_input.a, ~7574u)));
    var var_3 = max(abs(func_3(var_1) | global3.b.x), global3.b.x >> (u_input.a % 32u));
    let var_4 = Struct_3(_wgslsmith_mod_vec2_u32(reverseBits(~firstTrailingBit(vec2<u32>(u_input.a, 29157u))), vec2<u32>(~28844u | (var_2 | var_2), reverseBits(~69361u))), Struct_1(false, global3.b));
    return select(global2.xy, global2.yz, global2.zx);
}

fn func_1() -> u32 {
    var var_0 = Struct_1(any(!(!func_2())), reverseBits(global3.b));
    var var_1 = _wgslsmith_div_vec3_u32(global0[_wgslsmith_index_u32(u_input.a, 31u)], vec3<u32>(2189u, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 17u)] ^ 2270u, 31u)], ~(~vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 17u)], u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 17u)]))), u_input.a));
    let var_2 = _wgslsmith_mult_vec3_i32(abs(_wgslsmith_sub_vec3_i32(var_0.b | _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b.x, var_0.b.x, 1i), global3.b, vec3<i32>(0i, var_0.b.x, -1i)), ~abs(var_0.b))), var_0.b);
    var_1 = _wgslsmith_add_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 20530u, 21374u), ~vec3<u32>(var_1.x, 9379u, 4825u), vec3<u32>(global1[_wgslsmith_index_u32(5573u, 17u)], 41979u, 0u) ^ vec3<u32>(u_input.a, var_1.x, u_input.a))), ~max(max(global0[_wgslsmith_index_u32(~41896u, 31u)], vec3<u32>(var_1.x, var_1.x, 26442u) | global0[_wgslsmith_index_u32(13039u, 31u)]), vec3<u32>(41483u, ~3736u, var_1.x << (39205u % 32u))));
    global2 = !(!select(select(!vec3<bool>(global3.a, true, var_0.a), vec3<bool>(var_0.a, global2.x, false), vec3<bool>(global3.a, global3.a, var_0.a)), !(!vec3<bool>(global2.x, false, global3.a)), select(vec3<bool>(var_0.a, false, global3.a), vec3<bool>(false, var_0.a, true), vec3<bool>(false, var_0.a, var_0.a))));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 31>();
    let var_0 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~reverseBits(100799u), 17u)], abs(min(0u, u_input.a))), func_1()), ~max(115356u, 12321u) ^ ~u_input.a);
    let var_1 = Struct_2(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(global3.b, vec3<i32>(global3.b.x, 0i, global3.b.x)), _wgslsmith_sub_i32(2147483647i, global3.b.x)), 0i, ~global3.b.x) ^ -firstLeadingBit(vec3<i32>(-2147483647i, global3.b.x, global3.b.x) >> (vec3<u32>(global1[_wgslsmith_index_u32(1u, 17u)], u_input.a, var_0) % vec3<u32>(32u))), Struct_1(~global3.b.x <= -(~2147483647i), _wgslsmith_sub_vec3_i32(global3.b, vec3<i32>(-1i) * -vec3<i32>(-1i, 2147483647i, global3.b.x))), max(1u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, 33840u), u_input.a)), Struct_1(true, _wgslsmith_mod_vec3_i32(vec3<i32>(-14607i, global3.b.x, global3.b.x) & global3.b, select(abs(global3.b), vec3<i32>(global3.b.x, -8137i, 4162i), !vec3<bool>(global3.a, false, true)))));
    let var_2 = firstLeadingBit(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(var_1.c, 17u)], var_0), global0[_wgslsmith_index_u32(var_1.c, 31u)]), _wgslsmith_mod_u32(func_1(), var_1.c)));
    var var_3 = -898f;
    var var_4 = select(select(vec4<bool>(all(global2.zy), !global2.x, false, !all(vec3<bool>(true, global3.a, global3.a))), vec4<bool>(false, true, true, false), !select(!vec4<bool>(false, global3.a, global2.x, false), vec4<bool>(var_1.b.a, true, global2.x, global3.a), vec4<bool>(false, global3.a, global3.a, global2.x))), vec4<bool>(!var_1.b.a && all(vec2<bool>(global2.x, global3.a)), true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, global3.a))), global3.a), (!(1u >= var_0) && (_wgslsmith_f_op_f32(trunc(1115f)) != _wgslsmith_f_op_f32(579f * -509f))) & (global3.a != false));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(195f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(730f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(554f)))))));
}

