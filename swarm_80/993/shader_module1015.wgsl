struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(4294967295u, 66683u), vec2<u32>(18011u, 1u), vec2<u32>(1u, 40224u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u), vec2<u32>(120150u, 4294967295u), vec2<u32>(0u, 1809u), vec2<u32>(1u, 20896u), vec2<u32>(0u, 7563u), vec2<u32>(0u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 30124u));

var<private> global1: vec3<f32>;

var<private> global2: array<f32, 2> = array<f32, 2>(1294f, 107f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3) -> f32 {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.b.wzw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.zwx))));
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1161f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-753f + arg_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 2u)] + _wgslsmith_f_op_f32(-arg_0.b.x)) + _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))));
    let var_1 = all(vec4<bool>(false, !all(vec3<bool>(false, false, true)), false, false));
    let var_2 = -firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(28074i, 63215i), vec2<i32>(1i, -31579i))));
    global1 = _wgslsmith_f_op_vec3_f32(select(arg_0.b.zyx, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(877f, -551f, 233f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(arg_0.a.x, 2u)], global1.x, 1000f) - arg_0.b.wyz)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(arg_0.b.yxy, arg_0.b.zyz)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_0.b.zww + var_0.a.zwz)))))), select(vec3<bool>(var_1, all(vec2<bool>(false, false)), any(vec3<bool>(true, true, true))), !select(vec3<bool>(var_1, var_1, var_1), !vec3<bool>(var_1, var_1, var_1), true), all(select(vec2<bool>(true, true), !vec2<bool>(var_1, var_1), true)))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(f32(-1f) * -404f))));
}

fn func_2() -> Struct_1 {
    let var_0 = firstLeadingBit(global0[_wgslsmith_index_u32(24346u, 12u)]);
    global2 = array<f32, 2>();
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(754f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-549f - global1.x), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x))), _wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_mod_vec3_u32(vec3<u32>(81223u, 0u, var_0.x), vec3<u32>(var_0.x, 38883u, 3786u)), vec4<f32>(global1.x, -1071f, global2[_wgslsmith_index_u32(var_0.x, 2u)], 292f))))));
    global2 = array<f32, 2>();
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-990f, global1.x, -1282f))) + vec3<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_0.x, 2u)], 1466f), -177f, _wgslsmith_f_op_f32(-var_1.a.x)))));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(100518u, 2u)])), _wgslsmith_div_f32(-1248f, global1.x), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.a.x)), _wgslsmith_f_op_f32(sign(1180f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_1) -> vec3<f32> {
    global0 = array<vec2<u32>, 12>();
    var var_0 = select((vec4<u32>(firstLeadingBit(24966u), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 9576u, 5453u), vec3<u32>(35046u, 4294967295u, 4294967295u)), reverseBits(81181u)) & vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(20182u, 57471u, 1u, 4294967295u), vec4<u32>(32182u, 148559u, 4294967295u, 5395u)), 4294967295u, ~30017u, 1u)) << (_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, ~21639u, firstTrailingBit(31664u), abs(4294967295u))) % vec4<u32>(32u)), ~vec4<u32>(~22087u, max(1u, 34235u), 22834u, abs(_wgslsmith_add_u32(21064u, 0u))), all(select(vec3<bool>(all(vec3<bool>(true, false, false)), true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, arg_0.x, arg_2, -1000f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1690f, 395f, arg_1.x, -702f), arg_0, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_0))), any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false))))))));
    var var_2 = firstTrailingBit(-_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-2147483647i, u_input.b, u_input.a) & vec3<i32>(-39793i, u_input.a, u_input.b)), vec3<i32>(-u_input.b, -1i, i32(-1i) * -1i)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(step(arg_3.a, _wgslsmith_f_op_vec4_f32(-arg_3.a))));
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -705f), -640f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -923f)));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(arg_0.b, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1281f * global1.x), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, arg_0.a.x), 2u)]), 2297f), global2[_wgslsmith_index_u32(arg_0.a.x, 2u)], func_2())));
    var var_0 = ~firstLeadingBit(min(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 54570u, arg_0.a.x, arg_0.a.x), max(vec4<u32>(1u, 4294967295u, arg_0.a.x, 0u), vec4<u32>(arg_0.a.x, arg_0.a.x, 26299u, 15154u))), abs(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.x, 0u, 4294967295u, arg_0.a.x), vec4<u32>(4294967295u, 22533u, arg_0.a.x, arg_0.a.x)))));
    global0 = array<vec2<u32>, 12>();
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)) + arg_0.b.wy))), _wgslsmith_f_op_vec2_f32(floor(arg_0.b.xy))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.zzw)) * vec3<f32>(global1.x, global2[_wgslsmith_index_u32(32357u, 2u)], var_1.x));
    return Struct_2(func_2(), false, _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(~(-vec4<i32>(u_input.b, 0i, -2147483647i, -1i)), vec4<i32>(u_input.a, -1i, select(2147483647i, u_input.b, arg_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -57472i, -29853i, 0i), vec4<i32>(1i, u_input.a, u_input.c, -2147483647i)))), vec4<i32>(u_input.c, u_input.c >> (38121u % 32u), abs(u_input.c), u_input.c) >> (max(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, arg_0.a.x, var_0.x), vec4<u32>(var_0.x, var_0.x, 50816u, var_0.x)), vec4<u32>(0u, 29884u, 0u, var_0.x)) % vec4<u32>(32u)), (vec4<i32>(-1i) * -vec4<i32>(1i, 0i, u_input.a, 2147483647i)) >> (vec4<u32>(~var_0.x, ~0u, ~arg_0.a.x, 4294967295u ^ var_0.x) % vec4<u32>(32u))));
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> vec4<f32> {
    var var_0 = Struct_3(vec3<u32>(firstLeadingBit(353u), _wgslsmith_mod_u32(1u, 4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 0u), ~vec3<u32>(0u, 22923u, 11838u)), _wgslsmith_mult_vec3_u32(select(vec3<u32>(46842u, 10215u, 28611u), vec3<u32>(4294967295u, 1u, 39968u), vec3<bool>(false, arg_0, true)), ~vec3<u32>(95562u, 0u, 1u)))), _wgslsmith_f_op_vec4_f32(arg_1.a.a - vec4<f32>(func_1(Struct_3(vec3<u32>(0u, 64981u, 15280u), arg_1.a.a), !vec4<bool>(arg_1.b, arg_1.b, arg_1.b, true)).a.a.x, 1348f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-641f)))), _wgslsmith_f_op_f32(-1f))));
    var var_1 = arg_0;
    global2 = array<f32, 2>();
    let var_2 = Struct_3(firstTrailingBit(~firstLeadingBit(var_0.a)), var_0.b);
    var var_3 = Struct_3(min(abs(vec3<u32>(var_0.a.x, var_2.a.x, 1u) ^ abs(vec3<u32>(var_2.a.x, 7369u, 1u))), var_0.a), vec4<f32>(-720f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * func_2().a.x) + var_0.b.x), var_0.b.x));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -138f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(475f + _wgslsmith_f_op_f32(f32(-1f) * -1533f)));
    let var_0 = Struct_3(select(abs(countOneBits(vec3<u32>(8842u, 0u, 0u))) | vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), global0[_wgslsmith_index_u32(9029u, 12u)]), 1u, ~1u), _wgslsmith_div_vec3_u32(min(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 0u, 0u)), ~(~vec3<u32>(59892u, 16996u, 33009u))), select(true, any(vec3<bool>(true, false, true)), all(vec2<bool>(true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(true, func_1(Struct_3(vec3<u32>(40554u, 2230u, 44966u), vec4<f32>(1102f, -1393f, 803f, -141f)), vec4<bool>(true, true, false, false)))))));
    var var_1 = func_2();
    var_1 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(1u, 2u)], global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1307f * 359f)), global1.x, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.a.x, 2u)] + global2[_wgslsmith_index_u32(var_0.a.x, 2u)])), _wgslsmith_f_op_vec4_f32(abs(var_1.a))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.wyw) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_1.a.yyy))))));
    let var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~var_0.a.x & 49073u, ~min(46505u, _wgslsmith_add_u32(var_0.a.x, 1u))), vec3<u32>(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(0u, 7094u, 66281u, var_0.a.x), vec4<u32>(0u, var_0.a.x, var_0.a.x, var_0.a.x) ^ vec4<u32>(1u, 4294967295u, 1u, var_0.a.x)), ~abs(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))), 0u, min(var_0.a.x, _wgslsmith_dot_vec2_u32(var_0.a.yy & vec2<u32>(1332u, var_0.a.x), ~vec2<u32>(1u, var_0.a.x)))), 1i, vec2<u32>(_wgslsmith_add_u32(var_0.a.x, var_0.a.x), ~_wgslsmith_add_u32(~var_0.a.x, ~var_0.a.x)));
}

