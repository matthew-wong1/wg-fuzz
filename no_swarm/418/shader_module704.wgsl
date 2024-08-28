struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 24>;

var<private> global1: bool = true;

var<private> global2: array<vec2<u32>, 23>;

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<f32>(2583f, 609f, 199f), vec2<bool>(true, false), vec2<i32>(18696i, 2147483647i), vec3<i32>(2147483647i, -1i, i32(-2147483648))), Struct_1(vec3<f32>(-1198f, 158f, 873f), vec2<bool>(false, false), vec2<i32>(2147483647i, i32(-2147483648)), vec3<i32>(36374i, 0i, 0i)), Struct_1(vec3<f32>(-2126f, 751f, 464f), vec2<bool>(true, false), vec2<i32>(-1i, 1i), vec3<i32>(2147483647i, 2147483647i, 37995i)), Struct_1(vec3<f32>(-516f, 1571f, -396f), vec2<bool>(true, false), vec2<i32>(14580i, 1i), vec3<i32>(-1i, 5751i, 1i)), Struct_1(vec3<f32>(219f, -686f, -1477f), vec2<bool>(false, true), vec2<i32>(11379i, 0i), vec3<i32>(-33775i, 1i, -49207i)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec3<f32>, 24>();
    return arg_1;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(666f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1140f + -483f) * -584f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(167f + 1011f)), _wgslsmith_f_op_f32(-1495f + -126f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -1616f)) - _wgslsmith_f_op_f32(step(-1286f, 148f)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1727f, 2305f, -256f, -1930f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-338f, -1000f, 1210f, 1053f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(562f, -543f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1528f) * _wgslsmith_f_op_f32(-867f * _wgslsmith_div_f32(var_0.x, 988f))), _wgslsmith_f_op_f32(f32(-1f) * -239f))));
    let var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_sub_u32(35909u >> (1u % 32u), 1u), ~11757u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(23623u, 0u), global2[_wgslsmith_index_u32(4294967295u, 23u)], false), max(vec2<u32>(35033u, 0u), global2[_wgslsmith_index_u32(1u, 23u)])))) << ((_wgslsmith_clamp_vec3_u32(~select(vec3<u32>(73437u, 4294967295u, 74785u), vec3<u32>(0u, 4294967295u, 127466u), true), ~vec3<u32>(1u, 1u, 1u), ~reverseBits(vec3<u32>(27871u, 0u, 15167u))) << (vec3<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(55889u, 0u, 20931u), ~71463u), ~_wgslsmith_clamp_u32(4294967295u, 0u, 4294967295u), _wgslsmith_div_u32(firstTrailingBit(1u), countOneBits(67587u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    global2 = array<vec2<u32>, 23>();
    let var_3 = func_2(_wgslsmith_sub_u32(select(var_2.x, ~var_2.x | 1u, false), ~(~var_2.x)), global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(43267u, var_2.x), global2[_wgslsmith_index_u32(var_2.x, 23u)]), 13231u >> (0u % 32u)), ~max(56684u, var_2.x)), 5u)]);
    return 39372u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    global1 = arg_0.b.x;
    var var_0 = func_2(reverseBits(~(~abs(17129u))), func_2(_wgslsmith_sub_u32(countOneBits(select(4294967295u, 1411u, arg_0.b.x)), ~reverseBits(1u)), arg_1));
    let var_1 = ~(~vec4<u32>(0u, ~_wgslsmith_mult_u32(1u, 4294967295u), _wgslsmith_clamp_u32(~19510u, _wgslsmith_div_u32(38652u, 18940u), 0u), _wgslsmith_add_u32(max(14953u, 94727u), abs(51952u))));
    global0 = array<vec3<f32>, 24>();
    var var_2 = func_2(1u, func_2(~_wgslsmith_mult_u32(var_1.x, _wgslsmith_dot_vec3_u32(var_1.wxy, vec3<u32>(var_1.x, 4294967295u, 4294967295u))), func_2(_wgslsmith_div_u32(~var_1.x, _wgslsmith_add_u32(1u, var_1.x)), arg_1)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!any(vec2<bool>(true, true)), any(vec2<bool>(!any(vec4<bool>(true, false, false, false)), true)), -1i < min(i32(-1i) * -49155i, u_input.b), func_1() == 1u);
    let var_1 = u_input.b;
    let var_2 = global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~6839u), vec2<u32>(abs(~52322u), func_3(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 24u)], var_0.wy, vec2<i32>(var_1, 19731i), vec3<i32>(u_input.b, -1i, -7692i)), global3[_wgslsmith_index_u32(60503u, 5u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-845f, -813f)))))), 5u)];
    let var_3 = func_2(firstLeadingBit(~33514u), Struct_1(var_2.a, !select(var_0.xz, func_2(21455u, Struct_1(vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x), vec2<bool>(false, true), vec2<i32>(-2147483647i, var_1), vec3<i32>(0i, -9136i, -1i))).b, !var_2.b), ~_wgslsmith_mod_vec2_i32(vec2<i32>(-12622i, var_2.d.x) & vec2<i32>(-336i, var_1), var_2.d.zz), var_2.d));
    let var_4 = global2[_wgslsmith_index_u32(142913u, 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(select(abs(~vec4<u32>(var_4.x, 4294967295u, var_4.x, 4461u)), vec4<u32>(_wgslsmith_mult_u32(1u, 4294967295u), var_4.x, var_4.x, func_1()), !all(var_0.xx)), vec4<u32>(_wgslsmith_div_u32(~var_4.x, var_4.x), 4294967295u, _wgslsmith_sub_u32(var_4.x >> (3112u % 32u), var_4.x), ~func_3(global3[_wgslsmith_index_u32(42684u, 5u)], global3[_wgslsmith_index_u32(3840u, 5u)], var_2.a.zy))), vec4<i32>(var_1, -var_3.d.x << (var_4.x % 32u), ~var_2.d.x, -49300i), ~reverseBits(var_2.d.x), vec3<u32>(~(~(458u ^ var_4.x)), 4294967295u, 4294967295u));
}

