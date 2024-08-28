struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<u32>(20573u, 4294967295u, 24743u)), Struct_1(vec3<u32>(30572u, 4294967295u, 61383u)), Struct_1(vec3<u32>(1u, 1u, 0u)), Struct_1(vec3<u32>(10079u, 0u, 4294967295u)), Struct_1(vec3<u32>(0u, 41889u, 11241u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 43054u)), Struct_1(vec3<u32>(1u, 4294967295u, 0u)), Struct_1(vec3<u32>(46855u, 64911u, 1u)), Struct_1(vec3<u32>(35177u, 56097u, 1u)), Struct_1(vec3<u32>(22549u, 66227u, 67976u)), Struct_1(vec3<u32>(0u, 48439u, 54003u)), Struct_1(vec3<u32>(37387u, 29636u, 4294967295u)), Struct_1(vec3<u32>(0u, 1u, 0u)), Struct_1(vec3<u32>(0u, 1u, 4294967295u)), Struct_1(vec3<u32>(75178u, 20744u, 79161u)), Struct_1(vec3<u32>(95102u, 12337u, 70745u)), Struct_1(vec3<u32>(1u, 24557u, 9655u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 36116u)), Struct_1(vec3<u32>(0u, 13374u, 1u)), Struct_1(vec3<u32>(4294967295u, 0u, 16316u)), Struct_1(vec3<u32>(3366u, 4294967295u, 108381u)), Struct_1(vec3<u32>(103666u, 0u, 0u)), Struct_1(vec3<u32>(27481u, 1u, 46823u)), Struct_1(vec3<u32>(0u, 10990u, 0u)), Struct_1(vec3<u32>(0u, 0u, 75358u)), Struct_1(vec3<u32>(94337u, 4294967295u, 8065u)), Struct_1(vec3<u32>(35870u, 35026u, 12392u)));

var<private> global1: array<vec4<bool>, 30>;

var<private> global2: array<f32, 27>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> Struct_1 {
    var var_0 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(select(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(1u, 30u)], false))), vec2<bool>(true, !any(vec2<bool>(true, false))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, -32012i), vec3<i32>(14245i, u_input.a, u_input.a)), _wgslsmith_add_i32(0i, u_input.a)) >= u_input.a);
    let var_1 = vec3<bool>(true, var_0.x, !(_wgslsmith_div_i32(u_input.a, -u_input.a) <= 1i));
    global2 = array<f32, 27>();
    let var_2 = global0[_wgslsmith_index_u32(0u, 27u)];
    let var_3 = !var_1;
    return Struct_1(var_2.a);
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(reverseBits(((arg_0.a.x ^ arg_0.a.x) ^ abs(arg_0.a.x)) << (_wgslsmith_add_u32(_wgslsmith_add_u32(9611u, arg_0.a.x), _wgslsmith_clamp_u32(4294967295u, 13207u, 1u)) % 32u)), 27u)]);
    global0 = array<Struct_1, 27>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.a.x, arg_0.a.x), 27u)])));
    var var_1 = arg_0.a.x | _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~(vec2<u32>(4294967295u, 4294967295u) & arg_0.a.xz), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(30894u, 1u), vec2<u32>(1u, arg_0.a.x)), arg_0.a.yy)), ~(~arg_0.a.zx) & vec2<u32>(arg_0.a.x | arg_0.a.x, func_1().a.x));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.a.x, 1u), 27u)] + -959f), _wgslsmith_f_op_f32(floor(1148f))))));
    return vec2<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(-abs(vec2<i32>(u_input.a, 3400i))), vec2<i32>(countOneBits(2147483647i), u_input.a) & vec2<i32>(firstLeadingBit(u_input.a), firstLeadingBit(u_input.a))), ~1i);
}

fn func_3(arg_0: bool) -> vec3<u32> {
    var var_0 = -42542i >> (~(~(~(~1u))) % 32u);
    let var_1 = Struct_1(_wgslsmith_add_vec3_u32(~vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 123694u, 45112u), select(vec3<u32>(0u, 0u, 37066u), vec3<u32>(54936u, 35385u, 6057u), vec3<bool>(arg_0, arg_0, false)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(4294967295u, 0u, 4414u)) % vec3<u32>(32u)), vec3<u32>(1u, 1u, 1u))));
    var var_2 = select(vec3<bool>(!arg_0, arg_0, any(select(!vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), !vec2<bool>(true, arg_0)))), !vec3<bool>(false, all(!vec3<bool>(arg_0, false, false)), true), !vec3<bool>(global2[_wgslsmith_index_u32(var_1.a.x, 27u)] >= _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(3342u, 27u)]), _wgslsmith_clamp_u32(var_1.a.x, var_1.a.x, 14988u) == ~1u, arg_0 == all(vec4<bool>(true, true, arg_0, false))));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~func_2(func_1()), vec4<i32>(-_wgslsmith_mod_i32(6714i, _wgslsmith_mod_i32(u_input.a, u_input.a)), u_input.a, _wgslsmith_mult_i32(~0i & func_2(Struct_1(vec3<u32>(14511u, 53584u, 1u))).x, 1i), -18365i), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_3(false) << (~vec3<u32>(1u, 0u, 41691u) % vec3<u32>(32u)), abs(~vec3<u32>(12976u, 0u, 33940u))) >> (_wgslsmith_dot_vec3_u32(select(~vec3<u32>(62084u, 4862u, 48066u), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 625u, 0u), vec3<u32>(1u, 90562u, 23849u)), vec3<bool>(true, false, false)), ~vec3<u32>(4294967295u, 77524u, 24464u)) % 32u), 27u)]);
}

