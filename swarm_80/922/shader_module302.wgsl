struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(Struct_1(true, vec2<bool>(false, true), -16362i, vec3<bool>(true, false, true)), vec2<bool>(false, false)), Struct_3(Struct_1(false, vec2<bool>(false, false), -1i, vec3<bool>(true, true, false)), vec2<bool>(false, true)), Struct_3(Struct_1(false, vec2<bool>(false, false), -47686i, vec3<bool>(false, true, false)), vec2<bool>(true, false)), Struct_3(Struct_1(false, vec2<bool>(false, false), -18872i, vec3<bool>(true, true, false)), vec2<bool>(true, true)), Struct_3(Struct_1(false, vec2<bool>(true, true), 18493i, vec3<bool>(true, false, true)), vec2<bool>(false, false)), Struct_3(Struct_1(false, vec2<bool>(true, false), 1i, vec3<bool>(true, true, false)), vec2<bool>(false, false)), Struct_3(Struct_1(true, vec2<bool>(false, false), -5455i, vec3<bool>(false, false, true)), vec2<bool>(false, true)), Struct_3(Struct_1(true, vec2<bool>(true, false), 19172i, vec3<bool>(true, false, false)), vec2<bool>(false, false)), Struct_3(Struct_1(false, vec2<bool>(false, true), 42469i, vec3<bool>(false, true, false)), vec2<bool>(true, true)));

var<private> global3: Struct_1 = Struct_1(true, vec2<bool>(true, false), -1i, vec3<bool>(false, true, false));

var<private> global4: array<vec4<f32>, 13>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec4<u32> {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(u_input.a | select(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 11960u), vec2<u32>(95475u, u_input.a)), any(global3.d))), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(u_input.a, 33230u, u_input.a, 8338u))), vec4<u32>(1u, ~1u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(76822u, 12846u, 4294967295u, u_input.a)))), ~_wgslsmith_clamp_vec4_u32(max(vec4<u32>(u_input.a, u_input.a, 29262u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(67813u, 0u, u_input.a, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 3193u, u_input.a, 52890u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))))), 9u)];
    var var_1 = Struct_2(~20540i << (u_input.a % 32u), ~vec3<u32>(~_wgslsmith_div_u32(0u, u_input.a), ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(739u, 9164u, u_input.a), vec3<u32>(41811u, u_input.a, u_input.a)) & 4294967295u));
    return _wgslsmith_div_vec4_u32(firstTrailingBit(min(vec4<u32>(abs(4294967295u), 7099u, 72730u, ~4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(96075u, var_1.b.x, 32560u, 38802u), ~vec4<u32>(var_1.b.x, 41499u, 12482u, 7878u), vec4<u32>(u_input.a, 68556u, 4294967295u, 1u)))), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.b.x, u_input.a, 30139u, u_input.a) | select(~vec4<u32>(1u, 4294967295u, 0u, var_1.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(50256u, 0u, 11422u, u_input.a), vec4<u32>(0u, 13320u, var_1.b.x, 65666u)), vec4<bool>(var_0.a.a, global3.a, true, true)), ~vec4<u32>(var_1.b.x >> (u_input.a % 32u), _wgslsmith_sub_u32(15521u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 31707u, 0u, var_1.b.x), vec4<u32>(7120u, var_1.b.x, 4294967295u, var_1.b.x)), ~4294967295u)));
}

fn func_2() -> vec2<f32> {
    let var_0 = global3.d.x;
    var var_1 = global3.b;
    let var_2 = ~(_wgslsmith_mult_vec4_i32(~(~vec4<i32>(global3.c, -50703i, 1i, 26331i)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global3.c, global3.c, 521i, 14304i), vec4<i32>(-2147483647i, global3.c, global3.c, global3.c)), -vec4<i32>(2147483647i, -15534i, global3.c, global3.c))) << ((abs(~vec4<u32>(87047u, u_input.a, 11880u, 1784u)) & (~vec4<u32>(0u, u_input.a, 1u, u_input.a) | ~vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a))) % vec4<u32>(32u)));
    return vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_3(), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(41454u, u_input.a, 55891u), vec3<u32>(34463u, 1u, u_input.a)), u_input.a, u_input.a, u_input.a)), 31u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(483f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(1u, 31u)])))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    global0 = array<f32, 31>();
    let var_0 = Struct_4(u_input.a, Struct_3(global1[_wgslsmith_index_u32(u_input.a, 6u)], vec2<bool>(true, arg_0.a)), ~u_input.a, abs(vec4<i32>(arg_0.c, 2796i, countOneBits(-1i & arg_0.c), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, arg_2), vec3<i32>(-1229i, global3.c, arg_2)), 0i))), _wgslsmith_add_vec4_u32(~abs(select(vec4<u32>(63718u, 19583u, u_input.a, 54474u), vec4<u32>(u_input.a, u_input.a, 1u, 0u), vec4<bool>(arg_0.a, arg_0.b.x, global3.b.x, true))), ~func_3()));
    var var_1 = global2[_wgslsmith_index_u32(countOneBits(var_0.c), 9u)];
    global0 = array<f32, 31>();
    var_1 = Struct_3(global1[_wgslsmith_index_u32(func_3().x, 6u)], vec2<bool>(arg_0.a, !arg_0.d.x));
    return var_0.b.a;
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_2) -> vec4<i32> {
    global2 = array<Struct_3, 9>();
    global3 = arg_0.b.a;
    var var_0 = func_4(Struct_1(global3.b.x, vec2<bool>(all(select(arg_0.b.b, vec2<bool>(true, true), arg_0.b.b.x)), global0[_wgslsmith_index_u32(u_input.a, 31u)] >= _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(0u, 31u)]))), arg_0.d.x, global3.d), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1138f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_0.e, arg_0.e), 31u)]) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-154f)))))), arg_2.x, _wgslsmith_f_op_vec2_f32(func_2()));
    return vec4<i32>(_wgslsmith_div_i32(var_0.c, max(1i ^ (arg_2.x << (0u % 32u)), global3.c)), global3.c, _wgslsmith_mult_i32(global3.c, max(arg_1, ~2147483647i)), arg_0.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(max(~2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global3.c, global3.c, 97749i, global3.c)), func_1(Struct_4(u_input.a, global2[_wgslsmith_index_u32(231u, 9u)], u_input.a, vec4<i32>(56234i, -2147483647i, global3.c, global3.c), vec4<u32>(12255u, 1u, u_input.a, 48016u)), 7790i, vec4<i32>(global3.c, 1i, global3.c, global3.c), Struct_2(global3.c, vec3<u32>(u_input.a, 8352u, 61484u)))), global3.c)), abs(max(~vec3<u32>(0u, u_input.a, 9691u) & ~vec3<u32>(0u, 25232u, 4294967295u), abs(~vec3<u32>(u_input.a, u_input.a, 4294967295u)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(118f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(377f + 995f)), -637f)))));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(59559u, _wgslsmith_dot_vec2_u32(var_0.b.zx, _wgslsmith_add_vec2_u32(~var_0.b.yz, vec2<u32>(var_0.b.x, ~47315u)))), 9u)];
    var var_3 = _wgslsmith_f_op_f32(floor(445f));
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, global0[_wgslsmith_index_u32(var_0.b.x, 31u)])) + 465f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -394f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(381f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(2817u, 31u)]))), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -298f))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1407f, -236f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, global0[_wgslsmith_index_u32(5000u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)]), vec3<f32>(640f, -796f, 949f))))))));
    let var_5 = global4[_wgslsmith_index_u32(~0u, 13u)];
    var var_6 = select(vec2<bool>(false, global3.d.x), global3.d.xy, !global3.b);
    var var_7 = vec2<i32>(min(2147483647i, var_2.a.c), _wgslsmith_mult_i32(global3.c, _wgslsmith_dot_vec3_i32(select(countOneBits(vec3<i32>(-11542i, 18912i, -1i)), vec3<i32>(-2147483647i, var_0.a, var_2.a.c), global3.d), vec3<i32>(var_0.a << (29600u % 32u), 1i, abs(var_0.a)))));
    global3 = Struct_1(any(vec3<bool>(!func_4(Struct_1(var_6.x, vec2<bool>(var_2.b.x, var_2.b.x), var_0.a, global3.d), var_4.x, -1i, vec2<f32>(-193f, var_5.x)).d.x, false, var_2.b.x && true)), global3.d.xy, 2147483647i, global3.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_2()).x);
}

