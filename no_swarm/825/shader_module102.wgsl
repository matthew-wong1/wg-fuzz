struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

var<private> global1: Struct_1 = Struct_1(false, 39248u, vec2<bool>(true, false), vec3<i32>(27366i, 30752i, -1i));

var<private> global2: Struct_1;

var<private> global3: array<i32, 8> = array<i32, 8>(0i, -1i, 1785i, 15338i, -10718i, 12193i, 0i, i32(-2147483648));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> i32 {
    return _wgslsmith_sub_i32(33627i, -21579i);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global2 = arg_2;
    var var_0 = Struct_1(true, 11631u, arg_2.c, abs(min(vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.d.x, 11694i, u_input.b.x, -72692i), vec4<i32>(global1.d.x, global3[_wgslsmith_index_u32(4294967295u, 8u)], -1i, global3[_wgslsmith_index_u32(global1.b, 8u)])), func_3(arg_0, global2.d.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.d.x, u_input.c.x, -2147483647i) ^ arg_0.d, reverseBits(vec3<i32>(-2147483647i, arg_1.x, 66104i))))));
    let var_1 = _wgslsmith_add_i32(abs(var_0.d.x), ~countOneBits(~arg_1.x << (~4692u % 32u)));
    let var_2 = global1.b == 37160u;
    let var_3 = _wgslsmith_f_op_f32(min(arg_3, _wgslsmith_div_f32(-233f, arg_3)));
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = func_2(arg_3, _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, global3[_wgslsmith_index_u32(arg_0.b, 8u)]), min(vec2<i32>(global1.d.x, global3[_wgslsmith_index_u32(96409u, 8u)]), arg_3.d.yz)), func_2(Struct_1(false, 6149u, global1.c, global1.d), vec2<i32>(-2147483647i, arg_0.d.x), arg_3, _wgslsmith_f_op_f32(1388f + -1267f)).d.yx), firstTrailingBit(~vec2<i32>(arg_0.d.x, global3[_wgslsmith_index_u32(1u, 8u)]))), Struct_1(!any(func_2(arg_3, arg_0.d.zy, Struct_1(global2.a, global0[_wgslsmith_index_u32(global2.b, 2u)], vec2<bool>(true, arg_0.c.x), global2.d), arg_2.x).c), ~4294967295u, select(global2.c, !(!vec2<bool>(false, global2.c.x)), arg_0.c), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, global3[_wgslsmith_index_u32(1u, 8u)], 1i), arg_3.d, vec3<i32>(countOneBits(arg_0.d.x), u_input.c.x | global3[_wgslsmith_index_u32(global2.b, 8u)], select(-201i, global3[_wgslsmith_index_u32(global1.b, 8u)], arg_3.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)));
    global3 = array<i32, 8>();
    let var_1 = ~(~vec2<u32>(global2.b, 4294967295u));
    global3 = array<i32, 8>();
    global0 = array<u32, 2>();
    return vec2<bool>(arg_3.d.x <= var_0.d.x, any(vec2<bool>(true, true)));
}

fn func_1(arg_0: u32, arg_1: bool) -> i32 {
    global2 = Struct_1(!(!arg_1), ~64674u, global1.c, abs(vec3<i32>(-1i) * -select(vec3<i32>(global3[_wgslsmith_index_u32(18791u, 8u)], 0i, global1.d.x), u_input.b, global2.a)));
    global2 = Struct_1(!(!(all(vec2<bool>(arg_1, true)) || !arg_1)), 59442u, !vec2<bool>(true, any(!vec4<bool>(global1.a, arg_1, true, false))), ~global1.d);
    global2 = Struct_1(arg_1, ~(~(~(~global2.b))), func_4(Struct_1(true && (arg_0 > global2.b), global1.b, vec2<bool>(true, true), _wgslsmith_mod_vec3_i32(vec3<i32>(global2.d.x, 47709i, 1i), vec3<i32>(-5596i, global2.d.x, -28450i) << (vec3<u32>(1u, arg_0, 152960u) % vec3<u32>(32u)))), !vec2<bool>(!global2.c.x, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-340f, -1079f, -395f), vec3<f32>(2859f, 136f, 171f))))), func_2(Struct_1(!arg_1, min(u_input.a, global2.b), vec2<bool>(arg_1, global1.a), ~vec3<i32>(-14278i, 4298i, 42740i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, -7874i), vec2<i32>(u_input.b.x, 13989i) & u_input.c.yz), Struct_1(arg_1, ~114069u, select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, true), global2.c), _wgslsmith_sub_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(0u, 8u)], 2965i, global2.d.x), vec3<i32>(global3[_wgslsmith_index_u32(u_input.d.x, 8u)], -30002i, 2147483647i))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - 987f))))), _wgslsmith_sub_vec3_i32(global1.d, vec3<i32>(global1.d.x, i32(-1i) * -2147483647i, -33080i)));
    let var_0 = vec3<u32>(func_2(Struct_1(true, select(global0[_wgslsmith_index_u32(0u, 2u)], ~global2.b, false), vec2<bool>(true, global1.c.x), global1.d), max(u_input.b.zy, u_input.b.yx), Struct_1(any(global1.c), ~(~1u), global1.c, abs(vec3<i32>(-1i, 25065i, global2.d.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-847f, 219f)) * _wgslsmith_f_op_f32(f32(-1f) * -1444f))))).b, global1.b, 1u);
    var var_1 = Struct_1(arg_1, ~(~_wgslsmith_add_u32(~15743u, select(global0[_wgslsmith_index_u32(15527u, 2u)], 1u, global1.a))), vec2<bool>(any(select(vec3<bool>(true, arg_1, global2.a), vec3<bool>(true, true, true), all(vec2<bool>(false, false)))), !(true != any(vec4<bool>(false, arg_1, arg_1, true)))), global1.d);
    return global2.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_i32(func_1(~4294967295u, global2.a & any(vec4<bool>(global1.a, global2.a, global2.c.x, true))), global1.d.x);
    global3 = array<i32, 8>();
    var_0 = _wgslsmith_dot_vec2_i32(u_input.c.xy, u_input.b.xy);
    let var_1 = select(vec4<bool>(func_2(Struct_1(global1.a, global2.b, func_2(Struct_1(false, 73408u, vec2<bool>(global1.a, false), global2.d), vec2<i32>(-34291i, 26787i), Struct_1(global2.c.x, 47528u, global1.c, vec3<i32>(-1i, u_input.c.x, -1i)), -348f).c, u_input.c), vec2<i32>(0i, global1.d.x) & vec2<i32>(29431i, u_input.c.x), Struct_1(true, ~global0[_wgslsmith_index_u32(u_input.d.x, 2u)], global2.c, global2.d ^ vec3<i32>(global2.d.x, 2147483647i, -47153i)), _wgslsmith_f_op_f32(floor(1f))).c.x, !(!global1.a) | all(vec2<bool>(global2.c.x, global2.c.x)), global1.a, func_4(Struct_1(true, global1.b, vec2<bool>(true, true), countOneBits(u_input.b)), vec2<bool>(true | global2.a, any(vec4<bool>(global1.c.x, false, false, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-360f, 1077f, 1258f), vec3<f32>(1617f, -1051f, 1000f))) + vec3<f32>(746f, 209f, -734f)), Struct_1(false, ~21695u, global2.c, _wgslsmith_clamp_vec3_i32(global1.d, vec3<i32>(-40i, 68451i, u_input.b.x), vec3<i32>(-19434i, global2.d.x, global1.d.x)))).x), vec4<bool>(all(select(select(vec4<bool>(global2.a, false, true, global2.c.x), vec4<bool>(false, false, false, true), global2.c.x), !vec4<bool>(false, false, global1.c.x, true), vec4<bool>(true, false, global2.a, false))), true, false, u_input.a < _wgslsmith_sub_u32(global2.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~68379u, 2u)], 2u)])), global1.c.x);
    let var_2 = var_1.zwz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(select(901f, -673f, var_2.x)), _wgslsmith_f_op_f32(trunc(-1165f))))))), _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, 71868u, u_input.d.x), _wgslsmith_add_vec3_u32(u_input.d, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(62597u, global0[_wgslsmith_index_u32(0u, 2u)]), u_input.d.xz), 11540u, _wgslsmith_mult_u32(u_input.a, global1.b)))), vec4<i32>(~1i, 2147483647i, i32(-1i) * -reverseBits(-14375i), global2.d.x), _wgslsmith_sub_vec3_u32(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(17775u, 97599u, 70478u), vec3<u32>(global1.b, 78296u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.b, 2u)], 2u)]))) << (u_input.d % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(83246u, u_input.d.x, 29028u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 2u)], 2u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(global2.b, 0u, 1u, u_input.d.x), vec4<u32>(u_input.a, 0u, global1.b, 4294967295u))), _wgslsmith_mod_u32(u_input.a | global2.b, ~0u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 2u)] << (0u % 32u), 2u)] & _wgslsmith_mult_u32(0u, global0[_wgslsmith_index_u32(global1.b, 2u)]))));
}

