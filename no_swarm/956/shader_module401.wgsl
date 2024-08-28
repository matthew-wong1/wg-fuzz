struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec4<u32>(26135u, 4294967295u, 33911u, 2610u), -1062f, Struct_1(false, vec4<f32>(147f, 808f, 281f, 562f), true)), Struct_2(vec4<u32>(1u, 19437u, 1u, 8588u), -126f, Struct_1(true, vec4<f32>(688f, 733f, 143f, 702f), false)), Struct_2(vec4<u32>(4294967295u, 59103u, 4294967295u, 58050u), -142f, Struct_1(true, vec4<f32>(-1204f, 483f, 310f, -543f), false)), Struct_2(vec4<u32>(4294967295u, 0u, 4294967295u, 0u), -245f, Struct_1(false, vec4<f32>(1000f, 484f, 1505f, -1923f), true)));

var<private> global1: array<vec2<f32>, 19>;

var<private> global2: array<vec4<u32>, 24>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    global0 = array<Struct_2, 4>();
    var var_0 = Struct_1(!any(vec4<bool>(true, true, any(vec2<bool>(true, false)), false)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-997f)) * 1000f), _wgslsmith_f_op_f32(-1035f + _wgslsmith_f_op_f32(min(278f, 386f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1588f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(874f + 1179f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-716f - _wgslsmith_f_op_f32(-1866f + 1815f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(147f - -681f))), -273f), all(vec3<bool>(false, any(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), true)));
    var var_1 = !var_0.c;
    var var_2 = var_0.c;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(533f * _wgslsmith_f_op_f32(849f - _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(f32(-1f) * -1349f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_div_f32(-1881f, 873f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.x, 841f))))));
    return ~(~vec4<u32>(~4294967295u, u_input.a, u_input.a, abs(_wgslsmith_mod_u32(11030u, u_input.a))));
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: Struct_3, arg_3: Struct_4) -> vec2<i32> {
    global1 = array<vec2<f32>, 19>();
    let var_0 = ~(~_wgslsmith_dot_vec4_u32(func_3(), arg_2.d));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a.c.b)), arg_3.a.c.b)), vec4<f32>(_wgslsmith_f_op_f32(421f - arg_0.b.c.b.x), arg_3.b.c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 903f))), arg_1))));
    var var_2 = ~arg_3.a.d.zz;
    global0 = array<Struct_2, 4>();
    return vec2<i32>(_wgslsmith_div_i32(arg_3.a.a << (1u % 32u), _wgslsmith_mult_i32(arg_3.a.a, ~0i)), firstTrailingBit(1i)) << (arg_3.a.b.zy % vec2<u32>(32u));
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: i32, arg_3: vec2<f32>) -> i32 {
    let var_0 = true;
    var var_1 = Struct_3(arg_1.x, vec3<u32>(reverseBits(min(0u, u_input.a) ^ abs(u_input.a)), _wgslsmith_sub_u32(u_input.a, u_input.a), ~u_input.a), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) < arg_0, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_3.x, -689f, arg_0))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(461f - -744f), _wgslsmith_f_op_f32(floor(arg_3.x)), 2131f))), all(select(vec2<bool>(true, true), select(vec2<bool>(var_0, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, true)))), abs(min(min(firstLeadingBit(vec4<u32>(4294967295u, 0u, 87229u, u_input.a)), vec4<u32>(u_input.a, u_input.a, u_input.a, 6126u)), firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(36047u, 0u), vec2<u32>(35601u, u_input.a)), 24u)]))));
    let var_2 = -188f;
    var var_3 = _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(select(_wgslsmith_mod_vec2_i32(arg_1, arg_1) & firstLeadingBit(arg_1), ~func_2(Struct_4(Struct_3(-1i, var_1.b, Struct_1(true, var_1.c.b, var_1.c.c), vec4<u32>(1u, var_1.b.x, 4294967295u, u_input.a)), Struct_3(-5363i, vec3<u32>(54306u, 0u, 42023u), Struct_1(var_1.c.a, vec4<f32>(-666f, 1884f, 726f, var_1.c.b.x), true), vec4<u32>(1u, u_input.a, 4294967295u, u_input.a))), var_1.c.b.x, Struct_3(u_input.b, vec3<u32>(var_1.d.x, var_1.b.x, u_input.a), var_1.c, vec4<u32>(1u, u_input.a, 47482u, 4294967295u)), Struct_4(Struct_3(var_1.a, var_1.b, Struct_1(false, vec4<f32>(-179f, 1071f, 166f, arg_3.x), true), var_1.d), Struct_3(-11908i, var_1.b, Struct_1(var_0, vec4<f32>(517f, var_2, -1467f, var_2), var_0), var_1.d))), select(select(vec2<bool>(false, false), vec2<bool>(var_1.c.c, false), vec2<bool>(var_1.c.a, var_1.c.c)), vec2<bool>(var_1.c.a, true), true)), select(arg_1, _wgslsmith_add_vec2_i32(vec2<i32>(arg_2, var_1.a), vec2<i32>(0i, arg_2)) >> ((vec2<u32>(var_1.b.x, 444u) >> (vec2<u32>(84818u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<bool>(var_1.c.c, false))), -arg_1);
    global0 = array<Struct_2, 4>();
    return 32593i;
}

fn func_5(arg_0: vec4<i32>) -> Struct_5 {
    var var_0 = -firstLeadingBit(reverseBits(arg_0));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -966f) * -1348f))) - -1000f));
    let var_2 = Struct_5(Struct_1(!all(vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1, 940f, var_1, -775f), vec4<f32>(var_1, var_1, var_1, var_1)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -344f, 1000f, var_1))))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, 212f) + var_1))), _wgslsmith_mod_vec3_i32(var_0.wwx, min(arg_0.wwy, vec3<i32>(u_input.b << (14465u % 32u), 5363i << (u_input.a % 32u), ~231i))));
    let var_3 = !select(vec2<bool>(true, all(vec2<bool>(true, true))), select(select(!vec2<bool>(var_2.a.a, var_2.a.c), vec2<bool>(var_2.a.a, false), true), select(!vec2<bool>(false, var_2.a.c), vec2<bool>(var_2.a.c, var_2.a.c), select(vec2<bool>(true, var_2.a.a), vec2<bool>(true, true), vec2<bool>(var_2.a.c, var_2.a.c))), !select(vec2<bool>(true, true), vec2<bool>(var_2.a.a, false), vec2<bool>(true, var_2.a.a))), !vec2<bool>(!var_2.a.a, var_2.a.c));
    global0 = array<Struct_2, 4>();
    return Struct_5(var_2.a, _wgslsmith_f_op_f32(-var_2.a.b.x), -var_0.yxz);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global1 = array<vec2<f32>, 19>();
    let var_0 = vec2<i32>(firstLeadingBit(u_input.b), ~u_input.b);
    let var_1 = func_5(vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(abs(var_0), vec2<i32>(u_input.b, var_0.x)), abs(vec2<i32>(1i, -25327i))), i32(-1i) * -var_0.x, func_4(-1385f, func_2(Struct_4(Struct_3(1i, vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_1(arg_0.x, vec4<f32>(-1263f, 1043f, -1439f, -551f), true), global2[_wgslsmith_index_u32(48743u, 24u)]), Struct_3(0i, vec3<u32>(1u, 0u, 0u), Struct_1(true, vec4<f32>(960f, 1921f, -896f, -1148f), false), global2[_wgslsmith_index_u32(1u, 24u)])), -1000f, Struct_3(-1i, vec3<u32>(37632u, u_input.a, u_input.a), Struct_1(true, vec4<f32>(-1320f, 396f, 1209f, -178f), arg_0.x), vec4<u32>(u_input.a, 74815u, 35320u, u_input.a)), Struct_4(Struct_3(var_0.x, vec3<u32>(u_input.a, 0u, u_input.a), Struct_1(arg_0.x, vec4<f32>(1215f, 869f, 1588f, 711f), arg_0.x), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), Struct_3(-53693i, vec3<u32>(u_input.a, u_input.a, 0u), Struct_1(arg_0.x, vec4<f32>(1969f, -1007f, 1005f, 1000f), arg_0.x), global2[_wgslsmith_index_u32(u_input.a, 24u)]))) & countOneBits(vec2<i32>(-1i, var_0.x)), max(-4247i, -1i), _wgslsmith_f_op_vec2_f32(vec2<f32>(-229f, -750f) - _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(u_input.a, 19u)] - global1[_wgslsmith_index_u32(0u, 19u)])))));
    let var_2 = vec2<bool>(!(!(16892u >= u_input.a)), !(!arg_0.x));
    let var_3 = _wgslsmith_f_op_f32(max(-1770f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-952f)), -391f))));
    return var_1.a;
}

fn func_6(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: i32) -> StorageBuffer {
    var var_0 = -_wgslsmith_clamp_i32(-20716i, arg_2, arg_2) << (u_input.a % 32u);
    var var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_0.b.x, reverseBits(12986u)) >> (arg_0.d.x % 32u), 24u)] | ~(~vec4<u32>(u_input.a, u_input.a, 1022u, arg_0.b.x) << (~global2[_wgslsmith_index_u32(reverseBits(arg_0.b.x), 24u)] % vec4<u32>(32u)));
    var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0.d, reverseBits(vec4<u32>(1u, 34125u, ~0u, 1u))), global2[_wgslsmith_index_u32(var_1.x, 24u)]);
    let var_2 = Struct_3(-32207i, ~(~(arg_0.b >> (arg_0.b % vec3<u32>(32u)))), func_5(firstLeadingBit(vec4<i32>(47951i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, u_input.b, -1i), vec3<i32>(-53870i, -1i, arg_0.a)), _wgslsmith_mod_i32(arg_0.a, arg_0.a), max(arg_0.a, 14398i)))).a, ~global2[_wgslsmith_index_u32(reverseBits(select(24390u, reverseBits(1u), true)), 24u)]);
    let var_3 = func_5(vec4<i32>(-1i, -_wgslsmith_div_i32(arg_0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 26165i, arg_2), vec3<i32>(u_input.b, -1i, arg_2))), arg_2, arg_0.a));
    return StorageBuffer(global1[_wgslsmith_index_u32(u_input.a, 19u)], _wgslsmith_f_op_vec4_f32(-var_2.c.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 19>();
    var var_0 = vec4<i32>(-2147483647i, 1i, ~(0i) >> (~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 68706u, 26297u, u_input.a), vec4<u32>(0u, 9448u, u_input.a, u_input.a)), 1759u) % 32u), 2494i);
    global0 = array<Struct_2, 4>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(643f)));
    let var_2 = 0i;
    global0 = array<Struct_2, 4>();
    let var_3 = _wgslsmith_f_op_f32(285f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-539f)), var_1)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1327f)))) - var_1));
    let x = u_input.a;
    s_output = func_6(Struct_3(-_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_0.x, -30387i, u_input.b, var_0.x)), -vec4<i32>(u_input.b, var_0.x, 2678i, 35508i)), vec3<u32>(u_input.a, (u_input.a & u_input.a) ^ u_input.a, max(42278u, 1u) | u_input.a), func_1(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), 1110f <= var_3)), select(firstTrailingBit(~global2[_wgslsmith_index_u32(u_input.a, 24u)]), vec4<u32>(_wgslsmith_add_u32(u_input.a, 36789u), ~6940u, reverseBits(0u), 88431u), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), !vec3<bool>(_wgslsmith_f_op_f32(round(2556f)) != _wgslsmith_f_op_f32(abs(1331f)), true, any(vec2<bool>(false, true)) | true), -1i);
}

