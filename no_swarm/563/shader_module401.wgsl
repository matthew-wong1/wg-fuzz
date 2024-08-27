struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 24>;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(false, vec4<u32>(1u, 34235u, 13241u, 0u), vec4<i32>(0i, 1i, -1i, -90906i), vec3<u32>(4294967295u, 4294967295u, 30806u)), Struct_1(false, vec4<u32>(1u, 24087u, 16646u, 1u), vec4<i32>(2147483647i, -6104i, 0i, -1i), vec3<u32>(0u, 34258u, 1u)), Struct_1(false, vec4<u32>(0u, 29644u, 1u, 32254u), vec4<i32>(-1i, -13835i, i32(-2147483648), -20101i), vec3<u32>(3189u, 4294967295u, 33313u)), Struct_1(true, vec4<u32>(64691u, 7418u, 0u, 1u), vec4<i32>(-1i, -25265i, 18440i, i32(-2147483648)), vec3<u32>(0u, 1u, 16670u)), Struct_1(false, vec4<u32>(0u, 0u, 0u, 52689u), vec4<i32>(i32(-2147483648), 0i, 8329i, 1i), vec3<u32>(86934u, 1u, 1u)), Struct_1(true, vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<i32>(-42404i, 1i, 0i, -36791i), vec3<u32>(1u, 4294967295u, 39818u)), Struct_1(false, vec4<u32>(1u, 48277u, 0u, 54982u), vec4<i32>(-43952i, 26453i, 2147483647i, 9795i), vec3<u32>(4294967295u, 57381u, 35525u)), Struct_1(false, vec4<u32>(4294967295u, 19960u, 4294967295u, 1u), vec4<i32>(37329i, -1162i, -30017i, -20364i), vec3<u32>(0u, 1u, 25509u)), Struct_1(true, vec4<u32>(0u, 27670u, 4294967295u, 1u), vec4<i32>(-1i, 1i, 1i, 54418i), vec3<u32>(96354u, 1u, 4294967295u)), Struct_1(false, vec4<u32>(102159u, 62647u, 10909u, 19446u), vec4<i32>(-25834i, 1i, 1513i, 2147483647i), vec3<u32>(41135u, 15989u, 1u)), Struct_1(true, vec4<u32>(0u, 1u, 128966u, 0u), vec4<i32>(10262i, i32(-2147483648), 37306i, -1i), vec3<u32>(30820u, 0u, 1u)), Struct_1(true, vec4<u32>(54480u, 37588u, 1u, 4294967295u), vec4<i32>(-1i, -6737i, -14789i, i32(-2147483648)), vec3<u32>(0u, 1u, 76448u)), Struct_1(true, vec4<u32>(4432u, 1u, 1u, 0u), vec4<i32>(-12276i, 2147483647i, 2147483647i, 1i), vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(true, vec4<u32>(4294967295u, 64993u, 1u, 1u), vec4<i32>(35792i, 0i, -28903i, -28045i), vec3<u32>(4294967295u, 69661u, 8489u)), Struct_1(false, vec4<u32>(19541u, 89750u, 5703u, 17146u), vec4<i32>(30459i, -32705i, 12797i, 2147483647i), vec3<u32>(4294967295u, 58240u, 4294967295u)), Struct_1(true, vec4<u32>(50768u, 1u, 36968u, 0u), vec4<i32>(-5973i, 15636i, 16335i, i32(-2147483648)), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(false, vec4<u32>(56494u, 20798u, 96061u, 93150u), vec4<i32>(-7685i, -1i, 2147483647i, -53067i), vec3<u32>(9386u, 4294967295u, 36659u)), Struct_1(false, vec4<u32>(81714u, 4294967295u, 18711u, 1u), vec4<i32>(-1i, -24864i, 24838i, 2147483647i), vec3<u32>(0u, 0u, 70919u)), Struct_1(false, vec4<u32>(0u, 90746u, 4294967295u, 3266u), vec4<i32>(2147483647i, -9627i, 11339i, 41834i), vec3<u32>(20018u, 27808u, 1u)), Struct_1(false, vec4<u32>(42799u, 4294967295u, 11625u, 41768u), vec4<i32>(i32(-2147483648), -7280i, 37673i, -46540i), vec3<u32>(0u, 1u, 36477u)), Struct_1(false, vec4<u32>(10780u, 4294967295u, 47349u, 20205u), vec4<i32>(-11462i, -18368i, 2147483647i, 2147483647i), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(false, vec4<u32>(32586u, 100213u, 0u, 0u), vec4<i32>(1i, 1i, -4915i, 0i), vec3<u32>(8560u, 0u, 16661u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: f32) -> vec2<bool> {
    let var_0 = Struct_1(arg_2.a, vec4<u32>(0u, max(arg_2.d.x, _wgslsmith_div_u32(firstTrailingBit(arg_1.x), arg_1.x)), 4294967295u, min(~(~arg_2.d.x), countOneBits(1u))), -vec4<i32>(firstTrailingBit(u_input.a) | _wgslsmith_add_i32(arg_2.c.x, 0i), arg_2.c.x, -select(-2024i, arg_2.c.x, false), _wgslsmith_mult_i32(abs(arg_2.c.x), ~(-35899i))), arg_2.b.xwz);
    return vec2<bool>(false, false);
}

fn func_4(arg_0: vec2<bool>, arg_1: f32) -> i32 {
    let var_0 = select(~4294967295u, _wgslsmith_sub_u32(4294967295u, 1u), false);
    let var_1 = u_input.a;
    let var_2 = min(vec3<u32>(~var_0, ~45680u, _wgslsmith_clamp_u32(firstLeadingBit(4294967295u), _wgslsmith_add_u32(89709u, var_0), _wgslsmith_mult_u32(var_0, var_0)) ^ 85029u), vec3<u32>(58361u, ~var_0, ~1u) & _wgslsmith_mult_vec3_u32(~vec3<u32>(var_0, var_0, var_0), vec3<u32>(1u, var_0, var_0)));
    var var_3 = var_0;
    var var_4 = ~_wgslsmith_clamp_vec3_u32(var_2, _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_0, var_0), firstLeadingBit(var_2.x), select(0u, var_2.x, false)), vec3<u32>(~4294967295u, 45404u << (var_0 % 32u), var_0)), ~abs(~vec3<u32>(var_2.x, var_2.x, 1u)));
    return ~(~abs(~(~var_1)));
}

fn func_2() -> vec2<bool> {
    let var_0 = ~(1u & _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 38181u, 0u, 4294967295u), vec4<u32>(1u, 0u, 4294967295u, 4294967295u)), ~3387u));
    var var_1 = abs(-firstLeadingBit(~_wgslsmith_mult_vec2_i32(vec2<i32>(-33447i, u_input.a), vec2<i32>(u_input.a, u_input.a))));
    let var_2 = reverseBits(vec2<i32>(func_4(select(vec2<bool>(true, false), func_3(vec3<f32>(-470f, 1000f, 1423f), vec2<u32>(var_0, var_0), Struct_1(true, vec4<u32>(35325u, 0u, var_0, var_0), vec4<i32>(var_1.x, 0i, 33201i, u_input.a), vec3<u32>(41529u, var_0, var_0)), 1605f), vec2<bool>(true, true)), _wgslsmith_f_op_f32(f32(-1f) * -1331f)), countOneBits(-1i)));
    var var_3 = _wgslsmith_clamp_vec2_u32(select(max(vec2<u32>(0u, 2297u) & vec2<u32>(var_0, 1u), vec2<u32>(4294967295u, var_0) ^ vec2<u32>(var_0, var_0)), vec2<u32>(var_0, ~6047u), select(vec2<bool>(false, true), vec2<bool>(true, true), false)) ^ _wgslsmith_div_vec2_u32(max(reverseBits(vec2<u32>(var_0, var_0)), vec2<u32>(var_0, 1u) & vec2<u32>(var_0, var_0)), vec2<u32>(1u, 1u)), abs(vec2<u32>(0u, reverseBits(var_0))), vec2<u32>(var_0, 22406u));
    var_1 = _wgslsmith_clamp_vec2_i32((((var_2 & var_2) >> (firstLeadingBit(vec2<u32>(var_3.x, 50782u)) % vec2<u32>(32u))) | vec2<i32>(_wgslsmith_mod_i32(1i, var_1.x), -2147483647i)) & _wgslsmith_mult_vec2_i32(var_2, vec2<i32>(_wgslsmith_add_i32(u_input.a, u_input.a), 9639i)), -firstLeadingBit(-var_2), vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(var_2, vec2<i32>(-1i, var_2.x) ^ var_2)), -13634i));
    return select(func_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(318f, global1[_wgslsmith_index_u32(var_0, 24u)], -1462f), vec3<f32>(742f, 915f, global1[_wgslsmith_index_u32(28460u, 24u)]))))), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_3.x, 4294967295u, 30759u), var_0), 1u), Struct_1(true, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, 1u, var_0, 4294967295u) ^ vec4<u32>(0u, var_0, var_3.x, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(var_3.x, 0u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 84700u, 1u, 40916u)), vec4<u32>(var_3.x, var_3.x, var_3.x, 41742u)), vec4<i32>(u_input.a, -41880i, var_1.x, 6470i) & vec4<i32>(u_input.a, 38157i, var_2.x, var_2.x), countOneBits(~vec3<u32>(var_3.x, var_0, 10432u))), 137f), select(!vec2<bool>(global1[_wgslsmith_index_u32(var_3.x, 24u)] == 227f, any(vec3<bool>(false, false, true))), func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(840f, -1300f, 648f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(var_0, 24u)], 1244f, 226f), vec3<f32>(global1[_wgslsmith_index_u32(var_0, 24u)], -2913f, global1[_wgslsmith_index_u32(1u, 24u)])))), ~vec2<u32>(var_3.x, 1u) >> ((vec2<u32>(var_0, var_0) >> (vec2<u32>(var_3.x, 60725u) % vec2<u32>(32u))) % vec2<u32>(32u)), Struct_1(true, ~vec4<u32>(var_0, 26383u, var_0, 56855u), vec4<i32>(15285i, var_1.x, var_2.x, var_2.x), ~vec3<u32>(var_0, 4294967295u, 122833u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(52764u, 24u)], -1006f))), func_3(vec3<f32>(_wgslsmith_f_op_f32(min(-1838f, global1[_wgslsmith_index_u32(4294967295u, 24u)])), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0, 9049u), 24u)], _wgslsmith_div_f32(177f, global1[_wgslsmith_index_u32(1u, 24u)])), ~vec2<u32>(var_3.x, 55748u), global2[_wgslsmith_index_u32(var_3.x, 22u)], _wgslsmith_f_op_f32(min(-1635f, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(var_3.x, 24u)])))))), !any(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), any(vec2<bool>(false, true)))));
}

fn func_1() -> i32 {
    global1 = array<f32, 24>();
    let var_0 = ~(~(~vec2<u32>(16105u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 106147u, 31519u, 29665u), vec4<u32>(76653u, 0u, 101152u, 4294967295u)))));
    global2 = array<Struct_1, 22>();
    let var_1 = ~(~var_0.x);
    let var_2 = select(select(vec2<bool>(true, all(vec3<bool>(true, true, true))), !func_2(), !vec2<bool>(any(vec4<bool>(true, false, true, true)), func_3(vec3<f32>(global1[_wgslsmith_index_u32(52895u, 24u)], global1[_wgslsmith_index_u32(1u, 24u)], 139f), var_0, Struct_1(false, vec4<u32>(var_0.x, 1u, var_1, 4294967295u), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), vec3<u32>(18972u, var_0.x, var_1)), global1[_wgslsmith_index_u32(var_1, 24u)]).x)), func_2(), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(var_0.x, 24u)], global1[_wgslsmith_index_u32(71346u, 24u)])))), vec2<u32>(~_wgslsmith_sub_u32(var_0.x, var_0.x), 4294967295u), Struct_1(all(vec3<bool>(true, true, false)), (vec4<u32>(var_0.x, 1u, var_0.x, 24628u) & vec4<u32>(var_1, var_1, 1u, var_0.x)) << (~vec4<u32>(1u, var_1, 47471u, 42154u) % vec4<u32>(32u)), ~vec4<i32>(65631i, u_input.a, 3533i, -23439i) & ~vec4<i32>(-16895i, u_input.a, u_input.a, u_input.a), ~(~vec3<u32>(4294967295u, var_0.x, var_1))), -647f).x);
    return i32(-1i) * -(_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -52000i, u_input.a, 41419i))) ^ -(~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 24u)]))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1445f))), 2147483647i, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-228f)) * -630f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(4294967295u, 24u)]))), _wgslsmith_f_op_f32(trunc(-1000f)), -1000f))), _wgslsmith_mod_i32(~(-var_0), -32270i));
}

