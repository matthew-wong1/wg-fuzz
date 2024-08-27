struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<i32>(-1i, -1i, -34134i));

var<private> global1: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(28366u, 47618u), vec2<u32>(170u, 0u), vec2<u32>(161428u, 0u), vec2<u32>(4294967295u, 22304u), vec2<u32>(21363u, 57648u), vec2<u32>(27349u, 0u), vec2<u32>(4294967295u, 53709u), vec2<u32>(825u, 1u), vec2<u32>(1u, 0u), vec2<u32>(32290u, 63007u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(46208u, 37338u), vec2<u32>(0u, 55547u), vec2<u32>(53961u, 38560u), vec2<u32>(1u, 26481u), vec2<u32>(25717u, 1u), vec2<u32>(29329u, 4294967295u), vec2<u32>(0u, 27236u), vec2<u32>(0u, 1u), vec2<u32>(1u, 80081u), vec2<u32>(11311u, 12410u), vec2<u32>(10530u, 283u), vec2<u32>(5281u, 4294967295u), vec2<u32>(99387u, 0u), vec2<u32>(85041u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(36671u, 1u), vec2<u32>(20397u, 4294967295u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> u32 {
    global1 = array<vec2<u32>, 28>();
    global1 = array<vec2<u32>, 28>();
    global0 = Struct_2(vec3<u32>(1u, global0.a.x >> (22248u % 32u), u_input.a) & ~_wgslsmith_mult_vec3_u32(~global0.a, ~global0.a), reverseBits(vec3<i32>(countOneBits(i32(-1i) * -1i), _wgslsmith_add_i32(global0.b.x, _wgslsmith_mod_i32(global0.b.x, -74997i)), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x, global0.b.x, -2147483647i), vec3<i32>(global0.b.x, global0.b.x, global0.b.x)) & (-10360i << (u_input.a % 32u)))));
    var var_0 = _wgslsmith_div_u32(global0.a.x, abs(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(20842u, 0u, 0u), vec3<u32>(1u, global0.a.x, 14746u)), global0.a.x)));
    var var_1 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-482f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -462f) + _wgslsmith_f_op_f32(step(-1060f, -228f))))) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(773f + 651f), 415f));
    return ~(~4294967295u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> f32 {
    global0 = Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(~0u, 0u, global0.a.x), global0.a), ~reverseBits(min(vec3<i32>(1i, -1i, global0.b.x) << (global0.a % vec3<u32>(32u)), vec3<i32>(0i, global0.b.x, global0.b.x))));
    var var_0 = Struct_4(false | (false || any(vec3<bool>(arg_2, true, true))), arg_0);
    var_0 = Struct_4(arg_3.a, Struct_3(arg_0.b.a, arg_1));
    let var_1 = global1[_wgslsmith_index_u32(~(~abs(abs(global0.a.x)) << (78731u % 32u)), 28u)];
    var_0 = Struct_4(any(select(!vec2<bool>(arg_1.a, false), !vec2<bool>(true, arg_1.a), select(arg_2, false, true))) && (all(vec4<bool>(false, arg_3.a, var_0.a, true)) | (0u <= global0.a.x)), Struct_3(var_0.a, arg_3));
    return -2183f;
}

fn func_1() -> i32 {
    var var_0 = ~(global0.a & global0.a);
    global0 = Struct_2(global0.a, _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(global0.b, ~vec3<i32>(global0.b.x, global0.b.x, global0.b.x), reverseBits(global0.b)), _wgslsmith_sub_vec3_i32(-global0.b, ~(~global0.b))));
    var var_1 = Struct_2(_wgslsmith_mod_vec3_u32(global0.a, vec3<u32>(~global0.a.x, global0.a.x, func_2())), -_wgslsmith_mod_vec3_i32(~min(vec3<i32>(-1i, global0.b.x, global0.b.x), vec3<i32>(14512i, -7013i, global0.b.x)), select(-vec3<i32>(global0.b.x, global0.b.x, global0.b.x), abs(vec3<i32>(global0.b.x, 69444i, global0.b.x)), vec3<bool>(true, true, true))));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(false, Struct_1(true)), Struct_1(true), false, Struct_1(false)))))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(585f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(995f)), _wgslsmith_f_op_f32(min(786f, 353f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-818f)))))));
    var var_3 = -(_wgslsmith_sub_i32(i32(-1i) * -var_1.b.x, -46412i) << (~(_wgslsmith_clamp_u32(77683u, 34438u, 43948u) & ~var_1.a.x) % 32u));
    return ~global0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(abs(~global0.a), _wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(~(-21665i)), ~_wgslsmith_div_i32(51030i, -9663i), _wgslsmith_dot_vec2_i32(-vec2<i32>(global0.b.x, 0i), global0.b.zy)), vec3<i32>(global0.b.x, func_1(), global0.b.x)));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(true, Struct_1(false)), Struct_1(true), ~1u < max(4294967295u, global0.a.x), Struct_1(true)))), 108f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_3(Struct_3(true, Struct_1(true)), Struct_1(true), !(global0.b.x >= global0.b.x), Struct_1(false)))));
    var var_1 = _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 485f))))));
    let var_2 = vec3<bool>(true, true, true);
    global1 = array<vec2<u32>, 28>();
    global0 = Struct_2(abs(select(~(~global0.a), vec3<u32>(_wgslsmith_sub_u32(global0.a.x, u_input.a), ~4294967295u, firstTrailingBit(0u)), select(select(var_2, var_2, var_2), vec3<bool>(true, true, true), true))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(global0.b.x, firstTrailingBit(-2147483647i)), global0.b.x << (~60053u % 32u)), _wgslsmith_add_i32(countOneBits(firstLeadingBit(12860i)), global0.b.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(abs(global0.b.x), firstLeadingBit(global0.b.x)), abs(~global0.b.x))));
    global0 = Struct_2(_wgslsmith_mod_vec3_u32(select(abs(~vec3<u32>(0u, u_input.b, global0.a.x)), vec3<u32>(~global0.a.x, 1u, u_input.b), select(!var_2, select(vec3<bool>(false, var_2.x, var_2.x), var_2, var_2.x), var_2)), vec3<u32>(~u_input.b, ~max(1u, u_input.a), 17818u)), _wgslsmith_div_vec3_i32(firstTrailingBit(-vec3<i32>(-20329i, 1i, global0.b.x)), _wgslsmith_div_vec3_i32(~vec3<i32>(global0.b.x, 0i, global0.b.x) << (global0.a % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global0.b.x, global0.b.x), abs(vec3<i32>(-2147483647i, 25113i, 1i))))));
    var_1 = _wgslsmith_f_op_f32(-var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(reverseBits(global0.a.x), global0.a.x, global0.a.x, ~(max(u_input.a, 14474u) | global0.a.x)), _wgslsmith_sub_u32(global0.a.x, 1u), ~vec4<i32>(_wgslsmith_sub_i32(25512i, _wgslsmith_dot_vec4_i32(vec4<i32>(-42666i, 0i, 2147483647i, 0i), vec4<i32>(global0.b.x, -2147483647i, global0.b.x, -2147483647i))), 23072i, global0.b.x, _wgslsmith_mod_i32(52826i, 2147483647i) & global0.b.x));
}

