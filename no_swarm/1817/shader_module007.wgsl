struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true));

var<private> global1: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = u_input.b.zy;
    let var_1 = arg_2;
    var var_2 = global0[_wgslsmith_index_u32(1u, 32u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1426f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1363f * arg_2.a) * _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) * _wgslsmith_f_op_f32(ceil(410f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(756f, _wgslsmith_div_f32(-1230f, 1345f), 1f) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-600f, var_1.a, -104f))))))));
    var_2 = Struct_1(false);
    return vec4<bool>(arg_1.x && any(select(!vec3<bool>(arg_1.x, false, arg_1.x), select(vec3<bool>(arg_0, arg_1.x, true), vec3<bool>(true, false, arg_1.x), var_2.a), true)), !(!arg_1.x), true, var_2.a);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: f32) -> bool {
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3, -963f, -1000f, -164f)))))))));
    var var_1 = !vec4<bool>(all(select(arg_0, arg_0, vec2<bool>(arg_0.x, arg_0.x))), !arg_0.x, true, true);
    var var_2 = ~_wgslsmith_clamp_u32(countOneBits(u_input.c.x) >> (16562u % 32u), ~_wgslsmith_div_u32(4294967295u, 52501u) | ~_wgslsmith_dot_vec2_u32(arg_2.xz, vec2<u32>(u_input.c.x, u_input.c.x)), u_input.c.x);
    return any(select(!vec4<bool>(true, var_1.x, any(var_1.yw), arg_0.x | var_1.x), select(func_3(var_1.x, select(arg_0, vec2<bool>(arg_0.x, true), arg_0), Struct_3(var_0.x, vec4<i32>(1i, -1i, 38901i, -1i))), !select(vec4<bool>(arg_0.x, var_1.x, arg_0.x, arg_0.x), vec4<bool>(false, false, arg_0.x, var_1.x), false), _wgslsmith_f_op_f32(-arg_1.x) < 1f), !vec4<bool>(false, var_1.x, true | arg_0.x, false)));
}

fn func_4(arg_0: vec4<bool>) -> f32 {
    global1 = arg_0.x;
    global0 = array<Struct_1, 32>();
    var var_0 = global0[_wgslsmith_index_u32(min(~firstTrailingBit(countOneBits(~u_input.c.x)), 0u), 32u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1407f, -314f)), _wgslsmith_f_op_f32(f32(-1f) * -1401f)));
    var var_2 = 585f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-var_1.x)))));
}

fn func_1() -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(589f)), _wgslsmith_f_op_f32(func_4(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, func_2(vec2<bool>(false, false), vec3<f32>(2521f, 251f, -1129f), vec3<u32>(4294967295u, 4294967295u, u_input.c.x), 737f), true)))));
    let var_1 = select(select(vec3<bool>(_wgslsmith_div_f32(var_0.x, 1513f) == 1000f, !any(vec2<bool>(false, false)), ~53492u > u_input.c.x), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), any(func_3(false, vec2<bool>(true, false), Struct_3(var_0.x, vec4<i32>(0i, 0i, 1i, u_input.b.x))).wz)), select(func_3(true, vec2<bool>(true, true), Struct_3(var_0.x, vec4<i32>(u_input.b.x, -8784i, -2147483647i, u_input.b.x))).xyw, select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true))), !vec3<bool>(false, all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, false, false, true)) != all(vec3<bool>(true, false, true))), !vec3<bool>(272f != _wgslsmith_f_op_f32(-2022f + var_0.x), false, true));
    var var_2 = ~u_input.c;
    global0 = array<Struct_1, 32>();
    let var_3 = !vec2<bool>(!any(vec2<bool>(var_1.x, false)), false);
    return 1i;
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: bool) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(~1u, 32u)];
    var var_1 = Struct_2(~u_input.c, Struct_1(false || func_2(vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(305f, -1370f, 1499f)), vec3<u32>(46229u, u_input.c.x, u_input.c.x), _wgslsmith_f_op_f32(f32(-1f) * -804f))));
    var var_2 = all(!vec3<bool>(_wgslsmith_f_op_f32(-1000f + 101f) > _wgslsmith_f_op_f32(sign(696f)), false, _wgslsmith_mult_u32(84903u, u_input.c.x) < abs(18173u)));
    var_1 = Struct_2(vec2<u32>(var_1.a.x, 1u), var_1.b);
    let var_3 = Struct_3(-316f, firstTrailingBit(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, 4869i, -51310i, -38737i), abs(vec4<i32>(-1i, u_input.b.x, arg_0, 13835i)), vec4<i32>(u_input.b.x, u_input.a, -1i, 0i) >> (vec4<u32>(5132u, var_1.a.x, 72572u, 22243u) % vec4<u32>(32u))), vec4<i32>(-2147483647i, u_input.a, 2147483647i, ~(-1i)))));
    return Struct_2(reverseBits(vec2<u32>(~(~u_input.c.x), 1u)), Struct_1(var_1.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_div_i32(_wgslsmith_clamp_i32(i32(-1i) * -u_input.a, func_1(), _wgslsmith_clamp_i32(u_input.a, 0i, u_input.a) ^ abs(u_input.b.x)), u_input.a), true, false);
    var var_1 = vec2<i32>(-766i, 21713i & -_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a, u_input.b.x), -2147483647i));
    let var_2 = Struct_2(abs(vec2<u32>(reverseBits(u_input.c.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 4294967295u, 1u), vec3<u32>(u_input.c.x, var_0.a.x, 1u)), max(u_input.c.x, u_input.c.x)))), func_5(var_1.x, u_input.c.x != _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.c.x, 0u), _wgslsmith_sub_u32(81315u, 3205u)), !var_0.b.a).b);
    var_1 = vec2<i32>(u_input.a, ~(func_1() | _wgslsmith_add_i32(0i, var_1.x)));
    global0 = array<Struct_1, 32>();
    var_1 = -u_input.b.yz;
    let x = u_input.a;
    s_output = StorageBuffer(272f, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(75861u, u_input.c.x, var_0.a.x, 1053u)), abs(~vec4<u32>(var_2.a.x, 25334u, 1u, var_0.a.x))), ~max(vec4<u32>(51260u, 51926u, 53621u, var_2.a.x) >> (vec4<u32>(12356u, var_2.a.x, 10460u, var_2.a.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.a.x, u_input.c.x, var_0.a.x, 23862u), vec4<u32>(32866u, 26679u, var_2.a.x, 15295u)))), countOneBits(_wgslsmith_add_i32(_wgslsmith_add_i32(-var_1.x, max(-1i, var_1.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -3257i), vec2<i32>(2147483647i, u_input.a)) >> (reverseBits(u_input.c.x) % 32u))));
}

