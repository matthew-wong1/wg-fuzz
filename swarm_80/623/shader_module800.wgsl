struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(50626u, 1u), vec2<u32>(6783u, 19379u), vec2<u32>(0u, 2208u), vec2<u32>(26639u, 1u), vec2<u32>(0u, 81848u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(0u, 18436u), vec2<u32>(4294967295u, 71790u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 90166u), vec2<u32>(93105u, 25594u), vec2<u32>(2776u, 19394u), vec2<u32>(4294967295u, 0u));

var<private> global1: array<bool, 27> = array<bool, 27>(false, false, false, false, true, true, true, true, true, true, false, true, true, false, false, false, true, true, false, true, true, false, false, true, true, false, false);

var<private> global2: array<Struct_3, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> vec2<u32> {
    global0 = array<vec2<u32>, 15>();
    let var_0 = Struct_2(arg_1.a, Struct_1(vec4<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_0.a.x), vec2<i32>(-1i, 70861i))), min(u_input.a >> (7720u % 32u), arg_0.a.x), arg_0.a.x, (0i | arg_1.a.a.x) | -u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1017f, arg_0.b.x, arg_1.a.b.x, arg_0.b.x)))), ~(~(~75738u)), ~arg_1.c.d, any(select(select(vec4<bool>(arg_1.a.e, arg_2.a.e, arg_2.a.e, false), vec4<bool>(false, false, global1[_wgslsmith_index_u32(arg_0.c, 27u)], false), vec4<bool>(true, true, false, false)), vec4<bool>(true, arg_1.a.e, false, arg_1.a.e), vec4<bool>(global1[_wgslsmith_index_u32(16861u, 27u)], arg_0.e, arg_1.c.e, false)))), Struct_1(~reverseBits(arg_1.c.a), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(arg_0.b)))), min(arg_1.c.c, 102485u), vec3<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(76882u, arg_0.d.x)), _wgslsmith_div_u32(~28711u, arg_1.c.c), 4294967295u), !all(select(vec4<bool>(true, arg_1.c.e, false, arg_1.c.e), vec4<bool>(true, true, false, true), vec4<bool>(true, true, arg_1.a.e, arg_1.c.e)))), arg_2.c, arg_0);
    var var_1 = _wgslsmith_f_op_f32(step(var_0.b.b.x, _wgslsmith_f_op_f32(-var_0.c.b.x)));
    let var_2 = var_0;
    var var_3 = arg_0.d.x;
    return _wgslsmith_add_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(var_2.d.d.x, 86896u)), vec2<u32>(arg_2.c.d.x, var_2.c.d.x))), _wgslsmith_clamp_vec2_u32((var_2.d.d.zz << (arg_2.c.d.yz % vec2<u32>(32u))) >> (abs(var_0.e.d.yy) % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_u32(arg_2.a.d.yx, var_2.d.d.zx), arg_0.d.yy)) >> (arg_1.c.d.zz % vec2<u32>(32u));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(-14762i, arg_0, -10169i, arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -128f, -1333f, -354f)))), ~(~16963u), vec3<u32>(~1u, countOneBits(~4294967295u), _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(countOneBits(81809u), 15u)], func_3(Struct_1(vec4<i32>(arg_0, u_input.a, -1870i, 9848i), vec4<f32>(arg_1, arg_1, arg_1, arg_1), 47159u, vec3<u32>(0u, 31067u, 1u), global1[_wgslsmith_index_u32(4294967295u, 27u)]), Struct_3(Struct_1(vec4<i32>(46340i, -1i, 1i, 0i), vec4<f32>(arg_1, arg_1, -1496f, arg_1), 28u, vec3<u32>(27512u, 4294967295u, 74706u), true), arg_1, Struct_1(vec4<i32>(2147483647i, u_input.a, u_input.a, 0i), vec4<f32>(-397f, arg_1, -467f, arg_1), 49729u, vec3<u32>(1u, 77856u, 7045u), true)), global2[_wgslsmith_index_u32(1u, 29u)]))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(~0u), 4294967295u), 27u)]), Struct_1(-(~(vec4<i32>(1i, u_input.a, 6661i, -2147483647i) | vec4<i32>(0i, arg_0, arg_0, 0i))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-802f, arg_1, 1311f, 177f), vec4<f32>(-848f, arg_1, 749f, arg_1)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, -375f, arg_1))))), ~1u >> (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(7920u, 0u), global0[_wgslsmith_index_u32(4294967295u, 15u)]), 49617u) % 32u), _wgslsmith_div_vec3_u32(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), global1[_wgslsmith_index_u32(select(4294967295u, 0u, true), 27u)]), ~vec3<u32>(1u, 1u, 1u)), true), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, arg_0, u_input.a, 20889i), vec4<i32>(-u_input.a, max(u_input.a, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_0, -2147483647i), vec3<i32>(u_input.a, -34046i, 23063i)), _wgslsmith_mult_i32(u_input.a, u_input.a))), vec4<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -147f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-677f)) - _wgslsmith_f_op_f32(arg_1 + arg_1)), 163f), 4294967295u, vec3<u32>(reverseBits(1u), ~firstTrailingBit(1u), 25189u), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_sub_u32(18399u, 17038u), firstTrailingBit(7532u)), 27u)]), Struct_1(select(vec4<i32>(-1i, _wgslsmith_mult_i32(-20870i, arg_0), arg_0, abs(0i)), select(vec4<i32>(1i, arg_0, arg_0, 1i) | vec4<i32>(25551i, 1i, u_input.a, u_input.a), -vec4<i32>(-1333i, -1i, arg_0, 2147483647i), !vec4<bool>(false, global1[_wgslsmith_index_u32(7052u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)], true)), !select(vec4<bool>(false, global1[_wgslsmith_index_u32(68090u, 27u)], false, false), vec4<bool>(global1[_wgslsmith_index_u32(29687u, 27u)], true, global1[_wgslsmith_index_u32(7857u, 27u)], true), vec4<bool>(global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], false, global1[_wgslsmith_index_u32(42136u, 27u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 317f, 1461f) + vec4<f32>(arg_1, arg_1, -2149f, 708f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 545f, 548f) - vec4<f32>(1119f, 792f, arg_1, 965f))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1), 1673f, _wgslsmith_f_op_f32(-1000f - -1130f), _wgslsmith_f_op_f32(step(arg_1, -350f)))), ~(~1u), _wgslsmith_add_vec3_u32(select(select(vec3<u32>(1u, 8763u, 5681u), vec3<u32>(1u, 10187u, 73767u), true), select(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 16883u, 13304u), vec3<bool>(global1[_wgslsmith_index_u32(0u, 27u)], false, true)), !vec3<bool>(global1[_wgslsmith_index_u32(59364u, 27u)], global1[_wgslsmith_index_u32(41177u, 27u)], global1[_wgslsmith_index_u32(76304u, 27u)])), vec3<u32>(1u, 1u, 1u)), all(select(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], false), select(vec3<bool>(global1[_wgslsmith_index_u32(20834u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(28863u, 27u)]), vec3<bool>(false, false, true), false), vec3<bool>(global1[_wgslsmith_index_u32(0u, 27u)], true, global1[_wgslsmith_index_u32(0u, 27u)])))), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_div_i32(1i, -21329i), abs(23174i), arg_0 << (4294967295u % 32u), _wgslsmith_sub_i32(1i, 1i)), vec4<i32>(arg_0, abs(u_input.a), -1i, _wgslsmith_div_i32(38983i, u_input.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 1050f, arg_1, 538f), _wgslsmith_div_vec4_f32(vec4<f32>(182f, arg_1, -555f, arg_1), vec4<f32>(arg_1, arg_1, -783f, arg_1))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, -742f) - vec4<f32>(-1847f, arg_1, 1009f, 559f)))), ~1u, vec3<u32>(~(~0u), firstTrailingBit(1u), countOneBits(~1u)), any(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(54039u, 27u)], false, true)))));
    global1 = array<bool, 27>();
    let var_1 = ~select(vec4<u32>(var_0.d.c, _wgslsmith_clamp_u32(~1u, 0u, var_0.c.c), _wgslsmith_dot_vec2_u32(max(var_0.b.d.zz, vec2<u32>(7550u, var_0.b.c)), ~vec2<u32>(var_0.a.d.x, var_0.b.d.x)), min(abs(var_0.d.d.x), ~var_0.a.c)), ~vec4<u32>(var_0.a.d.x, 4294967295u, _wgslsmith_clamp_u32(4294967295u, 0u, 64053u), 1u), !var_0.e.e);
    var var_2 = all(vec3<bool>(!(select(var_0.c.e, false, var_0.b.e) && (9599i <= var_0.e.a.x)), true, false));
    let var_3 = 4294967295u;
    return Struct_2(var_0.b, Struct_1(~var_0.a.a, _wgslsmith_f_op_vec4_f32(step(var_0.e.b, _wgslsmith_f_op_vec4_f32(select(var_0.b.b, _wgslsmith_f_op_vec4_f32(-var_0.a.b), true)))), 0u, vec3<u32>(func_3(Struct_1(vec4<i32>(u_input.a, var_0.d.a.x, u_input.a, 9295i), vec4<f32>(316f, arg_1, arg_1, var_0.b.b.x), 136308u, var_0.a.d, var_0.a.e), global2[_wgslsmith_index_u32(92082u, 29u)], Struct_3(Struct_1(vec4<i32>(var_0.e.a.x, 1i, arg_0, arg_0), var_0.b.b, var_3, var_1.xxz, false), arg_1, var_0.a)).x, 1u, ~1u), var_0.b.e), Struct_1(_wgslsmith_add_vec4_i32(var_0.b.a, abs(vec4<i32>(arg_0, arg_0, arg_0, var_0.e.a.x))), var_0.e.b, 1u, _wgslsmith_sub_vec3_u32(var_0.b.d, var_0.d.d), _wgslsmith_sub_i32(select(arg_0, arg_0, false), u_input.a) > max(-arg_0, i32(-1i) * -3461i)), Struct_1(~_wgslsmith_sub_vec4_i32(-vec4<i32>(50718i, 2147483647i, arg_0, var_0.b.a.x), countOneBits(var_0.c.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.a.b.x, var_0.a.b.x, -1000f) * vec4<f32>(var_0.c.b.x, arg_1, -343f, -648f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1120f, -2541f, arg_1, arg_1), var_0.c.b))) * vec4<f32>(872f, -443f, _wgslsmith_f_op_f32(trunc(-102f)), _wgslsmith_f_op_f32(step(var_0.b.b.x, -1402f)))), firstTrailingBit(var_1.x), firstTrailingBit(vec3<u32>(var_3, countOneBits(1u), _wgslsmith_dot_vec4_u32(var_1, var_1))), ~(~var_1.x) <= var_3), Struct_1(_wgslsmith_mult_vec4_i32(var_0.a.a, var_0.c.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.b.x))), 917f, 140f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.b.x))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(34714u, 41054u, 110679u, var_0.c.d.x), var_1), firstTrailingBit(vec4<u32>(4294967295u, 0u, 0u, var_1.x))), vec4<u32>(102589u, var_1.x, var_0.a.d.x, var_3)), reverseBits(reverseBits(~vec3<u32>(44033u, var_3, 0u))), any(select(vec3<bool>(true, var_0.a.e, global1[_wgslsmith_index_u32(var_0.a.c, 27u)]), select(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<bool>(global1[_wgslsmith_index_u32(var_1.x, 27u)], false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(var_0.b.d.x, 27u)]), vec3<bool>(false, false, var_0.c.e), vec3<bool>(var_0.c.e, false, false))))));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_div_vec4_u32(min(~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(0u, arg_0.b.d.x, 72401u, arg_1)), vec4<u32>(3680u, 0u, arg_1, arg_0.a.c) >> (vec4<u32>(arg_0.a.c, 0u, arg_0.e.c, 0u) % vec4<u32>(32u))), ~vec4<u32>(22383u, arg_0.c.d.x, 0u, arg_1) ^ ~vec4<u32>(0u, arg_0.b.d.x, 22466u, arg_1)), ~(~max(~vec4<u32>(4294967295u, 12695u, 0u, arg_1), abs(vec4<u32>(15521u, 4294967295u, 33588u, arg_1)))));
    global0 = array<vec2<u32>, 15>();
    return _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_dot_vec4_i32(~arg_0.d.a, max(arg_0.e.a, vec4<i32>(u_input.a, u_input.a, 2147483647i, 4868i))), arg_0.e.a.x), select(2147483647i, -(i32(-1i) * -2147483647i), true), -(~(~u_input.a))), firstLeadingBit(~vec3<i32>(_wgslsmith_dot_vec4_i32(arg_0.b.a, arg_0.e.a), 1i, -arg_0.c.a.x)));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: vec3<bool>) -> bool {
    let var_0 = vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(arg_2.d.a.zz, vec2<i32>(44541i, -3202i))), func_4(func_2(-(i32(-1i) * -8479i), _wgslsmith_f_op_f32(-arg_2.a.b.x)), 1u), i32(-1i) * -arg_2.c.a.x);
    let var_1 = Struct_3(arg_2.b, -406f, arg_2.e);
    var var_2 = global1[_wgslsmith_index_u32(var_1.c.d.x, 27u)];
    var var_3 = 4294967295u;
    let var_4 = arg_2.e.b.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(true, !(0i <= _wgslsmith_add_i32(-1i, u_input.a)), select(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(26029u, 27u)], func_1(true, global1[_wgslsmith_index_u32(51870u, 27u)] == true, Struct_2(Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<f32>(-295f, -394f, 327f, 362f), 4294967295u, vec3<u32>(86508u, 0u, 17380u), true), Struct_1(vec4<i32>(-1i, u_input.a, 32898i, u_input.a), vec4<f32>(-1046f, -162f, -1281f, -2003f), 47622u, vec3<u32>(21844u, 4294967295u, 70073u), global1[_wgslsmith_index_u32(4294967295u, 27u)]), Struct_1(vec4<i32>(u_input.a, u_input.a, 2147483647i, -9110i), vec4<f32>(498f, 1220f, 1000f, -114f), 0u, vec3<u32>(58080u, 18815u, 53768u), true), Struct_1(vec4<i32>(u_input.a, 12141i, u_input.a, 2147483647i), vec4<f32>(474f, -395f, -1648f, -1307f), 1u, vec3<u32>(1u, 4575u, 79554u), true), Struct_1(vec4<i32>(2147483647i, 21269i, 3397i, -11306i), vec4<f32>(-269f, 1910f, -799f, 1473f), 4294967295u, vec3<u32>(8984u, 60972u, 111630u), global1[_wgslsmith_index_u32(4294967295u, 27u)])), vec3<bool>(true, true, true))), all(!(!vec4<bool>(global1[_wgslsmith_index_u32(40781u, 27u)], false, true, true)))), select(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 9431u), 27u)] && any(vec2<bool>(false, global1[_wgslsmith_index_u32(79073u, 27u)])), true, global1[_wgslsmith_index_u32(~5745u, 27u)], select(!global1[_wgslsmith_index_u32(4294967295u, 27u)], any(vec3<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 27u)])), global1[_wgslsmith_index_u32(0u, 27u)])), vec4<bool>(false, !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(25112u, 38053u, 4294967295u), vec3<u32>(4294967295u, 18229u, 0u)), 27u)], true, !func_2(-12024i, -298f).d.e), !(!vec4<bool>(global1[_wgslsmith_index_u32(28566u, 27u)], true, true, global1[_wgslsmith_index_u32(24507u, 27u)]))), !global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(firstTrailingBit(39476u), 0u), 27u)]);
    global1 = array<bool, 27>();
    let var_1 = firstLeadingBit(firstTrailingBit(_wgslsmith_mult_i32(abs(u_input.a), u_input.a)));
    var_0 = !vec4<bool>(!func_1(all(var_0.yz), true, Struct_2(Struct_1(vec4<i32>(8491i, -1i, var_1, u_input.a), vec4<f32>(-500f, -769f, -363f, -487f), 68728u, vec3<u32>(4294967295u, 22033u, 1u), global1[_wgslsmith_index_u32(0u, 27u)]), Struct_1(vec4<i32>(var_1, 17359i, var_1, var_1), vec4<f32>(1119f, 1289f, 482f, -1113f), 0u, vec3<u32>(24921u, 34628u, 1u), true), Struct_1(vec4<i32>(2147483647i, var_1, u_input.a, var_1), vec4<f32>(1021f, -1000f, -1363f, -416f), 1u, vec3<u32>(14217u, 4294967295u, 56022u), global1[_wgslsmith_index_u32(6107u, 27u)]), Struct_1(vec4<i32>(29187i, u_input.a, -5111i, u_input.a), vec4<f32>(-400f, 275f, -1000f, 403f), 22266u, vec3<u32>(4294967295u, 4294967295u, 0u), var_0.x), Struct_1(vec4<i32>(-9812i, u_input.a, 25764i, var_1), vec4<f32>(-310f, 1202f, -151f, -1685f), 14431u, vec3<u32>(63343u, 47453u, 4294967295u), global1[_wgslsmith_index_u32(76402u, 27u)])), select(vec3<bool>(true, false, var_0.x), var_0.yyy, vec3<bool>(var_0.x, global1[_wgslsmith_index_u32(19446u, 27u)], global1[_wgslsmith_index_u32(36468u, 27u)]))), func_1(true, any(var_0.yzx) || false, Struct_2(Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<f32>(-143f, -164f, 1184f, -503f), 0u, vec3<u32>(4294967295u, 4294967295u, 20094u), var_0.x), func_2(-1i, 684f).b, Struct_1(vec4<i32>(var_1, u_input.a, u_input.a, -17533i), vec4<f32>(1613f, -244f, -673f, -817f), 79328u, vec3<u32>(0u, 16938u, 1u), true), Struct_1(vec4<i32>(var_1, 16545i, var_1, 0i), vec4<f32>(-560f, 587f, -784f, -917f), 26012u, vec3<u32>(41431u, 51456u, 1u), var_0.x), func_2(1i, -1509f).c), var_0.yxx), var_0.x, global1[_wgslsmith_index_u32(1u, 27u)]);
    global0 = array<vec2<u32>, 15>();
    var var_2 = vec3<bool>(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-527f, 252f)) * -945f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-547f * -367f) - _wgslsmith_div_f32(-873f, 242f))), all(var_0.xw), !global1[_wgslsmith_index_u32(0u, 27u)]);
    var_0 = !select(vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(8806i, 2147483647i, -2147483647i), vec3<i32>(2147483647i, u_input.a, 0i)) == (i32(-1i) * -446i), all(!vec2<bool>(var_0.x, var_0.x)), !func_1(var_0.x, false, Struct_2(Struct_1(vec4<i32>(0i, -28186i, var_1, 0i), vec4<f32>(1000f, 1408f, -965f, -420f), 92074u, vec3<u32>(27617u, 1u, 37610u), global1[_wgslsmith_index_u32(1u, 27u)]), Struct_1(vec4<i32>(-2147483647i, -1i, u_input.a, var_1), vec4<f32>(443f, -404f, -1344f, -668f), 1u, vec3<u32>(4294967295u, 0u, 41909u), false), Struct_1(vec4<i32>(u_input.a, -26558i, -8738i, 0i), vec4<f32>(1037f, -1011f, 157f, 548f), 1u, vec3<u32>(0u, 1u, 4294967295u), global1[_wgslsmith_index_u32(0u, 27u)]), Struct_1(vec4<i32>(1i, 1i, u_input.a, u_input.a), vec4<f32>(1155f, 1143f, 671f, 1744f), 29788u, vec3<u32>(17052u, 0u, 49605u), false), Struct_1(vec4<i32>(u_input.a, var_1, u_input.a, var_1), vec4<f32>(-281f, 809f, -397f, -2226f), 7368u, vec3<u32>(1u, 1u, 53300u), true)), vec3<bool>(var_2.x, var_0.x, global1[_wgslsmith_index_u32(4294967295u, 27u)])), true), !select(!vec4<bool>(false, false, var_0.x, var_2.x), vec4<bool>(global1[_wgslsmith_index_u32(59341u, 27u)], true, false, var_2.x), !var_0.x), global1[_wgslsmith_index_u32(~1u, 27u)]);
    let var_3 = !global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 5140u, 85127u, 45242u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(41880u, 0u, 0u, 7173u), vec4<u32>(53820u, 1u, 0u, 16311u), vec4<u32>(4294967295u, 83u, 77807u, 4294967295u))), 4294967295u), 27u)];
    var var_4 = ~_wgslsmith_mod_vec2_i32(~firstLeadingBit(vec2<i32>(-1158i, u_input.a)), (vec2<i32>(2147483647i, var_1) << (vec2<u32>(43761u, 0u) % vec2<u32>(32u))) & vec2<i32>(6274i, 0i)) ^ (vec2<i32>(-1i) * -vec2<i32>(var_1 >> (4294967295u % 32u), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(~77528u, -reverseBits(select(-vec4<i32>(80519i, 21345i, var_4.x, var_4.x), vec4<i32>(var_4.x, var_1, var_1, 13673i) << (vec4<u32>(0u, 20987u, 0u, 0u) % vec4<u32>(32u)), var_2.x && true)), 1u);
}

